// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.streetviewpublish.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client streetviewpublish/v1';

/// Publishes 360 photos to Google Maps, along with position, orientation, and
/// connectivity metadata. Apps can offer an interface for positioning,
/// connecting, and uploading user-generated Street View images.
class StreetviewpublishApi {
  /// Publish and manage your 360 photos on Google Street View
  static const StreetviewpublishScope =
      "https://www.googleapis.com/auth/streetviewpublish";

  final commons.ApiRequester _requester;

  PhotoResourceApi get photo => new PhotoResourceApi(_requester);
  PhotosResourceApi get photos => new PhotosResourceApi(_requester);

  StreetviewpublishApi(http.Client client,
      {core.String rootUrl = "https://streetviewpublish.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class PhotoResourceApi {
  final commons.ApiRequester _requester;

  PhotoResourceApi(commons.ApiRequester client) : _requester = client;

  /// After the client finishes uploading the photo with the returned
  /// UploadRef,
  /// CreatePhoto
  /// publishes the uploaded Photo to
  /// Street View on Google Maps.
  ///
  /// Currently, the only way to set heading, pitch, and roll in CreatePhoto is
  /// through the [Photo Sphere XMP
  /// metadata](https://developers.google.com/streetview/spherical-metadata) in
  /// the photo bytes. CreatePhoto ignores the  `pose.heading`, `pose.pitch`,
  /// `pose.roll`, `pose.altitude`, and `pose.level` fields in Pose.
  ///
  /// This method returns the following error codes:
  ///
  /// * google.rpc.Code.INVALID_ARGUMENT if the request is malformed or if
  /// the uploaded photo is not a 360 photo.
  /// * google.rpc.Code.NOT_FOUND if the upload reference does not exist.
  /// * google.rpc.Code.RESOURCE_EXHAUSTED if the account has reached the
  /// storage limit.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Photo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Photo> create(Photo request, {core.String $fields}) {
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

    _url = 'v1/photo';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Photo.fromJson(data));
  }

  /// Deletes a Photo and its metadata.
  ///
  /// This method returns the following error codes:
  ///
  /// * google.rpc.Code.PERMISSION_DENIED if the requesting user did not
  /// create the requested photo.
  /// * google.rpc.Code.NOT_FOUND if the photo ID does not exist.
  ///
  /// Request parameters:
  ///
  /// [photoId] - Required. ID of the Photo.
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
  async.Future<Empty> delete(core.String photoId, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (photoId == null) {
      throw new core.ArgumentError("Parameter photoId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/photo/' + commons.Escaper.ecapeVariable('$photoId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets the metadata of the specified
  /// Photo.
  ///
  /// This method returns the following error codes:
  ///
  /// * google.rpc.Code.PERMISSION_DENIED if the requesting user did not
  /// create the requested Photo.
  /// * google.rpc.Code.NOT_FOUND if the requested
  /// Photo does not exist.
  /// * google.rpc.Code.UNAVAILABLE if the requested
  /// Photo is still being indexed.
  ///
  /// Request parameters:
  ///
  /// [photoId] - Required. ID of the Photo.
  ///
  /// [view] - Specifies if a download URL for the photo bytes should be
  /// returned in the
  /// Photo response.
  /// Possible string values are:
  /// - "BASIC" : A BASIC.
  /// - "INCLUDE_DOWNLOAD_URL" : A INCLUDE_DOWNLOAD_URL.
  ///
  /// [languageCode] - The BCP-47 language code, such as "en-US" or "sr-Latn".
  /// For more
  /// information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  /// If language_code is unspecified, the user's language preference for Google
  /// services is used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Photo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Photo> get(core.String photoId,
      {core.String view, core.String languageCode, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (photoId == null) {
      throw new core.ArgumentError("Parameter photoId is required.");
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }
    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/photo/' + commons.Escaper.ecapeVariable('$photoId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Photo.fromJson(data));
  }

  /// Creates an upload session to start uploading photo bytes.  The method uses
  /// the upload URL of the returned
  /// UploadRef to upload the bytes for
  /// the Photo.
  ///
  /// In addition to the photo requirements shown in
  /// https://support.google.com/maps/answer/7012050?hl=en&ref_topic=6275604,
  /// the photo must meet the following requirements:
  ///
  /// * Photo Sphere XMP metadata must be included in the photo medadata. See
  /// https://developers.google.com/streetview/spherical-metadata for the
  /// required fields.
  /// * The pixel size of the photo must meet the size requirements listed in
  /// https://support.google.com/maps/answer/7012050?hl=en&ref_topic=6275604,
  /// and
  /// the photo must be a full 360 horizontally.
  ///
  /// After the upload completes, the method uses
  /// UploadRef with
  /// CreatePhoto
  /// to create the Photo object entry.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UploadRef].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UploadRef> startUpload(Empty request, {core.String $fields}) {
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

    _url = 'v1/photo:startUpload';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UploadRef.fromJson(data));
  }

