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

/// ACME DNS API - v1
///
/// Google Domains ACME DNS API that allows users to complete ACME DNS-01
/// challenges for a domain.
///
/// For more information, see <https://developers.google.com/domains/acme-dns/>
///
/// Create an instance of [ACMEDNSApi] to access these resources:
///
/// - [AcmeChallengeSetsResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Google Domains ACME DNS API that allows users to complete ACME DNS-01
/// challenges for a domain.
class ACMEDNSApi {
  final commons.ApiRequester _requester;

  AcmeChallengeSetsResource get acmeChallengeSets =>
      AcmeChallengeSetsResource(_requester);

  ACMEDNSApi(http.Client client,
      {core.String rootUrl = 'https://acmedns.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AcmeChallengeSetsResource {
  final commons.ApiRequester _requester;

  AcmeChallengeSetsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the ACME challenge set for a given domain name.
  ///
  /// Domain names must be provided in Punycode.
  ///
  /// Request parameters:
  ///
  /// [rootDomain] - Required. SLD + TLD domain name to list challenges. For
  /// example, this would be "google.com" for any FQDN under "google.com". That
  /// includes challenges for "subdomain.google.com". This MAY be Unicode or
  /// Punycode.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AcmeChallengeSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AcmeChallengeSet> get(
    core.String rootDomain, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/acmeChallengeSets/' + commons.escapeVariable('$rootDomain');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AcmeChallengeSet.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Rotate the ACME challenges for a given domain name.
  ///
  /// By default, removes any challenges that are older than 30 days. Domain
  /// names must be provided in Punycode.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [rootDomain] - Required. SLD + TLD domain name to update records for. For
  /// example, this would be "google.com" for any FQDN under "google.com". That
  /// includes challenges for "subdomain.google.com". This MAY be Unicode or
  /// Punycode.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AcmeChallengeSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AcmeChallengeSet> rotateChallenges(
    RotateChallengesRequest request,
    core.String rootDomain, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/acmeChallengeSets/' +
        commons.escapeVariable('$rootDomain') +
        ':rotateChallenges';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AcmeChallengeSet.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// The up-to-date ACME challenge set on a domain for an RPC.
///
/// This contains all of the ACME TXT records that exist on the domain.
class AcmeChallengeSet {
  /// The ACME challenges on the requested domain represented as individual TXT
  /// records.
  core.List<AcmeTxtRecord>? record;

  AcmeChallengeSet({
    this.record,
  });

  AcmeChallengeSet.fromJson(core.Map json_)
      : this(
          record: (json_['record'] as core.List?)
              ?.map((value) => AcmeTxtRecord.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (record != null) 'record': record!,
      };
}

/// The TXT record message that represents an ACME DNS-01 challenge.
class AcmeTxtRecord {
  /// Holds the ACME challenge data put in the TXT record.
  ///
  /// This will be checked to be a valid TXT record data entry.
  core.String? digest;

  /// The domain/subdomain for the record.
  ///
  /// In a request, this MAY be Unicode or Punycode. In a response, this will be
  /// in Unicode. The fqdn MUST contain the root_domain field on the request.
  core.String? fqdn;

  /// The time when this record was last updated.
  ///
  /// This will be in UTC time.
  ///
  /// Output only.
  core.String? updateTime;

  AcmeTxtRecord({
    this.digest,
    this.fqdn,
    this.updateTime,
  });

  AcmeTxtRecord.fromJson(core.Map json_)
      : this(
          digest: json_['digest'] as core.String?,
          fqdn: json_['fqdn'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (digest != null) 'digest': digest!,
        if (fqdn != null) 'fqdn': fqdn!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The request message for the RotateChallenges RPC.
///
/// Requires an access token, a root domain, and either records_to_add or
/// records_to_remove to be populated. Records may be set for multiple
/// subdomains at once to support SAN requests for multiple subdomains in a
/// single domain. By default, ACME TXT record challenges that are older than 30
/// days will be removed. Set `keep_expired_records` to false if this behavior
/// is undesired. There is a record maximum of 100 records per domain including
/// expired records. Any request sent that would exceed this maximum will result
/// in a FAILED_PRECONDITION error. NEXT ID: 6
class RotateChallengesRequest {
  /// ACME DNS access token.
  ///
  /// This is a base64 token secret that is procured from the Google Domains
  /// website. It authorizes ACME TXT record updates for a domain.
  ///
  /// Required.
  core.String? accessToken;
  core.List<core.int> get accessTokenAsBytes =>
      convert.base64.decode(accessToken!);

  set accessTokenAsBytes(core.List<core.int> bytes_) {
    accessToken =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Keep records older than 30 days that were used for previous requests.
  core.bool? keepExpiredRecords;

  /// ACME TXT record challenges to add.
  ///
  /// Supports multiple challenges on the same FQDN.
  core.List<AcmeTxtRecord>? recordsToAdd;

  /// ACME TXT record challenges to remove.
  core.List<AcmeTxtRecord>? recordsToRemove;

  RotateChallengesRequest({
    this.accessToken,
    this.keepExpiredRecords,
    this.recordsToAdd,
    this.recordsToRemove,
  });

  RotateChallengesRequest.fromJson(core.Map json_)
      : this(
          accessToken: json_['accessToken'] as core.String?,
          keepExpiredRecords: json_['keepExpiredRecords'] as core.bool?,
          recordsToAdd: (json_['recordsToAdd'] as core.List?)
              ?.map((value) => AcmeTxtRecord.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          recordsToRemove: (json_['recordsToRemove'] as core.List?)
              ?.map((value) => AcmeTxtRecord.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessToken != null) 'accessToken': accessToken!,
        if (keepExpiredRecords != null)
          'keepExpiredRecords': keepExpiredRecords!,
        if (recordsToAdd != null) 'recordsToAdd': recordsToAdd!,
        if (recordsToRemove != null) 'recordsToRemove': recordsToRemove!,
      };
}
