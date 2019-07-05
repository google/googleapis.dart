// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.storage.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        DetailedApiRequestError,
        Media,
        UploadOptions,
        ResumableUploadOptions,
        DownloadOptions,
        PartialDownloadOptions,
        ByteRange;

const core.String USER_AGENT = 'dart-api-client storage/v1';

/// Stores and retrieves potentially large, immutable data objects.
class StorageApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// View your data across Google Cloud Platform services
  static const CloudPlatformReadOnlyScope =
      "https://www.googleapis.com/auth/cloud-platform.read-only";

  /// Manage your data and permissions in Google Cloud Storage
  static const DevstorageFullControlScope =
      "https://www.googleapis.com/auth/devstorage.full_control";

  /// View your data in Google Cloud Storage
  static const DevstorageReadOnlyScope =
      "https://www.googleapis.com/auth/devstorage.read_only";

  /// Manage your data in Google Cloud Storage
  static const DevstorageReadWriteScope =
      "https://www.googleapis.com/auth/devstorage.read_write";

  final commons.ApiRequester _requester;

  BucketAccessControlsResourceApi get bucketAccessControls =>
      new BucketAccessControlsResourceApi(_requester);
  BucketsResourceApi get buckets => new BucketsResourceApi(_requester);
  ChannelsResourceApi get channels => new ChannelsResourceApi(_requester);
  DefaultObjectAccessControlsResourceApi get defaultObjectAccessControls =>
      new DefaultObjectAccessControlsResourceApi(_requester);
  NotificationsResourceApi get notifications =>
      new NotificationsResourceApi(_requester);
  ObjectAccessControlsResourceApi get objectAccessControls =>
      new ObjectAccessControlsResourceApi(_requester);
  ObjectsResourceApi get objects => new ObjectsResourceApi(_requester);
  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  StorageApi(http.Client client,
      {core.String rootUrl = "https://www.googleapis.com/",
      core.String servicePath = "storage/v1/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class BucketAccessControlsResourceApi {
  final commons.ApiRequester _requester;

  BucketAccessControlsResourceApi(commons.ApiRequester client)
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future delete(core.String bucket, core.String entity,
      {core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (entity == null) {
      throw new core.ArgumentError("Parameter entity is required.");
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/acl/' +
        commons.Escaper.ecapeVariable('$entity');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future<BucketAccessControl> get(core.String bucket, core.String entity,
      {core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (entity == null) {
      throw new core.ArgumentError("Parameter entity is required.");
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/acl/' +
        commons.Escaper.ecapeVariable('$entity');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new BucketAccessControl.fromJson(data));
  }

  /// Creates a new ACL entry on the specified bucket.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
      BucketAccessControl request, core.String bucket,
      {core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' + commons.Escaper.ecapeVariable('$bucket') + '/acl';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new BucketAccessControl.fromJson(data));
  }

  /// Retrieves ACL entries on the specified bucket.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future<BucketAccessControls> list(core.String bucket,
      {core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' + commons.Escaper.ecapeVariable('$bucket') + '/acl';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new BucketAccessControls.fromJson(data));
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
      BucketAccessControl request, core.String bucket, core.String entity,
      {core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (entity == null) {
      throw new core.ArgumentError("Parameter entity is required.");
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/acl/' +
        commons.Escaper.ecapeVariable('$entity');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new BucketAccessControl.fromJson(data));
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
      BucketAccessControl request, core.String bucket, core.String entity,
      {core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (entity == null) {
      throw new core.ArgumentError("Parameter entity is required.");
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/acl/' +
        commons.Escaper.ecapeVariable('$entity');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new BucketAccessControl.fromJson(data));
  }
}

class BucketsResourceApi {
  final commons.ApiRequester _requester;

  BucketsResourceApi(commons.ApiRequester client) : _requester = client;

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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future delete(core.String bucket,
      {core.String ifMetagenerationMatch,
      core.String ifMetagenerationNotMatch,
      core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (ifMetagenerationMatch != null) {
      _queryParams["ifMetagenerationMatch"] = [ifMetagenerationMatch];
    }
    if (ifMetagenerationNotMatch != null) {
      _queryParams["ifMetagenerationNotMatch"] = [ifMetagenerationNotMatch];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'b/' + commons.Escaper.ecapeVariable('$bucket');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future<Bucket> get(core.String bucket,
      {core.String ifMetagenerationMatch,
      core.String ifMetagenerationNotMatch,
      core.String projection,
      core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (ifMetagenerationMatch != null) {
      _queryParams["ifMetagenerationMatch"] = [ifMetagenerationMatch];
    }
    if (ifMetagenerationNotMatch != null) {
      _queryParams["ifMetagenerationNotMatch"] = [ifMetagenerationNotMatch];
    }
    if (projection != null) {
      _queryParams["projection"] = [projection];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' + commons.Escaper.ecapeVariable('$bucket');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Bucket.fromJson(data));
  }

  /// Returns an IAM policy for the specified bucket.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future<Policy> getIamPolicy(core.String bucket,
      {core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' + commons.Escaper.ecapeVariable('$bucket') + '/iam';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Creates a new bucket.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - A valid API project identifier.
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future<Bucket> insert(Bucket request, core.String project,
      {core.String predefinedAcl,
      core.String predefinedDefaultObjectAcl,
      core.String projection,
      core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    _queryParams["project"] = [project];
    if (predefinedAcl != null) {
      _queryParams["predefinedAcl"] = [predefinedAcl];
    }
    if (predefinedDefaultObjectAcl != null) {
      _queryParams["predefinedDefaultObjectAcl"] = [predefinedDefaultObjectAcl];
    }
    if (projection != null) {
      _queryParams["projection"] = [projection];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Bucket.fromJson(data));
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future<Buckets> list(core.String project,
      {core.int maxResults,
      core.String pageToken,
      core.String prefix,
      core.String projection,
      core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    _queryParams["project"] = [project];
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (prefix != null) {
      _queryParams["prefix"] = [prefix];
    }
    if (projection != null) {
      _queryParams["projection"] = [projection];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Buckets.fromJson(data));
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
      core.String bucket, core.String ifMetagenerationMatch,
      {core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (ifMetagenerationMatch == null) {
      throw new core.ArgumentError(
          "Parameter ifMetagenerationMatch is required.");
    }
    _queryParams["ifMetagenerationMatch"] = [ifMetagenerationMatch];
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/lockRetentionPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Bucket.fromJson(data));
  }

  /// Patches a bucket. Changes to the bucket will be readable immediately after
  /// writing, but configuration changes may take time to propagate.
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future<Bucket> patch(Bucket request, core.String bucket,
      {core.String ifMetagenerationMatch,
      core.String ifMetagenerationNotMatch,
      core.String predefinedAcl,
      core.String predefinedDefaultObjectAcl,
      core.String projection,
      core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (ifMetagenerationMatch != null) {
      _queryParams["ifMetagenerationMatch"] = [ifMetagenerationMatch];
    }
    if (ifMetagenerationNotMatch != null) {
      _queryParams["ifMetagenerationNotMatch"] = [ifMetagenerationNotMatch];
    }
    if (predefinedAcl != null) {
      _queryParams["predefinedAcl"] = [predefinedAcl];
    }
    if (predefinedDefaultObjectAcl != null) {
      _queryParams["predefinedDefaultObjectAcl"] = [predefinedDefaultObjectAcl];
    }
    if (projection != null) {
      _queryParams["projection"] = [projection];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' + commons.Escaper.ecapeVariable('$bucket');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Bucket.fromJson(data));
  }

  /// Updates an IAM policy for the specified bucket.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future<Policy> setIamPolicy(Policy request, core.String bucket,
      {core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' + commons.Escaper.ecapeVariable('$bucket') + '/iam';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
      core.String bucket, core.List<core.String> permissions,
      {core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (permissions == null || permissions.isEmpty) {
      throw new core.ArgumentError("Parameter permissions is required.");
    }
    _queryParams["permissions"] = permissions;
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/iam/testPermissions';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new TestIamPermissionsResponse.fromJson(data));
  }

  /// Updates a bucket. Changes to the bucket will be readable immediately after
  /// writing, but configuration changes may take time to propagate.
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future<Bucket> update(Bucket request, core.String bucket,
      {core.String ifMetagenerationMatch,
      core.String ifMetagenerationNotMatch,
      core.String predefinedAcl,
      core.String predefinedDefaultObjectAcl,
      core.String projection,
      core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (ifMetagenerationMatch != null) {
      _queryParams["ifMetagenerationMatch"] = [ifMetagenerationMatch];
    }
    if (ifMetagenerationNotMatch != null) {
      _queryParams["ifMetagenerationNotMatch"] = [ifMetagenerationNotMatch];
    }
    if (predefinedAcl != null) {
      _queryParams["predefinedAcl"] = [predefinedAcl];
    }
    if (predefinedDefaultObjectAcl != null) {
      _queryParams["predefinedDefaultObjectAcl"] = [predefinedDefaultObjectAcl];
    }
    if (projection != null) {
      _queryParams["projection"] = [projection];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' + commons.Escaper.ecapeVariable('$bucket');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Bucket.fromJson(data));
  }
}

class ChannelsResourceApi {
  final commons.ApiRequester _requester;

  ChannelsResourceApi(commons.ApiRequester client) : _requester = client;

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
  async.Future stop(Channel request, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'channels/stop';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }
}

class DefaultObjectAccessControlsResourceApi {
  final commons.ApiRequester _requester;

  DefaultObjectAccessControlsResourceApi(commons.ApiRequester client)
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future delete(core.String bucket, core.String entity,
      {core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (entity == null) {
      throw new core.ArgumentError("Parameter entity is required.");
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/defaultObjectAcl/' +
        commons.Escaper.ecapeVariable('$entity');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future<ObjectAccessControl> get(core.String bucket, core.String entity,
      {core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (entity == null) {
      throw new core.ArgumentError("Parameter entity is required.");
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/defaultObjectAcl/' +
        commons.Escaper.ecapeVariable('$entity');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ObjectAccessControl.fromJson(data));
  }

  /// Creates a new default object ACL entry on the specified bucket.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
      ObjectAccessControl request, core.String bucket,
      {core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'b/' + commons.Escaper.ecapeVariable('$bucket') + '/defaultObjectAcl';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ObjectAccessControl.fromJson(data));
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future<ObjectAccessControls> list(core.String bucket,
      {core.String ifMetagenerationMatch,
      core.String ifMetagenerationNotMatch,
      core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (ifMetagenerationMatch != null) {
      _queryParams["ifMetagenerationMatch"] = [ifMetagenerationMatch];
    }
    if (ifMetagenerationNotMatch != null) {
      _queryParams["ifMetagenerationNotMatch"] = [ifMetagenerationNotMatch];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'b/' + commons.Escaper.ecapeVariable('$bucket') + '/defaultObjectAcl';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ObjectAccessControls.fromJson(data));
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
      ObjectAccessControl request, core.String bucket, core.String entity,
      {core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (entity == null) {
      throw new core.ArgumentError("Parameter entity is required.");
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/defaultObjectAcl/' +
        commons.Escaper.ecapeVariable('$entity');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ObjectAccessControl.fromJson(data));
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
      ObjectAccessControl request, core.String bucket, core.String entity,
      {core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (entity == null) {
      throw new core.ArgumentError("Parameter entity is required.");
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/defaultObjectAcl/' +
        commons.Escaper.ecapeVariable('$entity');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ObjectAccessControl.fromJson(data));
  }
}

class NotificationsResourceApi {
  final commons.ApiRequester _requester;

  NotificationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Permanently deletes a notification subscription.
  ///
  /// Request parameters:
  ///
  /// [bucket] - The parent bucket of the notification.
  ///
  /// [notification] - ID of the notification to delete.
  ///
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future delete(core.String bucket, core.String notification,
      {core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (notification == null) {
      throw new core.ArgumentError("Parameter notification is required.");
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/notificationConfigs/' +
        commons.Escaper.ecapeVariable('$notification');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// View a notification configuration.
  ///
  /// Request parameters:
  ///
  /// [bucket] - The parent bucket of the notification.
  ///
  /// [notification] - Notification ID
  ///
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future<Notification> get(core.String bucket, core.String notification,
      {core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (notification == null) {
      throw new core.ArgumentError("Parameter notification is required.");
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/notificationConfigs/' +
        commons.Escaper.ecapeVariable('$notification');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Notification.fromJson(data));
  }

  /// Creates a notification subscription for a given bucket.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - The parent bucket of the notification.
  ///
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future<Notification> insert(Notification request, core.String bucket,
      {core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/notificationConfigs';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Notification.fromJson(data));
  }

  /// Retrieves a list of notification subscriptions for a given bucket.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a Google Cloud Storage bucket.
  ///
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future<Notifications> list(core.String bucket,
      {core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/notificationConfigs';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Notifications.fromJson(data));
  }
}

class ObjectAccessControlsResourceApi {
  final commons.ApiRequester _requester;

  ObjectAccessControlsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Permanently deletes the ACL entry for the specified entity on the
  /// specified object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [object] - Name of the object. For information about how to URL encode
  /// object names to be path safe, see Encoding URI Path Parts.
  ///
  /// [entity] - The entity holding the permission. Can be user-userId,
  /// user-emailAddress, group-groupId, group-emailAddress, allUsers, or
  /// allAuthenticatedUsers.
  ///
  /// [generation] - If present, selects a specific revision of this object (as
  /// opposed to the latest version, the default).
  ///
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future delete(
      core.String bucket, core.String object, core.String entity,
      {core.String generation,
      core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (object == null) {
      throw new core.ArgumentError("Parameter object is required.");
    }
    if (entity == null) {
      throw new core.ArgumentError("Parameter entity is required.");
    }
    if (generation != null) {
      _queryParams["generation"] = [generation];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/o/' +
        commons.Escaper.ecapeVariable('$object') +
        '/acl/' +
        commons.Escaper.ecapeVariable('$entity');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Returns the ACL entry for the specified entity on the specified object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [object] - Name of the object. For information about how to URL encode
  /// object names to be path safe, see Encoding URI Path Parts.
  ///
  /// [entity] - The entity holding the permission. Can be user-userId,
  /// user-emailAddress, group-groupId, group-emailAddress, allUsers, or
  /// allAuthenticatedUsers.
  ///
  /// [generation] - If present, selects a specific revision of this object (as
  /// opposed to the latest version, the default).
  ///
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
      core.String bucket, core.String object, core.String entity,
      {core.String generation,
      core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (object == null) {
      throw new core.ArgumentError("Parameter object is required.");
    }
    if (entity == null) {
      throw new core.ArgumentError("Parameter entity is required.");
    }
    if (generation != null) {
      _queryParams["generation"] = [generation];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/o/' +
        commons.Escaper.ecapeVariable('$object') +
        '/acl/' +
        commons.Escaper.ecapeVariable('$entity');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ObjectAccessControl.fromJson(data));
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
  /// object names to be path safe, see Encoding URI Path Parts.
  ///
  /// [generation] - If present, selects a specific revision of this object (as
  /// opposed to the latest version, the default).
  ///
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
      ObjectAccessControl request, core.String bucket, core.String object,
      {core.String generation,
      core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (object == null) {
      throw new core.ArgumentError("Parameter object is required.");
    }
    if (generation != null) {
      _queryParams["generation"] = [generation];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/o/' +
        commons.Escaper.ecapeVariable('$object') +
        '/acl';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ObjectAccessControl.fromJson(data));
  }

  /// Retrieves ACL entries on the specified object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of a bucket.
  ///
  /// [object] - Name of the object. For information about how to URL encode
  /// object names to be path safe, see Encoding URI Path Parts.
  ///
  /// [generation] - If present, selects a specific revision of this object (as
  /// opposed to the latest version, the default).
  ///
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
      core.String bucket, core.String object,
      {core.String generation,
      core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (object == null) {
      throw new core.ArgumentError("Parameter object is required.");
    }
    if (generation != null) {
      _queryParams["generation"] = [generation];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/o/' +
        commons.Escaper.ecapeVariable('$object') +
        '/acl';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ObjectAccessControls.fromJson(data));
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
  /// object names to be path safe, see Encoding URI Path Parts.
  ///
  /// [entity] - The entity holding the permission. Can be user-userId,
  /// user-emailAddress, group-groupId, group-emailAddress, allUsers, or
  /// allAuthenticatedUsers.
  ///
  /// [generation] - If present, selects a specific revision of this object (as
  /// opposed to the latest version, the default).
  ///
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future<ObjectAccessControl> patch(ObjectAccessControl request,
      core.String bucket, core.String object, core.String entity,
      {core.String generation,
      core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (object == null) {
      throw new core.ArgumentError("Parameter object is required.");
    }
    if (entity == null) {
      throw new core.ArgumentError("Parameter entity is required.");
    }
    if (generation != null) {
      _queryParams["generation"] = [generation];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/o/' +
        commons.Escaper.ecapeVariable('$object') +
        '/acl/' +
        commons.Escaper.ecapeVariable('$entity');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ObjectAccessControl.fromJson(data));
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
  /// object names to be path safe, see Encoding URI Path Parts.
  ///
  /// [entity] - The entity holding the permission. Can be user-userId,
  /// user-emailAddress, group-groupId, group-emailAddress, allUsers, or
  /// allAuthenticatedUsers.
  ///
  /// [generation] - If present, selects a specific revision of this object (as
  /// opposed to the latest version, the default).
  ///
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future<ObjectAccessControl> update(ObjectAccessControl request,
      core.String bucket, core.String object, core.String entity,
      {core.String generation,
      core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (object == null) {
      throw new core.ArgumentError("Parameter object is required.");
    }
    if (entity == null) {
      throw new core.ArgumentError("Parameter entity is required.");
    }
    if (generation != null) {
      _queryParams["generation"] = [generation];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/o/' +
        commons.Escaper.ecapeVariable('$object') +
        '/acl/' +
        commons.Escaper.ecapeVariable('$entity');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ObjectAccessControl.fromJson(data));
  }
}

class ObjectsResourceApi {
  final commons.ApiRequester _requester;

  ObjectsResourceApi(commons.ApiRequester client) : _requester = client;

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
  /// URL encode object names to be path safe, see Encoding URI Path Parts.
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future<Object> compose(ComposeRequest request,
      core.String destinationBucket, core.String destinationObject,
      {core.String destinationPredefinedAcl,
      core.String ifGenerationMatch,
      core.String ifMetagenerationMatch,
      core.String kmsKeyName,
      core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (destinationBucket == null) {
      throw new core.ArgumentError("Parameter destinationBucket is required.");
    }
    if (destinationObject == null) {
      throw new core.ArgumentError("Parameter destinationObject is required.");
    }
    if (destinationPredefinedAcl != null) {
      _queryParams["destinationPredefinedAcl"] = [destinationPredefinedAcl];
    }
    if (ifGenerationMatch != null) {
      _queryParams["ifGenerationMatch"] = [ifGenerationMatch];
    }
    if (ifMetagenerationMatch != null) {
      _queryParams["ifMetagenerationMatch"] = [ifMetagenerationMatch];
    }
    if (kmsKeyName != null) {
      _queryParams["kmsKeyName"] = [kmsKeyName];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$destinationBucket') +
        '/o/' +
        commons.Escaper.ecapeVariable('$destinationObject') +
        '/compose';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Object.fromJson(data));
  }

  /// Copies a source object to a destination object. Optionally overrides
  /// metadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [sourceBucket] - Name of the bucket in which to find the source object.
  ///
  /// [sourceObject] - Name of the source object. For information about how to
  /// URL encode object names to be path safe, see Encoding URI Path Parts.
  ///
  /// [destinationBucket] - Name of the bucket in which to store the new object.
  /// Overrides the provided object metadata's bucket value, if any.For
  /// information about how to URL encode object names to be path safe, see
  /// Encoding URI Path Parts.
  ///
  /// [destinationObject] - Name of the new object. Required when the object
  /// metadata is not otherwise provided. Overrides the object metadata's name
  /// value, if any.
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
      core.String destinationObject,
      {core.String destinationPredefinedAcl,
      core.String ifGenerationMatch,
      core.String ifGenerationNotMatch,
      core.String ifMetagenerationMatch,
      core.String ifMetagenerationNotMatch,
      core.String ifSourceGenerationMatch,
      core.String ifSourceGenerationNotMatch,
      core.String ifSourceMetagenerationMatch,
      core.String ifSourceMetagenerationNotMatch,
      core.String projection,
      core.String provisionalUserProject,
      core.String sourceGeneration,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (sourceBucket == null) {
      throw new core.ArgumentError("Parameter sourceBucket is required.");
    }
    if (sourceObject == null) {
      throw new core.ArgumentError("Parameter sourceObject is required.");
    }
    if (destinationBucket == null) {
      throw new core.ArgumentError("Parameter destinationBucket is required.");
    }
    if (destinationObject == null) {
      throw new core.ArgumentError("Parameter destinationObject is required.");
    }
    if (destinationPredefinedAcl != null) {
      _queryParams["destinationPredefinedAcl"] = [destinationPredefinedAcl];
    }
    if (ifGenerationMatch != null) {
      _queryParams["ifGenerationMatch"] = [ifGenerationMatch];
    }
    if (ifGenerationNotMatch != null) {
      _queryParams["ifGenerationNotMatch"] = [ifGenerationNotMatch];
    }
    if (ifMetagenerationMatch != null) {
      _queryParams["ifMetagenerationMatch"] = [ifMetagenerationMatch];
    }
    if (ifMetagenerationNotMatch != null) {
      _queryParams["ifMetagenerationNotMatch"] = [ifMetagenerationNotMatch];
    }
    if (ifSourceGenerationMatch != null) {
      _queryParams["ifSourceGenerationMatch"] = [ifSourceGenerationMatch];
    }
    if (ifSourceGenerationNotMatch != null) {
      _queryParams["ifSourceGenerationNotMatch"] = [ifSourceGenerationNotMatch];
    }
    if (ifSourceMetagenerationMatch != null) {
      _queryParams["ifSourceMetagenerationMatch"] = [
        ifSourceMetagenerationMatch
      ];
    }
    if (ifSourceMetagenerationNotMatch != null) {
      _queryParams["ifSourceMetagenerationNotMatch"] = [
        ifSourceMetagenerationNotMatch
      ];
    }
    if (projection != null) {
      _queryParams["projection"] = [projection];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (sourceGeneration != null) {
      _queryParams["sourceGeneration"] = [sourceGeneration];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$sourceBucket') +
        '/o/' +
        commons.Escaper.ecapeVariable('$sourceObject') +
        '/copyTo/b/' +
        commons.Escaper.ecapeVariable('$destinationBucket') +
        '/o/' +
        commons.Escaper.ecapeVariable('$destinationObject');

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Object.fromJson(data));
  }

  /// Deletes an object and its metadata. Deletions are permanent if versioning
  /// is not enabled for the bucket, or if the generation parameter is used.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket in which the object resides.
  ///
  /// [object] - Name of the object. For information about how to URL encode
  /// object names to be path safe, see Encoding URI Path Parts.
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future delete(core.String bucket, core.String object,
      {core.String generation,
      core.String ifGenerationMatch,
      core.String ifGenerationNotMatch,
      core.String ifMetagenerationMatch,
      core.String ifMetagenerationNotMatch,
      core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (object == null) {
      throw new core.ArgumentError("Parameter object is required.");
    }
    if (generation != null) {
      _queryParams["generation"] = [generation];
    }
    if (ifGenerationMatch != null) {
      _queryParams["ifGenerationMatch"] = [ifGenerationMatch];
    }
    if (ifGenerationNotMatch != null) {
      _queryParams["ifGenerationNotMatch"] = [ifGenerationNotMatch];
    }
    if (ifMetagenerationMatch != null) {
      _queryParams["ifMetagenerationMatch"] = [ifMetagenerationMatch];
    }
    if (ifMetagenerationNotMatch != null) {
      _queryParams["ifMetagenerationNotMatch"] = [ifMetagenerationNotMatch];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/o/' +
        commons.Escaper.ecapeVariable('$object');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieves an object or its metadata.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket in which the object resides.
  ///
  /// [object] - Name of the object. For information about how to URL encode
  /// object names to be path safe, see Encoding URI Path Parts.
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future get(core.String bucket, core.String object,
      {core.String generation,
      core.String ifGenerationMatch,
      core.String ifGenerationNotMatch,
      core.String ifMetagenerationMatch,
      core.String ifMetagenerationNotMatch,
      core.String projection,
      core.String provisionalUserProject,
      core.String userProject,
      core.String $fields,
      commons.DownloadOptions downloadOptions =
          commons.DownloadOptions.Metadata}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (object == null) {
      throw new core.ArgumentError("Parameter object is required.");
    }
    if (generation != null) {
      _queryParams["generation"] = [generation];
    }
    if (ifGenerationMatch != null) {
      _queryParams["ifGenerationMatch"] = [ifGenerationMatch];
    }
    if (ifGenerationNotMatch != null) {
      _queryParams["ifGenerationNotMatch"] = [ifGenerationNotMatch];
    }
    if (ifMetagenerationMatch != null) {
      _queryParams["ifMetagenerationMatch"] = [ifMetagenerationMatch];
    }
    if (ifMetagenerationNotMatch != null) {
      _queryParams["ifMetagenerationNotMatch"] = [ifMetagenerationNotMatch];
    }
    if (projection != null) {
      _queryParams["projection"] = [projection];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = downloadOptions;

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/o/' +
        commons.Escaper.ecapeVariable('$object');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    if (_downloadOptions == null ||
        _downloadOptions == commons.DownloadOptions.Metadata) {
      return _response.then((data) => new Object.fromJson(data));
    } else {
      return _response;
    }
  }

  /// Returns an IAM policy for the specified object.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket in which the object resides.
  ///
  /// [object] - Name of the object. For information about how to URL encode
  /// object names to be path safe, see Encoding URI Path Parts.
  ///
  /// [generation] - If present, selects a specific revision of this object (as
  /// opposed to the latest version, the default).
  ///
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future<Policy> getIamPolicy(core.String bucket, core.String object,
      {core.String generation,
      core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (object == null) {
      throw new core.ArgumentError("Parameter object is required.");
    }
    if (generation != null) {
      _queryParams["generation"] = [generation];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/o/' +
        commons.Escaper.ecapeVariable('$object') +
        '/iam';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
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
  /// Encoding URI Path Parts.
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future<Object> insert(Object request, core.String bucket,
      {core.String contentEncoding,
      core.String ifGenerationMatch,
      core.String ifGenerationNotMatch,
      core.String ifMetagenerationMatch,
      core.String ifMetagenerationNotMatch,
      core.String kmsKeyName,
      core.String name,
      core.String predefinedAcl,
      core.String projection,
      core.String provisionalUserProject,
      core.String userProject,
      core.String $fields,
      commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
      commons.Media uploadMedia}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (contentEncoding != null) {
      _queryParams["contentEncoding"] = [contentEncoding];
    }
    if (ifGenerationMatch != null) {
      _queryParams["ifGenerationMatch"] = [ifGenerationMatch];
    }
    if (ifGenerationNotMatch != null) {
      _queryParams["ifGenerationNotMatch"] = [ifGenerationNotMatch];
    }
    if (ifMetagenerationMatch != null) {
      _queryParams["ifMetagenerationMatch"] = [ifMetagenerationMatch];
    }
    if (ifMetagenerationNotMatch != null) {
      _queryParams["ifMetagenerationNotMatch"] = [ifMetagenerationNotMatch];
    }
    if (kmsKeyName != null) {
      _queryParams["kmsKeyName"] = [kmsKeyName];
    }
    if (name != null) {
      _queryParams["name"] = [name];
    }
    if (predefinedAcl != null) {
      _queryParams["predefinedAcl"] = [predefinedAcl];
    }
    if (projection != null) {
      _queryParams["projection"] = [projection];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = 'b/' + commons.Escaper.ecapeVariable('$bucket') + '/o';
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/storage/v1/b/' +
          commons.Escaper.ecapeVariable('$bucket') +
          '/o';
    } else {
      _url = '/upload/storage/v1/b/' +
          commons.Escaper.ecapeVariable('$bucket') +
          '/o';
    }

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Object.fromJson(data));
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future<Objects> list(core.String bucket,
      {core.String delimiter,
      core.bool includeTrailingDelimiter,
      core.int maxResults,
      core.String pageToken,
      core.String prefix,
      core.String projection,
      core.String provisionalUserProject,
      core.String userProject,
      core.bool versions,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (delimiter != null) {
      _queryParams["delimiter"] = [delimiter];
    }
    if (includeTrailingDelimiter != null) {
      _queryParams["includeTrailingDelimiter"] = [
        "${includeTrailingDelimiter}"
      ];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (prefix != null) {
      _queryParams["prefix"] = [prefix];
    }
    if (projection != null) {
      _queryParams["projection"] = [projection];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if (versions != null) {
      _queryParams["versions"] = ["${versions}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' + commons.Escaper.ecapeVariable('$bucket') + '/o';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Objects.fromJson(data));
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
  /// object names to be path safe, see Encoding URI Path Parts.
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
      Object request, core.String bucket, core.String object,
      {core.String generation,
      core.String ifGenerationMatch,
      core.String ifGenerationNotMatch,
      core.String ifMetagenerationMatch,
      core.String ifMetagenerationNotMatch,
      core.String predefinedAcl,
      core.String projection,
      core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (object == null) {
      throw new core.ArgumentError("Parameter object is required.");
    }
    if (generation != null) {
      _queryParams["generation"] = [generation];
    }
    if (ifGenerationMatch != null) {
      _queryParams["ifGenerationMatch"] = [ifGenerationMatch];
    }
    if (ifGenerationNotMatch != null) {
      _queryParams["ifGenerationNotMatch"] = [ifGenerationNotMatch];
    }
    if (ifMetagenerationMatch != null) {
      _queryParams["ifMetagenerationMatch"] = [ifMetagenerationMatch];
    }
    if (ifMetagenerationNotMatch != null) {
      _queryParams["ifMetagenerationNotMatch"] = [ifMetagenerationNotMatch];
    }
    if (predefinedAcl != null) {
      _queryParams["predefinedAcl"] = [predefinedAcl];
    }
    if (projection != null) {
      _queryParams["projection"] = [projection];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/o/' +
        commons.Escaper.ecapeVariable('$object');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Object.fromJson(data));
  }

  /// Rewrites a source object to a destination object. Optionally overrides
  /// metadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [sourceBucket] - Name of the bucket in which to find the source object.
  ///
  /// [sourceObject] - Name of the source object. For information about how to
  /// URL encode object names to be path safe, see Encoding URI Path Parts.
  ///
  /// [destinationBucket] - Name of the bucket in which to store the new object.
  /// Overrides the provided object metadata's bucket value, if any.
  ///
  /// [destinationObject] - Name of the new object. Required when the object
  /// metadata is not otherwise provided. Overrides the object metadata's name
  /// value, if any. For information about how to URL encode object names to be
  /// path safe, see Encoding URI Path Parts.
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
      core.String destinationObject,
      {core.String destinationKmsKeyName,
      core.String destinationPredefinedAcl,
      core.String ifGenerationMatch,
      core.String ifGenerationNotMatch,
      core.String ifMetagenerationMatch,
      core.String ifMetagenerationNotMatch,
      core.String ifSourceGenerationMatch,
      core.String ifSourceGenerationNotMatch,
      core.String ifSourceMetagenerationMatch,
      core.String ifSourceMetagenerationNotMatch,
      core.String maxBytesRewrittenPerCall,
      core.String projection,
      core.String provisionalUserProject,
      core.String rewriteToken,
      core.String sourceGeneration,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (sourceBucket == null) {
      throw new core.ArgumentError("Parameter sourceBucket is required.");
    }
    if (sourceObject == null) {
      throw new core.ArgumentError("Parameter sourceObject is required.");
    }
    if (destinationBucket == null) {
      throw new core.ArgumentError("Parameter destinationBucket is required.");
    }
    if (destinationObject == null) {
      throw new core.ArgumentError("Parameter destinationObject is required.");
    }
    if (destinationKmsKeyName != null) {
      _queryParams["destinationKmsKeyName"] = [destinationKmsKeyName];
    }
    if (destinationPredefinedAcl != null) {
      _queryParams["destinationPredefinedAcl"] = [destinationPredefinedAcl];
    }
    if (ifGenerationMatch != null) {
      _queryParams["ifGenerationMatch"] = [ifGenerationMatch];
    }
    if (ifGenerationNotMatch != null) {
      _queryParams["ifGenerationNotMatch"] = [ifGenerationNotMatch];
    }
    if (ifMetagenerationMatch != null) {
      _queryParams["ifMetagenerationMatch"] = [ifMetagenerationMatch];
    }
    if (ifMetagenerationNotMatch != null) {
      _queryParams["ifMetagenerationNotMatch"] = [ifMetagenerationNotMatch];
    }
    if (ifSourceGenerationMatch != null) {
      _queryParams["ifSourceGenerationMatch"] = [ifSourceGenerationMatch];
    }
    if (ifSourceGenerationNotMatch != null) {
      _queryParams["ifSourceGenerationNotMatch"] = [ifSourceGenerationNotMatch];
    }
    if (ifSourceMetagenerationMatch != null) {
      _queryParams["ifSourceMetagenerationMatch"] = [
        ifSourceMetagenerationMatch
      ];
    }
    if (ifSourceMetagenerationNotMatch != null) {
      _queryParams["ifSourceMetagenerationNotMatch"] = [
        ifSourceMetagenerationNotMatch
      ];
    }
    if (maxBytesRewrittenPerCall != null) {
      _queryParams["maxBytesRewrittenPerCall"] = [maxBytesRewrittenPerCall];
    }
    if (projection != null) {
      _queryParams["projection"] = [projection];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (rewriteToken != null) {
      _queryParams["rewriteToken"] = [rewriteToken];
    }
    if (sourceGeneration != null) {
      _queryParams["sourceGeneration"] = [sourceGeneration];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$sourceBucket') +
        '/o/' +
        commons.Escaper.ecapeVariable('$sourceObject') +
        '/rewriteTo/b/' +
        commons.Escaper.ecapeVariable('$destinationBucket') +
        '/o/' +
        commons.Escaper.ecapeVariable('$destinationObject');

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new RewriteResponse.fromJson(data));
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
  /// object names to be path safe, see Encoding URI Path Parts.
  ///
  /// [generation] - If present, selects a specific revision of this object (as
  /// opposed to the latest version, the default).
  ///
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
      Policy request, core.String bucket, core.String object,
      {core.String generation,
      core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (object == null) {
      throw new core.ArgumentError("Parameter object is required.");
    }
    if (generation != null) {
      _queryParams["generation"] = [generation];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/o/' +
        commons.Escaper.ecapeVariable('$object') +
        '/iam';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Tests a set of permissions on the given object to see which, if any, are
  /// held by the caller.
  ///
  /// Request parameters:
  ///
  /// [bucket] - Name of the bucket in which the object resides.
  ///
  /// [object] - Name of the object. For information about how to URL encode
  /// object names to be path safe, see Encoding URI Path Parts.
  ///
  /// [permissions] - Permissions to test.
  ///
  /// [generation] - If present, selects a specific revision of this object (as
  /// opposed to the latest version, the default).
  ///
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
      core.List<core.String> permissions,
      {core.String generation,
      core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (object == null) {
      throw new core.ArgumentError("Parameter object is required.");
    }
    if (permissions == null || permissions.isEmpty) {
      throw new core.ArgumentError("Parameter permissions is required.");
    }
    _queryParams["permissions"] = permissions;
    if (generation != null) {
      _queryParams["generation"] = [generation];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/o/' +
        commons.Escaper.ecapeVariable('$object') +
        '/iam/testPermissions';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new TestIamPermissionsResponse.fromJson(data));
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
  /// object names to be path safe, see Encoding URI Path Parts.
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
      Object request, core.String bucket, core.String object,
      {core.String generation,
      core.String ifGenerationMatch,
      core.String ifGenerationNotMatch,
      core.String ifMetagenerationMatch,
      core.String ifMetagenerationNotMatch,
      core.String predefinedAcl,
      core.String projection,
      core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (object == null) {
      throw new core.ArgumentError("Parameter object is required.");
    }
    if (generation != null) {
      _queryParams["generation"] = [generation];
    }
    if (ifGenerationMatch != null) {
      _queryParams["ifGenerationMatch"] = [ifGenerationMatch];
    }
    if (ifGenerationNotMatch != null) {
      _queryParams["ifGenerationNotMatch"] = [ifGenerationNotMatch];
    }
    if (ifMetagenerationMatch != null) {
      _queryParams["ifMetagenerationMatch"] = [ifMetagenerationMatch];
    }
    if (ifMetagenerationNotMatch != null) {
      _queryParams["ifMetagenerationNotMatch"] = [ifMetagenerationNotMatch];
    }
    if (predefinedAcl != null) {
      _queryParams["predefinedAcl"] = [predefinedAcl];
    }
    if (projection != null) {
      _queryParams["projection"] = [projection];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' +
        commons.Escaper.ecapeVariable('$bucket') +
        '/o/' +
        commons.Escaper.ecapeVariable('$object');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Object.fromJson(data));
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
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future<Channel> watchAll(Channel request, core.String bucket,
      {core.String delimiter,
      core.bool includeTrailingDelimiter,
      core.int maxResults,
      core.String pageToken,
      core.String prefix,
      core.String projection,
      core.String provisionalUserProject,
      core.String userProject,
      core.bool versions,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (bucket == null) {
      throw new core.ArgumentError("Parameter bucket is required.");
    }
    if (delimiter != null) {
      _queryParams["delimiter"] = [delimiter];
    }
    if (includeTrailingDelimiter != null) {
      _queryParams["includeTrailingDelimiter"] = [
        "${includeTrailingDelimiter}"
      ];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (prefix != null) {
      _queryParams["prefix"] = [prefix];
    }
    if (projection != null) {
      _queryParams["projection"] = [projection];
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if (versions != null) {
      _queryParams["versions"] = ["${versions}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'b/' + commons.Escaper.ecapeVariable('$bucket') + '/o/watch';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Channel.fromJson(data));
  }
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsHmacKeysResourceApi get hmacKeys =>
      new ProjectsHmacKeysResourceApi(_requester);
  ProjectsServiceAccountResourceApi get serviceAccount =>
      new ProjectsServiceAccountResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsHmacKeysResourceApi {
  final commons.ApiRequester _requester;

  ProjectsHmacKeysResourceApi(commons.ApiRequester client)
      : _requester = client;

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
      core.String projectId, core.String serviceAccountEmail,
      {core.String userProject, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (serviceAccountEmail == null) {
      throw new core.ArgumentError(
          "Parameter serviceAccountEmail is required.");
    }
    _queryParams["serviceAccountEmail"] = [serviceAccountEmail];
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'projects/' + commons.Escaper.ecapeVariable('$projectId') + '/hmacKeys';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HmacKey.fromJson(data));
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
  async.Future delete(core.String projectId, core.String accessId,
      {core.String userProject, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (accessId == null) {
      throw new core.ArgumentError("Parameter accessId is required.");
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/hmacKeys/' +
        commons.Escaper.ecapeVariable('$accessId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
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
  async.Future<HmacKeyMetadata> get(core.String projectId, core.String accessId,
      {core.String userProject, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (accessId == null) {
      throw new core.ArgumentError("Parameter accessId is required.");
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/hmacKeys/' +
        commons.Escaper.ecapeVariable('$accessId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HmacKeyMetadata.fromJson(data));
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
  async.Future<HmacKeysMetadata> list(core.String projectId,
      {core.int maxResults,
      core.String pageToken,
      core.String serviceAccountEmail,
      core.bool showDeletedKeys,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (serviceAccountEmail != null) {
      _queryParams["serviceAccountEmail"] = [serviceAccountEmail];
    }
    if (showDeletedKeys != null) {
      _queryParams["showDeletedKeys"] = ["${showDeletedKeys}"];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'projects/' + commons.Escaper.ecapeVariable('$projectId') + '/hmacKeys';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HmacKeysMetadata.fromJson(data));
  }

  /// Updates the state of an HMAC key. See the HMAC Key resource descriptor for
  /// valid states.
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
      HmacKeyMetadata request, core.String projectId, core.String accessId,
      {core.String userProject, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (accessId == null) {
      throw new core.ArgumentError("Parameter accessId is required.");
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/hmacKeys/' +
        commons.Escaper.ecapeVariable('$accessId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HmacKeyMetadata.fromJson(data));
  }
}

class ProjectsServiceAccountResourceApi {
  final commons.ApiRequester _requester;

  ProjectsServiceAccountResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Get the email address of this project's Google Cloud Storage service
  /// account.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID
  ///
  /// [provisionalUserProject] - The project to be billed for this request if
  /// the target bucket is requester-pays bucket.
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
  async.Future<ServiceAccount> get(core.String projectId,
      {core.String provisionalUserProject,
      core.String userProject,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (provisionalUserProject != null) {
      _queryParams["provisionalUserProject"] = [provisionalUserProject];
    }
    if (userProject != null) {
      _queryParams["userProject"] = [userProject];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/serviceAccount';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceAccount.fromJson(data));
  }
}

/// The bucket's billing configuration.
class BucketBilling {
  /// When set to true, Requester Pays is enabled for this bucket.
  core.bool requesterPays;

  BucketBilling();

  BucketBilling.fromJson(core.Map _json) {
    if (_json.containsKey("requesterPays")) {
      requesterPays = _json["requesterPays"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (requesterPays != null) {
      _json["requesterPays"] = requesterPays;
    }
    return _json;
  }
}

class BucketCors {
  /// The value, in seconds, to return in the  Access-Control-Max-Age header
  /// used in preflight responses.
  core.int maxAgeSeconds;

  /// The list of HTTP methods on which to include CORS response headers, (GET,
  /// OPTIONS, POST, etc) Note: "*" is permitted in the list of methods, and
  /// means "any method".
  core.List<core.String> method;

  /// The list of Origins eligible to receive CORS response headers. Note: "*"
  /// is permitted in the list of origins, and means "any Origin".
  core.List<core.String> origin;

  /// The list of HTTP headers other than the simple response headers to give
  /// permission for the user-agent to share across domains.
  core.List<core.String> responseHeader;

  BucketCors();

  BucketCors.fromJson(core.Map _json) {
    if (_json.containsKey("maxAgeSeconds")) {
      maxAgeSeconds = _json["maxAgeSeconds"];
    }
    if (_json.containsKey("method")) {
      method = (_json["method"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("origin")) {
      origin = (_json["origin"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("responseHeader")) {
      responseHeader =
          (_json["responseHeader"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (maxAgeSeconds != null) {
      _json["maxAgeSeconds"] = maxAgeSeconds;
    }
    if (method != null) {
      _json["method"] = method;
    }
    if (origin != null) {
      _json["origin"] = origin;
    }
    if (responseHeader != null) {
      _json["responseHeader"] = responseHeader;
    }
    return _json;
  }
}

/// Encryption configuration for a bucket.
class BucketEncryption {
  /// A Cloud KMS key that will be used to encrypt objects inserted into this
  /// bucket, if no encryption method is specified.
  core.String defaultKmsKeyName;

  BucketEncryption();

  BucketEncryption.fromJson(core.Map _json) {
    if (_json.containsKey("defaultKmsKeyName")) {
      defaultKmsKeyName = _json["defaultKmsKeyName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (defaultKmsKeyName != null) {
      _json["defaultKmsKeyName"] = defaultKmsKeyName;
    }
    return _json;
  }
}

/// The bucket's Bucket Policy Only configuration.
class BucketIamConfigurationBucketPolicyOnly {
  /// If set, access is controlled only by bucket-level or above IAM policies.
  core.bool enabled;

  /// The deadline for changing iamConfiguration.bucketPolicyOnly.enabled from
  /// true to false in RFC 3339 format.
  /// iamConfiguration.bucketPolicyOnly.enabled may be changed from true to
  /// false until the locked time, after which the field is immutable.
  core.DateTime lockedTime;

  BucketIamConfigurationBucketPolicyOnly();

  BucketIamConfigurationBucketPolicyOnly.fromJson(core.Map _json) {
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
    if (_json.containsKey("lockedTime")) {
      lockedTime = core.DateTime.parse(_json["lockedTime"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    if (lockedTime != null) {
      _json["lockedTime"] = (lockedTime).toIso8601String();
    }
    return _json;
  }
}

/// The bucket's uniform bucket-level access configuration.
class BucketIamConfigurationUniformBucketLevelAccess {
  /// If set, access is controlled only by bucket-level or above IAM policies.
  core.bool enabled;

  /// The deadline for changing
  /// iamConfiguration.uniformBucketLevelAccess.enabled from true to false in
  /// RFC 3339  format. iamConfiguration.uniformBucketLevelAccess.enabled may be
  /// changed from true to false until the locked time, after which the field is
  /// immutable.
  core.DateTime lockedTime;

  BucketIamConfigurationUniformBucketLevelAccess();

  BucketIamConfigurationUniformBucketLevelAccess.fromJson(core.Map _json) {
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
    if (_json.containsKey("lockedTime")) {
      lockedTime = core.DateTime.parse(_json["lockedTime"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    if (lockedTime != null) {
      _json["lockedTime"] = (lockedTime).toIso8601String();
    }
    return _json;
  }
}

/// The bucket's IAM configuration.
class BucketIamConfiguration {
  /// The bucket's Bucket Policy Only configuration.
  BucketIamConfigurationBucketPolicyOnly bucketPolicyOnly;

  /// The bucket's uniform bucket-level access configuration.
  BucketIamConfigurationUniformBucketLevelAccess uniformBucketLevelAccess;

  BucketIamConfiguration();

  BucketIamConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("bucketPolicyOnly")) {
      bucketPolicyOnly = new BucketIamConfigurationBucketPolicyOnly.fromJson(
          _json["bucketPolicyOnly"]);
    }
    if (_json.containsKey("uniformBucketLevelAccess")) {
      uniformBucketLevelAccess =
          new BucketIamConfigurationUniformBucketLevelAccess.fromJson(
              _json["uniformBucketLevelAccess"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bucketPolicyOnly != null) {
      _json["bucketPolicyOnly"] = (bucketPolicyOnly).toJson();
    }
    if (uniformBucketLevelAccess != null) {
      _json["uniformBucketLevelAccess"] = (uniformBucketLevelAccess).toJson();
    }
    return _json;
  }
}

/// The action to take.
class BucketLifecycleRuleAction {
  /// Target storage class. Required iff the type of the action is
  /// SetStorageClass.
  core.String storageClass;

  /// Type of the action. Currently, only Delete and SetStorageClass are
  /// supported.
  core.String type;

  BucketLifecycleRuleAction();

  BucketLifecycleRuleAction.fromJson(core.Map _json) {
    if (_json.containsKey("storageClass")) {
      storageClass = _json["storageClass"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (storageClass != null) {
      _json["storageClass"] = storageClass;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// The condition(s) under which the action will be taken.
class BucketLifecycleRuleCondition {
  /// Age of an object (in days). This condition is satisfied when an object
  /// reaches the specified age.
  core.int age;

  /// A date in RFC 3339 format with only the date part (for instance,
  /// "2013-01-15"). This condition is satisfied when an object is created
  /// before midnight of the specified date in UTC.
  core.DateTime createdBefore;

  /// Relevant only for versioned objects. If the value is true, this condition
  /// matches live objects; if the value is false, it matches archived objects.
  core.bool isLive;

  /// A regular expression that satisfies the RE2 syntax. This condition is
  /// satisfied when the name of the object matches the RE2 pattern. Note: This
  /// feature is currently in the "Early Access" launch stage and is only
  /// available to a whitelisted set of users; that means that this feature may
  /// be changed in backward-incompatible ways and that it is not guaranteed to
  /// be released.
  core.String matchesPattern;

  /// Objects having any of the storage classes specified by this condition will
  /// be matched. Values include MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE,
  /// STANDARD, and DURABLE_REDUCED_AVAILABILITY.
  core.List<core.String> matchesStorageClass;

  /// Relevant only for versioned objects. If the value is N, this condition is
  /// satisfied when there are at least N versions (including the live version)
  /// newer than this version of the object.
  core.int numNewerVersions;

  BucketLifecycleRuleCondition();

  BucketLifecycleRuleCondition.fromJson(core.Map _json) {
    if (_json.containsKey("age")) {
      age = _json["age"];
    }
    if (_json.containsKey("createdBefore")) {
      createdBefore = core.DateTime.parse(_json["createdBefore"]);
    }
    if (_json.containsKey("isLive")) {
      isLive = _json["isLive"];
    }
    if (_json.containsKey("matchesPattern")) {
      matchesPattern = _json["matchesPattern"];
    }
    if (_json.containsKey("matchesStorageClass")) {
      matchesStorageClass =
          (_json["matchesStorageClass"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("numNewerVersions")) {
      numNewerVersions = _json["numNewerVersions"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (age != null) {
      _json["age"] = age;
    }
    if (createdBefore != null) {
      _json["createdBefore"] =
          "${(createdBefore).year.toString().padLeft(4, '0')}-${(createdBefore).month.toString().padLeft(2, '0')}-${(createdBefore).day.toString().padLeft(2, '0')}";
    }
    if (isLive != null) {
      _json["isLive"] = isLive;
    }
    if (matchesPattern != null) {
      _json["matchesPattern"] = matchesPattern;
    }
    if (matchesStorageClass != null) {
      _json["matchesStorageClass"] = matchesStorageClass;
    }
    if (numNewerVersions != null) {
      _json["numNewerVersions"] = numNewerVersions;
    }
    return _json;
  }
}

class BucketLifecycleRule {
  /// The action to take.
  BucketLifecycleRuleAction action;

  /// The condition(s) under which the action will be taken.
  BucketLifecycleRuleCondition condition;

  BucketLifecycleRule();

  BucketLifecycleRule.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = new BucketLifecycleRuleAction.fromJson(_json["action"]);
    }
    if (_json.containsKey("condition")) {
      condition = new BucketLifecycleRuleCondition.fromJson(_json["condition"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (action != null) {
      _json["action"] = (action).toJson();
    }
    if (condition != null) {
      _json["condition"] = (condition).toJson();
    }
    return _json;
  }
}

/// The bucket's lifecycle configuration. See lifecycle management for more
/// information.
class BucketLifecycle {
  /// A lifecycle management rule, which is made of an action to take and the
  /// condition(s) under which the action will be taken.
  core.List<BucketLifecycleRule> rule;

  BucketLifecycle();

  BucketLifecycle.fromJson(core.Map _json) {
    if (_json.containsKey("rule")) {
      rule = (_json["rule"] as core.List)
          .map<BucketLifecycleRule>(
              (value) => new BucketLifecycleRule.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (rule != null) {
      _json["rule"] = rule.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The bucket's logging configuration, which defines the destination bucket and
/// optional name prefix for the current bucket's logs.
class BucketLogging {
  /// The destination bucket where the current bucket's logs should be placed.
  core.String logBucket;

  /// A prefix for log object names.
  core.String logObjectPrefix;

  BucketLogging();

  BucketLogging.fromJson(core.Map _json) {
    if (_json.containsKey("logBucket")) {
      logBucket = _json["logBucket"];
    }
    if (_json.containsKey("logObjectPrefix")) {
      logObjectPrefix = _json["logObjectPrefix"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (logBucket != null) {
      _json["logBucket"] = logBucket;
    }
    if (logObjectPrefix != null) {
      _json["logObjectPrefix"] = logObjectPrefix;
    }
    return _json;
  }
}

/// The owner of the bucket. This is always the project team's owner group.
class BucketOwner {
  /// The entity, in the form project-owner-projectId.
  core.String entity;

  /// The ID for the entity.
  core.String entityId;

  BucketOwner();

  BucketOwner.fromJson(core.Map _json) {
    if (_json.containsKey("entity")) {
      entity = _json["entity"];
    }
    if (_json.containsKey("entityId")) {
      entityId = _json["entityId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (entity != null) {
      _json["entity"] = entity;
    }
    if (entityId != null) {
      _json["entityId"] = entityId;
    }
    return _json;
  }
}

/// The bucket's retention policy. The retention policy enforces a minimum
/// retention time for all objects contained in the bucket, based on their
/// creation time. Any attempt to overwrite or delete objects younger than the
/// retention period will result in a PERMISSION_DENIED error. An unlocked
/// retention policy can be modified or removed from the bucket via a
/// storage.buckets.update operation. A locked retention policy cannot be
/// removed or shortened in duration for the lifetime of the bucket. Attempting
/// to remove or decrease period of a locked retention policy will result in a
/// PERMISSION_DENIED error.
class BucketRetentionPolicy {
  /// Server-determined value that indicates the time from which policy was
  /// enforced and effective. This value is in RFC 3339 format.
  core.DateTime effectiveTime;

  /// Once locked, an object retention policy cannot be modified.
  core.bool isLocked;

  /// The duration in seconds that objects need to be retained. Retention
  /// duration must be greater than zero and less than 100 years. Note that
  /// enforcement of retention periods less than a day is not guaranteed. Such
  /// periods should only be used for testing purposes.
  core.String retentionPeriod;

  BucketRetentionPolicy();

  BucketRetentionPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("effectiveTime")) {
      effectiveTime = core.DateTime.parse(_json["effectiveTime"]);
    }
    if (_json.containsKey("isLocked")) {
      isLocked = _json["isLocked"];
    }
    if (_json.containsKey("retentionPeriod")) {
      retentionPeriod = _json["retentionPeriod"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (effectiveTime != null) {
      _json["effectiveTime"] = (effectiveTime).toIso8601String();
    }
    if (isLocked != null) {
      _json["isLocked"] = isLocked;
    }
    if (retentionPeriod != null) {
      _json["retentionPeriod"] = retentionPeriod;
    }
    return _json;
  }
}

/// The bucket's versioning configuration.
class BucketVersioning {
  /// While set to true, versioning is fully enabled for this bucket.
  core.bool enabled;

  BucketVersioning();

  BucketVersioning.fromJson(core.Map _json) {
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    return _json;
  }
}

/// The bucket's website configuration, controlling how the service behaves when
/// accessing bucket contents as a web site. See the Static Website Examples for
/// more information.
class BucketWebsite {
  /// If the requested object path is missing, the service will ensure the path
  /// has a trailing '/', append this suffix, and attempt to retrieve the
  /// resulting object. This allows the creation of index.html objects to
  /// represent directory pages.
  core.String mainPageSuffix;

  /// If the requested object path is missing, and any mainPageSuffix object is
  /// missing, if applicable, the service will return the named object from this
  /// bucket as the content for a 404 Not Found result.
  core.String notFoundPage;

  BucketWebsite();

  BucketWebsite.fromJson(core.Map _json) {
    if (_json.containsKey("mainPageSuffix")) {
      mainPageSuffix = _json["mainPageSuffix"];
    }
    if (_json.containsKey("notFoundPage")) {
      notFoundPage = _json["notFoundPage"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (mainPageSuffix != null) {
      _json["mainPageSuffix"] = mainPageSuffix;
    }
    if (notFoundPage != null) {
      _json["notFoundPage"] = notFoundPage;
    }
    return _json;
  }
}

/// A bucket.
class Bucket {
  /// Access controls on the bucket.
  core.List<BucketAccessControl> acl;

  /// The bucket's billing configuration.
  BucketBilling billing;

  /// The bucket's Cross-Origin Resource Sharing (CORS) configuration.
  core.List<BucketCors> cors;

  /// The default value for event-based hold on newly created objects in this
  /// bucket. Event-based hold is a way to retain objects indefinitely until an
  /// event occurs, signified by the hold's release. After being released, such
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
  core.bool defaultEventBasedHold;

  /// Default access controls to apply to new objects when no ACL is provided.
  core.List<ObjectAccessControl> defaultObjectAcl;

  /// Encryption configuration for a bucket.
  BucketEncryption encryption;

  /// HTTP 1.1 Entity tag for the bucket.
  core.String etag;

  /// The bucket's IAM configuration.
  BucketIamConfiguration iamConfiguration;

  /// The ID of the bucket. For buckets, the id and name properties are the
  /// same.
  core.String id;

  /// The kind of item this is. For buckets, this is always storage#bucket.
  core.String kind;

  /// User-provided labels, in key/value pairs.
  core.Map<core.String, core.String> labels;

  /// The bucket's lifecycle configuration. See lifecycle management for more
  /// information.
  BucketLifecycle lifecycle;

  /// The location of the bucket. Object data for objects in the bucket resides
  /// in physical storage within this region. Defaults to US. See the
  /// developer's guide for the authoritative list.
  core.String location;

  /// The type of the bucket location.
  core.String locationType;

  /// The bucket's logging configuration, which defines the destination bucket
  /// and optional name prefix for the current bucket's logs.
  BucketLogging logging;

  /// The metadata generation of this bucket.
  core.String metageneration;

  /// The name of the bucket.
  core.String name;

  /// The owner of the bucket. This is always the project team's owner group.
  BucketOwner owner;

  /// The project number of the project the bucket belongs to.
  core.String projectNumber;

  /// The bucket's retention policy. The retention policy enforces a minimum
  /// retention time for all objects contained in the bucket, based on their
  /// creation time. Any attempt to overwrite or delete objects younger than the
  /// retention period will result in a PERMISSION_DENIED error. An unlocked
  /// retention policy can be modified or removed from the bucket via a
  /// storage.buckets.update operation. A locked retention policy cannot be
  /// removed or shortened in duration for the lifetime of the bucket.
  /// Attempting to remove or decrease period of a locked retention policy will
  /// result in a PERMISSION_DENIED error.
  BucketRetentionPolicy retentionPolicy;

  /// The URI of this bucket.
  core.String selfLink;

  /// The bucket's default storage class, used whenever no storageClass is
  /// specified for a newly-created object. This defines how objects in the
  /// bucket are stored and determines the SLA and the cost of storage. Values
  /// include MULTI_REGIONAL, REGIONAL, STANDARD, NEARLINE, COLDLINE, and
  /// DURABLE_REDUCED_AVAILABILITY. If this value is not specified when the
  /// bucket is created, it will default to STANDARD. For more information, see
  /// storage classes.
  core.String storageClass;

  /// The creation time of the bucket in RFC 3339 format.
  core.DateTime timeCreated;

  /// The modification time of the bucket in RFC 3339 format.
  core.DateTime updated;

  /// The bucket's versioning configuration.
  BucketVersioning versioning;

  /// The bucket's website configuration, controlling how the service behaves
  /// when accessing bucket contents as a web site. See the Static Website
  /// Examples for more information.
  BucketWebsite website;

  Bucket();

  Bucket.fromJson(core.Map _json) {
    if (_json.containsKey("acl")) {
      acl = (_json["acl"] as core.List)
          .map<BucketAccessControl>(
              (value) => new BucketAccessControl.fromJson(value))
          .toList();
    }
    if (_json.containsKey("billing")) {
      billing = new BucketBilling.fromJson(_json["billing"]);
    }
    if (_json.containsKey("cors")) {
      cors = (_json["cors"] as core.List)
          .map<BucketCors>((value) => new BucketCors.fromJson(value))
          .toList();
    }
    if (_json.containsKey("defaultEventBasedHold")) {
      defaultEventBasedHold = _json["defaultEventBasedHold"];
    }
    if (_json.containsKey("defaultObjectAcl")) {
      defaultObjectAcl = (_json["defaultObjectAcl"] as core.List)
          .map<ObjectAccessControl>(
              (value) => new ObjectAccessControl.fromJson(value))
          .toList();
    }
    if (_json.containsKey("encryption")) {
      encryption = new BucketEncryption.fromJson(_json["encryption"]);
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("iamConfiguration")) {
      iamConfiguration =
          new BucketIamConfiguration.fromJson(_json["iamConfiguration"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("lifecycle")) {
      lifecycle = new BucketLifecycle.fromJson(_json["lifecycle"]);
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("locationType")) {
      locationType = _json["locationType"];
    }
    if (_json.containsKey("logging")) {
      logging = new BucketLogging.fromJson(_json["logging"]);
    }
    if (_json.containsKey("metageneration")) {
      metageneration = _json["metageneration"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("owner")) {
      owner = new BucketOwner.fromJson(_json["owner"]);
    }
    if (_json.containsKey("projectNumber")) {
      projectNumber = _json["projectNumber"];
    }
    if (_json.containsKey("retentionPolicy")) {
      retentionPolicy =
          new BucketRetentionPolicy.fromJson(_json["retentionPolicy"]);
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("storageClass")) {
      storageClass = _json["storageClass"];
    }
    if (_json.containsKey("timeCreated")) {
      timeCreated = core.DateTime.parse(_json["timeCreated"]);
    }
    if (_json.containsKey("updated")) {
      updated = core.DateTime.parse(_json["updated"]);
    }
    if (_json.containsKey("versioning")) {
      versioning = new BucketVersioning.fromJson(_json["versioning"]);
    }
    if (_json.containsKey("website")) {
      website = new BucketWebsite.fromJson(_json["website"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (acl != null) {
      _json["acl"] = acl.map((value) => (value).toJson()).toList();
    }
    if (billing != null) {
      _json["billing"] = (billing).toJson();
    }
    if (cors != null) {
      _json["cors"] = cors.map((value) => (value).toJson()).toList();
    }
    if (defaultEventBasedHold != null) {
      _json["defaultEventBasedHold"] = defaultEventBasedHold;
    }
    if (defaultObjectAcl != null) {
      _json["defaultObjectAcl"] =
          defaultObjectAcl.map((value) => (value).toJson()).toList();
    }
    if (encryption != null) {
      _json["encryption"] = (encryption).toJson();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (iamConfiguration != null) {
      _json["iamConfiguration"] = (iamConfiguration).toJson();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (lifecycle != null) {
      _json["lifecycle"] = (lifecycle).toJson();
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (locationType != null) {
      _json["locationType"] = locationType;
    }
    if (logging != null) {
      _json["logging"] = (logging).toJson();
    }
    if (metageneration != null) {
      _json["metageneration"] = metageneration;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (owner != null) {
      _json["owner"] = (owner).toJson();
    }
    if (projectNumber != null) {
      _json["projectNumber"] = projectNumber;
    }
    if (retentionPolicy != null) {
      _json["retentionPolicy"] = (retentionPolicy).toJson();
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (storageClass != null) {
      _json["storageClass"] = storageClass;
    }
    if (timeCreated != null) {
      _json["timeCreated"] = (timeCreated).toIso8601String();
    }
    if (updated != null) {
      _json["updated"] = (updated).toIso8601String();
    }
    if (versioning != null) {
      _json["versioning"] = (versioning).toJson();
    }
    if (website != null) {
      _json["website"] = (website).toJson();
    }
    return _json;
  }
}

/// The project team associated with the entity, if any.
class BucketAccessControlProjectTeam {
  /// The project number.
  core.String projectNumber;

  /// The team.
  core.String team;

  BucketAccessControlProjectTeam();

  BucketAccessControlProjectTeam.fromJson(core.Map _json) {
    if (_json.containsKey("projectNumber")) {
      projectNumber = _json["projectNumber"];
    }
    if (_json.containsKey("team")) {
      team = _json["team"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (projectNumber != null) {
      _json["projectNumber"] = projectNumber;
    }
    if (team != null) {
      _json["team"] = team;
    }
    return _json;
  }
}

/// An access-control entry.
class BucketAccessControl {
  /// The name of the bucket.
  core.String bucket;

  /// The domain associated with the entity, if any.
  core.String domain;

  /// The email address associated with the entity, if any.
  core.String email;

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
  /// - The group example@googlegroups.com would be
  /// group-example@googlegroups.com.
  /// - To refer to all members of the Google Apps for Business domain
  /// example.com, the entity would be domain-example.com.
  core.String entity;

  /// The ID for the entity, if any.
  core.String entityId;

  /// HTTP 1.1 Entity tag for the access-control entry.
  core.String etag;

  /// The ID of the access-control entry.
  core.String id;

  /// The kind of item this is. For bucket access control entries, this is
  /// always storage#bucketAccessControl.
  core.String kind;

  /// The project team associated with the entity, if any.
  BucketAccessControlProjectTeam projectTeam;

  /// The access permission for the entity.
  core.String role;

  /// The link to this access-control entry.
  core.String selfLink;

  BucketAccessControl();

  BucketAccessControl.fromJson(core.Map _json) {
    if (_json.containsKey("bucket")) {
      bucket = _json["bucket"];
    }
    if (_json.containsKey("domain")) {
      domain = _json["domain"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("entity")) {
      entity = _json["entity"];
    }
    if (_json.containsKey("entityId")) {
      entityId = _json["entityId"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("projectTeam")) {
      projectTeam =
          new BucketAccessControlProjectTeam.fromJson(_json["projectTeam"]);
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bucket != null) {
      _json["bucket"] = bucket;
    }
    if (domain != null) {
      _json["domain"] = domain;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (entity != null) {
      _json["entity"] = entity;
    }
    if (entityId != null) {
      _json["entityId"] = entityId;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (projectTeam != null) {
      _json["projectTeam"] = (projectTeam).toJson();
    }
    if (role != null) {
      _json["role"] = role;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/// An access-control list.
class BucketAccessControls {
  /// The list of items.
  core.List<BucketAccessControl> items;

  /// The kind of item this is. For lists of bucket access control entries, this
  /// is always storage#bucketAccessControls.
  core.String kind;

  BucketAccessControls();

  BucketAccessControls.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<BucketAccessControl>(
              (value) => new BucketAccessControl.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// A list of buckets.
class Buckets {
  /// The list of items.
  core.List<Bucket> items;

  /// The kind of item this is. For lists of buckets, this is always
  /// storage#buckets.
  core.String kind;

  /// The continuation token, used to page through large result sets. Provide
  /// this value in a subsequent request to return the next page of results.
  core.String nextPageToken;

  Buckets();

  Buckets.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Bucket>((value) => new Bucket.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// An notification channel used to watch for resource changes.
class Channel {
  /// The address where notifications are delivered for this channel.
  core.String address;

  /// Date and time of notification channel expiration, expressed as a Unix
  /// timestamp, in milliseconds. Optional.
  core.String expiration;

  /// A UUID or similar unique string that identifies this channel.
  core.String id;

  /// Identifies this as a notification channel used to watch for changes to a
  /// resource, which is "api#channel".
  core.String kind;

  /// Additional parameters controlling delivery channel behavior. Optional.
  core.Map<core.String, core.String> params;

  /// A Boolean value to indicate whether payload is wanted. Optional.
  core.bool payload;

  /// An opaque ID that identifies the resource being watched on this channel.
  /// Stable across different API versions.
  core.String resourceId;

  /// A version-specific identifier for the watched resource.
  core.String resourceUri;

  /// An arbitrary string delivered to the target address with each notification
  /// delivered over this channel. Optional.
  core.String token;

  /// The type of delivery mechanism used for this channel.
  core.String type;

  Channel();

  Channel.fromJson(core.Map _json) {
    if (_json.containsKey("address")) {
      address = _json["address"];
    }
    if (_json.containsKey("expiration")) {
      expiration = _json["expiration"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("params")) {
      params = (_json["params"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("payload")) {
      payload = _json["payload"];
    }
    if (_json.containsKey("resourceId")) {
      resourceId = _json["resourceId"];
    }
    if (_json.containsKey("resourceUri")) {
      resourceUri = _json["resourceUri"];
    }
    if (_json.containsKey("token")) {
      token = _json["token"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (address != null) {
      _json["address"] = address;
    }
    if (expiration != null) {
      _json["expiration"] = expiration;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (params != null) {
      _json["params"] = params;
    }
    if (payload != null) {
      _json["payload"] = payload;
    }
    if (resourceId != null) {
      _json["resourceId"] = resourceId;
    }
    if (resourceUri != null) {
      _json["resourceUri"] = resourceUri;
    }
    if (token != null) {
      _json["token"] = token;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Conditions that must be met for this operation to execute.
class ComposeRequestSourceObjectsObjectPreconditions {
  /// Only perform the composition if the generation of the source object that
  /// would be used matches this value. If this value and a generation are both
  /// specified, they must be the same value or the call will fail.
  core.String ifGenerationMatch;

  ComposeRequestSourceObjectsObjectPreconditions();

  ComposeRequestSourceObjectsObjectPreconditions.fromJson(core.Map _json) {
    if (_json.containsKey("ifGenerationMatch")) {
      ifGenerationMatch = _json["ifGenerationMatch"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ifGenerationMatch != null) {
      _json["ifGenerationMatch"] = ifGenerationMatch;
    }
    return _json;
  }
}

class ComposeRequestSourceObjects {
  /// The generation of this object to use as the source.
  core.String generation;

  /// The source object's name. All source objects must reside in the same
  /// bucket.
  core.String name;

  /// Conditions that must be met for this operation to execute.
  ComposeRequestSourceObjectsObjectPreconditions objectPreconditions;

  ComposeRequestSourceObjects();

  ComposeRequestSourceObjects.fromJson(core.Map _json) {
    if (_json.containsKey("generation")) {
      generation = _json["generation"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("objectPreconditions")) {
      objectPreconditions =
          new ComposeRequestSourceObjectsObjectPreconditions.fromJson(
              _json["objectPreconditions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (generation != null) {
      _json["generation"] = generation;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (objectPreconditions != null) {
      _json["objectPreconditions"] = (objectPreconditions).toJson();
    }
    return _json;
  }
}

/// A Compose request.
class ComposeRequest {
  /// Properties of the resulting object.
  Object destination;

  /// The kind of item this is.
  core.String kind;

  /// The list of source objects that will be concatenated into a single object.
  core.List<ComposeRequestSourceObjects> sourceObjects;

  ComposeRequest();

  ComposeRequest.fromJson(core.Map _json) {
    if (_json.containsKey("destination")) {
      destination = new Object.fromJson(_json["destination"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("sourceObjects")) {
      sourceObjects = (_json["sourceObjects"] as core.List)
          .map<ComposeRequestSourceObjects>(
              (value) => new ComposeRequestSourceObjects.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (destination != null) {
      _json["destination"] = (destination).toJson();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (sourceObjects != null) {
      _json["sourceObjects"] =
          sourceObjects.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Represents an expression text. Example: title: "User account presence"
/// description: "Determines whether the request has a user account" expression:
/// "size(request.user) > 0"
class Expr {
  /// An optional description of the expression. This is a longer text which
  /// describes the expression, e.g. when hovered over it in a UI.
  core.String description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax. The application context of the containing message determines which
  /// well-known feature set of CEL is supported.
  core.String expression;

  /// An optional string indicating the location of the expression for error
  /// reporting, e.g. a file name and a position in the file.
  core.String location;

  /// An optional title for the expression, i.e. a short string describing its
  /// purpose. This can be used e.g. in UIs which allow to enter the expression.
  core.String title;

  Expr();

  Expr.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("expression")) {
      expression = _json["expression"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (expression != null) {
      _json["expression"] = expression;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// JSON template to produce a JSON-style HMAC Key resource for Create
/// responses.
class HmacKey {
  /// The kind of item this is. For HMAC keys, this is always storage#hmacKey.
  core.String kind;

  /// Key metadata.
  HmacKeyMetadata metadata;

  /// HMAC secret key material.
  core.String secret;

  HmacKey();

  HmacKey.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("metadata")) {
      metadata = new HmacKeyMetadata.fromJson(_json["metadata"]);
    }
    if (_json.containsKey("secret")) {
      secret = _json["secret"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    if (secret != null) {
      _json["secret"] = secret;
    }
    return _json;
  }
}

/// JSON template to produce a JSON-style HMAC Key metadata resource.
class HmacKeyMetadata {
  /// The ID of the HMAC Key.
  core.String accessId;

  /// HTTP 1.1 Entity tag for the HMAC key.
  core.String etag;

  /// The ID of the HMAC key, including the Project ID and the Access ID.
  core.String id;

  /// The kind of item this is. For HMAC Key metadata, this is always
  /// storage#hmacKeyMetadata.
  core.String kind;

  /// Project ID owning the service account to which the key authenticates.
  core.String projectId;

  /// The link to this resource.
  core.String selfLink;

  /// The email address of the key's associated service account.
  core.String serviceAccountEmail;

  /// The state of the key. Can be one of ACTIVE, INACTIVE, or DELETED.
  core.String state;

  /// The creation time of the HMAC key in RFC 3339 format.
  core.DateTime timeCreated;

  /// The last modification time of the HMAC key metadata in RFC 3339 format.
  core.DateTime updated;

  HmacKeyMetadata();

  HmacKeyMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("accessId")) {
      accessId = _json["accessId"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("serviceAccountEmail")) {
      serviceAccountEmail = _json["serviceAccountEmail"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("timeCreated")) {
      timeCreated = core.DateTime.parse(_json["timeCreated"]);
    }
    if (_json.containsKey("updated")) {
      updated = core.DateTime.parse(_json["updated"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accessId != null) {
      _json["accessId"] = accessId;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (serviceAccountEmail != null) {
      _json["serviceAccountEmail"] = serviceAccountEmail;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (timeCreated != null) {
      _json["timeCreated"] = (timeCreated).toIso8601String();
    }
    if (updated != null) {
      _json["updated"] = (updated).toIso8601String();
    }
    return _json;
  }
}

/// A list of hmacKeys.
class HmacKeysMetadata {
  /// The list of items.
  core.List<HmacKeyMetadata> items;

  /// The kind of item this is. For lists of hmacKeys, this is always
  /// storage#hmacKeysMetadata.
  core.String kind;

  /// The continuation token, used to page through large result sets. Provide
  /// this value in a subsequent request to return the next page of results.
  core.String nextPageToken;

  HmacKeysMetadata();

  HmacKeysMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<HmacKeyMetadata>((value) => new HmacKeyMetadata.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// A subscription to receive Google PubSub notifications.
class Notification {
  /// An optional list of additional attributes to attach to each Cloud PubSub
  /// message published for this notification subscription.
  core.Map<core.String, core.String> customAttributes;

  /// HTTP 1.1 Entity tag for this subscription notification.
  core.String etag;

  /// If present, only send notifications about listed event types. If empty,
  /// sent notifications for all event types.
  core.List<core.String> eventTypes;

  /// The ID of the notification.
  core.String id;

  /// The kind of item this is. For notifications, this is always
  /// storage#notification.
  core.String kind;

  /// If present, only apply this notification configuration to object names
  /// that begin with this prefix.
  core.String objectNamePrefix;

  /// The desired content of the Payload.
  core.String payloadFormat;

  /// The canonical URL of this notification.
  core.String selfLink;

  /// The Cloud PubSub topic to which this subscription publishes. Formatted as:
  /// '//pubsub.googleapis.com/projects/{project-identifier}/topics/{my-topic}'
  core.String topic;

  Notification();

  Notification.fromJson(core.Map _json) {
    if (_json.containsKey("custom_attributes")) {
      customAttributes = (_json["custom_attributes"] as core.Map)
          .cast<core.String, core.String>();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("event_types")) {
      eventTypes = (_json["event_types"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("object_name_prefix")) {
      objectNamePrefix = _json["object_name_prefix"];
    }
    if (_json.containsKey("payload_format")) {
      payloadFormat = _json["payload_format"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("topic")) {
      topic = _json["topic"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (customAttributes != null) {
      _json["custom_attributes"] = customAttributes;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (eventTypes != null) {
      _json["event_types"] = eventTypes;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (objectNamePrefix != null) {
      _json["object_name_prefix"] = objectNamePrefix;
    }
    if (payloadFormat != null) {
      _json["payload_format"] = payloadFormat;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (topic != null) {
      _json["topic"] = topic;
    }
    return _json;
  }
}

/// A list of notification subscriptions.
class Notifications {
  /// The list of items.
  core.List<Notification> items;

  /// The kind of item this is. For lists of notifications, this is always
  /// storage#notifications.
  core.String kind;

  Notifications();

  Notifications.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Notification>((value) => new Notification.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// Metadata of customer-supplied encryption key, if the object is encrypted by
/// such a key.
class ObjectCustomerEncryption {
  /// The encryption algorithm.
  core.String encryptionAlgorithm;

  /// SHA256 hash value of the encryption key.
  core.String keySha256;

  ObjectCustomerEncryption();

  ObjectCustomerEncryption.fromJson(core.Map _json) {
    if (_json.containsKey("encryptionAlgorithm")) {
      encryptionAlgorithm = _json["encryptionAlgorithm"];
    }
    if (_json.containsKey("keySha256")) {
      keySha256 = _json["keySha256"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (encryptionAlgorithm != null) {
      _json["encryptionAlgorithm"] = encryptionAlgorithm;
    }
    if (keySha256 != null) {
      _json["keySha256"] = keySha256;
    }
    return _json;
  }
}

/// The owner of the object. This will always be the uploader of the object.
class ObjectOwner {
  /// The entity, in the form user-userId.
  core.String entity;

  /// The ID for the entity.
  core.String entityId;

  ObjectOwner();

  ObjectOwner.fromJson(core.Map _json) {
    if (_json.containsKey("entity")) {
      entity = _json["entity"];
    }
    if (_json.containsKey("entityId")) {
      entityId = _json["entityId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (entity != null) {
      _json["entity"] = entity;
    }
    if (entityId != null) {
      _json["entityId"] = entityId;
    }
    return _json;
  }
}

/// An object.
class Object {
  /// Access controls on the object.
  core.List<ObjectAccessControl> acl;

  /// The name of the bucket containing this object.
  core.String bucket;

  /// Cache-Control directive for the object data. If omitted, and the object is
  /// accessible to all anonymous users, the default will be public,
  /// max-age=3600.
  core.String cacheControl;

  /// Number of underlying components that make up this object. Components are
  /// accumulated by compose operations.
  core.int componentCount;

  /// Content-Disposition of the object data.
  core.String contentDisposition;

  /// Content-Encoding of the object data.
  core.String contentEncoding;

  /// Content-Language of the object data.
  core.String contentLanguage;

  /// Content-Type of the object data. If an object is stored without a
  /// Content-Type, it is served as application/octet-stream.
  core.String contentType;

  /// CRC32c checksum, as described in RFC 4960, Appendix B; encoded using
  /// base64 in big-endian byte order. For more information about using the
  /// CRC32c checksum, see Hashes and ETags: Best Practices.
  core.String crc32c;

  /// Metadata of customer-supplied encryption key, if the object is encrypted
  /// by such a key.
  ObjectCustomerEncryption customerEncryption;

  /// HTTP 1.1 Entity tag for the object.
  core.String etag;

  /// Whether an object is under event-based hold. Event-based hold is a way to
  /// retain objects until an event occurs, which is signified by the hold's
  /// release (i.e. this value is set to false). After being released (set to
  /// false), such objects will be subject to bucket-level retention (if any).
  /// One sample use case of this flag is for banks to hold loan documents for
  /// at least 3 years after loan is paid in full. Here, bucket-level retention
  /// is 3 years and the event is the loan being paid in full. In this example,
  /// these objects will be held intact for any number of years until the event
  /// has occurred (event-based hold on the object is released) and then 3 more
  /// years after that. That means retention duration of the objects begins from
  /// the moment event-based hold transitioned from true to false.
  core.bool eventBasedHold;

  /// The content generation of this object. Used for object versioning.
  core.String generation;

  /// The ID of the object, including the bucket name, object name, and
  /// generation number.
  core.String id;

  /// The kind of item this is. For objects, this is always storage#object.
  core.String kind;

  /// Cloud KMS Key used to encrypt this object, if the object is encrypted by
  /// such a key.
  core.String kmsKeyName;

  /// MD5 hash of the data; encoded using base64. For more information about
  /// using the MD5 hash, see Hashes and ETags: Best Practices.
  core.String md5Hash;

  /// Media download link.
  core.String mediaLink;

  /// User-provided metadata, in key/value pairs.
  core.Map<core.String, core.String> metadata;

  /// The version of the metadata for this object at this generation. Used for
  /// preconditions and for detecting changes in metadata. A metageneration
  /// number is only meaningful in the context of a particular generation of a
  /// particular object.
  core.String metageneration;

  /// The name of the object. Required if not specified by URL parameter.
  core.String name;

  /// The owner of the object. This will always be the uploader of the object.
  ObjectOwner owner;

  /// A server-determined value that specifies the earliest time that the
  /// object's retention period expires. This value is in RFC 3339 format. Note
  /// 1: This field is not provided for objects with an active event-based hold,
  /// since retention expiration is unknown until the hold is removed. Note 2:
  /// This value can be provided even when temporary hold is set (so that the
  /// user can reason about policy without having to first unset the temporary
  /// hold).
  core.DateTime retentionExpirationTime;

  /// The link to this object.
  core.String selfLink;

  /// Content-Length of the data in bytes.
  core.String size;

  /// Storage class of the object.
  core.String storageClass;

  /// Whether an object is under temporary hold. While this flag is set to true,
  /// the object is protected against deletion and overwrites. A common use case
  /// of this flag is regulatory investigations where objects need to be
  /// retained while the investigation is ongoing. Note that unlike event-based
  /// hold, temporary hold does not impact retention expiration time of an
  /// object.
  core.bool temporaryHold;

  /// The creation time of the object in RFC 3339 format.
  core.DateTime timeCreated;

  /// The deletion time of the object in RFC 3339 format. Will be returned if
  /// and only if this version of the object has been deleted.
  core.DateTime timeDeleted;

  /// The time at which the object's storage class was last changed. When the
  /// object is initially created, it will be set to timeCreated.
  core.DateTime timeStorageClassUpdated;

  /// The modification time of the object metadata in RFC 3339 format.
  core.DateTime updated;

  Object();

  Object.fromJson(core.Map _json) {
    if (_json.containsKey("acl")) {
      acl = (_json["acl"] as core.List)
          .map<ObjectAccessControl>(
              (value) => new ObjectAccessControl.fromJson(value))
          .toList();
    }
    if (_json.containsKey("bucket")) {
      bucket = _json["bucket"];
    }
    if (_json.containsKey("cacheControl")) {
      cacheControl = _json["cacheControl"];
    }
    if (_json.containsKey("componentCount")) {
      componentCount = _json["componentCount"];
    }
    if (_json.containsKey("contentDisposition")) {
      contentDisposition = _json["contentDisposition"];
    }
    if (_json.containsKey("contentEncoding")) {
      contentEncoding = _json["contentEncoding"];
    }
    if (_json.containsKey("contentLanguage")) {
      contentLanguage = _json["contentLanguage"];
    }
    if (_json.containsKey("contentType")) {
      contentType = _json["contentType"];
    }
    if (_json.containsKey("crc32c")) {
      crc32c = _json["crc32c"];
    }
    if (_json.containsKey("customerEncryption")) {
      customerEncryption =
          new ObjectCustomerEncryption.fromJson(_json["customerEncryption"]);
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("eventBasedHold")) {
      eventBasedHold = _json["eventBasedHold"];
    }
    if (_json.containsKey("generation")) {
      generation = _json["generation"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("kmsKeyName")) {
      kmsKeyName = _json["kmsKeyName"];
    }
    if (_json.containsKey("md5Hash")) {
      md5Hash = _json["md5Hash"];
    }
    if (_json.containsKey("mediaLink")) {
      mediaLink = _json["mediaLink"];
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("metageneration")) {
      metageneration = _json["metageneration"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("owner")) {
      owner = new ObjectOwner.fromJson(_json["owner"]);
    }
    if (_json.containsKey("retentionExpirationTime")) {
      retentionExpirationTime =
          core.DateTime.parse(_json["retentionExpirationTime"]);
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("size")) {
      size = _json["size"];
    }
    if (_json.containsKey("storageClass")) {
      storageClass = _json["storageClass"];
    }
    if (_json.containsKey("temporaryHold")) {
      temporaryHold = _json["temporaryHold"];
    }
    if (_json.containsKey("timeCreated")) {
      timeCreated = core.DateTime.parse(_json["timeCreated"]);
    }
    if (_json.containsKey("timeDeleted")) {
      timeDeleted = core.DateTime.parse(_json["timeDeleted"]);
    }
    if (_json.containsKey("timeStorageClassUpdated")) {
      timeStorageClassUpdated =
          core.DateTime.parse(_json["timeStorageClassUpdated"]);
    }
    if (_json.containsKey("updated")) {
      updated = core.DateTime.parse(_json["updated"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (acl != null) {
      _json["acl"] = acl.map((value) => (value).toJson()).toList();
    }
    if (bucket != null) {
      _json["bucket"] = bucket;
    }
    if (cacheControl != null) {
      _json["cacheControl"] = cacheControl;
    }
    if (componentCount != null) {
      _json["componentCount"] = componentCount;
    }
    if (contentDisposition != null) {
      _json["contentDisposition"] = contentDisposition;
    }
    if (contentEncoding != null) {
      _json["contentEncoding"] = contentEncoding;
    }
    if (contentLanguage != null) {
      _json["contentLanguage"] = contentLanguage;
    }
    if (contentType != null) {
      _json["contentType"] = contentType;
    }
    if (crc32c != null) {
      _json["crc32c"] = crc32c;
    }
    if (customerEncryption != null) {
      _json["customerEncryption"] = (customerEncryption).toJson();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (eventBasedHold != null) {
      _json["eventBasedHold"] = eventBasedHold;
    }
    if (generation != null) {
      _json["generation"] = generation;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (kmsKeyName != null) {
      _json["kmsKeyName"] = kmsKeyName;
    }
    if (md5Hash != null) {
      _json["md5Hash"] = md5Hash;
    }
    if (mediaLink != null) {
      _json["mediaLink"] = mediaLink;
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (metageneration != null) {
      _json["metageneration"] = metageneration;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (owner != null) {
      _json["owner"] = (owner).toJson();
    }
    if (retentionExpirationTime != null) {
      _json["retentionExpirationTime"] =
          (retentionExpirationTime).toIso8601String();
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (size != null) {
      _json["size"] = size;
    }
    if (storageClass != null) {
      _json["storageClass"] = storageClass;
    }
    if (temporaryHold != null) {
      _json["temporaryHold"] = temporaryHold;
    }
    if (timeCreated != null) {
      _json["timeCreated"] = (timeCreated).toIso8601String();
    }
    if (timeDeleted != null) {
      _json["timeDeleted"] = (timeDeleted).toIso8601String();
    }
    if (timeStorageClassUpdated != null) {
      _json["timeStorageClassUpdated"] =
          (timeStorageClassUpdated).toIso8601String();
    }
    if (updated != null) {
      _json["updated"] = (updated).toIso8601String();
    }
    return _json;
  }
}

/// The project team associated with the entity, if any.
class ObjectAccessControlProjectTeam {
  /// The project number.
  core.String projectNumber;

  /// The team.
  core.String team;

  ObjectAccessControlProjectTeam();

  ObjectAccessControlProjectTeam.fromJson(core.Map _json) {
    if (_json.containsKey("projectNumber")) {
      projectNumber = _json["projectNumber"];
    }
    if (_json.containsKey("team")) {
      team = _json["team"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (projectNumber != null) {
      _json["projectNumber"] = projectNumber;
    }
    if (team != null) {
      _json["team"] = team;
    }
    return _json;
  }
}

/// An access-control entry.
class ObjectAccessControl {
  /// The name of the bucket.
  core.String bucket;

  /// The domain associated with the entity, if any.
  core.String domain;

  /// The email address associated with the entity, if any.
  core.String email;

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
  /// - The group example@googlegroups.com would be
  /// group-example@googlegroups.com.
  /// - To refer to all members of the Google Apps for Business domain
  /// example.com, the entity would be domain-example.com.
  core.String entity;

  /// The ID for the entity, if any.
  core.String entityId;

  /// HTTP 1.1 Entity tag for the access-control entry.
  core.String etag;

  /// The content generation of the object, if applied to an object.
  core.String generation;

  /// The ID of the access-control entry.
  core.String id;

  /// The kind of item this is. For object access control entries, this is
  /// always storage#objectAccessControl.
  core.String kind;

  /// The name of the object, if applied to an object.
  core.String object;

  /// The project team associated with the entity, if any.
  ObjectAccessControlProjectTeam projectTeam;

  /// The access permission for the entity.
  core.String role;

  /// The link to this access-control entry.
  core.String selfLink;

  ObjectAccessControl();

  ObjectAccessControl.fromJson(core.Map _json) {
    if (_json.containsKey("bucket")) {
      bucket = _json["bucket"];
    }
    if (_json.containsKey("domain")) {
      domain = _json["domain"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("entity")) {
      entity = _json["entity"];
    }
    if (_json.containsKey("entityId")) {
      entityId = _json["entityId"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("generation")) {
      generation = _json["generation"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("object")) {
      object = _json["object"];
    }
    if (_json.containsKey("projectTeam")) {
      projectTeam =
          new ObjectAccessControlProjectTeam.fromJson(_json["projectTeam"]);
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bucket != null) {
      _json["bucket"] = bucket;
    }
    if (domain != null) {
      _json["domain"] = domain;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (entity != null) {
      _json["entity"] = entity;
    }
    if (entityId != null) {
      _json["entityId"] = entityId;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (generation != null) {
      _json["generation"] = generation;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (object != null) {
      _json["object"] = object;
    }
    if (projectTeam != null) {
      _json["projectTeam"] = (projectTeam).toJson();
    }
    if (role != null) {
      _json["role"] = role;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/// An access-control list.
class ObjectAccessControls {
  /// The list of items.
  core.List<ObjectAccessControl> items;

  /// The kind of item this is. For lists of object access control entries, this
  /// is always storage#objectAccessControls.
  core.String kind;

  ObjectAccessControls();

  ObjectAccessControls.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<ObjectAccessControl>(
              (value) => new ObjectAccessControl.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// A list of objects.
class Objects {
  /// The list of items.
  core.List<Object> items;

  /// The kind of item this is. For lists of objects, this is always
  /// storage#objects.
  core.String kind;

  /// The continuation token, used to page through large result sets. Provide
  /// this value in a subsequent request to return the next page of results.
  core.String nextPageToken;

  /// The list of prefixes of objects matching-but-not-listed up to and
  /// including the requested delimiter.
  core.List<core.String> prefixes;

  Objects();

  Objects.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Object>((value) => new Object.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("prefixes")) {
      prefixes = (_json["prefixes"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (prefixes != null) {
      _json["prefixes"] = prefixes;
    }
    return _json;
  }
}

class PolicyBindings {
  /// The condition that is associated with this binding. NOTE: an unsatisfied
  /// condition will not allow user access via current binding. Different
  /// bindings, including their conditions, are examined independently.
  Expr condition;

  /// A collection of identifiers for members who may assume the provided role.
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
  core.List<core.String> members;

  /// The role to which members belong. Two types of roles are supported: new
  /// IAM roles, which grant permissions that do not map directly to those
  /// provided by ACLs, and legacy IAM roles, which do map directly to ACL
  /// permissions. All roles are of the format roles/storage.specificRole.
  /// The new IAM roles are:
  /// - roles/storage.admin — Full control of Google Cloud Storage resources.
  /// - roles/storage.objectViewer — Read-Only access to Google Cloud Storage
  /// objects.
  /// - roles/storage.objectCreator — Access to create objects in Google Cloud
  /// Storage.
  /// - roles/storage.objectAdmin — Full control of Google Cloud Storage
  /// objects.   The legacy IAM roles are:
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
  core.String role;

  PolicyBindings();

  PolicyBindings.fromJson(core.Map _json) {
    if (_json.containsKey("condition")) {
      condition = new Expr.fromJson(_json["condition"]);
    }
    if (_json.containsKey("members")) {
      members = (_json["members"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (condition != null) {
      _json["condition"] = (condition).toJson();
    }
    if (members != null) {
      _json["members"] = members;
    }
    if (role != null) {
      _json["role"] = role;
    }
    return _json;
  }
}

/// A bucket/object IAM policy.
class Policy {
  /// An association between a role, which comes with a set of permissions, and
  /// members who may assume that role.
  core.List<PolicyBindings> bindings;

  /// HTTP 1.1  Entity tag for the policy.
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return convert.base64.decode(etag);
  }

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The kind of item this is. For policies, this is always storage#policy.
  /// This field is ignored on input.
  core.String kind;

  /// The ID of the resource to which this policy belongs. Will be of the form
  /// projects/_/buckets/bucket for buckets, and
  /// projects/_/buckets/bucket/objects/object for objects. A specific
  /// generation may be specified by appending #generationNumber to the end of
  /// the object name, e.g. projects/_/buckets/my-bucket/objects/data.txt#17.
  /// The current generation can be denoted with #0. This field is ignored on
  /// input.
  core.String resourceId;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey("bindings")) {
      bindings = (_json["bindings"] as core.List)
          .map<PolicyBindings>((value) => new PolicyBindings.fromJson(value))
          .toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("resourceId")) {
      resourceId = _json["resourceId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bindings != null) {
      _json["bindings"] = bindings.map((value) => (value).toJson()).toList();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (resourceId != null) {
      _json["resourceId"] = resourceId;
    }
    return _json;
  }
}

/// A rewrite response.
class RewriteResponse {
  /// true if the copy is finished; otherwise, false if the copy is in progress.
  /// This property is always present in the response.
  core.bool done;

  /// The kind of item this is.
  core.String kind;

  /// The total size of the object being copied in bytes. This property is
  /// always present in the response.
  core.String objectSize;

  /// A resource containing the metadata for the copied-to object. This property
  /// is present in the response only when copying completes.
  Object resource;

  /// A token to use in subsequent requests to continue copying data. This token
  /// is present in the response only when there is more data to copy.
  core.String rewriteToken;

  /// The total bytes written so far, which can be used to provide a waiting
  /// user with a progress indicator. This property is always present in the
  /// response.
  core.String totalBytesRewritten;

  RewriteResponse();

  RewriteResponse.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("objectSize")) {
      objectSize = _json["objectSize"];
    }
    if (_json.containsKey("resource")) {
      resource = new Object.fromJson(_json["resource"]);
    }
    if (_json.containsKey("rewriteToken")) {
      rewriteToken = _json["rewriteToken"];
    }
    if (_json.containsKey("totalBytesRewritten")) {
      totalBytesRewritten = _json["totalBytesRewritten"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (done != null) {
      _json["done"] = done;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (objectSize != null) {
      _json["objectSize"] = objectSize;
    }
    if (resource != null) {
      _json["resource"] = (resource).toJson();
    }
    if (rewriteToken != null) {
      _json["rewriteToken"] = rewriteToken;
    }
    if (totalBytesRewritten != null) {
      _json["totalBytesRewritten"] = totalBytesRewritten;
    }
    return _json;
  }
}

/// A subscription to receive Google PubSub notifications.
class ServiceAccount {
  /// The ID of the notification.
  core.String emailAddress;

  /// The kind of item this is. For notifications, this is always
  /// storage#notification.
  core.String kind;

  ServiceAccount();

  ServiceAccount.fromJson(core.Map _json) {
    if (_json.containsKey("email_address")) {
      emailAddress = _json["email_address"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (emailAddress != null) {
      _json["email_address"] = emailAddress;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// A storage.(buckets|objects).testIamPermissions response.
class TestIamPermissionsResponse {
  /// The kind of item this is.
  core.String kind;

  /// The permissions held by the caller. Permissions are always of the format
  /// storage.resource.capability, where resource is one of buckets or objects.
  /// The supported permissions are as follows:
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
  core.List<core.String> permissions;

  TestIamPermissionsResponse();

  TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}
