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

/// Cloud Storage JSON API - v1
///
/// Stores and retrieves potentially large, immutable data objects.
///
/// For more information, see
/// <https://developers.google.com/storage/docs/json_api/>
///
/// Create an instance of [StorageApi] to access these resources:
///
/// - [AnywhereCachesResource]
/// - [BucketAccessControlsResource]
/// - [BucketsResource]
/// - [ChannelsResource]
/// - [DefaultObjectAccessControlsResource]
/// - [FoldersResource]
/// - [ManagedFoldersResource]
/// - [NotificationsResource]
/// - [ObjectAccessControlsResource]
/// - [ObjectsResource]
/// - [OperationsResource]
/// - [ProjectsResource]
///   - [ProjectsHmacKeysResource]
///   - [ProjectsServiceAccountResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        ByteRange,
        DetailedApiRequestError,
        DownloadOptions,
        Media,
        PartialDownloadOptions,
        ResumableUploadOptions,
        UploadOptions;

/// Stores and retrieves potentially large, immutable data objects.
class StorageApi {
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View your data across Google Cloud Platform services
  static const cloudPlatformReadOnlyScope =
      'https://www.googleapis.com/auth/cloud-platform.read-only';

  /// Manage your data and permissions in Google Cloud Storage
  static const devstorageFullControlScope =
      'https://www.googleapis.com/auth/devstorage.full_control';

  /// View your data in Google Cloud Storage
  static const devstorageReadOnlyScope =
      'https://www.googleapis.com/auth/devstorage.read_only';

  /// Manage your data in Google Cloud Storage
  static const devstorageReadWriteScope =
      'https://www.googleapis.com/auth/devstorage.read_write';

  final commons.ApiRequester _requester;

