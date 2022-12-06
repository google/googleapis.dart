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
///     - [ProjectsLocationsDataAttributeBindingsResource]
///     - [ProjectsLocationsDataScansResource]
///       - [ProjectsLocationsDataScansJobsResource]
///     - [ProjectsLocationsDataTaxonomiesResource]
///       - [ProjectsLocationsDataTaxonomiesAttributesResource]
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

  ProjectsLocationsDataAttributeBindingsResource get dataAttributeBindings =>
      ProjectsLocationsDataAttributeBindingsResource(_requester);
  ProjectsLocationsDataScansResource get dataScans =>
      ProjectsLocationsDataScansResource(_requester);
  ProjectsLocationsDataTaxonomiesResource get dataTaxonomies =>
      ProjectsLocationsDataTaxonomiesResource(_requester);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudLocationLocation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    return GoogleCloudLocationListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDataAttributeBindingsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataAttributeBindingsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataAttributeBindings/\[^/\]+$`.
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
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataAttributeBindings/\[^/\]+$`.
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
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataAttributeBindings/\[^/\]+$`.
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
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDataScansResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataScansJobsResource get jobs =>
      ProjectsLocationsDataScansJobsResource(_requester);

  ProjectsLocationsDataScansResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a dataScan resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent location:
  /// projects/{project}/locations/{location_id} where {project} refers to a
  /// project_id or project_number and location_id refers to a GCP region.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [dataScanId] - Required. DataScan identifier. * Must contain only
  /// lowercase letters, numbers and hyphens. * Must start with a letter. * Must
  /// end with a number or a letter. * Must be between 1-63 characters. * Must
  /// be unique within the customer project / location.
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
    GoogleCloudDataplexV1DataScan request,
    core.String parent, {
    core.String? dataScanId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (dataScanId != null) 'dataScanId': [dataScanId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dataScans';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete the dataScan resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the dataScan:
  /// projects/{project}/locations/{location_id}/dataScans/{data_scan_id} where
  /// {project} refers to a project_id or project_number and location_id refers
  /// to a GCP region.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataScans/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get dataScan resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the dataScan:
  /// projects/{project}/locations/{location_id}/dataScans/{data_scan_id} where
  /// {project} refers to a project_id or project_number and location_id refers
  /// to a GCP region.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataScans/\[^/\]+$`.
  ///
  /// [view] - Optional. Used to select the subset of DataScan information to
  /// return. Defaults to BASIC.
  /// Possible string values are:
  /// - "DATA_SCAN_VIEW_UNSPECIFIED" : The API will default to the BASIC view.
  /// - "BASIC" : Basic view that does not include spec and result.
  /// - "FULL" : Include everything.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1DataScan].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1DataScan> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1DataScan.fromJson(
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
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataScans/\[^/\]+$`.
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
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists dataScans.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. projects/{project}/locations/{location_id} where
  /// {project} refers to a project_id or project_number and location_id refers
  /// to a GCP region.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter request.
  ///
  /// [orderBy] - Optional. Order by fields (name or create_time) for the
  /// result. If not specified, the ordering is undefined.
  ///
  /// [pageSize] - Optional. Maximum number of dataScans to return. The service
  /// may return fewer than this value. If unspecified, at most 10 scans will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - Optional. Page token received from a previous ListDataScans
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to ListDataScans must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1ListDataScansResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1ListDataScansResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dataScans';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1ListDataScansResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update the dataScan resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The relative resource name of the scan, of the form:
  /// projects/{project}/locations/{location_id}/dataScans/{datascan_id}. where
  /// {project} refers to a project_id or project_number and location_id refers
  /// to a GCP region.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataScans/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Mask of fields to update.
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
    GoogleCloudDataplexV1DataScan request,
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
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Run an on demand execution of a DataScan.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the DataScan:
  /// projects/{project}/locations/{location_id}/dataScans/{data_scan_id}. where
  /// {project} refers to a project_id or project_number and location_id refers
  /// to a GCP region. Only on-demand DataScans are allowed.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataScans/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1RunDataScanResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1RunDataScanResponse> run(
    GoogleCloudDataplexV1RunDataScanRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':run';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1RunDataScanResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataScans/\[^/\]+$`.
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
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataScans/\[^/\]+$`.
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
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDataScansJobsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataScansJobsResource(commons.ApiRequester client)
      : _requester = client;

  /// Get DataScanJob resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the DataScanJob:
  /// projects/{project}/locations/{location_id}/dataScans/{data_scan_id}/dataScanJobs/{data_scan_job_id}
  /// where {project} refers to a project_id or project_number and location_id
  /// refers to a GCP region.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataScans/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [view] - Optional. Used to select the subset of DataScan information to
  /// return. Defaults to BASIC.
  /// Possible string values are:
  /// - "DATA_SCAN_JOB_VIEW_UNSPECIFIED" : The API will default to the BASIC
  /// view.
  /// - "BASIC" : Basic view that does not include spec and result.
  /// - "FULL" : Include everything.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1DataScanJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1DataScanJob> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1DataScanJob.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists DataScanJobs under the given dataScan.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent environment:
  /// projects/{project}/locations/{location_id}/dataScans/{data_scan_id} where
  /// {project} refers to a project_id or project_number and location_id refers
  /// to a GCP region.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataScans/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of DataScanJobs to return. The
  /// service may return fewer than this value. If unspecified, at most 10
  /// DataScanJobs will be returned. The maximum value is 1000; values above
  /// 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. Page token received from a previous
  /// ListDataScanJobs call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to ListDataScanJobs must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1ListDataScanJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1ListDataScanJobsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/jobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1ListDataScanJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDataTaxonomiesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataTaxonomiesAttributesResource get attributes =>
      ProjectsLocationsDataTaxonomiesAttributesResource(_requester);

  ProjectsLocationsDataTaxonomiesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataTaxonomies/\[^/\]+$`.
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
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataTaxonomies/\[^/\]+$`.
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
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataTaxonomies/\[^/\]+$`.
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
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDataTaxonomiesAttributesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataTaxonomiesAttributesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataTaxonomies/\[^/\]+/attributes/\[^/\]+$`.
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
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataTaxonomies/\[^/\]+/attributes/\[^/\]+$`.
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
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataTaxonomies/\[^/\]+/attributes/\[^/\]+$`.
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
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (lakeId != null) 'lakeId': [lakeId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/lakes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a lake resource.
  ///
  /// All zones within the lake must be deleted before the lake can be deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the lake:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a lake resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the lake:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1Lake.fromJson(
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
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
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
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/lakes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1ListLakesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
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
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
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
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/actions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1ListActionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsLakesContentResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsLakesContentResource(commons.ApiRequester client)
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/content';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1Content.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a content.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the content:
  /// projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{content_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/content/.*$`.
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

  /// Get a content resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the content:
  /// projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{content_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/content/.*$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1Content.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a contentitem resource.
  ///
  /// A NOT_FOUND error is returned if the resource does not exist. An empty
  /// policy is returned if the resource exists but does not have a policy set
  /// on it.Caller must have Google IAM dataplex.content.getIamPolicy permission
  /// on the resource.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/content/.*$`.
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
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/content';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1ListContentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/content/.*$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
    return GoogleCloudDataplexV1Content.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified contentitem resource.
  ///
  /// Replaces any existing policy.Caller must have Google IAM
  /// dataplex.content.setIamPolicy permission on the resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/content/.*$`.
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
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the caller's permissions on a resource.
  ///
  /// If the resource does not exist, an empty set of permissions is returned (a
  /// NOT_FOUND error is not returned).A caller is not required to have Google
  /// IAM permission to make this request.Note: This operation is designed to be
  /// used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/content/.*$`.
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
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/contentitems';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1Content.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1Content.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a contentitem resource.
  ///
  /// A NOT_FOUND error is returned if the resource does not exist. An empty
  /// policy is returned if the resource exists but does not have a policy set
  /// on it.Caller must have Google IAM dataplex.content.getIamPolicy permission
  /// on the resource.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/contentitems/.*$`.
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
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/contentitems';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1ListContentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
    return GoogleCloudDataplexV1Content.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified contentitem resource.
  ///
  /// Replaces any existing policy.Caller must have Google IAM
  /// dataplex.content.setIamPolicy permission on the resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/contentitems/.*$`.
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
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the caller's permissions on a resource.
  ///
  /// If the resource does not exist, an empty set of permissions is returned (a
  /// NOT_FOUND error is not returned).A caller is not required to have Google
  /// IAM permission to make this request.Note: This operation is designed to be
  /// used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/contentitems/.*$`.
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
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// projects/{project_id}/locations/{location_id}/lakes/{lake_id}.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (environmentId != null) 'environmentId': [environmentId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/environments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete the environment resource.
  ///
  /// All the child resources must have been deleted before environment deletion
  /// can be initiated.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the environment:
  /// projects/{project_id}/locations/{location_id}/lakes/{lake_id}/environments/{environment_id}.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get environment resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the environment:
  /// projects/{project_id}/locations/{location_id}/lakes/{lake_id}/environments/{environment_id}.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1Environment.fromJson(
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
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
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
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists environments under the given lake.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent lake:
  /// projects/{project_id}/locations/{location_id}/lakes/{lake_id}.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/environments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1ListEnvironmentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
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
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
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
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/environment/{environment_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter request. The following mode filter is
  /// supported to return only the sessions belonging to the requester when the
  /// mode is USER and return sessions of all the users when the mode is ADMIN.
  /// When no filter is sent default to USER mode. NOTE: When the mode is ADMIN,
  /// the requester should have dataplex.environments.listAllSessions permission
  /// to list all sessions, in absence of the permission, the request fails.mode
  /// = ADMIN | USER
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sessions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1ListSessionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (taskId != null) 'taskId': [taskId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/tasks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete the task resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the task:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/task/{task_id}.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get task resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the task:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/tasks/{tasks_id}.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1Task.fromJson(
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
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
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
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists tasks under the given lake.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent lake:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/tasks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1ListTasksResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
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
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
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
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/task/{task_id}/job/{job_id}.
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

  /// Get job resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the job:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/tasks/{task_id}/jobs/{job_id}.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1Job.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Jobs under the given task.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent environment:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/tasks/{task_id}.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/jobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1ListJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if (zoneId != null) 'zoneId': [zoneId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/zones';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a zone resource.
  ///
  /// All assets within a zone must be deleted before the zone can be deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the zone:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a zone resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the zone:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1Zone.fromJson(
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
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
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
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists zone resources in a lake.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent lake:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/zones';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1ListZonesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
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
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
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
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/actions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1ListActionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (assetId != null) 'assetId': [assetId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/assets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an asset resource.
  ///
  /// The referenced storage resource is detached (default) or deleted based on
  /// the associated Lifecycle policy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the asset:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/assets/{asset_id}.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves an asset resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the asset:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/assets/{asset_id}.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1Asset.fromJson(
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
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
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
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists asset resources in a zone.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent zone:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/assets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1ListAssetsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
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
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
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
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/assets/{asset_id}.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/actions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1ListActionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/entities';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1Entity.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [etag] - Required. The etag associated with the entity, which can be
  /// retrieved with a GetEntity request.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1Entity.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// ?filter="hive_compatible=true" Is BigQuery compatible:
  /// ?filter="bigquery_compatible=true"
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
  /// - "ENTITY_VIEW_UNSPECIFIED" : The default unset value. Return both table
  /// and fileset entities if unspecified.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/entities';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1ListEntitiesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1Entity.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/partitions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1Partition.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [etag] - Optional. The etag associated with the partition.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1Partition.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// key value pair expression. Supported operators and syntax: logic
  /// operators: AND, OR comparison operators: \<, \>, \>=, \<= ,=, != LIKE
  /// operators: The right hand of a LIKE operator supports "." and "*" for
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/partitions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDataplexV1ListPartitionsResponse.fromJson(
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    return GoogleLongrunningListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
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

  GoogleCloudDataplexV1Action.fromJson(core.Map json_)
      : this(
          asset:
              json_.containsKey('asset') ? json_['asset'] as core.String : null,
          category: json_.containsKey('category')
              ? json_['category'] as core.String
              : null,
          dataLocations: json_.containsKey('dataLocations')
              ? (json_['dataLocations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          detectTime: json_.containsKey('detectTime')
              ? json_['detectTime'] as core.String
              : null,
          failedSecurityPolicyApply: json_
                  .containsKey('failedSecurityPolicyApply')
              ? GoogleCloudDataplexV1ActionFailedSecurityPolicyApply.fromJson(
                  json_['failedSecurityPolicyApply']
                      as core.Map<core.String, core.dynamic>)
              : null,
          incompatibleDataSchema: json_.containsKey('incompatibleDataSchema')
              ? GoogleCloudDataplexV1ActionIncompatibleDataSchema.fromJson(
                  json_['incompatibleDataSchema']
                      as core.Map<core.String, core.dynamic>)
              : null,
          invalidDataFormat: json_.containsKey('invalidDataFormat')
              ? GoogleCloudDataplexV1ActionInvalidDataFormat.fromJson(
                  json_['invalidDataFormat']
                      as core.Map<core.String, core.dynamic>)
              : null,
          invalidDataOrganization: json_.containsKey('invalidDataOrganization')
              ? GoogleCloudDataplexV1ActionInvalidDataOrganization.fromJson(
                  json_['invalidDataOrganization']
                      as core.Map<core.String, core.dynamic>)
              : null,
          invalidDataPartition: json_.containsKey('invalidDataPartition')
              ? GoogleCloudDataplexV1ActionInvalidDataPartition.fromJson(
                  json_['invalidDataPartition']
                      as core.Map<core.String, core.dynamic>)
              : null,
          issue:
              json_.containsKey('issue') ? json_['issue'] as core.String : null,
          lake: json_.containsKey('lake') ? json_['lake'] as core.String : null,
          missingData: json_.containsKey('missingData')
              ? GoogleCloudDataplexV1ActionMissingData.fromJson(
                  json_['missingData'] as core.Map<core.String, core.dynamic>)
              : null,
          missingResource: json_.containsKey('missingResource')
              ? GoogleCloudDataplexV1ActionMissingResource.fromJson(
                  json_['missingResource']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          unauthorizedResource: json_.containsKey('unauthorizedResource')
              ? GoogleCloudDataplexV1ActionUnauthorizedResource.fromJson(
                  json_['unauthorizedResource']
                      as core.Map<core.String, core.dynamic>)
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
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

  GoogleCloudDataplexV1ActionFailedSecurityPolicyApply.fromJson(core.Map json_)
      : this(
          asset:
              json_.containsKey('asset') ? json_['asset'] as core.String : null,
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

  GoogleCloudDataplexV1ActionIncompatibleDataSchema.fromJson(core.Map json_)
      : this(
          existingSchema: json_.containsKey('existingSchema')
              ? json_['existingSchema'] as core.String
              : null,
          newSchema: json_.containsKey('newSchema')
              ? json_['newSchema'] as core.String
              : null,
          sampledDataLocations: json_.containsKey('sampledDataLocations')
              ? (json_['sampledDataLocations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          schemaChange: json_.containsKey('schemaChange')
              ? json_['schemaChange'] as core.String
              : null,
          table:
              json_.containsKey('table') ? json_['table'] as core.String : null,
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

  GoogleCloudDataplexV1ActionInvalidDataFormat.fromJson(core.Map json_)
      : this(
          expectedFormat: json_.containsKey('expectedFormat')
              ? json_['expectedFormat'] as core.String
              : null,
          newFormat: json_.containsKey('newFormat')
              ? json_['newFormat'] as core.String
              : null,
          sampledDataLocations: json_.containsKey('sampledDataLocations')
              ? (json_['sampledDataLocations'] as core.List)
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

  GoogleCloudDataplexV1ActionInvalidDataPartition.fromJson(core.Map json_)
      : this(
          expectedStructure: json_.containsKey('expectedStructure')
              ? json_['expectedStructure'] as core.String
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

  GoogleCloudDataplexV1Asset.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          discoverySpec: json_.containsKey('discoverySpec')
              ? GoogleCloudDataplexV1AssetDiscoverySpec.fromJson(
                  json_['discoverySpec'] as core.Map<core.String, core.dynamic>)
              : null,
          discoveryStatus: json_.containsKey('discoveryStatus')
              ? GoogleCloudDataplexV1AssetDiscoveryStatus.fromJson(
                  json_['discoveryStatus']
                      as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
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
          resourceSpec: json_.containsKey('resourceSpec')
              ? GoogleCloudDataplexV1AssetResourceSpec.fromJson(
                  json_['resourceSpec'] as core.Map<core.String, core.dynamic>)
              : null,
          resourceStatus: json_.containsKey('resourceStatus')
              ? GoogleCloudDataplexV1AssetResourceStatus.fromJson(
                  json_['resourceStatus']
                      as core.Map<core.String, core.dynamic>)
              : null,
          securityStatus: json_.containsKey('securityStatus')
              ? GoogleCloudDataplexV1AssetSecurityStatus.fromJson(
                  json_['securityStatus']
                      as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
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

  GoogleCloudDataplexV1AssetDiscoverySpec.fromJson(core.Map json_)
      : this(
          csvOptions: json_.containsKey('csvOptions')
              ? GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions.fromJson(
                  json_['csvOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          excludePatterns: json_.containsKey('excludePatterns')
              ? (json_['excludePatterns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includePatterns: json_.containsKey('includePatterns')
              ? (json_['includePatterns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          jsonOptions: json_.containsKey('jsonOptions')
              ? GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions.fromJson(
                  json_['jsonOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          schedule: json_.containsKey('schedule')
              ? json_['schedule'] as core.String
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

  GoogleCloudDataplexV1AssetDiscoveryStatus.fromJson(core.Map json_)
      : this(
          lastRunDuration: json_.containsKey('lastRunDuration')
              ? json_['lastRunDuration'] as core.String
              : null,
          lastRunTime: json_.containsKey('lastRunTime')
              ? json_['lastRunTime'] as core.String
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          stats: json_.containsKey('stats')
              ? GoogleCloudDataplexV1AssetDiscoveryStatusStats.fromJson(
                  json_['stats'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
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

  GoogleCloudDataplexV1AssetDiscoveryStatusStats.fromJson(core.Map json_)
      : this(
          dataItems: json_.containsKey('dataItems')
              ? json_['dataItems'] as core.String
              : null,
          dataSize: json_.containsKey('dataSize')
              ? json_['dataSize'] as core.String
              : null,
          filesets: json_.containsKey('filesets')
              ? json_['filesets'] as core.String
              : null,
          tables: json_.containsKey('tables')
              ? json_['tables'] as core.String
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

  GoogleCloudDataplexV1AssetResourceSpec.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
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

  GoogleCloudDataplexV1AssetResourceStatus.fromJson(core.Map json_)
      : this(
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
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

  GoogleCloudDataplexV1AssetSecurityStatus.fromJson(core.Map json_)
      : this(
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
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

  GoogleCloudDataplexV1AssetStatus.fromJson(core.Map json_)
      : this(
          activeAssets: json_.containsKey('activeAssets')
              ? json_['activeAssets'] as core.int
              : null,
          securityPolicyApplyingAssets:
              json_.containsKey('securityPolicyApplyingAssets')
                  ? json_['securityPolicyApplyingAssets'] as core.int
                  : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
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

  GoogleCloudDataplexV1Content.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          dataText: json_.containsKey('dataText')
              ? json_['dataText'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
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
          notebook: json_.containsKey('notebook')
              ? GoogleCloudDataplexV1ContentNotebook.fromJson(
                  json_['notebook'] as core.Map<core.String, core.dynamic>)
              : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          sqlScript: json_.containsKey('sqlScript')
              ? GoogleCloudDataplexV1ContentSqlScript.fromJson(
                  json_['sqlScript'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
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

  GoogleCloudDataplexV1ContentNotebook.fromJson(core.Map json_)
      : this(
          kernelType: json_.containsKey('kernelType')
              ? json_['kernelType'] as core.String
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

  GoogleCloudDataplexV1ContentSqlScript.fromJson(core.Map json_)
      : this(
          engine: json_.containsKey('engine')
              ? json_['engine'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (engine != null) 'engine': engine!,
      };
}

/// DataProfileResult defines the output of DataProfileScan.
///
/// Each field of the table will have field type specific profile result.
class GoogleCloudDataplexV1DataProfileResult {
  /// This represents the profile information per field.
  GoogleCloudDataplexV1DataProfileResultProfile? profile;

  /// The count of all rows in the sampled data.
  ///
  /// Return 0, if zero rows.
  core.String? rowCount;

  /// The data scanned for this profile.
  GoogleCloudDataplexV1ScannedData? scannedData;

  GoogleCloudDataplexV1DataProfileResult({
    this.profile,
    this.rowCount,
    this.scannedData,
  });

  GoogleCloudDataplexV1DataProfileResult.fromJson(core.Map json_)
      : this(
          profile: json_.containsKey('profile')
              ? GoogleCloudDataplexV1DataProfileResultProfile.fromJson(
                  json_['profile'] as core.Map<core.String, core.dynamic>)
              : null,
          rowCount: json_.containsKey('rowCount')
              ? json_['rowCount'] as core.String
              : null,
          scannedData: json_.containsKey('scannedData')
              ? GoogleCloudDataplexV1ScannedData.fromJson(
                  json_['scannedData'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (profile != null) 'profile': profile!,
        if (rowCount != null) 'rowCount': rowCount!,
        if (scannedData != null) 'scannedData': scannedData!,
      };
}

/// Profile information describing the structure and layout of the data and
/// contains the profile info.
class GoogleCloudDataplexV1DataProfileResultProfile {
  /// The sequence of fields describing data in table entities.
  core.List<GoogleCloudDataplexV1DataProfileResultProfileField>? fields;

  GoogleCloudDataplexV1DataProfileResultProfile({
    this.fields,
  });

  GoogleCloudDataplexV1DataProfileResultProfile.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.List)
                  .map((value) =>
                      GoogleCloudDataplexV1DataProfileResultProfileField
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
      };
}

/// Represents a column field within a table schema.
class GoogleCloudDataplexV1DataProfileResultProfileField {
  /// The mode of the field.
  ///
  /// Its value will be: REQUIRED, if it is a required field. NULLABLE, if it is
  /// an optional field. REPEATED, if it is a repeated field.
  core.String? mode;

  /// The name of the field.
  core.String? name;

  /// The profile information for the corresponding field.
  GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo? profile;

  /// The field data type.
  ///
  /// Possible values include: STRING BYTE INT64 INT32 INT16 DOUBLE FLOAT
  /// DECIMAL BOOLEAN BINARY TIMESTAMP DATE TIME NULL RECORD
  core.String? type;

  GoogleCloudDataplexV1DataProfileResultProfileField({
    this.mode,
    this.name,
    this.profile,
    this.type,
  });

  GoogleCloudDataplexV1DataProfileResultProfileField.fromJson(core.Map json_)
      : this(
          mode: json_.containsKey('mode') ? json_['mode'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          profile: json_.containsKey('profile')
              ? GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo
                  .fromJson(
                      json_['profile'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mode != null) 'mode': mode!,
        if (name != null) 'name': name!,
        if (profile != null) 'profile': profile!,
        if (type != null) 'type': type!,
      };
}

/// ProfileInfo defines the profile information for each schema field type.
class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo {
  /// The ratio of rows that are distinct against the rows in the sampled data.
  core.double? distinctRatio;

  /// The corresponding double field profile.
  GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo?
      doubleProfile;

  /// The corresponding integer field profile.
  GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo?
      integerProfile;

  /// The ratio of null rows against the rows in the sampled data.
  core.double? nullRatio;

  /// The corresponding string field profile.
  GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo?
      stringProfile;

  /// The array of top N values of the field in the sampled data.
  ///
  /// Currently N is set as 10 or equal to distinct values in the field,
  /// whichever is smaller. This will be optional for complex non-groupable
  /// data-types such as JSON, ARRAY, JSON, STRUCT.
  core.List<
          GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue>?
      topNValues;

  GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo({
    this.distinctRatio,
    this.doubleProfile,
    this.integerProfile,
    this.nullRatio,
    this.stringProfile,
    this.topNValues,
  });

  GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo.fromJson(
      core.Map json_)
      : this(
          distinctRatio: json_.containsKey('distinctRatio')
              ? (json_['distinctRatio'] as core.num).toDouble()
              : null,
          doubleProfile: json_.containsKey('doubleProfile')
              ? GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo
                  .fromJson(json_['doubleProfile']
                      as core.Map<core.String, core.dynamic>)
              : null,
          integerProfile: json_.containsKey('integerProfile')
              ? GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo
                  .fromJson(json_['integerProfile']
                      as core.Map<core.String, core.dynamic>)
              : null,
          nullRatio: json_.containsKey('nullRatio')
              ? (json_['nullRatio'] as core.num).toDouble()
              : null,
          stringProfile: json_.containsKey('stringProfile')
              ? GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo
                  .fromJson(json_['stringProfile']
                      as core.Map<core.String, core.dynamic>)
              : null,
          topNValues: json_.containsKey('topNValues')
              ? (json_['topNValues'] as core.List)
                  .map((value) =>
                      GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (distinctRatio != null) 'distinctRatio': distinctRatio!,
        if (doubleProfile != null) 'doubleProfile': doubleProfile!,
        if (integerProfile != null) 'integerProfile': integerProfile!,
        if (nullRatio != null) 'nullRatio': nullRatio!,
        if (stringProfile != null) 'stringProfile': stringProfile!,
        if (topNValues != null) 'topNValues': topNValues!,
      };
}

/// DoubleFieldInfo defines output for any double type field.
class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo {
  /// The average of non-null values of double field in the sampled data.
  ///
  /// Return NaN, if the field has a NaN. Optional if zero non-null rows.
  core.double? average;

  /// The maximum value of a double field in the sampled data.
  ///
  /// Return NaN, if the field has a NaN. Optional if zero non-null rows.
  core.double? max;

  /// The minimum value of a double field in the sampled data.
  ///
  /// Return NaN, if the field has a NaN. Optional if zero non-null rows.
  core.double? min;

  /// A quartile divide the numebr of data points into four parts, or quarters,
  /// of more-or-less equal size.
  ///
  /// Three main quartiles used are: The first quartile (Q1) splits off the
  /// lowest 25% of data from the highest 75%. It is also known as the lower or
  /// 25th empirical quartile, as 25% of the data is below this point. The
  /// second quartile (Q2) is the median of a data set. So, 50% of the data lies
  /// below this point. The third quartile (Q3) splits off the highest 25% of
  /// data from the lowest 75%. It is known as the upper or 75th empirical
  /// quartile, as 75% of the data lies below this point. So, here the quartiles
  /// is provided as an ordered list of quartile values, occurring in order Q1,
  /// median, Q3.
  core.List<core.double>? quartiles;

  /// The standard deviation of non-null of double field in the sampled data.
  ///
  /// Return NaN, if the field has a NaN. Optional if zero non-null rows.
  core.double? standardDeviation;

  GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo({
    this.average,
    this.max,
    this.min,
    this.quartiles,
    this.standardDeviation,
  });

  GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo.fromJson(
      core.Map json_)
      : this(
          average: json_.containsKey('average')
              ? (json_['average'] as core.num).toDouble()
              : null,
          max: json_.containsKey('max')
              ? (json_['max'] as core.num).toDouble()
              : null,
          min: json_.containsKey('min')
              ? (json_['min'] as core.num).toDouble()
              : null,
          quartiles: json_.containsKey('quartiles')
              ? (json_['quartiles'] as core.List)
                  .map((value) => (value as core.num).toDouble())
                  .toList()
              : null,
          standardDeviation: json_.containsKey('standardDeviation')
              ? (json_['standardDeviation'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (average != null) 'average': average!,
        if (max != null) 'max': max!,
        if (min != null) 'min': min!,
        if (quartiles != null) 'quartiles': quartiles!,
        if (standardDeviation != null) 'standardDeviation': standardDeviation!,
      };
}

/// IntegerFieldInfo defines output for any integer type field.
class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo {
  /// The average of non-null values of integer field in the sampled data.
  ///
  /// Return NaN, if the field has a NaN. Optional if zero non-null rows.
  core.double? average;

  /// The maximum value of an integer field in the sampled data.
  ///
  /// Return NaN, if the field has a NaN. Optional if zero non-null rows.
  core.String? max;

  /// The minimum value of an integer field in the sampled data.
  ///
  /// Return NaN, if the field has a NaN. Optional if zero non-null rows.
  core.String? min;

  /// A quartile divide the number of data points into four parts, or quarters,
  /// of more-or-less equal size.
  ///
  /// Three main quartiles used are: The first quartile (Q1) splits off the
  /// lowest 25% of data from the highest 75%. It is also known as the lower or
  /// 25th empirical quartile, as 25% of the data is below this point. The
  /// second quartile (Q2) is the median of a data set. So, 50% of the data lies
  /// below this point. The third quartile (Q3) splits off the highest 25% of
  /// data from the lowest 75%. It is known as the upper or 75th empirical
  /// quartile, as 75% of the data lies below this point. So, here the quartiles
  /// is provided as an ordered list of quartile values, occurring in order Q1,
  /// median, Q3.
  core.List<core.String>? quartiles;

  /// The standard deviation of non-null of integer field in the sampled data.
  ///
  /// Return NaN, if the field has a NaN. Optional if zero non-null rows.
  core.double? standardDeviation;

  GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo({
    this.average,
    this.max,
    this.min,
    this.quartiles,
    this.standardDeviation,
  });

  GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo.fromJson(
      core.Map json_)
      : this(
          average: json_.containsKey('average')
              ? (json_['average'] as core.num).toDouble()
              : null,
          max: json_.containsKey('max') ? json_['max'] as core.String : null,
          min: json_.containsKey('min') ? json_['min'] as core.String : null,
          quartiles: json_.containsKey('quartiles')
              ? (json_['quartiles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          standardDeviation: json_.containsKey('standardDeviation')
              ? (json_['standardDeviation'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (average != null) 'average': average!,
        if (max != null) 'max': max!,
        if (min != null) 'min': min!,
        if (quartiles != null) 'quartiles': quartiles!,
        if (standardDeviation != null) 'standardDeviation': standardDeviation!,
      };
}

/// StringFieldInfo defines output info for any string type field.
class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo {
  /// The average length of a string field in the sampled data.
  ///
  /// Optional if zero non-null rows.
  core.double? averageLength;

  /// The maximum length of a string field in the sampled data.
  ///
  /// Optional if zero non-null rows.
  core.String? maxLength;

  /// The minimum length of the string field in the sampled data.
  ///
  /// Optional if zero non-null rows.
  core.String? minLength;

  GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo({
    this.averageLength,
    this.maxLength,
    this.minLength,
  });

  GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo.fromJson(
      core.Map json_)
      : this(
          averageLength: json_.containsKey('averageLength')
              ? (json_['averageLength'] as core.num).toDouble()
              : null,
          maxLength: json_.containsKey('maxLength')
              ? json_['maxLength'] as core.String
              : null,
          minLength: json_.containsKey('minLength')
              ? json_['minLength'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (averageLength != null) 'averageLength': averageLength!,
        if (maxLength != null) 'maxLength': maxLength!,
        if (minLength != null) 'minLength': minLength!,
      };
}

/// The TopNValue defines the structure of output of top N values of a field.
class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue {
  /// The frequency count of the corresponding value in the field.
  core.String? count;

  /// The value is the string value of the actual value from the field.
  core.String? value;

  GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue({
    this.count,
    this.value,
  });

  GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue.fromJson(
      core.Map json_)
      : this(
          count:
              json_.containsKey('count') ? json_['count'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (value != null) 'value': value!,
      };
}

/// DataProfileScan related setting.
typedef GoogleCloudDataplexV1DataProfileSpec = $Empty;

/// DataQualityDimensionResult provides a more detailed, per-dimension level
/// view of the results.
class GoogleCloudDataplexV1DataQualityDimensionResult {
  /// Whether the dimension passed or failed.
  core.bool? passed;

  GoogleCloudDataplexV1DataQualityDimensionResult({
    this.passed,
  });

  GoogleCloudDataplexV1DataQualityDimensionResult.fromJson(core.Map json_)
      : this(
          passed:
              json_.containsKey('passed') ? json_['passed'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (passed != null) 'passed': passed!,
      };
}

/// The output of a DataQualityScan.
class GoogleCloudDataplexV1DataQualityResult {
  /// A list of results at the dimension-level.
  core.List<GoogleCloudDataplexV1DataQualityDimensionResult>? dimensions;

  /// Overall data quality result -- true if all rules passed.
  core.bool? passed;

  /// The count of rows processed.
  core.String? rowCount;

  /// A list of all the rules in a job, and their results.
  core.List<GoogleCloudDataplexV1DataQualityRuleResult>? rules;

  /// The data scanned for this result.
  GoogleCloudDataplexV1ScannedData? scannedData;

  GoogleCloudDataplexV1DataQualityResult({
    this.dimensions,
    this.passed,
    this.rowCount,
    this.rules,
    this.scannedData,
  });

  GoogleCloudDataplexV1DataQualityResult.fromJson(core.Map json_)
      : this(
          dimensions: json_.containsKey('dimensions')
              ? (json_['dimensions'] as core.List)
                  .map((value) =>
                      GoogleCloudDataplexV1DataQualityDimensionResult.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          passed:
              json_.containsKey('passed') ? json_['passed'] as core.bool : null,
          rowCount: json_.containsKey('rowCount')
              ? json_['rowCount'] as core.String
              : null,
          rules: json_.containsKey('rules')
              ? (json_['rules'] as core.List)
                  .map((value) =>
                      GoogleCloudDataplexV1DataQualityRuleResult.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          scannedData: json_.containsKey('scannedData')
              ? GoogleCloudDataplexV1ScannedData.fromJson(
                  json_['scannedData'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensions != null) 'dimensions': dimensions!,
        if (passed != null) 'passed': passed!,
        if (rowCount != null) 'rowCount': rowCount!,
        if (rules != null) 'rules': rules!,
        if (scannedData != null) 'scannedData': scannedData!,
      };
}

/// A rule captures data quality intent about a data source.
class GoogleCloudDataplexV1DataQualityRule {
  /// The unnested column which this rule is evaluated against.
  ///
  /// Optional.
  core.String? column;

  /// The dimension a rule belongs to.
  ///
  /// Results are also aggregated at the dimension-level. Supported dimensions
  /// are "COMPLETENESS", "ACCURACY", "CONSISTENCY", "VALIDITY", "UNIQUENESS",
  /// "INTEGRITY"
  ///
  /// Required.
  core.String? dimension;

  /// Rows with null values will automatically fail a rule, unless ignore_null
  /// is true.
  ///
  /// In that case, such null rows are trivially considered passing. Only
  /// applicable to ColumnMap rules.
  ///
  /// Optional.
  core.bool? ignoreNull;

  /// ColumnMap rule which evaluates whether each column value is null.
  GoogleCloudDataplexV1DataQualityRuleNonNullExpectation? nonNullExpectation;

  /// ColumnMap rule which evaluates whether each column value lies between a
  /// specified range.
  GoogleCloudDataplexV1DataQualityRuleRangeExpectation? rangeExpectation;

  /// ColumnMap rule which evaluates whether each column value matches a
  /// specified regex.
  GoogleCloudDataplexV1DataQualityRuleRegexExpectation? regexExpectation;

  /// Table rule which evaluates whether each row passes the specified
  /// condition.
  GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation?
      rowConditionExpectation;

  /// ColumnMap rule which evaluates whether each column value is contained by a
  /// specified set.
  GoogleCloudDataplexV1DataQualityRuleSetExpectation? setExpectation;

  /// ColumnAggregate rule which evaluates whether the column aggregate
  /// statistic lies between a specified range.
  GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation?
      statisticRangeExpectation;

  /// Table rule which evaluates whether the provided expression is true.
  GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation?
      tableConditionExpectation;

  /// The minimum ratio of passing_rows / total_rows required to pass this rule,
  /// with a range of 0.0, 1.00 indicates default value (i.e. 1.0)
  ///
  /// Optional.
  core.double? threshold;

  /// ColumnAggregate rule which evaluates whether the column has duplicates.
  GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation?
      uniquenessExpectation;

  GoogleCloudDataplexV1DataQualityRule({
    this.column,
    this.dimension,
    this.ignoreNull,
    this.nonNullExpectation,
    this.rangeExpectation,
    this.regexExpectation,
    this.rowConditionExpectation,
    this.setExpectation,
    this.statisticRangeExpectation,
    this.tableConditionExpectation,
    this.threshold,
    this.uniquenessExpectation,
  });

  GoogleCloudDataplexV1DataQualityRule.fromJson(core.Map json_)
      : this(
          column: json_.containsKey('column')
              ? json_['column'] as core.String
              : null,
          dimension: json_.containsKey('dimension')
              ? json_['dimension'] as core.String
              : null,
          ignoreNull: json_.containsKey('ignoreNull')
              ? json_['ignoreNull'] as core.bool
              : null,
          nonNullExpectation: json_.containsKey('nonNullExpectation')
              ? GoogleCloudDataplexV1DataQualityRuleNonNullExpectation.fromJson(
                  json_['nonNullExpectation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          rangeExpectation: json_.containsKey('rangeExpectation')
              ? GoogleCloudDataplexV1DataQualityRuleRangeExpectation.fromJson(
                  json_['rangeExpectation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          regexExpectation: json_.containsKey('regexExpectation')
              ? GoogleCloudDataplexV1DataQualityRuleRegexExpectation.fromJson(
                  json_['regexExpectation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          rowConditionExpectation: json_.containsKey('rowConditionExpectation')
              ? GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation
                  .fromJson(json_['rowConditionExpectation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          setExpectation: json_.containsKey('setExpectation')
              ? GoogleCloudDataplexV1DataQualityRuleSetExpectation.fromJson(
                  json_['setExpectation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          statisticRangeExpectation: json_
                  .containsKey('statisticRangeExpectation')
              ? GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation
                  .fromJson(json_['statisticRangeExpectation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          tableConditionExpectation: json_
                  .containsKey('tableConditionExpectation')
              ? GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation
                  .fromJson(json_['tableConditionExpectation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          threshold: json_.containsKey('threshold')
              ? (json_['threshold'] as core.num).toDouble()
              : null,
          uniquenessExpectation: json_.containsKey('uniquenessExpectation')
              ? GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation
                  .fromJson(json_['uniquenessExpectation']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (column != null) 'column': column!,
        if (dimension != null) 'dimension': dimension!,
        if (ignoreNull != null) 'ignoreNull': ignoreNull!,
        if (nonNullExpectation != null)
          'nonNullExpectation': nonNullExpectation!,
        if (rangeExpectation != null) 'rangeExpectation': rangeExpectation!,
        if (regexExpectation != null) 'regexExpectation': regexExpectation!,
        if (rowConditionExpectation != null)
          'rowConditionExpectation': rowConditionExpectation!,
        if (setExpectation != null) 'setExpectation': setExpectation!,
        if (statisticRangeExpectation != null)
          'statisticRangeExpectation': statisticRangeExpectation!,
        if (tableConditionExpectation != null)
          'tableConditionExpectation': tableConditionExpectation!,
        if (threshold != null) 'threshold': threshold!,
        if (uniquenessExpectation != null)
          'uniquenessExpectation': uniquenessExpectation!,
      };
}

/// Evaluates whether each column value is null.
typedef GoogleCloudDataplexV1DataQualityRuleNonNullExpectation = $Empty;

/// Evaluates whether each column value lies between a specified range.
class GoogleCloudDataplexV1DataQualityRuleRangeExpectation {
  /// The maximum column value allowed for a row to pass this validation.
  ///
  /// At least one of min_value and max_value need to be provided.
  ///
  /// Optional.
  core.String? maxValue;

  /// The minimum column value allowed for a row to pass this validation.
  ///
  /// At least one of min_value and max_value need to be provided.
  ///
  /// Optional.
  core.String? minValue;

  /// Whether each value needs to be strictly lesser than ('\<') the maximum, or
  /// if equality is allowed.
  ///
  /// Only relevant if a max_value has been defined. Default = false.
  ///
  /// Optional.
  core.bool? strictMaxEnabled;

  /// Whether each value needs to be strictly greater than ('\>') the minimum,
  /// or if equality is allowed.
  ///
  /// Only relevant if a min_value has been defined. Default = false.
  ///
  /// Optional.
  core.bool? strictMinEnabled;

  GoogleCloudDataplexV1DataQualityRuleRangeExpectation({
    this.maxValue,
    this.minValue,
    this.strictMaxEnabled,
    this.strictMinEnabled,
  });

  GoogleCloudDataplexV1DataQualityRuleRangeExpectation.fromJson(core.Map json_)
      : this(
          maxValue: json_.containsKey('maxValue')
              ? json_['maxValue'] as core.String
              : null,
          minValue: json_.containsKey('minValue')
              ? json_['minValue'] as core.String
              : null,
          strictMaxEnabled: json_.containsKey('strictMaxEnabled')
              ? json_['strictMaxEnabled'] as core.bool
              : null,
          strictMinEnabled: json_.containsKey('strictMinEnabled')
              ? json_['strictMinEnabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxValue != null) 'maxValue': maxValue!,
        if (minValue != null) 'minValue': minValue!,
        if (strictMaxEnabled != null) 'strictMaxEnabled': strictMaxEnabled!,
        if (strictMinEnabled != null) 'strictMinEnabled': strictMinEnabled!,
      };
}

/// Evaluates whether each column value matches a specified regex.
class GoogleCloudDataplexV1DataQualityRuleRegexExpectation {
  core.String? regex;

  GoogleCloudDataplexV1DataQualityRuleRegexExpectation({
    this.regex,
  });

  GoogleCloudDataplexV1DataQualityRuleRegexExpectation.fromJson(core.Map json_)
      : this(
          regex:
              json_.containsKey('regex') ? json_['regex'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (regex != null) 'regex': regex!,
      };
}

/// DataQualityRuleResult provides a more detailed, per-rule level view of the
/// results.
class GoogleCloudDataplexV1DataQualityRuleResult {
  /// The number of rows a rule was evaluated against.
  ///
  /// This field is only valid for ColumnMap type rules. Evaluated count can be
  /// configured to either (1) include all rows (default) - with null rows
  /// automatically failing rule evaluation OR (2) exclude null rows from the
  /// evaluated_count, by setting ignore_nulls = true
  core.String? evaluatedCount;

  /// The query to find rows that did not pass this rule.
  ///
  /// Only applies to ColumnMap and RowCondition rules.
  core.String? failingRowsQuery;

  /// The number of rows with null values in the specified column.
  core.String? nullCount;

  /// The ratio of passed_count / evaluated_count.
  ///
  /// This field is only valid for ColumnMap type rules.
  core.double? passRatio;

  /// Whether the rule passed or failed.
  core.bool? passed;

  /// The number of rows which passed a rule evaluation.
  ///
  /// This field is only valid for ColumnMap type rules.
  core.String? passedCount;

  /// The rule specified in the DataQualitySpec, as is.
  GoogleCloudDataplexV1DataQualityRule? rule;

  GoogleCloudDataplexV1DataQualityRuleResult({
    this.evaluatedCount,
    this.failingRowsQuery,
    this.nullCount,
    this.passRatio,
    this.passed,
    this.passedCount,
    this.rule,
  });

  GoogleCloudDataplexV1DataQualityRuleResult.fromJson(core.Map json_)
      : this(
          evaluatedCount: json_.containsKey('evaluatedCount')
              ? json_['evaluatedCount'] as core.String
              : null,
          failingRowsQuery: json_.containsKey('failingRowsQuery')
              ? json_['failingRowsQuery'] as core.String
              : null,
          nullCount: json_.containsKey('nullCount')
              ? json_['nullCount'] as core.String
              : null,
          passRatio: json_.containsKey('passRatio')
              ? (json_['passRatio'] as core.num).toDouble()
              : null,
          passed:
              json_.containsKey('passed') ? json_['passed'] as core.bool : null,
          passedCount: json_.containsKey('passedCount')
              ? json_['passedCount'] as core.String
              : null,
          rule: json_.containsKey('rule')
              ? GoogleCloudDataplexV1DataQualityRule.fromJson(
                  json_['rule'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (evaluatedCount != null) 'evaluatedCount': evaluatedCount!,
        if (failingRowsQuery != null) 'failingRowsQuery': failingRowsQuery!,
        if (nullCount != null) 'nullCount': nullCount!,
        if (passRatio != null) 'passRatio': passRatio!,
        if (passed != null) 'passed': passed!,
        if (passedCount != null) 'passedCount': passedCount!,
        if (rule != null) 'rule': rule!,
      };
}

/// Evaluates whether each row passes the specified condition.
///
/// The SQL expression needs to use BigQuery standard SQL syntax and should
/// produce a boolean per row as the result. Example: col1 \>= 0 AND col2 \< 10
typedef GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation
    = $ConditionExpectation;

/// Evaluates whether each column value is contained by a specified set.
class GoogleCloudDataplexV1DataQualityRuleSetExpectation {
  core.List<core.String>? values;

  GoogleCloudDataplexV1DataQualityRuleSetExpectation({
    this.values,
  });

  GoogleCloudDataplexV1DataQualityRuleSetExpectation.fromJson(core.Map json_)
      : this(
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

/// Evaluates whether the column aggregate statistic lies between a specified
/// range.
class GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation {
  /// The maximum column statistic value allowed for a row to pass this
  /// validation.
  ///
  /// At least one of min_value and max_value need to be provided.
  core.String? maxValue;

  /// The minimum column statistic value allowed for a row to pass this
  /// validation.
  ///
  /// At least one of min_value and max_value need to be provided.
  core.String? minValue;

  ///
  /// Possible string values are:
  /// - "STATISTIC_UNDEFINED" : Unspecified statistic type
  /// - "MEAN" : Evaluate the column mean
  /// - "MIN" : Evaluate the column min
  /// - "MAX" : Evaluate the column max
  core.String? statistic;

  /// Whether column statistic needs to be strictly lesser than ('\<') the
  /// maximum, or if equality is allowed.
  ///
  /// Only relevant if a max_value has been defined. Default = false.
  core.bool? strictMaxEnabled;

  /// Whether column statistic needs to be strictly greater than ('\>') the
  /// minimum, or if equality is allowed.
  ///
  /// Only relevant if a min_value has been defined. Default = false.
  core.bool? strictMinEnabled;

  GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation({
    this.maxValue,
    this.minValue,
    this.statistic,
    this.strictMaxEnabled,
    this.strictMinEnabled,
  });

  GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation.fromJson(
      core.Map json_)
      : this(
          maxValue: json_.containsKey('maxValue')
              ? json_['maxValue'] as core.String
              : null,
          minValue: json_.containsKey('minValue')
              ? json_['minValue'] as core.String
              : null,
          statistic: json_.containsKey('statistic')
              ? json_['statistic'] as core.String
              : null,
          strictMaxEnabled: json_.containsKey('strictMaxEnabled')
              ? json_['strictMaxEnabled'] as core.bool
              : null,
          strictMinEnabled: json_.containsKey('strictMinEnabled')
              ? json_['strictMinEnabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxValue != null) 'maxValue': maxValue!,
        if (minValue != null) 'minValue': minValue!,
        if (statistic != null) 'statistic': statistic!,
        if (strictMaxEnabled != null) 'strictMaxEnabled': strictMaxEnabled!,
        if (strictMinEnabled != null) 'strictMinEnabled': strictMinEnabled!,
      };
}

/// Evaluates whether the provided expression is true.
///
/// The SQL expression needs to use BigQuery standard SQL syntax and should
/// produce a scalar boolean result. Example: MIN(col1) \>= 0
typedef GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation
    = $ConditionExpectation;

/// Evaluates whether the column has duplicates.
typedef GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation = $Empty;

/// DataQualityScan related setting.
class GoogleCloudDataplexV1DataQualitySpec {
  /// The list of rules to evaluate against a data source.
  ///
  /// At least one rule is required.
  core.List<GoogleCloudDataplexV1DataQualityRule>? rules;

  GoogleCloudDataplexV1DataQualitySpec({
    this.rules,
  });

  GoogleCloudDataplexV1DataQualitySpec.fromJson(core.Map json_)
      : this(
          rules: json_.containsKey('rules')
              ? (json_['rules'] as core.List)
                  .map((value) => GoogleCloudDataplexV1DataQualityRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rules != null) 'rules': rules!,
      };
}

/// Represents a user-visible job which provides the insights for the related
/// data source.
///
/// For examples: - Data Quality: generates queries based on the rules and run
/// against the data to get data quality check results. - Data Profile: analyzes
/// the data in table(s) and generates insights about the structure, content and
/// relationships (such as null percent, cardinality, min/max/mean, etc).
class GoogleCloudDataplexV1DataScan {
  /// The time when the scan was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The data source for DataScan.
  ///
  /// Required.
  GoogleCloudDataplexV1DataSource? data;

  /// The result of the data profile scan.
  ///
  /// Output only.
  GoogleCloudDataplexV1DataProfileResult? dataProfileResult;

  /// DataProfileScan related setting.
  GoogleCloudDataplexV1DataProfileSpec? dataProfileSpec;

  /// The result of the data quality scan.
  ///
  /// Output only.
  GoogleCloudDataplexV1DataQualityResult? dataQualityResult;

  /// DataQualityScan related setting.
  GoogleCloudDataplexV1DataQualitySpec? dataQualitySpec;

  /// Description of the scan.
  ///
  /// * Must be between 1-1024 characters.
  ///
  /// Optional.
  core.String? description;

  /// User friendly display name.
  ///
  /// * Must be between 1-256 characters.
  ///
  /// Optional.
  core.String? displayName;

  /// DataScan execution settings.
  ///
  /// If not specified, the fields under it will use their default values.
  ///
  /// Optional.
  GoogleCloudDataplexV1DataScanExecutionSpec? executionSpec;

  /// Status of the data scan execution.
  ///
  /// Output only.
  GoogleCloudDataplexV1DataScanExecutionStatus? executionStatus;

  /// User-defined labels for the scan.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The relative resource name of the scan, of the form:
  /// projects/{project}/locations/{location_id}/dataScans/{datascan_id}.
  ///
  /// where {project} refers to a project_id or project_number and location_id
  /// refers to a GCP region.
  ///
  /// Output only.
  core.String? name;

  /// Current state of the DataScan.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is not specified.
  /// - "ACTIVE" : Resource is active, i.e., ready to use.
  /// - "CREATING" : Resource is under creation.
  /// - "DELETING" : Resource is under deletion.
  /// - "ACTION_REQUIRED" : Resource is active but has unresolved actions.
  core.String? state;

  /// The type of DataScan.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DATA_SCAN_TYPE_UNSPECIFIED" : The DataScan Type is unspecified.
  /// - "DATA_QUALITY" : Data Quality Scan.
  /// - "DATA_PROFILE" : Data Profile Scan.
  core.String? type;

  /// System generated globally unique ID for the scan.
  ///
  /// This ID will be different if the scan is deleted and re-created with the
  /// same name.
  ///
  /// Output only.
  core.String? uid;

  /// The time when the scan was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDataplexV1DataScan({
    this.createTime,
    this.data,
    this.dataProfileResult,
    this.dataProfileSpec,
    this.dataQualityResult,
    this.dataQualitySpec,
    this.description,
    this.displayName,
    this.executionSpec,
    this.executionStatus,
    this.labels,
    this.name,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
  });

  GoogleCloudDataplexV1DataScan.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          data: json_.containsKey('data')
              ? GoogleCloudDataplexV1DataSource.fromJson(
                  json_['data'] as core.Map<core.String, core.dynamic>)
              : null,
          dataProfileResult: json_.containsKey('dataProfileResult')
              ? GoogleCloudDataplexV1DataProfileResult.fromJson(
                  json_['dataProfileResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dataProfileSpec: json_.containsKey('dataProfileSpec')
              ? GoogleCloudDataplexV1DataProfileSpec.fromJson(
                  json_['dataProfileSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dataQualityResult: json_.containsKey('dataQualityResult')
              ? GoogleCloudDataplexV1DataQualityResult.fromJson(
                  json_['dataQualityResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dataQualitySpec: json_.containsKey('dataQualitySpec')
              ? GoogleCloudDataplexV1DataQualitySpec.fromJson(
                  json_['dataQualitySpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          executionSpec: json_.containsKey('executionSpec')
              ? GoogleCloudDataplexV1DataScanExecutionSpec.fromJson(
                  json_['executionSpec'] as core.Map<core.String, core.dynamic>)
              : null,
          executionStatus: json_.containsKey('executionStatus')
              ? GoogleCloudDataplexV1DataScanExecutionStatus.fromJson(
                  json_['executionStatus']
                      as core.Map<core.String, core.dynamic>)
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
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (data != null) 'data': data!,
        if (dataProfileResult != null) 'dataProfileResult': dataProfileResult!,
        if (dataProfileSpec != null) 'dataProfileSpec': dataProfileSpec!,
        if (dataQualityResult != null) 'dataQualityResult': dataQualityResult!,
        if (dataQualitySpec != null) 'dataQualitySpec': dataQualitySpec!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (executionSpec != null) 'executionSpec': executionSpec!,
        if (executionStatus != null) 'executionStatus': executionStatus!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// DataScan execution settings.
class GoogleCloudDataplexV1DataScanExecutionSpec {
  /// The unnested field (Date or Timestamp) that contains values that
  /// monotonically increase over time.
  ///
  /// Immutable.
  core.String? field;

  /// Spec related to how often and when a scan should be triggered.
  ///
  /// If not specified, the default is OnDemand, which means the scan will not
  /// run until the user calls RunDataScan API.
  ///
  /// Optional.
  GoogleCloudDataplexV1Trigger? trigger;

  GoogleCloudDataplexV1DataScanExecutionSpec({
    this.field,
    this.trigger,
  });

  GoogleCloudDataplexV1DataScanExecutionSpec.fromJson(core.Map json_)
      : this(
          field:
              json_.containsKey('field') ? json_['field'] as core.String : null,
          trigger: json_.containsKey('trigger')
              ? GoogleCloudDataplexV1Trigger.fromJson(
                  json_['trigger'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (field != null) 'field': field!,
        if (trigger != null) 'trigger': trigger!,
      };
}

/// Status of the data scan execution.
class GoogleCloudDataplexV1DataScanExecutionStatus {
  /// The time when the latest DataScanJob ended.
  core.String? latestJobEndTime;

  /// The time when the latest DataScanJob started.
  core.String? latestJobStartTime;

  GoogleCloudDataplexV1DataScanExecutionStatus({
    this.latestJobEndTime,
    this.latestJobStartTime,
  });

  GoogleCloudDataplexV1DataScanExecutionStatus.fromJson(core.Map json_)
      : this(
          latestJobEndTime: json_.containsKey('latestJobEndTime')
              ? json_['latestJobEndTime'] as core.String
              : null,
          latestJobStartTime: json_.containsKey('latestJobStartTime')
              ? json_['latestJobStartTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (latestJobEndTime != null) 'latestJobEndTime': latestJobEndTime!,
        if (latestJobStartTime != null)
          'latestJobStartTime': latestJobStartTime!,
      };
}

/// A DataScanJob represents an instance of a data scan.
class GoogleCloudDataplexV1DataScanJob {
  /// The result of the data profile scan.
  ///
  /// Output only.
  GoogleCloudDataplexV1DataProfileResult? dataProfileResult;

  /// DataProfileScan related setting.
  ///
  /// Output only.
  GoogleCloudDataplexV1DataProfileSpec? dataProfileSpec;

  /// The result of the data quality scan.
  ///
  /// Output only.
  GoogleCloudDataplexV1DataQualityResult? dataQualityResult;

  /// DataQualityScan related setting.
  ///
  /// Output only.
  GoogleCloudDataplexV1DataQualitySpec? dataQualitySpec;

  /// The time when the DataScanJob ended.
  ///
  /// Output only.
  core.String? endTime;

  /// Additional information about the current state.
  ///
  /// Output only.
  core.String? message;

  /// The relative resource name of the DataScanJob, of the form:
  /// projects/{project}/locations/{location_id}/dataScans/{datascan_id}/jobs/{job_id}.
  ///
  /// where {project} refers to a project_id or project_number and location_id
  /// refers to a GCP region.
  ///
  /// Output only.
  core.String? name;

  /// The time when the DataScanJob was started.
  ///
  /// Output only.
  core.String? startTime;

  /// Execution state for the DataScanJob.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The DataScanJob state is unspecified.
  /// - "RUNNING" : The DataScanJob is running.
  /// - "CANCELING" : The DataScanJob is canceling.
  /// - "CANCELLED" : The DataScanJob cancellation was successful.
  /// - "SUCCEEDED" : The DataScanJob completed successfully.
  /// - "FAILED" : The DataScanJob is no longer running due to an error.
  /// - "PENDING" : The DataScanJob has been created but not started to run yet.
  core.String? state;

  /// The type of the parent DataScan.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DATA_SCAN_TYPE_UNSPECIFIED" : The DataScan Type is unspecified.
  /// - "DATA_QUALITY" : Data Quality Scan.
  /// - "DATA_PROFILE" : Data Profile Scan.
  core.String? type;

  /// System generated globally unique ID for the DataScanJob.
  ///
  /// Output only.
  core.String? uid;

  GoogleCloudDataplexV1DataScanJob({
    this.dataProfileResult,
    this.dataProfileSpec,
    this.dataQualityResult,
    this.dataQualitySpec,
    this.endTime,
    this.message,
    this.name,
    this.startTime,
    this.state,
    this.type,
    this.uid,
  });

  GoogleCloudDataplexV1DataScanJob.fromJson(core.Map json_)
      : this(
          dataProfileResult: json_.containsKey('dataProfileResult')
              ? GoogleCloudDataplexV1DataProfileResult.fromJson(
                  json_['dataProfileResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dataProfileSpec: json_.containsKey('dataProfileSpec')
              ? GoogleCloudDataplexV1DataProfileSpec.fromJson(
                  json_['dataProfileSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dataQualityResult: json_.containsKey('dataQualityResult')
              ? GoogleCloudDataplexV1DataQualityResult.fromJson(
                  json_['dataQualityResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dataQualitySpec: json_.containsKey('dataQualitySpec')
              ? GoogleCloudDataplexV1DataQualitySpec.fromJson(
                  json_['dataQualitySpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataProfileResult != null) 'dataProfileResult': dataProfileResult!,
        if (dataProfileSpec != null) 'dataProfileSpec': dataProfileSpec!,
        if (dataQualityResult != null) 'dataQualityResult': dataQualityResult!,
        if (dataQualitySpec != null) 'dataQualitySpec': dataQualitySpec!,
        if (endTime != null) 'endTime': endTime!,
        if (message != null) 'message': message!,
        if (name != null) 'name': name!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
        if (uid != null) 'uid': uid!,
      };
}

/// The data source for DataScan.
class GoogleCloudDataplexV1DataSource {
  /// The dataplex entity that contains the data for DataScan, of the form:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}.
  ///
  /// Immutable.
  core.String? entity;

  GoogleCloudDataplexV1DataSource({
    this.entity,
  });

  GoogleCloudDataplexV1DataSource.fromJson(core.Map json_)
      : this(
          entity: json_.containsKey('entity')
              ? json_['entity'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entity != null) 'entity': entity!,
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

  /// Display name must be shorter than or equal to 256 characters.
  ///
  /// Optional.
  core.String? displayName;

  /// The etag associated with the entity, which can be retrieved with a
  /// GetEntity request.
  ///
  /// Required for update and delete requests.
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
  /// Must begin with a letter and consist of 256 or fewer characters.
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

  GoogleCloudDataplexV1Entity.fromJson(core.Map json_)
      : this(
          asset:
              json_.containsKey('asset') ? json_['asset'] as core.String : null,
          catalogEntry: json_.containsKey('catalogEntry')
              ? json_['catalogEntry'] as core.String
              : null,
          compatibility: json_.containsKey('compatibility')
              ? GoogleCloudDataplexV1EntityCompatibilityStatus.fromJson(
                  json_['compatibility'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          dataPath: json_.containsKey('dataPath')
              ? json_['dataPath'] as core.String
              : null,
          dataPathPattern: json_.containsKey('dataPathPattern')
              ? json_['dataPathPattern'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          format: json_.containsKey('format')
              ? GoogleCloudDataplexV1StorageFormat.fromJson(
                  json_['format'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          schema: json_.containsKey('schema')
              ? GoogleCloudDataplexV1Schema.fromJson(
                  json_['schema'] as core.Map<core.String, core.dynamic>)
              : null,
          system: json_.containsKey('system')
              ? json_['system'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
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

  GoogleCloudDataplexV1EntityCompatibilityStatus.fromJson(core.Map json_)
      : this(
          bigquery: json_.containsKey('bigquery')
              ? GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility
                  .fromJson(
                      json_['bigquery'] as core.Map<core.String, core.dynamic>)
              : null,
          hiveMetastore: json_.containsKey('hiveMetastore')
              ? GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility
                  .fromJson(json_['hiveMetastore']
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
      core.Map json_)
      : this(
          compatible: json_.containsKey('compatible')
              ? json_['compatible'] as core.bool
              : null,
          reason: json_.containsKey('reason')
              ? json_['reason'] as core.String
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

  GoogleCloudDataplexV1Environment.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          endpoints: json_.containsKey('endpoints')
              ? GoogleCloudDataplexV1EnvironmentEndpoints.fromJson(
                  json_['endpoints'] as core.Map<core.String, core.dynamic>)
              : null,
          infrastructureSpec: json_.containsKey('infrastructureSpec')
              ? GoogleCloudDataplexV1EnvironmentInfrastructureSpec.fromJson(
                  json_['infrastructureSpec']
                      as core.Map<core.String, core.dynamic>)
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
          sessionSpec: json_.containsKey('sessionSpec')
              ? GoogleCloudDataplexV1EnvironmentSessionSpec.fromJson(
                  json_['sessionSpec'] as core.Map<core.String, core.dynamic>)
              : null,
          sessionStatus: json_.containsKey('sessionStatus')
              ? GoogleCloudDataplexV1EnvironmentSessionStatus.fromJson(
                  json_['sessionStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
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

  GoogleCloudDataplexV1EnvironmentEndpoints.fromJson(core.Map json_)
      : this(
          notebooks: json_.containsKey('notebooks')
              ? json_['notebooks'] as core.String
              : null,
          sql: json_.containsKey('sql') ? json_['sql'] as core.String : null,
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

  GoogleCloudDataplexV1EnvironmentInfrastructureSpec.fromJson(core.Map json_)
      : this(
          compute: json_.containsKey('compute')
              ? GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources
                  .fromJson(
                      json_['compute'] as core.Map<core.String, core.dynamic>)
              : null,
          osImage: json_.containsKey('osImage')
              ? GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime
                  .fromJson(
                      json_['osImage'] as core.Map<core.String, core.dynamic>)
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
      core.Map json_)
      : this(
          diskSizeGb: json_.containsKey('diskSizeGb')
              ? json_['diskSizeGb'] as core.int
              : null,
          maxNodeCount: json_.containsKey('maxNodeCount')
              ? json_['maxNodeCount'] as core.int
              : null,
          nodeCount: json_.containsKey('nodeCount')
              ? json_['nodeCount'] as core.int
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
      core.Map json_)
      : this(
          imageVersion: json_.containsKey('imageVersion')
              ? json_['imageVersion'] as core.String
              : null,
          javaLibraries: json_.containsKey('javaLibraries')
              ? (json_['javaLibraries'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          properties: json_.containsKey('properties')
              ? (json_['properties'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          pythonPackages: json_.containsKey('pythonPackages')
              ? (json_['pythonPackages'] as core.List)
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

  GoogleCloudDataplexV1EnvironmentSessionSpec.fromJson(core.Map json_)
      : this(
          enableFastStartup: json_.containsKey('enableFastStartup')
              ? json_['enableFastStartup'] as core.bool
              : null,
          maxIdleDuration: json_.containsKey('maxIdleDuration')
              ? json_['maxIdleDuration'] as core.String
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

  GoogleCloudDataplexV1EnvironmentSessionStatus.fromJson(core.Map json_)
      : this(
          active:
              json_.containsKey('active') ? json_['active'] as core.bool : null,
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
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/tasks/{task_id}/jobs/{job_id}.
  ///
  /// Output only.
  core.String? name;

  /// The number of times the job has been retried (excluding the initial
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

  GoogleCloudDataplexV1Job.fromJson(core.Map json_)
      : this(
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          retryCount: json_.containsKey('retryCount')
              ? json_['retryCount'] as core.int
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
          serviceJob: json_.containsKey('serviceJob')
              ? json_['serviceJob'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
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

  GoogleCloudDataplexV1Lake.fromJson(core.Map json_)
      : this(
          assetStatus: json_.containsKey('assetStatus')
              ? GoogleCloudDataplexV1AssetStatus.fromJson(
                  json_['assetStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          metastore: json_.containsKey('metastore')
              ? GoogleCloudDataplexV1LakeMetastore.fromJson(
                  json_['metastore'] as core.Map<core.String, core.dynamic>)
              : null,
          metastoreStatus: json_.containsKey('metastoreStatus')
              ? GoogleCloudDataplexV1LakeMetastoreStatus.fromJson(
                  json_['metastoreStatus']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
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

  GoogleCloudDataplexV1LakeMetastore.fromJson(core.Map json_)
      : this(
          service: json_.containsKey('service')
              ? json_['service'] as core.String
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

  GoogleCloudDataplexV1LakeMetastoreStatus.fromJson(core.Map json_)
      : this(
          endpoint: json_.containsKey('endpoint')
              ? json_['endpoint'] as core.String
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
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

  GoogleCloudDataplexV1ListActionsResponse.fromJson(core.Map json_)
      : this(
          actions: json_.containsKey('actions')
              ? (json_['actions'] as core.List)
                  .map((value) => GoogleCloudDataplexV1Action.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
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

  GoogleCloudDataplexV1ListAssetsResponse.fromJson(core.Map json_)
      : this(
          assets: json_.containsKey('assets')
              ? (json_['assets'] as core.List)
                  .map((value) => GoogleCloudDataplexV1Asset.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
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

  GoogleCloudDataplexV1ListContentResponse.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? (json_['content'] as core.List)
                  .map((value) => GoogleCloudDataplexV1Content.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// List DataScanJobs response.
class GoogleCloudDataplexV1ListDataScanJobsResponse {
  /// DataScanJobs (metadata only) under a given dataScan.
  core.List<GoogleCloudDataplexV1DataScanJob>? dataScanJobs;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDataplexV1ListDataScanJobsResponse({
    this.dataScanJobs,
    this.nextPageToken,
  });

  GoogleCloudDataplexV1ListDataScanJobsResponse.fromJson(core.Map json_)
      : this(
          dataScanJobs: json_.containsKey('dataScanJobs')
              ? (json_['dataScanJobs'] as core.List)
                  .map((value) => GoogleCloudDataplexV1DataScanJob.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataScanJobs != null) 'dataScanJobs': dataScanJobs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// List dataScans response.
class GoogleCloudDataplexV1ListDataScansResponse {
  /// DataScans (metadata only) under the given parent location.
  core.List<GoogleCloudDataplexV1DataScan>? dataScans;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  GoogleCloudDataplexV1ListDataScansResponse({
    this.dataScans,
    this.nextPageToken,
    this.unreachable,
  });

  GoogleCloudDataplexV1ListDataScansResponse.fromJson(core.Map json_)
      : this(
          dataScans: json_.containsKey('dataScans')
              ? (json_['dataScans'] as core.List)
                  .map((value) => GoogleCloudDataplexV1DataScan.fromJson(
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
        if (dataScans != null) 'dataScans': dataScans!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
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

  GoogleCloudDataplexV1ListEntitiesResponse.fromJson(core.Map json_)
      : this(
          entities: json_.containsKey('entities')
              ? (json_['entities'] as core.List)
                  .map((value) => GoogleCloudDataplexV1Entity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
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

  GoogleCloudDataplexV1ListEnvironmentsResponse.fromJson(core.Map json_)
      : this(
          environments: json_.containsKey('environments')
              ? (json_['environments'] as core.List)
                  .map((value) => GoogleCloudDataplexV1Environment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
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

  GoogleCloudDataplexV1ListJobsResponse.fromJson(core.Map json_)
      : this(
          jobs: json_.containsKey('jobs')
              ? (json_['jobs'] as core.List)
                  .map((value) => GoogleCloudDataplexV1Job.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
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

  GoogleCloudDataplexV1ListLakesResponse.fromJson(core.Map json_)
      : this(
          lakes: json_.containsKey('lakes')
              ? (json_['lakes'] as core.List)
                  .map((value) => GoogleCloudDataplexV1Lake.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachableLocations: json_.containsKey('unreachableLocations')
              ? (json_['unreachableLocations'] as core.List)
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

  GoogleCloudDataplexV1ListPartitionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          partitions: json_.containsKey('partitions')
              ? (json_['partitions'] as core.List)
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

  GoogleCloudDataplexV1ListSessionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          sessions: json_.containsKey('sessions')
              ? (json_['sessions'] as core.List)
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

  GoogleCloudDataplexV1ListTasksResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          tasks: json_.containsKey('tasks')
              ? (json_['tasks'] as core.List)
                  .map((value) => GoogleCloudDataplexV1Task.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachableLocations: json_.containsKey('unreachableLocations')
              ? (json_['unreachableLocations'] as core.List)
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

  GoogleCloudDataplexV1ListZonesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          zones: json_.containsKey('zones')
              ? (json_['zones'] as core.List)
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

  /// Partition values used in the HTTP URL must be double encoded.
  ///
  /// For example, url_encode(url_encode(value)) can be used to encode
  /// "US:CA/CA#Sunnyvale so that the request URL ends with
  /// "/partitions/US%253ACA/CA%2523Sunnyvale". The name field in the response
  /// retains the encoded format.
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

  GoogleCloudDataplexV1Partition.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
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

/// Run DataScan Request
typedef GoogleCloudDataplexV1RunDataScanRequest = $Empty;

/// Run DataScan Response.
class GoogleCloudDataplexV1RunDataScanResponse {
  /// DataScanJob created by RunDataScan API.
  GoogleCloudDataplexV1DataScanJob? job;

  GoogleCloudDataplexV1RunDataScanResponse({
    this.job,
  });

  GoogleCloudDataplexV1RunDataScanResponse.fromJson(core.Map json_)
      : this(
          job: json_.containsKey('job')
              ? GoogleCloudDataplexV1DataScanJob.fromJson(
                  json_['job'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (job != null) 'job': job!,
      };
}

/// The data scanned during processing (e.g. in incremental DataScan)
class GoogleCloudDataplexV1ScannedData {
  /// The range denoted by values of an incremental field
  GoogleCloudDataplexV1ScannedDataIncrementalField? incrementalField;

  GoogleCloudDataplexV1ScannedData({
    this.incrementalField,
  });

  GoogleCloudDataplexV1ScannedData.fromJson(core.Map json_)
      : this(
          incrementalField: json_.containsKey('incrementalField')
              ? GoogleCloudDataplexV1ScannedDataIncrementalField.fromJson(
                  json_['incrementalField']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (incrementalField != null) 'incrementalField': incrementalField!,
      };
}

/// A data range denoted by a pair of start/end values of a field.
class GoogleCloudDataplexV1ScannedDataIncrementalField {
  /// Value that marks the end of the range
  core.String? end;

  /// The field that contains values which monotonically increases over time
  /// (e.g. timestamp).
  core.String? field;

  /// Value that marks the start of the range
  core.String? start;

  GoogleCloudDataplexV1ScannedDataIncrementalField({
    this.end,
    this.field,
    this.start,
  });

  GoogleCloudDataplexV1ScannedDataIncrementalField.fromJson(core.Map json_)
      : this(
          end: json_.containsKey('end') ? json_['end'] as core.String : null,
          field:
              json_.containsKey('field') ? json_['field'] as core.String : null,
          start:
              json_.containsKey('start') ? json_['start'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (end != null) 'end': end!,
        if (field != null) 'field': field!,
        if (start != null) 'start': start!,
      };
}

/// Schema information describing the structure and layout of the data.
class GoogleCloudDataplexV1Schema {
  /// The sequence of fields describing data in table entities.
  ///
  /// Note: BigQuery SchemaFields are immutable.
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

  /// Set to true if user-managed or false if managed by Dataplex.
  ///
  /// The default is false (managed by Dataplex). Set to falseto enable Dataplex
  /// discovery to update the schema. including new data discovery, schema
  /// inference, and schema evolution. Users retain the ability to input and
  /// edit the schema. Dataplex treats schema input by the user as though
  /// produced by a previous Dataplex discovery operation, and it will evolve
  /// the schema and take action based on that treatment. Set to true to fully
  /// manage the entity schema. This setting guarantees that Dataplex will not
  /// change schema fields.
  ///
  /// Required.
  core.bool? userManaged;

  GoogleCloudDataplexV1Schema({
    this.fields,
    this.partitionFields,
    this.partitionStyle,
    this.userManaged,
  });

  GoogleCloudDataplexV1Schema.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.List)
                  .map((value) =>
                      GoogleCloudDataplexV1SchemaSchemaField.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          partitionFields: json_.containsKey('partitionFields')
              ? (json_['partitionFields'] as core.List)
                  .map((value) =>
                      GoogleCloudDataplexV1SchemaPartitionField.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          partitionStyle: json_.containsKey('partitionStyle')
              ? json_['partitionStyle'] as core.String
              : null,
          userManaged: json_.containsKey('userManaged')
              ? json_['userManaged'] as core.bool
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
/// have the filtering ability due to performance consideration. Note: Partition
/// fields are immutable.
class GoogleCloudDataplexV1SchemaPartitionField {
  /// Partition field name must consist of letters, numbers, and underscores
  /// only, with a maximum of length of 256 characters, and must begin with a
  /// letter or underscore..
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

  GoogleCloudDataplexV1SchemaPartitionField.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
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
  /// Must contain only letters, numbers and underscores, with a maximum length
  /// of 767 characters, and must begin with a letter or underscore.
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

  GoogleCloudDataplexV1SchemaSchemaField.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.List)
                  .map((value) =>
                      GoogleCloudDataplexV1SchemaSchemaField.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          mode: json_.containsKey('mode') ? json_['mode'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
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

  GoogleCloudDataplexV1Session.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          userId: json_.containsKey('userId')
              ? json_['userId'] as core.String
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

  /// Additional information about iceberg tables.
  ///
  /// Optional.
  GoogleCloudDataplexV1StorageFormatIcebergOptions? iceberg;

  /// Additional information about CSV formatted data.
  ///
  /// Optional.
  GoogleCloudDataplexV1StorageFormatJsonOptions? json;

  /// The mime type descriptor for the data.
  ///
  /// Must match the pattern {type}/{subtype}. Supported values:
  /// application/x-parquet application/x-avro application/x-orc
  /// application/x-tfrecord application/x-parquet+iceberg
  /// application/x-avro+iceberg application/x-orc+iceberg application/json
  /// application/{subtypes} text/csv text/ image/{image subtype} video/{video
  /// subtype} audio/{audio subtype}
  ///
  /// Required.
  core.String? mimeType;

  GoogleCloudDataplexV1StorageFormat({
    this.compressionFormat,
    this.csv,
    this.format,
    this.iceberg,
    this.json,
    this.mimeType,
  });

  GoogleCloudDataplexV1StorageFormat.fromJson(core.Map json_)
      : this(
          compressionFormat: json_.containsKey('compressionFormat')
              ? json_['compressionFormat'] as core.String
              : null,
          csv: json_.containsKey('csv')
              ? GoogleCloudDataplexV1StorageFormatCsvOptions.fromJson(
                  json_['csv'] as core.Map<core.String, core.dynamic>)
              : null,
          format: json_.containsKey('format')
              ? json_['format'] as core.String
              : null,
          iceberg: json_.containsKey('iceberg')
              ? GoogleCloudDataplexV1StorageFormatIcebergOptions.fromJson(
                  json_['iceberg'] as core.Map<core.String, core.dynamic>)
              : null,
          json: json_.containsKey('json')
              ? GoogleCloudDataplexV1StorageFormatJsonOptions.fromJson(
                  json_['json'] as core.Map<core.String, core.dynamic>)
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compressionFormat != null) 'compressionFormat': compressionFormat!,
        if (csv != null) 'csv': csv!,
        if (format != null) 'format': format!,
        if (iceberg != null) 'iceberg': iceberg!,
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
  /// Accepts '"' (double quotation mark) or ''' (single quotation mark).
  /// Defaults to '"' (double quotation mark) if unspecified.
  ///
  /// Optional.
  core.String? quote;

  GoogleCloudDataplexV1StorageFormatCsvOptions({
    this.delimiter,
    this.encoding,
    this.headerRows,
    this.quote,
  });

  GoogleCloudDataplexV1StorageFormatCsvOptions.fromJson(core.Map json_)
      : this(
          delimiter: json_.containsKey('delimiter')
              ? json_['delimiter'] as core.String
              : null,
          encoding: json_.containsKey('encoding')
              ? json_['encoding'] as core.String
              : null,
          headerRows: json_.containsKey('headerRows')
              ? json_['headerRows'] as core.int
              : null,
          quote:
              json_.containsKey('quote') ? json_['quote'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (delimiter != null) 'delimiter': delimiter!,
        if (encoding != null) 'encoding': encoding!,
        if (headerRows != null) 'headerRows': headerRows!,
        if (quote != null) 'quote': quote!,
      };
}

/// Describes Iceberg data format.
class GoogleCloudDataplexV1StorageFormatIcebergOptions {
  /// The location of where the iceberg metadata is present, must be within the
  /// table path
  ///
  /// Optional.
  core.String? metadataLocation;

  GoogleCloudDataplexV1StorageFormatIcebergOptions({
    this.metadataLocation,
  });

  GoogleCloudDataplexV1StorageFormatIcebergOptions.fromJson(core.Map json_)
      : this(
          metadataLocation: json_.containsKey('metadataLocation')
              ? json_['metadataLocation'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadataLocation != null) 'metadataLocation': metadataLocation!,
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

  GoogleCloudDataplexV1StorageFormatJsonOptions.fromJson(core.Map json_)
      : this(
          encoding: json_.containsKey('encoding')
              ? json_['encoding'] as core.String
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

  /// Status of the latest task executions.
  ///
  /// Output only.
  GoogleCloudDataplexV1TaskExecutionStatus? executionStatus;

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

  /// Config related to running scheduled Notebooks.
  GoogleCloudDataplexV1TaskNotebookTaskConfig? notebook;

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
    this.executionStatus,
    this.labels,
    this.name,
    this.notebook,
    this.spark,
    this.state,
    this.triggerSpec,
    this.uid,
    this.updateTime,
  });

  GoogleCloudDataplexV1Task.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          executionSpec: json_.containsKey('executionSpec')
              ? GoogleCloudDataplexV1TaskExecutionSpec.fromJson(
                  json_['executionSpec'] as core.Map<core.String, core.dynamic>)
              : null,
          executionStatus: json_.containsKey('executionStatus')
              ? GoogleCloudDataplexV1TaskExecutionStatus.fromJson(
                  json_['executionStatus']
                      as core.Map<core.String, core.dynamic>)
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
          notebook: json_.containsKey('notebook')
              ? GoogleCloudDataplexV1TaskNotebookTaskConfig.fromJson(
                  json_['notebook'] as core.Map<core.String, core.dynamic>)
              : null,
          spark: json_.containsKey('spark')
              ? GoogleCloudDataplexV1TaskSparkTaskConfig.fromJson(
                  json_['spark'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          triggerSpec: json_.containsKey('triggerSpec')
              ? GoogleCloudDataplexV1TaskTriggerSpec.fromJson(
                  json_['triggerSpec'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (executionSpec != null) 'executionSpec': executionSpec!,
        if (executionStatus != null) 'executionStatus': executionStatus!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (notebook != null) 'notebook': notebook!,
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

  /// The Cloud KMS key to use for encryption, of the form:
  /// projects/{project_number}/locations/{location_id}/keyRings/{key-ring-name}/cryptoKeys/{key-name}.
  ///
  /// Optional.
  core.String? kmsKey;

  /// The maximum duration after which the job execution is expired.
  ///
  /// Optional.
  core.String? maxJobExecutionLifetime;

  /// The project in which jobs are run.
  ///
  /// By default, the project containing the Lake is used. If a project is
  /// provided, the ExecutionSpec.service_account must belong to this project.
  ///
  /// Optional.
  core.String? project;

  /// Service account to use to execute a task.
  ///
  /// If not provided, the default Compute service account for the project is
  /// used.
  ///
  /// Required.
  core.String? serviceAccount;

  GoogleCloudDataplexV1TaskExecutionSpec({
    this.args,
    this.kmsKey,
    this.maxJobExecutionLifetime,
    this.project,
    this.serviceAccount,
  });

  GoogleCloudDataplexV1TaskExecutionSpec.fromJson(core.Map json_)
      : this(
          args: json_.containsKey('args')
              ? (json_['args'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          kmsKey: json_.containsKey('kmsKey')
              ? json_['kmsKey'] as core.String
              : null,
          maxJobExecutionLifetime: json_.containsKey('maxJobExecutionLifetime')
              ? json_['maxJobExecutionLifetime'] as core.String
              : null,
          project: json_.containsKey('project')
              ? json_['project'] as core.String
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (args != null) 'args': args!,
        if (kmsKey != null) 'kmsKey': kmsKey!,
        if (maxJobExecutionLifetime != null)
          'maxJobExecutionLifetime': maxJobExecutionLifetime!,
        if (project != null) 'project': project!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
      };
}

/// Status of the task execution (e.g. Jobs).
class GoogleCloudDataplexV1TaskExecutionStatus {
  /// latest job execution
  ///
  /// Output only.
  GoogleCloudDataplexV1Job? latestJob;

  /// Last update time of the status.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDataplexV1TaskExecutionStatus({
    this.latestJob,
    this.updateTime,
  });

  GoogleCloudDataplexV1TaskExecutionStatus.fromJson(core.Map json_)
      : this(
          latestJob: json_.containsKey('latestJob')
              ? GoogleCloudDataplexV1Job.fromJson(
                  json_['latestJob'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (latestJob != null) 'latestJob': latestJob!,
        if (updateTime != null) 'updateTime': updateTime!,
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

  GoogleCloudDataplexV1TaskInfrastructureSpec.fromJson(core.Map json_)
      : this(
          batch: json_.containsKey('batch')
              ? GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources
                  .fromJson(
                      json_['batch'] as core.Map<core.String, core.dynamic>)
              : null,
          containerImage: json_.containsKey('containerImage')
              ? GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime
                  .fromJson(json_['containerImage']
                      as core.Map<core.String, core.dynamic>)
              : null,
          vpcNetwork: json_.containsKey('vpcNetwork')
              ? GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork.fromJson(
                  json_['vpcNetwork'] as core.Map<core.String, core.dynamic>)
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
  /// Executor Count should be between 2 and 100. Default=2
  ///
  /// Optional.
  core.int? executorsCount;

  /// Max configurable executors.
  ///
  /// If max_executors_count \> executors_count, then auto-scaling is enabled.
  /// Max Executor Count should be between 2 and 1000. Default=1000
  ///
  /// Optional.
  core.int? maxExecutorsCount;

  GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources({
    this.executorsCount,
    this.maxExecutorsCount,
  });

  GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources.fromJson(
      core.Map json_)
      : this(
          executorsCount: json_.containsKey('executorsCount')
              ? json_['executorsCount'] as core.int
              : null,
          maxExecutorsCount: json_.containsKey('maxExecutorsCount')
              ? json_['maxExecutorsCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executorsCount != null) 'executorsCount': executorsCount!,
        if (maxExecutorsCount != null) 'maxExecutorsCount': maxExecutorsCount!,
      };
}

/// Container Image Runtime Configuration used with Batch execution.
class GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime {
  /// Container image to use.
  ///
  /// Optional.
  core.String? image;

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
    this.image,
    this.javaJars,
    this.properties,
    this.pythonPackages,
  });

  GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime.fromJson(
      core.Map json_)
      : this(
          image:
              json_.containsKey('image') ? json_['image'] as core.String : null,
          javaJars: json_.containsKey('javaJars')
              ? (json_['javaJars'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          properties: json_.containsKey('properties')
              ? (json_['properties'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          pythonPackages: json_.containsKey('pythonPackages')
              ? (json_['pythonPackages'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (image != null) 'image': image!,
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

  GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork.fromJson(core.Map json_)
      : this(
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          networkTags: json_.containsKey('networkTags')
              ? (json_['networkTags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          subNetwork: json_.containsKey('subNetwork')
              ? json_['subNetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (network != null) 'network': network!,
        if (networkTags != null) 'networkTags': networkTags!,
        if (subNetwork != null) 'subNetwork': subNetwork!,
      };
}

/// Config for running scheduled notebooks.
class GoogleCloudDataplexV1TaskNotebookTaskConfig {
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

  /// Path to input notebook.
  ///
  /// This can be the Cloud Storage URI of the notebook file or the path to a
  /// Notebook Content. The execution args are accessible as environment
  /// variables (TASK_key=value).
  ///
  /// Required.
  core.String? notebook;

  GoogleCloudDataplexV1TaskNotebookTaskConfig({
    this.archiveUris,
    this.fileUris,
    this.infrastructureSpec,
    this.notebook,
  });

  GoogleCloudDataplexV1TaskNotebookTaskConfig.fromJson(core.Map json_)
      : this(
          archiveUris: json_.containsKey('archiveUris')
              ? (json_['archiveUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fileUris: json_.containsKey('fileUris')
              ? (json_['fileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          infrastructureSpec: json_.containsKey('infrastructureSpec')
              ? GoogleCloudDataplexV1TaskInfrastructureSpec.fromJson(
                  json_['infrastructureSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          notebook: json_.containsKey('notebook')
              ? json_['notebook'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (archiveUris != null) 'archiveUris': archiveUris!,
        if (fileUris != null) 'fileUris': fileUris!,
        if (infrastructureSpec != null)
          'infrastructureSpec': infrastructureSpec!,
        if (notebook != null) 'notebook': notebook!,
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

  GoogleCloudDataplexV1TaskSparkTaskConfig.fromJson(core.Map json_)
      : this(
          archiveUris: json_.containsKey('archiveUris')
              ? (json_['archiveUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fileUris: json_.containsKey('fileUris')
              ? (json_['fileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          infrastructureSpec: json_.containsKey('infrastructureSpec')
              ? GoogleCloudDataplexV1TaskInfrastructureSpec.fromJson(
                  json_['infrastructureSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          mainClass: json_.containsKey('mainClass')
              ? json_['mainClass'] as core.String
              : null,
          mainJarFileUri: json_.containsKey('mainJarFileUri')
              ? json_['mainJarFileUri'] as core.String
              : null,
          pythonScriptFile: json_.containsKey('pythonScriptFile')
              ? json_['pythonScriptFile'] as core.String
              : null,
          sqlScript: json_.containsKey('sqlScript')
              ? json_['sqlScript'] as core.String
              : null,
          sqlScriptFile: json_.containsKey('sqlScriptFile')
              ? json_['sqlScriptFile'] as core.String
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

  GoogleCloudDataplexV1TaskTriggerSpec.fromJson(core.Map json_)
      : this(
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
              : null,
          maxRetries: json_.containsKey('maxRetries')
              ? json_['maxRetries'] as core.int
              : null,
          schedule: json_.containsKey('schedule')
              ? json_['schedule'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disabled != null) 'disabled': disabled!,
        if (maxRetries != null) 'maxRetries': maxRetries!,
        if (schedule != null) 'schedule': schedule!,
        if (startTime != null) 'startTime': startTime!,
        if (type != null) 'type': type!,
      };
}

/// DataScan scheduling and trigger settings.
class GoogleCloudDataplexV1Trigger {
  /// The scan runs one-time shortly after DataScan Creation.
  GoogleCloudDataplexV1TriggerOnDemand? onDemand;

  /// The scan is scheduled to run periodically.
  GoogleCloudDataplexV1TriggerSchedule? schedule;

  GoogleCloudDataplexV1Trigger({
    this.onDemand,
    this.schedule,
  });

  GoogleCloudDataplexV1Trigger.fromJson(core.Map json_)
      : this(
          onDemand: json_.containsKey('onDemand')
              ? GoogleCloudDataplexV1TriggerOnDemand.fromJson(
                  json_['onDemand'] as core.Map<core.String, core.dynamic>)
              : null,
          schedule: json_.containsKey('schedule')
              ? GoogleCloudDataplexV1TriggerSchedule.fromJson(
                  json_['schedule'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (onDemand != null) 'onDemand': onDemand!,
        if (schedule != null) 'schedule': schedule!,
      };
}

/// The scan runs one-time via RunDataScan API.
typedef GoogleCloudDataplexV1TriggerOnDemand = $Empty;

/// The scan is scheduled to run periodically.
class GoogleCloudDataplexV1TriggerSchedule {
  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) for running scans
  /// periodically.
  ///
  /// To explicitly set a timezone to the cron tab, apply a prefix in the cron
  /// tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The
  /// ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database.
  /// For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York
  /// 1 * * * *". This field is required for Schedule scans.
  ///
  /// Required.
  core.String? cron;

  GoogleCloudDataplexV1TriggerSchedule({
    this.cron,
  });

  GoogleCloudDataplexV1TriggerSchedule.fromJson(core.Map json_)
      : this(
          cron: json_.containsKey('cron') ? json_['cron'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cron != null) 'cron': cron!,
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

  GoogleCloudDataplexV1Zone.fromJson(core.Map json_)
      : this(
          assetStatus: json_.containsKey('assetStatus')
              ? GoogleCloudDataplexV1AssetStatus.fromJson(
                  json_['assetStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          discoverySpec: json_.containsKey('discoverySpec')
              ? GoogleCloudDataplexV1ZoneDiscoverySpec.fromJson(
                  json_['discoverySpec'] as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
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
          resourceSpec: json_.containsKey('resourceSpec')
              ? GoogleCloudDataplexV1ZoneResourceSpec.fromJson(
                  json_['resourceSpec'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
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

  GoogleCloudDataplexV1ZoneDiscoverySpec.fromJson(core.Map json_)
      : this(
          csvOptions: json_.containsKey('csvOptions')
              ? GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions.fromJson(
                  json_['csvOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          excludePatterns: json_.containsKey('excludePatterns')
              ? (json_['excludePatterns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includePatterns: json_.containsKey('includePatterns')
              ? (json_['includePatterns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          jsonOptions: json_.containsKey('jsonOptions')
              ? GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions.fromJson(
                  json_['jsonOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          schedule: json_.containsKey('schedule')
              ? json_['schedule'] as core.String
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

  GoogleCloudDataplexV1ZoneResourceSpec.fromJson(core.Map json_)
      : this(
          locationType: json_.containsKey('locationType')
              ? json_['locationType'] as core.String
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

  GoogleCloudLocationListLocationsResponse.fromJson(core.Map json_)
      : this(
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => GoogleCloudLocationLocation.fromJson(
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

  GoogleIamV1AuditConfig.fromJson(core.Map json_)
      : this(
          auditLogConfigs: json_.containsKey('auditLogConfigs')
              ? (json_['auditLogConfigs'] as core.List)
                  .map((value) => GoogleIamV1AuditLogConfig.fromJson(
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

  /// Specifies the principals requesting access for a Google Cloud resource.
  ///
  /// members can have the following values: allUsers: A special identifier that
  /// represents anyone who is on the internet; with or without a Google
  /// account. allAuthenticatedUsers: A special identifier that represents
  /// anyone who is authenticated with a Google account or a service account.
  /// Does not include identities that come from external identity providers
  /// (IdPs) through identity federation. user:{emailid}: An email address that
  /// represents a specific Google account. For example, alice@example.com .
  /// serviceAccount:{emailid}: An email address that represents a Google
  /// service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// serviceAccount:{projectid}.svc.id.goog\[{namespace}/{kubernetes-sa}\]: An
  /// identifier for a Kubernetes service account
  /// (https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
  /// For example, my-project.svc.id.goog\[my-namespace/my-kubernetes-sa\].
  /// group:{emailid}: An email address that represents a Google group. For
  /// example, admins@example.com. deleted:user:{emailid}?uid={uniqueid}: An
  /// email address (plus unique identifier) representing a user that has been
  /// recently deleted. For example,
  /// alice@example.com?uid=123456789012345678901. If the user is recovered,
  /// this value reverts to user:{emailid} and the recovered user retains the
  /// role in the binding. deleted:serviceAccount:{emailid}?uid={uniqueid}: An
  /// email address (plus unique identifier) representing a service account that
  /// has been recently deleted. For example,
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

  GoogleIamV1Binding.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? GoogleTypeExpr.fromJson(
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

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
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

  GoogleIamV1Policy.fromJson(core.Map json_)
      : this(
          auditConfigs: json_.containsKey('auditConfigs')
              ? (json_['auditConfigs'] as core.List)
                  .map((value) => GoogleIamV1AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: json_.containsKey('bindings')
              ? (json_['bindings'] as core.List)
                  .map((value) => GoogleIamV1Binding.fromJson(
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

/// Request message for SetIamPolicy method.
class GoogleIamV1SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the resource.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
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

  GoogleIamV1SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? GoogleIamV1Policy.fromJson(
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

  GoogleLongrunningListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
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

  GoogleLongrunningOperation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? GoogleRpcStatus.fromJson(
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
