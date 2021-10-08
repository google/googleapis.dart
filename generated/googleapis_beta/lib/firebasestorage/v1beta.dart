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

/// Cloud Storage for Firebase API - v1beta
///
/// The Cloud Storage for Firebase API enables programmatic management of Cloud
/// Storage buckets for use in Firebase projects
///
/// For more information, see <https://firebase.google.com/docs/storage>
///
/// Create an instance of [FirebasestorageApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsBucketsResource]
library firebasestorage.v1beta;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Cloud Storage for Firebase API enables programmatic management of Cloud
/// Storage buckets for use in Firebase projects
class FirebasestorageApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and administer all your Firebase data and settings
  static const firebaseScope = 'https://www.googleapis.com/auth/firebase';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  FirebasestorageApi(http.Client client,
      {core.String rootUrl = 'https://firebasestorage.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsBucketsResource get buckets => ProjectsBucketsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsBucketsResource {
  final commons.ApiRequester _requester;

  ProjectsBucketsResource(commons.ApiRequester client) : _requester = client;

  /// Links a Google Cloud Storage bucket to a Firebase project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Required. Resource name of the bucket, mirrors the ID of the
  /// underlying Google Cloud Storage bucket,
  /// `projects/{project_number}/buckets/{bucket_id}`.
  /// Value must have pattern `^projects/\[^/\]+/buckets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Bucket].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Bucket> addFirebase(
    AddFirebaseRequest request,
    core.String bucket, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$bucket') + ':addFirebase';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Bucket.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a single linked storage bucket.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the bucket, mirrors the ID of the
  /// underlying Google Cloud Storage bucket,
  /// `projects/{project_number}/buckets/{bucket_id}`.
  /// Value must have pattern `^projects/\[^/\]+/buckets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Bucket].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Bucket> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Bucket.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the linked storage buckets for a project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the parent Firebase project,
  /// `projects/{project_number}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of buckets to return. If not set, the
  /// server will use a reasonable default.
  ///
  /// [pageToken] - A page token, received from a previous `ListBuckets` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListBuckets` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBucketsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBucketsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$parent') + '/buckets';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListBucketsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Unlinks a linked Google Cloud Storage bucket from a Firebase project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Required. Resource name of the bucket, mirrors the ID of the
  /// underlying Google Cloud Storage bucket,
  /// `projects/{project_number}/buckets/{bucket_id}`.
  /// Value must have pattern `^projects/\[^/\]+/buckets/\[^/\]+$`.
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
  async.Future<Empty> removeFirebase(
    RemoveFirebaseRequest request,
    core.String bucket, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$bucket') + ':removeFirebase';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

/// The request used to link a Google Cloud Storage bucket to a Firebase
/// project.
typedef AddFirebaseRequest = $Empty;

/// A storage bucket and its relation to a parent Firebase project.
class Bucket {
  /// Location of the storage bucket.
  ///
  /// Output only.
  core.String? location;

  /// Resource name of the bucket.
  core.String? name;

  /// Represents whether a bucket is being moved to a new location, in which
  /// case reconciling is set to true.
  ///
  /// Output only.
  core.bool? reconciling;

  Bucket({
    this.location,
    this.name,
    this.reconciling,
  });

  Bucket.fromJson(core.Map _json)
      : this(
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          reconciling: _json.containsKey('reconciling')
              ? _json['reconciling'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
        if (reconciling != null) 'reconciling': reconciling!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef Empty = $Empty;

/// Metadata for MigrateLocationDestructively LRO.
typedef GoogleFirebaseStorageControlplaneV1alphaMigrateLocationDestructivelyMetadata
    = $MigrateLocationDestructivelyMetadata;

/// Metadata for MigrateLocationDestructively LRO.
typedef GoogleFirebaseStorageControlplaneV1betaMigrateLocationDestructivelyMetadata
    = $MigrateLocationDestructivelyMetadata;

/// The response returned by `ListBuckets`.
class ListBucketsResponse {
  /// The list of linked buckets.
  core.List<Bucket>? buckets;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListBucketsResponse({
    this.buckets,
    this.nextPageToken,
  });

  ListBucketsResponse.fromJson(core.Map _json)
      : this(
          buckets: _json.containsKey('buckets')
              ? (_json['buckets'] as core.List)
                  .map((value) => Bucket.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buckets != null) 'buckets': buckets!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The request used to unlink a Google Cloud Storage bucket from a Firebase
/// project.
typedef RemoveFirebaseRequest = $Empty;
