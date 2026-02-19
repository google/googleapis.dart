// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

/// Gmail Postmaster Tools API - v2
///
/// The Postmaster Tools API is a RESTful API that provides programmatic access
/// to email traffic metrics (like spam reports, delivery errors etc) otherwise
/// available through the Gmail Postmaster Tools UI currently.
///
/// For more information, see
/// <https://developers.google.com/workspace/gmail/postmaster>
///
/// Create an instance of [PostmasterToolsApi] to access these resources:
///
/// - [DomainStatsResource]
/// - [DomainsResource]
///   - [DomainsDomainStatsResource]
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

/// The Postmaster Tools API is a RESTful API that provides programmatic access
/// to email traffic metrics (like spam reports, delivery errors etc) otherwise
/// available through the Gmail Postmaster Tools UI currently.
class PostmasterToolsApi {
  /// Get email traffic metrics, manage domains, and manage domain users for the
  /// domains you have registered with Postmaster Tools
  static const postmasterScope = 'https://www.googleapis.com/auth/postmaster';

  /// View and manage the domains you have registered with Postmaster Tools
  static const postmasterDomainScope =
      'https://www.googleapis.com/auth/postmaster.domain';

  /// Get email traffic metrics for the domains you have registered with
  /// Postmaster Tools
  static const postmasterTrafficReadonlyScope =
      'https://www.googleapis.com/auth/postmaster.traffic.readonly';

  final commons.ApiRequester _requester;

  DomainStatsResource get domainStats => DomainStatsResource(_requester);
  DomainsResource get domains => DomainsResource(_requester);

