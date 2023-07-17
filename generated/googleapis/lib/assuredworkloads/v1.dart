// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_library_directive
// ignore_for_file: unnecessary_string_interpolations

/// Assured Workloads API - v1
///
/// For more information, see <https://cloud.google.com/learnmoreurl>
///
/// Create an instance of [AssuredworkloadsApi] to access these resources:
///
/// - [OrganizationsResource]
///   - [OrganizationsLocationsResource]
///     - [OrganizationsLocationsOperationsResource]
///     - [OrganizationsLocationsWorkloadsResource]
///       - [OrganizationsLocationsWorkloadsViolationsResource]
library assuredworkloads_v1;

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

  AssuredworkloadsApi(http.Client client,
      {core.String rootUrl = 'https://assuredworkloads.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
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

class OrganizationsLocationsWorkloadsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsWorkloadsViolationsResource get violations =>
      OrganizationsLocationsWorkloadsViolationsResource(_requester);

  OrganizationsLocationsWorkloadsResource(commons.ApiRequester client)
      : _requester = client;

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
    GoogleCloudAssuredworkloadsV1Workload request,
    core.String parent, {
    core.String? externalId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (externalId != null) 'externalId': [externalId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/workloads';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleCloudAssuredworkloadsV1Workload].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAssuredworkloadsV1Workload> get(
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
    return GoogleCloudAssuredworkloadsV1Workload.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleCloudAssuredworkloadsV1ListWorkloadsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAssuredworkloadsV1ListWorkloadsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/workloads';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudAssuredworkloadsV1ListWorkloadsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update the permissions settings for an existing partner workload.
  ///
  /// For force updates don't set etag field in the Workload. Only one update
  /// operation per workload can be in progress.
  ///
  /// [request] - The metadata request object.
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
  /// Completes with a [GoogleCloudAssuredworkloadsV1Workload].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAssuredworkloadsV1Workload> mutatePartnerPermissions(
    GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':mutatePartnerPermissions';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudAssuredworkloadsV1Workload.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleCloudAssuredworkloadsV1Workload].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAssuredworkloadsV1Workload> patch(
    GoogleCloudAssuredworkloadsV1Workload request,
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
    return GoogleCloudAssuredworkloadsV1Workload.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse>
      restrictAllowedResources(
    GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':restrictAllowedResources';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse>
      acknowledge(
    GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':acknowledge';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleCloudAssuredworkloadsV1Violation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAssuredworkloadsV1Violation> get(
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
    return GoogleCloudAssuredworkloadsV1Violation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleCloudAssuredworkloadsV1ListViolationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAssuredworkloadsV1ListViolationsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/violations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudAssuredworkloadsV1ListViolationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Request for acknowledging the violation Next Id: 5
class GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest {
  /// Business justification explaining the need for violation acknowledgement
  ///
  /// Required.
  core.String? comment;

  /// This field is deprecated and will be removed in future version of the API.
  ///
  /// Name of the OrgPolicy which was modified with non-compliant change and
  /// resulted in this violation. Format:
  /// projects/{project_number}/policies/{constraint_name}
  /// folders/{folder_id}/policies/{constraint_name}
  /// organizations/{organization_id}/policies/{constraint_name}
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? nonCompliantOrgPolicy;

  GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest({
    this.comment,
    this.nonCompliantOrgPolicy,
  });

  GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest.fromJson(
      core.Map json_)
      : this(
          comment: json_.containsKey('comment')
              ? json_['comment'] as core.String
              : null,
          nonCompliantOrgPolicy: json_.containsKey('nonCompliantOrgPolicy')
              ? json_['nonCompliantOrgPolicy'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (comment != null) 'comment': comment!,
        if (nonCompliantOrgPolicy != null)
          'nonCompliantOrgPolicy': nonCompliantOrgPolicy!,
      };
}

/// Response for violation acknowledgement
typedef GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse = $Empty;

/// Response of ListViolations endpoint.
class GoogleCloudAssuredworkloadsV1ListViolationsResponse {
  /// The next page token.
  ///
  /// Returns empty if reached the last page.
  core.String? nextPageToken;

  /// List of Violations under a Workload.
  core.List<GoogleCloudAssuredworkloadsV1Violation>? violations;

  GoogleCloudAssuredworkloadsV1ListViolationsResponse({
    this.nextPageToken,
    this.violations,
  });

  GoogleCloudAssuredworkloadsV1ListViolationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          violations: json_.containsKey('violations')
              ? (json_['violations'] as core.List)
                  .map((value) =>
                      GoogleCloudAssuredworkloadsV1Violation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (violations != null) 'violations': violations!,
      };
}

/// Response of ListWorkloads endpoint.
class GoogleCloudAssuredworkloadsV1ListWorkloadsResponse {
  /// The next page token.
  ///
  /// Return empty if reached the last page.
  core.String? nextPageToken;

  /// List of Workloads under a given parent.
  core.List<GoogleCloudAssuredworkloadsV1Workload>? workloads;

  GoogleCloudAssuredworkloadsV1ListWorkloadsResponse({
    this.nextPageToken,
    this.workloads,
  });

  GoogleCloudAssuredworkloadsV1ListWorkloadsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          workloads: json_.containsKey('workloads')
              ? (json_['workloads'] as core.List)
                  .map((value) =>
                      GoogleCloudAssuredworkloadsV1Workload.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (workloads != null) 'workloads': workloads!,
      };
}

/// Request for updating permission settings for a partner workload.
class GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest {
  /// The etag of the workload.
  ///
  /// If this is provided, it must match the server's etag.
  ///
  /// Optional.
  core.String? etag;

  /// The partner permissions to be updated.
  ///
  /// Required.
  GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions? partnerPermissions;

  /// The list of fields to be updated.
  ///
  /// E.g. update_mask { paths: "partner_permissions.data_logs_viewer"}
  ///
  /// Required.
  core.String? updateMask;

  GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest({
    this.etag,
    this.partnerPermissions,
    this.updateMask,
  });

  GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest.fromJson(
      core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          partnerPermissions: json_.containsKey('partnerPermissions')
              ? GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions
                  .fromJson(json_['partnerPermissions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (partnerPermissions != null)
          'partnerPermissions': partnerPermissions!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request for restricting list of available resources in Workload environment.
class GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest {
  /// The type of restriction for using gcp products in the Workload
  /// environment.
  ///
  /// Required.
  /// Possible string values are:
  /// - "RESTRICTION_TYPE_UNSPECIFIED" : Unknown restriction type.
  /// - "ALLOW_ALL_GCP_RESOURCES" : Allow the use all of all gcp products,
  /// irrespective of the compliance posture. This effectively removes
  /// gcp.restrictServiceUsage OrgPolicy on the AssuredWorkloads Folder.
  /// - "ALLOW_COMPLIANT_RESOURCES" : Based on Workload's compliance regime,
  /// allowed list changes. See -
  /// https://cloud.google.com/assured-workloads/docs/supported-products for the
  /// list of supported resources.
  /// - "APPEND_COMPLIANT_RESOURCES" : Similar to ALLOW_COMPLIANT_RESOURCES but
  /// adds the list of compliant resources to the existing list of compliant
  /// resources. Effective org-policy of the Folder is considered to ensure
  /// there is no disruption to the existing customer workflows.
  core.String? restrictionType;

  GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest({
    this.restrictionType,
  });

  GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest.fromJson(
      core.Map json_)
      : this(
          restrictionType: json_.containsKey('restrictionType')
              ? json_['restrictionType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (restrictionType != null) 'restrictionType': restrictionType!,
      };
}

/// Response for restricting the list of allowed resources.
typedef GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse = $Empty;

/// Workload monitoring Violation.
///
/// Next Id: 27
class GoogleCloudAssuredworkloadsV1Violation {
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
  core.List<GoogleCloudAssuredworkloadsV1ViolationExceptionContext>?
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

  /// Compliance violation remediation
  ///
  /// Output only.
  GoogleCloudAssuredworkloadsV1ViolationRemediation? remediation;

  /// Time of the event which fixed the Violation.
  ///
  /// If the violation is ACTIVE this will be empty.
  ///
  /// Output only.
  core.String? resolveTime;

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

  GoogleCloudAssuredworkloadsV1Violation({
    this.acknowledged,
    this.acknowledgementTime,
    this.auditLogLink,
    this.beginTime,
    this.category,
    this.description,
    this.exceptionAuditLogLink,
    this.exceptionContexts,
    this.name,
    this.nonCompliantOrgPolicy,
    this.remediation,
    this.resolveTime,
    this.state,
    this.updateTime,
  });

  GoogleCloudAssuredworkloadsV1Violation.fromJson(core.Map json_)
      : this(
          acknowledged: json_.containsKey('acknowledged')
              ? json_['acknowledged'] as core.bool
              : null,
          acknowledgementTime: json_.containsKey('acknowledgementTime')
              ? json_['acknowledgementTime'] as core.String
              : null,
          auditLogLink: json_.containsKey('auditLogLink')
              ? json_['auditLogLink'] as core.String
              : null,
          beginTime: json_.containsKey('beginTime')
              ? json_['beginTime'] as core.String
              : null,
          category: json_.containsKey('category')
              ? json_['category'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          exceptionAuditLogLink: json_.containsKey('exceptionAuditLogLink')
              ? json_['exceptionAuditLogLink'] as core.String
              : null,
          exceptionContexts: json_.containsKey('exceptionContexts')
              ? (json_['exceptionContexts'] as core.List)
                  .map((value) =>
                      GoogleCloudAssuredworkloadsV1ViolationExceptionContext
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nonCompliantOrgPolicy: json_.containsKey('nonCompliantOrgPolicy')
              ? json_['nonCompliantOrgPolicy'] as core.String
              : null,
          remediation: json_.containsKey('remediation')
              ? GoogleCloudAssuredworkloadsV1ViolationRemediation.fromJson(
                  json_['remediation'] as core.Map<core.String, core.dynamic>)
              : null,
          resolveTime: json_.containsKey('resolveTime')
              ? json_['resolveTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acknowledged != null) 'acknowledged': acknowledged!,
        if (acknowledgementTime != null)
          'acknowledgementTime': acknowledgementTime!,
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
        if (remediation != null) 'remediation': remediation!,
        if (resolveTime != null) 'resolveTime': resolveTime!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Violation exception detail.
///
/// Next Id: 6
class GoogleCloudAssuredworkloadsV1ViolationExceptionContext {
  /// Timestamp when the violation was acknowledged.
  core.String? acknowledgementTime;

  /// Business justification provided towards the acknowledgement of the
  /// violation.
  core.String? comment;

  /// Name of the user (or service account) who acknowledged the violation.
  core.String? userName;

  GoogleCloudAssuredworkloadsV1ViolationExceptionContext({
    this.acknowledgementTime,
    this.comment,
    this.userName,
  });

  GoogleCloudAssuredworkloadsV1ViolationExceptionContext.fromJson(
      core.Map json_)
      : this(
          acknowledgementTime: json_.containsKey('acknowledgementTime')
              ? json_['acknowledgementTime'] as core.String
              : null,
          comment: json_.containsKey('comment')
              ? json_['comment'] as core.String
              : null,
          userName: json_.containsKey('userName')
              ? json_['userName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acknowledgementTime != null)
          'acknowledgementTime': acknowledgementTime!,
        if (comment != null) 'comment': comment!,
        if (userName != null) 'userName': userName!,
      };
}

/// Represents remediation guidance to resolve compliance violation for
/// AssuredWorkload
class GoogleCloudAssuredworkloadsV1ViolationRemediation {
  /// Values that can resolve the violation For example: for list org policy
  /// violations, this will either be the list of allowed or denied values
  core.List<core.String>? compliantValues;

  /// Remediation instructions to resolve violations
  ///
  /// Required.
  GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions? instructions;

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
  core.String? remediationType;

  GoogleCloudAssuredworkloadsV1ViolationRemediation({
    this.compliantValues,
    this.instructions,
    this.remediationType,
  });

  GoogleCloudAssuredworkloadsV1ViolationRemediation.fromJson(core.Map json_)
      : this(
          compliantValues: json_.containsKey('compliantValues')
              ? (json_['compliantValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          instructions: json_.containsKey('instructions')
              ? GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions
                  .fromJson(json_['instructions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          remediationType: json_.containsKey('remediationType')
              ? json_['remediationType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compliantValues != null) 'compliantValues': compliantValues!,
        if (instructions != null) 'instructions': instructions!,
        if (remediationType != null) 'remediationType': remediationType!,
      };
}

/// Instructions to remediate violation
class GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions {
  /// Remediation instructions to resolve violation via cloud console
  GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole?
      consoleInstructions;

  /// Remediation instructions to resolve violation via gcloud cli
  GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud?
      gcloudInstructions;

  GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions({
    this.consoleInstructions,
    this.gcloudInstructions,
  });

  GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions.fromJson(
      core.Map json_)
      : this(
          consoleInstructions: json_.containsKey('consoleInstructions')
              ? GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole
                  .fromJson(json_['consoleInstructions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          gcloudInstructions: json_.containsKey('gcloudInstructions')
              ? GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud
                  .fromJson(json_['gcloudInstructions']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consoleInstructions != null)
          'consoleInstructions': consoleInstructions!,
        if (gcloudInstructions != null)
          'gcloudInstructions': gcloudInstructions!,
      };
}

/// Remediation instructions to resolve violation via cloud console
class GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole {
  /// Additional urls for more information about steps
  core.List<core.String>? additionalLinks;

  /// Link to console page where violations can be resolved
  core.List<core.String>? consoleUris;

  /// Steps to resolve violation via cloud console
  core.List<core.String>? steps;

  GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole({
    this.additionalLinks,
    this.consoleUris,
    this.steps,
  });

  GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole.fromJson(
      core.Map json_)
      : this(
          additionalLinks: json_.containsKey('additionalLinks')
              ? (json_['additionalLinks'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          consoleUris: json_.containsKey('consoleUris')
              ? (json_['consoleUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          steps: json_.containsKey('steps')
              ? (json_['steps'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalLinks != null) 'additionalLinks': additionalLinks!,
        if (consoleUris != null) 'consoleUris': consoleUris!,
        if (steps != null) 'steps': steps!,
      };
}

/// Remediation instructions to resolve violation via gcloud cli
class GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud {
  /// Additional urls for more information about steps
  core.List<core.String>? additionalLinks;

  /// Gcloud command to resolve violation
  core.List<core.String>? gcloudCommands;

  /// Steps to resolve violation via gcloud cli
  core.List<core.String>? steps;

  GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud({
    this.additionalLinks,
    this.gcloudCommands,
    this.steps,
  });

  GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud.fromJson(
      core.Map json_)
      : this(
          additionalLinks: json_.containsKey('additionalLinks')
              ? (json_['additionalLinks'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          gcloudCommands: json_.containsKey('gcloudCommands')
              ? (json_['gcloudCommands'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          steps: json_.containsKey('steps')
              ? (json_['steps'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalLinks != null) 'additionalLinks': additionalLinks!,
        if (gcloudCommands != null) 'gcloudCommands': gcloudCommands!,
        if (steps != null) 'steps': steps!,
      };
}

/// A Workload object for managing highly regulated workloads of cloud
/// customers.
class GoogleCloudAssuredworkloadsV1Workload {
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
  /// - "HIPAA" : Health Insurance Portability and Accountability Act controls
  /// - "HITRUST" : Health Information Trust Alliance controls
  /// - "EU_REGIONS_AND_SUPPORT" : Assured Workloads For EU Regions and Support
  /// controls
  /// - "CA_REGIONS_AND_SUPPORT" : Assured Workloads For Canada Regions and
  /// Support controls
  /// - "ITAR" : International Traffic in Arms Regulations
  /// - "AU_REGIONS_AND_US_SUPPORT" : Assured Workloads for Australia Regions
  /// and Support controls Available for public preview consumption. Don't
  /// create production workloads.
  /// - "ASSURED_WORKLOADS_FOR_PARTNERS" : Assured Workloads for Partners;
  /// - "ISR_REGIONS" : Assured Workloads for Israel
  /// - "ISR_REGIONS_AND_SUPPORT" : Assured Workloads for Israel Regions
  /// - "CA_PROTECTED_B" : Assured Workloads for Canada Protected B regime
  /// - "IL5" : Information protection as per DoD IL5 requirements.
  core.String? complianceRegime;

  /// Count of active Violations in the Workload.
  ///
  /// Output only.
  GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus? complianceStatus;

  /// Urls for services which are compliant for this Assured Workload, but which
  /// are currently disallowed by the ResourceUsageRestriction org policy.
  ///
  /// Invoke RestrictAllowedResources endpoint to allow your project developers
  /// to use these services in their environment."
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
  /// Optional.
  GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse?
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
  GoogleCloudAssuredworkloadsV1WorkloadKMSSettings? kmsSettings;

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
  core.String? partner;

  /// Permissions granted to the AW Partner SA account for the customer workload
  ///
  /// Optional.
  GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions? partnerPermissions;

  /// Input only.
  ///
  /// The parent resource for the resources managed by this Assured Workload.
  /// May be either empty or a folder resource which is a child of the Workload
  /// parent. If not specified all resources are created under the parent
  /// organization. Format: folders/{folder_id}
  core.String? provisionedResourcesParent;

  /// Input only.
  ///
  /// Resource properties that are used to customize workload resources. These
  /// properties (such as custom project id) will be used to create workload
  /// resources if possible. This field is optional.
  core.List<GoogleCloudAssuredworkloadsV1WorkloadResourceSettings>?
      resourceSettings;

  /// The resources associated with this workload.
  ///
  /// These resources will be created when creating the workload. If any of the
  /// projects already exist, the workload creation will fail. Always read only.
  ///
  /// Output only.
  core.List<GoogleCloudAssuredworkloadsV1WorkloadResourceInfo>? resources;

  /// Represents the SAA enrollment response of the given workload.
  ///
  /// SAA enrollment response is queried during GetWorkload call. In failure
  /// cases, user friendly error message is shown in SAA details page.
  ///
  /// Output only.
  GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse?
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

  GoogleCloudAssuredworkloadsV1Workload({
    this.billingAccount,
    this.complianceRegime,
    this.complianceStatus,
    this.compliantButDisallowedServices,
    this.createTime,
    this.displayName,
    this.ekmProvisioningResponse,
    this.enableSovereignControls,
    this.etag,
    this.kajEnrollmentState,
    this.kmsSettings,
    this.labels,
    this.name,
    this.partner,
    this.partnerPermissions,
    this.provisionedResourcesParent,
    this.resourceSettings,
    this.resources,
    this.saaEnrollmentResponse,
    this.violationNotificationsEnabled,
  });

  GoogleCloudAssuredworkloadsV1Workload.fromJson(core.Map json_)
      : this(
          billingAccount: json_.containsKey('billingAccount')
              ? json_['billingAccount'] as core.String
              : null,
          complianceRegime: json_.containsKey('complianceRegime')
              ? json_['complianceRegime'] as core.String
              : null,
          complianceStatus: json_.containsKey('complianceStatus')
              ? GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus.fromJson(
                  json_['complianceStatus']
                      as core.Map<core.String, core.dynamic>)
              : null,
          compliantButDisallowedServices:
              json_.containsKey('compliantButDisallowedServices')
                  ? (json_['compliantButDisallowedServices'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          ekmProvisioningResponse: json_.containsKey('ekmProvisioningResponse')
              ? GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse
                  .fromJson(json_['ekmProvisioningResponse']
                      as core.Map<core.String, core.dynamic>)
              : null,
          enableSovereignControls: json_.containsKey('enableSovereignControls')
              ? json_['enableSovereignControls'] as core.bool
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          kajEnrollmentState: json_.containsKey('kajEnrollmentState')
              ? json_['kajEnrollmentState'] as core.String
              : null,
          kmsSettings: json_.containsKey('kmsSettings')
              ? GoogleCloudAssuredworkloadsV1WorkloadKMSSettings.fromJson(
                  json_['kmsSettings'] as core.Map<core.String, core.dynamic>)
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
          partner: json_.containsKey('partner')
              ? json_['partner'] as core.String
              : null,
          partnerPermissions: json_.containsKey('partnerPermissions')
              ? GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions
                  .fromJson(json_['partnerPermissions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          provisionedResourcesParent:
              json_.containsKey('provisionedResourcesParent')
                  ? json_['provisionedResourcesParent'] as core.String
                  : null,
          resourceSettings: json_.containsKey('resourceSettings')
              ? (json_['resourceSettings'] as core.List)
                  .map((value) =>
                      GoogleCloudAssuredworkloadsV1WorkloadResourceSettings
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resources: json_.containsKey('resources')
              ? (json_['resources'] as core.List)
                  .map((value) =>
                      GoogleCloudAssuredworkloadsV1WorkloadResourceInfo
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          saaEnrollmentResponse: json_.containsKey('saaEnrollmentResponse')
              ? GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse
                  .fromJson(json_['saaEnrollmentResponse']
                      as core.Map<core.String, core.dynamic>)
              : null,
          violationNotificationsEnabled:
              json_.containsKey('violationNotificationsEnabled')
                  ? json_['violationNotificationsEnabled'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (billingAccount != null) 'billingAccount': billingAccount!,
        if (complianceRegime != null) 'complianceRegime': complianceRegime!,
        if (complianceStatus != null) 'complianceStatus': complianceStatus!,
        if (compliantButDisallowedServices != null)
          'compliantButDisallowedServices': compliantButDisallowedServices!,
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (ekmProvisioningResponse != null)
          'ekmProvisioningResponse': ekmProvisioningResponse!,
        if (enableSovereignControls != null)
          'enableSovereignControls': enableSovereignControls!,
        if (etag != null) 'etag': etag!,
        if (kajEnrollmentState != null)
          'kajEnrollmentState': kajEnrollmentState!,
        if (kmsSettings != null) 'kmsSettings': kmsSettings!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (partner != null) 'partner': partner!,
        if (partnerPermissions != null)
          'partnerPermissions': partnerPermissions!,
        if (provisionedResourcesParent != null)
          'provisionedResourcesParent': provisionedResourcesParent!,
        if (resourceSettings != null) 'resourceSettings': resourceSettings!,
        if (resources != null) 'resources': resources!,
        if (saaEnrollmentResponse != null)
          'saaEnrollmentResponse': saaEnrollmentResponse!,
        if (violationNotificationsEnabled != null)
          'violationNotificationsEnabled': violationNotificationsEnabled!,
      };
}

/// Represents the Compliance Status of this workload
class GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus {
  /// Number of current orgPolicy violations which are acknowledged.
  core.int? acknowledgedViolationCount;

  /// Number of current orgPolicy violations which are not acknowledged.
  core.int? activeViolationCount;

  GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus({
    this.acknowledgedViolationCount,
    this.activeViolationCount,
  });

  GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus.fromJson(core.Map json_)
      : this(
          acknowledgedViolationCount:
              json_.containsKey('acknowledgedViolationCount')
                  ? json_['acknowledgedViolationCount'] as core.int
                  : null,
          activeViolationCount: json_.containsKey('activeViolationCount')
              ? json_['activeViolationCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acknowledgedViolationCount != null)
          'acknowledgedViolationCount': acknowledgedViolationCount!,
        if (activeViolationCount != null)
          'activeViolationCount': activeViolationCount!,
      };
}

/// External key management systems(EKM) Provisioning response
class GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse {
  /// Indicates Ekm provisioning error if any.
  /// Possible string values are:
  /// - "EKM_PROVISIONING_ERROR_DOMAIN_UNSPECIFIED" : No error domain
  /// - "UNSPECIFIED_ERROR" : Error but domain is unspecified.
  /// - "GOOGLE_SERVER_ERROR" : Internal logic breaks within provisioning code.
  /// - "EXTERNAL_USER_ERROR" : Error occurred with the customer not granting
  /// permission/creating resource.
  /// - "EXTERNAL_PARTNER_ERROR" : Error occurred within the partner’s
  /// provisioning cluster.
  /// - "TIMEOUT_ERROR" : Resource wasn't provisioned in the required 7 day time
  /// period
  core.String? ekmProvisioningErrorDomain;

  /// Detailed error message if Ekm provisioning fails
  /// Possible string values are:
  /// - "EKM_PROVISIONING_ERROR_MAPPING_UNSPECIFIED" : Error is unspecified.
  /// - "INVALID_SERVICE_ACCOUNT" : Service account is used is invalid.
  /// - "MISSING_METRICS_SCOPE_ADMIN_PERMISSION" : Iam permission
  /// monitoring.MetricsScopeAdmin wasn't applied.
  /// - "MISSING_EKM_CONNECTION_ADMIN_PERMISSION" : Iam permission
  /// cloudkms.ekmConnectionsAdmin wasn't applied.
  core.String? ekmProvisioningErrorMapping;

  /// Indicates Ekm enrollment Provisioning of a given workload.
  /// Possible string values are:
  /// - "EKM_PROVISIONING_STATE_UNSPECIFIED" : Default State for Ekm
  /// Provisioning
  /// - "EKM_PROVISIONING_STATE_PENDING" : Pending State for Ekm Provisioning
  /// - "EKM_PROVISIONING_STATE_FAILED" : Failed State for Ekm Provisioning
  /// - "EKM_PROVISIONING_STATE_COMPLETED" : Completed State for Ekm
  /// Provisioning
  core.String? ekmProvisioningState;

  GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse({
    this.ekmProvisioningErrorDomain,
    this.ekmProvisioningErrorMapping,
    this.ekmProvisioningState,
  });

  GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse.fromJson(
      core.Map json_)
      : this(
          ekmProvisioningErrorDomain:
              json_.containsKey('ekmProvisioningErrorDomain')
                  ? json_['ekmProvisioningErrorDomain'] as core.String
                  : null,
          ekmProvisioningErrorMapping:
              json_.containsKey('ekmProvisioningErrorMapping')
                  ? json_['ekmProvisioningErrorMapping'] as core.String
                  : null,
          ekmProvisioningState: json_.containsKey('ekmProvisioningState')
              ? json_['ekmProvisioningState'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ekmProvisioningErrorDomain != null)
          'ekmProvisioningErrorDomain': ekmProvisioningErrorDomain!,
        if (ekmProvisioningErrorMapping != null)
          'ekmProvisioningErrorMapping': ekmProvisioningErrorMapping!,
        if (ekmProvisioningState != null)
          'ekmProvisioningState': ekmProvisioningState!,
      };
}

/// Settings specific to the Key Management Service.
class GoogleCloudAssuredworkloadsV1WorkloadKMSSettings {
  /// Input only.
  ///
  /// Immutable. The time at which the Key Management Service will automatically
  /// create a new version of the crypto key and mark it as the primary.
  ///
  /// Required.
  core.String? nextRotationTime;

  /// Input only.
  ///
  /// Immutable. \[next_rotation_time\] will be advanced by this period when the
  /// Key Management Service automatically rotates a key. Must be at least 24
  /// hours and at most 876,000 hours.
  ///
  /// Required.
  core.String? rotationPeriod;

  GoogleCloudAssuredworkloadsV1WorkloadKMSSettings({
    this.nextRotationTime,
    this.rotationPeriod,
  });

  GoogleCloudAssuredworkloadsV1WorkloadKMSSettings.fromJson(core.Map json_)
      : this(
          nextRotationTime: json_.containsKey('nextRotationTime')
              ? json_['nextRotationTime'] as core.String
              : null,
          rotationPeriod: json_.containsKey('rotationPeriod')
              ? json_['rotationPeriod'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextRotationTime != null) 'nextRotationTime': nextRotationTime!,
        if (rotationPeriod != null) 'rotationPeriod': rotationPeriod!,
      };
}

/// Permissions granted to the AW Partner SA account for the customer workload
class GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions {
  /// Allow the partner to view inspectability logs and monitoring violations.
  core.bool? dataLogsViewer;

  /// Allow partner to monitor folder and remediate violations
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? remediateFolderViolations;

  GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions({
    this.dataLogsViewer,
    this.remediateFolderViolations,
  });

  GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions.fromJson(
      core.Map json_)
      : this(
          dataLogsViewer: json_.containsKey('dataLogsViewer')
              ? json_['dataLogsViewer'] as core.bool
              : null,
          remediateFolderViolations:
              json_.containsKey('remediateFolderViolations')
                  ? json_['remediateFolderViolations'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataLogsViewer != null) 'dataLogsViewer': dataLogsViewer!,
        if (remediateFolderViolations != null)
          'remediateFolderViolations': remediateFolderViolations!,
      };
}

/// Represent the resources that are children of this Workload.
class GoogleCloudAssuredworkloadsV1WorkloadResourceInfo {
  /// Resource identifier.
  ///
  /// For a project this represents project_number.
  core.String? resourceId;

  /// Indicates the type of resource.
  /// Possible string values are:
  /// - "RESOURCE_TYPE_UNSPECIFIED" : Unknown resource type.
  /// - "CONSUMER_PROJECT" : Deprecated. Existing workloads will continue to
  /// support this, but new CreateWorkloadRequests should not specify this as an
  /// input value.
  /// - "CONSUMER_FOLDER" : Consumer Folder.
  /// - "ENCRYPTION_KEYS_PROJECT" : Consumer project containing encryption keys.
  /// - "KEYRING" : Keyring resource that hosts encryption keys.
  core.String? resourceType;

  GoogleCloudAssuredworkloadsV1WorkloadResourceInfo({
    this.resourceId,
    this.resourceType,
  });

  GoogleCloudAssuredworkloadsV1WorkloadResourceInfo.fromJson(core.Map json_)
      : this(
          resourceId: json_.containsKey('resourceId')
              ? json_['resourceId'] as core.String
              : null,
          resourceType: json_.containsKey('resourceType')
              ? json_['resourceType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceId != null) 'resourceId': resourceId!,
        if (resourceType != null) 'resourceType': resourceType!,
      };
}

/// Represent the custom settings for the resources to be created.
class GoogleCloudAssuredworkloadsV1WorkloadResourceSettings {
  /// User-assigned resource display name.
  ///
  /// If not empty it will be used to create a resource with the specified name.
  core.String? displayName;

  /// Resource identifier.
  ///
  /// For a project this represents project_id. If the project is already taken,
  /// the workload creation will fail. For KeyRing, this represents the
  /// keyring_id. For a folder, don't set this value as folder_id is assigned by
  /// Google.
  core.String? resourceId;

  /// Indicates the type of resource.
  ///
  /// This field should be specified to correspond the id to the right project
  /// type (CONSUMER_PROJECT or ENCRYPTION_KEYS_PROJECT)
  /// Possible string values are:
  /// - "RESOURCE_TYPE_UNSPECIFIED" : Unknown resource type.
  /// - "CONSUMER_PROJECT" : Deprecated. Existing workloads will continue to
  /// support this, but new CreateWorkloadRequests should not specify this as an
  /// input value.
  /// - "CONSUMER_FOLDER" : Consumer Folder.
  /// - "ENCRYPTION_KEYS_PROJECT" : Consumer project containing encryption keys.
  /// - "KEYRING" : Keyring resource that hosts encryption keys.
  core.String? resourceType;

  GoogleCloudAssuredworkloadsV1WorkloadResourceSettings({
    this.displayName,
    this.resourceId,
    this.resourceType,
  });

  GoogleCloudAssuredworkloadsV1WorkloadResourceSettings.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          resourceId: json_.containsKey('resourceId')
              ? json_['resourceId'] as core.String
              : null,
          resourceType: json_.containsKey('resourceType')
              ? json_['resourceType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (resourceId != null) 'resourceId': resourceId!,
        if (resourceType != null) 'resourceType': resourceType!,
      };
}

/// Signed Access Approvals (SAA) enrollment response.
class GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse {
  /// Indicates SAA enrollment setup error if any.
  core.List<core.String>? setupErrors;

  /// Indicates SAA enrollment status of a given workload.
  /// Possible string values are:
  /// - "SETUP_STATE_UNSPECIFIED" : Unspecified.
  /// - "STATUS_PENDING" : SAA enrollment pending.
  /// - "STATUS_COMPLETE" : SAA enrollment comopleted.
  core.String? setupStatus;

  GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse({
    this.setupErrors,
    this.setupStatus,
  });

  GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse.fromJson(
      core.Map json_)
      : this(
          setupErrors: json_.containsKey('setupErrors')
              ? (json_['setupErrors'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          setupStatus: json_.containsKey('setupStatus')
              ? json_['setupStatus'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (setupErrors != null) 'setupErrors': setupErrors!,
        if (setupStatus != null) 'setupStatus': setupStatus!,
      };
}

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
typedef GoogleRpcStatus = $Status;
