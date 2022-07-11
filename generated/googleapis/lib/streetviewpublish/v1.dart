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

/// Street View Publish API - v1
///
/// Publishes 360 photos to Google Maps, along with position, orientation, and
/// connectivity metadata. Apps can offer an interface for positioning,
/// connecting, and uploading user-generated Street View images.
///
/// For more information, see
/// <https://developers.google.com/streetview/publish/>
///
/// Create an instance of [StreetViewPublishApi] to access these resources:
///
/// - [PhotoResource]
/// - [PhotoSequenceResource]
/// - [PhotoSequencesResource]
/// - [PhotosResource]
library streetviewpublish.v1;

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

/// Publishes 360 photos to Google Maps, along with position, orientation, and
/// connectivity metadata.
///
/// Apps can offer an interface for positioning, connecting, and uploading
/// user-generated Street View images.
class StreetViewPublishApi {
  /// Publish and manage your 360 photos on Google Street View
  static const streetviewpublishScope =
      'https://www.googleapis.com/auth/streetviewpublish';

  final commons.ApiRequester _requester;

  PhotoResource get photo => PhotoResource(_requester);
  PhotoSequenceResource get photoSequence => PhotoSequenceResource(_requester);
  PhotoSequencesResource get photoSequences =>
      PhotoSequencesResource(_requester);
  PhotosResource get photos => PhotosResource(_requester);

