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

/// Assured Workloads API - v1beta1
///
/// For more information, see <https://cloud.google.com/learnmoreurl>
///
/// Create an instance of [AssuredworkloadsApi] to access these resources:
///
/// - [OrganizationsResource]
///   - [OrganizationsLocationsResource]
///     - [OrganizationsLocationsOperationsResource]
///     - [OrganizationsLocationsWorkloadsResource]
///       - [OrganizationsLocationsWorkloadsUpdatesResource]
///       - [OrganizationsLocationsWorkloadsViolationsResource]
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

class AssuredworkloadsApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  OrganizationsResource get organizations => OrganizationsResource(_requester);

  AssuredworkloadsApi(
    http.Client client, {
    core.String rootUrl = 'https://assuredworkloads.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsResource get locations =>
      OrganizationsLocationsResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;
}

class OrganizationsLocationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsOperationsResource get operations =>
      OrganizationsLocationsOperationsResource(_requester);
  OrganizationsLocationsWorkloadsResource get workloads =>
      OrganizationsLocationsWorkloadsResource(_requester);

  OrganizationsLocationsResource(commons.ApiRequester client)
    : _requester = client;
}

class OrganizationsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsOperationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsLocationsWorkloadsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsWorkloadsUpdatesResource get updates =>
      OrganizationsLocationsWorkloadsUpdatesResource(_requester);
  OrganizationsLocationsWorkloadsViolationsResource get violations =>
      OrganizationsLocationsWorkloadsViolationsResource(_requester);

  OrganizationsLocationsWorkloadsResource(commons.ApiRequester client)
    : _requester = client;

  /// Analyzes a hypothetical move of a source resource to a target workload to
  /// surface compliance risks.
  ///
  /// The analysis is best effort and is not guaranteed to be exhaustive.
  ///
  /// Request parameters:
  ///
  /// [target] - Required. The resource ID of the folder-based destination
  /// workload. This workload is where the source resource will hypothetically
  /// be moved to. Specify the workload's relative resource name, formatted as:
  /// "organizations/{ORGANIZATION_ID}/locations/{LOCATION_ID}/workloads/{WORKLOAD_ID}"
  /// For example:
  /// "organizations/123/locations/us-east1/workloads/assured-workload-2"
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/workloads/\[^/\]+$`.
  ///
  /// [assetTypes] - Optional. List of asset types to be analyzed, including and
  /// under the source resource. If empty, all assets are analyzed. The complete
  /// list of asset types is available
  /// [here](https://cloud.google.com/asset-inventory/docs/supported-asset-types).
  ///
  /// [pageSize] - Optional. Page size. If a value is not specified, the default
  /// value of 10 is used. The maximum value is 50.
  ///
  /// [pageToken] - Optional. The page token from the previous response. It
  /// needs to be passed in the second and following requests.
  ///
  /// [project] - The source type is a project. Specify the project's relative
  /// resource name, formatted as either a project number or a project ID:
  /// "projects/{PROJECT_NUMBER}" or "projects/{PROJECT_ID}" For example:
  /// "projects/951040570662" when specifying a project number, or
  /// "projects/my-project-123" when specifying a project ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse>
  analyzeWorkloadMove(
    core.String target, {
    core.List<core.String>? assetTypes,
    core.int? pageSize,
    core.String? pageToken,
    core.String? project,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (assetTypes != null) 'assetTypes': assetTypes,
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (project != null) 'project': [project],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$target') + ':analyzeWorkloadMove';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates Assured Workload.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the new Workload's parent. Must
  /// be of the form `organizations/{org_id}/locations/{location_id}`.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [externalId] - Optional. A identifier associated with the workload and
  /// underlying projects which allows for the break down of billing costs for a
  /// workload. The value provided for the identifier will add a label to the
  /// workload and contained projects with the identifier as the value.
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
    GoogleCloudAssuredworkloadsV1beta1Workload request,
    core.String parent, {
    core.String? externalId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (externalId != null) 'externalId': [externalId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/workloads';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the workload.
  ///
  /// Make sure that workload's direct children are already in a deleted state,
  /// otherwise the request will fail with a FAILED_PRECONDITION error. In
  /// addition to assuredworkloads.workload.delete permission, the user should
  /// also have orgpolicy.policy.set permission on the deleted folder to remove
  /// Assured Workloads OrgPolicies.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The `name` field is used to identify the workload.
  /// Format:
  /// organizations/{org_id}/locations/{location_id}/workloads/{workload_id}
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/workloads/\[^/\]+$`.
  ///
  /// [etag] - Optional. The etag of the workload. If this is provided, it must
  /// match the server's etag.
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
    core.String? etag,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// This endpoint enables Assured Workloads service to offer compliance
  /// updates for the folder based assured workload.
  ///
  /// It sets up an Assured Workloads Service Agent, having permissions to read
  /// compliance controls (for example: Org Policies) applied on the workload.
  /// The caller must have `resourcemanager.folders.getIamPolicy` and
  /// `resourcemanager.folders.setIamPolicy` permissions on the assured workload
  /// folder.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The `name` field is used to identify the workload.
  /// Format:
  /// organizations/{org_id}/locations/{location_id}/workloads/{workload_id}
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/workloads/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse
  >
  enableComplianceUpdates(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$name') + ':enableComplianceUpdates';

    final response_ = await _requester.request(
      url_,
      'PUT',
      queryParams: queryParams_,
    );
    return GoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Enable resource violation monitoring for a workload.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The `name` field is used to identify the workload.
  /// Format:
  /// organizations/{org_id}/locations/{location_id}/workloads/{workload_id}
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/workloads/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse
  >
  enableResourceMonitoring(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$name') + ':enableResourceMonitoring';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return GoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets Assured Workload associated with a CRM Node
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Workload to fetch. This is the
  /// workloads's relative path in the API, formatted as
  /// "organizations/{organization_id}/locations/{location_id}/workloads/{workload_id}".
  /// For example,
  /// "organizations/123/locations/us-east1/workloads/assured-workload-1".
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/workloads/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudAssuredworkloadsV1beta1Workload].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAssuredworkloadsV1beta1Workload> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudAssuredworkloadsV1beta1Workload.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Assured Workloads under a CRM Node.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent Resource to list workloads from. Must be of
  /// the form `organizations/{org_id}/locations/{location}`.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A custom filter for filtering by properties of a workload. At
  /// this time, only filtering by labels is supported.
  ///
  /// [pageSize] - Page size.
  ///
  /// [pageToken] - Page token returned from previous request. Page token
  /// contains context from previous request. Page token needs to be passed in
  /// the second and following requests.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse> list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/workloads';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing workload.
  ///
  /// Currently allows updating of workload display_name and labels. For force
  /// updates don't set etag field in the Workload. Only one update operation
  /// per workload can be in progress.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. The resource name of the workload. Format:
  /// organizations/{organization}/locations/{location}/workloads/{workload}
  /// Read-only.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/workloads/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudAssuredworkloadsV1beta1Workload].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAssuredworkloadsV1beta1Workload> patch(
    GoogleCloudAssuredworkloadsV1beta1Workload request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudAssuredworkloadsV1beta1Workload.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Restrict the list of resources allowed in the Workload environment.
  ///
  /// The current list of allowed products can be found at
  /// https://cloud.google.com/assured-workloads/docs/supported-products In
  /// addition to assuredworkloads.workload.update permission, the user should
  /// also have orgpolicy.policy.set permission on the folder resource to use
  /// this functionality.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Workload. This is the
  /// workloads's relative path in the API, formatted as
  /// "organizations/{organization_id}/locations/{location_id}/workloads/{workload_id}".
  /// For example,
  /// "organizations/123/locations/us-east1/workloads/assured-workload-1".
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/workloads/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse
  >
  restrictAllowedResources(
    GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$name') + ':restrictAllowedResources';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsLocationsWorkloadsUpdatesResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsWorkloadsUpdatesResource(commons.ApiRequester client)
    : _requester = client;

  /// This endpoint creates a new operation to apply the given update.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the update. Format:
  /// organizations/{org_id}/locations/{location_id}/workloads/{workload_id}/updates/{update_id}
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/workloads/\[^/\]+/updates/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> apply(
    GoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + ':apply';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// This endpoint lists all updates for the given workload.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required.
  /// organizations/{org_id}/locations/{location_id}/workloads/{workload_id}
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/workloads/\[^/\]+$`.
  ///
  /// [pageSize] - Page size. The default value is 20 and the max allowed value
  /// is 100.
  ///
  /// [pageToken] - Page token returned from previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse>
  list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/updates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsLocationsWorkloadsViolationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsWorkloadsViolationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Acknowledges an existing violation.
  ///
  /// By acknowledging a violation, users acknowledge the existence of a
  /// compliance violation in their workload and decide to ignore it due to a
  /// valid business justification. Acknowledgement is a permanent operation and
  /// it cannot be reverted.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Violation to acknowledge.
  /// Format:
  /// organizations/{organization}/locations/{location}/workloads/{workload}/violations/{violation}
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/workloads/\[^/\]+/violations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse>
  acknowledge(
    GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + ':acknowledge';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves Assured Workload Violation based on ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Violation to fetch (ie.
  /// Violation.name). Format:
  /// organizations/{organization}/locations/{location}/workloads/{workload}/violations/{violation}
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/workloads/\[^/\]+/violations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudAssuredworkloadsV1beta1Violation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAssuredworkloadsV1beta1Violation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudAssuredworkloadsV1beta1Violation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the Violations in the AssuredWorkload Environment.
  ///
  /// Callers may also choose to read across multiple Workloads as per
  /// \[AIP-159\](https://google.aip.dev/159) by using '-' (the hyphen or dash
  /// character) as a wildcard character instead of workload-id in the parent.
  /// Format `organizations/{org_id}/locations/{location}/workloads/-`
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Workload name. Format
  /// `organizations/{org_id}/locations/{location}/workloads/{workload}`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/workloads/\[^/\]+$`.
  ///
  /// [filter] - Optional. A custom filter for filtering by the Violations
  /// properties.
  ///
  /// [interval_endTime] - The end of the time window.
  ///
  /// [interval_startTime] - The start of the time window.
  ///
  /// [pageSize] - Optional. Page size.
  ///
  /// [pageToken] - Optional. Page token returned from previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudAssuredworkloadsV1beta1ListViolationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAssuredworkloadsV1beta1ListViolationsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? interval_endTime,
    core.String? interval_startTime,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (interval_endTime != null) 'interval.endTime': [interval_endTime],
      if (interval_startTime != null)
        'interval.startTime': [interval_startTime],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/violations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudAssuredworkloadsV1beta1ListViolationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Request for acknowledging the violation
typedef GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest =
    $AcknowledgeViolationRequest;

/// Response for violation acknowledgement
typedef GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse = $Empty;

/// Response containing the analysis results for the hypothetical resource move.
class GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse {
  /// List of analysis results for each asset in scope.
  core.List<GoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis>?
  assetMoveAnalyses;

  /// The next page token.
  ///
  /// Is empty if the last page is reached.
  core.String? nextPageToken;

  GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse({
    this.assetMoveAnalyses,
    this.nextPageToken,
  });

  GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse.fromJson(
    core.Map json_,
  ) : this(
        assetMoveAnalyses:
            (json_['assetMoveAnalyses'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assetMoveAnalyses != null) 'assetMoveAnalyses': assetMoveAnalyses!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Request to apply update to a workload.
typedef GoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest =
    $ApplyWorkloadUpdateRequest;

/// Represents move analysis results for an asset.
class GoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis {
  /// List of eligible analyses performed for the asset.
  core.List<GoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup>?
  analysisGroups;

  /// The full resource name of the asset being analyzed.
  ///
  /// Example:
  /// //compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1
  core.String? asset;

  /// Type of the asset being analyzed.
  ///
  /// Possible values will be among the ones listed
  /// [here](https://cloud.google.com/asset-inventory/docs/supported-asset-types).
  core.String? assetType;

  GoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis({
    this.analysisGroups,
    this.asset,
    this.assetType,
  });

  GoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis.fromJson(core.Map json_)
    : this(
        analysisGroups:
            (json_['analysisGroups'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        asset: json_['asset'] as core.String?,
        assetType: json_['assetType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (analysisGroups != null) 'analysisGroups': analysisGroups!,
    if (asset != null) 'asset': asset!,
    if (assetType != null) 'assetType': assetType!,
  };
}

/// Response for EnableComplianceUpdates endpoint.
typedef GoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse =
    $Empty;

/// Response for EnableResourceMonitoring endpoint.
typedef GoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse =
    $Empty;

/// Response of ListViolations endpoint.
class GoogleCloudAssuredworkloadsV1beta1ListViolationsResponse {
  /// The next page token.
  ///
  /// Returns empty if reached the last page.
  core.String? nextPageToken;

  /// List of Violations under a Workload.
  core.List<GoogleCloudAssuredworkloadsV1beta1Violation>? violations;

  GoogleCloudAssuredworkloadsV1beta1ListViolationsResponse({
    this.nextPageToken,
    this.violations,
  });

  GoogleCloudAssuredworkloadsV1beta1ListViolationsResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        violations:
            (json_['violations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAssuredworkloadsV1beta1Violation.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (violations != null) 'violations': violations!,
  };
}

/// Response of listing the compliance updates per workload with pagination.
class GoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse {
  /// The next page token.
  ///
  /// Return empty if reached the last page.
  core.String? nextPageToken;

  /// The list of workload updates for a given workload.
  core.List<GoogleCloudAssuredworkloadsV1beta1WorkloadUpdate>? workloadUpdates;

  GoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse({
    this.nextPageToken,
    this.workloadUpdates,
  });

  GoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        workloadUpdates:
            (json_['workloadUpdates'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAssuredworkloadsV1beta1WorkloadUpdate.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (workloadUpdates != null) 'workloadUpdates': workloadUpdates!,
  };
}

/// Response of ListWorkloads endpoint.
class GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse {
  /// The next page token.
  ///
  /// Return empty if reached the last page.
  core.String? nextPageToken;

  /// List of Workloads under a given parent.
  core.List<GoogleCloudAssuredworkloadsV1beta1Workload>? workloads;

  GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse({
    this.nextPageToken,
    this.workloads,
  });

  GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        workloads:
            (json_['workloads'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAssuredworkloadsV1beta1Workload.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (workloads != null) 'workloads': workloads!,
  };
}

/// Represents a logical group of checks performed for an asset.
///
/// If successful, the group contains the analysis result, otherwise it contains
/// an error with the failure reason.
class GoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup {
  /// Result of a successful analysis.
  GoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult? analysisResult;

  /// Name of the analysis group.
  core.String? displayName;

  /// Error details for a failed analysis.
  GoogleRpcStatus? error;

  GoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup({
    this.analysisResult,
    this.displayName,
    this.error,
  });

  GoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup.fromJson(core.Map json_)
    : this(
        analysisResult:
            json_.containsKey('analysisResult')
                ? GoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult.fromJson(
                  json_['analysisResult']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        displayName: json_['displayName'] as core.String?,
        error:
            json_.containsKey('error')
                ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (analysisResult != null) 'analysisResult': analysisResult!,
    if (displayName != null) 'displayName': displayName!,
    if (error != null) 'error': error!,
  };
}

/// Represents the successful move analysis results for a group.
class GoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult {
  /// List of blockers.
  ///
  /// If not resolved, these will result in compliance violations in the target.
  core.List<GoogleCloudAssuredworkloadsV1beta1MoveImpact>? blockers;

  /// List of warnings.
  ///
  /// These are risks that may or may not result in compliance violations.
  core.List<GoogleCloudAssuredworkloadsV1beta1MoveImpact>? warnings;

  GoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult({
    this.blockers,
    this.warnings,
  });

  GoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult.fromJson(core.Map json_)
    : this(
        blockers:
            (json_['blockers'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAssuredworkloadsV1beta1MoveImpact.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        warnings:
            (json_['warnings'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAssuredworkloadsV1beta1MoveImpact.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (blockers != null) 'blockers': blockers!,
    if (warnings != null) 'warnings': warnings!,
  };
}

/// Represents the impact of moving the asset to the target.
typedef GoogleCloudAssuredworkloadsV1beta1MoveImpact = $MoveImpact;

/// This assured workload service object is used to represent the org policy
/// attached to a resource.
///
/// It servces the same purpose as the orgpolicy.v2.Policy object but with
/// functionality that is limited to what is supported by Assured Workloads(e.g.
/// only one rule under one OrgPolicy object, no conditions, etc).
class GoogleCloudAssuredworkloadsV1beta1OrgPolicy {
  /// The constraint name of the OrgPolicy.
  ///
  /// e.g. "constraints/gcp.resourceLocations".
  core.String? constraint;

  /// If `inherit` is true, policy rules of the lowest ancestor in the resource
  /// hierarchy chain are inherited.
  ///
  /// If it is false, policy rules are not inherited.
  core.bool? inherit;

  /// Ignores policies set above this resource and restores to the
  /// `constraint_default` value.
  ///
  /// `reset` can only be true when `rules` is empty and `inherit` is false.
  core.bool? reset;

  /// Resource that the OrgPolicy attaches to.
  ///
  /// Format: folders/123" projects/123".
  core.String? resource;

  /// The rule of the OrgPolicy.
  GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule? rule;

  GoogleCloudAssuredworkloadsV1beta1OrgPolicy({
    this.constraint,
    this.inherit,
    this.reset,
    this.resource,
    this.rule,
  });

  GoogleCloudAssuredworkloadsV1beta1OrgPolicy.fromJson(core.Map json_)
    : this(
        constraint: json_['constraint'] as core.String?,
        inherit: json_['inherit'] as core.bool?,
        reset: json_['reset'] as core.bool?,
        resource: json_['resource'] as core.String?,
        rule:
            json_.containsKey('rule')
                ? GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule.fromJson(
                  json_['rule'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (constraint != null) 'constraint': constraint!,
    if (inherit != null) 'inherit': inherit!,
    if (reset != null) 'reset': reset!,
    if (resource != null) 'resource': resource!,
    if (rule != null) 'rule': rule!,
  };
}

/// A rule used to express this policy.
class GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule {
  /// ListPolicy only when all values are allowed.
  core.bool? allowAll;

  /// ListPolicy only when all values are denied.
  core.bool? denyAll;

  /// BooleanPolicy only.
  core.bool? enforce;

  /// ListPolicy only when custom values are specified.
  GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues? values;

  GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule({
    this.allowAll,
    this.denyAll,
    this.enforce,
    this.values,
  });

  GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule.fromJson(core.Map json_)
    : this(
        allowAll: json_['allowAll'] as core.bool?,
        denyAll: json_['denyAll'] as core.bool?,
        enforce: json_['enforce'] as core.bool?,
        values:
            json_.containsKey('values')
                ? GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues.fromJson(
                  json_['values'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowAll != null) 'allowAll': allowAll!,
    if (denyAll != null) 'denyAll': denyAll!,
    if (enforce != null) 'enforce': enforce!,
    if (values != null) 'values': values!,
  };
}

/// The values allowed for a ListPolicy.
typedef GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues =
    $StringValues;

/// Represents an update for an org policy control applied on an Assured
/// Workload resource.
///
/// The inherited org policy is not considered.
class GoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate {
  /// The org policy currently applied on the assured workload resource.
  GoogleCloudAssuredworkloadsV1beta1OrgPolicy? appliedPolicy;

  /// The suggested org policy that replaces the applied policy.
  GoogleCloudAssuredworkloadsV1beta1OrgPolicy? suggestedPolicy;

  GoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate({
    this.appliedPolicy,
    this.suggestedPolicy,
  });

  GoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate.fromJson(core.Map json_)
    : this(
        appliedPolicy:
            json_.containsKey('appliedPolicy')
                ? GoogleCloudAssuredworkloadsV1beta1OrgPolicy.fromJson(
                  json_['appliedPolicy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        suggestedPolicy:
            json_.containsKey('suggestedPolicy')
                ? GoogleCloudAssuredworkloadsV1beta1OrgPolicy.fromJson(
                  json_['suggestedPolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appliedPolicy != null) 'appliedPolicy': appliedPolicy!,
    if (suggestedPolicy != null) 'suggestedPolicy': suggestedPolicy!,
  };
}

/// Request for restricting list of available resources in Workload environment.
typedef GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest =
    $RestrictAllowedResourcesRequest;

/// Response for restricting the list of allowed resources.
typedef GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse =
    $Empty;

/// The details of the update.
class GoogleCloudAssuredworkloadsV1beta1UpdateDetails {
  /// Update to one org policy, e.g. gcp.resourceLocation.
  GoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate? orgPolicyUpdate;

  GoogleCloudAssuredworkloadsV1beta1UpdateDetails({this.orgPolicyUpdate});

  GoogleCloudAssuredworkloadsV1beta1UpdateDetails.fromJson(core.Map json_)
    : this(
        orgPolicyUpdate:
            json_.containsKey('orgPolicyUpdate')
                ? GoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate.fromJson(
                  json_['orgPolicyUpdate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (orgPolicyUpdate != null) 'orgPolicyUpdate': orgPolicyUpdate!,
  };
}

/// Workload monitoring Violation.
class GoogleCloudAssuredworkloadsV1beta1Violation {
  /// A boolean that indicates if the violation is acknowledged
  core.bool? acknowledged;

  /// Timestamp when this violation was acknowledged first.
  ///
  /// Check exception_contexts to find the last time the violation was
  /// acknowledged when there are more than one violations. This field will be
  /// absent when acknowledged field is marked as false.
  ///
  /// Optional.
  core.String? acknowledgementTime;

  /// Violation Id of the org-policy violation due to which the resource
  /// violation is caused.
  ///
  /// Empty for org-policy violations.
  ///
  /// Optional. Output only.
  core.String? associatedOrgPolicyViolationId;

  /// Audit Log Link for violated resource Format:
  /// https://console.cloud.google.com/logs/query;query={logName}{protoPayload.resourceName}{timeRange}{folder}
  ///
  /// Output only. Immutable.
  core.String? auditLogLink;

  /// Time of the event which triggered the Violation.
  ///
  /// Output only.
  core.String? beginTime;

  /// Category under which this violation is mapped.
  ///
  /// e.g. Location, Service Usage, Access, Encryption, etc.
  ///
  /// Output only.
  core.String? category;

  /// Description for the Violation.
  ///
  /// e.g. OrgPolicy gcp.resourceLocations has non compliant value.
  ///
  /// Output only.
  core.String? description;

  /// Audit Log link to find business justification provided for violation
  /// exception.
  ///
  /// Format:
  /// https://console.cloud.google.com/logs/query;query={logName}{protoPayload.resourceName}{protoPayload.methodName}{timeRange}{organization}
  ///
  /// Output only. Immutable.
  core.String? exceptionAuditLogLink;

  /// List of all the exception detail added for the violation.
  ///
  /// Output only.
  core.List<GoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext>?
  exceptionContexts;

  /// Name of the Violation.
  ///
  /// Format:
  /// organizations/{organization}/locations/{location}/workloads/{workload_id}/violations/{violations_id}
  ///
  /// Output only. Immutable.
  core.String? name;

  /// Name of the OrgPolicy which was modified with non-compliant change and
  /// resulted this violation.
  ///
  /// Format: projects/{project_number}/policies/{constraint_name}
  /// folders/{folder_id}/policies/{constraint_name}
  /// organizations/{organization_id}/policies/{constraint_name}
  ///
  /// Output only. Immutable.
  core.String? nonCompliantOrgPolicy;

  /// The org-policy-constraint that was incorrectly changed, which resulted in
  /// this violation.
  ///
  /// Output only. Immutable.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? orgPolicyConstraint;

  /// Parent project number where resource is present.
  ///
  /// Empty for org-policy violations.
  ///
  /// Optional. Output only.
  core.String? parentProjectNumber;

  /// Compliance violation remediation
  ///
  /// Output only.
  GoogleCloudAssuredworkloadsV1beta1ViolationRemediation? remediation;

  /// Time of the event which fixed the Violation.
  ///
  /// If the violation is ACTIVE this will be empty.
  ///
  /// Output only.
  core.String? resolveTime;

  /// Name of the resource like
  /// //storage.googleapis.com/myprojectxyz-testbucket.
  ///
  /// Empty for org-policy violations.
  ///
  /// Optional. Output only.
  core.String? resourceName;

  /// Type of the resource like compute.googleapis.com/Disk, etc.
  ///
  /// Empty for org-policy violations.
  ///
  /// Optional. Output only.
  core.String? resourceType;

  /// State of the violation
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "RESOLVED" : Violation is resolved.
  /// - "UNRESOLVED" : Violation is Unresolved
  /// - "EXCEPTION" : Violation is Exception
  core.String? state;

  /// The last time when the Violation record was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Type of the violation
  ///
  /// Output only.
  /// Possible string values are:
  /// - "VIOLATION_TYPE_UNSPECIFIED" : Unspecified type.
  /// - "ORG_POLICY" : Org Policy Violation.
  /// - "RESOURCE" : Resource Violation.
  core.String? violationType;

  GoogleCloudAssuredworkloadsV1beta1Violation({
    this.acknowledged,
    this.acknowledgementTime,
    this.associatedOrgPolicyViolationId,
    this.auditLogLink,
    this.beginTime,
    this.category,
    this.description,
    this.exceptionAuditLogLink,
    this.exceptionContexts,
    this.name,
    this.nonCompliantOrgPolicy,
    this.orgPolicyConstraint,
    this.parentProjectNumber,
    this.remediation,
    this.resolveTime,
    this.resourceName,
    this.resourceType,
    this.state,
    this.updateTime,
    this.violationType,
  });

  GoogleCloudAssuredworkloadsV1beta1Violation.fromJson(core.Map json_)
    : this(
        acknowledged: json_['acknowledged'] as core.bool?,
        acknowledgementTime: json_['acknowledgementTime'] as core.String?,
        associatedOrgPolicyViolationId:
            json_['associatedOrgPolicyViolationId'] as core.String?,
        auditLogLink: json_['auditLogLink'] as core.String?,
        beginTime: json_['beginTime'] as core.String?,
        category: json_['category'] as core.String?,
        description: json_['description'] as core.String?,
        exceptionAuditLogLink: json_['exceptionAuditLogLink'] as core.String?,
        exceptionContexts:
            (json_['exceptionContexts'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        nonCompliantOrgPolicy: json_['nonCompliantOrgPolicy'] as core.String?,
        orgPolicyConstraint: json_['orgPolicyConstraint'] as core.String?,
        parentProjectNumber: json_['parentProjectNumber'] as core.String?,
        remediation:
            json_.containsKey('remediation')
                ? GoogleCloudAssuredworkloadsV1beta1ViolationRemediation.fromJson(
                  json_['remediation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        resolveTime: json_['resolveTime'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        resourceType: json_['resourceType'] as core.String?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        violationType: json_['violationType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (acknowledged != null) 'acknowledged': acknowledged!,
    if (acknowledgementTime != null)
      'acknowledgementTime': acknowledgementTime!,
    if (associatedOrgPolicyViolationId != null)
      'associatedOrgPolicyViolationId': associatedOrgPolicyViolationId!,
    if (auditLogLink != null) 'auditLogLink': auditLogLink!,
    if (beginTime != null) 'beginTime': beginTime!,
    if (category != null) 'category': category!,
    if (description != null) 'description': description!,
    if (exceptionAuditLogLink != null)
      'exceptionAuditLogLink': exceptionAuditLogLink!,
    if (exceptionContexts != null) 'exceptionContexts': exceptionContexts!,
    if (name != null) 'name': name!,
    if (nonCompliantOrgPolicy != null)
      'nonCompliantOrgPolicy': nonCompliantOrgPolicy!,
    if (orgPolicyConstraint != null)
      'orgPolicyConstraint': orgPolicyConstraint!,
    if (parentProjectNumber != null)
      'parentProjectNumber': parentProjectNumber!,
    if (remediation != null) 'remediation': remediation!,
    if (resolveTime != null) 'resolveTime': resolveTime!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (resourceType != null) 'resourceType': resourceType!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (violationType != null) 'violationType': violationType!,
  };
}

/// Violation exception detail.
typedef GoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext =
    $ViolationExceptionContext;

/// Represents remediation guidance to resolve compliance violation for
/// AssuredWorkload
class GoogleCloudAssuredworkloadsV1beta1ViolationRemediation {
  /// Values that can resolve the violation For example: for list org policy
  /// violations, this will either be the list of allowed or denied values
  core.List<core.String>? compliantValues;

  /// Remediation instructions to resolve violations
  ///
  /// Required.
  GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions?
  instructions;

  /// Reemediation type based on the type of org policy values violated
  ///
  /// Output only.
  /// Possible string values are:
  /// - "REMEDIATION_TYPE_UNSPECIFIED" : Unspecified remediation type
  /// - "REMEDIATION_BOOLEAN_ORG_POLICY_VIOLATION" : Remediation type for
  /// boolean org policy
  /// - "REMEDIATION_LIST_ALLOWED_VALUES_ORG_POLICY_VIOLATION" : Remediation
  /// type for list org policy which have allowed values in the monitoring rule
  /// - "REMEDIATION_LIST_DENIED_VALUES_ORG_POLICY_VIOLATION" : Remediation type
  /// for list org policy which have denied values in the monitoring rule
  /// - "REMEDIATION_RESTRICT_CMEK_CRYPTO_KEY_PROJECTS_ORG_POLICY_VIOLATION" :
  /// Remediation type for gcp.restrictCmekCryptoKeyProjects
  /// - "REMEDIATION_RESOURCE_VIOLATION" : Remediation type for resource
  /// violation.
  /// - "REMEDIATION_RESOURCE_VIOLATION_NON_CMEK_SERVICES" : Remediation type
  /// for resource violation due to gcp.restrictNonCmekServices
  core.String? remediationType;

  GoogleCloudAssuredworkloadsV1beta1ViolationRemediation({
    this.compliantValues,
    this.instructions,
    this.remediationType,
  });

  GoogleCloudAssuredworkloadsV1beta1ViolationRemediation.fromJson(
    core.Map json_,
  ) : this(
        compliantValues:
            (json_['compliantValues'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        instructions:
            json_.containsKey('instructions')
                ? GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions.fromJson(
                  json_['instructions'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        remediationType: json_['remediationType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (compliantValues != null) 'compliantValues': compliantValues!,
    if (instructions != null) 'instructions': instructions!,
    if (remediationType != null) 'remediationType': remediationType!,
  };
}

/// Instructions to remediate violation
class GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions {
  /// Remediation instructions to resolve violation via cloud console
  GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole?
  consoleInstructions;

  /// Remediation instructions to resolve violation via gcloud cli
  GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud?
  gcloudInstructions;

  GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions({
    this.consoleInstructions,
    this.gcloudInstructions,
  });

  GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions.fromJson(
    core.Map json_,
  ) : this(
        consoleInstructions:
            json_.containsKey('consoleInstructions')
                ? GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole.fromJson(
                  json_['consoleInstructions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        gcloudInstructions:
            json_.containsKey('gcloudInstructions')
                ? GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud.fromJson(
                  json_['gcloudInstructions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (consoleInstructions != null)
      'consoleInstructions': consoleInstructions!,
    if (gcloudInstructions != null) 'gcloudInstructions': gcloudInstructions!,
  };
}

/// Remediation instructions to resolve violation via cloud console
typedef GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole =
    $Console;

/// Remediation instructions to resolve violation via gcloud cli
typedef GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud =
    $Gcloud;

/// A Workload object for managing highly regulated workloads of cloud
/// customers.
class GoogleCloudAssuredworkloadsV1beta1Workload {
  /// The number of updates available for the workload.
  ///
  /// Output only.
  core.int? availableUpdates;

  /// The billing account used for the resources which are direct children of
  /// workload.
  ///
  /// This billing account is initially associated with the resources created as
  /// part of Workload creation. After the initial creation of these resources,
  /// the customer can change the assigned billing account. The resource name
  /// has the form `billingAccounts/{billing_account_id}`. For example,
  /// `billingAccounts/012345-567890-ABCDEF`.
  ///
  /// Optional.
  core.String? billingAccount;

  /// Input only.
  ///
  /// Immutable. Settings specific to resources needed for CJIS.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings? cjisSettings;

  /// Compliance Regime associated with this workload.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "COMPLIANCE_REGIME_UNSPECIFIED" : Unknown compliance regime.
  /// - "IL4" : Information protection as per DoD IL4 requirements.
  /// - "CJIS" : Criminal Justice Information Services (CJIS) Security policies.
  /// - "FEDRAMP_HIGH" : FedRAMP High data protection controls
  /// - "FEDRAMP_MODERATE" : FedRAMP Moderate data protection controls
  /// - "US_REGIONAL_ACCESS" : Assured Workloads For US Regions data protection
  /// controls
  /// - "HIPAA" : \[DEPRECATED\] Health Insurance Portability and Accountability
  /// Act controls
  /// - "HITRUST" : \[DEPRECATED\] Health Information Trust Alliance controls
  /// - "EU_REGIONS_AND_SUPPORT" : Assured Workloads For EU Regions and Support
  /// controls
  /// - "CA_REGIONS_AND_SUPPORT" : Assured Workloads For Canada Regions and
  /// Support controls
  /// - "ITAR" : International Traffic in Arms Regulations
  /// - "AU_REGIONS_AND_US_SUPPORT" : Assured Workloads for Australia Regions
  /// and Support controls
  /// - "ASSURED_WORKLOADS_FOR_PARTNERS" : Assured Workloads for Partners;
  /// - "ISR_REGIONS" : Assured Workloads for Israel Regions
  /// - "ISR_REGIONS_AND_SUPPORT" : Assured Workloads for Israel Regions
  /// - "CA_PROTECTED_B" : Assured Workloads for Canada Protected B regime
  /// - "IL5" : Information protection as per DoD IL5 requirements.
  /// - "IL2" : Information protection as per DoD IL2 requirements.
  /// - "JP_REGIONS_AND_SUPPORT" : Assured Workloads for Japan Regions
  /// - "KSA_REGIONS_AND_SUPPORT_WITH_SOVEREIGNTY_CONTROLS" : Assured Workloads
  /// Sovereign Controls KSA
  /// - "REGIONAL_CONTROLS" : Assured Workloads for Regional Controls
  /// - "HEALTHCARE_AND_LIFE_SCIENCES_CONTROLS" : Healthcare and Life Science
  /// Controls
  /// - "HEALTHCARE_AND_LIFE_SCIENCES_CONTROLS_US_SUPPORT" : Healthcare and Life
  /// Science Controls with US Support
  /// - "IRS_1075" : Internal Revenue Service 1075 controls
  /// - "CANADA_CONTROLLED_GOODS" : Canada Controlled Goods
  /// - "AUSTRALIA_DATA_BOUNDARY_AND_SUPPORT" : Australia Data Boundary and
  /// Support
  /// - "CANADA_DATA_BOUNDARY_AND_SUPPORT" : Canada Data Boundary and Support
  /// - "DATA_BOUNDARY_FOR_CANADA_CONTROLLED_GOODS" : Data Boundary for Canada
  /// Controlled Goods
  /// - "DATA_BOUNDARY_FOR_CANADA_PROTECTED_B" : Data Boundary for Canada
  /// Protected B
  /// - "DATA_BOUNDARY_FOR_CJIS" : Data Boundary for CJIS
  /// - "DATA_BOUNDARY_FOR_FEDRAMP_HIGH" : Data Boundary for FedRAMP High
  /// - "DATA_BOUNDARY_FOR_FEDRAMP_MODERATE" : Data Boundary for FedRAMP
  /// Moderate
  /// - "DATA_BOUNDARY_FOR_IL2" : Data Boundary for IL2
  /// - "DATA_BOUNDARY_FOR_IL4" : Data Boundary for IL4
  /// - "DATA_BOUNDARY_FOR_IL5" : Data Boundary for IL5
  /// - "DATA_BOUNDARY_FOR_IRS_PUBLICATION_1075" : Data Boundary for IRS
  /// Publication 1075
  /// - "DATA_BOUNDARY_FOR_ITAR" : Data Boundary for ITAR
  /// - "EU_DATA_BOUNDARY_AND_SUPPORT" : Data Boundary for EU Regions and
  /// Support
  /// - "ISRAEL_DATA_BOUNDARY_AND_SUPPORT" : Data Boundary for Israel Regions
  /// - "US_DATA_BOUNDARY_AND_SUPPORT" : Data Boundary for US Regions and
  /// Support
  /// - "US_DATA_BOUNDARY_FOR_HEALTHCARE_AND_LIFE_SCIENCES" : Data Boundary for
  /// US Healthcare and Life Sciences
  /// - "US_DATA_BOUNDARY_FOR_HEALTHCARE_AND_LIFE_SCIENCES_WITH_SUPPORT" : Data
  /// Boundary for US Healthcare and Life Sciences with Support
  /// - "KSA_DATA_BOUNDARY_WITH_ACCESS_JUSTIFICATIONS" : KSA Data Boundary with
  /// Access Justifications
  /// - "REGIONAL_DATA_BOUNDARY" : Regional Data Boundary
  /// - "JAPAN_DATA_BOUNDARY" : JAPAN Data Boundary
  core.String? complianceRegime;

  /// Count of active Violations in the Workload.
  ///
  /// Output only.
  GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus? complianceStatus;

  /// Indicates whether the compliance updates feature is enabled for a
  /// workload.
  ///
  /// The compliance updates feature can be enabled via the
  /// EnableComplianceUpdates endpoint.
  ///
  /// Output only.
  core.bool? complianceUpdatesEnabled;

  /// Urls for services which are compliant for this Assured Workload, but which
  /// are currently disallowed by the ResourceUsageRestriction org policy.
  ///
  /// Invoke RestrictAllowedResources endpoint to allow your project developers
  /// to use these services in their environment.
  ///
  /// Output only.
  core.List<core.String>? compliantButDisallowedServices;

  /// The Workload creation timestamp.
  ///
  /// Output only. Immutable.
  core.String? createTime;

  /// The user-assigned display name of the Workload.
  ///
  /// When present it must be between 4 to 30 characters. Allowed characters
  /// are: lowercase and uppercase letters, numbers, hyphen, and spaces.
  /// Example: My Workload
  ///
  /// Required.
  core.String? displayName;

  /// Represents the Ekm Provisioning State of the given workload.
  ///
  /// Output only.
  GoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse?
  ekmProvisioningResponse;

  /// Indicates the sovereignty status of the given workload.
  ///
  /// Currently meant to be used by Europe/Canada customers.
  ///
  /// Optional.
  core.bool? enableSovereignControls;

  /// ETag of the workload, it is calculated on the basis of the Workload
  /// contents.
  ///
  /// It will be used in Update & Delete operations.
  ///
  /// Optional.
  core.String? etag;

  /// Input only.
  ///
  /// Immutable. Settings specific to resources needed for FedRAMP High.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings?
  fedrampHighSettings;

  /// Input only.
  ///
  /// Immutable. Settings specific to resources needed for FedRAMP Moderate.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings?
  fedrampModerateSettings;

  /// Input only.
  ///
  /// Immutable. Settings specific to resources needed for IL4.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings? il4Settings;

  /// Represents the KAJ enrollment state of the given workload.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "KAJ_ENROLLMENT_STATE_UNSPECIFIED" : Default State for KAJ Enrollment.
  /// - "KAJ_ENROLLMENT_STATE_PENDING" : Pending State for KAJ Enrollment.
  /// - "KAJ_ENROLLMENT_STATE_COMPLETE" : Complete State for KAJ Enrollment.
  core.String? kajEnrollmentState;

  /// Input only.
  ///
  /// Settings used to create a CMEK crypto key. When set, a project with a KMS
  /// CMEK key is provisioned. This field is deprecated as of Feb 28, 2022. In
  /// order to create a Keyring, callers should specify, ENCRYPTION_KEYS_PROJECT
  /// or KEYRING in ResourceSettings.resource_type field.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings? kmsSettings;

  /// Labels applied to the workload.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The resource name of the workload.
  ///
  /// Format:
  /// organizations/{organization}/locations/{location}/workloads/{workload}
  /// Read-only.
  ///
  /// Optional.
  core.String? name;

  /// Partner regime associated with this workload.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PARTNER_UNSPECIFIED"
  /// - "LOCAL_CONTROLS_BY_S3NS" : Enum representing S3NS (Thales) partner.
  /// - "SOVEREIGN_CONTROLS_BY_T_SYSTEMS" : Enum representing T_SYSTEM (TSI)
  /// partner.
  /// - "SOVEREIGN_CONTROLS_BY_SIA_MINSAIT" : Enum representing SIA_MINSAIT
  /// (Indra) partner.
  /// - "SOVEREIGN_CONTROLS_BY_PSN" : Enum representing PSN (TIM) partner.
  /// - "SOVEREIGN_CONTROLS_BY_CNTXT" : Enum representing CNTXT (Kingdom of
  /// Saudi Arabia) partner.
  /// - "SOVEREIGN_CONTROLS_BY_CNTXT_NO_EKM" : Enum representing CNTXT (Kingdom
  /// of Saudi Arabia) partner offering without EKM.
  core.String? partner;

  /// Permissions granted to the AW Partner SA account for the customer workload
  ///
  /// Optional.
  GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions?
  partnerPermissions;

  /// Billing account necessary for purchasing services from Sovereign Partners.
  ///
  /// This field is required for creating SIA/PSN/CNTXT partner workloads. The
  /// caller should have 'billing.resourceAssociations.create' IAM permission on
  /// this billing-account. The format of this string is
  /// billingAccounts/AAAAAA-BBBBBB-CCCCCC
  ///
  /// Optional.
  core.String? partnerServicesBillingAccount;

  /// Input only.
  ///
  /// The parent resource for the resources managed by this Assured Workload.
  /// May be either empty or a folder resource which is a child of the Workload
  /// parent. If not specified all resources are created under the parent
  /// organization. Format: folders/{folder_id}
  core.String? provisionedResourcesParent;

  /// Indicates whether resource monitoring is enabled for workload or not.
  ///
  /// It is true when Resource feed is subscribed to AWM topic and AWM Service
  /// Agent Role is binded to AW Service Account for resource Assured workload.
  ///
  /// Output only.
  core.bool? resourceMonitoringEnabled;

  /// Input only.
  ///
  /// Resource properties that are used to customize workload resources. These
  /// properties (such as custom project id) will be used to create workload
  /// resources if possible. This field is optional.
  core.List<GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings>?
  resourceSettings;

  /// The resources associated with this workload.
  ///
  /// These resources will be created when creating the workload. If any of the
  /// projects already exist, the workload creation will fail. Always read only.
  ///
  /// Output only.
  core.List<GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo>? resources;

  /// Represents the SAA enrollment response of the given workload.
  ///
  /// SAA enrollment response is queried during GetWorkload call. In failure
  /// cases, user friendly error message is shown in SAA details page.
  ///
  /// Output only.
  GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse?
  saaEnrollmentResponse;

  /// Indicates whether the e-mail notification for a violation is enabled for a
  /// workload.
  ///
  /// This value will be by default True, and if not present will be considered
  /// as true. This should only be updated via updateWorkload call. Any Changes
  /// to this field during the createWorkload call will not be honored. This
  /// will always be true while creating the workload.
  ///
  /// Optional.
  core.bool? violationNotificationsEnabled;

  /// Options to be set for the given created workload.
  ///
  /// Optional.
  GoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions? workloadOptions;

  GoogleCloudAssuredworkloadsV1beta1Workload({
    this.availableUpdates,
    this.billingAccount,
    this.cjisSettings,
    this.complianceRegime,
    this.complianceStatus,
    this.complianceUpdatesEnabled,
    this.compliantButDisallowedServices,
    this.createTime,
    this.displayName,
    this.ekmProvisioningResponse,
    this.enableSovereignControls,
    this.etag,
    this.fedrampHighSettings,
    this.fedrampModerateSettings,
    this.il4Settings,
    this.kajEnrollmentState,
    this.kmsSettings,
    this.labels,
    this.name,
    this.partner,
    this.partnerPermissions,
    this.partnerServicesBillingAccount,
    this.provisionedResourcesParent,
    this.resourceMonitoringEnabled,
    this.resourceSettings,
    this.resources,
    this.saaEnrollmentResponse,
    this.violationNotificationsEnabled,
    this.workloadOptions,
  });

  GoogleCloudAssuredworkloadsV1beta1Workload.fromJson(core.Map json_)
    : this(
        availableUpdates: json_['availableUpdates'] as core.int?,
        billingAccount: json_['billingAccount'] as core.String?,
        cjisSettings:
            json_.containsKey('cjisSettings')
                ? GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings.fromJson(
                  json_['cjisSettings'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        complianceRegime: json_['complianceRegime'] as core.String?,
        complianceStatus:
            json_.containsKey('complianceStatus')
                ? GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus.fromJson(
                  json_['complianceStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        complianceUpdatesEnabled:
            json_['complianceUpdatesEnabled'] as core.bool?,
        compliantButDisallowedServices:
            (json_['compliantButDisallowedServices'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        ekmProvisioningResponse:
            json_.containsKey('ekmProvisioningResponse')
                ? GoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse.fromJson(
                  json_['ekmProvisioningResponse']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        enableSovereignControls: json_['enableSovereignControls'] as core.bool?,
        etag: json_['etag'] as core.String?,
        fedrampHighSettings:
            json_.containsKey('fedrampHighSettings')
                ? GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings.fromJson(
                  json_['fedrampHighSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        fedrampModerateSettings:
            json_.containsKey('fedrampModerateSettings')
                ? GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings.fromJson(
                  json_['fedrampModerateSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        il4Settings:
            json_.containsKey('il4Settings')
                ? GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings.fromJson(
                  json_['il4Settings'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        kajEnrollmentState: json_['kajEnrollmentState'] as core.String?,
        kmsSettings:
            json_.containsKey('kmsSettings')
                ? GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings.fromJson(
                  json_['kmsSettings'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        partner: json_['partner'] as core.String?,
        partnerPermissions:
            json_.containsKey('partnerPermissions')
                ? GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions.fromJson(
                  json_['partnerPermissions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        partnerServicesBillingAccount:
            json_['partnerServicesBillingAccount'] as core.String?,
        provisionedResourcesParent:
            json_['provisionedResourcesParent'] as core.String?,
        resourceMonitoringEnabled:
            json_['resourceMonitoringEnabled'] as core.bool?,
        resourceSettings:
            (json_['resourceSettings'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        resources:
            (json_['resources'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        saaEnrollmentResponse:
            json_.containsKey('saaEnrollmentResponse')
                ? GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse.fromJson(
                  json_['saaEnrollmentResponse']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        violationNotificationsEnabled:
            json_['violationNotificationsEnabled'] as core.bool?,
        workloadOptions:
            json_.containsKey('workloadOptions')
                ? GoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions.fromJson(
                  json_['workloadOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (availableUpdates != null) 'availableUpdates': availableUpdates!,
    if (billingAccount != null) 'billingAccount': billingAccount!,
    if (cjisSettings != null) 'cjisSettings': cjisSettings!,
    if (complianceRegime != null) 'complianceRegime': complianceRegime!,
    if (complianceStatus != null) 'complianceStatus': complianceStatus!,
    if (complianceUpdatesEnabled != null)
      'complianceUpdatesEnabled': complianceUpdatesEnabled!,
    if (compliantButDisallowedServices != null)
      'compliantButDisallowedServices': compliantButDisallowedServices!,
    if (createTime != null) 'createTime': createTime!,
    if (displayName != null) 'displayName': displayName!,
    if (ekmProvisioningResponse != null)
      'ekmProvisioningResponse': ekmProvisioningResponse!,
    if (enableSovereignControls != null)
      'enableSovereignControls': enableSovereignControls!,
    if (etag != null) 'etag': etag!,
    if (fedrampHighSettings != null)
      'fedrampHighSettings': fedrampHighSettings!,
    if (fedrampModerateSettings != null)
      'fedrampModerateSettings': fedrampModerateSettings!,
    if (il4Settings != null) 'il4Settings': il4Settings!,
    if (kajEnrollmentState != null) 'kajEnrollmentState': kajEnrollmentState!,
    if (kmsSettings != null) 'kmsSettings': kmsSettings!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (partner != null) 'partner': partner!,
    if (partnerPermissions != null) 'partnerPermissions': partnerPermissions!,
    if (partnerServicesBillingAccount != null)
      'partnerServicesBillingAccount': partnerServicesBillingAccount!,
    if (provisionedResourcesParent != null)
      'provisionedResourcesParent': provisionedResourcesParent!,
    if (resourceMonitoringEnabled != null)
      'resourceMonitoringEnabled': resourceMonitoringEnabled!,
    if (resourceSettings != null) 'resourceSettings': resourceSettings!,
    if (resources != null) 'resources': resources!,
    if (saaEnrollmentResponse != null)
      'saaEnrollmentResponse': saaEnrollmentResponse!,
    if (violationNotificationsEnabled != null)
      'violationNotificationsEnabled': violationNotificationsEnabled!,
    if (workloadOptions != null) 'workloadOptions': workloadOptions!,
  };
}

/// Settings specific to resources needed for CJIS.
class GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings {
  /// Input only.
  ///
  /// Immutable. Settings used to create a CMEK crypto key.
  GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings? kmsSettings;

  GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings({this.kmsSettings});

  GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings.fromJson(
    core.Map json_,
  ) : this(
        kmsSettings:
            json_.containsKey('kmsSettings')
                ? GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings.fromJson(
                  json_['kmsSettings'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (kmsSettings != null) 'kmsSettings': kmsSettings!,
  };
}

/// Represents the Compliance Status of this workload
typedef GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus =
    $WorkloadComplianceStatus;

/// External key management systems(EKM) Provisioning response
typedef GoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse =
    $WorkloadEkmProvisioningResponse;

/// Settings specific to resources needed for FedRAMP High.
class GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings {
  /// Input only.
  ///
  /// Immutable. Settings used to create a CMEK crypto key.
  GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings? kmsSettings;

  GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings({
    this.kmsSettings,
  });

  GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings.fromJson(
    core.Map json_,
  ) : this(
        kmsSettings:
            json_.containsKey('kmsSettings')
                ? GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings.fromJson(
                  json_['kmsSettings'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (kmsSettings != null) 'kmsSettings': kmsSettings!,
  };
}

/// Settings specific to resources needed for FedRAMP Moderate.
class GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings {
  /// Input only.
  ///
  /// Immutable. Settings used to create a CMEK crypto key.
  GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings? kmsSettings;

  GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings({
    this.kmsSettings,
  });

  GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings.fromJson(
    core.Map json_,
  ) : this(
        kmsSettings:
            json_.containsKey('kmsSettings')
                ? GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings.fromJson(
                  json_['kmsSettings'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (kmsSettings != null) 'kmsSettings': kmsSettings!,
  };
}

/// Settings specific to resources needed for IL4.
class GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings {
  /// Input only.
  ///
  /// Immutable. Settings used to create a CMEK crypto key.
  GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings? kmsSettings;

  GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings({this.kmsSettings});

  GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings.fromJson(core.Map json_)
    : this(
        kmsSettings:
            json_.containsKey('kmsSettings')
                ? GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings.fromJson(
                  json_['kmsSettings'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (kmsSettings != null) 'kmsSettings': kmsSettings!,
  };
}

/// Settings specific to the Key Management Service.
typedef GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings =
    $WorkloadKMSSettings;

/// Permissions granted to the AW Partner SA account for the customer workload
typedef GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions =
    $WorkloadPartnerPermissions;

/// Represent the resources that are children of this Workload.
typedef GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo =
    $WorkloadResourceInfo;

/// Represent the custom settings for the resources to be created.
typedef GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings =
    $WorkloadResourceSettings;

/// Signed Access Approvals (SAA) enrollment response.
typedef GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse =
    $WorkloadSaaEnrollmentResponse;

/// A workload update is a change to the workload's compliance configuration.
class GoogleCloudAssuredworkloadsV1beta1WorkloadUpdate {
  /// The time the update was created.
  core.String? createTime;

  /// The details of the update.
  GoogleCloudAssuredworkloadsV1beta1UpdateDetails? details;

  /// Identifier.
  ///
  /// Resource name of the WorkloadUpdate. Format:
  /// organizations/{organization}/locations/{location}/workloads/{workload}/updates/{update}
  ///
  /// Output only. Immutable.
  core.String? name;

  /// The state of the update.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified.
  /// - "AVAILABLE" : The update is available to be applied.
  /// - "APPLIED" : The update has been applied.
  /// - "WITHDRAWN" : The update has been withdrawn by the service.
  core.String? state;

  /// The time the update was last updated.
  core.String? updateTime;

  GoogleCloudAssuredworkloadsV1beta1WorkloadUpdate({
    this.createTime,
    this.details,
    this.name,
    this.state,
    this.updateTime,
  });

  GoogleCloudAssuredworkloadsV1beta1WorkloadUpdate.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        details:
            json_.containsKey('details')
                ? GoogleCloudAssuredworkloadsV1beta1UpdateDetails.fromJson(
                  json_['details'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (details != null) 'details': details!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Options to be set for the given created workload.
typedef GoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions =
    $WorkloadWorkloadOptions;

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
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) => GoogleLongrunningOperation.fromJson(
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

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
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

  GoogleLongrunningOperation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  GoogleLongrunningOperation.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        error:
            json_.containsKey('error')
                ? GoogleRpcStatus.fromJson(
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

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status00;