  /// Updates the metadata of a Photo, such
  /// as pose, place association, connections, etc. Changing the pixels of a
  /// photo is not supported.
  ///
  /// Only the fields specified in the
  /// updateMask
  /// field are used. If `updateMask` is not present, the update applies to all
  /// fields.
  ///
  /// This method returns the following error codes:
  ///
  /// * google.rpc.Code.PERMISSION_DENIED if the requesting user did not
  /// create the requested photo.
  /// * google.rpc.Code.INVALID_ARGUMENT if the request is malformed.
  /// * google.rpc.Code.NOT_FOUND if the requested photo does not exist.
  /// * google.rpc.Code.UNAVAILABLE if the requested
  /// Photo is still being indexed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [id] - Required. A unique identifier for a photo.
  ///
  /// [updateMask] - Mask that identifies fields on the photo metadata to
  /// update.
  /// If not present, the old Photo
  /// metadata is entirely replaced with the
  /// new Photo metadata in this request.
  /// The update fails if invalid fields are specified. Multiple fields can be
  /// specified in a comma-delimited list.
  ///
  /// The following fields are valid:
  ///
  /// * `pose.heading`
  /// * `pose.latLngPair`
  /// * `pose.pitch`
  /// * `pose.roll`
  /// * `pose.level`
  /// * `pose.altitude`
  /// * `connections`
  /// * `places`
  ///
  ///
  /// <aside class="note"><b>Note:</b> When
  /// updateMask
  /// contains repeated fields, the entire set of repeated values get replaced
  /// with the new contents. For example, if
  /// updateMask
  /// contains `connections` and `UpdatePhotoRequest.photo.connections` is
  /// empty,
  /// all connections are removed.</aside>
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Photo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Photo> update(Photo request, core.String id,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/photo/' + commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Photo.fromJson(data));
  }
}

class PhotosResourceApi {
  final commons.ApiRequester _requester;

  PhotosResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a list of Photos and their
  /// metadata.
  ///
  /// Note that if
  /// BatchDeletePhotos
  /// fails, either critical fields are missing or there is an authentication
  /// error. Even if
  /// BatchDeletePhotos
  /// succeeds, individual photos in the batch may have failures.
  /// These failures are specified in each
  /// PhotoResponse.status
  /// in
  /// BatchDeletePhotosResponse.results.
  /// See
  /// DeletePhoto
  /// for specific failures that can occur per photo.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchDeletePhotosResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchDeletePhotosResponse> batchDelete(
      BatchDeletePhotosRequest request,
      {core.String $fields}) {
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

    _url = 'v1/photos:batchDelete';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new BatchDeletePhotosResponse.fromJson(data));
  }

  /// Gets the metadata of the specified
  /// Photo batch.
  ///
  /// Note that if
  /// BatchGetPhotos
  /// fails, either critical fields are missing or there is an authentication
  /// error. Even if
  /// BatchGetPhotos
  /// succeeds, individual photos in the batch may have failures.
  /// These failures are specified in each
  /// PhotoResponse.status
  /// in
  /// BatchGetPhotosResponse.results.
  /// See
  /// GetPhoto
  /// for specific failures that can occur per photo.
  ///
  /// Request parameters:
  ///
  /// [view] - Specifies if a download URL for the photo bytes should be
  /// returned in the
  /// Photo response.
  /// Possible string values are:
  /// - "BASIC" : A BASIC.
  /// - "INCLUDE_DOWNLOAD_URL" : A INCLUDE_DOWNLOAD_URL.
  ///
  /// [languageCode] - The BCP-47 language code, such as "en-US" or "sr-Latn".
  /// For more
  /// information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  /// If language_code is unspecified, the user's language preference for Google
  /// services is used.
  ///
  /// [photoIds] - Required. IDs of the Photos. For HTTP
  /// GET requests, the URL query parameter should be
  /// `photoIds=<id1>&photoIds=<id2>&...`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchGetPhotosResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchGetPhotosResponse> batchGet(
      {core.String view,
      core.String languageCode,
      core.List<core.String> photoIds,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (view != null) {
      _queryParams["view"] = [view];
    }
    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
    }
    if (photoIds != null) {
      _queryParams["photoIds"] = photoIds;
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/photos:batchGet';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new BatchGetPhotosResponse.fromJson(data));
  }

  /// Updates the metadata of Photos, such
  /// as pose, place association, connections, etc. Changing the pixels of
  /// photos
  /// is not supported.
  ///
  /// Note that if
  /// BatchUpdatePhotos
  /// fails, either critical fields are missing or there is an authentication
  /// error. Even if
  /// BatchUpdatePhotos
  /// succeeds, individual photos in the batch may have failures.
  /// These failures are specified in each
  /// PhotoResponse.status
  /// in
  /// BatchUpdatePhotosResponse.results.
  /// See
  /// UpdatePhoto
  /// for specific failures that can occur per photo.
  ///
  /// Only the fields specified in
  /// updateMask
  /// field are used. If `updateMask` is not present, the update applies to all
  /// fields.
  ///
  /// The number of
  /// UpdatePhotoRequest
  /// messages in a
  /// BatchUpdatePhotosRequest
  /// must not exceed 20.
  ///
  /// <aside class="note"><b>Note:</b> To update
  /// Pose.altitude,
  /// Pose.latLngPair has to be
  /// filled as well. Otherwise, the request will fail.</aside>
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUpdatePhotosResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUpdatePhotosResponse> batchUpdate(
      BatchUpdatePhotosRequest request,
      {core.String $fields}) {
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

    _url = 'v1/photos:batchUpdate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new BatchUpdatePhotosResponse.fromJson(data));
  }

  /// Lists all the Photos that belong to
  /// the user.
  ///
  /// <aside class="note"><b>Note:</b> Recently created photos that are still
  /// being indexed are not returned in the response.</aside>
  ///
  /// Request parameters:
  ///
  /// [view] - Specifies if a download URL for the photos bytes should be
  /// returned in the
  /// Photos response.
  /// Possible string values are:
  /// - "BASIC" : A BASIC.
  /// - "INCLUDE_DOWNLOAD_URL" : A INCLUDE_DOWNLOAD_URL.
  ///
  /// [filter] - The filter expression. For example:
  /// `placeId=ChIJj61dQgK6j4AR4GeTYWZsKWw`.
  ///
  /// The only filter supported at the moment is `placeId`.
  ///
  /// [languageCode] - The BCP-47 language code, such as "en-US" or "sr-Latn".
  /// For more
  /// information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  /// If language_code is unspecified, the user's language preference for Google
  /// services is used.
  ///
  /// [pageToken] - The
  /// nextPageToken
  /// value returned from a previous
  /// ListPhotos
  /// request, if any.
  ///
  /// [pageSize] - The maximum number of photos to return.
  /// `pageSize` must be non-negative. If `pageSize` is zero or is not provided,
  /// the default page size of 100 is used.
  /// The number of photos returned in the response may be less than `pageSize`
  /// if the number of photos that belong to the user is less than `pageSize`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPhotosResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPhotosResponse> list(
      {core.String view,
      core.String filter,
      core.String languageCode,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (view != null) {
      _queryParams["view"] = [view];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/photos';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListPhotosResponse.fromJson(data));
  }
}

/// Request to delete multiple Photos.
class BatchDeletePhotosRequest {
  /// Required. IDs of the Photos. HTTP
  /// GET requests require the following syntax for the URL query parameter:
  /// `photoIds=<id1>&photoIds=<id2>&...`.
  core.List<core.String> photoIds;

  BatchDeletePhotosRequest();