  StreetViewPublishApi(http.Client client,
      {core.String rootUrl = 'https://streetviewpublish.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class PhotoResource {
  final commons.ApiRequester _requester;

  PhotoResource(commons.ApiRequester client) : _requester = client;

  /// After the client finishes uploading the photo with the returned UploadRef,
  /// CreatePhoto publishes the uploaded Photo to Street View on Google Maps.
  ///
  /// Currently, the only way to set heading, pitch, and roll in CreatePhoto is
  /// through the
  /// [Photo Sphere XMP metadata](https://developers.google.com/streetview/spherical-metadata)
  /// in the photo bytes. CreatePhoto ignores the `pose.heading`, `pose.pitch`,
  /// `pose.roll`, `pose.altitude`, and `pose.level` fields in Pose. This method
  /// returns the following error codes: * google.rpc.Code.INVALID_ARGUMENT if
  /// the request is malformed or if the uploaded photo is not a 360 photo. *
  /// google.rpc.Code.NOT_FOUND if the upload reference does not exist. *
  /// google.rpc.Code.RESOURCE_EXHAUSTED if the account has reached the storage
  /// limit.
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
  async.Future<Photo> create(
    Photo request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/photo';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Photo.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Photo and its metadata.
  ///
  /// This method returns the following error codes: *
  /// google.rpc.Code.PERMISSION_DENIED if the requesting user did not create
  /// the requested photo. * google.rpc.Code.NOT_FOUND if the photo ID does not
  /// exist.
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
  async.Future<Empty> delete(
    core.String photoId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/photo/' + commons.escapeVariable('$photoId');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the metadata of the specified Photo.
  ///
  /// This method returns the following error codes: *
  /// google.rpc.Code.PERMISSION_DENIED if the requesting user did not create
  /// the requested Photo. * google.rpc.Code.NOT_FOUND if the requested Photo
  /// does not exist. * google.rpc.Code.UNAVAILABLE if the requested Photo is
  /// still being indexed.
  ///
  /// Request parameters:
  ///
  /// [photoId] - Required. ID of the Photo.
  ///
  /// [languageCode] - The BCP-47 language code, such as "en-US" or "sr-Latn".
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier. If
  /// language_code is unspecified, the user's language preference for Google
  /// services is used.
  ///
  /// [view] - Required. Specifies if a download URL for the photo bytes should
  /// be returned in the Photo response.
  /// Possible string values are:
  /// - "BASIC" : Server responses do not include the download URL for the photo
  /// bytes. The default value.
  /// - "INCLUDE_DOWNLOAD_URL" : Server responses include the download URL for
  /// the photo bytes.
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
  async.Future<Photo> get(
    core.String photoId, {
    core.String? languageCode,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/photo/' + commons.escapeVariable('$photoId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Photo.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates an upload session to start uploading photo bytes.
  ///
  /// The method uses the upload URL of the returned UploadRef to upload the
  /// bytes for the Photo. In addition to the photo requirements shown in
  /// https://support.google.com/maps/answer/7012050?ref_topic=6275604, the
  /// photo must meet the following requirements: * Photo Sphere XMP metadata
  /// must be included in the photo metadata. See
  /// https://developers.google.com/streetview/spherical-metadata for the
  /// required fields. * The pixel size of the photo must meet the size
  /// requirements listed in
  /// https://support.google.com/maps/answer/7012050?ref_topic=6275604, and the
  /// photo must be a full 360 horizontally. After the upload completes, the
  /// method uses UploadRef with CreatePhoto to create the Photo object entry.
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
  async.Future<UploadRef> startUpload(
    Empty request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/photo:startUpload';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return UploadRef.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the metadata of a Photo, such as pose, place association,
  /// connections, etc.
  ///
  /// Changing the pixels of a photo is not supported. Only the fields specified
  /// in the updateMask field are used. If `updateMask` is not present, the
  /// update applies to all fields. This method returns the following error
  /// codes: * google.rpc.Code.PERMISSION_DENIED if the requesting user did not
  /// create the requested photo. * google.rpc.Code.INVALID_ARGUMENT if the
  /// request is malformed. * google.rpc.Code.NOT_FOUND if the requested photo
  /// does not exist. * google.rpc.Code.UNAVAILABLE if the requested Photo is
  /// still being indexed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [id] - A unique identifier for a photo.
  ///
  /// [updateMask] - Required. Mask that identifies fields on the photo metadata
  /// to update. If not present, the old Photo metadata is entirely replaced
  /// with the new Photo metadata in this request. The update fails if invalid
  /// fields are specified. Multiple fields can be specified in a
  /// comma-delimited list. The following fields are valid: * `pose.heading` *
  /// `pose.latLngPair` * `pose.pitch` * `pose.roll` * `pose.level` *
  /// `pose.altitude` * `connections` * `places` \> Note: When updateMask
  /// contains repeated fields, the entire set of repeated values get replaced
  /// with the new contents. For example, if updateMask contains `connections`
  /// and `UpdatePhotoRequest.photo.connections` is empty, all connections are
  /// removed.
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
  async.Future<Photo> update(
    Photo request,
    core.String id, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/photo/' + commons.escapeVariable('$id');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Photo.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class PhotoSequenceResource {
  final commons.ApiRequester _requester;

  PhotoSequenceResource(commons.ApiRequester client) : _requester = client;

  /// After the client finishes uploading the PhotoSequence with the returned
  /// UploadRef, CreatePhotoSequence extracts a sequence of 360 photos from a
  /// video or Extensible Device Metadata (XDM, http://www.xdm.org/) to be
  /// published to Street View on Google Maps.
  ///
  /// `CreatePhotoSequence` returns an Operation, with the PhotoSequence Id set
  /// in the `Operation.name` field. This method returns the following error
  /// codes: * google.rpc.Code.INVALID_ARGUMENT if the request is malformed. *
  /// google.rpc.Code.NOT_FOUND if the upload reference does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [inputType] - Required. The input form of PhotoSequence.
  /// Possible string values are:
  /// - "INPUT_TYPE_UNSPECIFIED" : Not specified. Server will return
  /// google.rpc.Code.INVALID_ARGUMENT.
  /// - "VIDEO" : 360 Video.
  /// - "XDM" : Extensible Device Metadata, http://www.xdm.org
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    PhotoSequence request, {
    core.String? inputType,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (inputType != null) 'inputType': [inputType],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/photoSequence';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a PhotoSequence and its metadata.
  ///
  /// This method returns the following error codes: *
  /// google.rpc.Code.PERMISSION_DENIED if the requesting user did not create
  /// the requested photo sequence. * google.rpc.Code.NOT_FOUND if the photo
  /// sequence ID does not exist. * google.rpc.Code.FAILED_PRECONDITION if the
  /// photo sequence ID is not yet finished processing.
  ///
  /// Request parameters:
  ///
  /// [sequenceId] - Required. ID of the PhotoSequence.
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
  async.Future<Empty> delete(
    core.String sequenceId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/photoSequence/' + commons.escapeVariable('$sequenceId');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the metadata of the specified PhotoSequence via the Operation
  /// interface.
  ///
  /// This method returns the following three types of responses: *
  /// `Operation.done` = false, if the processing of PhotoSequence is not
  /// finished yet. * `Operation.done` = true and `Operation.error` is
  /// populated, if there was an error in processing. * `Operation.done` = true
  /// and `Operation.response` is poulated, which contains a PhotoSequence
  /// message. This method returns the following error codes: *
  /// google.rpc.Code.PERMISSION_DENIED if the requesting user did not create
  /// the requested PhotoSequence. * google.rpc.Code.NOT_FOUND if the requested
  /// PhotoSequence does not exist.
  ///
  /// Request parameters:
  ///
  /// [sequenceId] - Required. ID of the photo sequence.
  ///
  /// [filter] - Optional. The filter expression. For example:
  /// `published_status=PUBLISHED`. The filters supported are:
  /// `published_status`. See https://google.aip.dev/160 for more information.
  ///
  /// [view] - Specifies if a download URL for the photo sequence should be
  /// returned in `download_url` of individual photos in the PhotoSequence
  /// response. \> Note: Currently not implemented.
  /// Possible string values are:
  /// - "BASIC" : Server responses do not include the download URL for the photo
  /// bytes. The default value.
  /// - "INCLUDE_DOWNLOAD_URL" : Server responses include the download URL for
  /// the photo bytes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String sequenceId, {
    core.String? filter,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/photoSequence/' + commons.escapeVariable('$sequenceId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates an upload session to start uploading photo sequence data.
  ///
  /// The upload URL of the returned UploadRef is used to upload the data for
  /// the `photoSequence`. After the upload is complete, the UploadRef is used
  /// with CreatePhotoSequence to create the PhotoSequence object entry.
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
  async.Future<UploadRef> startUpload(
    Empty request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/photoSequence:startUpload';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return UploadRef.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class PhotoSequencesResource {
  final commons.ApiRequester _requester;

  PhotoSequencesResource(commons.ApiRequester client) : _requester = client;

  /// Lists all the PhotoSequences that belong to the user, in descending
  /// CreatePhotoSequence timestamp order.
  ///
  /// Request parameters:
  ///
  /// [filter] - Optional. The filter expression. For example:
  /// `imagery_type=SPHERICAL`. The filters supported are: `imagery_type`,
  /// `processing_state`, `min_latitude`, `max_latitude`, `min_longitude`,
  /// `max_longitude`, and `filename_query`. See https://google.aip.dev/160 for
  /// more information. Filename queries should sent as a Phrase in order to
  /// support multple words and special characters by adding escaped quotes. Ex:
  /// filename_query="example of a phrase.mp4"
  ///
  /// [pageSize] - Optional. The maximum number of photo sequences to return.
  /// `pageSize` must be non-negative. If `pageSize` is zero or is not provided,
  /// the default page size of 100 is used. The number of photo sequences
  /// returned in the response may be less than `pageSize` if the number of
  /// matches is less than `pageSize`. This is currently unimplemented but is in
  /// process.
  ///
  /// [pageToken] - Optional. The nextPageToken value returned from a previous
  /// ListPhotoSequences request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPhotoSequencesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPhotoSequencesResponse> list({
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/photoSequences';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListPhotoSequencesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PhotosResource {
  final commons.ApiRequester _requester;

  PhotosResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a list of Photos and their metadata.
  ///
  /// Note that if BatchDeletePhotos fails, either critical fields are missing
  /// or there is an authentication error. Even if BatchDeletePhotos succeeds,
  /// individual photos in the batch may have failures. These failures are
  /// specified in each PhotoResponse.status in
  /// BatchDeletePhotosResponse.results. See DeletePhoto for specific failures
  /// that can occur per photo.
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
    BatchDeletePhotosRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/photos:batchDelete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BatchDeletePhotosResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the metadata of the specified Photo batch.
  ///
  /// Note that if BatchGetPhotos fails, either critical fields are missing or
  /// there is an authentication error. Even if BatchGetPhotos succeeds,
  /// individual photos in the batch may have failures. These failures are
  /// specified in each PhotoResponse.status in BatchGetPhotosResponse.results.
  /// See GetPhoto for specific failures that can occur per photo.
  ///
  /// Request parameters:
  ///
  /// [languageCode] - Optional. The BCP-47 language code, such as "en-US" or
  /// "sr-Latn". For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier. If
  /// language_code is unspecified, the user's language preference for Google
  /// services is used.
  ///
  /// [photoIds] - Required. IDs of the Photos. For HTTP GET requests, the URL
  /// query parameter should be `photoIds=&photoIds=&...`.
  ///
  /// [view] - Required. Specifies if a download URL for the photo bytes should
  /// be returned in the Photo response.
  /// Possible string values are:
  /// - "BASIC" : Server responses do not include the download URL for the photo
  /// bytes. The default value.
  /// - "INCLUDE_DOWNLOAD_URL" : Server responses include the download URL for
  /// the photo bytes.
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
  async.Future<BatchGetPhotosResponse> batchGet({
    core.String? languageCode,
    core.List<core.String>? photoIds,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (photoIds != null) 'photoIds': photoIds,
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/photos:batchGet';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return BatchGetPhotosResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the metadata of Photos, such as pose, place association,
  /// connections, etc.
  ///
  /// Changing the pixels of photos is not supported. Note that if
  /// BatchUpdatePhotos fails, either critical fields are missing or there is an
  /// authentication error. Even if BatchUpdatePhotos succeeds, individual
  /// photos in the batch may have failures. These failures are specified in
  /// each PhotoResponse.status in BatchUpdatePhotosResponse.results. See
  /// UpdatePhoto for specific failures that can occur per photo. Only the
  /// fields specified in updateMask field are used. If `updateMask` is not
  /// present, the update applies to all fields. The number of
  /// UpdatePhotoRequest messages in a BatchUpdatePhotosRequest must not exceed
  /// 20. \> Note: To update Pose.altitude, Pose.latLngPair has to be filled as
  /// well. Otherwise, the request will fail.
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
    BatchUpdatePhotosRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/photos:batchUpdate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BatchUpdatePhotosResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the Photos that belong to the user.
  ///
  /// \> Note: Recently created photos that are still being indexed are not
  /// returned in the response.
  ///
  /// Request parameters:
  ///
  /// [filter] - Optional. The filter expression. For example:
  /// `placeId=ChIJj61dQgK6j4AR4GeTYWZsKWw`. The filters supported are:
  /// `placeId`, `min_latitude`, `max_latitude`, `min_longitude`, and
  /// `max_longitude`. See https://google.aip.dev/160 for more information.
  ///
  /// [languageCode] - Optional. The BCP-47 language code, such as "en-US" or
  /// "sr-Latn". For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier. If
  /// language_code is unspecified, the user's language preference for Google
  /// services is used.
  ///
  /// [pageSize] - Optional. The maximum number of photos to return. `pageSize`
  /// must be non-negative. If `pageSize` is zero or is not provided, the
  /// default page size of 100 is used. The number of photos returned in the
  /// response may be less than `pageSize` if the number of photos that belong
  /// to the user is less than `pageSize`.
  ///
  /// [pageToken] - Optional. The nextPageToken value returned from a previous
  /// ListPhotos request, if any.
  ///
  /// [view] - Required. Specifies if a download URL for the photos bytes should
  /// be returned in the Photos response.
  /// Possible string values are:
  /// - "BASIC" : Server responses do not include the download URL for the photo
  /// bytes. The default value.
  /// - "INCLUDE_DOWNLOAD_URL" : Server responses include the download URL for
  /// the photo bytes.
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
  async.Future<ListPhotosResponse> list({
    core.String? filter,
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/photos';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListPhotosResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Request to delete multiple Photos.
class BatchDeletePhotosRequest {
  /// IDs of the Photos.
  ///
  /// HTTP GET requests require the following syntax for the URL query
  /// parameter: `photoIds=&photoIds=&...`.
  ///
  /// Required.
  core.List<core.String>? photoIds;

  BatchDeletePhotosRequest({
    this.photoIds,
  });

  BatchDeletePhotosRequest.fromJson(core.Map _json)
      : this(
          photoIds: _json.containsKey('photoIds')
              ? (_json['photoIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (photoIds != null) 'photoIds': photoIds!,
      };
}

/// Response to batch delete of one or more Photos.
class BatchDeletePhotosResponse {
  /// The status for the operation to delete a single Photo in the batch
  /// request.
  core.List<Status>? status;

  BatchDeletePhotosResponse({
    this.status,
  });

  BatchDeletePhotosResponse.fromJson(core.Map _json)
      : this(
          status: _json.containsKey('status')
              ? (_json['status'] as core.List)
                  .map((value) => Status.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (status != null) 'status': status!,
      };
}

/// Response to batch get of Photos.
class BatchGetPhotosResponse {
  /// List of results for each individual Photo requested, in the same order as
  /// the requests in BatchGetPhotos.
  core.List<PhotoResponse>? results;

  BatchGetPhotosResponse({
    this.results,
  });

  BatchGetPhotosResponse.fromJson(core.Map _json)
      : this(
          results: _json.containsKey('results')
              ? (_json['results'] as core.List)
                  .map((value) => PhotoResponse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (results != null) 'results': results!,
      };
}

/// Request to update the metadata of photos.
///
/// Updating the pixels of photos is not supported.
class BatchUpdatePhotosRequest {
  /// List of UpdatePhotoRequests.
  ///
  /// Required.
  core.List<UpdatePhotoRequest>? updatePhotoRequests;

  BatchUpdatePhotosRequest({
    this.updatePhotoRequests,
  });

  BatchUpdatePhotosRequest.fromJson(core.Map _json)
      : this(
          updatePhotoRequests: _json.containsKey('updatePhotoRequests')
              ? (_json['updatePhotoRequests'] as core.List)
                  .map((value) => UpdatePhotoRequest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (updatePhotoRequests != null)
          'updatePhotoRequests': updatePhotoRequests!,
      };
}

/// Response to batch update of metadata of one or more Photos.
class BatchUpdatePhotosResponse {
  /// List of results for each individual Photo updated, in the same order as
  /// the request.
  core.List<PhotoResponse>? results;

  BatchUpdatePhotosResponse({
    this.results,
  });

  BatchUpdatePhotosResponse.fromJson(core.Map _json)
      : this(
          results: _json.containsKey('results')
              ? (_json['results'] as core.List)
                  .map((value) => PhotoResponse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (results != null) 'results': results!,
      };
}

/// A connection is the link from a source photo to a destination photo.
class Connection {
  /// The destination of the connection from the containing photo to another
  /// photo.
  ///
  /// Required.
  PhotoId? target;

  Connection({
    this.target,
  });

  Connection.fromJson(core.Map _json)
      : this(
          target: _json.containsKey('target')
              ? PhotoId.fromJson(
                  _json['target'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (target != null) 'target': target!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Details related to ProcessingFailureReason#GPS_DATA_GAP.
///
/// If there are multiple GPS data gaps, only the one with the largest duration
/// is reported here.
class GpsDataGapFailureDetails {
  /// The duration of the gap in GPS data that was found.
  core.String? gapDuration;

  /// Relative time (from the start of the video stream) when the gap started.
  core.String? gapStartTime;

  GpsDataGapFailureDetails({
    this.gapDuration,
    this.gapStartTime,
  });

  GpsDataGapFailureDetails.fromJson(core.Map _json)
      : this(
          gapDuration: _json.containsKey('gapDuration')
              ? _json['gapDuration'] as core.String
              : null,
          gapStartTime: _json.containsKey('gapStartTime')
              ? _json['gapStartTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gapDuration != null) 'gapDuration': gapDuration!,
        if (gapStartTime != null) 'gapStartTime': gapStartTime!,
      };
}

/// IMU data from the device sensors.
class Imu {
  /// The accelerometer measurements in meters/sec^2 with increasing timestamps
  /// from devices.
  core.List<Measurement3d>? accelMpsps;

  /// The gyroscope measurements in radians/sec with increasing timestamps from
  /// devices.
  core.List<Measurement3d>? gyroRps;

  /// The magnetometer measurements of the magnetic field in microtesla (uT)
  /// with increasing timestamps from devices.
  core.List<Measurement3d>? magUt;

  Imu({
    this.accelMpsps,
    this.gyroRps,
    this.magUt,
  });

  Imu.fromJson(core.Map _json)
      : this(
          accelMpsps: _json.containsKey('accelMpsps')
              ? (_json['accelMpsps'] as core.List)
                  .map((value) => Measurement3d.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          gyroRps: _json.containsKey('gyroRps')
              ? (_json['gyroRps'] as core.List)
                  .map((value) => Measurement3d.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          magUt: _json.containsKey('magUt')
              ? (_json['magUt'] as core.List)
                  .map((value) => Measurement3d.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accelMpsps != null) 'accelMpsps': accelMpsps!,
        if (gyroRps != null) 'gyroRps': gyroRps!,
        if (magUt != null) 'magUt': magUt!,
      };
}

/// Details related to ProcessingFailureReason#IMU_DATA_GAP.
///
/// If there are multiple IMU data gaps, only the one with the largest duration
/// is reported here.
class ImuDataGapFailureDetails {
  /// The duration of the gap in IMU data that was found.
  core.String? gapDuration;

  /// Relative time (from the start of the video stream) when the gap started.
  core.String? gapStartTime;

  ImuDataGapFailureDetails({
    this.gapDuration,
    this.gapStartTime,
  });

  ImuDataGapFailureDetails.fromJson(core.Map _json)
      : this(
          gapDuration: _json.containsKey('gapDuration')
              ? _json['gapDuration'] as core.String
              : null,
          gapStartTime: _json.containsKey('gapStartTime')
              ? _json['gapStartTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gapDuration != null) 'gapDuration': gapDuration!,
        if (gapStartTime != null) 'gapStartTime': gapStartTime!,
      };
}

/// Details related to ProcessingFailureReason#INSUFFICIENT_GPS.
class InsufficientGpsFailureDetails {
  /// The number of GPS points that were found in the video.
  core.int? gpsPointsFound;

  InsufficientGpsFailureDetails({
    this.gpsPointsFound,
  });

  InsufficientGpsFailureDetails.fromJson(core.Map _json)
      : this(
          gpsPointsFound: _json.containsKey('gpsPointsFound')
              ? _json['gpsPointsFound'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gpsPointsFound != null) 'gpsPointsFound': gpsPointsFound!,
      };
}

/// An object that represents a latitude/longitude pair.
///
/// This is expressed as a pair of doubles to represent degrees latitude and
/// degrees longitude. Unless specified otherwise, this object must conform to
/// the WGS84 standard. Values must be within normalized ranges.
typedef LatLng = $LatLng;

/// A rectangle in geographical coordinates.
class LatLngBounds {
  /// The northeast corner of these bounds.
  LatLng? northeast;

  /// The southwest corner of these bounds.
  LatLng? southwest;

  LatLngBounds({
    this.northeast,
    this.southwest,
  });

  LatLngBounds.fromJson(core.Map _json)
      : this(
          northeast: _json.containsKey('northeast')
              ? LatLng.fromJson(
                  _json['northeast'] as core.Map<core.String, core.dynamic>)
              : null,
          southwest: _json.containsKey('southwest')
              ? LatLng.fromJson(
                  _json['southwest'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (northeast != null) 'northeast': northeast!,
        if (southwest != null) 'southwest': southwest!,
      };
}

/// Level information containing level number and its corresponding name.
class Level {
  /// A name assigned to this Level, restricted to 3 characters.
  ///
  /// Consider how the elevator buttons would be labeled for this level if there
  /// was an elevator.
  ///
  /// Required.
  core.String? name;

  /// Floor number, used for ordering.
  ///
  /// 0 indicates the ground level, 1 indicates the first level above ground
  /// level, -1 indicates the first level under ground level. Non-integer values
  /// are OK.
  ///
  /// Optional.
  core.double? number;

  Level({
    this.name,
    this.number,
  });

  Level.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          number: _json.containsKey('number')
              ? (_json['number'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (number != null) 'number': number!,
      };
}

/// Response to list all photo sequences that belong to a user.
class ListPhotoSequencesResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// List of photo sequences via Operation interface.
  ///
  /// The maximum number of items returned is based on the pageSize field in the
  /// request. Each item in the list can have three possible states, *
  /// `Operation.done` = false, if the processing of PhotoSequence is not
  /// finished yet. * `Operation.done` = true and `Operation.error` is
  /// populated, if there was an error in processing. * `Operation.done` = true
  /// and `Operation.response` contains a PhotoSequence message, In each
  /// sequence, only Id is populated.
  core.List<Operation>? photoSequences;

  ListPhotoSequencesResponse({
    this.nextPageToken,
    this.photoSequences,
  });

  ListPhotoSequencesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          photoSequences: _json.containsKey('photoSequences')
              ? (_json['photoSequences'] as core.List)
                  .map((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (photoSequences != null) 'photoSequences': photoSequences!,
      };
}

/// Response to list all photos that belong to a user.
class ListPhotosResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// List of photos.
  ///
  /// The pageSize field in the request determines the number of items returned.
  core.List<Photo>? photos;

  ListPhotosResponse({
    this.nextPageToken,
    this.photos,
  });

  ListPhotosResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          photos: _json.containsKey('photos')
              ? (_json['photos'] as core.List)
                  .map((value) => Photo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (photos != null) 'photos': photos!,
      };
}

/// A Generic 3d measurement sample.
class Measurement3d {
  /// The timestamp of the IMU measurement.
  core.String? captureTime;

  /// The sensor measurement in the x axis.
  core.double? x;

  /// The sensor measurement in the y axis.
  core.double? y;

  /// The sensor measurement in the z axis.
  core.double? z;

  Measurement3d({
    this.captureTime,
    this.x,
    this.y,
    this.z,
  });

  Measurement3d.fromJson(core.Map _json)
      : this(
          captureTime: _json.containsKey('captureTime')
              ? _json['captureTime'] as core.String
              : null,
          x: _json.containsKey('x')
              ? (_json['x'] as core.num).toDouble()
              : null,
          y: _json.containsKey('y')
              ? (_json['y'] as core.num).toDouble()
              : null,
          z: _json.containsKey('z')
              ? (_json['z'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (captureTime != null) 'captureTime': captureTime!,
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
        if (z != null) 'z': z!,
      };
}

/// Details related to ProcessingFailureReason#NOT_OUTDOORS.
///
/// If there are multiple indoor frames found, the first frame is recorded here.
class NotOutdoorsFailureDetails {
  /// Relative time (from the start of the video stream) when an indoor frame
  /// was found.
  core.String? startTime;

  NotOutdoorsFailureDetails({
    this.startTime,
  });

  NotOutdoorsFailureDetails.fromJson(core.Map _json)
      : this(
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (startTime != null) 'startTime': startTime!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  Status? error;

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
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
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

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? Status.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? _json['response'] as core.Map<core.String, core.dynamic>
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

/// Photo is used to store 360 photos along with photo metadata.
class Photo {
  /// Absolute time when the photo was captured.
  ///
  /// When the photo has no exif timestamp, this is used to set a timestamp in
  /// the photo metadata.
  ///
  /// Optional.
  core.String? captureTime;

  /// Connections to other photos.
  ///
  /// A connection represents the link from this photo to another photo.
  ///
  /// Optional.
  core.List<Connection>? connections;

  /// The download URL for the photo bytes.
  ///
  /// This field is set only when GetPhotoRequest.view is set to
  /// PhotoView.INCLUDE_DOWNLOAD_URL.
  ///
  /// Output only.
  core.String? downloadUrl;

  /// Status in Google Maps, whether this photo was published or rejected.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED_MAPS_PUBLISH_STATUS" : The status of the photo is unknown.
  /// - "PUBLISHED" : The photo is published to the public through Google Maps.
  /// - "REJECTED_UNKNOWN" : The photo has been rejected for an unknown reason.
  core.String? mapsPublishStatus;

  /// Required when updating a photo.
  ///
  /// Output only when creating a photo. Identifier for the photo, which is
  /// unique among all photos in Google.
  ///
  /// Required. Output only.
  PhotoId? photoId;

  /// Places where this photo belongs.
  ///
  /// Optional.
  core.List<Place>? places;

  /// Pose of the photo.
  ///
  /// Optional.
  Pose? pose;

  /// The share link for the photo.
  ///
  /// Output only.
  core.String? shareLink;

  /// The thumbnail URL for showing a preview of the given photo.
  ///
  /// Output only.
  core.String? thumbnailUrl;

  /// Status of rights transfer on this photo.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TRANSFER_STATUS_UNKNOWN" : The status of this transfer is unspecified.
  /// - "NEVER_TRANSFERRED" : This photo has never been in a transfer.
  /// - "PENDING" : This photo transfer has been initiated, but the receiver has
  /// not yet responded.
  /// - "COMPLETED" : The photo transfer has been completed, and this photo has
  /// been transferred to the recipient.
  /// - "REJECTED" : The recipient rejected this photo transfer.
  /// - "EXPIRED" : The photo transfer expired before the recipient took any
  /// action.
  /// - "CANCELLED" : The sender cancelled this photo transfer.
  /// - "RECEIVED_VIA_TRANSFER" : The recipient owns this photo due to a rights
  /// transfer.
  core.String? transferStatus;

  /// Input only.
  ///
  /// Required when creating a photo. Input only. The resource URL where the
  /// photo bytes are uploaded to.
  UploadRef? uploadReference;

  /// Time when the image was uploaded.
  ///
  /// Output only.
  core.String? uploadTime;

  /// View count of the photo.
  ///
  /// Output only.
  core.String? viewCount;

  Photo({
    this.captureTime,
    this.connections,
    this.downloadUrl,
    this.mapsPublishStatus,
    this.photoId,
    this.places,
    this.pose,
    this.shareLink,
    this.thumbnailUrl,
    this.transferStatus,
    this.uploadReference,
    this.uploadTime,
    this.viewCount,
  });

  Photo.fromJson(core.Map _json)
      : this(
          captureTime: _json.containsKey('captureTime')
              ? _json['captureTime'] as core.String
              : null,
          connections: _json.containsKey('connections')
              ? (_json['connections'] as core.List)
                  .map((value) => Connection.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          downloadUrl: _json.containsKey('downloadUrl')
              ? _json['downloadUrl'] as core.String
              : null,
          mapsPublishStatus: _json.containsKey('mapsPublishStatus')
              ? _json['mapsPublishStatus'] as core.String
              : null,
          photoId: _json.containsKey('photoId')
              ? PhotoId.fromJson(
                  _json['photoId'] as core.Map<core.String, core.dynamic>)
              : null,
          places: _json.containsKey('places')
              ? (_json['places'] as core.List)
                  .map((value) => Place.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pose: _json.containsKey('pose')
              ? Pose.fromJson(
                  _json['pose'] as core.Map<core.String, core.dynamic>)
              : null,
          shareLink: _json.containsKey('shareLink')
              ? _json['shareLink'] as core.String
              : null,
          thumbnailUrl: _json.containsKey('thumbnailUrl')
              ? _json['thumbnailUrl'] as core.String
              : null,
          transferStatus: _json.containsKey('transferStatus')
              ? _json['transferStatus'] as core.String
              : null,
          uploadReference: _json.containsKey('uploadReference')
              ? UploadRef.fromJson(_json['uploadReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          uploadTime: _json.containsKey('uploadTime')
              ? _json['uploadTime'] as core.String
              : null,
          viewCount: _json.containsKey('viewCount')
              ? _json['viewCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (captureTime != null) 'captureTime': captureTime!,
        if (connections != null) 'connections': connections!,
        if (downloadUrl != null) 'downloadUrl': downloadUrl!,
        if (mapsPublishStatus != null) 'mapsPublishStatus': mapsPublishStatus!,
        if (photoId != null) 'photoId': photoId!,
        if (places != null) 'places': places!,
        if (pose != null) 'pose': pose!,
        if (shareLink != null) 'shareLink': shareLink!,
        if (thumbnailUrl != null) 'thumbnailUrl': thumbnailUrl!,
        if (transferStatus != null) 'transferStatus': transferStatus!,
        if (uploadReference != null) 'uploadReference': uploadReference!,
        if (uploadTime != null) 'uploadTime': uploadTime!,
        if (viewCount != null) 'viewCount': viewCount!,
      };
}

/// Identifier for a Photo.
class PhotoId {
  /// A unique identifier for a photo.
  core.String? id;

  PhotoId({
    this.id,
  });

  PhotoId.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
      };
}

/// Response payload for a single Photo in batch operations including
/// BatchGetPhotos and BatchUpdatePhotos.
class PhotoResponse {
  /// The Photo resource, if the request was successful.
  Photo? photo;

  /// The status for the operation to get or update a single photo in the batch
  /// request.
  Status? status;

  PhotoResponse({
    this.photo,
    this.status,
  });

  PhotoResponse.fromJson(core.Map _json)
      : this(
          photo: _json.containsKey('photo')
              ? Photo.fromJson(
                  _json['photo'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? Status.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (photo != null) 'photo': photo!,
        if (status != null) 'status': status!,
      };
}

/// A sequence of 360 photos along with metadata.
class PhotoSequence {
  /// Absolute time when the photo sequence starts to be captured.
  ///
  /// If the photo sequence is a video, this is the start time of the video. If
  /// this field is populated in input, it overrides the capture time in the
  /// video or XDM file.
  ///
  /// Optional.
  core.String? captureTimeOverride;

  /// The computed distance of the photo sequence in meters.
  ///
  /// Output only.
  core.double? distanceMeters;

  /// If this sequence has `failure_reason` set, this may contain additional
  /// details about the failure.
  ///
  /// Output only.
  ProcessingFailureDetails? failureDetails;

  /// If this sequence has processing_state = FAILED, this will contain the
  /// reason why it failed.
  ///
  /// If the processing_state is any other value, this field will be unset.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PROCESSING_FAILURE_REASON_UNSPECIFIED" : The failure reason is
  /// unspecified, this is the default value.
  /// - "LOW_RESOLUTION" : Video frame's resolution is too small.
  /// - "DUPLICATE" : This video has been uploaded before.
  /// - "INSUFFICIENT_GPS" : Too few GPS points.
  /// - "NO_OVERLAP_GPS" : No overlap between the time frame of GPS track and
  /// the time frame of video.
  /// - "INVALID_GPS" : GPS is invalid (e.x. all GPS points are at (0,0))
  /// - "FAILED_TO_REFINE_POSITIONS" : The sequence of photos could not be
  /// accurately located in the world.
  /// - "TAKEDOWN" : The sequence was taken down for policy reasons.
  /// - "CORRUPT_VIDEO" : The video file was corrupt or could not be decoded.
  /// - "INTERNAL" : A permanent failure in the underlying system occurred.
  /// - "INVALID_VIDEO_FORMAT" : The video format is invalid or unsupported.
  /// - "INVALID_VIDEO_DIMENSIONS" : Invalid image aspect ratio found.
  /// - "INVALID_CAPTURE_TIME" : Invalid capture time. Timestamps were from the
  /// future.
  /// - "GPS_DATA_GAP" : GPS data contains a gap greater than 5 seconds in
  /// duration.
  /// - "JUMPY_GPS" : GPS data is too erratic to be processed.
  /// - "INVALID_IMU" : IMU (Accelerometer, Gyroscope, etc.) data are not valid.
  /// They may be missing required fields (x, y, z or time), may not be
  /// formatted correctly, or any other issue that prevents our systems from
  /// parsing it.
  /// - "INSUFFICIENT_IMU" : Too few IMU points.
  /// - "INSUFFICIENT_OVERLAP_TIME_SERIES" : Insufficient overlap in the time
  /// frame between GPS, IMU, and other time series data.
  /// - "IMU_DATA_GAP" : IMU (Accelerometer, Gyroscope, etc.) data contain gaps
  /// greater than 0.1 seconds in duration.
  /// - "UNSUPPORTED_CAMERA" : The camera is not supported.
  /// - "NOT_OUTDOORS" : Some frames were indoors, which is unsupported.
  /// - "INSUFFICIENT_VIDEO_FRAMES" : Not enough video frames.
  core.String? failureReason;

  /// The filename of the upload.
  ///
  /// Does not include the directory path. Only available if the sequence was
  /// uploaded on a platform that provides the filename.
  ///
  /// Output only.
  core.String? filename;

  /// Input only.
  ///
  /// If both raw_gps_timeline and the Camera Motion Metadata Track (CAMM)
  /// contain GPS measurements, indicate which takes precedence.
  /// Possible string values are:
  /// - "PHOTO_SEQUENCE" : GPS in raw_gps_timeline takes precedence if it
  /// exists.
  /// - "CAMERA_MOTION_METADATA_TRACK" : GPS in Camera Motion Metadata Track
  /// (CAMM) takes precedence if it exists.
  core.String? gpsSource;

  /// Unique identifier for the photo sequence.
  ///
  /// This also acts as a long running operation ID if uploading is performed
  /// asynchronously.
  ///
  /// Output only.
  core.String? id;

  /// Input only.
  ///
  /// Three axis IMU data for the collection. If this data is too large to put
  /// in the request, then it should be put in the CAMM track for the video.
  /// This data always takes precedence over the equivalent CAMM data, if it
  /// exists.
  Imu? imu;

  /// Photos with increasing timestamps.
  ///
  /// Output only.
  core.List<Photo>? photos;

  /// The processing state of this sequence.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PROCESSING_STATE_UNSPECIFIED" : The state is unspecified, this is the
  /// default value.
  /// - "PENDING" : The sequence has not yet started processing.
  /// - "PROCESSING" : The sequence is currently in processing.
  /// - "PROCESSED" : The sequence has finished processing including refining
  /// position.
  /// - "FAILED" : The sequence failed processing. See FailureReason for more
  /// details.
  core.String? processingState;

  /// Input only.
  ///
  /// Raw GPS measurements with increasing timestamps from the device that
  /// aren't time synced with each photo. These raw measurements will be used to
  /// infer the pose of each frame. Required in input when InputType is VIDEO
  /// and raw GPS measurements are not in Camera Motion Metadata Track (CAMM).
  /// User can indicate which takes precedence using gps_source if raw GPS
  /// measurements are provided in both raw_gps_timeline and Camera Motion
  /// Metadata Track (CAMM).
  core.List<Pose>? rawGpsTimeline;

  /// A rectangular box that encapsulates every image in this photo sequence.
  ///
  /// Output only.
  LatLngBounds? sequenceBounds;

  /// Input only.
  ///
  /// Required when creating photo sequence. The resource name where the bytes
  /// of the photo sequence (in the form of video) are uploaded.
  UploadRef? uploadReference;

  /// The time this photo sequence was created in uSV Store service.
  ///
  /// Output only.
  core.String? uploadTime;

  /// The total number of views that all the published images in this
  /// PhotoSequence have received.
  ///
  /// Output only.
  core.String? viewCount;

  PhotoSequence({
    this.captureTimeOverride,
    this.distanceMeters,
    this.failureDetails,
    this.failureReason,
    this.filename,
    this.gpsSource,
    this.id,
    this.imu,
    this.photos,
    this.processingState,
    this.rawGpsTimeline,
    this.sequenceBounds,
    this.uploadReference,
    this.uploadTime,
    this.viewCount,
  });

  PhotoSequence.fromJson(core.Map _json)
      : this(
          captureTimeOverride: _json.containsKey('captureTimeOverride')
              ? _json['captureTimeOverride'] as core.String
              : null,
          distanceMeters: _json.containsKey('distanceMeters')
              ? (_json['distanceMeters'] as core.num).toDouble()
              : null,
          failureDetails: _json.containsKey('failureDetails')
              ? ProcessingFailureDetails.fromJson(_json['failureDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          failureReason: _json.containsKey('failureReason')
              ? _json['failureReason'] as core.String
              : null,
          filename: _json.containsKey('filename')
              ? _json['filename'] as core.String
              : null,
          gpsSource: _json.containsKey('gpsSource')
              ? _json['gpsSource'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          imu: _json.containsKey('imu')
              ? Imu.fromJson(
                  _json['imu'] as core.Map<core.String, core.dynamic>)
              : null,
          photos: _json.containsKey('photos')
              ? (_json['photos'] as core.List)
                  .map((value) => Photo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          processingState: _json.containsKey('processingState')
              ? _json['processingState'] as core.String
              : null,
          rawGpsTimeline: _json.containsKey('rawGpsTimeline')
              ? (_json['rawGpsTimeline'] as core.List)
                  .map((value) => Pose.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sequenceBounds: _json.containsKey('sequenceBounds')
              ? LatLngBounds.fromJson(_json['sequenceBounds']
                  as core.Map<core.String, core.dynamic>)
              : null,
          uploadReference: _json.containsKey('uploadReference')
              ? UploadRef.fromJson(_json['uploadReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          uploadTime: _json.containsKey('uploadTime')
              ? _json['uploadTime'] as core.String
              : null,
          viewCount: _json.containsKey('viewCount')
              ? _json['viewCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (captureTimeOverride != null)
          'captureTimeOverride': captureTimeOverride!,
        if (distanceMeters != null) 'distanceMeters': distanceMeters!,
        if (failureDetails != null) 'failureDetails': failureDetails!,
        if (failureReason != null) 'failureReason': failureReason!,
        if (filename != null) 'filename': filename!,
        if (gpsSource != null) 'gpsSource': gpsSource!,
        if (id != null) 'id': id!,
        if (imu != null) 'imu': imu!,
        if (photos != null) 'photos': photos!,
        if (processingState != null) 'processingState': processingState!,
        if (rawGpsTimeline != null) 'rawGpsTimeline': rawGpsTimeline!,
        if (sequenceBounds != null) 'sequenceBounds': sequenceBounds!,
        if (uploadReference != null) 'uploadReference': uploadReference!,
        if (uploadTime != null) 'uploadTime': uploadTime!,
        if (viewCount != null) 'viewCount': viewCount!,
      };
}

/// Place metadata for an entity.
class Place {
  /// The language_code that the name is localized with.
  ///
  /// This should be the language_code specified in the request, but may be a
  /// fallback.
  ///
  /// Output only.
  core.String? languageCode;

  /// The name of the place, localized to the language_code.
  ///
  /// Output only.
  core.String? name;

  /// Place identifier, as described in
  /// https://developers.google.com/places/place-id.
  core.String? placeId;

  Place({
    this.languageCode,
    this.name,
    this.placeId,
  });

  Place.fromJson(core.Map _json)
      : this(
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          placeId: _json.containsKey('placeId')
              ? _json['placeId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageCode != null) 'languageCode': languageCode!,
        if (name != null) 'name': name!,
        if (placeId != null) 'placeId': placeId!,
      };
}

/// Raw pose measurement for an entity.
class Pose {
  /// The estimated horizontal accuracy of this pose in meters with 68%
  /// confidence (one standard deviation).
  ///
  /// For example, on Android, this value is available from this method:
  /// https://developer.android.com/reference/android/location/Location#getAccuracy().
  /// Other platforms have different methods of obtaining similar accuracy
  /// estimations.
  core.double? accuracyMeters;

  /// Altitude of the pose in meters above WGS84 ellipsoid.
  ///
  /// NaN indicates an unmeasured quantity.
  core.double? altitude;

  /// Time of the GPS record since UTC epoch.
  core.String? gpsRecordTimestampUnixEpoch;

  /// The following pose parameters pertain to the center of the photo.
  ///
  /// They match https://developers.google.com/streetview/spherical-metadata.
  /// Compass heading, measured at the center of the photo in degrees clockwise
  /// from North. Value must be \>=0 and \<360. NaN indicates an unmeasured
  /// quantity.
  core.double? heading;

  /// Latitude and longitude pair of the pose, as explained here:
  /// https://cloud.google.com/datastore/docs/reference/rest/Shared.Types/LatLng
  /// When creating a Photo, if the latitude and longitude pair are not
  /// provided, the geolocation from the exif header is used.
  ///
  /// A latitude and longitude pair not provided in the photo or exif header
  /// causes the photo process to fail.
  LatLng? latLngPair;

  /// Level (the floor in a building) used to configure vertical navigation.
  Level? level;

  /// Pitch, measured at the center of the photo in degrees.
  ///
  /// Value must be \>=-90 and \<= 90. A value of -90 means looking directly
  /// down, and a value of 90 means looking directly up. NaN indicates an
  /// unmeasured quantity.
  core.double? pitch;

  /// Roll, measured in degrees.
  ///
  /// Value must be \>= 0 and \<360. A value of 0 means level with the horizon.
  /// NaN indicates an unmeasured quantity.
  core.double? roll;

  Pose({
    this.accuracyMeters,
    this.altitude,
    this.gpsRecordTimestampUnixEpoch,
    this.heading,
    this.latLngPair,
    this.level,
    this.pitch,
    this.roll,
  });

  Pose.fromJson(core.Map _json)
      : this(
          accuracyMeters: _json.containsKey('accuracyMeters')
              ? (_json['accuracyMeters'] as core.num).toDouble()
              : null,
          altitude: _json.containsKey('altitude')
              ? (_json['altitude'] as core.num).toDouble()
              : null,
          gpsRecordTimestampUnixEpoch:
              _json.containsKey('gpsRecordTimestampUnixEpoch')
                  ? _json['gpsRecordTimestampUnixEpoch'] as core.String
                  : null,
          heading: _json.containsKey('heading')
              ? (_json['heading'] as core.num).toDouble()
              : null,
          latLngPair: _json.containsKey('latLngPair')
              ? LatLng.fromJson(
                  _json['latLngPair'] as core.Map<core.String, core.dynamic>)
              : null,
          level: _json.containsKey('level')
              ? Level.fromJson(
                  _json['level'] as core.Map<core.String, core.dynamic>)
              : null,
          pitch: _json.containsKey('pitch')
              ? (_json['pitch'] as core.num).toDouble()
              : null,
          roll: _json.containsKey('roll')
              ? (_json['roll'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accuracyMeters != null) 'accuracyMeters': accuracyMeters!,
        if (altitude != null) 'altitude': altitude!,
        if (gpsRecordTimestampUnixEpoch != null)
          'gpsRecordTimestampUnixEpoch': gpsRecordTimestampUnixEpoch!,
        if (heading != null) 'heading': heading!,
        if (latLngPair != null) 'latLngPair': latLngPair!,
        if (level != null) 'level': level!,
        if (pitch != null) 'pitch': pitch!,
        if (roll != null) 'roll': roll!,
      };
}

/// Additional details to accompany the ProcessingFailureReason enum.
///
/// This message is always expected to be used in conjunction with
/// ProcessingFailureReason, and the oneof value set in this message should
/// match the FailureReason.
class ProcessingFailureDetails {
  /// See GpsDataGapFailureDetails.
  GpsDataGapFailureDetails? gpsDataGapDetails;

  /// See ImuDataGapFailureDetails.
  ImuDataGapFailureDetails? imuDataGapDetails;

  /// See InsufficientGpsFailureDetails.
  InsufficientGpsFailureDetails? insufficientGpsDetails;

  /// See NotOutdoorsFailureDetails.
  NotOutdoorsFailureDetails? notOutdoorsDetails;

  ProcessingFailureDetails({
    this.gpsDataGapDetails,
    this.imuDataGapDetails,
    this.insufficientGpsDetails,
    this.notOutdoorsDetails,
  });

  ProcessingFailureDetails.fromJson(core.Map _json)
      : this(
          gpsDataGapDetails: _json.containsKey('gpsDataGapDetails')
              ? GpsDataGapFailureDetails.fromJson(_json['gpsDataGapDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          imuDataGapDetails: _json.containsKey('imuDataGapDetails')
              ? ImuDataGapFailureDetails.fromJson(_json['imuDataGapDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          insufficientGpsDetails: _json.containsKey('insufficientGpsDetails')
              ? InsufficientGpsFailureDetails.fromJson(
                  _json['insufficientGpsDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          notOutdoorsDetails: _json.containsKey('notOutdoorsDetails')
              ? NotOutdoorsFailureDetails.fromJson(_json['notOutdoorsDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gpsDataGapDetails != null) 'gpsDataGapDetails': gpsDataGapDetails!,
        if (imuDataGapDetails != null) 'imuDataGapDetails': imuDataGapDetails!,
        if (insufficientGpsDetails != null)
          'insufficientGpsDetails': insufficientGpsDetails!,
        if (notOutdoorsDetails != null)
          'notOutdoorsDetails': notOutdoorsDetails!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Request to update the metadata of a Photo.
///
/// Updating the pixels of a photo is not supported.
class UpdatePhotoRequest {
  /// Photo object containing the new metadata.
  ///
  /// Required.
  Photo? photo;

  /// Mask that identifies fields on the photo metadata to update.
  ///
  /// If not present, the old Photo metadata is entirely replaced with the new
  /// Photo metadata in this request. The update fails if invalid fields are
  /// specified. Multiple fields can be specified in a comma-delimited list. The
  /// following fields are valid: * `pose.heading` * `pose.latLngPair` *
  /// `pose.pitch` * `pose.roll` * `pose.level` * `pose.altitude` *
  /// `connections` * `places` \> Note: When updateMask contains repeated
  /// fields, the entire set of repeated values get replaced with the new
  /// contents. For example, if updateMask contains `connections` and
  /// `UpdatePhotoRequest.photo.connections` is empty, all connections are
  /// removed.
  ///
  /// Required.
  core.String? updateMask;

  UpdatePhotoRequest({
    this.photo,
    this.updateMask,
  });

  UpdatePhotoRequest.fromJson(core.Map _json)
      : this(
          photo: _json.containsKey('photo')
              ? Photo.fromJson(
                  _json['photo'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (photo != null) 'photo': photo!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Upload reference for media files.
class UploadRef {
  /// An upload reference should be unique for each user.
  ///
  /// It follows the form:
  /// "https://streetviewpublish.googleapis.com/media/user/{account_id}/photo/{upload_reference}"
  core.String? uploadUrl;

  UploadRef({
    this.uploadUrl,
  });

  UploadRef.fromJson(core.Map _json)
      : this(
          uploadUrl: _json.containsKey('uploadUrl')
              ? _json['uploadUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uploadUrl != null) 'uploadUrl': uploadUrl!,
      };
}