  PostmasterToolsApi(
    http.Client client, {
    core.String rootUrl = 'https://gmailpostmastertools.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class DomainStatsResource {
  final commons.ApiRequester _requester;

  DomainStatsResource(commons.ApiRequester client) : _requester = client;

  /// Executes a batch of QueryDomainStats requests for multiple domains.
  ///
  /// Returns PERMISSION_DENIED if you don't have permission to access
  /// DomainStats for any of the requested domains.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchQueryDomainStatsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchQueryDomainStatsResponse> batchQuery(
    BatchQueryDomainStatsRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v2/domainStats:batchQuery';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchQueryDomainStatsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class DomainsResource {
  final commons.ApiRequester _requester;

  DomainsDomainStatsResource get domainStats =>
      DomainsDomainStatsResource(_requester);

  DomainsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves detailed information about a domain registered by you.
  ///
  /// Returns NOT_FOUND if the domain is not registered by you. Domain
  /// represents the metadata of a domain that has been registered within the
  /// system and linked to a user.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the domain. Format:
  /// `domains/{domain_name}`, where domain_name is the fully qualified domain
  /// name (i.e., mymail.mydomain.com).
  /// Value must have pattern `^domains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Domain> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Domain.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the compliance status for a given domain.
  ///
  /// Returns PERMISSION_DENIED if you don't have permission to access
  /// compliance status for the domain.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the domain's compliance status to
  /// retrieve. Format: `domains/{domain_id}/complianceStatus`.
  /// Value must have pattern `^domains/\[^/\]+/complianceStatus$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DomainComplianceStatus].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DomainComplianceStatus> getComplianceStatus(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DomainComplianceStatus.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves a list of all domains registered by you, along with their
  /// corresponding metadata.
  ///
  /// The order of domains in the response is unspecified and non-deterministic.
  /// Newly registered domains will not necessarily be added to the end of this
  /// list.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer
  /// domains than requested. If unspecified, the default value for this field
  /// is 10. The maximum value for this field is 200.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// List request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDomainsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDomainsResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v2/domains';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDomainsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class DomainsDomainStatsResource {
  final commons.ApiRequester _requester;

  DomainsDomainStatsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of domain statistics for a given domain and time period.
  ///
  /// Returns statistics only for dates where data is available. Returns
  /// PERMISSION_DENIED if you don't have permission to access DomainStats for
  /// the domain.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name where the stats are queried.
  /// Format: domains/{domain}
  /// Value must have pattern `^domains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryDomainStatsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryDomainStatsResponse> query(
    QueryDomainStatsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/domainStats:query';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return QueryDomainStatsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Specifies the base metric to query, which can be a predefined standard
/// metric or a user-defined custom metric (if supported in the future).
class BaseMetric {
  /// A predefined standard metric.
  /// Possible string values are:
  /// - "STANDARD_METRIC_UNSPECIFIED" : Unspecified standard metric. This value
  /// should not be used directly.
  /// - "FEEDBACK_LOOP_ID" : Predefined metric for Feedback Loop (FBL) id.
  /// - "FEEDBACK_LOOP_SPAM_RATE" : Predefined metric for Feedback Loop (FBL)
  /// spam rate. Filter must be of type feedback_loop_id = "" where is one valid
  /// feedback loop ids.
  /// - "SPAM_RATE" : Predefined metric for spam rate.
  /// - "AUTH_SUCCESS_RATE" : The success rate of authentication mechanisms
  /// (DKIM, SPF, DMARC). Filter must be of type auth_type = "" where is one of:
  /// \[spf, dkim, dmarc\]
  /// - "TLS_ENCRYPTION_MESSAGE_COUNT" : The rate of messages that were TLS
  /// encrypted in transit Filter must be of type traffic_direction = "" where
  /// is one of: \[inbound, outbound\]
  /// - "TLS_ENCRYPTION_RATE" : The rate of messages that were TLS encrypted in
  /// transit Filter must be of type traffic_direction = "" where is one of:
  /// \[inbound, outbound\]
  /// - "DELIVERY_ERROR_COUNT" : The total count of delivery errors encountered
  /// (temporary or permanent rejects). The `filter` field supports a limited
  /// syntax. Supported formats are: * Empty: No filter is applied. *
  /// `error_type` = "" * `error_type` = "" AND `error_reason` = "" If an empty
  /// filter is provided, the metric will be aggregated across all error types
  /// and reasons. If only `error_type` is specified, the metric will be
  /// aggregated across all reasons for that type. Supported values: * reject *
  /// temp_fail Supported values depend on the : * For 'reject':
  /// \[bad_attachment, bad_or_missing_ptr_record, ip_in_rbls,
  /// low_domain_reputation, low_ip_reputation, spammy_content,
  /// stamp_policy_error, other\] * For 'temp_fail':
  /// \[anomalous_traffic_pattern, other\]
  /// - "DELIVERY_ERROR_RATE" : Delivery error rate for the specified delivery
  /// error type. The `filter` field supports a limited syntax. Supported
  /// formats are: * Empty: No filter is applied. * `error_type` = "" *
  /// `error_type` = "" AND `error_reason` = "" If an empty filter is provided,
  /// the metric will be aggregated across all error types and reasons. If only
  /// `error_type` is specified, the metric will be aggregated across all
  /// reasons for that type. Supported values: * reject * temp_fail Supported
  /// values depend on the : * For 'reject': \[bad_attachment,
  /// bad_or_missing_ptr_record, ip_in_rbls, low_domain_reputation,
  /// low_ip_reputation, spammy_content, stamp_policy_error, other\] * For
  /// 'temp_fail': \[anomalous_traffic_pattern, other\]
  core.String? standardMetric;

  BaseMetric({this.standardMetric});

  BaseMetric.fromJson(core.Map json_)
    : this(standardMetric: json_['standardMetric'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final standardMetric = this.standardMetric;
    return {'standardMetric': ?standardMetric};
  }
}

/// Request message for BatchQueryDomainStats.
class BatchQueryDomainStatsRequest {
  /// A list of individual query requests.
  ///
  /// Each request can be for a different domain. A maximum of 100 requests can
  /// be included in a single batch.
  ///
  /// Required.
  core.List<QueryDomainStatsRequest>? requests;

  BatchQueryDomainStatsRequest({this.requests});

  BatchQueryDomainStatsRequest.fromJson(core.Map json_)
    : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => QueryDomainStatsRequest.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requests = this.requests;
    return {'requests': ?requests};
  }
}

/// Response message for BatchQueryDomainStats.
class BatchQueryDomainStatsResponse {
  /// A list of responses, one for each query in the
  /// BatchQueryDomainStatsRequest.
  ///
  /// The order of responses will correspond to the order of requests.
  core.List<BatchQueryDomainStatsResult>? results;

  BatchQueryDomainStatsResponse({this.results});

  BatchQueryDomainStatsResponse.fromJson(core.Map json_)
    : this(
        results: (json_['results'] as core.List?)
            ?.map(
              (value) => BatchQueryDomainStatsResult.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final results = this.results;
    return {'results': ?results};
  }
}

/// Represents the result of a single QueryDomainStatsRequest within a batch.
class BatchQueryDomainStatsResult {
  /// The error status if the individual query failed.
  Status? error;

  /// The successful response for the individual query.
  QueryDomainStatsResponse? response;

  BatchQueryDomainStatsResult({this.error, this.response});

  BatchQueryDomainStatsResult.fromJson(core.Map json_)
    : this(
        error: json_.containsKey('error')
            ? Status.fromJson(
                json_['error'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        response: json_.containsKey('response')
            ? QueryDomainStatsResponse.fromJson(
                json_['response'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final error = this.error;
    final response = this.response;
    return {'error': ?error, 'response': ?response};
  }
}

/// Data for a single row of the compliance status table.
class ComplianceRowData {
  /// The compliance requirement.
  /// Possible string values are:
  /// - "COMPLIANCE_REQUIREMENT_UNSPECIFIED" : Unspecified.
  /// - "SPF" : Whether the sender has properly configured SPF.
  /// - "DKIM" : Whether the sender has properly configured DKIM.
  /// - "SPF_AND_DKIM" : Whether the sender has properly configured both SPF and
  /// DKIM.
  /// - "DMARC_POLICY" : Whether the sender has configured DMARC policy.
  /// - "DMARC_ALIGNMENT" : Whether the From: header is aligned with DKIM or SPF
  /// - "MESSAGE_FORMATTING" : Whether messages are correctly formatted
  /// according to RFC 5322.
  /// - "DNS_RECORDS" : Whether the domain has forward and reverse DNS records.
  /// - "ENCRYPTION" : Whether messages has TLS encryption.
  /// - "USER_REPORTED_SPAM_RATE" : Whether the sender is below a threshold for
  /// user-reported spam rate.
  /// - "ONE_CLICK_UNSUBSCRIBE" : Whether the sender sufficiently supports
  /// one-click unsubscribe. Note that the user-facing requirement is "one-click
  /// unsubscribe", but we require satisfaction of multiple "unsubscribe
  /// support" rules.
  /// - "HONOR_UNSUBSCRIBE" : Whether the sender honors user-initiated
  /// unsubscribe requests.
  core.String? requirement;

  /// The compliance status for the requirement.
  ComplianceStatus? status;

  ComplianceRowData({this.requirement, this.status});

  ComplianceRowData.fromJson(core.Map json_)
    : this(
        requirement: json_['requirement'] as core.String?,
        status: json_.containsKey('status')
            ? ComplianceStatus.fromJson(
                json_['status'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requirement = this.requirement;
    final status = this.status;
    return {'requirement': ?requirement, 'status': ?status};
  }
}

/// The status of a sender compliance requirement.
class ComplianceStatus {
  /// The compliance status.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified.
  /// - "COMPLIANT" : The compliance requirement is met, and the sender is
  /// deemed compliant.
  /// - "NEEDS_WORK" : The compliance requirement is unmet, and the sender needs
  /// to do work to achieve compliance.
  core.String? status;

  ComplianceStatus({this.status});

  ComplianceStatus.fromJson(core.Map json_)
    : this(status: json_['status'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final status = this.status;
    return {'status': ?status};
  }
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

/// A set of specific dates.
class DateList {
  /// The list of specific dates for which to retrieve data.
  ///
  /// Required.
  core.List<Date>? dates;

  DateList({this.dates});

  DateList.fromJson(core.Map json_)
    : this(
        dates: (json_['dates'] as core.List?)
            ?.map(
              (value) =>
                  Date.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dates = this.dates;
    return {'dates': ?dates};
  }
}

/// A single date range defined by a start and end date.
class DateRange {
  /// The inclusive end date of the date range.
  ///
  /// Required.
  Date? end;

  /// The inclusive start date of the date range.
  ///
  /// Required.
  Date? start;

  DateRange({this.end, this.start});

  DateRange.fromJson(core.Map json_)
    : this(
        end: json_.containsKey('end')
            ? Date.fromJson(json_['end'] as core.Map<core.String, core.dynamic>)
            : null,
        start: json_.containsKey('start')
            ? Date.fromJson(
                json_['start'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final end = this.end;
    final start = this.start;
    return {'end': ?end, 'start': ?start};
  }
}

/// A set of date ranges.
class DateRanges {
  /// The list of date ranges for which to retrieve data.
  ///
  /// Required.
  core.List<DateRange>? dateRanges;

  DateRanges({this.dateRanges});

  DateRanges.fromJson(core.Map json_)
    : this(
        dateRanges: (json_['dateRanges'] as core.List?)
            ?.map(
              (value) => DateRange.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dateRanges = this.dateRanges;
    return {'dateRanges': ?dateRanges};
  }
}

/// Information about a domain registered by the user.
class Domain {
  /// The timestamp at which the domain was added to the user's account.
  ///
  /// Output only. Immutable.
  core.String? createTime;

  /// The timestamp at which the domain was last verified by the user.
  core.String? lastVerifyTime;

  /// Identifier.
  ///
  /// The resource name of the domain. Format: `domains/{domain_name}`, where
  /// domain_name is the fully qualified domain name (i.e.,
  /// mymail.mydomain.com).
  core.String? name;

  /// User's permission of this domain.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PERMISSION_UNSPECIFIED" : Unspecified permission.
  /// - "READER" : User has read access to the domain.
  /// - "OWNER" : User has owner access to the domain.
  /// - "NONE" : User has no access to the domain.
  core.String? permission;

  /// Information about a user's verification history and properties for the
  /// domain.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "VERIFICATION_STATE_UNSPECIFIED" : Unspecified.
  /// - "UNVERIFIED" : The domain is unverified.
  /// - "VERIFIED" : The domain is verified.
  core.String? verificationState;

  Domain({
    this.createTime,
    this.lastVerifyTime,
    this.name,
    this.permission,
    this.verificationState,
  });

  Domain.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        lastVerifyTime: json_['lastVerifyTime'] as core.String?,
        name: json_['name'] as core.String?,
        permission: json_['permission'] as core.String?,
        verificationState: json_['verificationState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final lastVerifyTime = this.lastVerifyTime;
    final name = this.name;
    final permission = this.permission;
    final verificationState = this.verificationState;
    return {
      'createTime': ?createTime,
      'lastVerifyTime': ?lastVerifyTime,
      'name': ?name,
      'permission': ?permission,
      'verificationState': ?verificationState,
    };
  }
}

/// Compliance data for a given domain.
class DomainComplianceData {
  /// Domain that this data is for.
  core.String? domainId;

  /// Unsubscribe honoring compliance verdict.
  HonorUnsubscribeVerdict? honorUnsubscribeVerdict;

  /// One-click unsubscribe compliance verdict.
  OneClickUnsubscribeVerdict? oneClickUnsubscribeVerdict;

  /// Data for each of the rows of the table.
  ///
  /// Each message contains all the data that backs a single row.
  core.List<ComplianceRowData>? rowData;

  DomainComplianceData({
    this.domainId,
    this.honorUnsubscribeVerdict,
    this.oneClickUnsubscribeVerdict,
    this.rowData,
  });

  DomainComplianceData.fromJson(core.Map json_)
    : this(
        domainId: json_['domainId'] as core.String?,
        honorUnsubscribeVerdict: json_.containsKey('honorUnsubscribeVerdict')
            ? HonorUnsubscribeVerdict.fromJson(
                json_['honorUnsubscribeVerdict']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        oneClickUnsubscribeVerdict:
            json_.containsKey('oneClickUnsubscribeVerdict')
            ? OneClickUnsubscribeVerdict.fromJson(
                json_['oneClickUnsubscribeVerdict']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        rowData: (json_['rowData'] as core.List?)
            ?.map(
              (value) => ComplianceRowData.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final domainId = this.domainId;
    final honorUnsubscribeVerdict = this.honorUnsubscribeVerdict;
    final oneClickUnsubscribeVerdict = this.oneClickUnsubscribeVerdict;
    final rowData = this.rowData;
    return {
      'domainId': ?domainId,
      'honorUnsubscribeVerdict': ?honorUnsubscribeVerdict,
      'oneClickUnsubscribeVerdict': ?oneClickUnsubscribeVerdict,
      'rowData': ?rowData,
    };
  }
}

/// Compliance status for a domain.
class DomainComplianceStatus {
  /// Compliance data for the registrable domain part of the domain in `name`.
  ///
  /// For example, if `name` is `domains/example.com/complianceStatus`, this
  /// field contains compliance data for `example.com`.
  DomainComplianceData? complianceData;

  /// Identifier.
  ///
  /// The resource name of the domain's compliance status. Format:
  /// `domains/{domain_id}/complianceStatus`.
  core.String? name;

  /// Compliance data calculated specifically for the subdomain in `name`.
  ///
  /// This field is only populated if the domain in `name` is a subdomain that
  /// differs from its registrable domain (e.g., `sub.example.com`), and if
  /// compliance data is available for that specific subdomain.
  DomainComplianceData? subdomainComplianceData;

  DomainComplianceStatus({
    this.complianceData,
    this.name,
    this.subdomainComplianceData,
  });

  DomainComplianceStatus.fromJson(core.Map json_)
    : this(
        complianceData: json_.containsKey('complianceData')
            ? DomainComplianceData.fromJson(
                json_['complianceData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        subdomainComplianceData: json_.containsKey('subdomainComplianceData')
            ? DomainComplianceData.fromJson(
                json_['subdomainComplianceData']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final complianceData = this.complianceData;
    final name = this.name;
    final subdomainComplianceData = this.subdomainComplianceData;
    return {
      'complianceData': ?complianceData,
      'name': ?name,
      'subdomainComplianceData': ?subdomainComplianceData,
    };
  }
}

/// Email statistics for a domain for a specified time period or date.
class DomainStat {
  /// The specific date for these stats, if granularity is DAILY.
  ///
  /// This field is populated if the QueryDomainStatsRequest specified a DAILY
  /// aggregation granularity.
  ///
  /// Optional.
  Date? date;

  /// The user-defined name from MetricDefinition.name in the request, used to
  /// correlate this result with the requested metric.
  core.String? metric;

  /// The resource name of the DomainStat resource.
  ///
  /// Format: domains/{domain}/domainStats/{domain_stat} The `{domain_stat}`
  /// segment is an opaque, server-generated ID. We recommend using the `metric`
  /// field to identify queried metrics instead of parsing the name.
  ///
  /// Output only.
  core.String? name;

  /// The value of the corresponding metric.
  StatisticValue? value;

  DomainStat({this.date, this.metric, this.name, this.value});

  DomainStat.fromJson(core.Map json_)
    : this(
        date: json_.containsKey('date')
            ? Date.fromJson(
                json_['date'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metric: json_['metric'] as core.String?,
        name: json_['name'] as core.String?,
        value: json_.containsKey('value')
            ? StatisticValue.fromJson(
                json_['value'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final date = this.date;
    final metric = this.metric;
    final name = this.name;
    final value = this.value;
    return {'date': ?date, 'metric': ?metric, 'name': ?name, 'value': ?value};
  }
}

/// Compliance verdict for whether a sender meets the unsubscribe honoring
/// compliance requirement.
class HonorUnsubscribeVerdict {
  /// The specific reason for the compliance verdict.
  ///
  /// Must be empty if the status is compliant.
  /// Possible string values are:
  /// - "REASON_UNSPECIFIED" : Unspecified.
  /// - "NOT_HONORING" : The sender does not honor unsubscribe requests.
  /// - "NOT_HONORING_TOO_FEW_CAMPAIGNS" : The sender does not honor unsubscribe
  /// requests and consider to increase the number of relevant campaigns.
  /// - "NOT_HONORING_TOO_MANY_CAMPAIGNS" : The sender does not honor
  /// unsubscribe requests and consider to reduce the number of relevant
  /// campaigns.
  core.String? reason;

  /// The compliance status.
  ComplianceStatus? status;

  HonorUnsubscribeVerdict({this.reason, this.status});

  HonorUnsubscribeVerdict.fromJson(core.Map json_)
    : this(
        reason: json_['reason'] as core.String?,
        status: json_.containsKey('status')
            ? ComplianceStatus.fromJson(
                json_['status'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final reason = this.reason;
    final status = this.status;
    return {'reason': ?reason, 'status': ?status};
  }
}

/// Response message for ListDomains.
class ListDomainsResponse {
  /// The domains that have been registered by the user.
  core.List<Domain>? domains;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  ListDomainsResponse({this.domains, this.nextPageToken});

  ListDomainsResponse.fromJson(core.Map json_)
    : this(
        domains: (json_['domains'] as core.List?)
            ?.map(
              (value) =>
                  Domain.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final domains = this.domains;
    final nextPageToken = this.nextPageToken;
    return {'domains': ?domains, 'nextPageToken': ?nextPageToken};
  }
}

/// Defines a specific metric to query, including a user-defined name, the base
/// metric type, and optional filters.
class MetricDefinition {
  /// The underlying metric to query.
  ///
  /// Required.
  BaseMetric? baseMetric;

  /// Optional filters to apply to the metric.
  ///
  /// Optional.
  core.String? filter;

  /// The user-defined name for this metric.
  ///
  /// This name will be used as the key for this metric's value in the response.
  ///
  /// Required.
  core.String? name;

  MetricDefinition({this.baseMetric, this.filter, this.name});

  MetricDefinition.fromJson(core.Map json_)
    : this(
        baseMetric: json_.containsKey('baseMetric')
            ? BaseMetric.fromJson(
                json_['baseMetric'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        filter: json_['filter'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final baseMetric = this.baseMetric;
    final filter = this.filter;
    final name = this.name;
    return {'baseMetric': ?baseMetric, 'filter': ?filter, 'name': ?name};
  }
}

/// Compliance verdict for whether a sender meets the one-click unsubscribe
/// compliance requirement.
class OneClickUnsubscribeVerdict {
  /// The specific reason for the compliance verdict.
  ///
  /// Must be empty if the status is compliant.
  /// Possible string values are:
  /// - "REASON_UNSPECIFIED" : Unspecified.
  /// - "NO_UNSUB_GENERAL" : Sender does not support one-click unsubscribe for
  /// the majority of their messages.
  /// - "NO_UNSUB_SPAM_REPORTS" : Sender does not support one-click unsubscribe
  /// for most messages that are manually reported as spam.
  /// - "NO_UNSUB_PROMO_SPAM_REPORTS" : Sender does not support one-click
  /// unsubscribe for most promotional messages that are manually reported as
  /// spam. This classification of messages is a subset of those encompassed by
  /// `NO_UNSUB_SPAM_REPORTS`.
  core.String? reason;

  /// The compliance status.
  ComplianceStatus? status;

  OneClickUnsubscribeVerdict({this.reason, this.status});

  OneClickUnsubscribeVerdict.fromJson(core.Map json_)
    : this(
        reason: json_['reason'] as core.String?,
        status: json_.containsKey('status')
            ? ComplianceStatus.fromJson(
                json_['status'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final reason = this.reason;
    final status = this.status;
    return {'reason': ?reason, 'status': ?status};
  }
}

/// Request message for QueryDomainStats.
class QueryDomainStatsRequest {
  /// The granularity at which to aggregate the statistics.
  ///
  /// If unspecified, defaults to DAILY.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "AGGREGATION_GRANULARITY_UNSPECIFIED" : Unspecified granularity.
  /// Defaults to DAILY.
  /// - "DAILY" : Statistics are aggregated on a daily basis. Each DomainStats
  /// entry in the response will correspond to a single day.
  /// - "OVERALL" : Statistics are aggregated over the entire requested time
  /// period. Each DomainStats entry in the response will represent the total
  /// for the period.
  core.String? aggregationGranularity;

  /// The specific metrics to query.
  ///
  /// You can define a custom name for each metric, which will be used in the
  /// response.
  ///
  /// Required.
  core.List<MetricDefinition>? metricDefinitions;

  /// The maximum number of DomainStats resources to return in the response.
  ///
  /// The server may return fewer than this value. If unspecified, a default
  /// value of 10 will be used. The maximum value is 200.
  ///
  /// Optional.
  core.int? pageSize;

  /// The next_page_token value returned from a previous List request, if any.
  ///
  /// If the aggregation granularity is DAILY, the page token will be the
  /// encoded date + "/" + metric name. If the aggregation granularity is
  /// OVERALL, the page token will be the encoded metric name.
  ///
  /// Optional.
  core.String? pageToken;

  /// The parent resource name where the stats are queried.
  ///
  /// Format: domains/{domain}
  ///
  /// Required.
  core.String? parent;

  /// The time range or specific dates for which to retrieve the metrics.
  ///
  /// Required.
  TimeQuery? timeQuery;

  QueryDomainStatsRequest({
    this.aggregationGranularity,
    this.metricDefinitions,
    this.pageSize,
    this.pageToken,
    this.parent,
    this.timeQuery,
  });

  QueryDomainStatsRequest.fromJson(core.Map json_)
    : this(
        aggregationGranularity: json_['aggregationGranularity'] as core.String?,
        metricDefinitions: (json_['metricDefinitions'] as core.List?)
            ?.map(
              (value) => MetricDefinition.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        parent: json_['parent'] as core.String?,
        timeQuery: json_.containsKey('timeQuery')
            ? TimeQuery.fromJson(
                json_['timeQuery'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final aggregationGranularity = this.aggregationGranularity;
    final metricDefinitions = this.metricDefinitions;
    final pageSize = this.pageSize;
    final pageToken = this.pageToken;
    final parent = this.parent;
    final timeQuery = this.timeQuery;
    return {
      'aggregationGranularity': ?aggregationGranularity,
      'metricDefinitions': ?metricDefinitions,
      'pageSize': ?pageSize,
      'pageToken': ?pageToken,
      'parent': ?parent,
      'timeQuery': ?timeQuery,
    };
  }
}

/// Response message for QueryDomainStats.
class QueryDomainStatsResponse {
  /// The list of domain statistics.
  ///
  /// Each DomainStat object contains the value for a metric requested in the
  /// QueryDomainStatsRequest.
  core.List<DomainStat>? domainStats;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  QueryDomainStatsResponse({this.domainStats, this.nextPageToken});

  QueryDomainStatsResponse.fromJson(core.Map json_)
    : this(
        domainStats: (json_['domainStats'] as core.List?)
            ?.map(
              (value) => DomainStat.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final domainStats = this.domainStats;
    final nextPageToken = this.nextPageToken;
    return {'domainStats': ?domainStats, 'nextPageToken': ?nextPageToken};
  }
}

/// The actual value of a statistic.
class StatisticValue {
  /// Double value.
  core.double? doubleValue;

  /// Float value.
  core.double? floatValue;

  /// Integer value.
  core.String? intValue;

  /// List of string values.
  StringList? stringList;

  /// String value.
  core.String? stringValue;

  StatisticValue({
    this.doubleValue,
    this.floatValue,
    this.intValue,
    this.stringList,
    this.stringValue,
  });

  StatisticValue.fromJson(core.Map json_)
    : this(
        doubleValue: (json_['doubleValue'] as core.num?)?.toDouble(),
        floatValue: (json_['floatValue'] as core.num?)?.toDouble(),
        intValue: json_['intValue'] as core.String?,
        stringList: json_.containsKey('stringList')
            ? StringList.fromJson(
                json_['stringList'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        stringValue: json_['stringValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final doubleValue = this.doubleValue;
    final floatValue = this.floatValue;
    final intValue = this.intValue;
    final stringList = this.stringList;
    final stringValue = this.stringValue;
    return {
      'doubleValue': ?doubleValue,
      'floatValue': ?floatValue,
      'intValue': ?intValue,
      'stringList': ?stringList,
      'stringValue': ?stringValue,
    };
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// Represents a list of strings.
typedef StringList = $StringList;

/// The date ranges or specific dates for which you want to retrieve data.
class TimeQuery {
  /// A list of specific dates.
  DateList? dateList;

  /// A list of date ranges.
  DateRanges? dateRanges;

  TimeQuery({this.dateList, this.dateRanges});

  TimeQuery.fromJson(core.Map json_)
    : this(
        dateList: json_.containsKey('dateList')
            ? DateList.fromJson(
                json_['dateList'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dateRanges: json_.containsKey('dateRanges')
            ? DateRanges.fromJson(
                json_['dateRanges'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dateList = this.dateList;
    final dateRanges = this.dateRanges;
    return {'dateList': ?dateList, 'dateRanges': ?dateRanges};
  }
}
