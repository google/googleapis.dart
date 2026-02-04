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
/// - [HashListResource]
/// - [HashListsResource]
/// - [HashesResource]
/// - [UrlsResource]
library;

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

  HashListResource get hashList => HashListResource(_requester);
  HashListsResource get hashLists => HashListsResource(_requester);
  HashesResource get hashes => HashesResource(_requester);
  UrlsResource get urls => UrlsResource(_requester);

  SafebrowsingApi(
    http.Client client, {
    core.String rootUrl = 'https://safebrowsing.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class HashListResource {
  final commons.ApiRequester _requester;

  HashListResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest contents of a hash list.
  ///
  /// A hash list may either by a threat list or a non-threat list such as the
  /// Global Cache. This is a standard Get method as defined by
  /// https://google.aip.dev/131 and the HTTP method is also GET.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of this particular hash list. It may be a
  /// threat list, or it may be the Global Cache.
  ///
  /// [sizeConstraints_maxDatabaseEntries] - Sets the maximum number of entries
  /// that the client is willing to have in the local database for the list.
  /// (The server MAY cause the client to store less than this number of
  /// entries.) If omitted or zero, no database size limit is set.
  ///
  /// [sizeConstraints_maxUpdateEntries] - The maximum size in number of
  /// entries. The update will not contain more entries than this value, but it
  /// is possible that the update will contain fewer entries than this value.
  /// This MUST be at least 1024. If omitted or zero, no update size limit is
  /// set.
  ///
  /// [version] - The version of the hash list that the client already has. If
  /// this is the first time the client is fetching the hash list, this field
  /// MUST be left empty. Otherwise, the client SHOULD supply the version
  /// previously received from the server. The client MUST NOT manipulate those
  /// bytes. **What's new in V5**: in V4 of the API, this was called `states`;
  /// it is now renamed to `version` for clarity.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleSecuritySafebrowsingV5HashList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleSecuritySafebrowsingV5HashList> get(
    core.String name, {
    core.int? sizeConstraints_maxDatabaseEntries,
    core.int? sizeConstraints_maxUpdateEntries,
    core.String? version,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'sizeConstraints.maxDatabaseEntries':
          ?sizeConstraints_maxDatabaseEntries == null
          ? null
          : ['${sizeConstraints_maxDatabaseEntries}'],
      'sizeConstraints.maxUpdateEntries':
          ?sizeConstraints_maxUpdateEntries == null
          ? null
          : ['${sizeConstraints_maxUpdateEntries}'],
      'version': ?version == null ? null : [version],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v5/hashList/' + commons.escapeVariable('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleSecuritySafebrowsingV5HashList.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class HashListsResource {
  final commons.ApiRequester _requester;

  HashListsResource(commons.ApiRequester client) : _requester = client;

  /// Gets multiple hash lists at once.
  ///
  /// It is very common for a client to need to get multiple hash lists. Using
  /// this method is preferred over using the regular Get method multiple times.
  /// This is a standard batch Get method as defined by
  /// https://google.aip.dev/231 and the HTTP method is also GET.
  ///
  /// Request parameters:
  ///
  /// [names] - Required. The names of the particular hash lists. The list MAY
  /// be a threat list, or it may be the Global Cache. The names MUST NOT
  /// contain duplicates; if they did, the client will get an error.
  ///
  /// [sizeConstraints_maxDatabaseEntries] - Sets the maximum number of entries
  /// that the client is willing to have in the local database for the list.
  /// (The server MAY cause the client to store less than this number of
  /// entries.) If omitted or zero, no database size limit is set.
  ///
  /// [sizeConstraints_maxUpdateEntries] - The maximum size in number of
  /// entries. The update will not contain more entries than this value, but it
  /// is possible that the update will contain fewer entries than this value.
  /// This MUST be at least 1024. If omitted or zero, no update size limit is
  /// set.
  ///
  /// [version] - The versions of the hash list that the client already has. If
  /// this is the first time the client is fetching the hash lists, the field
  /// should be left empty. Otherwise, the client should supply the versions
  /// previously received from the server. The client MUST NOT manipulate those
  /// bytes. The client need not send the versions in the same order as the
  /// corresponding list names. The client may send fewer or more versions in a
  /// request than there are names. However the client MUST NOT send multiple
  /// versions that correspond to the same name; if it did, the client will get
  /// an error. Historical note: in V4 of the API, this was called `states`; it
  /// is now renamed to `version` for clarity.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleSecuritySafebrowsingV5BatchGetHashListsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleSecuritySafebrowsingV5BatchGetHashListsResponse> batchGet({
    core.List<core.String>? names,
    core.int? sizeConstraints_maxDatabaseEntries,
    core.int? sizeConstraints_maxUpdateEntries,
    core.List<core.String>? version,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'names': ?names,
      'sizeConstraints.maxDatabaseEntries':
          ?sizeConstraints_maxDatabaseEntries == null
          ? null
          : ['${sizeConstraints_maxDatabaseEntries}'],
      'sizeConstraints.maxUpdateEntries':
          ?sizeConstraints_maxUpdateEntries == null
          ? null
          : ['${sizeConstraints_maxUpdateEntries}'],
      'version': ?version,
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v5/hashLists:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleSecuritySafebrowsingV5BatchGetHashListsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists hash lists.
  ///
  /// In the V5 API, Google will never remove a hash list that has ever been
  /// returned by this method. This enables clients to skip using this method
  /// and simply hard-code all hash lists they need. This is a standard List
  /// method as defined by https://google.aip.dev/132 and the HTTP method is
  /// GET.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of hash lists to return. The service may
  /// return fewer than this value. If unspecified, the server will choose a
  /// page size, which may be larger than the number of hash lists so that
  /// pagination is not necessary.
  ///
  /// [pageToken] - A page token, received from a previous `ListHashLists` call.
  /// Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleSecuritySafebrowsingV5ListHashListsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleSecuritySafebrowsingV5ListHashListsResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v5/hashLists';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleSecuritySafebrowsingV5ListHashListsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class HashesResource {
  final commons.ApiRequester _requester;

  HashesResource(commons.ApiRequester client) : _requester = client;

  /// Searches for full hashes matching the specified prefixes.
  ///
  /// This is a custom method as defined by https://google.aip.dev/136 (the
  /// custom method refers to this method having a custom name within Google's
  /// general API development nomenclature; it does not refer to using a custom
  /// HTTP method).
  ///
  /// Request parameters:
  ///
  /// [hashPrefixes] - Required. The hash prefixes to be looked up. Clients MUST
  /// NOT send more than 1000 hash prefixes. However, following the URL
  /// processing procedure, clients SHOULD NOT need to send more than 30 hash
  /// prefixes. Currently each hash prefix is required to be exactly 4 bytes
  /// long. This MAY be relaxed in the future.
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
      'hashPrefixes': ?hashPrefixes,
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v5/hashes:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleSecuritySafebrowsingV5SearchHashesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class UrlsResource {
  final commons.ApiRequester _requester;

  UrlsResource(commons.ApiRequester client) : _requester = client;

  /// Searches for URLs matching known threats.
  ///
  /// Each URL and it's host-suffix and path-prefix expressions (up to a limited
  /// depth) are checked. This means that the response may contain URLs that
  /// were not included in the request, but are expressions of the requested
  /// URLs.
  ///
  /// Request parameters:
  ///
  /// [urls] - Required. The URLs to be looked up. Clients MUST NOT send more
  /// than 50 URLs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleSecuritySafebrowsingV5SearchUrlsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleSecuritySafebrowsingV5SearchUrlsResponse> search({
    core.List<core.String>? urls,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'urls': ?urls,
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v5/urls:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleSecuritySafebrowsingV5SearchUrlsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// The response containing multiple hash lists.
class GoogleSecuritySafebrowsingV5BatchGetHashListsResponse {
  /// The hash lists in the same order given in the request.
  core.List<GoogleSecuritySafebrowsingV5HashList>? hashLists;

  GoogleSecuritySafebrowsingV5BatchGetHashListsResponse({this.hashLists});

  GoogleSecuritySafebrowsingV5BatchGetHashListsResponse.fromJson(core.Map json_)
    : this(
        hashLists: (json_['hashLists'] as core.List?)
            ?.map(
              (value) => GoogleSecuritySafebrowsingV5HashList.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final hashLists = this.hashLists;
    return {'hashLists': ?hashLists};
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
    fullHash = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Unordered list.
  ///
  /// A repeated field identifying the details relevant to this full hash.
  core.List<GoogleSecuritySafebrowsingV5FullHashFullHashDetail>?
  fullHashDetails;

  GoogleSecuritySafebrowsingV5FullHash({this.fullHash, this.fullHashDetails});

  GoogleSecuritySafebrowsingV5FullHash.fromJson(core.Map json_)
    : this(
        fullHash: json_['fullHash'] as core.String?,
        fullHashDetails: (json_['fullHashDetails'] as core.List?)
            ?.map(
              (value) =>
                  GoogleSecuritySafebrowsingV5FullHashFullHashDetail.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fullHash = this.fullHash;
    final fullHashDetails = this.fullHashDetails;
    return {'fullHash': ?fullHash, 'fullHashDetails': ?fullHashDetails};
  }
}

/// Details about a matching full hash.
///
/// An important note about forward compatibility: new threat types and threat
/// attributes may be added by the server at any time; those additions are
/// considered minor version changes. It is Google's policy not to expose minor
/// version numbers in APIs (see https://cloud.google.com/apis/design/versioning
/// for the versioning policy), so clients MUST be prepared to receive
/// `FullHashDetail` messages containing `ThreatType` enum values or
/// `ThreatAttribute` enum values that are considered invalid by the client.
/// Therefore, it is the client's responsibility to check for the validity of
/// all `ThreatType` and `ThreatAttribute` enum values; if any value is
/// considered invalid, the client MUST disregard the entire `FullHashDetail`
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
  /// - "THREAT_TYPE_UNSPECIFIED" : Unknown threat type. If this is returned by
  /// the server, the client shall disregard the enclosing `FullHashDetail`
  /// altogether.
  /// - "MALWARE" : Malware threat type. Malware is any software or mobile
  /// application specifically designed to harm a computer, a mobile device, the
  /// software it's running, or its users. Malware exhibits malicious behavior
  /// that can include installing software without user consent and installing
  /// harmful software such as viruses. More information can be found
  /// [here](https://developers.google.com/search/docs/monitor-debug/security/malware).
  /// - "SOCIAL_ENGINEERING" : Social engineering threat type. Social
  /// engineering pages falsely purport to act on behalf of a third party with
  /// the intention of confusing viewers into performing an action with which
  /// the viewer would only trust a true agent of that third party. Phishing is
  /// a type of social engineering that tricks the viewer into performing the
  /// specific action of providing information, such as login credentials. More
  /// information can be found
  /// [here](https://developers.google.com/search/docs/monitor-debug/security/social-engineering).
  /// - "UNWANTED_SOFTWARE" : Unwanted software threat type. Unwanted software
  /// is any software that does not adhere to
  /// [Google's Software Principles](https://www.google.com/about/software-principles.html)
  /// but isn't malware.
  /// - "POTENTIALLY_HARMFUL_APPLICATION" : Potentially harmful application
  /// threat type
  /// [as used by Google Play Protect for the Play Store](https://developers.google.com/android/play-protect/potentially-harmful-applications).
  core.String? threatType;

  GoogleSecuritySafebrowsingV5FullHashFullHashDetail({
    this.attributes,
    this.threatType,
  });

  GoogleSecuritySafebrowsingV5FullHashFullHashDetail.fromJson(core.Map json_)
    : this(
        attributes: (json_['attributes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        threatType: json_['threatType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attributes = this.attributes;
    final threatType = this.threatType;
    return {'attributes': ?attributes, 'threatType': ?threatType};
  }
}

/// A list of hashes identified by its name.
class GoogleSecuritySafebrowsingV5HashList {
  /// The 8-byte additions.
  GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit? additionsEightBytes;

  /// The 4-byte additions.
  GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit? additionsFourBytes;

  /// The 16-byte additions.
  GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit? additionsSixteenBytes;

  /// The 32-byte additions.
  GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit? additionsThirtyTwoBytes;

  /// The Rice-delta encoded version of removal indices.
  ///
  /// Since each hash list definitely has less than 2^32 entries, the indices
  /// are treated as 32-bit integers and encoded.
  GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit? compressedRemovals;

  /// Metadata about the hash list.
  ///
  /// This is not populated by the `GetHashList` method, but this is populated
  /// by the `ListHashLists` method.
  GoogleSecuritySafebrowsingV5HashListMetadata? metadata;

  /// Clients should wait at least this long to get the hash list again.
  ///
  /// If omitted or zero, clients SHOULD fetch immediately because it indicates
  /// that the server has an additional update to be sent to the client, but
  /// could not due to the client-specified constraints.
  core.String? minimumWaitDuration;

  /// The name of the hash list.
  ///
  /// Note that the Global Cache is also just a hash list and can be referred to
  /// here.
  core.String? name;

  /// When true, this is a partial diff containing additions and removals based
  /// on what the client already has.
  ///
  /// When false, this is the complete hash list. When false, the client MUST
  /// delete any locally stored version for this hash list. This means that
  /// either the version possessed by the client is seriously out-of-date or the
  /// client data is believed to be corrupt. The `compressed_removals` field
  /// will be empty. When true, the client MUST apply an incremental update by
  /// applying removals and then additions.
  core.bool? partialUpdate;

  /// The sorted list of all hashes, hashed again with SHA256.
  ///
  /// This is the checksum for the sorted list of all hashes present in the
  /// database after applying the provided update. In the case that no updates
  /// were provided, the server will omit this field to indicate that the client
  /// should use the existing checksum.
  core.String? sha256Checksum;
  core.List<core.int> get sha256ChecksumAsBytes =>
      convert.base64.decode(sha256Checksum!);

  set sha256ChecksumAsBytes(core.List<core.int> bytes_) {
    sha256Checksum = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The version of the hash list.
  ///
  /// The client MUST NOT manipulate those bytes.
  core.String? version;
  core.List<core.int> get versionAsBytes => convert.base64.decode(version!);

  set versionAsBytes(core.List<core.int> bytes_) {
    version = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  GoogleSecuritySafebrowsingV5HashList({
    this.additionsEightBytes,
    this.additionsFourBytes,
    this.additionsSixteenBytes,
    this.additionsThirtyTwoBytes,
    this.compressedRemovals,
    this.metadata,
    this.minimumWaitDuration,
    this.name,
    this.partialUpdate,
    this.sha256Checksum,
    this.version,
  });

  GoogleSecuritySafebrowsingV5HashList.fromJson(core.Map json_)
    : this(
        additionsEightBytes: json_.containsKey('additionsEightBytes')
            ? GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit.fromJson(
                json_['additionsEightBytes']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        additionsFourBytes: json_.containsKey('additionsFourBytes')
            ? GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit.fromJson(
                json_['additionsFourBytes']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        additionsSixteenBytes: json_.containsKey('additionsSixteenBytes')
            ? GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit.fromJson(
                json_['additionsSixteenBytes']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        additionsThirtyTwoBytes: json_.containsKey('additionsThirtyTwoBytes')
            ? GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit.fromJson(
                json_['additionsThirtyTwoBytes']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        compressedRemovals: json_.containsKey('compressedRemovals')
            ? GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit.fromJson(
                json_['compressedRemovals']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: json_.containsKey('metadata')
            ? GoogleSecuritySafebrowsingV5HashListMetadata.fromJson(
                json_['metadata'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        minimumWaitDuration: json_['minimumWaitDuration'] as core.String?,
        name: json_['name'] as core.String?,
        partialUpdate: json_['partialUpdate'] as core.bool?,
        sha256Checksum: json_['sha256Checksum'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionsEightBytes = this.additionsEightBytes;
    final additionsFourBytes = this.additionsFourBytes;
    final additionsSixteenBytes = this.additionsSixteenBytes;
    final additionsThirtyTwoBytes = this.additionsThirtyTwoBytes;
    final compressedRemovals = this.compressedRemovals;
    final metadata = this.metadata;
    final minimumWaitDuration = this.minimumWaitDuration;
    final name = this.name;
    final partialUpdate = this.partialUpdate;
    final sha256Checksum = this.sha256Checksum;
    final version = this.version;
    return {
      'additionsEightBytes': ?additionsEightBytes,
      'additionsFourBytes': ?additionsFourBytes,
      'additionsSixteenBytes': ?additionsSixteenBytes,
      'additionsThirtyTwoBytes': ?additionsThirtyTwoBytes,
      'compressedRemovals': ?compressedRemovals,
      'metadata': ?metadata,
      'minimumWaitDuration': ?minimumWaitDuration,
      'name': ?name,
      'partialUpdate': ?partialUpdate,
      'sha256Checksum': ?sha256Checksum,
      'version': ?version,
    };
  }
}

/// Metadata about a particular hash list.
class GoogleSecuritySafebrowsingV5HashListMetadata {
  /// A human-readable description about this list.
  ///
  /// Written in English.
  core.String? description;

  /// The supported hash length for this hash list.
  ///
  /// Each hash list will support exactly one length. If a different hash length
  /// is introduced for the same set of threat types or safe types, it will be
  /// introduced as a separate list with a distinct name and respective hash
  /// length set.
  /// Possible string values are:
  /// - "HASH_LENGTH_UNSPECIFIED" : Unspecified length.
  /// - "FOUR_BYTES" : Each hash is a four-byte prefix.
  /// - "EIGHT_BYTES" : Each hash is an eight-byte prefix.
  /// - "SIXTEEN_BYTES" : Each hash is a sixteen-byte prefix.
  /// - "THIRTY_TWO_BYTES" : Each hash is a thirty-two-byte full hash.
  core.String? hashLength;

  /// Unordered list.
  ///
  /// If not empty, this specifies that the hash list represents a list of
  /// likely safe hashes, and this enumerates the ways they are considered
  /// likely safe. This field is mutually exclusive with the threat_types field.
  core.List<core.String>? likelySafeTypes;

  /// Unordered list.
  ///
  /// If not empty, this specifies that the hash list is a kind of threat list,
  /// and this enumerates the kind of threats associated with hashes or hash
  /// prefixes in this hash list. May be empty if the entry does not represent a
  /// threat, i.e. in the case that it represents a likely safe type.
  core.List<core.String>? threatTypes;

  GoogleSecuritySafebrowsingV5HashListMetadata({
    this.description,
    this.hashLength,
    this.likelySafeTypes,
    this.threatTypes,
  });

  GoogleSecuritySafebrowsingV5HashListMetadata.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        hashLength: json_['hashLength'] as core.String?,
        likelySafeTypes: (json_['likelySafeTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        threatTypes: (json_['threatTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final hashLength = this.hashLength;
    final likelySafeTypes = this.likelySafeTypes;
    final threatTypes = this.threatTypes;
    return {
      'description': ?description,
      'hashLength': ?hashLength,
      'likelySafeTypes': ?likelySafeTypes,
      'threatTypes': ?threatTypes,
    };
  }
}

/// The response containing metadata about hash lists.
class GoogleSecuritySafebrowsingV5ListHashListsResponse {
  /// The hash lists in an arbitrary order.
  ///
  /// Only metadata about the hash lists will be included, not the contents.
  core.List<GoogleSecuritySafebrowsingV5HashList>? hashLists;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleSecuritySafebrowsingV5ListHashListsResponse({
    this.hashLists,
    this.nextPageToken,
  });

  GoogleSecuritySafebrowsingV5ListHashListsResponse.fromJson(core.Map json_)
    : this(
        hashLists: (json_['hashLists'] as core.List?)
            ?.map(
              (value) => GoogleSecuritySafebrowsingV5HashList.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final hashLists = this.hashLists;
    final nextPageToken = this.nextPageToken;
    return {'hashLists': ?hashLists, 'nextPageToken': ?nextPageToken};
  }
}

/// Same as `RiceDeltaEncoded32Bit` except this encodes 128-bit numbers.
class GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit {
  /// The encoded deltas that are encoded using the Golomb-Rice coder.
  core.String? encodedData;
  core.List<core.int> get encodedDataAsBytes =>
      convert.base64.decode(encodedData!);

  set encodedDataAsBytes(core.List<core.int> bytes_) {
    encodedData = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The number of entries that are delta encoded in the encoded data.
  ///
  /// If only a single integer was encoded, this will be zero and the single
  /// value will be stored in `first_value`.
  core.int? entriesCount;

  /// The upper 64 bits of the first entry in the encoded data (hashes).
  ///
  /// If the field is empty, the upper 64 bits are all zero.
  core.String? firstValueHi;

  /// The lower 64 bits of the first entry in the encoded data (hashes).
  ///
  /// If the field is empty, the lower 64 bits are all zero.
  core.String? firstValueLo;

  /// The Golomb-Rice parameter.
  ///
  /// This parameter is guaranteed to be between 99 and 126, inclusive.
  core.int? riceParameter;

  GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit({
    this.encodedData,
    this.entriesCount,
    this.firstValueHi,
    this.firstValueLo,
    this.riceParameter,
  });

  GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit.fromJson(core.Map json_)
    : this(
        encodedData: json_['encodedData'] as core.String?,
        entriesCount: json_['entriesCount'] as core.int?,
        firstValueHi: json_['firstValueHi'] as core.String?,
        firstValueLo: json_['firstValueLo'] as core.String?,
        riceParameter: json_['riceParameter'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final encodedData = this.encodedData;
    final entriesCount = this.entriesCount;
    final firstValueHi = this.firstValueHi;
    final firstValueLo = this.firstValueLo;
    final riceParameter = this.riceParameter;
    return {
      'encodedData': ?encodedData,
      'entriesCount': ?entriesCount,
      'firstValueHi': ?firstValueHi,
      'firstValueLo': ?firstValueLo,
      'riceParameter': ?riceParameter,
    };
  }
}

/// Same as `RiceDeltaEncoded32Bit` except this encodes 256-bit numbers.
class GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit {
  /// The encoded deltas that are encoded using the Golomb-Rice coder.
  core.String? encodedData;
  core.List<core.int> get encodedDataAsBytes =>
      convert.base64.decode(encodedData!);

  set encodedDataAsBytes(core.List<core.int> bytes_) {
    encodedData = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The number of entries that are delta encoded in the encoded data.
  ///
  /// If only a single integer was encoded, this will be zero and the single
  /// value will be stored in `first_value`.
  core.int? entriesCount;

  /// The first 64 bits of the first entry in the encoded data (hashes).
  ///
  /// If the field is empty, the first 64 bits are all zero.
  core.String? firstValueFirstPart;

  /// The last 64 bits of the first entry in the encoded data (hashes).
  ///
  /// If the field is empty, the last 64 bits are all zero.
  core.String? firstValueFourthPart;

  /// The 65 through 128th bits of the first entry in the encoded data (hashes).
  ///
  /// If the field is empty, the 65 through 128th bits are all zero.
  core.String? firstValueSecondPart;

  /// The 129 through 192th bits of the first entry in the encoded data
  /// (hashes).
  ///
  /// If the field is empty, the 129 through 192th bits are all zero.
  core.String? firstValueThirdPart;

  /// The Golomb-Rice parameter.
  ///
  /// This parameter is guaranteed to be between 227 and 254, inclusive.
  core.int? riceParameter;

  GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit({
    this.encodedData,
    this.entriesCount,
    this.firstValueFirstPart,
    this.firstValueFourthPart,
    this.firstValueSecondPart,
    this.firstValueThirdPart,
    this.riceParameter,
  });

  GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit.fromJson(core.Map json_)
    : this(
        encodedData: json_['encodedData'] as core.String?,
        entriesCount: json_['entriesCount'] as core.int?,
        firstValueFirstPart: json_['firstValueFirstPart'] as core.String?,
        firstValueFourthPart: json_['firstValueFourthPart'] as core.String?,
        firstValueSecondPart: json_['firstValueSecondPart'] as core.String?,
        firstValueThirdPart: json_['firstValueThirdPart'] as core.String?,
        riceParameter: json_['riceParameter'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final encodedData = this.encodedData;
    final entriesCount = this.entriesCount;
    final firstValueFirstPart = this.firstValueFirstPart;
    final firstValueFourthPart = this.firstValueFourthPart;
    final firstValueSecondPart = this.firstValueSecondPart;
    final firstValueThirdPart = this.firstValueThirdPart;
    final riceParameter = this.riceParameter;
    return {
      'encodedData': ?encodedData,
      'entriesCount': ?entriesCount,
      'firstValueFirstPart': ?firstValueFirstPart,
      'firstValueFourthPart': ?firstValueFourthPart,
      'firstValueSecondPart': ?firstValueSecondPart,
      'firstValueThirdPart': ?firstValueThirdPart,
      'riceParameter': ?riceParameter,
    };
  }
}

/// The Rice-Golomb encoded data.
///
/// Used for either hashes or removal indices. It is guaranteed that every hash
/// or index here has the same length, and this length is exactly 32 bits.
/// Generally speaking, if we sort all the entries lexicographically, we will
/// find that the higher order bits tend not to change as frequently as lower
/// order bits. This means that if we also take the adjacent difference between
/// entries, the higher order bits have a high probability of being zero. This
/// exploits this high probability of zero by essentially choosing a certain
/// number of bits; all bits more significant than this are likely to be zero so
/// we use unary encoding. See the `rice_parameter` field. Historical note: the
/// Rice-delta encoding was first used in V4 of this API. In V5, two significant
/// improvements were made: firstly, the Rice-delta encoding is now available
/// with hash prefixes longer than 4 bytes; secondly, the encoded data are now
/// treated as big-endian so as to avoid a costly sorting step.
class GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit {
  /// The encoded deltas that are encoded using the Golomb-Rice coder.
  core.String? encodedData;
  core.List<core.int> get encodedDataAsBytes =>
      convert.base64.decode(encodedData!);

  set encodedDataAsBytes(core.List<core.int> bytes_) {
    encodedData = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The number of entries that are delta encoded in the encoded data.
  ///
  /// If only a single integer was encoded, this will be zero and the single
  /// value will be stored in `first_value`.
  core.int? entriesCount;

  /// The first entry in the encoded data (hashes or indices), or, if only a
  /// single hash prefix or index was encoded, that entry's value.
  ///
  /// If the field is empty, the entry is zero.
  core.int? firstValue;

  /// The Golomb-Rice parameter.
  ///
  /// This parameter is guaranteed to be between 3 and 30, inclusive.
  core.int? riceParameter;

  GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit({
    this.encodedData,
    this.entriesCount,
    this.firstValue,
    this.riceParameter,
  });

  GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit.fromJson(core.Map json_)
    : this(
        encodedData: json_['encodedData'] as core.String?,
        entriesCount: json_['entriesCount'] as core.int?,
        firstValue: json_['firstValue'] as core.int?,
        riceParameter: json_['riceParameter'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final encodedData = this.encodedData;
    final entriesCount = this.entriesCount;
    final firstValue = this.firstValue;
    final riceParameter = this.riceParameter;
    return {
      'encodedData': ?encodedData,
      'entriesCount': ?entriesCount,
      'firstValue': ?firstValue,
      'riceParameter': ?riceParameter,
    };
  }
}

/// Same as `RiceDeltaEncoded32Bit` except this encodes 64-bit numbers.
class GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit {
  /// The encoded deltas that are encoded using the Golomb-Rice coder.
  core.String? encodedData;
  core.List<core.int> get encodedDataAsBytes =>
      convert.base64.decode(encodedData!);

  set encodedDataAsBytes(core.List<core.int> bytes_) {
    encodedData = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The number of entries that are delta encoded in the encoded data.
  ///
  /// If only a single integer was encoded, this will be zero and the single
  /// value will be stored in `first_value`.
  core.int? entriesCount;

  /// The first entry in the encoded data (hashes), or, if only a single hash
  /// prefix was encoded, that entry's value.
  ///
  /// If the field is empty, the entry is zero.
  core.String? firstValue;

  /// The Golomb-Rice parameter.
  ///
  /// This parameter is guaranteed to be between 35 and 62, inclusive.
  core.int? riceParameter;

  GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit({
    this.encodedData,
    this.entriesCount,
    this.firstValue,
    this.riceParameter,
  });

  GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit.fromJson(core.Map json_)
    : this(
        encodedData: json_['encodedData'] as core.String?,
        entriesCount: json_['entriesCount'] as core.int?,
        firstValue: json_['firstValue'] as core.String?,
        riceParameter: json_['riceParameter'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final encodedData = this.encodedData;
    final entriesCount = this.entriesCount;
    final firstValue = this.firstValue;
    final riceParameter = this.riceParameter;
    return {
      'encodedData': ?encodedData,
      'entriesCount': ?entriesCount,
      'firstValue': ?firstValue,
      'riceParameter': ?riceParameter,
    };
  }
}

/// The response returned after searching threat hashes.
///
/// If nothing is found, the server will return an OK status (HTTP status code
/// 200) with the `full_hashes` field empty, rather than returning a NOT_FOUND
/// status (HTTP status code 404). **What's new in V5**: There is a separation
/// between `FullHash` and `FullHashDetail`. In the case when a hash represents
/// a site having multiple threats (e.g. both MALWARE and SOCIAL_ENGINEERING),
/// the full hash does not need to be sent twice as in V4. Furthermore, the
/// cache duration has been simplified into a single `cache_duration` field.
class GoogleSecuritySafebrowsingV5SearchHashesResponse {
  /// The client-side cache duration.
  ///
  /// The client MUST add this duration to the current time to determine the
  /// expiration time. The expiration time then applies to every hash prefix
  /// queried by the client in the request, regardless of how many full hashes
  /// are returned in the response. Even if the server returns no full hashes
  /// for a particular hash prefix, this fact MUST also be cached by the client.
  /// If and only if the field `full_hashes` is empty, the client MAY increase
  /// the `cache_duration` to determine a new expiration that is later than that
  /// specified by the server. In any case, the increased cache duration must
  /// not be longer than 24 hours. Important: the client MUST NOT assume that
  /// the server will return the same cache duration for all responses. The
  /// server MAY choose different cache durations for different responses
  /// depending on the situation.
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
        cacheDuration: json_['cacheDuration'] as core.String?,
        fullHashes: (json_['fullHashes'] as core.List?)
            ?.map(
              (value) => GoogleSecuritySafebrowsingV5FullHash.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cacheDuration = this.cacheDuration;
    final fullHashes = this.fullHashes;
    return {'cacheDuration': ?cacheDuration, 'fullHashes': ?fullHashes};
  }
}

/// The response returned after searching threats matching the specified URLs.
///
/// If nothing is found, the server will return an OK status (HTTP status code
/// 200) with the `threats` field empty, rather than returning a NOT_FOUND
/// status (HTTP status code 404).
class GoogleSecuritySafebrowsingV5SearchUrlsResponse {
  /// The client-side cache duration.
  ///
  /// The client MUST add this duration to the current time to determine the
  /// expiration time. The expiration time then applies to every URL queried by
  /// the client in the request, regardless of how many URLs are returned in the
  /// response. Even if the server returns no matches for a particular URL, this
  /// fact MUST also be cached by the client. If and only if the field `threats`
  /// is empty, the client MAY increase the `cache_duration` to determine a new
  /// expiration that is later than that specified by the server. In any case,
  /// the increased cache duration must not be longer than 24 hours. Important:
  /// the client MUST NOT assume that the server will return the same cache
  /// duration for all responses. The server MAY choose different cache
  /// durations for different responses depending on the situation.
  core.String? cacheDuration;

  /// Unordered list.
  ///
  /// The unordered list of threat matches found. Each entry contains a URL and
  /// the threat types that were found matching that URL. The list size can be
  /// greater than the number of URLs in the request as the all expressions of
  /// the URL would've been considered.
  core.List<GoogleSecuritySafebrowsingV5ThreatUrl>? threats;

  GoogleSecuritySafebrowsingV5SearchUrlsResponse({
    this.cacheDuration,
    this.threats,
  });

  GoogleSecuritySafebrowsingV5SearchUrlsResponse.fromJson(core.Map json_)
    : this(
        cacheDuration: json_['cacheDuration'] as core.String?,
        threats: (json_['threats'] as core.List?)
            ?.map(
              (value) => GoogleSecuritySafebrowsingV5ThreatUrl.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cacheDuration = this.cacheDuration;
    final threats = this.threats;
    return {'cacheDuration': ?cacheDuration, 'threats': ?threats};
  }
}

/// A URL matching one or more threats.
class GoogleSecuritySafebrowsingV5ThreatUrl {
  /// Unordered list.
  ///
  /// The unordered list of threat that the URL is classified as.
  core.List<core.String>? threatTypes;

  /// The requested URL that was matched by one or more threats.
  core.String? url;

  GoogleSecuritySafebrowsingV5ThreatUrl({this.threatTypes, this.url});

  GoogleSecuritySafebrowsingV5ThreatUrl.fromJson(core.Map json_)
    : this(
        threatTypes: (json_['threatTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final threatTypes = this.threatTypes;
    final url = this.url;
    return {'threatTypes': ?threatTypes, 'url': ?url};
  }
}
