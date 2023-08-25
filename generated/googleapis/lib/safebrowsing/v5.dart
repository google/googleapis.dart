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

/// Safe Browsing API - v5
///
/// Enables client applications to check web resources (most commonly URLs)
/// against Google-generated lists of unsafe web resources. The Safe Browsing
/// APIs are for non-commercial use only. If you need to use APIs to detect
/// malicious URLs for commercial purposes – meaning “for sale or
/// revenue-generating purposes” – please refer to the Web Risk API.
///
/// For more information, see <https://developers.google.com/safe-browsing/>
///
/// Create an instance of [SafebrowsingApi] to access these resources:
///
/// - [HashesResource]
library safebrowsing_v5;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Enables client applications to check web resources (most commonly URLs)
/// against Google-generated lists of unsafe web resources.
///
/// The Safe Browsing APIs are for non-commercial use only. If you need to use
/// APIs to detect malicious URLs for commercial purposes – meaning “for sale or
/// revenue-generating purposes” – please refer to the Web Risk API.
class SafebrowsingApi {
  final commons.ApiRequester _requester;

  HashesResource get hashes => HashesResource(_requester);

  SafebrowsingApi(http.Client client,
      {core.String rootUrl = 'https://safebrowsing.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class HashesResource {
  final commons.ApiRequester _requester;

  HashesResource(commons.ApiRequester client) : _requester = client;

  /// Search for full hashes matching the specified prefixes.
  ///
  /// This is a custom method as described by guidance at
  /// https://google.aip.dev/136
  ///
  /// Request parameters:
  ///
  /// [hashPrefixes] - Required. The hash prefixes to be looked up.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleSecuritySafebrowsingV5SearchHashesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleSecuritySafebrowsingV5SearchHashesResponse> search({
    core.List<core.String>? hashPrefixes,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (hashPrefixes != null) 'hashPrefixes': hashPrefixes,
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v5/hashes:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleSecuritySafebrowsingV5SearchHashesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// The full hash identified with one or more matches.
class GoogleSecuritySafebrowsingV5FullHash {
  /// The matching full hash.
  ///
  /// This is the SHA256 hash. The length will be exactly 32 bytes.
  core.String? fullHash;
  core.List<core.int> get fullHashAsBytes => convert.base64.decode(fullHash!);

  set fullHashAsBytes(core.List<core.int> bytes_) {
    fullHash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Unordered list.
  ///
  /// A repeated field identifying the details relevant to this full hash.
  core.List<GoogleSecuritySafebrowsingV5FullHashFullHashDetail>?
      fullHashDetails;

  GoogleSecuritySafebrowsingV5FullHash({
    this.fullHash,
    this.fullHashDetails,
  });

  GoogleSecuritySafebrowsingV5FullHash.fromJson(core.Map json_)
      : this(
          fullHash: json_.containsKey('fullHash')
              ? json_['fullHash'] as core.String
              : null,
          fullHashDetails: json_.containsKey('fullHashDetails')
              ? (json_['fullHashDetails'] as core.List)
                  .map((value) =>
                      GoogleSecuritySafebrowsingV5FullHashFullHashDetail
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fullHash != null) 'fullHash': fullHash!,
        if (fullHashDetails != null) 'fullHashDetails': fullHashDetails!,
      };
}

/// Details about a matching full hash.
///
/// An important note about forward compatibility: new threat types and threat
/// attributes may be added by the server at any time; those additions are
/// considered minor version changes. It is Google's policy not to expose minor
/// version numbers in APIs (see
/// https://cloud.google.com/apis/design/versioning), so clients MUST be
/// prepared to receive FullHashDetail messages containing ThreatType enum
/// values or ThreatAttribute enum values that are considered invalid by the
/// client. Therefore, it is the client's responsibility to check for the
/// validity of all ThreatType and ThreatAttribute enum values; if any value is
/// considered invalid, the client MUST disregard the entire FullHashDetail
/// message.
class GoogleSecuritySafebrowsingV5FullHashFullHashDetail {
  /// Unordered list.
  ///
  /// Additional attributes about those full hashes. This may be empty.
  core.List<core.String>? attributes;

  /// The type of threat.
  ///
  /// This field will never be empty.
  /// Possible string values are:
  /// - "THREAT_TYPE_UNSPECIFIED" : Unknown.
  /// - "MALWARE" : Malware threat type.
  /// - "SOCIAL_ENGINEERING" : Social engineering threat type.
  /// - "UNWANTED_SOFTWARE" : Unwanted software threat type.
  /// - "POTENTIALLY_HARMFUL_APPLICATION" : Potentially harmful application
  /// threat type.
  core.String? threatType;

  GoogleSecuritySafebrowsingV5FullHashFullHashDetail({
    this.attributes,
    this.threatType,
  });

  GoogleSecuritySafebrowsingV5FullHashFullHashDetail.fromJson(core.Map json_)
      : this(
          attributes: json_.containsKey('attributes')
              ? (json_['attributes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          threatType: json_.containsKey('threatType')
              ? json_['threatType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributes != null) 'attributes': attributes!,
        if (threatType != null) 'threatType': threatType!,
      };
}

/// The response returned after searching threat hashes.
///
/// Note that if nothing is found, the server will return an OK status (HTTP
/// status code 200) with the `full_hashes` field empty, rather than returning a
/// NOT_FOUND status (HTTP status code 404).
class GoogleSecuritySafebrowsingV5SearchHashesResponse {
  /// The client-side cache duration.
  ///
  /// The client shall add this duration to the current time to determine the
  /// expiration time. The expiration time then applies to every hash prefix
  /// queried by the client in the request, regardless of how many full hashes
  /// are returned in the response. Even if the server returns no full hashes
  /// for a particular hash prefix, this fact should also be cached by the
  /// client. Important: the client must not assume that the server will return
  /// the same cache duration for all responses. The server may choose different
  /// cache durations for different responses depending on the situation.
  core.String? cacheDuration;

  /// Unordered list.
  ///
  /// The unordered list of full hashes found.
  core.List<GoogleSecuritySafebrowsingV5FullHash>? fullHashes;

  GoogleSecuritySafebrowsingV5SearchHashesResponse({
    this.cacheDuration,
    this.fullHashes,
  });

  GoogleSecuritySafebrowsingV5SearchHashesResponse.fromJson(core.Map json_)
      : this(
          cacheDuration: json_.containsKey('cacheDuration')
              ? json_['cacheDuration'] as core.String
              : null,
          fullHashes: json_.containsKey('fullHashes')
              ? (json_['fullHashes'] as core.List)
                  .map((value) => GoogleSecuritySafebrowsingV5FullHash.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cacheDuration != null) 'cacheDuration': cacheDuration!,
        if (fullHashes != null) 'fullHashes': fullHashes!,
      };
}
