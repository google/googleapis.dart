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
///   - [ProjectsDefaultBucketResource]
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

  FirebasestorageApi(
    http.Client client, {
    core.String rootUrl = 'https://firebasestorage.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsBucketsResource get buckets => ProjectsBucketsResource(_requester);
  ProjectsDefaultBucketResource get defaultBucket =>
      ProjectsDefaultBucketResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Unlinks and deletes the default bucket.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the default bucket to delete,
  /// `projects/{project_id_or_number}/defaultBucket`.
  /// Value must have pattern `^projects/\[^/\]+/defaultBucket$`.
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
  async.Future<Empty> deleteDefaultBucket(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the default bucket.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the default bucket to retrieve,
  /// `projects/{project_id_or_number}/defaultBucket`.
  /// Value must have pattern `^projects/\[^/\]+/defaultBucket$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DefaultBucket].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DefaultBucket> getDefaultBucket(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DefaultBucket.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
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
  /// `projects/{project_id_or_number}/buckets/{bucket_id}`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$bucket') + ':addFirebase';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Bucket.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a single linked storage bucket.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the bucket, mirrors the ID of the
  /// underlying Google Cloud Storage bucket,
  /// `projects/{project_id_or_number}/buckets/{bucket_id}`.
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
  async.Future<Bucket> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Bucket.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the linked storage buckets for a project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the parent Firebase project,
  /// `projects/{project_id_or_number}`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/buckets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBucketsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Unlinks a linked Google Cloud Storage bucket from a Firebase project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Required. Resource name of the bucket, mirrors the ID of the
  /// underlying Google Cloud Storage bucket,
  /// `projects/{project_id_or_number}/buckets/{bucket_id}`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$bucket') + ':removeFirebase';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDefaultBucketResource {
  final commons.ApiRequester _requester;

  ProjectsDefaultBucketResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a Spark tier-eligible Cloud Storage bucket and links it to your
  /// Firebase project.
  ///
  /// If the default bucket already exists, this method will re-link it to your
  /// Firebase project. See https://firebase.google.com/pricing for pricing
  /// details.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where the default bucket will be
  /// created, `projects/{project_id_or_number}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DefaultBucket].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DefaultBucket> create(
    DefaultBucket request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/defaultBucket';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DefaultBucket.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// The request used to link a Google Cloud Storage bucket to a Firebase
/// project.
typedef AddFirebaseRequest = $Empty;

/// A storage bucket and its relation to a parent Firebase project.
class Bucket {
  /// Resource name of the bucket.
  ///
  /// Output only.
  core.String? name;

  Bucket({this.name});

  Bucket.fromJson(core.Map json_) : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
  };
}

/// Spark tier-eligible Cloud Storage bucket.
///
/// One per project. This resource exists if the underlying Cloud Storage bucket
/// exists and it is linked to your Firebase project. See
/// https://firebase.google.com/pricing for pricing details.
class DefaultBucket {
  /// Underlying bucket resource.
  ///
  /// Output only.
  Bucket? bucket;

  /// Location of the default bucket.
  ///
  /// Immutable.
  core.String? location;

  /// Resource name of the default bucket.
  core.String? name;

  /// Storage class of the default bucket.
  ///
  /// Supported values are available at
  /// https://cloud.google.com/storage/docs/storage-classes#classes.
  ///
  /// Immutable.
  core.String? storageClass;

  DefaultBucket({this.bucket, this.location, this.name, this.storageClass});

  DefaultBucket.fromJson(core.Map json_)
    : this(
        bucket:
            json_.containsKey('bucket')
                ? Bucket.fromJson(
                  json_['bucket'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        location: json_['location'] as core.String?,
        name: json_['name'] as core.String?,
        storageClass: json_['storageClass'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bucket != null) 'bucket': bucket!,
    if (location != null) 'location': location!,
    if (name != null) 'name': name!,
    if (storageClass != null) 'storageClass': storageClass!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The response returned by `ListBuckets`.
class ListBucketsResponse {
  /// The list of linked buckets.
  core.List<Bucket>? buckets;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListBucketsResponse({this.buckets, this.nextPageToken});

  ListBucketsResponse.fromJson(core.Map json_)
    : this(
        buckets:
            (json_['buckets'] as core.List?)
                ?.map(
                  (value) => Bucket.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (buckets != null) 'buckets': buckets!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The request used to unlink a Google Cloud Storage bucket from a Firebase
/// project.
typedef RemoveFirebaseRequest = $Empty;