  BatchDeletePhotosRequest.fromJson(core.Map _json) {
    if (_json.containsKey("photoIds")) {
      photoIds = (_json["photoIds"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (photoIds != null) {
      _json["photoIds"] = photoIds;
    }
    return _json;
  }
}

/// Response to batch delete of one or more
/// Photos.
class BatchDeletePhotosResponse {
  /// The status for the operation to delete a single
  /// Photo in the batch request.
  core.List<Status> status;

  BatchDeletePhotosResponse();

  BatchDeletePhotosResponse.fromJson(core.Map _json) {
    if (_json.containsKey("status")) {
      status = (_json["status"] as core.List)
          .map<Status>((value) => new Status.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (status != null) {
      _json["status"] = status.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response to batch get of Photos.
class BatchGetPhotosResponse {
  /// List of results for each individual
  /// Photo requested, in the same order as
  /// the requests in
  /// BatchGetPhotos.
  core.List<PhotoResponse> results;

  BatchGetPhotosResponse();

  BatchGetPhotosResponse.fromJson(core.Map _json) {
    if (_json.containsKey("results")) {
      results = (_json["results"] as core.List)
          .map<PhotoResponse>((value) => new PhotoResponse.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (results != null) {
      _json["results"] = results.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Request to update the metadata of photos.
/// Updating the pixels of photos is not supported.
class BatchUpdatePhotosRequest {
  /// Required. List of
  /// UpdatePhotoRequests.
  core.List<UpdatePhotoRequest> updatePhotoRequests;

  BatchUpdatePhotosRequest();

  BatchUpdatePhotosRequest.fromJson(core.Map _json) {
    if (_json.containsKey("updatePhotoRequests")) {
      updatePhotoRequests = (_json["updatePhotoRequests"] as core.List)
          .map<UpdatePhotoRequest>(
              (value) => new UpdatePhotoRequest.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (updatePhotoRequests != null) {
      _json["updatePhotoRequests"] =
          updatePhotoRequests.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response to batch update of metadata of one or more
/// Photos.
class BatchUpdatePhotosResponse {
  /// List of results for each individual
  /// Photo updated, in the same order as
  /// the request.
  core.List<PhotoResponse> results;

  BatchUpdatePhotosResponse();

  BatchUpdatePhotosResponse.fromJson(core.Map _json) {
    if (_json.containsKey("results")) {
      results = (_json["results"] as core.List)
          .map<PhotoResponse>((value) => new PhotoResponse.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (results != null) {
      _json["results"] = results.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A connection is the link from a source photo to a destination photo.
class Connection {
  /// Required. The destination of the connection from the containing photo to
  /// another photo.
  PhotoId target;

  Connection();

  Connection.fromJson(core.Map _json) {
    if (_json.containsKey("target")) {
      target = new PhotoId.fromJson(_json["target"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (target != null) {
      _json["target"] = (target).toJson();
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
///
///     service Foo {
///       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
///     }
///
/// The JSON representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// An object representing a latitude/longitude pair. This is expressed as a
/// pair
/// of doubles representing degrees latitude and degrees longitude. Unless
/// specified otherwise, this must conform to the
/// <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
/// standard</a>. Values must be within normalized ranges.
class LatLng {
  /// The latitude in degrees. It must be in the range [-90.0, +90.0].
  core.double latitude;

  /// The longitude in degrees. It must be in the range [-180.0, +180.0].
  core.double longitude;

  LatLng();

  LatLng.fromJson(core.Map _json) {
    if (_json.containsKey("latitude")) {
      latitude = _json["latitude"].toDouble();
    }
    if (_json.containsKey("longitude")) {
      longitude = _json["longitude"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (latitude != null) {
      _json["latitude"] = latitude;
    }
    if (longitude != null) {
      _json["longitude"] = longitude;
    }
    return _json;
  }
}

/// Level information containing level number and its corresponding name.
class Level {
  /// Required. A name assigned to this Level, restricted to 3 characters.
  /// Consider how the elevator buttons would be labeled for this level if there
  /// was an elevator.
  core.String name;

  /// Floor number, used for ordering. 0 indicates the ground level, 1 indicates
  /// the first level above ground level, -1 indicates the first level under
  /// ground level. Non-integer values are OK.
  core.double number;

  Level();

  Level.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("number")) {
      number = _json["number"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (number != null) {
      _json["number"] = number;
    }
    return _json;
  }
}

/// Response to list all photos that belong to a user.
class ListPhotosResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  /// List of photos. The
  /// pageSize field
  /// in the request determines the number of items returned.
  core.List<Photo> photos;

  ListPhotosResponse();

  ListPhotosResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("photos")) {
      photos = (_json["photos"] as core.List)
          .map<Photo>((value) => new Photo.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (photos != null) {
      _json["photos"] = photos.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation.  It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata.  Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that
  /// originally returns it. If you use the default HTTP mapping, the
  /// `name` should be a resource name ending with `operations/{unique_id}`.
  core.String name;

  /// The normal response of the operation in case of success.  If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`.  If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource.  For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx`
  /// is the original method name.  For example, if the original method name
  /// is `TakeSnapshot()`, the inferred response type is
  /// `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response =
          (_json["response"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (done != null) {
      _json["done"] = done;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (response != null) {
      _json["response"] = response;
    }
    return _json;
  }
}

/// Photo is used to store 360 photos along with photo metadata.
class Photo {
  /// Absolute time when the photo was captured.
  /// When the photo has no exif timestamp, this is used to set a timestamp in
  /// the photo metadata.
  core.String captureTime;

  /// Connections to other photos. A connection represents the link from this
  /// photo to another photo.
  core.List<Connection> connections;

  /// Output only. The download URL for the photo bytes. This field is set only
  /// when
  /// GetPhotoRequest.view
  /// is set to
  /// PhotoView.INCLUDE_DOWNLOAD_URL.
  core.String downloadUrl;

  /// Output only. Status in Google Maps, whether this photo was published or
  /// rejected.
  /// Possible string values are:
  /// - "UNSPECIFIED_MAPS_PUBLISH_STATUS" : The status of the photo is unknown.
  /// - "PUBLISHED" : The photo is published to the public through Google Maps.
  /// - "REJECTED_UNKNOWN" : The photo has been rejected for an unknown reason.
  core.String mapsPublishStatus;

  /// Required when updating a photo. Output only when creating a photo.
  /// Identifier for the photo, which is unique among all photos in
  /// Google.
  PhotoId photoId;

  /// Places where this photo belongs.
  core.List<Place> places;

  /// Pose of the photo.
  Pose pose;

  /// Output only. The share link for the photo.
  core.String shareLink;

  /// Output only. The thumbnail URL for showing a preview of the given photo.
  core.String thumbnailUrl;

  /// Output only. Status of rights transfer on this photo.
  /// Possible string values are:
  /// - "TRANSFER_STATUS_UNKNOWN" : The status of this transfer is unspecified.
  /// - "NEVER_TRANSFERRED" : This photo has never been in a transfer.
  /// - "PENDING" : This photo transfer has been initiated, but the receiver has
  /// not yet
  /// responded.
  /// - "COMPLETED" : The photo transfer has been completed, and this photo has
  /// been
  /// transferred to the recipient.
  /// - "REJECTED" : The recipient rejected this photo transfer.
  /// - "EXPIRED" : The photo transfer expired before the recipient took any
  /// action.
  /// - "CANCELLED" : The sender cancelled this photo transfer.
  /// - "RECEIVED_VIA_TRANSFER" : The recipient owns this photo due to a rights
  /// transfer.
  core.String transferStatus;

  /// Required when creating a photo. Input only. The resource URL where the
  /// photo bytes are uploaded to.
  UploadRef uploadReference;

  /// Output only. View count of the photo.
  core.String viewCount;

  Photo();

  Photo.fromJson(core.Map _json) {
    if (_json.containsKey("captureTime")) {
      captureTime = _json["captureTime"];
    }
    if (_json.containsKey("connections")) {
      connections = (_json["connections"] as core.List)
          .map<Connection>((value) => new Connection.fromJson(value))
          .toList();
    }
    if (_json.containsKey("downloadUrl")) {
      downloadUrl = _json["downloadUrl"];
    }
    if (_json.containsKey("mapsPublishStatus")) {
      mapsPublishStatus = _json["mapsPublishStatus"];
    }
    if (_json.containsKey("photoId")) {
      photoId = new PhotoId.fromJson(_json["photoId"]);
    }
    if (_json.containsKey("places")) {
      places = (_json["places"] as core.List)
          .map<Place>((value) => new Place.fromJson(value))
          .toList();
    }
    if (_json.containsKey("pose")) {
      pose = new Pose.fromJson(_json["pose"]);
    }
    if (_json.containsKey("shareLink")) {
      shareLink = _json["shareLink"];
    }
    if (_json.containsKey("thumbnailUrl")) {
      thumbnailUrl = _json["thumbnailUrl"];
    }
    if (_json.containsKey("transferStatus")) {
      transferStatus = _json["transferStatus"];
    }
    if (_json.containsKey("uploadReference")) {
      uploadReference = new UploadRef.fromJson(_json["uploadReference"]);
    }
    if (_json.containsKey("viewCount")) {
      viewCount = _json["viewCount"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (captureTime != null) {
      _json["captureTime"] = captureTime;
    }
    if (connections != null) {
      _json["connections"] =
          connections.map((value) => (value).toJson()).toList();
    }
    if (downloadUrl != null) {
      _json["downloadUrl"] = downloadUrl;
    }
    if (mapsPublishStatus != null) {
      _json["mapsPublishStatus"] = mapsPublishStatus;
    }
    if (photoId != null) {
      _json["photoId"] = (photoId).toJson();
    }
    if (places != null) {
      _json["places"] = places.map((value) => (value).toJson()).toList();
    }
    if (pose != null) {
      _json["pose"] = (pose).toJson();
    }
    if (shareLink != null) {
      _json["shareLink"] = shareLink;
    }
    if (thumbnailUrl != null) {
      _json["thumbnailUrl"] = thumbnailUrl;
    }
    if (transferStatus != null) {
      _json["transferStatus"] = transferStatus;
    }
    if (uploadReference != null) {
      _json["uploadReference"] = (uploadReference).toJson();
    }
    if (viewCount != null) {
      _json["viewCount"] = viewCount;
    }
    return _json;
  }
}

/// Identifier for a Photo.
class PhotoId {
  /// Required. A unique identifier for a photo.
  core.String id;

  PhotoId();

  PhotoId.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (id != null) {
      _json["id"] = id;
    }
    return _json;
  }
}

/// Response payload for a single
/// Photo
/// in batch operations including
/// BatchGetPhotos
/// and
/// BatchUpdatePhotos.
class PhotoResponse {
  /// The Photo resource, if the request
  /// was successful.
  Photo photo;

  /// The status for the operation to get or update a single photo in the batch
  /// request.
  Status status;

  PhotoResponse();

  PhotoResponse.fromJson(core.Map _json) {
    if (_json.containsKey("photo")) {
      photo = new Photo.fromJson(_json["photo"]);
    }
    if (_json.containsKey("status")) {
      status = new Status.fromJson(_json["status"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (photo != null) {
      _json["photo"] = (photo).toJson();
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    return _json;
  }
}

/// Place metadata for an entity.
class Place {
  /// Output-only. The language_code that the name is localized with. This
  /// should
  /// be the language_code specified in the request, but may be a fallback.
  core.String languageCode;

  /// Output-only. The name of the place, localized to the language_code.
  core.String name;

  /// Place identifier, as described in
  /// https://developers.google.com/places/place-id.
  core.String placeId;

  Place();

  Place.fromJson(core.Map _json) {
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("placeId")) {
      placeId = _json["placeId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (placeId != null) {
      _json["placeId"] = placeId;
    }
    return _json;
  }
}

/// Raw pose measurement for an entity.
class Pose {
  /// The estimated horizontal accuracy of this pose in meters with 68%
  /// confidence (one standard deviation). For example, on Android, this value
  /// is
  /// available from this method:
  /// https://developer.android.com/reference/android/location/Location#getAccuracy().
  /// Other platforms have different methods of obtaining similar accuracy
  /// estimations.
  core.double accuracyMeters;

  /// Altitude of the pose in meters above WGS84 ellipsoid.
  /// NaN indicates an unmeasured quantity.
  core.double altitude;

  /// Compass heading, measured at the center of the photo in degrees clockwise
  /// from North. Value must be >=0 and <360.
  /// NaN indicates an unmeasured quantity.
  core.double heading;

  /// Latitude and longitude pair of the pose, as explained here:
  /// https://cloud.google.com/datastore/docs/reference/rest/Shared.Types/LatLng
  /// When creating a Photo, if the
  /// latitude and longitude pair are not provided, the geolocation from the
  /// exif header is used. A latitude and longitude pair not provided in the
  /// photo or exif header causes the photo process to fail.
  LatLng latLngPair;

  /// Level (the floor in a building) used to configure vertical navigation.
  Level level;

  /// Pitch, measured at the center of the photo in degrees. Value must be >=-90
  /// and <= 90. A value of -90 means looking directly down, and a value of 90
  /// means looking directly up.
  /// NaN indicates an unmeasured quantity.
  core.double pitch;

  /// Roll, measured in degrees. Value must be >= 0 and <360. A value of 0
  /// means level with the horizon.
  /// NaN indicates an unmeasured quantity.
  core.double roll;

  Pose();

  Pose.fromJson(core.Map _json) {
    if (_json.containsKey("accuracyMeters")) {
      accuracyMeters = _json["accuracyMeters"].toDouble();
    }
    if (_json.containsKey("altitude")) {
      altitude = _json["altitude"].toDouble();
    }
    if (_json.containsKey("heading")) {
      heading = _json["heading"].toDouble();
    }
    if (_json.containsKey("latLngPair")) {
      latLngPair = new LatLng.fromJson(_json["latLngPair"]);
    }
    if (_json.containsKey("level")) {
      level = new Level.fromJson(_json["level"]);
    }
    if (_json.containsKey("pitch")) {
      pitch = _json["pitch"].toDouble();
    }
    if (_json.containsKey("roll")) {
      roll = _json["roll"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accuracyMeters != null) {
      _json["accuracyMeters"] = accuracyMeters;
    }
    if (altitude != null) {
      _json["altitude"] = altitude;
    }
    if (heading != null) {
      _json["heading"] = heading;
    }
    if (latLngPair != null) {
      _json["latLngPair"] = (latLngPair).toJson();
    }
    if (level != null) {
      _json["level"] = (level).toJson();
    }
    if (pitch != null) {
      _json["pitch"] = pitch;
    }
    if (roll != null) {
      _json["roll"] = roll;
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details.
///
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details.  There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/// Request to update the metadata of a
/// Photo. Updating the pixels of a photo
/// is not supported.
class UpdatePhotoRequest {
  /// Required. Photo object containing the
  /// new metadata.
  Photo photo;

  /// Mask that identifies fields on the photo metadata to update.
  /// If not present, the old Photo
  /// metadata is entirely replaced with the
  /// new Photo metadata in this request.
  /// The update fails if invalid fields are specified. Multiple fields can be
  /// specified in a comma-delimited list.
  ///
  /// The following fields are valid:
  ///
  /// * `pose.heading`
  /// * `pose.latLngPair`
  /// * `pose.pitch`
  /// * `pose.roll`
  /// * `pose.level`
  /// * `pose.altitude`
  /// * `connections`
  /// * `places`
  ///
  ///
  /// <aside class="note"><b>Note:</b> When
  /// updateMask
  /// contains repeated fields, the entire set of repeated values get replaced
  /// with the new contents. For example, if
  /// updateMask
  /// contains `connections` and `UpdatePhotoRequest.photo.connections` is
  /// empty,
  /// all connections are removed.</aside>
  core.String updateMask;

  UpdatePhotoRequest();

  UpdatePhotoRequest.fromJson(core.Map _json) {
    if (_json.containsKey("photo")) {
      photo = new Photo.fromJson(_json["photo"]);
    }
    if (_json.containsKey("updateMask")) {
      updateMask = _json["updateMask"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (photo != null) {
      _json["photo"] = (photo).toJson();
    }
    if (updateMask != null) {
      _json["updateMask"] = updateMask;
    }
    return _json;
  }
}

/// Upload reference for media files.
class UploadRef {
  /// Required. An upload reference should be unique for each user. It follows
  /// the form:
  /// "https://streetviewpublish.googleapis.com/media/user/{account_id}/photo/{upload_reference}"
  core.String uploadUrl;

  UploadRef();

  UploadRef.fromJson(core.Map _json) {
    if (_json.containsKey("uploadUrl")) {
      uploadUrl = _json["uploadUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uploadUrl != null) {
      _json["uploadUrl"] = uploadUrl;
    }
    return _json;
  }
}
