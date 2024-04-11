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

/// Cloud Controls Partner API - v1
///
/// Provides insights about your customers and their Assured Workloads based on
/// your Sovereign Controls by Partners offering.
///
/// For more information, see
/// <https://cloud.google.com/sovereign-controls-by-partners/docs/sovereign-partners/reference/rest>
///
/// Create an instance of [CloudControlsPartnerServiceApi] to access these
/// resources:
///
/// - [OrganizationsResource]
///   - [OrganizationsLocationsResource]
///     - [OrganizationsLocationsCustomersResource]
///       - [OrganizationsLocationsCustomersWorkloadsResource]
/// - [OrganizationsLocationsCustomersWorkloadsAccessApprovalRequestsResource]
///         - [OrganizationsLocationsCustomersWorkloadsViolationsResource]
library;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Provides insights about your customers and their Assured Workloads based on
/// your Sovereign Controls by Partners offering.
class CloudControlsPartnerServiceApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  OrganizationsResource get organizations => OrganizationsResource(_requester);

  CloudControlsPartnerServiceApi(http.Client client,
      {core.String rootUrl = 'https://cloudcontrolspartner.googleapis.com/',
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

  OrganizationsLocationsCustomersResource get customers =>
      OrganizationsLocationsCustomersResource(_requester);

  OrganizationsLocationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Get details of a Partner.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `organizations/{organization}/locations/{location}/partner`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/partner$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Partner].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Partner> getPartner(
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
    return Partner.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsCustomersResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsCustomersWorkloadsResource get workloads =>
      OrganizationsLocationsCustomersWorkloadsResource(_requester);

  OrganizationsLocationsCustomersResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets details of a single customer
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `organizations/{organization}/locations/{location}/customers/{customer}`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Customer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Customer> get(
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
    return Customer.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists customers of a partner identified by its Google Cloud organization
  /// ID
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource Format:
  /// `organizations/{organization}/locations/{location}`
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results
  ///
  /// [orderBy] - Optional. Hint for how to order the results
  ///
  /// [pageSize] - The maximum number of Customers to return. The service may
  /// return fewer than this value. If unspecified, at most 500 Customers will
  /// be returned.
  ///
  /// [pageToken] - A page token, received from a previous `ListCustomers` call.
  /// Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCustomersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCustomersResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCustomersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsCustomersWorkloadsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsCustomersWorkloadsAccessApprovalRequestsResource
      get accessApprovalRequests =>
          OrganizationsLocationsCustomersWorkloadsAccessApprovalRequestsResource(
              _requester);
  OrganizationsLocationsCustomersWorkloadsViolationsResource get violations =>
      OrganizationsLocationsCustomersWorkloadsViolationsResource(_requester);

  OrganizationsLocationsCustomersWorkloadsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets details of a single workload
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{workload}`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/customers/\[^/\]+/workloads/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Workload].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Workload> get(
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
    return Workload.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the EKM connections associated with a workload
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{workload}/ekmConnections`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/customers/\[^/\]+/workloads/\[^/\]+/ekmConnections$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EkmConnections].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EkmConnections> getEkmConnections(
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
    return EkmConnections.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the partner permissions granted for a workload
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource to get in the format:
  /// `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{workload}/partnerPermissions`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/customers/\[^/\]+/workloads/\[^/\]+/partnerPermissions$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PartnerPermissions].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PartnerPermissions> getPartnerPermissions(
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
    return PartnerPermissions.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists customer workloads for a given customer org id
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource Format:
  /// `organizations/{organization}/locations/{location}/customers/{customer}`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/customers/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint for how to order the results.
  ///
  /// [pageSize] - The maximum number of workloads to return. The service may
  /// return fewer than this value. If unspecified, at most 500 workloads will
  /// be returned.
  ///
  /// [pageToken] - A page token, received from a previous `ListWorkloads` call.
  /// Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWorkloadsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkloadsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/workloads';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWorkloadsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsCustomersWorkloadsAccessApprovalRequestsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsCustomersWorkloadsAccessApprovalRequestsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Lists access requests associated with a workload
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource Format:
  /// `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{workload}`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/customers/\[^/\]+/workloads/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint for how to order the results.
  ///
  /// [pageSize] - Optional. The maximum number of access requests to return.
  /// The service may return fewer than this value. If unspecified, at most 500
  /// access requests will be returned.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListAccessApprovalRequests` call. Provide this to retrieve the subsequent
  /// page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAccessApprovalRequestsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAccessApprovalRequestsResponse> list(
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/accessApprovalRequests';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAccessApprovalRequestsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsCustomersWorkloadsViolationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsCustomersWorkloadsViolationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets details of a single Violation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{workload}/violations/{violation}`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/customers/\[^/\]+/workloads/\[^/\]+/violations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Violation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Violation> get(
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
    return Violation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Violations for a workload Callers may also choose to read across
  /// multiple Customers or for a single customer as per
  /// \[AIP-159\](https://google.aip.dev/159) by using '-' (the hyphen or dash
  /// character) as a wildcard character instead of {customer} & {workload}.
  ///
  /// Format:
  /// `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{workload}`
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource Format
  /// `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{workload}`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/customers/\[^/\]+/workloads/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results
  ///
  /// [interval_endTime] - Optional. Exclusive end of the interval. If
  /// specified, a Timestamp matching this interval will have to be before the
  /// end.
  ///
  /// [interval_startTime] - Optional. Inclusive start of the interval. If
  /// specified, a Timestamp matching this interval will have to be the same or
  /// after the start.
  ///
  /// [orderBy] - Optional. Hint for how to order the results
  ///
  /// [pageSize] - Optional. The maximum number of customers row to return. The
  /// service may return fewer than this value. If unspecified, at most 10
  /// customers will be returned.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListViolations` call. Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListViolationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListViolationsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? interval_endTime,
    core.String? interval_startTime,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (interval_endTime != null) 'interval.endTime': [interval_endTime],
      if (interval_startTime != null)
        'interval.startTime': [interval_startTime],
      if (orderBy != null) 'orderBy': [orderBy],
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
    return ListViolationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Details about the Access request.
class AccessApprovalRequest {
  /// Identifier.
  ///
  /// Format:
  /// `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{workload}/accessApprovalRequests/{access_approval_request}`
  core.String? name;

  /// The time at which approval was requested.
  core.String? requestTime;

  /// The requested expiration for the approval.
  ///
  /// If the request is approved, access will be granted from the time of
  /// approval until the expiration time.
  core.String? requestedExpirationTime;

  /// The justification for which approval is being requested.
  AccessReason? requestedReason;

  AccessApprovalRequest({
    this.name,
    this.requestTime,
    this.requestedExpirationTime,
    this.requestedReason,
  });

  AccessApprovalRequest.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          requestTime: json_.containsKey('requestTime')
              ? json_['requestTime'] as core.String
              : null,
          requestedExpirationTime: json_.containsKey('requestedExpirationTime')
              ? json_['requestedExpirationTime'] as core.String
              : null,
          requestedReason: json_.containsKey('requestedReason')
              ? AccessReason.fromJson(json_['requestedReason']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (requestTime != null) 'requestTime': requestTime!,
        if (requestedExpirationTime != null)
          'requestedExpirationTime': requestedExpirationTime!,
        if (requestedReason != null) 'requestedReason': requestedReason!,
      };
}

/// Reason for the access.
class AccessReason {
  /// More detail about certain reason types.
  ///
  /// See comments for each type above.
  core.String? detail;

  /// Type of access justification.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value for proto, shouldn't be used.
  /// - "CUSTOMER_INITIATED_SUPPORT" : Customer made a request or raised an
  /// issue that required the principal to access customer data. `detail` is of
  /// the form ("#####" is the issue ID): - "Feedback Report: #####" - "Case
  /// Number: #####" - "Case ID: #####" - "E-PIN Reference: #####" -
  /// "Google-#####" - "T-#####"
  /// - "GOOGLE_INITIATED_SERVICE" : The principal accessed customer data in
  /// order to diagnose or resolve a suspected issue in services. Often this
  /// access is used to confirm that customers are not affected by a suspected
  /// service issue or to remediate a reversible system issue.
  /// - "GOOGLE_INITIATED_REVIEW" : Google initiated service for security,
  /// fraud, abuse, or compliance purposes.
  /// - "THIRD_PARTY_DATA_REQUEST" : The principal was compelled to access
  /// customer data in order to respond to a legal third party data request or
  /// process, including legal processes from customers themselves.
  /// - "GOOGLE_RESPONSE_TO_PRODUCTION_ALERT" : The principal accessed customer
  /// data in order to diagnose or resolve a suspected issue in services or a
  /// known outage.
  /// - "CLOUD_INITIATED_ACCESS" : Similar to 'GOOGLE_INITIATED_SERVICE' or
  /// 'GOOGLE_INITIATED_REVIEW', but with universe agnostic naming. The
  /// principal accessed customer data in order to diagnose or resolve a
  /// suspected issue in services or a known outage, or for security, fraud,
  /// abuse, or compliance review purposes.
  core.String? type;

  AccessReason({
    this.detail,
    this.type,
  });

  AccessReason.fromJson(core.Map json_)
      : this(
          detail: json_.containsKey('detail')
              ? json_['detail'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detail != null) 'detail': detail!,
        if (type != null) 'type': type!,
      };
}

/// Information around the error that occurred if the connection state is
/// anything other than available or unspecified
class ConnectionError {
  /// The error domain for the error
  core.String? errorDomain;

  /// The error message for the error
  core.String? errorMessage;

  ConnectionError({
    this.errorDomain,
    this.errorMessage,
  });

  ConnectionError.fromJson(core.Map json_)
      : this(
          errorDomain: json_.containsKey('errorDomain')
              ? json_['errorDomain'] as core.String
              : null,
          errorMessage: json_.containsKey('errorMessage')
              ? json_['errorMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorDomain != null) 'errorDomain': errorDomain!,
        if (errorMessage != null) 'errorMessage': errorMessage!,
      };
}

/// Remediation instructions to resolve violation via cloud console
typedef Console = $Console;

/// Contains metadata around a Cloud Controls Partner Customer
class Customer {
  /// Container for customer onboarding steps
  CustomerOnboardingState? customerOnboardingState;

  /// The customer organization's display name.
  ///
  /// E.g. "google.com".
  core.String? displayName;

  /// Indicates whether a customer is fully onboarded
  core.bool? isOnboarded;

  /// Identifier.
  ///
  /// Format:
  /// `organizations/{organization}/locations/{location}/customers/{customer}`
  core.String? name;

  Customer({
    this.customerOnboardingState,
    this.displayName,
    this.isOnboarded,
    this.name,
  });

  Customer.fromJson(core.Map json_)
      : this(
          customerOnboardingState: json_.containsKey('customerOnboardingState')
              ? CustomerOnboardingState.fromJson(
                  json_['customerOnboardingState']
                      as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          isOnboarded: json_.containsKey('isOnboarded')
              ? json_['isOnboarded'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customerOnboardingState != null)
          'customerOnboardingState': customerOnboardingState!,
        if (displayName != null) 'displayName': displayName!,
        if (isOnboarded != null) 'isOnboarded': isOnboarded!,
        if (name != null) 'name': name!,
      };
}

/// Container for customer onboarding steps
class CustomerOnboardingState {
  /// List of customer onboarding steps
  core.List<CustomerOnboardingStep>? onboardingSteps;

  CustomerOnboardingState({
    this.onboardingSteps,
  });

  CustomerOnboardingState.fromJson(core.Map json_)
      : this(
          onboardingSteps: json_.containsKey('onboardingSteps')
              ? (json_['onboardingSteps'] as core.List)
                  .map((value) => CustomerOnboardingStep.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (onboardingSteps != null) 'onboardingSteps': onboardingSteps!,
      };
}

/// Container for customer onboarding information
class CustomerOnboardingStep {
  /// Current state of the step
  ///
  /// Output only.
  /// Possible string values are:
  /// - "COMPLETION_STATE_UNSPECIFIED" : Unspecified completion state.
  /// - "PENDING" : Task started (has start date) but not yet completed.
  /// - "SUCCEEDED" : Succeeded state.
  /// - "FAILED" : Failed state.
  /// - "NOT_APPLICABLE" : Not applicable state.
  core.String? completionState;

  /// The completion time of the onboarding step
  core.String? completionTime;

  /// The starting time of the onboarding step
  core.String? startTime;

  /// The onboarding step
  /// Possible string values are:
  /// - "STEP_UNSPECIFIED" : Unspecified step
  /// - "KAJ_ENROLLMENT" : KAJ Enrollment
  /// - "CUSTOMER_ENVIRONMENT" : Customer Environment
  core.String? step;

  CustomerOnboardingStep({
    this.completionState,
    this.completionTime,
    this.startTime,
    this.step,
  });

  CustomerOnboardingStep.fromJson(core.Map json_)
      : this(
          completionState: json_.containsKey('completionState')
              ? json_['completionState'] as core.String
              : null,
          completionTime: json_.containsKey('completionTime')
              ? json_['completionTime'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          step: json_.containsKey('step') ? json_['step'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completionState != null) 'completionState': completionState!,
        if (completionTime != null) 'completionTime': completionTime!,
        if (startTime != null) 'startTime': startTime!,
        if (step != null) 'step': step!,
      };
}

/// Details about the EKM connection
class EkmConnection {
  /// The connection error that occurred if any
  ConnectionError? connectionError;

  /// Resource name of the EKM connection in the format:
  /// projects/{project}/locations/{location}/ekmConnections/{ekm_connection}
  core.String? connectionName;

  /// The connection state
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CONNECTION_STATE_UNSPECIFIED" : Unspecified EKM connection state
  /// - "AVAILABLE" : Available EKM connection state
  /// - "NOT_AVAILABLE" : Not available EKM connection state
  /// - "ERROR" : Error EKM connection state
  /// - "PERMISSION_DENIED" : Permission denied EKM connection state
  core.String? connectionState;

  EkmConnection({
    this.connectionError,
    this.connectionName,
    this.connectionState,
  });

  EkmConnection.fromJson(core.Map json_)
      : this(
          connectionError: json_.containsKey('connectionError')
              ? ConnectionError.fromJson(json_['connectionError']
                  as core.Map<core.String, core.dynamic>)
              : null,
          connectionName: json_.containsKey('connectionName')
              ? json_['connectionName'] as core.String
              : null,
          connectionState: json_.containsKey('connectionState')
              ? json_['connectionState'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectionError != null) 'connectionError': connectionError!,
        if (connectionName != null) 'connectionName': connectionName!,
        if (connectionState != null) 'connectionState': connectionState!,
      };
}

/// The EKM connections associated with a workload
class EkmConnections {
  /// The EKM connections associated with the workload
  core.List<EkmConnection>? ekmConnections;

  /// Identifier.
  ///
  /// Format:
  /// `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{workload}/ekmConnections`
  core.String? name;

  EkmConnections({
    this.ekmConnections,
    this.name,
  });

  EkmConnections.fromJson(core.Map json_)
      : this(
          ekmConnections: json_.containsKey('ekmConnections')
              ? (json_['ekmConnections'] as core.List)
                  .map((value) => EkmConnection.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ekmConnections != null) 'ekmConnections': ekmConnections!,
        if (name != null) 'name': name!,
      };
}

/// Holds information needed by Mudbray to use partner EKMs for workloads.
class EkmMetadata {
  /// Endpoint for sending requests to the EKM for key provisioning during
  /// Assured Workload creation.
  core.String? ekmEndpointUri;

  /// The Cloud EKM partner.
  /// Possible string values are:
  /// - "EKM_SOLUTION_UNSPECIFIED" : Unspecified EKM solution
  /// - "FORTANIX" : EKM Partner Fortanix
  /// - "FUTUREX" : EKM Partner FutureX
  /// - "THALES" : EKM Partner Thales
  /// - "VIRTRU" : EKM Partner Virtu
  core.String? ekmSolution;

  EkmMetadata({
    this.ekmEndpointUri,
    this.ekmSolution,
  });

  EkmMetadata.fromJson(core.Map json_)
      : this(
          ekmEndpointUri: json_.containsKey('ekmEndpointUri')
              ? json_['ekmEndpointUri'] as core.String
              : null,
          ekmSolution: json_.containsKey('ekmSolution')
              ? json_['ekmSolution'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ekmEndpointUri != null) 'ekmEndpointUri': ekmEndpointUri!,
        if (ekmSolution != null) 'ekmSolution': ekmSolution!,
      };
}

/// Remediation instructions to resolve violation via gcloud cli
typedef Gcloud = $Gcloud;

/// Instructions to remediate violation
class Instructions {
  /// Remediation instructions to resolve violation via cloud console
  Console? consoleInstructions;

  /// Remediation instructions to resolve violation via gcloud cli
  Gcloud? gcloudInstructions;

  Instructions({
    this.consoleInstructions,
    this.gcloudInstructions,
  });

  Instructions.fromJson(core.Map json_)
      : this(
          consoleInstructions: json_.containsKey('consoleInstructions')
              ? Console.fromJson(json_['consoleInstructions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          gcloudInstructions: json_.containsKey('gcloudInstructions')
              ? Gcloud.fromJson(json_['gcloudInstructions']
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

/// Response message for list access requests.
class ListAccessApprovalRequestsResponse {
  /// List of access approval requests
  core.List<AccessApprovalRequest>? accessApprovalRequests;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListAccessApprovalRequestsResponse({
    this.accessApprovalRequests,
    this.nextPageToken,
    this.unreachable,
  });

  ListAccessApprovalRequestsResponse.fromJson(core.Map json_)
      : this(
          accessApprovalRequests: json_.containsKey('accessApprovalRequests')
              ? (json_['accessApprovalRequests'] as core.List)
                  .map((value) => AccessApprovalRequest.fromJson(
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
        if (accessApprovalRequests != null)
          'accessApprovalRequests': accessApprovalRequests!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for list customer Customers requests
class ListCustomersResponse {
  /// List of customers
  core.List<Customer>? customers;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListCustomersResponse({
    this.customers,
    this.nextPageToken,
    this.unreachable,
  });

  ListCustomersResponse.fromJson(core.Map json_)
      : this(
          customers: json_.containsKey('customers')
              ? (json_['customers'] as core.List)
                  .map((value) => Customer.fromJson(
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
        if (customers != null) 'customers': customers!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for list customer violation requests
class ListViolationsResponse {
  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Workloads that could not be reached due to permission errors or any other
  /// error.
  ///
  /// Ref: https://google.aip.dev/217
  core.List<core.String>? unreachable;

  /// List of violation
  core.List<Violation>? violations;

  ListViolationsResponse({
    this.nextPageToken,
    this.unreachable,
    this.violations,
  });

  ListViolationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          violations: json_.containsKey('violations')
              ? (json_['violations'] as core.List)
                  .map((value) => Violation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
        if (violations != null) 'violations': violations!,
      };
}

/// Response message for list customer workloads requests.
class ListWorkloadsResponse {
  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  /// List of customer workloads
  core.List<Workload>? workloads;

  ListWorkloadsResponse({
    this.nextPageToken,
    this.unreachable,
    this.workloads,
  });

  ListWorkloadsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          workloads: json_.containsKey('workloads')
              ? (json_['workloads'] as core.List)
                  .map((value) => Workload.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
        if (workloads != null) 'workloads': workloads!,
      };
}

/// Message describing Partner resource
class Partner {
  /// Time the resource was created
  ///
  /// Output only.
  core.String? createTime;

  /// List of Google Cloud supported EKM partners supported by the partner
  core.List<EkmMetadata>? ekmSolutions;

  /// Identifier.
  ///
  /// The resource name of the partner. Format:
  /// `organizations/{organization}/locations/{location}/partner` Example:
  /// "organizations/123456/locations/us-central1/partner"
  core.String? name;

  /// List of Google Cloud regions that the partner sells services to customers.
  ///
  /// Valid Google Cloud regions found here:
  /// https://cloud.google.com/compute/docs/regions-zones
  core.List<core.String>? operatedCloudRegions;

  /// Google Cloud project ID in the partner's Google Cloud organization for
  /// receiving enhanced Logs for Partners.
  core.String? partnerProjectId;

  /// List of SKUs the partner is offering
  core.List<Sku>? skus;

  /// The last time the resource was updated
  ///
  /// Output only.
  core.String? updateTime;

  Partner({
    this.createTime,
    this.ekmSolutions,
    this.name,
    this.operatedCloudRegions,
    this.partnerProjectId,
    this.skus,
    this.updateTime,
  });

  Partner.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          ekmSolutions: json_.containsKey('ekmSolutions')
              ? (json_['ekmSolutions'] as core.List)
                  .map((value) => EkmMetadata.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          operatedCloudRegions: json_.containsKey('operatedCloudRegions')
              ? (json_['operatedCloudRegions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          partnerProjectId: json_.containsKey('partnerProjectId')
              ? json_['partnerProjectId'] as core.String
              : null,
          skus: json_.containsKey('skus')
              ? (json_['skus'] as core.List)
                  .map((value) => Sku.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (ekmSolutions != null) 'ekmSolutions': ekmSolutions!,
        if (name != null) 'name': name!,
        if (operatedCloudRegions != null)
          'operatedCloudRegions': operatedCloudRegions!,
        if (partnerProjectId != null) 'partnerProjectId': partnerProjectId!,
        if (skus != null) 'skus': skus!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The permissions granted to the partner for a workload
class PartnerPermissions {
  /// Identifier.
  ///
  /// Format:
  /// `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{workload}/partnerPermissions`
  core.String? name;

  /// The partner permissions granted for the workload
  core.List<core.String>? partnerPermissions;

  PartnerPermissions({
    this.name,
    this.partnerPermissions,
  });

  PartnerPermissions.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          partnerPermissions: json_.containsKey('partnerPermissions')
              ? (json_['partnerPermissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (partnerPermissions != null)
          'partnerPermissions': partnerPermissions!,
      };
}

/// Represents remediation guidance to resolve compliance violation for
/// AssuredWorkload
class Remediation {
  /// Values that can resolve the violation For example: for list org policy
  /// violations, this will either be the list of allowed or denied values
  core.List<core.String>? compliantValues;

  /// Remediation instructions to resolve violations
  ///
  /// Required.
  Instructions? instructions;

  /// Remediation type based on the type of org policy values violated
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

  Remediation({
    this.compliantValues,
    this.instructions,
    this.remediationType,
  });

  Remediation.fromJson(core.Map json_)
      : this(
          compliantValues: json_.containsKey('compliantValues')
              ? (json_['compliantValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          instructions: json_.containsKey('instructions')
              ? Instructions.fromJson(
                  json_['instructions'] as core.Map<core.String, core.dynamic>)
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

/// Represents the SKU a partner owns inside Google Cloud to sell to customers.
class Sku {
  /// Display name of the product identified by the SKU.
  ///
  /// A partner may want to show partner branded names for their offerings such
  /// as local sovereign cloud solutions.
  core.String? displayName;

  /// Argentum product SKU, that is associated with the partner offerings to
  /// customers used by Syntro for billing purposes.
  ///
  /// SKUs can represent resold Google products or support services.
  core.String? id;

  Sku({
    this.displayName,
    this.id,
  });

  Sku.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (id != null) 'id': id!,
      };
}

/// Details of resource Violation
class Violation {
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

  /// The folder_id of the violation
  core.String? folderId;

  /// Identifier.
  ///
  /// Format:
  /// `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{workload}/violations/{violation}`
  core.String? name;

  /// Name of the OrgPolicy which was modified with non-compliant change and
  /// resulted this violation.
  ///
  /// Format: `projects/{project_number}/policies/{constraint_name}`
  /// `folders/{folder_id}/policies/{constraint_name}`
  /// `organizations/{organization_id}/policies/{constraint_name}`
  ///
  /// Output only. Immutable.
  core.String? nonCompliantOrgPolicy;

  /// Compliance violation remediation
  ///
  /// Output only.
  Remediation? remediation;

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

  Violation({
    this.beginTime,
    this.category,
    this.description,
    this.folderId,
    this.name,
    this.nonCompliantOrgPolicy,
    this.remediation,
    this.resolveTime,
    this.state,
    this.updateTime,
  });

  Violation.fromJson(core.Map json_)
      : this(
          beginTime: json_.containsKey('beginTime')
              ? json_['beginTime'] as core.String
              : null,
          category: json_.containsKey('category')
              ? json_['category'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          folderId: json_.containsKey('folderId')
              ? json_['folderId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nonCompliantOrgPolicy: json_.containsKey('nonCompliantOrgPolicy')
              ? json_['nonCompliantOrgPolicy'] as core.String
              : null,
          remediation: json_.containsKey('remediation')
              ? Remediation.fromJson(
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
        if (beginTime != null) 'beginTime': beginTime!,
        if (category != null) 'category': category!,
        if (description != null) 'description': description!,
        if (folderId != null) 'folderId': folderId!,
        if (name != null) 'name': name!,
        if (nonCompliantOrgPolicy != null)
          'nonCompliantOrgPolicy': nonCompliantOrgPolicy!,
        if (remediation != null) 'remediation': remediation!,
        if (resolveTime != null) 'resolveTime': resolveTime!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Contains metadata around the
/// [Workload resource](https://cloud.google.com/assured-workloads/docs/reference/rest/Shared.Types/Workload)
/// in the Assured Workloads API.
class Workload {
  /// Time the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The name of container folder of the assured workload
  ///
  /// Output only.
  core.String? folder;

  /// Folder id this workload is associated with
  ///
  /// Output only.
  core.String? folderId;

  /// Indicates whether a workload is fully onboarded.
  core.bool? isOnboarded;

  /// The project id of the key management project for the workload
  core.String? keyManagementProjectId;

  /// The Google Cloud location of the workload
  core.String? location;

  /// Identifier.
  ///
  /// Format:
  /// `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{workload}`
  core.String? name;

  /// Partner associated with this workload.
  /// Possible string values are:
  /// - "PARTNER_UNSPECIFIED" : Unknown Partner.
  /// - "PARTNER_LOCAL_CONTROLS_BY_S3NS" : Enum representing S3NS (Thales)
  /// partner.
  /// - "PARTNER_SOVEREIGN_CONTROLS_BY_T_SYSTEMS" : Enum representing T_SYSTEM
  /// (TSI) partner.
  /// - "PARTNER_SOVEREIGN_CONTROLS_BY_SIA_MINSAIT" : Enum representing
  /// SIA_MINSAIT (Indra) partner.
  /// - "PARTNER_SOVEREIGN_CONTROLS_BY_PSN" : Enum representing PSN (TIM)
  /// partner.
  /// - "PARTNER_SOVEREIGN_CONTROLS_BY_CNTXT" : Enum representing CNTXT (Kingdom
  /// of Saudi Arabia) partner.
  /// - "PARTNER_SOVEREIGN_CONTROLS_BY_CNTXT_NO_EKM" : Enum representing CNXT
  /// (Kingdom of Saudi Arabia) partner offering without EKM provisioning.
  core.String? partner;

  /// Container for workload onboarding steps.
  WorkloadOnboardingState? workloadOnboardingState;

  Workload({
    this.createTime,
    this.folder,
    this.folderId,
    this.isOnboarded,
    this.keyManagementProjectId,
    this.location,
    this.name,
    this.partner,
    this.workloadOnboardingState,
  });

  Workload.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          folder: json_.containsKey('folder')
              ? json_['folder'] as core.String
              : null,
          folderId: json_.containsKey('folderId')
              ? json_['folderId'] as core.String
              : null,
          isOnboarded: json_.containsKey('isOnboarded')
              ? json_['isOnboarded'] as core.bool
              : null,
          keyManagementProjectId: json_.containsKey('keyManagementProjectId')
              ? json_['keyManagementProjectId'] as core.String
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          partner: json_.containsKey('partner')
              ? json_['partner'] as core.String
              : null,
          workloadOnboardingState: json_.containsKey('workloadOnboardingState')
              ? WorkloadOnboardingState.fromJson(
                  json_['workloadOnboardingState']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (folder != null) 'folder': folder!,
        if (folderId != null) 'folderId': folderId!,
        if (isOnboarded != null) 'isOnboarded': isOnboarded!,
        if (keyManagementProjectId != null)
          'keyManagementProjectId': keyManagementProjectId!,
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
        if (partner != null) 'partner': partner!,
        if (workloadOnboardingState != null)
          'workloadOnboardingState': workloadOnboardingState!,
      };
}

/// Container for workload onboarding steps.
class WorkloadOnboardingState {
  /// List of workload onboarding steps.
  core.List<WorkloadOnboardingStep>? onboardingSteps;

  WorkloadOnboardingState({
    this.onboardingSteps,
  });

  WorkloadOnboardingState.fromJson(core.Map json_)
      : this(
          onboardingSteps: json_.containsKey('onboardingSteps')
              ? (json_['onboardingSteps'] as core.List)
                  .map((value) => WorkloadOnboardingStep.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (onboardingSteps != null) 'onboardingSteps': onboardingSteps!,
      };
}

/// Container for workload onboarding information.
class WorkloadOnboardingStep {
  /// The completion state of the onboarding step.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "COMPLETION_STATE_UNSPECIFIED" : Unspecified completion state.
  /// - "PENDING" : Task started (has start date) but not yet completed.
  /// - "SUCCEEDED" : Succeeded state.
  /// - "FAILED" : Failed state.
  /// - "NOT_APPLICABLE" : Not applicable state.
  core.String? completionState;

  /// The completion time of the onboarding step.
  core.String? completionTime;

  /// The starting time of the onboarding step.
  core.String? startTime;

  /// The onboarding step.
  /// Possible string values are:
  /// - "STEP_UNSPECIFIED" : Unspecified step.
  /// - "EKM_PROVISIONED" : EKM Provisioned step.
  /// - "SIGNED_ACCESS_APPROVAL_CONFIGURED" : Signed Access Approval step.
  core.String? step;

  WorkloadOnboardingStep({
    this.completionState,
    this.completionTime,
    this.startTime,
    this.step,
  });

  WorkloadOnboardingStep.fromJson(core.Map json_)
      : this(
          completionState: json_.containsKey('completionState')
              ? json_['completionState'] as core.String
              : null,
          completionTime: json_.containsKey('completionTime')
              ? json_['completionTime'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          step: json_.containsKey('step') ? json_['step'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completionState != null) 'completionState': completionState!,
        if (completionTime != null) 'completionTime': completionTime!,
        if (startTime != null) 'startTime': startTime!,
        if (step != null) 'step': step!,
      };
}
