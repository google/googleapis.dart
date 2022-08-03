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

/// Assured Workloads API - v1
///
/// For more information, see <https://cloud.google.com>
///
/// Create an instance of [AssuredworkloadsApi] to access these resources:
///
/// - [OrganizationsResource]
///   - [OrganizationsLocationsResource]
///     - [OrganizationsLocationsOperationsResource]
///     - [OrganizationsLocationsWorkloadsResource]
library assuredworkloads.v1;

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
  /// otherwise the request will fail with a FAILED_PRECONDITION error.
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

/// An Workload object for managing highly regulated workloads of cloud
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
  /// and Support controls
  core.String? complianceRegime;

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

  GoogleCloudAssuredworkloadsV1Workload({
    this.billingAccount,
    this.complianceRegime,
    this.createTime,
    this.displayName,
    this.enableSovereignControls,
    this.etag,
    this.kajEnrollmentState,
    this.kmsSettings,
    this.labels,
    this.name,
    this.provisionedResourcesParent,
    this.resourceSettings,
    this.resources,
    this.saaEnrollmentResponse,
  });

  GoogleCloudAssuredworkloadsV1Workload.fromJson(core.Map json_)
      : this(
          billingAccount: json_.containsKey('billingAccount')
              ? json_['billingAccount'] as core.String
              : null,
          complianceRegime: json_.containsKey('complianceRegime')
              ? json_['complianceRegime'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
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
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
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
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (billingAccount != null) 'billingAccount': billingAccount!,
        if (complianceRegime != null) 'complianceRegime': complianceRegime!,
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (enableSovereignControls != null)
          'enableSovereignControls': enableSovereignControls!,
        if (etag != null) 'etag': etag!,
        if (kajEnrollmentState != null)
          'kajEnrollmentState': kajEnrollmentState!,
        if (kmsSettings != null) 'kmsSettings': kmsSettings!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (provisionedResourcesParent != null)
          'provisionedResourcesParent': provisionedResourcesParent!,
        if (resourceSettings != null) 'resourceSettings': resourceSettings!,
        if (resources != null) 'resources': resources!,
        if (saaEnrollmentResponse != null)
          'saaEnrollmentResponse': saaEnrollmentResponse!,
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

/// Represent the resources that are children of this Workload.
class GoogleCloudAssuredworkloadsV1WorkloadResourceInfo {
  /// Resource identifier.
  ///
  /// For a project this represents project_number.
  core.String? resourceId;

  /// Indicates the type of resource.
  /// Possible string values are:
  /// - "RESOURCE_TYPE_UNSPECIFIED" : Unknown resource type.
  /// - "CONSUMER_PROJECT" : Consumer project. AssuredWorkloads Projects are no
  /// longer supported. This field will be ignored only in CreateWorkload
  /// requests. ListWorkloads and GetWorkload will continue to provide projects
  /// information. Use CONSUMER_FOLDER instead.
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
  /// - "CONSUMER_PROJECT" : Consumer project. AssuredWorkloads Projects are no
  /// longer supported. This field will be ignored only in CreateWorkload
  /// requests. ListWorkloads and GetWorkload will continue to provide projects
  /// information. Use CONSUMER_FOLDER instead.
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
