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

/// Web Risk API - v1
///
/// For more information, see <https://cloud.google.com/web-risk/>
///
/// Create an instance of [WebRiskApi] to access these resources:
///
/// - [HashesResource]
/// - [ProjectsResource]
///   - [ProjectsOperationsResource]
///   - [ProjectsSubmissionsResource]
///   - [ProjectsUrisResource]
/// - [ThreatListsResource]
/// - [UrisResource]
library webrisk.v1;

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

class WebRiskApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  HashesResource get hashes => HashesResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);
  ThreatListsResource get threatLists => ThreatListsResource(_requester);
  UrisResource get uris => UrisResource(_requester);

  WebRiskApi(http.Client client,
      {core.String rootUrl = 'https://webrisk.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class HashesResource {
  final commons.ApiRequester _requester;

  HashesResource(commons.ApiRequester client) : _requester = client;

  /// Gets the full hashes that match the requested hash prefix.
  ///
  /// This is used after a hash prefix is looked up in a threatList and there is
  /// a match. The client side threatList only holds partial hashes so the
  /// client must query this method to determine if there is a full hash match
  /// of a threat.
  ///
  /// Request parameters:
  ///
  /// [hashPrefix] - A hash prefix, consisting of the most significant 4-32
  /// bytes of a SHA256 hash. For JSON requests, this field is base64-encoded.
  /// Note that if this parameter is provided by a URI, it must be encoded using
  /// the web safe base64 variant (RFC 4648).
  ///
  /// [threatTypes] - Required. The ThreatLists to search in. Multiple
  /// ThreatLists may be specified.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudWebriskV1SearchHashesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudWebriskV1SearchHashesResponse> search({
    core.String? hashPrefix,
    core.List<core.String>? threatTypes,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (hashPrefix != null) 'hashPrefix': [hashPrefix],
      if (threatTypes != null) 'threatTypes': threatTypes,
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/hashes:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudWebriskV1SearchHashesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsOperationsResource get operations =>
      ProjectsOperationsResource(_requester);
  ProjectsSubmissionsResource get submissions =>
      ProjectsSubmissionsResource(_requester);
  ProjectsUrisResource get uris => ProjectsUrisResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsOperationsResource(commons.ApiRequester client) : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern `^projects/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> cancel(
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
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern `^projects/\[^/\]+/operations/\[^/\]+$`.
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
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^projects/\[^/\]+/operations/\[^/\]+$`.
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
  /// Value must have pattern `^projects/\[^/\]+$`.
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

class ProjectsSubmissionsResource {
  final commons.ApiRequester _requester;

  ProjectsSubmissionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Submission of a URI suspected of containing phishing content to
  /// be reviewed.
  ///
  /// If the result verifies the existence of malicious phishing content, the
  /// site will be added to the
  /// [Google's Social Engineering lists](https://support.google.com/webmasters/answer/6350487/)
  /// in order to protect users that could get exposed to this threat in the
  /// future. Only allowlisted projects can use this method during Early Access.
  /// Please reach out to Sales or your customer engineer to obtain access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project that is making the
  /// submission. This string is in the format "projects/{project_number}".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudWebriskV1Submission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudWebriskV1Submission> create(
    GoogleCloudWebriskV1Submission request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/submissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudWebriskV1Submission.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsUrisResource {
  final commons.ApiRequester _requester;

  ProjectsUrisResource(commons.ApiRequester client) : _requester = client;

  /// Submits a URI suspected of containing malicious content to be reviewed.
  ///
  /// Returns a google.longrunning.Operation which, once the review is complete,
  /// is updated with its result. You can use the
  /// [Pub/Sub API](https://cloud.google.com/pubsub) to receive notifications
  /// for the returned Operation. If the result verifies the existence of
  /// malicious content, the site will be added to the
  /// [Google's Social Engineering lists](https://support.google.com/webmasters/answer/6350487/)
  /// in order to protect users that could get exposed to this threat in the
  /// future. Only allowlisted projects can use this method during Early Access.
  /// Please reach out to Sales or your customer engineer to obtain access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project that is making the
  /// submission. This string is in the format "projects/{project_number}".
  /// Value must have pattern `^projects/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> submit(
    GoogleCloudWebriskV1SubmitUriRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/uris:submit';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ThreatListsResource {
  final commons.ApiRequester _requester;

  ThreatListsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the most recent threat list diffs.
  ///
  /// These diffs should be applied to a local database of hashes to keep it
  /// up-to-date. If the local database is empty or excessively out-of-date, a
  /// complete snapshot of the database will be returned. This Method only
  /// updates a single ThreatList at a time. To update multiple ThreatList
  /// databases, this method needs to be called once for each list.
  ///
  /// Request parameters:
  ///
  /// [constraints_maxDatabaseEntries] - Sets the maximum number of entries that
  /// the client is willing to have in the local database. This should be a
  /// power of 2 between 2**10 and 2**20. If zero, no database size limit is
  /// set.
  ///
  /// [constraints_maxDiffEntries] - The maximum size in number of entries. The
  /// diff will not contain more entries than this value. This should be a power
  /// of 2 between 2**10 and 2**20. If zero, no diff size limit is set.
  ///
  /// [constraints_supportedCompressions] - The compression types supported by
  /// the client.
  ///
  /// [threatType] - Required. The threat list to update. Only a single
  /// ThreatType should be specified per request. If you want to handle multiple
  /// ThreatTypes, you must make one request per ThreatType.
  /// Possible string values are:
  /// - "THREAT_TYPE_UNSPECIFIED" : No entries should match this threat type.
  /// This threat type is unused.
  /// - "MALWARE" : Malware targeting any platform.
  /// - "SOCIAL_ENGINEERING" : Social engineering targeting any platform.
  /// - "UNWANTED_SOFTWARE" : Unwanted software targeting any platform.
  /// - "SOCIAL_ENGINEERING_EXTENDED_COVERAGE" : A list of extended coverage
  /// social engineering URIs targeting any platform.
  ///
  /// [versionToken] - The current version token of the client for the requested
  /// list (the client version that was received from the last successful diff).
  /// If the client does not have a version token (this is the first time
  /// calling ComputeThreatListDiff), this may be left empty and a full database
  /// snapshot will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudWebriskV1ComputeThreatListDiffResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudWebriskV1ComputeThreatListDiffResponse> computeDiff({
    core.int? constraints_maxDatabaseEntries,
    core.int? constraints_maxDiffEntries,
    core.List<core.String>? constraints_supportedCompressions,
    core.String? threatType,
    core.String? versionToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (constraints_maxDatabaseEntries != null)
        'constraints.maxDatabaseEntries': ['${constraints_maxDatabaseEntries}'],
      if (constraints_maxDiffEntries != null)
        'constraints.maxDiffEntries': ['${constraints_maxDiffEntries}'],
      if (constraints_supportedCompressions != null)
        'constraints.supportedCompressions': constraints_supportedCompressions,
      if (threatType != null) 'threatType': [threatType],
      if (versionToken != null) 'versionToken': [versionToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/threatLists:computeDiff';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudWebriskV1ComputeThreatListDiffResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class UrisResource {
  final commons.ApiRequester _requester;

  UrisResource(commons.ApiRequester client) : _requester = client;

  /// This method is used to check whether a URI is on a given threatList.
  ///
  /// Multiple threatLists may be searched in a single query. The response will
  /// list all requested threatLists the URI was found to match. If the URI is
  /// not found on any of the requested ThreatList an empty response will be
  /// returned.
  ///
  /// Request parameters:
  ///
  /// [threatTypes] - Required. The ThreatLists to search in. Multiple
  /// ThreatLists may be specified.
  ///
  /// [uri] - Required. The URI to be checked for matches.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudWebriskV1SearchUrisResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudWebriskV1SearchUrisResponse> search({
    core.List<core.String>? threatTypes,
    core.String? uri,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (threatTypes != null) 'threatTypes': threatTypes,
      if (uri != null) 'uri': [uri],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/uris:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudWebriskV1SearchUrisResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class GoogleCloudWebriskV1ComputeThreatListDiffResponse {
  /// A set of entries to add to a local threat type's list.
  GoogleCloudWebriskV1ThreatEntryAdditions? additions;

  /// The expected SHA256 hash of the client state; that is, of the sorted list
  /// of all hashes present in the database after applying the provided diff.
  ///
  /// If the client state doesn't match the expected state, the client must
  /// discard this diff and retry later.
  GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum? checksum;

  /// The new opaque client version token.
  ///
  /// This should be retained by the client and passed into the next call of
  /// ComputeThreatListDiff as 'version_token'. A separate version token should
  /// be stored and used for each threatList.
  core.String? newVersionToken;
  core.List<core.int> get newVersionTokenAsBytes =>
      convert.base64.decode(newVersionToken!);

  set newVersionTokenAsBytes(core.List<core.int> bytes_) {
    newVersionToken =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The soonest the client should wait before issuing any diff request.
  ///
  /// Querying sooner is unlikely to produce a meaningful diff. Waiting longer
  /// is acceptable considering the use case. If this field is not set clients
  /// may update as soon as they want.
  core.String? recommendedNextDiff;

  /// A set of entries to remove from a local threat type's list.
  ///
  /// This field may be empty.
  GoogleCloudWebriskV1ThreatEntryRemovals? removals;

  /// The type of response.
  ///
  /// This may indicate that an action must be taken by the client when the
  /// response is received.
  /// Possible string values are:
  /// - "RESPONSE_TYPE_UNSPECIFIED" : Unknown.
  /// - "DIFF" : Partial updates are applied to the client's existing local
  /// database.
  /// - "RESET" : Full updates resets the client's entire local database. This
  /// means that either the client had no state, was seriously out-of-date, or
  /// the client is believed to be corrupt.
  core.String? responseType;

  GoogleCloudWebriskV1ComputeThreatListDiffResponse({
    this.additions,
    this.checksum,
    this.newVersionToken,
    this.recommendedNextDiff,
    this.removals,
    this.responseType,
  });

  GoogleCloudWebriskV1ComputeThreatListDiffResponse.fromJson(core.Map json_)
      : this(
          additions: json_.containsKey('additions')
              ? GoogleCloudWebriskV1ThreatEntryAdditions.fromJson(
                  json_['additions'] as core.Map<core.String, core.dynamic>)
              : null,
          checksum: json_.containsKey('checksum')
              ? GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum
                  .fromJson(
                      json_['checksum'] as core.Map<core.String, core.dynamic>)
              : null,
          newVersionToken: json_.containsKey('newVersionToken')
              ? json_['newVersionToken'] as core.String
              : null,
          recommendedNextDiff: json_.containsKey('recommendedNextDiff')
              ? json_['recommendedNextDiff'] as core.String
              : null,
          removals: json_.containsKey('removals')
              ? GoogleCloudWebriskV1ThreatEntryRemovals.fromJson(
                  json_['removals'] as core.Map<core.String, core.dynamic>)
              : null,
          responseType: json_.containsKey('responseType')
              ? json_['responseType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additions != null) 'additions': additions!,
        if (checksum != null) 'checksum': checksum!,
        if (newVersionToken != null) 'newVersionToken': newVersionToken!,
        if (recommendedNextDiff != null)
          'recommendedNextDiff': recommendedNextDiff!,
        if (removals != null) 'removals': removals!,
        if (responseType != null) 'responseType': responseType!,
      };
}

/// The expected state of a client's local database.
typedef GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum = $Checksum;

/// The uncompressed threat entries in hash format.
///
/// Hashes can be anywhere from 4 to 32 bytes in size. A large majority are 4
/// bytes, but some hashes are lengthened if they collide with the hash of a
/// popular URI. Used for sending ThreatEntryAdditons to clients that do not
/// support compression, or when sending non-4-byte hashes to clients that do
/// support compression.
class GoogleCloudWebriskV1RawHashes {
  /// The number of bytes for each prefix encoded below.
  ///
  /// This field can be anywhere from 4 (shortest prefix) to 32 (full SHA256
  /// hash). In practice this is almost always 4, except in exceptional
  /// circumstances.
  core.int? prefixSize;

  /// The hashes, in binary format, concatenated into one long string.
  ///
  /// Hashes are sorted in lexicographic order. For JSON API users, hashes are
  /// base64-encoded.
  core.String? rawHashes;
  core.List<core.int> get rawHashesAsBytes => convert.base64.decode(rawHashes!);

  set rawHashesAsBytes(core.List<core.int> bytes_) {
    rawHashes =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  GoogleCloudWebriskV1RawHashes({
    this.prefixSize,
    this.rawHashes,
  });

  GoogleCloudWebriskV1RawHashes.fromJson(core.Map json_)
      : this(
          prefixSize: json_.containsKey('prefixSize')
              ? json_['prefixSize'] as core.int
              : null,
          rawHashes: json_.containsKey('rawHashes')
              ? json_['rawHashes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (prefixSize != null) 'prefixSize': prefixSize!,
        if (rawHashes != null) 'rawHashes': rawHashes!,
      };
}

/// A set of raw indices to remove from a local list.
typedef GoogleCloudWebriskV1RawIndices = $RawIndices;

/// The Rice-Golomb encoded data.
///
/// Used for sending compressed 4-byte hashes or compressed removal indices.
class GoogleCloudWebriskV1RiceDeltaEncoding {
  /// The encoded deltas that are encoded using the Golomb-Rice coder.
  core.String? encodedData;
  core.List<core.int> get encodedDataAsBytes =>
      convert.base64.decode(encodedData!);

  set encodedDataAsBytes(core.List<core.int> bytes_) {
    encodedData =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The number of entries that are delta encoded in the encoded data.
  ///
  /// If only a single integer was encoded, this will be zero and the single
  /// value will be stored in `first_value`.
  core.int? entryCount;

  /// The offset of the first entry in the encoded data, or, if only a single
  /// integer was encoded, that single integer's value.
  ///
  /// If the field is empty or missing, assume zero.
  core.String? firstValue;

  /// The Golomb-Rice parameter, which is a number between 2 and 28.
  ///
  /// This field is missing (that is, zero) if `num_entries` is zero.
  core.int? riceParameter;

  GoogleCloudWebriskV1RiceDeltaEncoding({
    this.encodedData,
    this.entryCount,
    this.firstValue,
    this.riceParameter,
  });

  GoogleCloudWebriskV1RiceDeltaEncoding.fromJson(core.Map json_)
      : this(
          encodedData: json_.containsKey('encodedData')
              ? json_['encodedData'] as core.String
              : null,
          entryCount: json_.containsKey('entryCount')
              ? json_['entryCount'] as core.int
              : null,
          firstValue: json_.containsKey('firstValue')
              ? json_['firstValue'] as core.String
              : null,
          riceParameter: json_.containsKey('riceParameter')
              ? json_['riceParameter'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encodedData != null) 'encodedData': encodedData!,
        if (entryCount != null) 'entryCount': entryCount!,
        if (firstValue != null) 'firstValue': firstValue!,
        if (riceParameter != null) 'riceParameter': riceParameter!,
      };
}

class GoogleCloudWebriskV1SearchHashesResponse {
  /// For requested entities that did not match the threat list, how long to
  /// cache the response until.
  core.String? negativeExpireTime;

  /// The full hashes that matched the requested prefixes.
  ///
  /// The hash will be populated in the key.
  core.List<GoogleCloudWebriskV1SearchHashesResponseThreatHash>? threats;

  GoogleCloudWebriskV1SearchHashesResponse({
    this.negativeExpireTime,
    this.threats,
  });

  GoogleCloudWebriskV1SearchHashesResponse.fromJson(core.Map json_)
      : this(
          negativeExpireTime: json_.containsKey('negativeExpireTime')
              ? json_['negativeExpireTime'] as core.String
              : null,
          threats: json_.containsKey('threats')
              ? (json_['threats'] as core.List)
                  .map((value) =>
                      GoogleCloudWebriskV1SearchHashesResponseThreatHash
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (negativeExpireTime != null)
          'negativeExpireTime': negativeExpireTime!,
        if (threats != null) 'threats': threats!,
      };
}

/// Contains threat information on a matching hash.
class GoogleCloudWebriskV1SearchHashesResponseThreatHash {
  /// The cache lifetime for the returned match.
  ///
  /// Clients must not cache this response past this timestamp to avoid false
  /// positives.
  core.String? expireTime;

  /// A 32 byte SHA256 hash.
  ///
  /// This field is in binary format. For JSON requests, hashes are
  /// base64-encoded.
  core.String? hash;
  core.List<core.int> get hashAsBytes => convert.base64.decode(hash!);

  set hashAsBytes(core.List<core.int> bytes_) {
    hash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The ThreatList this threat belongs to.
  ///
  /// This must contain at least one entry.
  core.List<core.String>? threatTypes;

  GoogleCloudWebriskV1SearchHashesResponseThreatHash({
    this.expireTime,
    this.hash,
    this.threatTypes,
  });

  GoogleCloudWebriskV1SearchHashesResponseThreatHash.fromJson(core.Map json_)
      : this(
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          hash: json_.containsKey('hash') ? json_['hash'] as core.String : null,
          threatTypes: json_.containsKey('threatTypes')
              ? (json_['threatTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expireTime != null) 'expireTime': expireTime!,
        if (hash != null) 'hash': hash!,
        if (threatTypes != null) 'threatTypes': threatTypes!,
      };
}

class GoogleCloudWebriskV1SearchUrisResponse {
  /// The threat list matches.
  ///
  /// This might be empty if the URI is on no list.
  GoogleCloudWebriskV1SearchUrisResponseThreatUri? threat;

  GoogleCloudWebriskV1SearchUrisResponse({
    this.threat,
  });

  GoogleCloudWebriskV1SearchUrisResponse.fromJson(core.Map json_)
      : this(
          threat: json_.containsKey('threat')
              ? GoogleCloudWebriskV1SearchUrisResponseThreatUri.fromJson(
                  json_['threat'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (threat != null) 'threat': threat!,
      };
}

/// Contains threat information on a matching uri.
class GoogleCloudWebriskV1SearchUrisResponseThreatUri {
  /// The cache lifetime for the returned match.
  ///
  /// Clients must not cache this response past this timestamp to avoid false
  /// positives.
  core.String? expireTime;

  /// The ThreatList this threat belongs to.
  core.List<core.String>? threatTypes;

  GoogleCloudWebriskV1SearchUrisResponseThreatUri({
    this.expireTime,
    this.threatTypes,
  });

  GoogleCloudWebriskV1SearchUrisResponseThreatUri.fromJson(core.Map json_)
      : this(
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          threatTypes: json_.containsKey('threatTypes')
              ? (json_['threatTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expireTime != null) 'expireTime': expireTime!,
        if (threatTypes != null) 'threatTypes': threatTypes!,
      };
}

/// Wraps a URI that might be displaying malicious content.
class GoogleCloudWebriskV1Submission {
  /// ThreatTypes found to be associated with the submitted URI after reviewing
  /// it.
  ///
  /// This might be empty if the URI was not added to any list.
  core.List<core.String>? threatTypes;

  /// The URI that is being reported for malicious content to be analyzed.
  ///
  /// Required.
  core.String? uri;

  GoogleCloudWebriskV1Submission({
    this.threatTypes,
    this.uri,
  });

  GoogleCloudWebriskV1Submission.fromJson(core.Map json_)
      : this(
          threatTypes: json_.containsKey('threatTypes')
              ? (json_['threatTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (threatTypes != null) 'threatTypes': threatTypes!,
        if (uri != null) 'uri': uri!,
      };
}

/// Request to send a potentially malicious URI to WebRisk.
class GoogleCloudWebriskV1SubmitUriRequest {
  /// The submission that contains the URI to be scanned.
  ///
  /// Required.
  GoogleCloudWebriskV1Submission? submission;

  GoogleCloudWebriskV1SubmitUriRequest({
    this.submission,
  });

  GoogleCloudWebriskV1SubmitUriRequest.fromJson(core.Map json_)
      : this(
          submission: json_.containsKey('submission')
              ? GoogleCloudWebriskV1Submission.fromJson(
                  json_['submission'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (submission != null) 'submission': submission!,
      };
}

/// Contains the set of entries to add to a local database.
///
/// May contain a combination of compressed and raw data in a single response.
class GoogleCloudWebriskV1ThreatEntryAdditions {
  /// The raw SHA256-formatted entries.
  ///
  /// Repeated to allow returning sets of hashes with different prefix sizes.
  core.List<GoogleCloudWebriskV1RawHashes>? rawHashes;

  /// The encoded 4-byte prefixes of SHA256-formatted entries, using a
  /// Golomb-Rice encoding.
  ///
  /// The hashes are converted to uint32, sorted in ascending order, then delta
  /// encoded and stored as encoded_data.
  GoogleCloudWebriskV1RiceDeltaEncoding? riceHashes;

  GoogleCloudWebriskV1ThreatEntryAdditions({
    this.rawHashes,
    this.riceHashes,
  });

  GoogleCloudWebriskV1ThreatEntryAdditions.fromJson(core.Map json_)
      : this(
          rawHashes: json_.containsKey('rawHashes')
              ? (json_['rawHashes'] as core.List)
                  .map((value) => GoogleCloudWebriskV1RawHashes.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          riceHashes: json_.containsKey('riceHashes')
              ? GoogleCloudWebriskV1RiceDeltaEncoding.fromJson(
                  json_['riceHashes'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rawHashes != null) 'rawHashes': rawHashes!,
        if (riceHashes != null) 'riceHashes': riceHashes!,
      };
}

/// Contains the set of entries to remove from a local database.
class GoogleCloudWebriskV1ThreatEntryRemovals {
  /// The raw removal indices for a local list.
  GoogleCloudWebriskV1RawIndices? rawIndices;

  /// The encoded local, lexicographically-sorted list indices, using a
  /// Golomb-Rice encoding.
  ///
  /// Used for sending compressed removal indices. The removal indices (uint32)
  /// are sorted in ascending order, then delta encoded and stored as
  /// encoded_data.
  GoogleCloudWebriskV1RiceDeltaEncoding? riceIndices;

  GoogleCloudWebriskV1ThreatEntryRemovals({
    this.rawIndices,
    this.riceIndices,
  });

  GoogleCloudWebriskV1ThreatEntryRemovals.fromJson(core.Map json_)
      : this(
          rawIndices: json_.containsKey('rawIndices')
              ? GoogleCloudWebriskV1RawIndices.fromJson(
                  json_['rawIndices'] as core.Map<core.String, core.dynamic>)
              : null,
          riceIndices: json_.containsKey('riceIndices')
              ? GoogleCloudWebriskV1RiceDeltaEncoding.fromJson(
                  json_['riceIndices'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rawIndices != null) 'rawIndices': rawIndices!,
        if (riceIndices != null) 'riceIndices': riceIndices!,
      };
}

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
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  GoogleRpcStatus? error;

  /// Contains a `SubmitUriMetadata` object.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// Matches the `/v1/{project-name}/operations/{operation-id}` pattern.
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