  AnywhereCachesResource get anywhereCaches =>
      AnywhereCachesResource(_requester);
  BucketAccessControlsResource get bucketAccessControls =>
      BucketAccessControlsResource(_requester);
  BucketsResource get buckets => BucketsResource(_requester);
  ChannelsResource get channels => ChannelsResource(_requester);
  DefaultObjectAccessControlsResource get defaultObjectAccessControls =>
      DefaultObjectAccessControlsResource(_requester);
  FoldersResource get folders => FoldersResource(_requester);
  ManagedFoldersResource get managedFolders =>
      ManagedFoldersResource(_requester);
  NotificationsResource get notifications => NotificationsResource(_requester);
  ObjectAccessControlsResource get objectAccessControls =>
      ObjectAccessControlsResource(_requester);
  ObjectsResource get objects => ObjectsResource(_requester);
  OperationsResource get operations => OperationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  StorageApi(http.Client client,
      {core.String rootUrl = 'https://storage.googleapis.com/',
      core.String servicePath = 'storage/v1/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AnywhereCachesResource {
  final commons.ApiRequester _requester;

  AnywhereCachesResource(commons.ApiRequester client) : _requester = client;

  /// Disables an Anywhere Cache instance.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the parent bucket.
  ///
  /// [anywhereCacheId] - The ID of requested Anywhere Cache instance.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AnywhereCache].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AnywhereCache> disable(
    core.String bucket,
    core.String anywhereCacheId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/anywhereCaches/' +
        commons.escapeVariable('$anywhereCacheId') +
        '/disable';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return AnywhereCache.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the metadata of an Anywhere Cache instance.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the parent bucket.
  ///
  /// [anywhereCacheId] - The ID of requested Anywhere Cache instance.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AnywhereCache].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AnywhereCache> get(
    core.String bucket,
    core.String anywhereCacheId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/anywhereCaches/' +
        commons.escapeVariable('$anywhereCacheId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AnywhereCache.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates an Anywhere Cache instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the parent bucket.
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
  async.Future<GoogleLongrunningOperation> insert(
    AnywhereCache request,
    core.String bucket, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' + commons.escapeVariable('$bucket') + '/anywhereCaches';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of Anywhere Cache instances of the bucket matching the
  /// criteria.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the parent bucket.
  ///
  /// [pageSize] - Maximum number of items to return in a single page of
  /// responses. Maximum 1000.
  ///
  /// [pageToken] - A previously-returned page token representing part of the
  /// larger set of results to view.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AnywhereCaches].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AnywhereCaches> list(
    core.String bucket, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' + commons.escapeVariable('$bucket') + '/anywhereCaches';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AnywhereCaches.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Pauses an Anywhere Cache instance.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the parent bucket.
  ///
  /// [anywhereCacheId] - The ID of requested Anywhere Cache instance.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AnywhereCache].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AnywhereCache> pause(
    core.String bucket,
    core.String anywhereCacheId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/anywhereCaches/' +
        commons.escapeVariable('$anywhereCacheId') +
        '/pause';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return AnywhereCache.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Resumes a paused or disabled Anywhere Cache instance.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the parent bucket.
  ///
  /// [anywhereCacheId] - The ID of requested Anywhere Cache instance.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AnywhereCache].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AnywhereCache> resume(
    core.String bucket,
    core.String anywhereCacheId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/anywhereCaches/' +
        commons.escapeVariable('$anywhereCacheId') +
        '/resume';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return AnywhereCache.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the config(ttl and admissionPolicy) of an Anywhere Cache instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the parent bucket.
  ///
  /// [anywhereCacheId] - The ID of requested Anywhere Cache instance.
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
  async.Future<GoogleLongrunningOperation> update(
    AnywhereCache request,
    core.String bucket,
    core.String anywhereCacheId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/anywhereCaches/' +
        commons.escapeVariable('$anywhereCacheId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class BucketAccessControlsResource {
  final commons.ApiRequester _requester;

  BucketAccessControlsResource(commons.ApiRequester client)
      : _requester = client;

  /// Permanently deletes the ACL entry for the specified entity on the
  /// specified bucket.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [entity] - The entity holding the permission. Can be user-userId,
  /// user-emailAddress, group-groupId, group-emailAddress, allUsers, or
  /// allAuthenticatedUsers.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String bucket,
    core.String entity, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/acl/' +
        commons.escapeVariable('$entity');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Returns the ACL entry for the specified entity on the specified bucket.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [entity] - The entity holding the permission. Can be user-userId,
  /// user-emailAddress, group-groupId, group-emailAddress, allUsers, or
  /// allAuthenticatedUsers.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BucketAccessControl].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BucketAccessControl> get(
    core.String bucket,
    core.String entity, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/acl/' +
        commons.escapeVariable('$entity');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BucketAccessControl.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new ACL entry on the specified bucket.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BucketAccessControl].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BucketAccessControl> insert(
    BucketAccessControl request,
    core.String bucket, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' + commons.escapeVariable('$bucket') + '/acl';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BucketAccessControl.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves ACL entries on the specified bucket.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BucketAccessControls].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BucketAccessControls> list(
    core.String bucket, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' + commons.escapeVariable('$bucket') + '/acl';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BucketAccessControls.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Patches an ACL entry on the specified bucket.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [entity] - The entity holding the permission. Can be user-userId,
  /// user-emailAddress, group-groupId, group-emailAddress, allUsers, or
  /// allAuthenticatedUsers.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BucketAccessControl].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BucketAccessControl> patch(
    BucketAccessControl request,
    core.String bucket,
    core.String entity, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/acl/' +
        commons.escapeVariable('$entity');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return BucketAccessControl.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an ACL entry on the specified bucket.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [entity] - The entity holding the permission. Can be user-userId,
  /// user-emailAddress, group-groupId, group-emailAddress, allUsers, or
  /// allAuthenticatedUsers.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BucketAccessControl].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BucketAccessControl> update(
    BucketAccessControl request,
    core.String bucket,
    core.String entity, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/acl/' +
        commons.escapeVariable('$entity');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return BucketAccessControl.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class BucketsResource {
  final commons.ApiRequester _requester;

  BucketsResource(commons.ApiRequester client) : _requester = client;

  /// Permanently deletes an empty bucket.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [ifMetagenerationMatch] - If set, only deletes the bucket if its
  /// metageneration matches this value.
  ///
  /// [ifMetagenerationNotMatch] - If set, only deletes the bucket if its
  /// metageneration does not match this value.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String bucket, {
    core.String? ifMetagenerationMatch,
    core.String? ifMetagenerationNotMatch,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ifMetagenerationMatch != null)
        'ifMetagenerationMatch': [ifMetagenerationMatch],
      if (ifMetagenerationNotMatch != null)
        'ifMetagenerationNotMatch': [ifMetagenerationNotMatch],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' + commons.escapeVariable('$bucket');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Returns metadata for the specified bucket.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [ifMetagenerationMatch] - Makes the return of the bucket metadata
  /// conditional on whether the bucket's current metageneration matches the
  /// given value.
  ///
  /// [ifMetagenerationNotMatch] - Makes the return of the bucket metadata
  /// conditional on whether the bucket's current metageneration does not match
  /// the given value.
  ///
  /// [projection] - Set of properties to return. Defaults to noAcl.
  /// Possible string values are:
  /// - "full" : Include all properties.
  /// - "noAcl" : Omit owner, acl and defaultObjectAcl properties.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
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
    core.String bucket, {
    core.String? ifMetagenerationMatch,
    core.String? ifMetagenerationNotMatch,
    core.String? projection,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ifMetagenerationMatch != null)
        'ifMetagenerationMatch': [ifMetagenerationMatch],
      if (ifMetagenerationNotMatch != null)
        'ifMetagenerationNotMatch': [ifMetagenerationNotMatch],
      if (projection != null) 'projection': [projection],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' + commons.escapeVariable('$bucket');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Bucket.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns an IAM policy for the specified bucket.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [optionsRequestedPolicyVersion] - The IAM policy format version to be
  /// returned. If the optionsRequestedPolicyVersion is for an older version
  /// that doesn't support part of the requested IAM policy, the request fails.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    core.String bucket, {
    core.int? optionsRequestedPolicyVersion,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (optionsRequestedPolicyVersion != null)
        'optionsRequestedPolicyVersion': ['${optionsRequestedPolicyVersion}'],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' + commons.escapeVariable('$bucket') + '/iam';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new bucket.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - A valid API project identifier.
  ///
  /// [enableObjectRetention] - When set to true, object retention is enabled
  /// for this bucket.
  ///
  /// [predefinedAcl] - Apply a predefined set of access controls to this
  /// bucket.
  /// Possible string values are:
  /// - "authenticatedRead" : Project team owners get OWNER access, and
  /// allAuthenticatedUsers get READER access.
  /// - "private" : Project team owners get OWNER access.
  /// - "projectPrivate" : Project team members get access according to their
  /// roles.
  /// - "publicRead" : Project team owners get OWNER access, and allUsers get
  /// READER access.
  /// - "publicReadWrite" : Project team owners get OWNER access, and allUsers
  /// get WRITER access.
  ///
  /// [predefinedDefaultObjectAcl] - Apply a predefined set of default object
  /// access controls to this bucket.
  /// Possible string values are:
  /// - "authenticatedRead" : Object owner gets OWNER access, and
  /// allAuthenticatedUsers get READER access.
  /// - "bucketOwnerFullControl" : Object owner gets OWNER access, and project
  /// team owners get OWNER access.
  /// - "bucketOwnerRead" : Object owner gets OWNER access, and project team
  /// owners get READER access.
  /// - "private" : Object owner gets OWNER access.
  /// - "projectPrivate" : Object owner gets OWNER access, and project team
  /// members get access according to their roles.
  /// - "publicRead" : Object owner gets OWNER access, and allUsers get READER
  /// access.
  ///
  /// [projection] - Set of properties to return. Defaults to noAcl, unless the
  /// bucket resource specifies acl or defaultObjectAcl properties, when it
  /// defaults to full.
  /// Possible string values are:
  /// - "full" : Include all properties.
  /// - "noAcl" : Omit owner, acl and defaultObjectAcl properties.
  ///
  /// [userProject] - The project to be billed for this request.
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
  async.Future<Bucket> insert(
    Bucket request,
    core.String project, {
    core.bool? enableObjectRetention,
    core.String? predefinedAcl,
    core.String? predefinedDefaultObjectAcl,
    core.String? projection,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'project': [project],
      if (enableObjectRetention != null)
        'enableObjectRetention': ['${enableObjectRetention}'],
      if (predefinedAcl != null) 'predefinedAcl': [predefinedAcl],
      if (predefinedDefaultObjectAcl != null)
        'predefinedDefaultObjectAcl': [predefinedDefaultObjectAcl],
      if (projection != null) 'projection': [projection],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'b';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Bucket.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of buckets for a given project.
  ///
  /// Request parameters:
  ///
  /// [project] - A valid API project identifier.
  ///
  /// [maxResults] - Maximum number of buckets to return in a single response.
  /// The service will use this parameter or 1,000 items, whichever is smaller.
  ///
  /// [pageToken] - A previously-returned page token representing part of the
  /// larger set of results to view.
  ///
  /// [prefix] - Filter results to buckets whose names begin with this prefix.
  ///
  /// [projection] - Set of properties to return. Defaults to noAcl.
  /// Possible string values are:
  /// - "full" : Include all properties.
  /// - "noAcl" : Omit owner, acl and defaultObjectAcl properties.
  ///
  /// [userProject] - The project to be billed for this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Buckets].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Buckets> list(
    core.String project, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? prefix,
    core.String? projection,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'project': [project],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (prefix != null) 'prefix': [prefix],
      if (projection != null) 'projection': [projection],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'b';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Buckets.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Locks retention policy on a bucket.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [ifMetagenerationMatch] - Makes the operation conditional on whether
  /// bucket's current metageneration matches the given value.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
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
  async.Future<Bucket> lockRetentionPolicy(
    core.String bucket,
    core.String ifMetagenerationMatch, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'ifMetagenerationMatch': [ifMetagenerationMatch],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'b/' + commons.escapeVariable('$bucket') + '/lockRetentionPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Bucket.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Patches a bucket.
  ///
  /// Changes to the bucket will be readable immediately after writing, but
  /// configuration changes may take time to propagate.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [ifMetagenerationMatch] - Makes the return of the bucket metadata
  /// conditional on whether the bucket's current metageneration matches the
  /// given value.
  ///
  /// [ifMetagenerationNotMatch] - Makes the return of the bucket metadata
  /// conditional on whether the bucket's current metageneration does not match
  /// the given value.
  ///
  /// [predefinedAcl] - Apply a predefined set of access controls to this
  /// bucket.
  /// Possible string values are:
  /// - "authenticatedRead" : Project team owners get OWNER access, and
  /// allAuthenticatedUsers get READER access.
  /// - "private" : Project team owners get OWNER access.
  /// - "projectPrivate" : Project team members get access according to their
  /// roles.
  /// - "publicRead" : Project team owners get OWNER access, and allUsers get
  /// READER access.
  /// - "publicReadWrite" : Project team owners get OWNER access, and allUsers
  /// get WRITER access.
  ///
  /// [predefinedDefaultObjectAcl] - Apply a predefined set of default object
  /// access controls to this bucket.
  /// Possible string values are:
  /// - "authenticatedRead" : Object owner gets OWNER access, and
  /// allAuthenticatedUsers get READER access.
  /// - "bucketOwnerFullControl" : Object owner gets OWNER access, and project
  /// team owners get OWNER access.
  /// - "bucketOwnerRead" : Object owner gets OWNER access, and project team
  /// owners get READER access.
  /// - "private" : Object owner gets OWNER access.
  /// - "projectPrivate" : Object owner gets OWNER access, and project team
  /// members get access according to their roles.
  /// - "publicRead" : Object owner gets OWNER access, and allUsers get READER
  /// access.
  ///
  /// [projection] - Set of properties to return. Defaults to full.
  /// Possible string values are:
  /// - "full" : Include all properties.
  /// - "noAcl" : Omit owner, acl and defaultObjectAcl properties.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
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
  async.Future<Bucket> patch(
    Bucket request,
    core.String bucket, {
    core.String? ifMetagenerationMatch,
    core.String? ifMetagenerationNotMatch,
    core.String? predefinedAcl,
    core.String? predefinedDefaultObjectAcl,
    core.String? projection,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ifMetagenerationMatch != null)
        'ifMetagenerationMatch': [ifMetagenerationMatch],
      if (ifMetagenerationNotMatch != null)
        'ifMetagenerationNotMatch': [ifMetagenerationNotMatch],
      if (predefinedAcl != null) 'predefinedAcl': [predefinedAcl],
      if (predefinedDefaultObjectAcl != null)
        'predefinedDefaultObjectAcl': [predefinedDefaultObjectAcl],
      if (projection != null) 'projection': [projection],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' + commons.escapeVariable('$bucket');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Bucket.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an IAM policy for the specified bucket.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    Policy request,
    core.String bucket, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' + commons.escapeVariable('$bucket') + '/iam';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Tests a set of permissions on the given bucket to see which, if any, are
  /// held by the caller.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [permissions] - Permissions to test.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    core.String bucket,
    core.List<core.String> permissions, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    if (permissions.isEmpty) {
      throw core.ArgumentError('Parameter permissions cannot be empty.');
    }
    final queryParams_ = <core.String, core.List<core.String>>{
      'permissions': permissions,
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'b/' + commons.escapeVariable('$bucket') + '/iam/testPermissions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a bucket.
  ///
  /// Changes to the bucket will be readable immediately after writing, but
  /// configuration changes may take time to propagate.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [ifMetagenerationMatch] - Makes the return of the bucket metadata
  /// conditional on whether the bucket's current metageneration matches the
  /// given value.
  ///
  /// [ifMetagenerationNotMatch] - Makes the return of the bucket metadata
  /// conditional on whether the bucket's current metageneration does not match
  /// the given value.
  ///
  /// [predefinedAcl] - Apply a predefined set of access controls to this
  /// bucket.
  /// Possible string values are:
  /// - "authenticatedRead" : Project team owners get OWNER access, and
  /// allAuthenticatedUsers get READER access.
  /// - "private" : Project team owners get OWNER access.
  /// - "projectPrivate" : Project team members get access according to their
  /// roles.
  /// - "publicRead" : Project team owners get OWNER access, and allUsers get
  /// READER access.
  /// - "publicReadWrite" : Project team owners get OWNER access, and allUsers
  /// get WRITER access.
  ///
  /// [predefinedDefaultObjectAcl] - Apply a predefined set of default object
  /// access controls to this bucket.
  /// Possible string values are:
  /// - "authenticatedRead" : Object owner gets OWNER access, and
  /// allAuthenticatedUsers get READER access.
  /// - "bucketOwnerFullControl" : Object owner gets OWNER access, and project
  /// team owners get OWNER access.
  /// - "bucketOwnerRead" : Object owner gets OWNER access, and project team
  /// owners get READER access.
  /// - "private" : Object owner gets OWNER access.
  /// - "projectPrivate" : Object owner gets OWNER access, and project team
  /// members get access according to their roles.
  /// - "publicRead" : Object owner gets OWNER access, and allUsers get READER
  /// access.
  ///
  /// [projection] - Set of properties to return. Defaults to full.
  /// Possible string values are:
  /// - "full" : Include all properties.
  /// - "noAcl" : Omit owner, acl and defaultObjectAcl properties.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
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
  async.Future<Bucket> update(
    Bucket request,
    core.String bucket, {
    core.String? ifMetagenerationMatch,
    core.String? ifMetagenerationNotMatch,
    core.String? predefinedAcl,
    core.String? predefinedDefaultObjectAcl,
    core.String? projection,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ifMetagenerationMatch != null)
        'ifMetagenerationMatch': [ifMetagenerationMatch],
      if (ifMetagenerationNotMatch != null)
        'ifMetagenerationNotMatch': [ifMetagenerationNotMatch],
      if (predefinedAcl != null) 'predefinedAcl': [predefinedAcl],
      if (predefinedDefaultObjectAcl != null)
        'predefinedDefaultObjectAcl': [predefinedDefaultObjectAcl],
      if (projection != null) 'projection': [projection],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' + commons.escapeVariable('$bucket');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Bucket.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ChannelsResource {
  final commons.ApiRequester _requester;

  ChannelsResource(commons.ApiRequester client) : _requester = client;

  /// Stop watching resources through this channel
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> stop(
    Channel request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'channels/stop';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }
}

class DefaultObjectAccessControlsResource {
  final commons.ApiRequester _requester;

  DefaultObjectAccessControlsResource(commons.ApiRequester client)
      : _requester = client;

  /// Permanently deletes the default object ACL entry for the specified entity
  /// on the specified bucket.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [entity] - The entity holding the permission. Can be user-userId,
  /// user-emailAddress, group-groupId, group-emailAddress, allUsers, or
  /// allAuthenticatedUsers.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String bucket,
    core.String entity, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/defaultObjectAcl/' +
        commons.escapeVariable('$entity');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Returns the default object ACL entry for the specified entity on the
  /// specified bucket.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [entity] - The entity holding the permission. Can be user-userId,
  /// user-emailAddress, group-groupId, group-emailAddress, allUsers, or
  /// allAuthenticatedUsers.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ObjectAccessControl].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ObjectAccessControl> get(
    core.String bucket,
    core.String entity, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/defaultObjectAcl/' +
        commons.escapeVariable('$entity');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ObjectAccessControl.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new default object ACL entry on the specified bucket.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ObjectAccessControl].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ObjectAccessControl> insert(
    ObjectAccessControl request,
    core.String bucket, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' + commons.escapeVariable('$bucket') + '/defaultObjectAcl';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ObjectAccessControl.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves default object ACL entries on the specified bucket.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [ifMetagenerationMatch] - If present, only return default ACL listing if
  /// the bucket's current metageneration matches this value.
  ///
  /// [ifMetagenerationNotMatch] - If present, only return default ACL listing
  /// if the bucket's current metageneration does not match the given value.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ObjectAccessControls].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ObjectAccessControls> list(
    core.String bucket, {
    core.String? ifMetagenerationMatch,
    core.String? ifMetagenerationNotMatch,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ifMetagenerationMatch != null)
        'ifMetagenerationMatch': [ifMetagenerationMatch],
      if (ifMetagenerationNotMatch != null)
        'ifMetagenerationNotMatch': [ifMetagenerationNotMatch],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' + commons.escapeVariable('$bucket') + '/defaultObjectAcl';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ObjectAccessControls.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Patches a default object ACL entry on the specified bucket.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [entity] - The entity holding the permission. Can be user-userId,
  /// user-emailAddress, group-groupId, group-emailAddress, allUsers, or
  /// allAuthenticatedUsers.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ObjectAccessControl].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ObjectAccessControl> patch(
    ObjectAccessControl request,
    core.String bucket,
    core.String entity, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/defaultObjectAcl/' +
        commons.escapeVariable('$entity');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ObjectAccessControl.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a default object ACL entry on the specified bucket.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [entity] - The entity holding the permission. Can be user-userId,
  /// user-emailAddress, group-groupId, group-emailAddress, allUsers, or
  /// allAuthenticatedUsers.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ObjectAccessControl].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ObjectAccessControl> update(
    ObjectAccessControl request,
    core.String bucket,
    core.String entity, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/defaultObjectAcl/' +
        commons.escapeVariable('$entity');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return ObjectAccessControl.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FoldersResource {
  final commons.ApiRequester _requester;

  FoldersResource(commons.ApiRequester client) : _requester = client;

  /// Permanently deletes a folder.
  ///
  /// Only applicable to buckets with hierarchical namespace enabled.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket in which the folder resides.
  ///
  /// [folder] - Name of a folder.
  ///
  /// [ifMetagenerationMatch] - If set, only deletes the folder if its
  /// metageneration matches this value.
  ///
  /// [ifMetagenerationNotMatch] - If set, only deletes the folder if its
  /// metageneration does not match this value.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String bucket,
    core.String folder, {
    core.String? ifMetagenerationMatch,
    core.String? ifMetagenerationNotMatch,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ifMetagenerationMatch != null)
        'ifMetagenerationMatch': [ifMetagenerationMatch],
      if (ifMetagenerationNotMatch != null)
        'ifMetagenerationNotMatch': [ifMetagenerationNotMatch],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/folders/' +
        commons.escapeVariable('$folder');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Returns metadata for the specified folder.
  ///
  /// Only applicable to buckets with hierarchical namespace enabled.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket in which the folder resides.
  ///
  /// [folder] - Name of a folder.
  ///
  /// [ifMetagenerationMatch] - Makes the return of the folder metadata
  /// conditional on whether the folder's current metageneration matches the
  /// given value.
  ///
  /// [ifMetagenerationNotMatch] - Makes the return of the folder metadata
  /// conditional on whether the folder's current metageneration does not match
  /// the given value.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Folder].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Folder> get(
    core.String bucket,
    core.String folder, {
    core.String? ifMetagenerationMatch,
    core.String? ifMetagenerationNotMatch,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ifMetagenerationMatch != null)
        'ifMetagenerationMatch': [ifMetagenerationMatch],
      if (ifMetagenerationNotMatch != null)
        'ifMetagenerationNotMatch': [ifMetagenerationNotMatch],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/folders/' +
        commons.escapeVariable('$folder');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Folder.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new folder.
  ///
  /// Only applicable to buckets with hierarchical namespace enabled.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket in which the folder resides.
  ///
  /// [recursive] - If true, any parent folder which doesn’t exist will be
  /// created automatically.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Folder].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Folder> insert(
    Folder request,
    core.String bucket, {
    core.bool? recursive,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (recursive != null) 'recursive': ['${recursive}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' + commons.escapeVariable('$bucket') + '/folders';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Folder.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of folders matching the criteria.
  ///
  /// Only applicable to buckets with hierarchical namespace enabled.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket in which to look for folders.
  ///
  /// [delimiter] - Returns results in a directory-like mode. The only supported
  /// value is '/'. If set, items will only contain folders that either exactly
  /// match the prefix, or are one level below the prefix.
  ///
  /// [endOffset] - Filter results to folders whose names are lexicographically
  /// before endOffset. If startOffset is also set, the folders listed will have
  /// names between startOffset (inclusive) and endOffset (exclusive).
  ///
  /// [pageSize] - Maximum number of items to return in a single page of
  /// responses.
  ///
  /// [pageToken] - A previously-returned page token representing part of the
  /// larger set of results to view.
  ///
  /// [prefix] - Filter results to folders whose paths begin with this prefix.
  /// If set, the value must either be an empty string or end with a '/'.
  ///
  /// [startOffset] - Filter results to folders whose names are
  /// lexicographically equal to or after startOffset. If endOffset is also set,
  /// the folders listed will have names between startOffset (inclusive) and
  /// endOffset (exclusive).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Folders].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Folders> list(
    core.String bucket, {
    core.String? delimiter,
    core.String? endOffset,
    core.int? pageSize,
    core.String? pageToken,
    core.String? prefix,
    core.String? startOffset,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (delimiter != null) 'delimiter': [delimiter],
      if (endOffset != null) 'endOffset': [endOffset],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (prefix != null) 'prefix': [prefix],
      if (startOffset != null) 'startOffset': [startOffset],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' + commons.escapeVariable('$bucket') + '/folders';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Folders.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Renames a source folder to a destination folder.
  ///
  /// Only applicable to buckets with hierarchical namespace enabled.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket in which the folders are in.
  ///
  /// [sourceFolder] - Name of the source folder.
  ///
  /// [destinationFolder] - Name of the destination folder.
  ///
  /// [ifSourceMetagenerationMatch] - Makes the operation conditional on whether
  /// the source object's current metageneration matches the given value.
  ///
  /// [ifSourceMetagenerationNotMatch] - Makes the operation conditional on
  /// whether the source object's current metageneration does not match the
  /// given value.
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
  async.Future<GoogleLongrunningOperation> rename(
    core.String bucket,
    core.String sourceFolder,
    core.String destinationFolder, {
    core.String? ifSourceMetagenerationMatch,
    core.String? ifSourceMetagenerationNotMatch,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ifSourceMetagenerationMatch != null)
        'ifSourceMetagenerationMatch': [ifSourceMetagenerationMatch],
      if (ifSourceMetagenerationNotMatch != null)
        'ifSourceMetagenerationNotMatch': [ifSourceMetagenerationNotMatch],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/folders/' +
        commons.escapeVariable('$sourceFolder') +
        '/renameTo/folders/' +
        commons.escapeVariable('$destinationFolder');

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ManagedFoldersResource {
  final commons.ApiRequester _requester;

  ManagedFoldersResource(commons.ApiRequester client) : _requester = client;

  /// Permanently deletes a managed folder.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket containing the managed folder.
  ///
  /// [managedFolder] - The managed folder name/path.
  ///
  /// [allowNonEmpty] - Allows the deletion of a managed folder even if it is
  /// not empty. A managed folder is empty if there are no objects or managed
  /// folders that it applies to. Callers must have
  /// storage.managedFolders.setIamPolicy permission.
  ///
  /// [ifMetagenerationMatch] - If set, only deletes the managed folder if its
  /// metageneration matches this value.
  ///
  /// [ifMetagenerationNotMatch] - If set, only deletes the managed folder if
  /// its metageneration does not match this value.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String bucket,
    core.String managedFolder, {
    core.bool? allowNonEmpty,
    core.String? ifMetagenerationMatch,
    core.String? ifMetagenerationNotMatch,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowNonEmpty != null) 'allowNonEmpty': ['${allowNonEmpty}'],
      if (ifMetagenerationMatch != null)
        'ifMetagenerationMatch': [ifMetagenerationMatch],
      if (ifMetagenerationNotMatch != null)
        'ifMetagenerationNotMatch': [ifMetagenerationNotMatch],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/managedFolders/' +
        commons.escapeVariable('$managedFolder');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Returns metadata of the specified managed folder.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket containing the managed folder.
  ///
  /// [managedFolder] - The managed folder name/path.
  ///
  /// [ifMetagenerationMatch] - Makes the return of the managed folder metadata
  /// conditional on whether the managed folder's current metageneration matches
  /// the given value.
  ///
  /// [ifMetagenerationNotMatch] - Makes the return of the managed folder
  /// metadata conditional on whether the managed folder's current
  /// metageneration does not match the given value.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagedFolder].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagedFolder> get(
    core.String bucket,
    core.String managedFolder, {
    core.String? ifMetagenerationMatch,
    core.String? ifMetagenerationNotMatch,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ifMetagenerationMatch != null)
        'ifMetagenerationMatch': [ifMetagenerationMatch],
      if (ifMetagenerationNotMatch != null)
        'ifMetagenerationNotMatch': [ifMetagenerationNotMatch],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/managedFolders/' +
        commons.escapeVariable('$managedFolder');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ManagedFolder.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns an IAM policy for the specified managed folder.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket containing the managed folder.
  ///
  /// [managedFolder] - The managed folder name/path.
  ///
  /// [optionsRequestedPolicyVersion] - The IAM policy format version to be
  /// returned. If the optionsRequestedPolicyVersion is for an older version
  /// that doesn't support part of the requested IAM policy, the request fails.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    core.String bucket,
    core.String managedFolder, {
    core.int? optionsRequestedPolicyVersion,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (optionsRequestedPolicyVersion != null)
        'optionsRequestedPolicyVersion': ['${optionsRequestedPolicyVersion}'],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/managedFolders/' +
        commons.escapeVariable('$managedFolder') +
        '/iam';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new managed folder.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket containing the managed folder.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagedFolder].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagedFolder> insert(
    ManagedFolder request,
    core.String bucket, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' + commons.escapeVariable('$bucket') + '/managedFolders';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ManagedFolder.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists managed folders in the given bucket.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket containing the managed folder.
  ///
  /// [pageSize] - Maximum number of items to return in a single page of
  /// responses.
  ///
  /// [pageToken] - A previously-returned page token representing part of the
  /// larger set of results to view.
  ///
  /// [prefix] - The managed folder name/path prefix to filter the output list
  /// of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagedFolders].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagedFolders> list(
    core.String bucket, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? prefix,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (prefix != null) 'prefix': [prefix],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' + commons.escapeVariable('$bucket') + '/managedFolders';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ManagedFolders.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an IAM policy for the specified managed folder.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket containing the managed folder.
  ///
  /// [managedFolder] - The managed folder name/path.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    Policy request,
    core.String bucket,
    core.String managedFolder, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/managedFolders/' +
        commons.escapeVariable('$managedFolder') +
        '/iam';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Tests a set of permissions on the given managed folder to see which, if
  /// any, are held by the caller.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket containing the managed folder.
  ///
  /// [managedFolder] - The managed folder name/path.
  ///
  /// [permissions] - Permissions to test.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    core.String bucket,
    core.String managedFolder,
    core.List<core.String> permissions, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    if (permissions.isEmpty) {
      throw core.ArgumentError('Parameter permissions cannot be empty.');
    }
    final queryParams_ = <core.String, core.List<core.String>>{
      'permissions': permissions,
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/managedFolders/' +
        commons.escapeVariable('$managedFolder') +
        '/iam/testPermissions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class NotificationsResource {
  final commons.ApiRequester _requester;

  NotificationsResource(commons.ApiRequester client) : _requester = client;

  /// Permanently deletes a notification subscription.
  ///
  /// Request parameters:
  ///
  /// [bucket] - The parent bucket of the notification.
  ///
  /// [notification] - ID of the notification to delete.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String bucket,
    core.String notification, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/notificationConfigs/' +
        commons.escapeVariable('$notification');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// View a notification configuration.
  ///
  /// Request parameters:
  ///
  /// [bucket] - The parent bucket of the notification.
  ///
  /// [notification] - Notification ID
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Notification].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Notification> get(
    core.String bucket,
    core.String notification, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/notificationConfigs/' +
        commons.escapeVariable('$notification');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Notification.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a notification subscription for a given bucket.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - The parent bucket of the notification.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Notification].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Notification> insert(
    Notification request,
    core.String bucket, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'b/' + commons.escapeVariable('$bucket') + '/notificationConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Notification.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of notification subscriptions for a given bucket.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a Google Cloud Storage bucket.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Notifications].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Notifications> list(
    core.String bucket, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'b/' + commons.escapeVariable('$bucket') + '/notificationConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Notifications.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ObjectAccessControlsResource {
  final commons.ApiRequester _requester;

  ObjectAccessControlsResource(commons.ApiRequester client)
      : _requester = client;

  /// Permanently deletes the ACL entry for the specified entity on the
  /// specified object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [object] - Name of the object. For information about how to URL encode
  /// object names to be path safe, see
  /// [Encoding URI Path Parts](https://cloud.google.com/storage/docs/request-endpoints#encoding).
  ///
  /// [entity] - The entity holding the permission. Can be user-userId,
  /// user-emailAddress, group-groupId, group-emailAddress, allUsers, or
  /// allAuthenticatedUsers.
  ///
  /// [generation] - If present, selects a specific revision of this object (as
  /// opposed to the latest version, the default).
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String bucket,
    core.String object,
    core.String entity, {
    core.String? generation,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (generation != null) 'generation': [generation],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/o/' +
        commons.escapeVariable('$object') +
        '/acl/' +
        commons.escapeVariable('$entity');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Returns the ACL entry for the specified entity on the specified object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [object] - Name of the object. For information about how to URL encode
  /// object names to be path safe, see
  /// [Encoding URI Path Parts](https://cloud.google.com/storage/docs/request-endpoints#encoding).
  ///
  /// [entity] - The entity holding the permission. Can be user-userId,
  /// user-emailAddress, group-groupId, group-emailAddress, allUsers, or
  /// allAuthenticatedUsers.
  ///
  /// [generation] - If present, selects a specific revision of this object (as
  /// opposed to the latest version, the default).
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ObjectAccessControl].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ObjectAccessControl> get(
    core.String bucket,
    core.String object,
    core.String entity, {
    core.String? generation,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (generation != null) 'generation': [generation],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/o/' +
        commons.escapeVariable('$object') +
        '/acl/' +
        commons.escapeVariable('$entity');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ObjectAccessControl.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new ACL entry on the specified object.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [object] - Name of the object. For information about how to URL encode
  /// object names to be path safe, see
  /// [Encoding URI Path Parts](https://cloud.google.com/storage/docs/request-endpoints#encoding).
  ///
  /// [generation] - If present, selects a specific revision of this object (as
  /// opposed to the latest version, the default).
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ObjectAccessControl].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ObjectAccessControl> insert(
    ObjectAccessControl request,
    core.String bucket,
    core.String object, {
    core.String? generation,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (generation != null) 'generation': [generation],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/o/' +
        commons.escapeVariable('$object') +
        '/acl';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ObjectAccessControl.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves ACL entries on the specified object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [object] - Name of the object. For information about how to URL encode
  /// object names to be path safe, see
  /// [Encoding URI Path Parts](https://cloud.google.com/storage/docs/request-endpoints#encoding).
  ///
  /// [generation] - If present, selects a specific revision of this object (as
  /// opposed to the latest version, the default).
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ObjectAccessControls].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ObjectAccessControls> list(
    core.String bucket,
    core.String object, {
    core.String? generation,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (generation != null) 'generation': [generation],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/o/' +
        commons.escapeVariable('$object') +
        '/acl';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ObjectAccessControls.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Patches an ACL entry on the specified object.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [object] - Name of the object. For information about how to URL encode
  /// object names to be path safe, see
  /// [Encoding URI Path Parts](https://cloud.google.com/storage/docs/request-endpoints#encoding).
  ///
  /// [entity] - The entity holding the permission. Can be user-userId,
  /// user-emailAddress, group-groupId, group-emailAddress, allUsers, or
  /// allAuthenticatedUsers.
  ///
  /// [generation] - If present, selects a specific revision of this object (as
  /// opposed to the latest version, the default).
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ObjectAccessControl].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ObjectAccessControl> patch(
    ObjectAccessControl request,
    core.String bucket,
    core.String object,
    core.String entity, {
    core.String? generation,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (generation != null) 'generation': [generation],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/o/' +
        commons.escapeVariable('$object') +
        '/acl/' +
        commons.escapeVariable('$entity');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ObjectAccessControl.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an ACL entry on the specified object.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [object] - Name of the object. For information about how to URL encode
  /// object names to be path safe, see
  /// [Encoding URI Path Parts](https://cloud.google.com/storage/docs/request-endpoints#encoding).
  ///
  /// [entity] - The entity holding the permission. Can be user-userId,
  /// user-emailAddress, group-groupId, group-emailAddress, allUsers, or
  /// allAuthenticatedUsers.
  ///
  /// [generation] - If present, selects a specific revision of this object (as
  /// opposed to the latest version, the default).
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ObjectAccessControl].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ObjectAccessControl> update(
    ObjectAccessControl request,
    core.String bucket,
    core.String object,
    core.String entity, {
    core.String? generation,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (generation != null) 'generation': [generation],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/o/' +
        commons.escapeVariable('$object') +
        '/acl/' +
        commons.escapeVariable('$entity');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return ObjectAccessControl.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ObjectsResource {
  final commons.ApiRequester _requester;

  ObjectsResource(commons.ApiRequester client) : _requester = client;

  /// Initiates a long-running bulk restore operation on the specified bucket.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket in which the object resides.
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
  async.Future<GoogleLongrunningOperation> bulkRestore(
    BulkRestoreObjectsRequest request,
    core.String bucket, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' + commons.escapeVariable('$bucket') + '/o/bulkRestore';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Concatenates a list of existing objects into a new object in the same
  /// bucket.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [destinationBucket] - Name of the bucket containing the source objects.
  /// The destination object is stored in this bucket.
  ///
  /// [destinationObject] - Name of the new object. For information about how to
  /// URL encode object names to be path safe, see
  /// [Encoding URI Path Parts](https://cloud.google.com/storage/docs/request-endpoints#encoding).
  ///
  /// [destinationPredefinedAcl] - Apply a predefined set of access controls to
  /// the destination object.
  /// Possible string values are:
  /// - "authenticatedRead" : Object owner gets OWNER access, and
  /// allAuthenticatedUsers get READER access.
  /// - "bucketOwnerFullControl" : Object owner gets OWNER access, and project
  /// team owners get OWNER access.
  /// - "bucketOwnerRead" : Object owner gets OWNER access, and project team
  /// owners get READER access.
  /// - "private" : Object owner gets OWNER access.
  /// - "projectPrivate" : Object owner gets OWNER access, and project team
  /// members get access according to their roles.
  /// - "publicRead" : Object owner gets OWNER access, and allUsers get READER
  /// access.
  ///
  /// [ifGenerationMatch] - Makes the operation conditional on whether the
  /// object's current generation matches the given value. Setting to 0 makes
  /// the operation succeed only if there are no live versions of the object.
  ///
  /// [ifMetagenerationMatch] - Makes the operation conditional on whether the
  /// object's current metageneration matches the given value.
  ///
  /// [kmsKeyName] - Resource name of the Cloud KMS key, of the form
  /// projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key,
  /// that will be used to encrypt the object. Overrides the object metadata's
  /// kms_key_name value, if any.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Object].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Object> compose(
    ComposeRequest request,
    core.String destinationBucket,
    core.String destinationObject, {
    core.String? destinationPredefinedAcl,
    core.String? ifGenerationMatch,
    core.String? ifMetagenerationMatch,
    core.String? kmsKeyName,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (destinationPredefinedAcl != null)
        'destinationPredefinedAcl': [destinationPredefinedAcl],
      if (ifGenerationMatch != null) 'ifGenerationMatch': [ifGenerationMatch],
      if (ifMetagenerationMatch != null)
        'ifMetagenerationMatch': [ifMetagenerationMatch],
      if (kmsKeyName != null) 'kmsKeyName': [kmsKeyName],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$destinationBucket') +
        '/o/' +
        commons.escapeVariable('$destinationObject') +
        '/compose';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Object.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Copies a source object to a destination object.
  ///
  /// Optionally overrides metadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [sourceBucket] - Name of the bucket in which to find the source object.
  ///
  /// [sourceObject] - Name of the source object. For information about how to
  /// URL encode object names to be path safe, see
  /// [Encoding URI Path Parts](https://cloud.google.com/storage/docs/request-endpoints#encoding).
  ///
  /// [destinationBucket] - Name of the bucket in which to store the new object.
  /// Overrides the provided object metadata's bucket value, if any.For
  /// information about how to URL encode object names to be path safe, see
  /// [Encoding URI Path Parts](https://cloud.google.com/storage/docs/request-endpoints#encoding).
  ///
  /// [destinationObject] - Name of the new object. Required when the object
  /// metadata is not otherwise provided. Overrides the object metadata's name
  /// value, if any.
  ///
  /// [destinationKmsKeyName] - Resource name of the Cloud KMS key, of the form
  /// projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key,
  /// that will be used to encrypt the object. Overrides the object metadata's
  /// kms_key_name value, if any.
  ///
  /// [destinationPredefinedAcl] - Apply a predefined set of access controls to
  /// the destination object.
  /// Possible string values are:
  /// - "authenticatedRead" : Object owner gets OWNER access, and
  /// allAuthenticatedUsers get READER access.
  /// - "bucketOwnerFullControl" : Object owner gets OWNER access, and project
  /// team owners get OWNER access.
  /// - "bucketOwnerRead" : Object owner gets OWNER access, and project team
  /// owners get READER access.
  /// - "private" : Object owner gets OWNER access.
  /// - "projectPrivate" : Object owner gets OWNER access, and project team
  /// members get access according to their roles.
  /// - "publicRead" : Object owner gets OWNER access, and allUsers get READER
  /// access.
  ///
  /// [ifGenerationMatch] - Makes the operation conditional on whether the
  /// destination object's current generation matches the given value. Setting
  /// to 0 makes the operation succeed only if there are no live versions of the
  /// object.
  ///
  /// [ifGenerationNotMatch] - Makes the operation conditional on whether the
  /// destination object's current generation does not match the given value. If
  /// no live object exists, the precondition fails. Setting to 0 makes the
  /// operation succeed only if there is a live version of the object.
  ///
  /// [ifMetagenerationMatch] - Makes the operation conditional on whether the
  /// destination object's current metageneration matches the given value.
  ///
  /// [ifMetagenerationNotMatch] - Makes the operation conditional on whether
  /// the destination object's current metageneration does not match the given
  /// value.
  ///
  /// [ifSourceGenerationMatch] - Makes the operation conditional on whether the
  /// source object's current generation matches the given value.
  ///
  /// [ifSourceGenerationNotMatch] - Makes the operation conditional on whether
  /// the source object's current generation does not match the given value.
  ///
  /// [ifSourceMetagenerationMatch] - Makes the operation conditional on whether
  /// the source object's current metageneration matches the given value.
  ///
  /// [ifSourceMetagenerationNotMatch] - Makes the operation conditional on
  /// whether the source object's current metageneration does not match the
  /// given value.
  ///
  /// [projection] - Set of properties to return. Defaults to noAcl, unless the
  /// object resource specifies the acl property, when it defaults to full.
  /// Possible string values are:
  /// - "full" : Include all properties.
  /// - "noAcl" : Omit the owner, acl property.
  ///
  /// [sourceGeneration] - If present, selects a specific revision of the source
  /// object (as opposed to the latest version, the default).
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Object].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Object> copy(
    Object request,
    core.String sourceBucket,
    core.String sourceObject,
    core.String destinationBucket,
    core.String destinationObject, {
    core.String? destinationKmsKeyName,
    core.String? destinationPredefinedAcl,
    core.String? ifGenerationMatch,
    core.String? ifGenerationNotMatch,
    core.String? ifMetagenerationMatch,
    core.String? ifMetagenerationNotMatch,
    core.String? ifSourceGenerationMatch,
    core.String? ifSourceGenerationNotMatch,
    core.String? ifSourceMetagenerationMatch,
    core.String? ifSourceMetagenerationNotMatch,
    core.String? projection,
    core.String? sourceGeneration,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (destinationKmsKeyName != null)
        'destinationKmsKeyName': [destinationKmsKeyName],
      if (destinationPredefinedAcl != null)
        'destinationPredefinedAcl': [destinationPredefinedAcl],
      if (ifGenerationMatch != null) 'ifGenerationMatch': [ifGenerationMatch],
      if (ifGenerationNotMatch != null)
        'ifGenerationNotMatch': [ifGenerationNotMatch],
      if (ifMetagenerationMatch != null)
        'ifMetagenerationMatch': [ifMetagenerationMatch],
      if (ifMetagenerationNotMatch != null)
        'ifMetagenerationNotMatch': [ifMetagenerationNotMatch],
      if (ifSourceGenerationMatch != null)
        'ifSourceGenerationMatch': [ifSourceGenerationMatch],
      if (ifSourceGenerationNotMatch != null)
        'ifSourceGenerationNotMatch': [ifSourceGenerationNotMatch],
      if (ifSourceMetagenerationMatch != null)
        'ifSourceMetagenerationMatch': [ifSourceMetagenerationMatch],
      if (ifSourceMetagenerationNotMatch != null)
        'ifSourceMetagenerationNotMatch': [ifSourceMetagenerationNotMatch],
      if (projection != null) 'projection': [projection],
      if (sourceGeneration != null) 'sourceGeneration': [sourceGeneration],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$sourceBucket') +
        '/o/' +
        commons.escapeVariable('$sourceObject') +
        '/copyTo/b/' +
        commons.escapeVariable('$destinationBucket') +
        '/o/' +
        commons.escapeVariable('$destinationObject');

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Object.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an object and its metadata.
  ///
  /// Deletions are permanent if versioning is not enabled for the bucket, or if
  /// the generation parameter is used.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket in which the object resides.
  ///
  /// [object] - Name of the object. For information about how to URL encode
  /// object names to be path safe, see
  /// [Encoding URI Path Parts](https://cloud.google.com/storage/docs/request-endpoints#encoding).
  ///
  /// [generation] - If present, permanently deletes a specific revision of this
  /// object (as opposed to the latest version, the default).
  ///
  /// [ifGenerationMatch] - Makes the operation conditional on whether the
  /// object's current generation matches the given value. Setting to 0 makes
  /// the operation succeed only if there are no live versions of the object.
  ///
  /// [ifGenerationNotMatch] - Makes the operation conditional on whether the
  /// object's current generation does not match the given value. If no live
  /// object exists, the precondition fails. Setting to 0 makes the operation
  /// succeed only if there is a live version of the object.
  ///
  /// [ifMetagenerationMatch] - Makes the operation conditional on whether the
  /// object's current metageneration matches the given value.
  ///
  /// [ifMetagenerationNotMatch] - Makes the operation conditional on whether
  /// the object's current metageneration does not match the given value.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String bucket,
    core.String object, {
    core.String? generation,
    core.String? ifGenerationMatch,
    core.String? ifGenerationNotMatch,
    core.String? ifMetagenerationMatch,
    core.String? ifMetagenerationNotMatch,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (generation != null) 'generation': [generation],
      if (ifGenerationMatch != null) 'ifGenerationMatch': [ifGenerationMatch],
      if (ifGenerationNotMatch != null)
        'ifGenerationNotMatch': [ifGenerationNotMatch],
      if (ifMetagenerationMatch != null)
        'ifMetagenerationMatch': [ifMetagenerationMatch],
      if (ifMetagenerationNotMatch != null)
        'ifMetagenerationNotMatch': [ifMetagenerationNotMatch],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/o/' +
        commons.escapeVariable('$object');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Retrieves an object or its metadata.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket in which the object resides.
  ///
  /// [object] - Name of the object. For information about how to URL encode
  /// object names to be path safe, see
  /// [Encoding URI Path Parts](https://cloud.google.com/storage/docs/request-endpoints#encoding).
  ///
  /// [generation] - If present, selects a specific revision of this object (as
  /// opposed to the latest version, the default).
  ///
  /// [ifGenerationMatch] - Makes the operation conditional on whether the
  /// object's current generation matches the given value. Setting to 0 makes
  /// the operation succeed only if there are no live versions of the object.
  ///
  /// [ifGenerationNotMatch] - Makes the operation conditional on whether the
  /// object's current generation does not match the given value. If no live
  /// object exists, the precondition fails. Setting to 0 makes the operation
  /// succeed only if there is a live version of the object.
  ///
  /// [ifMetagenerationMatch] - Makes the operation conditional on whether the
  /// object's current metageneration matches the given value.
  ///
  /// [ifMetagenerationNotMatch] - Makes the operation conditional on whether
  /// the object's current metageneration does not match the given value.
  ///
  /// [projection] - Set of properties to return. Defaults to noAcl.
  /// Possible string values are:
  /// - "full" : Include all properties.
  /// - "noAcl" : Omit the owner, acl property.
  ///
  /// [softDeleted] - If true, only soft-deleted object versions will be listed.
  /// The default is false. For more information, see Soft Delete.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a
  ///
  /// - [Object] for Metadata downloads (see [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Object> get(
    core.String bucket,
    core.String object, {
    core.String? generation,
    core.String? ifGenerationMatch,
    core.String? ifGenerationNotMatch,
    core.String? ifMetagenerationMatch,
    core.String? ifMetagenerationNotMatch,
    core.String? projection,
    core.bool? softDeleted,
    core.String? userProject,
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (generation != null) 'generation': [generation],
      if (ifGenerationMatch != null) 'ifGenerationMatch': [ifGenerationMatch],
      if (ifGenerationNotMatch != null)
        'ifGenerationNotMatch': [ifGenerationNotMatch],
      if (ifMetagenerationMatch != null)
        'ifMetagenerationMatch': [ifMetagenerationMatch],
      if (ifMetagenerationNotMatch != null)
        'ifMetagenerationNotMatch': [ifMetagenerationNotMatch],
      if (projection != null) 'projection': [projection],
      if (softDeleted != null) 'softDeleted': ['${softDeleted}'],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/o/' +
        commons.escapeVariable('$object');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return Object.fromJson(response_ as core.Map<core.String, core.dynamic>);
    } else {
      return response_ as commons.Media;
    }
  }

  /// Returns an IAM policy for the specified object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket in which the object resides.
  ///
  /// [object] - Name of the object. For information about how to URL encode
  /// object names to be path safe, see
  /// [Encoding URI Path Parts](https://cloud.google.com/storage/docs/request-endpoints#encoding).
  ///
  /// [generation] - If present, selects a specific revision of this object (as
  /// opposed to the latest version, the default).
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    core.String bucket,
    core.String object, {
    core.String? generation,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (generation != null) 'generation': [generation],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/o/' +
        commons.escapeVariable('$object') +
        '/iam';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Stores a new object and metadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket in which to store the new object. Overrides
  /// the provided object metadata's bucket value, if any.
  ///
  /// [contentEncoding] - If set, sets the contentEncoding property of the final
  /// object to this value. Setting this parameter is equivalent to setting the
  /// contentEncoding metadata property. This can be useful when uploading an
  /// object with uploadType=media to indicate the encoding of the content being
  /// uploaded.
  ///
  /// [ifGenerationMatch] - Makes the operation conditional on whether the
  /// object's current generation matches the given value. Setting to 0 makes
  /// the operation succeed only if there are no live versions of the object.
  ///
  /// [ifGenerationNotMatch] - Makes the operation conditional on whether the
  /// object's current generation does not match the given value. If no live
  /// object exists, the precondition fails. Setting to 0 makes the operation
  /// succeed only if there is a live version of the object.
  ///
  /// [ifMetagenerationMatch] - Makes the operation conditional on whether the
  /// object's current metageneration matches the given value.
  ///
  /// [ifMetagenerationNotMatch] - Makes the operation conditional on whether
  /// the object's current metageneration does not match the given value.
  ///
  /// [kmsKeyName] - Resource name of the Cloud KMS key, of the form
  /// projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key,
  /// that will be used to encrypt the object. Overrides the object metadata's
  /// kms_key_name value, if any.
  ///
  /// [name] - Name of the object. Required when the object metadata is not
  /// otherwise provided. Overrides the object metadata's name value, if any.
  /// For information about how to URL encode object names to be path safe, see
  /// [Encoding URI Path Parts](https://cloud.google.com/storage/docs/request-endpoints#encoding).
  ///
  /// [predefinedAcl] - Apply a predefined set of access controls to this
  /// object.
  /// Possible string values are:
  /// - "authenticatedRead" : Object owner gets OWNER access, and
  /// allAuthenticatedUsers get READER access.
  /// - "bucketOwnerFullControl" : Object owner gets OWNER access, and project
  /// team owners get OWNER access.
  /// - "bucketOwnerRead" : Object owner gets OWNER access, and project team
  /// owners get READER access.
  /// - "private" : Object owner gets OWNER access.
  /// - "projectPrivate" : Object owner gets OWNER access, and project team
  /// members get access according to their roles.
  /// - "publicRead" : Object owner gets OWNER access, and allUsers get READER
  /// access.
  ///
  /// [projection] - Set of properties to return. Defaults to noAcl, unless the
  /// object resource specifies the acl property, when it defaults to full.
  /// Possible string values are:
  /// - "full" : Include all properties.
  /// - "noAcl" : Omit the owner, acl property.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [Object].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Object> insert(
    Object request,
    core.String bucket, {
    core.String? contentEncoding,
    core.String? ifGenerationMatch,
    core.String? ifGenerationNotMatch,
    core.String? ifMetagenerationMatch,
    core.String? ifMetagenerationNotMatch,
    core.String? kmsKeyName,
    core.String? name,
    core.String? predefinedAcl,
    core.String? projection,
    core.String? userProject,
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (contentEncoding != null) 'contentEncoding': [contentEncoding],
      if (ifGenerationMatch != null) 'ifGenerationMatch': [ifGenerationMatch],
      if (ifGenerationNotMatch != null)
        'ifGenerationNotMatch': [ifGenerationNotMatch],
      if (ifMetagenerationMatch != null)
        'ifMetagenerationMatch': [ifMetagenerationMatch],
      if (ifMetagenerationNotMatch != null)
        'ifMetagenerationNotMatch': [ifMetagenerationNotMatch],
      if (kmsKeyName != null) 'kmsKeyName': [kmsKeyName],
      if (name != null) 'name': [name],
      if (predefinedAcl != null) 'predefinedAcl': [predefinedAcl],
      if (projection != null) 'projection': [projection],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ = 'b/' + commons.escapeVariable('$bucket') + '/o';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      url_ = '/resumable/upload/storage/v1/b/' +
          commons.escapeVariable('$bucket') +
          '/o';
    } else {
      url_ = '/upload/storage/v1/b/' + commons.escapeVariable('$bucket') + '/o';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return Object.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of objects matching the criteria.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket in which to look for objects.
  ///
  /// [delimiter] - Returns results in a directory-like mode. items will contain
  /// only objects whose names, aside from the prefix, do not contain delimiter.
  /// Objects whose names, aside from the prefix, contain delimiter will have
  /// their name, truncated after the delimiter, returned in prefixes. Duplicate
  /// prefixes are omitted.
  ///
  /// [endOffset] - Filter results to objects whose names are lexicographically
  /// before endOffset. If startOffset is also set, the objects listed will have
  /// names between startOffset (inclusive) and endOffset (exclusive).
  ///
  /// [includeFoldersAsPrefixes] - Only applicable if delimiter is set to '/'.
  /// If true, will also include folders and managed folders (besides objects)
  /// in the returned prefixes.
  ///
  /// [includeTrailingDelimiter] - If true, objects that end in exactly one
  /// instance of delimiter will have their metadata included in items in
  /// addition to prefixes.
  ///
  /// [matchGlob] - Filter results to objects and prefixes that match this glob
  /// pattern.
  ///
  /// [maxResults] - Maximum number of items plus prefixes to return in a single
  /// page of responses. As duplicate prefixes are omitted, fewer total results
  /// may be returned than requested. The service will use this parameter or
  /// 1,000 items, whichever is smaller.
  ///
  /// [pageToken] - A previously-returned page token representing part of the
  /// larger set of results to view.
  ///
  /// [prefix] - Filter results to objects whose names begin with this prefix.
  ///
  /// [projection] - Set of properties to return. Defaults to noAcl.
  /// Possible string values are:
  /// - "full" : Include all properties.
  /// - "noAcl" : Omit the owner, acl property.
  ///
  /// [softDeleted] - If true, only soft-deleted object versions will be listed.
  /// The default is false. For more information, see Soft Delete.
  ///
  /// [startOffset] - Filter results to objects whose names are
  /// lexicographically equal to or after startOffset. If endOffset is also set,
  /// the objects listed will have names between startOffset (inclusive) and
  /// endOffset (exclusive).
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [versions] - If true, lists all versions of an object as distinct results.
  /// The default is false. For more information, see Object Versioning.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Objects].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Objects> list(
    core.String bucket, {
    core.String? delimiter,
    core.String? endOffset,
    core.bool? includeFoldersAsPrefixes,
    core.bool? includeTrailingDelimiter,
    core.String? matchGlob,
    core.int? maxResults,
    core.String? pageToken,
    core.String? prefix,
    core.String? projection,
    core.bool? softDeleted,
    core.String? startOffset,
    core.String? userProject,
    core.bool? versions,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (delimiter != null) 'delimiter': [delimiter],
      if (endOffset != null) 'endOffset': [endOffset],
      if (includeFoldersAsPrefixes != null)
        'includeFoldersAsPrefixes': ['${includeFoldersAsPrefixes}'],
      if (includeTrailingDelimiter != null)
        'includeTrailingDelimiter': ['${includeTrailingDelimiter}'],
      if (matchGlob != null) 'matchGlob': [matchGlob],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (prefix != null) 'prefix': [prefix],
      if (projection != null) 'projection': [projection],
      if (softDeleted != null) 'softDeleted': ['${softDeleted}'],
      if (startOffset != null) 'startOffset': [startOffset],
      if (userProject != null) 'userProject': [userProject],
      if (versions != null) 'versions': ['${versions}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' + commons.escapeVariable('$bucket') + '/o';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Objects.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Patches an object's metadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket in which the object resides.
  ///
  /// [object] - Name of the object. For information about how to URL encode
  /// object names to be path safe, see
  /// [Encoding URI Path Parts](https://cloud.google.com/storage/docs/request-endpoints#encoding).
  ///
  /// [generation] - If present, selects a specific revision of this object (as
  /// opposed to the latest version, the default).
  ///
  /// [ifGenerationMatch] - Makes the operation conditional on whether the
  /// object's current generation matches the given value. Setting to 0 makes
  /// the operation succeed only if there are no live versions of the object.
  ///
  /// [ifGenerationNotMatch] - Makes the operation conditional on whether the
  /// object's current generation does not match the given value. If no live
  /// object exists, the precondition fails. Setting to 0 makes the operation
  /// succeed only if there is a live version of the object.
  ///
  /// [ifMetagenerationMatch] - Makes the operation conditional on whether the
  /// object's current metageneration matches the given value.
  ///
  /// [ifMetagenerationNotMatch] - Makes the operation conditional on whether
  /// the object's current metageneration does not match the given value.
  ///
  /// [overrideUnlockedRetention] - Must be true to remove the retention
  /// configuration, reduce its unlocked retention period, or change its mode
  /// from unlocked to locked.
  ///
  /// [predefinedAcl] - Apply a predefined set of access controls to this
  /// object.
  /// Possible string values are:
  /// - "authenticatedRead" : Object owner gets OWNER access, and
  /// allAuthenticatedUsers get READER access.
  /// - "bucketOwnerFullControl" : Object owner gets OWNER access, and project
  /// team owners get OWNER access.
  /// - "bucketOwnerRead" : Object owner gets OWNER access, and project team
  /// owners get READER access.
  /// - "private" : Object owner gets OWNER access.
  /// - "projectPrivate" : Object owner gets OWNER access, and project team
  /// members get access according to their roles.
  /// - "publicRead" : Object owner gets OWNER access, and allUsers get READER
  /// access.
  ///
  /// [projection] - Set of properties to return. Defaults to full.
  /// Possible string values are:
  /// - "full" : Include all properties.
  /// - "noAcl" : Omit the owner, acl property.
  ///
  /// [userProject] - The project to be billed for this request, for Requester
  /// Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Object].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Object> patch(
    Object request,
    core.String bucket,
    core.String object, {
    core.String? generation,
    core.String? ifGenerationMatch,
    core.String? ifGenerationNotMatch,
    core.String? ifMetagenerationMatch,
    core.String? ifMetagenerationNotMatch,
    core.bool? overrideUnlockedRetention,
    core.String? predefinedAcl,
    core.String? projection,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (generation != null) 'generation': [generation],
      if (ifGenerationMatch != null) 'ifGenerationMatch': [ifGenerationMatch],
      if (ifGenerationNotMatch != null)
        'ifGenerationNotMatch': [ifGenerationNotMatch],
      if (ifMetagenerationMatch != null)
        'ifMetagenerationMatch': [ifMetagenerationMatch],
      if (ifMetagenerationNotMatch != null)
        'ifMetagenerationNotMatch': [ifMetagenerationNotMatch],
      if (overrideUnlockedRetention != null)
        'overrideUnlockedRetention': ['${overrideUnlockedRetention}'],
      if (predefinedAcl != null) 'predefinedAcl': [predefinedAcl],
      if (projection != null) 'projection': [projection],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/o/' +
        commons.escapeVariable('$object');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Object.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restores a soft-deleted object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket in which the object resides.
  ///
  /// [object] - Name of the object. For information about how to URL encode
  /// object names to be path safe, see Encoding URI Path Parts.
  ///
  /// [generation] - Selects a specific revision of this object.
  ///
  /// [copySourceAcl] - If true, copies the source object's ACL; otherwise, uses
  /// the bucket's default object ACL. The default is false.
  ///
  /// [ifGenerationMatch] - Makes the operation conditional on whether the
  /// object's one live generation matches the given value. Setting to 0 makes
  /// the operation succeed only if there are no live versions of the object.
  ///
  /// [ifGenerationNotMatch] - Makes the operation conditional on whether none
  /// of the object's live generations match the given value. If no live object
  /// exists, the precondition fails. Setting to 0 makes the operation succeed
  /// only if there is a live version of the object.
  ///
  /// [ifMetagenerationMatch] - Makes the operation conditional on whether the
  /// object's one live metageneration matches the given value.
  ///
  /// [ifMetagenerationNotMatch] - Makes the operation conditional on whether
  /// none of the object's live metagenerations match the given value.
  ///
  /// [projection] - Set of properties to return. Defaults to full.
  /// Possible string values are:
  /// - "full" : Include all properties.
  /// - "noAcl" : Omit the owner, acl property.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Object].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Object> restore(
    core.String bucket,
    core.String object,
    core.String generation, {
    core.bool? copySourceAcl,
    core.String? ifGenerationMatch,
    core.String? ifGenerationNotMatch,
    core.String? ifMetagenerationMatch,
    core.String? ifMetagenerationNotMatch,
    core.String? projection,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'generation': [generation],
      if (copySourceAcl != null) 'copySourceAcl': ['${copySourceAcl}'],
      if (ifGenerationMatch != null) 'ifGenerationMatch': [ifGenerationMatch],
      if (ifGenerationNotMatch != null)
        'ifGenerationNotMatch': [ifGenerationNotMatch],
      if (ifMetagenerationMatch != null)
        'ifMetagenerationMatch': [ifMetagenerationMatch],
      if (ifMetagenerationNotMatch != null)
        'ifMetagenerationNotMatch': [ifMetagenerationNotMatch],
      if (projection != null) 'projection': [projection],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/o/' +
        commons.escapeVariable('$object') +
        '/restore';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Object.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Rewrites a source object to a destination object.
  ///
  /// Optionally overrides metadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [sourceBucket] - Name of the bucket in which to find the source object.
  ///
  /// [sourceObject] - Name of the source object. For information about how to
  /// URL encode object names to be path safe, see
  /// [Encoding URI Path Parts](https://cloud.google.com/storage/docs/request-endpoints#encoding).
  ///
  /// [destinationBucket] - Name of the bucket in which to store the new object.
  /// Overrides the provided object metadata's bucket value, if any.
  ///
  /// [destinationObject] - Name of the new object. Required when the object
  /// metadata is not otherwise provided. Overrides the object metadata's name
  /// value, if any. For information about how to URL encode object names to be
  /// path safe, see
  /// [Encoding URI Path Parts](https://cloud.google.com/storage/docs/request-endpoints#encoding).
  ///
  /// [destinationKmsKeyName] - Resource name of the Cloud KMS key, of the form
  /// projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key,
  /// that will be used to encrypt the object. Overrides the object metadata's
  /// kms_key_name value, if any.
  ///
  /// [destinationPredefinedAcl] - Apply a predefined set of access controls to
  /// the destination object.
  /// Possible string values are:
  /// - "authenticatedRead" : Object owner gets OWNER access, and
  /// allAuthenticatedUsers get READER access.
  /// - "bucketOwnerFullControl" : Object owner gets OWNER access, and project
  /// team owners get OWNER access.
  /// - "bucketOwnerRead" : Object owner gets OWNER access, and project team
  /// owners get READER access.
  /// - "private" : Object owner gets OWNER access.
  /// - "projectPrivate" : Object owner gets OWNER access, and project team
  /// members get access according to their roles.
  /// - "publicRead" : Object owner gets OWNER access, and allUsers get READER
  /// access.
  ///
  /// [ifGenerationMatch] - Makes the operation conditional on whether the
  /// object's current generation matches the given value. Setting to 0 makes
  /// the operation succeed only if there are no live versions of the object.
  ///
  /// [ifGenerationNotMatch] - Makes the operation conditional on whether the
  /// object's current generation does not match the given value. If no live
  /// object exists, the precondition fails. Setting to 0 makes the operation
  /// succeed only if there is a live version of the object.
  ///
  /// [ifMetagenerationMatch] - Makes the operation conditional on whether the
  /// destination object's current metageneration matches the given value.
  ///
  /// [ifMetagenerationNotMatch] - Makes the operation conditional on whether
  /// the destination object's current metageneration does not match the given
  /// value.
  ///
  /// [ifSourceGenerationMatch] - Makes the operation conditional on whether the
  /// source object's current generation matches the given value.
  ///
  /// [ifSourceGenerationNotMatch] - Makes the operation conditional on whether
  /// the source object's current generation does not match the given value.
  ///
  /// [ifSourceMetagenerationMatch] - Makes the operation conditional on whether
  /// the source object's current metageneration matches the given value.
  ///
  /// [ifSourceMetagenerationNotMatch] - Makes the operation conditional on
  /// whether the source object's current metageneration does not match the
  /// given value.
  ///
  /// [maxBytesRewrittenPerCall] - The maximum number of bytes that will be
  /// rewritten per rewrite request. Most callers shouldn't need to specify this
  /// parameter - it is primarily in place to support testing. If specified the
  /// value must be an integral multiple of 1 MiB (1048576). Also, this only
  /// applies to requests where the source and destination span locations and/or
  /// storage classes. Finally, this value must not change across rewrite calls
  /// else you'll get an error that the rewriteToken is invalid.
  ///
  /// [projection] - Set of properties to return. Defaults to noAcl, unless the
  /// object resource specifies the acl property, when it defaults to full.
  /// Possible string values are:
  /// - "full" : Include all properties.
  /// - "noAcl" : Omit the owner, acl property.
  ///
  /// [rewriteToken] - Include this field (from the previous rewrite response)
  /// on each rewrite request after the first one, until the rewrite response
  /// 'done' flag is true. Calls that provide a rewriteToken can omit all other
  /// request fields, but if included those fields must match the values
  /// provided in the first rewrite request.
  ///
  /// [sourceGeneration] - If present, selects a specific revision of the source
  /// object (as opposed to the latest version, the default).
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RewriteResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RewriteResponse> rewrite(
    Object request,
    core.String sourceBucket,
    core.String sourceObject,
    core.String destinationBucket,
    core.String destinationObject, {
    core.String? destinationKmsKeyName,
    core.String? destinationPredefinedAcl,
    core.String? ifGenerationMatch,
    core.String? ifGenerationNotMatch,
    core.String? ifMetagenerationMatch,
    core.String? ifMetagenerationNotMatch,
    core.String? ifSourceGenerationMatch,
    core.String? ifSourceGenerationNotMatch,
    core.String? ifSourceMetagenerationMatch,
    core.String? ifSourceMetagenerationNotMatch,
    core.String? maxBytesRewrittenPerCall,
    core.String? projection,
    core.String? rewriteToken,
    core.String? sourceGeneration,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (destinationKmsKeyName != null)
        'destinationKmsKeyName': [destinationKmsKeyName],
      if (destinationPredefinedAcl != null)
        'destinationPredefinedAcl': [destinationPredefinedAcl],
      if (ifGenerationMatch != null) 'ifGenerationMatch': [ifGenerationMatch],
      if (ifGenerationNotMatch != null)
        'ifGenerationNotMatch': [ifGenerationNotMatch],
      if (ifMetagenerationMatch != null)
        'ifMetagenerationMatch': [ifMetagenerationMatch],
      if (ifMetagenerationNotMatch != null)
        'ifMetagenerationNotMatch': [ifMetagenerationNotMatch],
      if (ifSourceGenerationMatch != null)
        'ifSourceGenerationMatch': [ifSourceGenerationMatch],
      if (ifSourceGenerationNotMatch != null)
        'ifSourceGenerationNotMatch': [ifSourceGenerationNotMatch],
      if (ifSourceMetagenerationMatch != null)
        'ifSourceMetagenerationMatch': [ifSourceMetagenerationMatch],
      if (ifSourceMetagenerationNotMatch != null)
        'ifSourceMetagenerationNotMatch': [ifSourceMetagenerationNotMatch],
      if (maxBytesRewrittenPerCall != null)
        'maxBytesRewrittenPerCall': [maxBytesRewrittenPerCall],
      if (projection != null) 'projection': [projection],
      if (rewriteToken != null) 'rewriteToken': [rewriteToken],
      if (sourceGeneration != null) 'sourceGeneration': [sourceGeneration],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$sourceBucket') +
        '/o/' +
        commons.escapeVariable('$sourceObject') +
        '/rewriteTo/b/' +
        commons.escapeVariable('$destinationBucket') +
        '/o/' +
        commons.escapeVariable('$destinationObject');

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RewriteResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an IAM policy for the specified object.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket in which the object resides.
  ///
  /// [object] - Name of the object. For information about how to URL encode
  /// object names to be path safe, see
  /// [Encoding URI Path Parts](https://cloud.google.com/storage/docs/request-endpoints#encoding).
  ///
  /// [generation] - If present, selects a specific revision of this object (as
  /// opposed to the latest version, the default).
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    Policy request,
    core.String bucket,
    core.String object, {
    core.String? generation,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (generation != null) 'generation': [generation],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/o/' +
        commons.escapeVariable('$object') +
        '/iam';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Tests a set of permissions on the given object to see which, if any, are
  /// held by the caller.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket in which the object resides.
  ///
  /// [object] - Name of the object. For information about how to URL encode
  /// object names to be path safe, see
  /// [Encoding URI Path Parts](https://cloud.google.com/storage/docs/request-endpoints#encoding).
  ///
  /// [permissions] - Permissions to test.
  ///
  /// [generation] - If present, selects a specific revision of this object (as
  /// opposed to the latest version, the default).
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    core.String bucket,
    core.String object,
    core.List<core.String> permissions, {
    core.String? generation,
    core.String? userProject,
    core.String? $fields,
  }) async {
    if (permissions.isEmpty) {
      throw core.ArgumentError('Parameter permissions cannot be empty.');
    }
    final queryParams_ = <core.String, core.List<core.String>>{
      'permissions': permissions,
      if (generation != null) 'generation': [generation],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/o/' +
        commons.escapeVariable('$object') +
        '/iam/testPermissions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an object's metadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket in which the object resides.
  ///
  /// [object] - Name of the object. For information about how to URL encode
  /// object names to be path safe, see
  /// [Encoding URI Path Parts](https://cloud.google.com/storage/docs/request-endpoints#encoding).
  ///
  /// [generation] - If present, selects a specific revision of this object (as
  /// opposed to the latest version, the default).
  ///
  /// [ifGenerationMatch] - Makes the operation conditional on whether the
  /// object's current generation matches the given value. Setting to 0 makes
  /// the operation succeed only if there are no live versions of the object.
  ///
  /// [ifGenerationNotMatch] - Makes the operation conditional on whether the
  /// object's current generation does not match the given value. If no live
  /// object exists, the precondition fails. Setting to 0 makes the operation
  /// succeed only if there is a live version of the object.
  ///
  /// [ifMetagenerationMatch] - Makes the operation conditional on whether the
  /// object's current metageneration matches the given value.
  ///
  /// [ifMetagenerationNotMatch] - Makes the operation conditional on whether
  /// the object's current metageneration does not match the given value.
  ///
  /// [overrideUnlockedRetention] - Must be true to remove the retention
  /// configuration, reduce its unlocked retention period, or change its mode
  /// from unlocked to locked.
  ///
  /// [predefinedAcl] - Apply a predefined set of access controls to this
  /// object.
  /// Possible string values are:
  /// - "authenticatedRead" : Object owner gets OWNER access, and
  /// allAuthenticatedUsers get READER access.
  /// - "bucketOwnerFullControl" : Object owner gets OWNER access, and project
  /// team owners get OWNER access.
  /// - "bucketOwnerRead" : Object owner gets OWNER access, and project team
  /// owners get READER access.
  /// - "private" : Object owner gets OWNER access.
  /// - "projectPrivate" : Object owner gets OWNER access, and project team
  /// members get access according to their roles.
  /// - "publicRead" : Object owner gets OWNER access, and allUsers get READER
  /// access.
  ///
  /// [projection] - Set of properties to return. Defaults to full.
  /// Possible string values are:
  /// - "full" : Include all properties.
  /// - "noAcl" : Omit the owner, acl property.
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Object].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Object> update(
    Object request,
    core.String bucket,
    core.String object, {
    core.String? generation,
    core.String? ifGenerationMatch,
    core.String? ifGenerationNotMatch,
    core.String? ifMetagenerationMatch,
    core.String? ifMetagenerationNotMatch,
    core.bool? overrideUnlockedRetention,
    core.String? predefinedAcl,
    core.String? projection,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (generation != null) 'generation': [generation],
      if (ifGenerationMatch != null) 'ifGenerationMatch': [ifGenerationMatch],
      if (ifGenerationNotMatch != null)
        'ifGenerationNotMatch': [ifGenerationNotMatch],
      if (ifMetagenerationMatch != null)
        'ifMetagenerationMatch': [ifMetagenerationMatch],
      if (ifMetagenerationNotMatch != null)
        'ifMetagenerationNotMatch': [ifMetagenerationNotMatch],
      if (overrideUnlockedRetention != null)
        'overrideUnlockedRetention': ['${overrideUnlockedRetention}'],
      if (predefinedAcl != null) 'predefinedAcl': [predefinedAcl],
      if (projection != null) 'projection': [projection],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/o/' +
        commons.escapeVariable('$object');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Object.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Watch for changes on all objects in a bucket.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket in which to look for objects.
  ///
  /// [delimiter] - Returns results in a directory-like mode. items will contain
  /// only objects whose names, aside from the prefix, do not contain delimiter.
  /// Objects whose names, aside from the prefix, contain delimiter will have
  /// their name, truncated after the delimiter, returned in prefixes. Duplicate
  /// prefixes are omitted.
  ///
  /// [endOffset] - Filter results to objects whose names are lexicographically
  /// before endOffset. If startOffset is also set, the objects listed will have
  /// names between startOffset (inclusive) and endOffset (exclusive).
  ///
  /// [includeTrailingDelimiter] - If true, objects that end in exactly one
  /// instance of delimiter will have their metadata included in items in
  /// addition to prefixes.
  ///
  /// [maxResults] - Maximum number of items plus prefixes to return in a single
  /// page of responses. As duplicate prefixes are omitted, fewer total results
  /// may be returned than requested. The service will use this parameter or
  /// 1,000 items, whichever is smaller.
  ///
  /// [pageToken] - A previously-returned page token representing part of the
  /// larger set of results to view.
  ///
  /// [prefix] - Filter results to objects whose names begin with this prefix.
  ///
  /// [projection] - Set of properties to return. Defaults to noAcl.
  /// Possible string values are:
  /// - "full" : Include all properties.
  /// - "noAcl" : Omit the owner, acl property.
  ///
  /// [startOffset] - Filter results to objects whose names are
  /// lexicographically equal to or after startOffset. If endOffset is also set,
  /// the objects listed will have names between startOffset (inclusive) and
  /// endOffset (exclusive).
  ///
  /// [userProject] - The project to be billed for this request. Required for
  /// Requester Pays buckets.
  ///
  /// [versions] - If true, lists all versions of an object as distinct results.
  /// The default is false. For more information, see Object Versioning.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> watchAll(
    Channel request,
    core.String bucket, {
    core.String? delimiter,
    core.String? endOffset,
    core.bool? includeTrailingDelimiter,
    core.int? maxResults,
    core.String? pageToken,
    core.String? prefix,
    core.String? projection,
    core.String? startOffset,
    core.String? userProject,
    core.bool? versions,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (delimiter != null) 'delimiter': [delimiter],
      if (endOffset != null) 'endOffset': [endOffset],
      if (includeTrailingDelimiter != null)
        'includeTrailingDelimiter': ['${includeTrailingDelimiter}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (prefix != null) 'prefix': [prefix],
      if (projection != null) 'projection': [projection],
      if (startOffset != null) 'startOffset': [startOffset],
      if (userProject != null) 'userProject': [userProject],
      if (versions != null) 'versions': ['${versions}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' + commons.escapeVariable('$bucket') + '/o/watch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed.
  ///
  /// Request parameters:
  ///
  /// [bucket] - The parent bucket of the operation resource.
  ///
  /// [operationId] - The ID of the operation resource.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> cancel(
    core.String bucket,
    core.String operationId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/operations/' +
        commons.escapeVariable('$operationId') +
        '/cancel';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Request parameters:
  ///
  /// [bucket] - The parent bucket of the operation resource.
  ///
  /// [operationId] - The ID of the operation resource.
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
    core.String bucket,
    core.String operationId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'b/' +
        commons.escapeVariable('$bucket') +
        '/operations/' +
        commons.escapeVariable('$operationId');

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
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket in which to look for operations.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language is documented in more detail in
  /// \[AIP-160\](https://google.aip.dev/160).
  ///
  /// [pageSize] - Maximum number of items to return in a single page of
  /// responses. Fewer total results may be returned than requested. The service
  /// uses this parameter or 100 items, whichever is smaller.
  ///
  /// [pageToken] - A previously-returned page token representing part of the
  /// larger set of results to view.
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
    core.String bucket, {
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

    final url_ = 'b/' + commons.escapeVariable('$bucket') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsHmacKeysResource get hmacKeys => ProjectsHmacKeysResource(_requester);
  ProjectsServiceAccountResource get serviceAccount =>
      ProjectsServiceAccountResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsHmacKeysResource {
  final commons.ApiRequester _requester;

  ProjectsHmacKeysResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new HMAC key for the specified service account.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID owning the service account.
  ///
  /// [serviceAccountEmail] - Email address of the service account.
  ///
  /// [userProject] - The project to be billed for this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HmacKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HmacKey> create(
    core.String projectId,
    core.String serviceAccountEmail, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'serviceAccountEmail': [serviceAccountEmail],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'projects/' + commons.escapeVariable('$projectId') + '/hmacKeys';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return HmacKey.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an HMAC key.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID owning the requested key
  ///
  /// [accessId] - Name of the HMAC key to be deleted.
  ///
  /// [userProject] - The project to be billed for this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String projectId,
    core.String accessId, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        commons.escapeVariable('$projectId') +
        '/hmacKeys/' +
        commons.escapeVariable('$accessId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Retrieves an HMAC key's metadata
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID owning the service account of the requested key.
  ///
  /// [accessId] - Name of the HMAC key.
  ///
  /// [userProject] - The project to be billed for this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HmacKeyMetadata].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HmacKeyMetadata> get(
    core.String projectId,
    core.String accessId, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        commons.escapeVariable('$projectId') +
        '/hmacKeys/' +
        commons.escapeVariable('$accessId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HmacKeyMetadata.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of HMAC keys matching the criteria.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Name of the project in which to look for HMAC keys.
  ///
  /// [maxResults] - Maximum number of items to return in a single page of
  /// responses. The service uses this parameter or 250 items, whichever is
  /// smaller. The max number of items per page will also be limited by the
  /// number of distinct service accounts in the response. If the number of
  /// service accounts in a single response is too high, the page will truncated
  /// and a next page token will be returned.
  ///
  /// [pageToken] - A previously-returned page token representing part of the
  /// larger set of results to view.
  ///
  /// [serviceAccountEmail] - If present, only keys for the given service
  /// account are returned.
  ///
  /// [showDeletedKeys] - Whether or not to show keys in the DELETED state.
  ///
  /// [userProject] - The project to be billed for this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HmacKeysMetadata].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HmacKeysMetadata> list(
    core.String projectId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? serviceAccountEmail,
    core.bool? showDeletedKeys,
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (serviceAccountEmail != null)
        'serviceAccountEmail': [serviceAccountEmail],
      if (showDeletedKeys != null) 'showDeletedKeys': ['${showDeletedKeys}'],
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'projects/' + commons.escapeVariable('$projectId') + '/hmacKeys';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HmacKeysMetadata.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the state of an HMAC key.
  ///
  /// See the HMAC Key resource descriptor for valid states.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID owning the service account of the updated key.
  ///
  /// [accessId] - Name of the HMAC key being updated.
  ///
  /// [userProject] - The project to be billed for this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HmacKeyMetadata].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HmacKeyMetadata> update(
    HmacKeyMetadata request,
    core.String projectId,
    core.String accessId, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        commons.escapeVariable('$projectId') +
        '/hmacKeys/' +
        commons.escapeVariable('$accessId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return HmacKeyMetadata.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsServiceAccountResource {
  final commons.ApiRequester _requester;

  ProjectsServiceAccountResource(commons.ApiRequester client)
      : _requester = client;

  /// Get the email address of this project's Google Cloud Storage service
  /// account.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID
  ///
  /// [userProject] - The project to be billed for this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccount> get(
    core.String projectId, {
    core.String? userProject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (userProject != null) 'userProject': [userProject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'projects/' + commons.escapeVariable('$projectId') + '/serviceAccount';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ServiceAccount.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// An Anywhere Cache instance.
class AnywhereCache {
  /// The cache-level entry admission policy.
  core.String? admissionPolicy;

  /// The ID of the Anywhere cache instance.
  core.String? anywhereCacheId;

  /// The name of the bucket containing this cache instance.
  core.String? bucket;

  /// The creation time of the cache instance in RFC 3339 format.
  core.DateTime? createTime;

  /// The ID of the resource, including the project number, bucket name and
  /// anywhere cache ID.
  core.String? id;

  /// The kind of item this is.
  ///
  /// For Anywhere Cache, this is always storage#anywhereCache.
  core.String? kind;

  /// True if the cache instance has an active Update long-running operation.
  core.bool? pendingUpdate;

  /// The link to this cache instance.
  core.String? selfLink;

  /// The current state of the cache instance.
  core.String? state;

  /// The TTL of all cache entries in whole seconds.
  ///
  /// e.g., "7200s".
  core.String? ttl;

  /// The modification time of the cache instance metadata in RFC 3339 format.
  core.DateTime? updateTime;

  /// The zone in which the cache instance is running.
  ///
  /// For example, us-central1-a.
  core.String? zone;

  AnywhereCache({
    this.admissionPolicy,
    this.anywhereCacheId,
    this.bucket,
    this.createTime,
    this.id,
    this.kind,
    this.pendingUpdate,
    this.selfLink,
    this.state,
    this.ttl,
    this.updateTime,
    this.zone,
  });

  AnywhereCache.fromJson(core.Map json_)
      : this(
          admissionPolicy: json_.containsKey('admissionPolicy')
              ? json_['admissionPolicy'] as core.String
              : null,
          anywhereCacheId: json_.containsKey('anywhereCacheId')
              ? json_['anywhereCacheId'] as core.String
              : null,
          bucket: json_.containsKey('bucket')
              ? json_['bucket'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? core.DateTime.parse(json_['createTime'] as core.String)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          pendingUpdate: json_.containsKey('pendingUpdate')
              ? json_['pendingUpdate'] as core.bool
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          ttl: json_.containsKey('ttl') ? json_['ttl'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? core.DateTime.parse(json_['updateTime'] as core.String)
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (admissionPolicy != null) 'admissionPolicy': admissionPolicy!,
        if (anywhereCacheId != null) 'anywhereCacheId': anywhereCacheId!,
        if (bucket != null) 'bucket': bucket!,
        if (createTime != null)
          'createTime': createTime!.toUtc().toIso8601String(),
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (pendingUpdate != null) 'pendingUpdate': pendingUpdate!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (state != null) 'state': state!,
        if (ttl != null) 'ttl': ttl!,
        if (updateTime != null)
          'updateTime': updateTime!.toUtc().toIso8601String(),
        if (zone != null) 'zone': zone!,
      };
}

/// A list of Anywhere Caches.
class AnywhereCaches {
  /// The list of items.
  core.List<AnywhereCache>? items;

  /// The kind of item this is.
  ///
  /// For lists of Anywhere Caches, this is always storage#anywhereCaches.
  core.String? kind;

  /// The continuation token, used to page through large result sets.
  ///
  /// Provide this value in a subsequent request to return the next page of
  /// results.
  core.String? nextPageToken;

  AnywhereCaches({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  AnywhereCaches.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => AnywhereCache.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The bucket's Autoclass configuration.
class BucketAutoclass {
  /// Whether or not Autoclass is enabled on this bucket
  core.bool? enabled;

  /// The storage class that objects in the bucket eventually transition to if
  /// they are not read for a certain length of time.
  ///
  /// Valid values are NEARLINE and ARCHIVE.
  core.String? terminalStorageClass;

  /// A date and time in RFC 3339 format representing the time of the most
  /// recent update to "terminalStorageClass".
  core.DateTime? terminalStorageClassUpdateTime;

  /// A date and time in RFC 3339 format representing the instant at which
  /// "enabled" was last toggled.
  core.DateTime? toggleTime;

  BucketAutoclass({
    this.enabled,
    this.terminalStorageClass,
    this.terminalStorageClassUpdateTime,
    this.toggleTime,
  });

  BucketAutoclass.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          terminalStorageClass: json_.containsKey('terminalStorageClass')
              ? json_['terminalStorageClass'] as core.String
              : null,
          terminalStorageClassUpdateTime:
              json_.containsKey('terminalStorageClassUpdateTime')
                  ? core.DateTime.parse(
                      json_['terminalStorageClassUpdateTime'] as core.String)
                  : null,
          toggleTime: json_.containsKey('toggleTime')
              ? core.DateTime.parse(json_['toggleTime'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (terminalStorageClass != null)
          'terminalStorageClass': terminalStorageClass!,
        if (terminalStorageClassUpdateTime != null)
          'terminalStorageClassUpdateTime':
              terminalStorageClassUpdateTime!.toUtc().toIso8601String(),
        if (toggleTime != null)
          'toggleTime': toggleTime!.toUtc().toIso8601String(),
      };
}

/// The bucket's billing configuration.
class BucketBilling {
  /// When set to true, Requester Pays is enabled for this bucket.
  core.bool? requesterPays;

  BucketBilling({
    this.requesterPays,
  });

  BucketBilling.fromJson(core.Map json_)
      : this(
          requesterPays: json_.containsKey('requesterPays')
              ? json_['requesterPays'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requesterPays != null) 'requesterPays': requesterPays!,
      };
}

class BucketCors {
  /// The value, in seconds, to return in the Access-Control-Max-Age header used
  /// in preflight responses.
  core.int? maxAgeSeconds;

  /// The list of HTTP methods on which to include CORS response headers, (GET,
  /// OPTIONS, POST, etc) Note: "*" is permitted in the list of methods, and
  /// means "any method".
  core.List<core.String>? method;

  /// The list of Origins eligible to receive CORS response headers.
  ///
  /// Note: "*" is permitted in the list of origins, and means "any Origin".
  core.List<core.String>? origin;

  /// The list of HTTP headers other than the simple response headers to give
  /// permission for the user-agent to share across domains.
  core.List<core.String>? responseHeader;

  BucketCors({
    this.maxAgeSeconds,
    this.method,
    this.origin,
    this.responseHeader,
  });

  BucketCors.fromJson(core.Map json_)
      : this(
          maxAgeSeconds: json_.containsKey('maxAgeSeconds')
              ? json_['maxAgeSeconds'] as core.int
              : null,
          method: json_.containsKey('method')
              ? (json_['method'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          origin: json_.containsKey('origin')
              ? (json_['origin'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          responseHeader: json_.containsKey('responseHeader')
              ? (json_['responseHeader'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxAgeSeconds != null) 'maxAgeSeconds': maxAgeSeconds!,
        if (method != null) 'method': method!,
        if (origin != null) 'origin': origin!,
        if (responseHeader != null) 'responseHeader': responseHeader!,
      };
}

/// The bucket's custom placement configuration for Custom Dual Regions.
class BucketCustomPlacementConfig {
  /// The list of regional locations in which data is placed.
  core.List<core.String>? dataLocations;

  BucketCustomPlacementConfig({
    this.dataLocations,
  });

  BucketCustomPlacementConfig.fromJson(core.Map json_)
      : this(
          dataLocations: json_.containsKey('dataLocations')
              ? (json_['dataLocations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataLocations != null) 'dataLocations': dataLocations!,
      };
}

/// Encryption configuration for a bucket.
class BucketEncryption {
  /// A Cloud KMS key that will be used to encrypt objects inserted into this
  /// bucket, if no encryption method is specified.
  core.String? defaultKmsKeyName;

  BucketEncryption({
    this.defaultKmsKeyName,
  });

  BucketEncryption.fromJson(core.Map json_)
      : this(
          defaultKmsKeyName: json_.containsKey('defaultKmsKeyName')
              ? json_['defaultKmsKeyName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultKmsKeyName != null) 'defaultKmsKeyName': defaultKmsKeyName!,
      };
}

/// The bucket's hierarchical namespace configuration.
class BucketHierarchicalNamespace {
  /// When set to true, hierarchical namespace is enabled for this bucket.
  core.bool? enabled;

  BucketHierarchicalNamespace({
    this.enabled,
  });

  BucketHierarchicalNamespace.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// The bucket's uniform bucket-level access configuration.
///
/// The feature was formerly known as Bucket Policy Only. For backward
/// compatibility, this field will be populated with identical information as
/// the uniformBucketLevelAccess field. We recommend using the
/// uniformBucketLevelAccess field to enable and disable the feature.
class BucketIamConfigurationBucketPolicyOnly {
  /// If set, access is controlled only by bucket-level or above IAM policies.
  core.bool? enabled;

  /// The deadline for changing iamConfiguration.bucketPolicyOnly.enabled from
  /// true to false in RFC 3339 format.
  ///
  /// iamConfiguration.bucketPolicyOnly.enabled may be changed from true to
  /// false until the locked time, after which the field is immutable.
  core.DateTime? lockedTime;

  BucketIamConfigurationBucketPolicyOnly({
    this.enabled,
    this.lockedTime,
  });

  BucketIamConfigurationBucketPolicyOnly.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          lockedTime: json_.containsKey('lockedTime')
              ? core.DateTime.parse(json_['lockedTime'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (lockedTime != null)
          'lockedTime': lockedTime!.toUtc().toIso8601String(),
      };
}

/// The bucket's uniform bucket-level access configuration.
class BucketIamConfigurationUniformBucketLevelAccess {
  /// If set, access is controlled only by bucket-level or above IAM policies.
  core.bool? enabled;

  /// The deadline for changing
  /// iamConfiguration.uniformBucketLevelAccess.enabled from true to false in
  /// RFC 3339 format.
  ///
  /// iamConfiguration.uniformBucketLevelAccess.enabled may be changed from true
  /// to false until the locked time, after which the field is immutable.
  core.DateTime? lockedTime;

  BucketIamConfigurationUniformBucketLevelAccess({
    this.enabled,
    this.lockedTime,
  });

  BucketIamConfigurationUniformBucketLevelAccess.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          lockedTime: json_.containsKey('lockedTime')
              ? core.DateTime.parse(json_['lockedTime'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (lockedTime != null)
          'lockedTime': lockedTime!.toUtc().toIso8601String(),
      };
}

/// The bucket's IAM configuration.
class BucketIamConfiguration {
  /// The bucket's uniform bucket-level access configuration.
  ///
  /// The feature was formerly known as Bucket Policy Only. For backward
  /// compatibility, this field will be populated with identical information as
  /// the uniformBucketLevelAccess field. We recommend using the
  /// uniformBucketLevelAccess field to enable and disable the feature.
  BucketIamConfigurationBucketPolicyOnly? bucketPolicyOnly;

  /// The bucket's Public Access Prevention configuration.
  ///
  /// Currently, 'inherited' and 'enforced' are supported.
  core.String? publicAccessPrevention;

  /// The bucket's uniform bucket-level access configuration.
  BucketIamConfigurationUniformBucketLevelAccess? uniformBucketLevelAccess;

  BucketIamConfiguration({
    this.bucketPolicyOnly,
    this.publicAccessPrevention,
    this.uniformBucketLevelAccess,
  });

  BucketIamConfiguration.fromJson(core.Map json_)
      : this(
          bucketPolicyOnly: json_.containsKey('bucketPolicyOnly')
              ? BucketIamConfigurationBucketPolicyOnly.fromJson(
                  json_['bucketPolicyOnly']
                      as core.Map<core.String, core.dynamic>)
              : null,
          publicAccessPrevention: json_.containsKey('publicAccessPrevention')
              ? json_['publicAccessPrevention'] as core.String
              : null,
          uniformBucketLevelAccess:
              json_.containsKey('uniformBucketLevelAccess')
                  ? BucketIamConfigurationUniformBucketLevelAccess.fromJson(
                      json_['uniformBucketLevelAccess']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketPolicyOnly != null) 'bucketPolicyOnly': bucketPolicyOnly!,
        if (publicAccessPrevention != null)
          'publicAccessPrevention': publicAccessPrevention!,
        if (uniformBucketLevelAccess != null)
          'uniformBucketLevelAccess': uniformBucketLevelAccess!,
      };
}

/// The action to take.
class BucketLifecycleRuleAction {
  /// Target storage class.
  ///
  /// Required iff the type of the action is SetStorageClass.
  core.String? storageClass;

  /// Type of the action.
  ///
  /// Currently, only Delete, SetStorageClass, and
  /// AbortIncompleteMultipartUpload are supported.
  core.String? type;

  BucketLifecycleRuleAction({
    this.storageClass,
    this.type,
  });

  BucketLifecycleRuleAction.fromJson(core.Map json_)
      : this(
          storageClass: json_.containsKey('storageClass')
              ? json_['storageClass'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (storageClass != null) 'storageClass': storageClass!,
        if (type != null) 'type': type!,
      };
}

/// The condition(s) under which the action will be taken.
class BucketLifecycleRuleCondition {
  /// Age of an object (in days).
  ///
  /// This condition is satisfied when an object reaches the specified age.
  core.int? age;

  /// A date in RFC 3339 format with only the date part (for instance,
  /// "2013-01-15").
  ///
  /// This condition is satisfied when an object is created before midnight of
  /// the specified date in UTC.
  core.DateTime? createdBefore;

  /// A date in RFC 3339 format with only the date part (for instance,
  /// "2013-01-15").
  ///
  /// This condition is satisfied when the custom time on an object is before
  /// this date in UTC.
  core.DateTime? customTimeBefore;

  /// Number of days elapsed since the user-specified timestamp set on an
  /// object.
  ///
  /// The condition is satisfied if the days elapsed is at least this number. If
  /// no custom timestamp is specified on an object, the condition does not
  /// apply.
  core.int? daysSinceCustomTime;

  /// Number of days elapsed since the noncurrent timestamp of an object.
  ///
  /// The condition is satisfied if the days elapsed is at least this number.
  /// This condition is relevant only for versioned objects. The value of the
  /// field must be a nonnegative integer. If it's zero, the object version will
  /// become eligible for Lifecycle action as soon as it becomes noncurrent.
  core.int? daysSinceNoncurrentTime;

  /// Relevant only for versioned objects.
  ///
  /// If the value is true, this condition matches live objects; if the value is
  /// false, it matches archived objects.
  core.bool? isLive;

  /// A regular expression that satisfies the RE2 syntax.
  ///
  /// This condition is satisfied when the name of the object matches the RE2
  /// pattern. Note: This feature is currently in the "Early Access" launch
  /// stage and is only available to a whitelisted set of users; that means that
  /// this feature may be changed in backward-incompatible ways and that it is
  /// not guaranteed to be released.
  core.String? matchesPattern;

  /// List of object name prefixes.
  ///
  /// This condition will be satisfied when at least one of the prefixes exactly
  /// matches the beginning of the object name.
  core.List<core.String>? matchesPrefix;

  /// Objects having any of the storage classes specified by this condition will
  /// be matched.
  ///
  /// Values include MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE,
  /// STANDARD, and DURABLE_REDUCED_AVAILABILITY.
  core.List<core.String>? matchesStorageClass;

  /// List of object name suffixes.
  ///
  /// This condition will be satisfied when at least one of the suffixes exactly
  /// matches the end of the object name.
  core.List<core.String>? matchesSuffix;

  /// A date in RFC 3339 format with only the date part (for instance,
  /// "2013-01-15").
  ///
  /// This condition is satisfied when the noncurrent time on an object is
  /// before this date in UTC. This condition is relevant only for versioned
  /// objects.
  core.DateTime? noncurrentTimeBefore;

  /// Relevant only for versioned objects.
  ///
  /// If the value is N, this condition is satisfied when there are at least N
  /// versions (including the live version) newer than this version of the
  /// object.
  core.int? numNewerVersions;

  BucketLifecycleRuleCondition({
    this.age,
    this.createdBefore,
    this.customTimeBefore,
    this.daysSinceCustomTime,
    this.daysSinceNoncurrentTime,
    this.isLive,
    this.matchesPattern,
    this.matchesPrefix,
    this.matchesStorageClass,
    this.matchesSuffix,
    this.noncurrentTimeBefore,
    this.numNewerVersions,
  });

  BucketLifecycleRuleCondition.fromJson(core.Map json_)
      : this(
          age: json_.containsKey('age') ? json_['age'] as core.int : null,
          createdBefore: json_.containsKey('createdBefore')
              ? core.DateTime.parse(json_['createdBefore'] as core.String)
              : null,
          customTimeBefore: json_.containsKey('customTimeBefore')
              ? core.DateTime.parse(json_['customTimeBefore'] as core.String)
              : null,
          daysSinceCustomTime: json_.containsKey('daysSinceCustomTime')
              ? json_['daysSinceCustomTime'] as core.int
              : null,
          daysSinceNoncurrentTime: json_.containsKey('daysSinceNoncurrentTime')
              ? json_['daysSinceNoncurrentTime'] as core.int
              : null,
          isLive:
              json_.containsKey('isLive') ? json_['isLive'] as core.bool : null,
          matchesPattern: json_.containsKey('matchesPattern')
              ? json_['matchesPattern'] as core.String
              : null,
          matchesPrefix: json_.containsKey('matchesPrefix')
              ? (json_['matchesPrefix'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          matchesStorageClass: json_.containsKey('matchesStorageClass')
              ? (json_['matchesStorageClass'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          matchesSuffix: json_.containsKey('matchesSuffix')
              ? (json_['matchesSuffix'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          noncurrentTimeBefore: json_.containsKey('noncurrentTimeBefore')
              ? core.DateTime.parse(
                  json_['noncurrentTimeBefore'] as core.String)
              : null,
          numNewerVersions: json_.containsKey('numNewerVersions')
              ? json_['numNewerVersions'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (age != null) 'age': age!,
        if (createdBefore != null)
          'createdBefore':
              "${createdBefore!.year.toString().padLeft(4, '0')}-${createdBefore!.month.toString().padLeft(2, '0')}-${createdBefore!.day.toString().padLeft(2, '0')}",
        if (customTimeBefore != null)
          'customTimeBefore':
              "${customTimeBefore!.year.toString().padLeft(4, '0')}-${customTimeBefore!.month.toString().padLeft(2, '0')}-${customTimeBefore!.day.toString().padLeft(2, '0')}",
        if (daysSinceCustomTime != null)
          'daysSinceCustomTime': daysSinceCustomTime!,
        if (daysSinceNoncurrentTime != null)
          'daysSinceNoncurrentTime': daysSinceNoncurrentTime!,
        if (isLive != null) 'isLive': isLive!,
        if (matchesPattern != null) 'matchesPattern': matchesPattern!,
        if (matchesPrefix != null) 'matchesPrefix': matchesPrefix!,
        if (matchesStorageClass != null)
          'matchesStorageClass': matchesStorageClass!,
        if (matchesSuffix != null) 'matchesSuffix': matchesSuffix!,
        if (noncurrentTimeBefore != null)
          'noncurrentTimeBefore':
              "${noncurrentTimeBefore!.year.toString().padLeft(4, '0')}-${noncurrentTimeBefore!.month.toString().padLeft(2, '0')}-${noncurrentTimeBefore!.day.toString().padLeft(2, '0')}",
        if (numNewerVersions != null) 'numNewerVersions': numNewerVersions!,
      };
}

class BucketLifecycleRule {
  /// The action to take.
  BucketLifecycleRuleAction? action;

  /// The condition(s) under which the action will be taken.
  BucketLifecycleRuleCondition? condition;

  BucketLifecycleRule({
    this.action,
    this.condition,
  });

  BucketLifecycleRule.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? BucketLifecycleRuleAction.fromJson(
                  json_['action'] as core.Map<core.String, core.dynamic>)
              : null,
          condition: json_.containsKey('condition')
              ? BucketLifecycleRuleCondition.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (condition != null) 'condition': condition!,
      };
}

/// The bucket's lifecycle configuration.
///
/// See lifecycle management for more information.
class BucketLifecycle {
  /// A lifecycle management rule, which is made of an action to take and the
  /// condition(s) under which the action will be taken.
  core.List<BucketLifecycleRule>? rule;

  BucketLifecycle({
    this.rule,
  });

  BucketLifecycle.fromJson(core.Map json_)
      : this(
          rule: json_.containsKey('rule')
              ? (json_['rule'] as core.List)
                  .map((value) => BucketLifecycleRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rule != null) 'rule': rule!,
      };
}

/// The bucket's logging configuration, which defines the destination bucket and
/// optional name prefix for the current bucket's logs.
class BucketLogging {
  /// The destination bucket where the current bucket's logs should be placed.
  core.String? logBucket;

  /// A prefix for log object names.
  core.String? logObjectPrefix;

  BucketLogging({
    this.logBucket,
    this.logObjectPrefix,
  });

  BucketLogging.fromJson(core.Map json_)
      : this(
          logBucket: json_.containsKey('logBucket')
              ? json_['logBucket'] as core.String
              : null,
          logObjectPrefix: json_.containsKey('logObjectPrefix')
              ? json_['logObjectPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (logBucket != null) 'logBucket': logBucket!,
        if (logObjectPrefix != null) 'logObjectPrefix': logObjectPrefix!,
      };
}

/// The bucket's object retention config.
class BucketObjectRetention {
  /// The bucket's object retention mode.
  ///
  /// Can be Enabled.
  core.String? mode;

  BucketObjectRetention({
    this.mode,
  });

  BucketObjectRetention.fromJson(core.Map json_)
      : this(
          mode: json_.containsKey('mode') ? json_['mode'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mode != null) 'mode': mode!,
      };
}

/// The owner of the bucket.
///
/// This is always the project team's owner group.
class BucketOwner {
  /// The entity, in the form project-owner-projectId.
  core.String? entity;

  /// The ID for the entity.
  core.String? entityId;

  BucketOwner({
    this.entity,
    this.entityId,
  });

  BucketOwner.fromJson(core.Map json_)
      : this(
          entity: json_.containsKey('entity')
              ? json_['entity'] as core.String
              : null,
          entityId: json_.containsKey('entityId')
              ? json_['entityId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entity != null) 'entity': entity!,
        if (entityId != null) 'entityId': entityId!,
      };
}

/// The bucket's retention policy.
///
/// The retention policy enforces a minimum retention time for all objects
/// contained in the bucket, based on their creation time. Any attempt to
/// overwrite or delete objects younger than the retention period will result in
/// a PERMISSION_DENIED error. An unlocked retention policy can be modified or
/// removed from the bucket via a storage.buckets.update operation. A locked
/// retention policy cannot be removed or shortened in duration for the lifetime
/// of the bucket. Attempting to remove or decrease period of a locked retention
/// policy will result in a PERMISSION_DENIED error.
class BucketRetentionPolicy {
  /// Server-determined value that indicates the time from which policy was
  /// enforced and effective.
  ///
  /// This value is in RFC 3339 format.
  core.DateTime? effectiveTime;

  /// Once locked, an object retention policy cannot be modified.
  core.bool? isLocked;

  /// The duration in seconds that objects need to be retained.
  ///
  /// Retention duration must be greater than zero and less than 100 years. Note
  /// that enforcement of retention periods less than a day is not guaranteed.
  /// Such periods should only be used for testing purposes.
  core.String? retentionPeriod;

  BucketRetentionPolicy({
    this.effectiveTime,
    this.isLocked,
    this.retentionPeriod,
  });

  BucketRetentionPolicy.fromJson(core.Map json_)
      : this(
          effectiveTime: json_.containsKey('effectiveTime')
              ? core.DateTime.parse(json_['effectiveTime'] as core.String)
              : null,
          isLocked: json_.containsKey('isLocked')
              ? json_['isLocked'] as core.bool
              : null,
          retentionPeriod: json_.containsKey('retentionPeriod')
              ? json_['retentionPeriod'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (effectiveTime != null)
          'effectiveTime': effectiveTime!.toUtc().toIso8601String(),
        if (isLocked != null) 'isLocked': isLocked!,
        if (retentionPeriod != null) 'retentionPeriod': retentionPeriod!,
      };
}

/// The bucket's soft delete policy, which defines the period of time that
/// soft-deleted objects will be retained, and cannot be permanently deleted.
class BucketSoftDeletePolicy {
  /// Server-determined value that indicates the time from which the policy, or
  /// one with a greater retention, was effective.
  ///
  /// This value is in RFC 3339 format.
  core.DateTime? effectiveTime;

  /// The duration in seconds that soft-deleted objects in the bucket will be
  /// retained and cannot be permanently deleted.
  core.String? retentionDurationSeconds;

  BucketSoftDeletePolicy({
    this.effectiveTime,
    this.retentionDurationSeconds,
  });

  BucketSoftDeletePolicy.fromJson(core.Map json_)
      : this(
          effectiveTime: json_.containsKey('effectiveTime')
              ? core.DateTime.parse(json_['effectiveTime'] as core.String)
              : null,
          retentionDurationSeconds:
              json_.containsKey('retentionDurationSeconds')
                  ? json_['retentionDurationSeconds'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (effectiveTime != null)
          'effectiveTime': effectiveTime!.toUtc().toIso8601String(),
        if (retentionDurationSeconds != null)
          'retentionDurationSeconds': retentionDurationSeconds!,
      };
}

/// The bucket's versioning configuration.
class BucketVersioning {
  /// While set to true, versioning is fully enabled for this bucket.
  core.bool? enabled;

  BucketVersioning({
    this.enabled,
  });

  BucketVersioning.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// The bucket's website configuration, controlling how the service behaves when
/// accessing bucket contents as a web site.
///
/// See the Static Website Examples for more information.
class BucketWebsite {
  /// If the requested object path is missing, the service will ensure the path
  /// has a trailing '/', append this suffix, and attempt to retrieve the
  /// resulting object.
  ///
  /// This allows the creation of index.html objects to represent directory
  /// pages.
  core.String? mainPageSuffix;

  /// If the requested object path is missing, and any mainPageSuffix object is
  /// missing, if applicable, the service will return the named object from this
  /// bucket as the content for a 404 Not Found result.
  core.String? notFoundPage;

  BucketWebsite({
    this.mainPageSuffix,
    this.notFoundPage,
  });

  BucketWebsite.fromJson(core.Map json_)
      : this(
          mainPageSuffix: json_.containsKey('mainPageSuffix')
              ? json_['mainPageSuffix'] as core.String
              : null,
          notFoundPage: json_.containsKey('notFoundPage')
              ? json_['notFoundPage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mainPageSuffix != null) 'mainPageSuffix': mainPageSuffix!,
        if (notFoundPage != null) 'notFoundPage': notFoundPage!,
      };
}

/// A bucket.
class Bucket {
  /// Access controls on the bucket.
  core.List<BucketAccessControl>? acl;

  /// The bucket's Autoclass configuration.
  BucketAutoclass? autoclass;

  /// The bucket's billing configuration.
  BucketBilling? billing;

  /// The bucket's Cross-Origin Resource Sharing (CORS) configuration.
  core.List<BucketCors>? cors;

  /// The bucket's custom placement configuration for Custom Dual Regions.
  BucketCustomPlacementConfig? customPlacementConfig;

  /// The default value for event-based hold on newly created objects in this
  /// bucket.
  ///
  /// Event-based hold is a way to retain objects indefinitely until an event
  /// occurs, signified by the hold's release. After being released, such
  /// objects will be subject to bucket-level retention (if any). One sample use
  /// case of this flag is for banks to hold loan documents for at least 3 years
  /// after loan is paid in full. Here, bucket-level retention is 3 years and
  /// the event is loan being paid in full. In this example, these objects will
  /// be held intact for any number of years until the event has occurred
  /// (event-based hold on the object is released) and then 3 more years after
  /// that. That means retention duration of the objects begins from the moment
  /// event-based hold transitioned from true to false. Objects under
  /// event-based hold cannot be deleted, overwritten or archived until the hold
  /// is removed.
  core.bool? defaultEventBasedHold;

  /// Default access controls to apply to new objects when no ACL is provided.
  core.List<ObjectAccessControl>? defaultObjectAcl;

  /// Encryption configuration for a bucket.
  BucketEncryption? encryption;

  /// HTTP 1.1 Entity tag for the bucket.
  core.String? etag;

  /// The bucket's hierarchical namespace configuration.
  BucketHierarchicalNamespace? hierarchicalNamespace;

  /// The bucket's IAM configuration.
  BucketIamConfiguration? iamConfiguration;

  /// The ID of the bucket.
  ///
  /// For buckets, the id and name properties are the same.
  core.String? id;

  /// The kind of item this is.
  ///
  /// For buckets, this is always storage#bucket.
  core.String? kind;

  /// User-provided labels, in key/value pairs.
  core.Map<core.String, core.String>? labels;

  /// The bucket's lifecycle configuration.
  ///
  /// See lifecycle management for more information.
  BucketLifecycle? lifecycle;

  /// The location of the bucket.
  ///
  /// Object data for objects in the bucket resides in physical storage within
  /// this region. Defaults to US. See the developer's guide for the
  /// authoritative list.
  core.String? location;

  /// The type of the bucket location.
  core.String? locationType;

  /// The bucket's logging configuration, which defines the destination bucket
  /// and optional name prefix for the current bucket's logs.
  BucketLogging? logging;

  /// The metadata generation of this bucket.
  core.String? metageneration;

  /// The name of the bucket.
  core.String? name;

  /// The bucket's object retention config.
  BucketObjectRetention? objectRetention;

  /// The owner of the bucket.
  ///
  /// This is always the project team's owner group.
  BucketOwner? owner;

  /// The project number of the project the bucket belongs to.
  core.String? projectNumber;

  /// The bucket's retention policy.
  ///
  /// The retention policy enforces a minimum retention time for all objects
  /// contained in the bucket, based on their creation time. Any attempt to
  /// overwrite or delete objects younger than the retention period will result
  /// in a PERMISSION_DENIED error. An unlocked retention policy can be modified
  /// or removed from the bucket via a storage.buckets.update operation. A
  /// locked retention policy cannot be removed or shortened in duration for the
  /// lifetime of the bucket. Attempting to remove or decrease period of a
  /// locked retention policy will result in a PERMISSION_DENIED error.
  BucketRetentionPolicy? retentionPolicy;

  /// The Recovery Point Objective (RPO) of this bucket.
  ///
  /// Set to ASYNC_TURBO to turn on Turbo Replication on a bucket.
  core.String? rpo;

  /// Reserved for future use.
  core.bool? satisfiesPZS;

  /// The URI of this bucket.
  core.String? selfLink;

  /// The bucket's soft delete policy, which defines the period of time that
  /// soft-deleted objects will be retained, and cannot be permanently deleted.
  BucketSoftDeletePolicy? softDeletePolicy;

  /// The bucket's default storage class, used whenever no storageClass is
  /// specified for a newly-created object.
  ///
  /// This defines how objects in the bucket are stored and determines the SLA
  /// and the cost of storage. Values include MULTI_REGIONAL, REGIONAL,
  /// STANDARD, NEARLINE, COLDLINE, ARCHIVE, and DURABLE_REDUCED_AVAILABILITY.
  /// If this value is not specified when the bucket is created, it will default
  /// to STANDARD. For more information, see storage classes.
  core.String? storageClass;

  /// The creation time of the bucket in RFC 3339 format.
  core.DateTime? timeCreated;

  /// The modification time of the bucket in RFC 3339 format.
  core.DateTime? updated;

  /// The bucket's versioning configuration.
  BucketVersioning? versioning;

  /// The bucket's website configuration, controlling how the service behaves
  /// when accessing bucket contents as a web site.
  ///
  /// See the Static Website Examples for more information.
  BucketWebsite? website;

  Bucket({
    this.acl,
    this.autoclass,
    this.billing,
    this.cors,
    this.customPlacementConfig,
    this.defaultEventBasedHold,
    this.defaultObjectAcl,
    this.encryption,
    this.etag,
    this.hierarchicalNamespace,
    this.iamConfiguration,
    this.id,
    this.kind,
    this.labels,
    this.lifecycle,
    this.location,
    this.locationType,
    this.logging,
    this.metageneration,
    this.name,
    this.objectRetention,
    this.owner,
    this.projectNumber,
    this.retentionPolicy,
    this.rpo,
    this.satisfiesPZS,
    this.selfLink,
    this.softDeletePolicy,
    this.storageClass,
    this.timeCreated,
    this.updated,
    this.versioning,
    this.website,
  });

  Bucket.fromJson(core.Map json_)
      : this(
          acl: json_.containsKey('acl')
              ? (json_['acl'] as core.List)
                  .map((value) => BucketAccessControl.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          autoclass: json_.containsKey('autoclass')
              ? BucketAutoclass.fromJson(
                  json_['autoclass'] as core.Map<core.String, core.dynamic>)
              : null,
          billing: json_.containsKey('billing')
              ? BucketBilling.fromJson(
                  json_['billing'] as core.Map<core.String, core.dynamic>)
              : null,
          cors: json_.containsKey('cors')
              ? (json_['cors'] as core.List)
                  .map((value) => BucketCors.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          customPlacementConfig: json_.containsKey('customPlacementConfig')
              ? BucketCustomPlacementConfig.fromJson(
                  json_['customPlacementConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          defaultEventBasedHold: json_.containsKey('defaultEventBasedHold')
              ? json_['defaultEventBasedHold'] as core.bool
              : null,
          defaultObjectAcl: json_.containsKey('defaultObjectAcl')
              ? (json_['defaultObjectAcl'] as core.List)
                  .map((value) => ObjectAccessControl.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          encryption: json_.containsKey('encryption')
              ? BucketEncryption.fromJson(
                  json_['encryption'] as core.Map<core.String, core.dynamic>)
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          hierarchicalNamespace: json_.containsKey('hierarchicalNamespace')
              ? BucketHierarchicalNamespace.fromJson(
                  json_['hierarchicalNamespace']
                      as core.Map<core.String, core.dynamic>)
              : null,
          iamConfiguration: json_.containsKey('iamConfiguration')
              ? BucketIamConfiguration.fromJson(json_['iamConfiguration']
                  as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          lifecycle: json_.containsKey('lifecycle')
              ? BucketLifecycle.fromJson(
                  json_['lifecycle'] as core.Map<core.String, core.dynamic>)
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          locationType: json_.containsKey('locationType')
              ? json_['locationType'] as core.String
              : null,
          logging: json_.containsKey('logging')
              ? BucketLogging.fromJson(
                  json_['logging'] as core.Map<core.String, core.dynamic>)
              : null,
          metageneration: json_.containsKey('metageneration')
              ? json_['metageneration'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          objectRetention: json_.containsKey('objectRetention')
              ? BucketObjectRetention.fromJson(json_['objectRetention']
                  as core.Map<core.String, core.dynamic>)
              : null,
          owner: json_.containsKey('owner')
              ? BucketOwner.fromJson(
                  json_['owner'] as core.Map<core.String, core.dynamic>)
              : null,
          projectNumber: json_.containsKey('projectNumber')
              ? json_['projectNumber'] as core.String
              : null,
          retentionPolicy: json_.containsKey('retentionPolicy')
              ? BucketRetentionPolicy.fromJson(json_['retentionPolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          rpo: json_.containsKey('rpo') ? json_['rpo'] as core.String : null,
          satisfiesPZS: json_.containsKey('satisfiesPZS')
              ? json_['satisfiesPZS'] as core.bool
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          softDeletePolicy: json_.containsKey('softDeletePolicy')
              ? BucketSoftDeletePolicy.fromJson(json_['softDeletePolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          storageClass: json_.containsKey('storageClass')
              ? json_['storageClass'] as core.String
              : null,
          timeCreated: json_.containsKey('timeCreated')
              ? core.DateTime.parse(json_['timeCreated'] as core.String)
              : null,
          updated: json_.containsKey('updated')
              ? core.DateTime.parse(json_['updated'] as core.String)
              : null,
          versioning: json_.containsKey('versioning')
              ? BucketVersioning.fromJson(
                  json_['versioning'] as core.Map<core.String, core.dynamic>)
              : null,
          website: json_.containsKey('website')
              ? BucketWebsite.fromJson(
                  json_['website'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acl != null) 'acl': acl!,
        if (autoclass != null) 'autoclass': autoclass!,
        if (billing != null) 'billing': billing!,
        if (cors != null) 'cors': cors!,
        if (customPlacementConfig != null)
          'customPlacementConfig': customPlacementConfig!,
        if (defaultEventBasedHold != null)
          'defaultEventBasedHold': defaultEventBasedHold!,
        if (defaultObjectAcl != null) 'defaultObjectAcl': defaultObjectAcl!,
        if (encryption != null) 'encryption': encryption!,
        if (etag != null) 'etag': etag!,
        if (hierarchicalNamespace != null)
          'hierarchicalNamespace': hierarchicalNamespace!,
        if (iamConfiguration != null) 'iamConfiguration': iamConfiguration!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (labels != null) 'labels': labels!,
        if (lifecycle != null) 'lifecycle': lifecycle!,
        if (location != null) 'location': location!,
        if (locationType != null) 'locationType': locationType!,
        if (logging != null) 'logging': logging!,
        if (metageneration != null) 'metageneration': metageneration!,
        if (name != null) 'name': name!,
        if (objectRetention != null) 'objectRetention': objectRetention!,
        if (owner != null) 'owner': owner!,
        if (projectNumber != null) 'projectNumber': projectNumber!,
        if (retentionPolicy != null) 'retentionPolicy': retentionPolicy!,
        if (rpo != null) 'rpo': rpo!,
        if (satisfiesPZS != null) 'satisfiesPZS': satisfiesPZS!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (softDeletePolicy != null) 'softDeletePolicy': softDeletePolicy!,
        if (storageClass != null) 'storageClass': storageClass!,
        if (timeCreated != null)
          'timeCreated': timeCreated!.toUtc().toIso8601String(),
        if (updated != null) 'updated': updated!.toUtc().toIso8601String(),
        if (versioning != null) 'versioning': versioning!,
        if (website != null) 'website': website!,
      };
}

/// The project team associated with the entity, if any.
class BucketAccessControlProjectTeam {
  /// The project number.
  core.String? projectNumber;

  /// The team.
  core.String? team;

  BucketAccessControlProjectTeam({
    this.projectNumber,
    this.team,
  });

  BucketAccessControlProjectTeam.fromJson(core.Map json_)
      : this(
          projectNumber: json_.containsKey('projectNumber')
              ? json_['projectNumber'] as core.String
              : null,
          team: json_.containsKey('team') ? json_['team'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectNumber != null) 'projectNumber': projectNumber!,
        if (team != null) 'team': team!,
      };
}

/// An access-control entry.
class BucketAccessControl {
  /// The name of the bucket.
  core.String? bucket;

  /// The domain associated with the entity, if any.
  core.String? domain;

  /// The email address associated with the entity, if any.
  core.String? email;

  /// The entity holding the permission, in one of the following forms:
  /// - user-userId
  /// - user-email
  /// - group-groupId
  /// - group-email
  /// - domain-domain
  /// - project-team-projectId
  /// - allUsers
  /// - allAuthenticatedUsers Examples:
  /// - The user liz@example.com would be user-liz@example.com.
  ///
  ///
  /// - The group example@googlegroups.com would be
  /// group-example@googlegroups.com.
  /// - To refer to all members of the Google Apps for Business domain
  /// example.com, the entity would be domain-example.com.
  core.String? entity;

  /// The ID for the entity, if any.
  core.String? entityId;

  /// HTTP 1.1 Entity tag for the access-control entry.
  core.String? etag;

  /// The ID of the access-control entry.
  core.String? id;

  /// The kind of item this is.
  ///
  /// For bucket access control entries, this is always
  /// storage#bucketAccessControl.
  core.String? kind;

  /// The project team associated with the entity, if any.
  BucketAccessControlProjectTeam? projectTeam;

  /// The access permission for the entity.
  core.String? role;

  /// The link to this access-control entry.
  core.String? selfLink;

  BucketAccessControl({
    this.bucket,
    this.domain,
    this.email,
    this.entity,
    this.entityId,
    this.etag,
    this.id,
    this.kind,
    this.projectTeam,
    this.role,
    this.selfLink,
  });

  BucketAccessControl.fromJson(core.Map json_)
      : this(
          bucket: json_.containsKey('bucket')
              ? json_['bucket'] as core.String
              : null,
          domain: json_.containsKey('domain')
              ? json_['domain'] as core.String
              : null,
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          entity: json_.containsKey('entity')
              ? json_['entity'] as core.String
              : null,
          entityId: json_.containsKey('entityId')
              ? json_['entityId'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          projectTeam: json_.containsKey('projectTeam')
              ? BucketAccessControlProjectTeam.fromJson(
                  json_['projectTeam'] as core.Map<core.String, core.dynamic>)
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucket != null) 'bucket': bucket!,
        if (domain != null) 'domain': domain!,
        if (email != null) 'email': email!,
        if (entity != null) 'entity': entity!,
        if (entityId != null) 'entityId': entityId!,
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (projectTeam != null) 'projectTeam': projectTeam!,
        if (role != null) 'role': role!,
        if (selfLink != null) 'selfLink': selfLink!,
      };
}

/// An access-control list.
class BucketAccessControls {
  /// The list of items.
  core.List<BucketAccessControl>? items;

  /// The kind of item this is.
  ///
  /// For lists of bucket access control entries, this is always
  /// storage#bucketAccessControls.
  core.String? kind;

  BucketAccessControls({
    this.items,
    this.kind,
  });

  BucketAccessControls.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => BucketAccessControl.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
      };
}

/// A list of buckets.
class Buckets {
  /// The list of items.
  core.List<Bucket>? items;

  /// The kind of item this is.
  ///
  /// For lists of buckets, this is always storage#buckets.
  core.String? kind;

  /// The continuation token, used to page through large result sets.
  ///
  /// Provide this value in a subsequent request to return the next page of
  /// results.
  core.String? nextPageToken;

  Buckets({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  Buckets.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Bucket.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A bulk restore objects request.
class BulkRestoreObjectsRequest {
  /// If false (default), the restore will not overwrite live objects with the
  /// same name at the destination.
  ///
  /// This means some deleted objects may be skipped. If true, live objects will
  /// be overwritten resulting in a noncurrent object (if versioning is
  /// enabled). If versioning is not enabled, overwriting the object will result
  /// in a soft-deleted object. In either case, if a noncurrent object already
  /// exists with the same name, a live version can be written without issue.
  core.bool? allowOverwrite;

  /// If true, copies the source object's ACL; otherwise, uses the bucket's
  /// default object ACL.
  ///
  /// The default is false.
  core.bool? copySourceAcl;

  /// Restores only the objects matching any of the specified glob(s).
  ///
  /// If this parameter is not specified, all objects will be restored within
  /// the specified time range.
  core.List<core.String>? matchGlobs;

  /// Restores only the objects that were soft-deleted after this time.
  core.DateTime? softDeletedAfterTime;

  /// Restores only the objects that were soft-deleted before this time.
  core.DateTime? softDeletedBeforeTime;

  BulkRestoreObjectsRequest({
    this.allowOverwrite,
    this.copySourceAcl,
    this.matchGlobs,
    this.softDeletedAfterTime,
    this.softDeletedBeforeTime,
  });

  BulkRestoreObjectsRequest.fromJson(core.Map json_)
      : this(
          allowOverwrite: json_.containsKey('allowOverwrite')
              ? json_['allowOverwrite'] as core.bool
              : null,
          copySourceAcl: json_.containsKey('copySourceAcl')
              ? json_['copySourceAcl'] as core.bool
              : null,
          matchGlobs: json_.containsKey('matchGlobs')
              ? (json_['matchGlobs'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          softDeletedAfterTime: json_.containsKey('softDeletedAfterTime')
              ? core.DateTime.parse(
                  json_['softDeletedAfterTime'] as core.String)
              : null,
          softDeletedBeforeTime: json_.containsKey('softDeletedBeforeTime')
              ? core.DateTime.parse(
                  json_['softDeletedBeforeTime'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowOverwrite != null) 'allowOverwrite': allowOverwrite!,
        if (copySourceAcl != null) 'copySourceAcl': copySourceAcl!,
        if (matchGlobs != null) 'matchGlobs': matchGlobs!,
        if (softDeletedAfterTime != null)
          'softDeletedAfterTime':
              softDeletedAfterTime!.toUtc().toIso8601String(),
        if (softDeletedBeforeTime != null)
          'softDeletedBeforeTime':
              softDeletedBeforeTime!.toUtc().toIso8601String(),
      };
}

/// An notification channel used to watch for resource changes.
class Channel {
  /// The address where notifications are delivered for this channel.
  core.String? address;

  /// Date and time of notification channel expiration, expressed as a Unix
  /// timestamp, in milliseconds.
  ///
  /// Optional.
  core.String? expiration;

  /// A UUID or similar unique string that identifies this channel.
  core.String? id;

  /// Identifies this as a notification channel used to watch for changes to a
  /// resource, which is "api#channel".
  core.String? kind;

  /// Additional parameters controlling delivery channel behavior.
  ///
  /// Optional.
  core.Map<core.String, core.String>? params;

  /// A Boolean value to indicate whether payload is wanted.
  ///
  /// Optional.
  core.bool? payload;

  /// An opaque ID that identifies the resource being watched on this channel.
  ///
  /// Stable across different API versions.
  core.String? resourceId;

  /// A version-specific identifier for the watched resource.
  core.String? resourceUri;

  /// An arbitrary string delivered to the target address with each notification
  /// delivered over this channel.
  ///
  /// Optional.
  core.String? token;

  /// The type of delivery mechanism used for this channel.
  core.String? type;

  Channel({
    this.address,
    this.expiration,
    this.id,
    this.kind,
    this.params,
    this.payload,
    this.resourceId,
    this.resourceUri,
    this.token,
    this.type,
  });

  Channel.fromJson(core.Map json_)
      : this(
          address: json_.containsKey('address')
              ? json_['address'] as core.String
              : null,
          expiration: json_.containsKey('expiration')
              ? json_['expiration'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          params: json_.containsKey('params')
              ? (json_['params'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          payload: json_.containsKey('payload')
              ? json_['payload'] as core.bool
              : null,
          resourceId: json_.containsKey('resourceId')
              ? json_['resourceId'] as core.String
              : null,
          resourceUri: json_.containsKey('resourceUri')
              ? json_['resourceUri'] as core.String
              : null,
          token:
              json_.containsKey('token') ? json_['token'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (expiration != null) 'expiration': expiration!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (params != null) 'params': params!,
        if (payload != null) 'payload': payload!,
        if (resourceId != null) 'resourceId': resourceId!,
        if (resourceUri != null) 'resourceUri': resourceUri!,
        if (token != null) 'token': token!,
        if (type != null) 'type': type!,
      };
}

/// Conditions that must be met for this operation to execute.
class ComposeRequestSourceObjectsObjectPreconditions {
  /// Only perform the composition if the generation of the source object that
  /// would be used matches this value.
  ///
  /// If this value and a generation are both specified, they must be the same
  /// value or the call will fail.
  core.String? ifGenerationMatch;

  ComposeRequestSourceObjectsObjectPreconditions({
    this.ifGenerationMatch,
  });

  ComposeRequestSourceObjectsObjectPreconditions.fromJson(core.Map json_)
      : this(
          ifGenerationMatch: json_.containsKey('ifGenerationMatch')
              ? json_['ifGenerationMatch'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ifGenerationMatch != null) 'ifGenerationMatch': ifGenerationMatch!,
      };
}

class ComposeRequestSourceObjects {
  /// The generation of this object to use as the source.
  core.String? generation;

  /// The source object's name.
  ///
  /// All source objects must reside in the same bucket.
  core.String? name;

  /// Conditions that must be met for this operation to execute.
  ComposeRequestSourceObjectsObjectPreconditions? objectPreconditions;

  ComposeRequestSourceObjects({
    this.generation,
    this.name,
    this.objectPreconditions,
  });

  ComposeRequestSourceObjects.fromJson(core.Map json_)
      : this(
          generation: json_.containsKey('generation')
              ? json_['generation'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          objectPreconditions: json_.containsKey('objectPreconditions')
              ? ComposeRequestSourceObjectsObjectPreconditions.fromJson(
                  json_['objectPreconditions']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (generation != null) 'generation': generation!,
        if (name != null) 'name': name!,
        if (objectPreconditions != null)
          'objectPreconditions': objectPreconditions!,
      };
}

/// A Compose request.
class ComposeRequest {
  /// Properties of the resulting object.
  Object? destination;

  /// The kind of item this is.
  core.String? kind;

  /// The list of source objects that will be concatenated into a single object.
  core.List<ComposeRequestSourceObjects>? sourceObjects;

  ComposeRequest({
    this.destination,
    this.kind,
    this.sourceObjects,
  });

  ComposeRequest.fromJson(core.Map json_)
      : this(
          destination: json_.containsKey('destination')
              ? Object.fromJson(
                  json_['destination'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          sourceObjects: json_.containsKey('sourceObjects')
              ? (json_['sourceObjects'] as core.List)
                  .map((value) => ComposeRequestSourceObjects.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destination != null) 'destination': destination!,
        if (kind != null) 'kind': kind!,
        if (sourceObjects != null) 'sourceObjects': sourceObjects!,
      };
}

/// Represents an expression text.
///
/// Example: title: "User account presence" description: "Determines whether the
/// request has a user account" expression: "size(request.user) \> 0"
class Expr {
  /// An optional description of the expression.
  ///
  /// This is a longer text which describes the expression, e.g. when hovered
  /// over it in a UI.
  core.String? description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  ///
  /// The application context of the containing message determines which
  /// well-known feature set of CEL is supported.
  core.String? expression;

  /// An optional string indicating the location of the expression for error
  /// reporting, e.g. a file name and a position in the file.
  core.String? location;

  /// An optional title for the expression, i.e. a short string describing its
  /// purpose.
  ///
  /// This can be used e.g. in UIs which allow to enter the expression.
  core.String? title;

  Expr({
    this.description,
    this.expression,
    this.location,
    this.title,
  });

  Expr.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          expression: json_.containsKey('expression')
              ? json_['expression'] as core.String
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (expression != null) 'expression': expression!,
        if (location != null) 'location': location!,
        if (title != null) 'title': title!,
      };
}

/// Only present if the folder is part of an ongoing rename folder operation.
///
/// Contains information which can be used to query the operation status.
class FolderPendingRenameInfo {
  /// The ID of the rename folder operation.
  core.String? operationId;

  FolderPendingRenameInfo({
    this.operationId,
  });

  FolderPendingRenameInfo.fromJson(core.Map json_)
      : this(
          operationId: json_.containsKey('operationId')
              ? json_['operationId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operationId != null) 'operationId': operationId!,
      };
}

/// A folder.
///
/// Only available in buckets with hierarchical namespace enabled.
class Folder {
  /// The name of the bucket containing this folder.
  core.String? bucket;

  /// The creation time of the folder in RFC 3339 format.
  core.DateTime? createTime;

  /// The ID of the folder, including the bucket name, folder name.
  core.String? id;

  /// The kind of item this is.
  ///
  /// For folders, this is always storage#folder.
  core.String? kind;

  /// The version of the metadata for this folder.
  ///
  /// Used for preconditions and for detecting changes in metadata.
  core.String? metageneration;

  /// The name of the folder.
  ///
  /// Required if not specified by URL parameter.
  core.String? name;

  /// Only present if the folder is part of an ongoing rename folder operation.
  ///
  /// Contains information which can be used to query the operation status.
  FolderPendingRenameInfo? pendingRenameInfo;

  /// The link to this folder.
  core.String? selfLink;

  /// The modification time of the folder metadata in RFC 3339 format.
  core.DateTime? updateTime;

  Folder({
    this.bucket,
    this.createTime,
    this.id,
    this.kind,
    this.metageneration,
    this.name,
    this.pendingRenameInfo,
    this.selfLink,
    this.updateTime,
  });

  Folder.fromJson(core.Map json_)
      : this(
          bucket: json_.containsKey('bucket')
              ? json_['bucket'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? core.DateTime.parse(json_['createTime'] as core.String)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metageneration: json_.containsKey('metageneration')
              ? json_['metageneration'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          pendingRenameInfo: json_.containsKey('pendingRenameInfo')
              ? FolderPendingRenameInfo.fromJson(json_['pendingRenameInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? core.DateTime.parse(json_['updateTime'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucket != null) 'bucket': bucket!,
        if (createTime != null)
          'createTime': createTime!.toUtc().toIso8601String(),
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (metageneration != null) 'metageneration': metageneration!,
        if (name != null) 'name': name!,
        if (pendingRenameInfo != null) 'pendingRenameInfo': pendingRenameInfo!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (updateTime != null)
          'updateTime': updateTime!.toUtc().toIso8601String(),
      };
}

/// A list of folders.
class Folders {
  /// The list of items.
  core.List<Folder>? items;

  /// The kind of item this is.
  ///
  /// For lists of folders, this is always storage#folders.
  core.String? kind;

  /// The continuation token, used to page through large result sets.
  ///
  /// Provide this value in a subsequent request to return the next page of
  /// results.
  core.String? nextPageToken;

  Folders({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  Folders.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Folder.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for storage.buckets.operations.list.
class GoogleLongrunningListOperationsResponse {
  /// The continuation token, used to page through large result sets.
  ///
  /// Provide this value in a subsequent request to return the next page of
  /// results.
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
  /// If the value is "false", it means the operation is still in progress.
  ///
  /// If "true", the operation is completed, and either "error" or "response" is
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
  /// If you use the default HTTP mapping, the "name" should be a resource name
  /// ending with "operations/{operationId}".
  core.String? name;

  /// The normal response of the operation in case of success.
  ///
  /// If the original method returns no data on success, such as "Delete", the
  /// response is google.protobuf.Empty. If the original method is standard
  /// Get/Create/Update, the response should be the resource. For other methods,
  /// the response should have the type "XxxResponse", where "Xxx" is the
  /// original method name. For example, if the original method name is
  /// "TakeSnapshot()", the inferred response type is "TakeSnapshotResponse".
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

/// The "Status" type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each "Status" message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class GoogleRpcStatus {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int? code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? details;

  /// A developer-facing error message, which should be in English.
  core.String? message;

  GoogleRpcStatus({
    this.code,
    this.details,
    this.message,
  });

  GoogleRpcStatus.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.int : null,
          details: json_.containsKey('details')
              ? (json_['details'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (details != null) 'details': details!,
        if (message != null) 'message': message!,
      };
}

/// JSON template to produce a JSON-style HMAC Key resource for Create
/// responses.
class HmacKey {
  /// The kind of item this is.
  ///
  /// For HMAC keys, this is always storage#hmacKey.
  core.String? kind;

  /// Key metadata.
  HmacKeyMetadata? metadata;

  /// HMAC secret key material.
  core.String? secret;

  HmacKey({
    this.kind,
    this.metadata,
    this.secret,
  });

  HmacKey.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metadata: json_.containsKey('metadata')
              ? HmacKeyMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          secret: json_.containsKey('secret')
              ? json_['secret'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (metadata != null) 'metadata': metadata!,
        if (secret != null) 'secret': secret!,
      };
}

/// JSON template to produce a JSON-style HMAC Key metadata resource.
class HmacKeyMetadata {
  /// The ID of the HMAC Key.
  core.String? accessId;

  /// HTTP 1.1 Entity tag for the HMAC key.
  core.String? etag;

  /// The ID of the HMAC key, including the Project ID and the Access ID.
  core.String? id;

  /// The kind of item this is.
  ///
  /// For HMAC Key metadata, this is always storage#hmacKeyMetadata.
  core.String? kind;

  /// Project ID owning the service account to which the key authenticates.
  core.String? projectId;

  /// The link to this resource.
  core.String? selfLink;

  /// The email address of the key's associated service account.
  core.String? serviceAccountEmail;

  /// The state of the key.
  ///
  /// Can be one of ACTIVE, INACTIVE, or DELETED.
  core.String? state;

  /// The creation time of the HMAC key in RFC 3339 format.
  core.DateTime? timeCreated;

  /// The last modification time of the HMAC key metadata in RFC 3339 format.
  core.DateTime? updated;

  HmacKeyMetadata({
    this.accessId,
    this.etag,
    this.id,
    this.kind,
    this.projectId,
    this.selfLink,
    this.serviceAccountEmail,
    this.state,
    this.timeCreated,
    this.updated,
  });

  HmacKeyMetadata.fromJson(core.Map json_)
      : this(
          accessId: json_.containsKey('accessId')
              ? json_['accessId'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          serviceAccountEmail: json_.containsKey('serviceAccountEmail')
              ? json_['serviceAccountEmail'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          timeCreated: json_.containsKey('timeCreated')
              ? core.DateTime.parse(json_['timeCreated'] as core.String)
              : null,
          updated: json_.containsKey('updated')
              ? core.DateTime.parse(json_['updated'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessId != null) 'accessId': accessId!,
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (projectId != null) 'projectId': projectId!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (serviceAccountEmail != null)
          'serviceAccountEmail': serviceAccountEmail!,
        if (state != null) 'state': state!,
        if (timeCreated != null)
          'timeCreated': timeCreated!.toUtc().toIso8601String(),
        if (updated != null) 'updated': updated!.toUtc().toIso8601String(),
      };
}

/// A list of hmacKeys.
class HmacKeysMetadata {
  /// The list of items.
  core.List<HmacKeyMetadata>? items;

  /// The kind of item this is.
  ///
  /// For lists of hmacKeys, this is always storage#hmacKeysMetadata.
  core.String? kind;

  /// The continuation token, used to page through large result sets.
  ///
  /// Provide this value in a subsequent request to return the next page of
  /// results.
  core.String? nextPageToken;

  HmacKeysMetadata({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  HmacKeysMetadata.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => HmacKeyMetadata.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A managed folder.
class ManagedFolder {
  /// The name of the bucket containing this managed folder.
  core.String? bucket;

  /// The creation time of the managed folder in RFC 3339 format.
  core.DateTime? createTime;

  /// The ID of the managed folder, including the bucket name and managed folder
  /// name.
  core.String? id;

  /// The kind of item this is.
  ///
  /// For managed folders, this is always storage#managedFolder.
  core.String? kind;

  /// The version of the metadata for this managed folder.
  ///
  /// Used for preconditions and for detecting changes in metadata.
  core.String? metageneration;

  /// The name of the managed folder.
  ///
  /// Required if not specified by URL parameter.
  core.String? name;

  /// The link to this managed folder.
  core.String? selfLink;

  /// The last update time of the managed folder metadata in RFC 3339 format.
  core.DateTime? updateTime;

  ManagedFolder({
    this.bucket,
    this.createTime,
    this.id,
    this.kind,
    this.metageneration,
    this.name,
    this.selfLink,
    this.updateTime,
  });

  ManagedFolder.fromJson(core.Map json_)
      : this(
          bucket: json_.containsKey('bucket')
              ? json_['bucket'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? core.DateTime.parse(json_['createTime'] as core.String)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metageneration: json_.containsKey('metageneration')
              ? json_['metageneration'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? core.DateTime.parse(json_['updateTime'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucket != null) 'bucket': bucket!,
        if (createTime != null)
          'createTime': createTime!.toUtc().toIso8601String(),
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (metageneration != null) 'metageneration': metageneration!,
        if (name != null) 'name': name!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (updateTime != null)
          'updateTime': updateTime!.toUtc().toIso8601String(),
      };
}

/// A list of managed folders.
class ManagedFolders {
  /// The list of items.
  core.List<ManagedFolder>? items;

  /// The kind of item this is.
  ///
  /// For lists of managed folders, this is always storage#managedFolders.
  core.String? kind;

  /// The continuation token, used to page through large result sets.
  ///
  /// Provide this value in a subsequent request to return the next page of
  /// results.
  core.String? nextPageToken;

  ManagedFolders({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  ManagedFolders.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => ManagedFolder.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A subscription to receive Google PubSub notifications.
class Notification {
  /// An optional list of additional attributes to attach to each Cloud PubSub
  /// message published for this notification subscription.
  core.Map<core.String, core.String>? customAttributes;

  /// HTTP 1.1 Entity tag for this subscription notification.
  core.String? etag;

  /// If present, only send notifications about listed event types.
  ///
  /// If empty, sent notifications for all event types.
  core.List<core.String>? eventTypes;

  /// The ID of the notification.
  core.String? id;

  /// The kind of item this is.
  ///
  /// For notifications, this is always storage#notification.
  core.String? kind;

  /// If present, only apply this notification configuration to object names
  /// that begin with this prefix.
  core.String? objectNamePrefix;

  /// The desired content of the Payload.
  core.String? payloadFormat;

  /// The canonical URL of this notification.
  core.String? selfLink;

  /// The Cloud PubSub topic to which this subscription publishes.
  ///
  /// Formatted as:
  /// '//pubsub.googleapis.com/projects/{project-identifier}/topics/{my-topic}'
  core.String? topic;

  Notification({
    this.customAttributes,
    this.etag,
    this.eventTypes,
    this.id,
    this.kind,
    this.objectNamePrefix,
    this.payloadFormat,
    this.selfLink,
    this.topic,
  });

  Notification.fromJson(core.Map json_)
      : this(
          customAttributes: json_.containsKey('custom_attributes')
              ? (json_['custom_attributes']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          eventTypes: json_.containsKey('event_types')
              ? (json_['event_types'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          objectNamePrefix: json_.containsKey('object_name_prefix')
              ? json_['object_name_prefix'] as core.String
              : null,
          payloadFormat: json_.containsKey('payload_format')
              ? json_['payload_format'] as core.String
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          topic:
              json_.containsKey('topic') ? json_['topic'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customAttributes != null) 'custom_attributes': customAttributes!,
        if (etag != null) 'etag': etag!,
        if (eventTypes != null) 'event_types': eventTypes!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (objectNamePrefix != null) 'object_name_prefix': objectNamePrefix!,
        if (payloadFormat != null) 'payload_format': payloadFormat!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (topic != null) 'topic': topic!,
      };
}

/// A list of notification subscriptions.
class Notifications {
  /// The list of items.
  core.List<Notification>? items;

  /// The kind of item this is.
  ///
  /// For lists of notifications, this is always storage#notifications.
  core.String? kind;

  Notifications({
    this.items,
    this.kind,
  });

  Notifications.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Notification.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
      };
}

/// Metadata of customer-supplied encryption key, if the object is encrypted by
/// such a key.
class ObjectCustomerEncryption {
  /// The encryption algorithm.
  core.String? encryptionAlgorithm;

  /// SHA256 hash value of the encryption key.
  core.String? keySha256;

  ObjectCustomerEncryption({
    this.encryptionAlgorithm,
    this.keySha256,
  });

  ObjectCustomerEncryption.fromJson(core.Map json_)
      : this(
          encryptionAlgorithm: json_.containsKey('encryptionAlgorithm')
              ? json_['encryptionAlgorithm'] as core.String
              : null,
          keySha256: json_.containsKey('keySha256')
              ? json_['keySha256'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encryptionAlgorithm != null)
          'encryptionAlgorithm': encryptionAlgorithm!,
        if (keySha256 != null) 'keySha256': keySha256!,
      };
}

/// The owner of the object.
///
/// This will always be the uploader of the object.
class ObjectOwner {
  /// The entity, in the form user-userId.
  core.String? entity;

  /// The ID for the entity.
  core.String? entityId;

  ObjectOwner({
    this.entity,
    this.entityId,
  });

  ObjectOwner.fromJson(core.Map json_)
      : this(
          entity: json_.containsKey('entity')
              ? json_['entity'] as core.String
              : null,
          entityId: json_.containsKey('entityId')
              ? json_['entityId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entity != null) 'entity': entity!,
        if (entityId != null) 'entityId': entityId!,
      };
}

/// A collection of object level retention parameters.
class ObjectRetention {
  /// The bucket's object retention mode, can only be Unlocked or Locked.
  core.String? mode;

  /// A time in RFC 3339 format until which object retention protects this
  /// object.
  core.DateTime? retainUntilTime;

  ObjectRetention({
    this.mode,
    this.retainUntilTime,
  });

  ObjectRetention.fromJson(core.Map json_)
      : this(
          mode: json_.containsKey('mode') ? json_['mode'] as core.String : null,
          retainUntilTime: json_.containsKey('retainUntilTime')
              ? core.DateTime.parse(json_['retainUntilTime'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mode != null) 'mode': mode!,
        if (retainUntilTime != null)
          'retainUntilTime': retainUntilTime!.toUtc().toIso8601String(),
      };
}

/// An object.
class Object {
  /// Access controls on the object.
  core.List<ObjectAccessControl>? acl;

  /// The name of the bucket containing this object.
  core.String? bucket;

  /// Cache-Control directive for the object data.
  ///
  /// If omitted, and the object is accessible to all anonymous users, the
  /// default will be public, max-age=3600.
  core.String? cacheControl;

  /// Number of underlying components that make up this object.
  ///
  /// Components are accumulated by compose operations.
  core.int? componentCount;

  /// Content-Disposition of the object data.
  core.String? contentDisposition;

  /// Content-Encoding of the object data.
  core.String? contentEncoding;

  /// Content-Language of the object data.
  core.String? contentLanguage;

  /// Content-Type of the object data.
  ///
  /// If an object is stored without a Content-Type, it is served as
  /// application/octet-stream.
  core.String? contentType;

  /// CRC32c checksum, as described in RFC 4960, Appendix B; encoded using
  /// base64 in big-endian byte order.
  ///
  /// For more information about using the CRC32c checksum, see Hashes and
  /// ETags: Best Practices.
  core.String? crc32c;

  /// A timestamp in RFC 3339 format specified by the user for an object.
  core.DateTime? customTime;

  /// Metadata of customer-supplied encryption key, if the object is encrypted
  /// by such a key.
  ObjectCustomerEncryption? customerEncryption;

  /// HTTP 1.1 Entity tag for the object.
  core.String? etag;

  /// Whether an object is under event-based hold.
  ///
  /// Event-based hold is a way to retain objects until an event occurs, which
  /// is signified by the hold's release (i.e. this value is set to false).
  /// After being released (set to false), such objects will be subject to
  /// bucket-level retention (if any). One sample use case of this flag is for
  /// banks to hold loan documents for at least 3 years after loan is paid in
  /// full. Here, bucket-level retention is 3 years and the event is the loan
  /// being paid in full. In this example, these objects will be held intact for
  /// any number of years until the event has occurred (event-based hold on the
  /// object is released) and then 3 more years after that. That means retention
  /// duration of the objects begins from the moment event-based hold
  /// transitioned from true to false.
  core.bool? eventBasedHold;

  /// The content generation of this object.
  ///
  /// Used for object versioning.
  core.String? generation;

  /// This is the time (in the future) when the soft-deleted object will no
  /// longer be restorable.
  ///
  /// It is equal to the soft delete time plus the current soft delete retention
  /// duration of the bucket.
  core.DateTime? hardDeleteTime;

  /// The ID of the object, including the bucket name, object name, and
  /// generation number.
  core.String? id;

  /// The kind of item this is.
  ///
  /// For objects, this is always storage#object.
  core.String? kind;

  /// Not currently supported.
  ///
  /// Specifying the parameter causes the request to fail with status code 400 -
  /// Bad Request.
  core.String? kmsKeyName;

  /// MD5 hash of the data; encoded using base64.
  ///
  /// For more information about using the MD5 hash, see Hashes and ETags: Best
  /// Practices.
  core.String? md5Hash;

  /// Media download link.
  core.String? mediaLink;

  /// User-provided metadata, in key/value pairs.
  core.Map<core.String, core.String>? metadata;

  /// The version of the metadata for this object at this generation.
  ///
  /// Used for preconditions and for detecting changes in metadata. A
  /// metageneration number is only meaningful in the context of a particular
  /// generation of a particular object.
  core.String? metageneration;

  /// The name of the object.
  ///
  /// Required if not specified by URL parameter.
  core.String? name;

  /// The owner of the object.
  ///
  /// This will always be the uploader of the object.
  ObjectOwner? owner;

  /// A collection of object level retention parameters.
  ObjectRetention? retention;

  /// A server-determined value that specifies the earliest time that the
  /// object's retention period expires.
  ///
  /// This value is in RFC 3339 format. Note 1: This field is not provided for
  /// objects with an active event-based hold, since retention expiration is
  /// unknown until the hold is removed. Note 2: This value can be provided even
  /// when temporary hold is set (so that the user can reason about policy
  /// without having to first unset the temporary hold).
  core.DateTime? retentionExpirationTime;

  /// The link to this object.
  core.String? selfLink;

  /// Content-Length of the data in bytes.
  core.String? size;

  /// The time at which the object became soft-deleted in RFC 3339 format.
  core.DateTime? softDeleteTime;

  /// Storage class of the object.
  core.String? storageClass;

  /// Whether an object is under temporary hold.
  ///
  /// While this flag is set to true, the object is protected against deletion
  /// and overwrites. A common use case of this flag is regulatory
  /// investigations where objects need to be retained while the investigation
  /// is ongoing. Note that unlike event-based hold, temporary hold does not
  /// impact retention expiration time of an object.
  core.bool? temporaryHold;

  /// The creation time of the object in RFC 3339 format.
  core.DateTime? timeCreated;

  /// The time at which the object became noncurrent in RFC 3339 format.
  ///
  /// Will be returned if and only if this version of the object has been
  /// deleted.
  core.DateTime? timeDeleted;

  /// The time at which the object's storage class was last changed.
  ///
  /// When the object is initially created, it will be set to timeCreated.
  core.DateTime? timeStorageClassUpdated;

  /// The modification time of the object metadata in RFC 3339 format.
  ///
  /// Set initially to object creation time and then updated whenever any
  /// metadata of the object changes. This includes changes made by a requester,
  /// such as modifying custom metadata, as well as changes made by Cloud
  /// Storage on behalf of a requester, such as changing the storage class based
  /// on an Object Lifecycle Configuration.
  core.DateTime? updated;

  Object({
    this.acl,
    this.bucket,
    this.cacheControl,
    this.componentCount,
    this.contentDisposition,
    this.contentEncoding,
    this.contentLanguage,
    this.contentType,
    this.crc32c,
    this.customTime,
    this.customerEncryption,
    this.etag,
    this.eventBasedHold,
    this.generation,
    this.hardDeleteTime,
    this.id,
    this.kind,
    this.kmsKeyName,
    this.md5Hash,
    this.mediaLink,
    this.metadata,
    this.metageneration,
    this.name,
    this.owner,
    this.retention,
    this.retentionExpirationTime,
    this.selfLink,
    this.size,
    this.softDeleteTime,
    this.storageClass,
    this.temporaryHold,
    this.timeCreated,
    this.timeDeleted,
    this.timeStorageClassUpdated,
    this.updated,
  });

  Object.fromJson(core.Map json_)
      : this(
          acl: json_.containsKey('acl')
              ? (json_['acl'] as core.List)
                  .map((value) => ObjectAccessControl.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bucket: json_.containsKey('bucket')
              ? json_['bucket'] as core.String
              : null,
          cacheControl: json_.containsKey('cacheControl')
              ? json_['cacheControl'] as core.String
              : null,
          componentCount: json_.containsKey('componentCount')
              ? json_['componentCount'] as core.int
              : null,
          contentDisposition: json_.containsKey('contentDisposition')
              ? json_['contentDisposition'] as core.String
              : null,
          contentEncoding: json_.containsKey('contentEncoding')
              ? json_['contentEncoding'] as core.String
              : null,
          contentLanguage: json_.containsKey('contentLanguage')
              ? json_['contentLanguage'] as core.String
              : null,
          contentType: json_.containsKey('contentType')
              ? json_['contentType'] as core.String
              : null,
          crc32c: json_.containsKey('crc32c')
              ? json_['crc32c'] as core.String
              : null,
          customTime: json_.containsKey('customTime')
              ? core.DateTime.parse(json_['customTime'] as core.String)
              : null,
          customerEncryption: json_.containsKey('customerEncryption')
              ? ObjectCustomerEncryption.fromJson(json_['customerEncryption']
                  as core.Map<core.String, core.dynamic>)
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          eventBasedHold: json_.containsKey('eventBasedHold')
              ? json_['eventBasedHold'] as core.bool
              : null,
          generation: json_.containsKey('generation')
              ? json_['generation'] as core.String
              : null,
          hardDeleteTime: json_.containsKey('hardDeleteTime')
              ? core.DateTime.parse(json_['hardDeleteTime'] as core.String)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
              : null,
          md5Hash: json_.containsKey('md5Hash')
              ? json_['md5Hash'] as core.String
              : null,
          mediaLink: json_.containsKey('mediaLink')
              ? json_['mediaLink'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? (json_['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          metageneration: json_.containsKey('metageneration')
              ? json_['metageneration'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          owner: json_.containsKey('owner')
              ? ObjectOwner.fromJson(
                  json_['owner'] as core.Map<core.String, core.dynamic>)
              : null,
          retention: json_.containsKey('retention')
              ? ObjectRetention.fromJson(
                  json_['retention'] as core.Map<core.String, core.dynamic>)
              : null,
          retentionExpirationTime: json_.containsKey('retentionExpirationTime')
              ? core.DateTime.parse(
                  json_['retentionExpirationTime'] as core.String)
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          size: json_.containsKey('size') ? json_['size'] as core.String : null,
          softDeleteTime: json_.containsKey('softDeleteTime')
              ? core.DateTime.parse(json_['softDeleteTime'] as core.String)
              : null,
          storageClass: json_.containsKey('storageClass')
              ? json_['storageClass'] as core.String
              : null,
          temporaryHold: json_.containsKey('temporaryHold')
              ? json_['temporaryHold'] as core.bool
              : null,
          timeCreated: json_.containsKey('timeCreated')
              ? core.DateTime.parse(json_['timeCreated'] as core.String)
              : null,
          timeDeleted: json_.containsKey('timeDeleted')
              ? core.DateTime.parse(json_['timeDeleted'] as core.String)
              : null,
          timeStorageClassUpdated: json_.containsKey('timeStorageClassUpdated')
              ? core.DateTime.parse(
                  json_['timeStorageClassUpdated'] as core.String)
              : null,
          updated: json_.containsKey('updated')
              ? core.DateTime.parse(json_['updated'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acl != null) 'acl': acl!,
        if (bucket != null) 'bucket': bucket!,
        if (cacheControl != null) 'cacheControl': cacheControl!,
        if (componentCount != null) 'componentCount': componentCount!,
        if (contentDisposition != null)
          'contentDisposition': contentDisposition!,
        if (contentEncoding != null) 'contentEncoding': contentEncoding!,
        if (contentLanguage != null) 'contentLanguage': contentLanguage!,
        if (contentType != null) 'contentType': contentType!,
        if (crc32c != null) 'crc32c': crc32c!,
        if (customTime != null)
          'customTime': customTime!.toUtc().toIso8601String(),
        if (customerEncryption != null)
          'customerEncryption': customerEncryption!,
        if (etag != null) 'etag': etag!,
        if (eventBasedHold != null) 'eventBasedHold': eventBasedHold!,
        if (generation != null) 'generation': generation!,
        if (hardDeleteTime != null)
          'hardDeleteTime': hardDeleteTime!.toUtc().toIso8601String(),
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (md5Hash != null) 'md5Hash': md5Hash!,
        if (mediaLink != null) 'mediaLink': mediaLink!,
        if (metadata != null) 'metadata': metadata!,
        if (metageneration != null) 'metageneration': metageneration!,
        if (name != null) 'name': name!,
        if (owner != null) 'owner': owner!,
        if (retention != null) 'retention': retention!,
        if (retentionExpirationTime != null)
          'retentionExpirationTime':
              retentionExpirationTime!.toUtc().toIso8601String(),
        if (selfLink != null) 'selfLink': selfLink!,
        if (size != null) 'size': size!,
        if (softDeleteTime != null)
          'softDeleteTime': softDeleteTime!.toUtc().toIso8601String(),
        if (storageClass != null) 'storageClass': storageClass!,
        if (temporaryHold != null) 'temporaryHold': temporaryHold!,
        if (timeCreated != null)
          'timeCreated': timeCreated!.toUtc().toIso8601String(),
        if (timeDeleted != null)
          'timeDeleted': timeDeleted!.toUtc().toIso8601String(),
        if (timeStorageClassUpdated != null)
          'timeStorageClassUpdated':
              timeStorageClassUpdated!.toUtc().toIso8601String(),
        if (updated != null) 'updated': updated!.toUtc().toIso8601String(),
      };
}

/// The project team associated with the entity, if any.
class ObjectAccessControlProjectTeam {
  /// The project number.
  core.String? projectNumber;

  /// The team.
  core.String? team;

  ObjectAccessControlProjectTeam({
    this.projectNumber,
    this.team,
  });

  ObjectAccessControlProjectTeam.fromJson(core.Map json_)
      : this(
          projectNumber: json_.containsKey('projectNumber')
              ? json_['projectNumber'] as core.String
              : null,
          team: json_.containsKey('team') ? json_['team'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectNumber != null) 'projectNumber': projectNumber!,
        if (team != null) 'team': team!,
      };
}

/// An access-control entry.
class ObjectAccessControl {
  /// The name of the bucket.
  core.String? bucket;

  /// The domain associated with the entity, if any.
  core.String? domain;

  /// The email address associated with the entity, if any.
  core.String? email;

  /// The entity holding the permission, in one of the following forms:
  /// - user-userId
  /// - user-email
  /// - group-groupId
  /// - group-email
  /// - domain-domain
  /// - project-team-projectId
  /// - allUsers
  /// - allAuthenticatedUsers Examples:
  /// - The user liz@example.com would be user-liz@example.com.
  ///
  ///
  /// - The group example@googlegroups.com would be
  /// group-example@googlegroups.com.
  /// - To refer to all members of the Google Apps for Business domain
  /// example.com, the entity would be domain-example.com.
  core.String? entity;

  /// The ID for the entity, if any.
  core.String? entityId;

  /// HTTP 1.1 Entity tag for the access-control entry.
  core.String? etag;

  /// The content generation of the object, if applied to an object.
  core.String? generation;

  /// The ID of the access-control entry.
  core.String? id;

  /// The kind of item this is.
  ///
  /// For object access control entries, this is always
  /// storage#objectAccessControl.
  core.String? kind;

  /// The name of the object, if applied to an object.
  core.String? object;

  /// The project team associated with the entity, if any.
  ObjectAccessControlProjectTeam? projectTeam;

  /// The access permission for the entity.
  core.String? role;

  /// The link to this access-control entry.
  core.String? selfLink;

  ObjectAccessControl({
    this.bucket,
    this.domain,
    this.email,
    this.entity,
    this.entityId,
    this.etag,
    this.generation,
    this.id,
    this.kind,
    this.object,
    this.projectTeam,
    this.role,
    this.selfLink,
  });

  ObjectAccessControl.fromJson(core.Map json_)
      : this(
          bucket: json_.containsKey('bucket')
              ? json_['bucket'] as core.String
              : null,
          domain: json_.containsKey('domain')
              ? json_['domain'] as core.String
              : null,
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          entity: json_.containsKey('entity')
              ? json_['entity'] as core.String
              : null,
          entityId: json_.containsKey('entityId')
              ? json_['entityId'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          generation: json_.containsKey('generation')
              ? json_['generation'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          object: json_.containsKey('object')
              ? json_['object'] as core.String
              : null,
          projectTeam: json_.containsKey('projectTeam')
              ? ObjectAccessControlProjectTeam.fromJson(
                  json_['projectTeam'] as core.Map<core.String, core.dynamic>)
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucket != null) 'bucket': bucket!,
        if (domain != null) 'domain': domain!,
        if (email != null) 'email': email!,
        if (entity != null) 'entity': entity!,
        if (entityId != null) 'entityId': entityId!,
        if (etag != null) 'etag': etag!,
        if (generation != null) 'generation': generation!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (object != null) 'object': object!,
        if (projectTeam != null) 'projectTeam': projectTeam!,
        if (role != null) 'role': role!,
        if (selfLink != null) 'selfLink': selfLink!,
      };
}

/// An access-control list.
class ObjectAccessControls {
  /// The list of items.
  core.List<ObjectAccessControl>? items;

  /// The kind of item this is.
  ///
  /// For lists of object access control entries, this is always
  /// storage#objectAccessControls.
  core.String? kind;

  ObjectAccessControls({
    this.items,
    this.kind,
  });

  ObjectAccessControls.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => ObjectAccessControl.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
      };
}

/// A list of objects.
class Objects {
  /// The list of items.
  core.List<Object>? items;

  /// The kind of item this is.
  ///
  /// For lists of objects, this is always storage#objects.
  core.String? kind;

  /// The continuation token, used to page through large result sets.
  ///
  /// Provide this value in a subsequent request to return the next page of
  /// results.
  core.String? nextPageToken;

  /// The list of prefixes of objects matching-but-not-listed up to and
  /// including the requested delimiter.
  core.List<core.String>? prefixes;

  Objects({
    this.items,
    this.kind,
    this.nextPageToken,
    this.prefixes,
  });

  Objects.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Object.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          prefixes: json_.containsKey('prefixes')
              ? (json_['prefixes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (prefixes != null) 'prefixes': prefixes!,
      };
}

class PolicyBindings {
  /// The condition that is associated with this binding.
  ///
  /// NOTE: an unsatisfied condition will not allow user access via current
  /// binding. Different bindings, including their conditions, are examined
  /// independently.
  Expr? condition;

  /// A collection of identifiers for members who may assume the provided role.
  ///
  /// Recognized identifiers are as follows:
  /// - allUsers — A special identifier that represents anyone on the internet;
  /// with or without a Google account.
  /// - allAuthenticatedUsers — A special identifier that represents anyone who
  /// is authenticated with a Google account or a service account.
  /// - user:emailid — An email address that represents a specific account. For
  /// example, user:alice@gmail.com or user:joe@example.com.
  /// - serviceAccount:emailid — An email address that represents a service
  /// account. For example,
  /// serviceAccount:my-other-app@appspot.gserviceaccount.com .
  /// - group:emailid — An email address that represents a Google group. For
  /// example, group:admins@example.com.
  /// - domain:domain — A Google Apps domain name that represents all the users
  /// of that domain. For example, domain:google.com or domain:example.com.
  /// - projectOwner:projectid — Owners of the given project. For example,
  /// projectOwner:my-example-project
  /// - projectEditor:projectid — Editors of the given project. For example,
  /// projectEditor:my-example-project
  /// - projectViewer:projectid — Viewers of the given project. For example,
  /// projectViewer:my-example-project
  core.List<core.String>? members;

  /// The role to which members belong.
  ///
  /// Two types of roles are supported: new IAM roles, which grant permissions
  /// that do not map directly to those provided by ACLs, and legacy IAM roles,
  /// which do map directly to ACL permissions. All roles are of the format
  /// roles/storage.specificRole.
  /// The new IAM roles are:
  /// - roles/storage.admin — Full control of Google Cloud Storage resources.
  /// - roles/storage.objectViewer — Read-Only access to Google Cloud Storage
  /// objects.
  /// - roles/storage.objectCreator — Access to create objects in Google Cloud
  /// Storage.
  /// - roles/storage.objectAdmin — Full control of Google Cloud Storage
  /// objects. The legacy IAM roles are:
  /// - roles/storage.legacyObjectReader — Read-only access to objects without
  /// listing. Equivalent to an ACL entry on an object with the READER role.
  /// - roles/storage.legacyObjectOwner — Read/write access to existing objects
  /// without listing. Equivalent to an ACL entry on an object with the OWNER
  /// role.
  /// - roles/storage.legacyBucketReader — Read access to buckets with object
  /// listing. Equivalent to an ACL entry on a bucket with the READER role.
  /// - roles/storage.legacyBucketWriter — Read access to buckets with object
  /// listing/creation/deletion. Equivalent to an ACL entry on a bucket with the
  /// WRITER role.
  /// - roles/storage.legacyBucketOwner — Read and write access to existing
  /// buckets with object listing/creation/deletion. Equivalent to an ACL entry
  /// on a bucket with the OWNER role.
  core.String? role;

  PolicyBindings({
    this.condition,
    this.members,
    this.role,
  });

  PolicyBindings.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: json_.containsKey('members')
              ? (json_['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// A bucket/object/managedFolder IAM policy.
class Policy {
  /// An association between a role, which comes with a set of permissions, and
  /// members who may assume that role.
  core.List<PolicyBindings>? bindings;

  /// HTTP 1.1  Entity tag for the policy.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The kind of item this is.
  ///
  /// For policies, this is always storage#policy. This field is ignored on
  /// input.
  core.String? kind;

  /// The ID of the resource to which this policy belongs.
  ///
  /// Will be of the form projects/_/buckets/bucket for buckets,
  /// projects/_/buckets/bucket/objects/object for objects, and
  /// projects/_/buckets/bucket/managedFolders/managedFolder. A specific
  /// generation may be specified by appending #generationNumber to the end of
  /// the object name, e.g. projects/_/buckets/my-bucket/objects/data.txt#17.
  /// The current generation can be denoted with #0. This field is ignored on
  /// input.
  core.String? resourceId;

  /// The IAM policy format version.
  core.int? version;

  Policy({
    this.bindings,
    this.etag,
    this.kind,
    this.resourceId,
    this.version,
  });

  Policy.fromJson(core.Map json_)
      : this(
          bindings: json_.containsKey('bindings')
              ? (json_['bindings'] as core.List)
                  .map((value) => PolicyBindings.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          resourceId: json_.containsKey('resourceId')
              ? json_['resourceId'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (resourceId != null) 'resourceId': resourceId!,
        if (version != null) 'version': version!,
      };
}

/// A rewrite response.
class RewriteResponse {
  /// true if the copy is finished; otherwise, false if the copy is in progress.
  ///
  /// This property is always present in the response.
  core.bool? done;

  /// The kind of item this is.
  core.String? kind;

  /// The total size of the object being copied in bytes.
  ///
  /// This property is always present in the response.
  core.String? objectSize;

  /// A resource containing the metadata for the copied-to object.
  ///
  /// This property is present in the response only when copying completes.
  Object? resource;

  /// A token to use in subsequent requests to continue copying data.
  ///
  /// This token is present in the response only when there is more data to
  /// copy.
  core.String? rewriteToken;

  /// The total bytes written so far, which can be used to provide a waiting
  /// user with a progress indicator.
  ///
  /// This property is always present in the response.
  core.String? totalBytesRewritten;

  RewriteResponse({
    this.done,
    this.kind,
    this.objectSize,
    this.resource,
    this.rewriteToken,
    this.totalBytesRewritten,
  });

  RewriteResponse.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          objectSize: json_.containsKey('objectSize')
              ? json_['objectSize'] as core.String
              : null,
          resource: json_.containsKey('resource')
              ? Object.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>)
              : null,
          rewriteToken: json_.containsKey('rewriteToken')
              ? json_['rewriteToken'] as core.String
              : null,
          totalBytesRewritten: json_.containsKey('totalBytesRewritten')
              ? json_['totalBytesRewritten'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (kind != null) 'kind': kind!,
        if (objectSize != null) 'objectSize': objectSize!,
        if (resource != null) 'resource': resource!,
        if (rewriteToken != null) 'rewriteToken': rewriteToken!,
        if (totalBytesRewritten != null)
          'totalBytesRewritten': totalBytesRewritten!,
      };
}

/// A subscription to receive Google PubSub notifications.
class ServiceAccount {
  /// The ID of the notification.
  core.String? emailAddress;

  /// The kind of item this is.
  ///
  /// For notifications, this is always storage#notification.
  core.String? kind;

  ServiceAccount({
    this.emailAddress,
    this.kind,
  });

  ServiceAccount.fromJson(core.Map json_)
      : this(
          emailAddress: json_.containsKey('email_address')
              ? json_['email_address'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emailAddress != null) 'email_address': emailAddress!,
        if (kind != null) 'kind': kind!,
      };
}

/// A storage.(buckets|objects|managedFolders).testIamPermissions response.
class TestIamPermissionsResponse {
  /// The kind of item this is.
  core.String? kind;

  /// The permissions held by the caller.
  ///
  /// Permissions are always of the format storage.resource.capability, where
  /// resource is one of buckets, objects, or managedFolders. The supported
  /// permissions are as follows:
  /// - storage.buckets.delete — Delete bucket.
  /// - storage.buckets.get — Read bucket metadata.
  /// - storage.buckets.getIamPolicy — Read bucket IAM policy.
  /// - storage.buckets.create — Create bucket.
  /// - storage.buckets.list — List buckets.
  /// - storage.buckets.setIamPolicy — Update bucket IAM policy.
  /// - storage.buckets.update — Update bucket metadata.
  /// - storage.objects.delete — Delete object.
  /// - storage.objects.get — Read object data and metadata.
  /// - storage.objects.getIamPolicy — Read object IAM policy.
  /// - storage.objects.create — Create object.
  /// - storage.objects.list — List objects.
  /// - storage.objects.setIamPolicy — Update object IAM policy.
  /// - storage.objects.update — Update object metadata.
  /// - storage.managedFolders.delete — Delete managed folder.
  /// - storage.managedFolders.get — Read managed folder metadata.
  /// - storage.managedFolders.getIamPolicy — Read managed folder IAM policy.
  /// - storage.managedFolders.create — Create managed folder.
  /// - storage.managedFolders.list — List managed folders.
  /// - storage.managedFolders.setIamPolicy — Update managed folder IAM policy.
  core.List<core.String>? permissions;

  TestIamPermissionsResponse({
    this.kind,
    this.permissions,
  });

  TestIamPermissionsResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (permissions != null) 'permissions': permissions!,
      };
}
