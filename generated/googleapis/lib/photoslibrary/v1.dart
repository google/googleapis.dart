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

/// Photos Library API - v1
///
/// Manage photos, videos, and albums in Google Photos
///
/// For more information, see <https://developers.google.com/photos/>
///
/// Create an instance of [PhotosLibraryApi] to access these resources:
///
/// - [AlbumsResource]
/// - [MediaItemsResource]
/// - [SharedAlbumsResource]
library photoslibrary.v1;

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

/// Manage photos, videos, and albums in Google Photos
class PhotosLibraryApi {
  /// See, upload, and organize items in your Google Photos library
  static const photoslibraryScope =
      'https://www.googleapis.com/auth/photoslibrary';

  /// Add to your Google Photos library
  static const photoslibraryAppendonlyScope =
      'https://www.googleapis.com/auth/photoslibrary.appendonly';

  /// Edit the info in your photos, videos, and albums created within this app,
  /// including titles, descriptions, and covers
  static const photoslibraryEditAppcreateddataScope =
      'https://www.googleapis.com/auth/photoslibrary.edit.appcreateddata';

  /// View your Google Photos library
  static const photoslibraryReadonlyScope =
      'https://www.googleapis.com/auth/photoslibrary.readonly';

  /// Manage photos added by this app
  static const photoslibraryReadonlyAppcreateddataScope =
      'https://www.googleapis.com/auth/photoslibrary.readonly.appcreateddata';

  /// Manage and add to shared albums on your behalf
  static const photoslibrarySharingScope =
      'https://www.googleapis.com/auth/photoslibrary.sharing';

  final commons.ApiRequester _requester;

  AlbumsResource get albums => AlbumsResource(_requester);
  MediaItemsResource get mediaItems => MediaItemsResource(_requester);
  SharedAlbumsResource get sharedAlbums => SharedAlbumsResource(_requester);

  PhotosLibraryApi(http.Client client,
      {core.String rootUrl = 'https://photoslibrary.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AlbumsResource {
  final commons.ApiRequester _requester;

  AlbumsResource(commons.ApiRequester client) : _requester = client;

  /// Adds an enrichment at a specified position in a defined album.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [albumId] - Required. Identifier of the album where the enrichment is to
  /// be added.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AddEnrichmentToAlbumResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AddEnrichmentToAlbumResponse> addEnrichment(
    AddEnrichmentToAlbumRequest request,
    core.String albumId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/albums/' + core.Uri.encodeFull('$albumId') + ':addEnrichment';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AddEnrichmentToAlbumResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Adds one or more media items in a user's Google Photos library to an
  /// album.
  ///
  /// The media items and albums must have been created by the developer via the
  /// API. Media items are added to the end of the album. If multiple media
  /// items are given, they are added in the order specified in this call. Each
  /// album can contain up to 20,000 media items. Only media items that are in
  /// the user's library can be added to an album. For albums that are shared,
  /// the album must either be owned by the user or the user must have joined
  /// the album as a collaborator. Partial success is not supported. The entire
  /// request will fail if an invalid media item or album is specified.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [albumId] - Required. Identifier of the Album that the media items are
  /// added to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchAddMediaItemsToAlbumResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchAddMediaItemsToAlbumResponse> batchAddMediaItems(
    BatchAddMediaItemsToAlbumRequest request,
    core.String albumId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/albums/' + core.Uri.encodeFull('$albumId') + ':batchAddMediaItems';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BatchAddMediaItemsToAlbumResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Removes one or more media items from a specified album.
  ///
  /// The media items and the album must have been created by the developer via
  /// the API. For albums that are shared, this action is only supported for
  /// media items that were added to the album by this user, or for all media
  /// items if the album was created by this user. Partial success is not
  /// supported. The entire request will fail and no action will be performed on
  /// the album if an invalid media item or album is specified.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [albumId] - Required. Identifier of the Album that the media items are to
  /// be removed from.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchRemoveMediaItemsFromAlbumResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchRemoveMediaItemsFromAlbumResponse> batchRemoveMediaItems(
    BatchRemoveMediaItemsFromAlbumRequest request,
    core.String albumId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/albums/' +
        core.Uri.encodeFull('$albumId') +
        ':batchRemoveMediaItems';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BatchRemoveMediaItemsFromAlbumResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates an album in a user's Google Photos library.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Album].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Album> create(
    CreateAlbumRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/albums';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Album.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the album based on the specified `albumId`.
  ///
  /// The `albumId` must be the ID of an album owned by the user or a shared
  /// album that the user has joined.
  ///
  /// Request parameters:
  ///
  /// [albumId] - Required. Identifier of the album to be requested.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Album].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Album> get(
    core.String albumId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/albums/' + core.Uri.encodeFull('$albumId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Album.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all albums shown to a user in the Albums tab of the Google Photos
  /// app.
  ///
  /// Request parameters:
  ///
  /// [excludeNonAppCreatedData] - If set, the results exclude media items that
  /// were not created by this app. Defaults to false (all albums are returned).
  /// This field is ignored if the photoslibrary.readonly.appcreateddata scope
  /// is used.
  ///
  /// [pageSize] - Maximum number of albums to return in the response. Fewer
  /// albums might be returned than the specified number. The default `pageSize`
  /// is 20, the maximum is 50.
  ///
  /// [pageToken] - A continuation token to get the next page of the results.
  /// Adding this to the request returns the rows after the `pageToken`. The
  /// `pageToken` should be the value returned in the `nextPageToken` parameter
  /// in the response to the `listAlbums` request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAlbumsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAlbumsResponse> list({
    core.bool? excludeNonAppCreatedData,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (excludeNonAppCreatedData != null)
        'excludeNonAppCreatedData': ['${excludeNonAppCreatedData}'],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/albums';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAlbumsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update the album with the specified `id`.
  ///
  /// Only the `id`, `title` and `cover_photo_media_item_id` fields of the album
  /// are read. The album must have been created by the developer via the API
  /// and must be owned by the user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [id] - Identifier for the album. This is a persistent identifier that can
  /// be used between sessions to identify this album.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [updateMask] - Required. Indicate what fields in the provided album to
  /// update. The only valid values are `title` and `cover_photo_media_item_id`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Album].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Album> patch(
    Album request,
    core.String id, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/albums/' + core.Uri.encodeFull('$id');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Album.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Marks an album as shared and accessible to other users.
  ///
  /// This action can only be performed on albums which were created by the
  /// developer via the API.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [albumId] - Required. Identifier of the album to be shared. This `albumId`
  /// must belong to an album created by the developer.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ShareAlbumResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ShareAlbumResponse> share(
    ShareAlbumRequest request,
    core.String albumId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/albums/' + core.Uri.encodeFull('$albumId') + ':share';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ShareAlbumResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Marks a previously shared album as private.
  ///
  /// This means that the album is no longer shared and all the non-owners will
  /// lose access to the album. All non-owner content will be removed from the
  /// album. If a non-owner has previously added the album to their library,
  /// they will retain all photos in their library. This action can only be
  /// performed on albums which were created by the developer via the API.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [albumId] - Required. Identifier of the album to be unshared. This album
  /// id must belong to an album created by the developer.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UnshareAlbumResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UnshareAlbumResponse> unshare(
    UnshareAlbumRequest request,
    core.String albumId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/albums/' + core.Uri.encodeFull('$albumId') + ':unshare';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return UnshareAlbumResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class MediaItemsResource {
  final commons.ApiRequester _requester;

  MediaItemsResource(commons.ApiRequester client) : _requester = client;

  /// Creates one or more media items in a user's Google Photos library.
  ///
  /// This is the second step for creating a media item. For details regarding
  /// Step 1, uploading the raw bytes to a Google Server, see Uploading media.
  /// This call adds the media item to the library. If an album `id` is
  /// specified, the call adds the media item to the album too. Each album can
  /// contain up to 20,000 media items. By default, the media item will be added
  /// to the end of the library or album. If an album `id` and position are both
  /// defined, the media item is added to the album at the specified position.
  /// If the call contains multiple media items, they're added at the specified
  /// position. If you are creating a media item in a shared album where you are
  /// not the owner, you are not allowed to position the media item. Doing so
  /// will result in a `BAD REQUEST` error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchCreateMediaItemsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchCreateMediaItemsResponse> batchCreate(
    BatchCreateMediaItemsRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/mediaItems:batchCreate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BatchCreateMediaItemsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of media items for the specified media item identifiers.
  ///
  /// Items are returned in the same order as the supplied identifiers.
  ///
  /// Request parameters:
  ///
  /// [mediaItemIds] - Required. Identifiers of the media items to be requested.
  /// Must not contain repeated identifiers and cannot be empty. The maximum
  /// number of media items that can be retrieved in one call is 50.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchGetMediaItemsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchGetMediaItemsResponse> batchGet({
    core.List<core.String>? mediaItemIds,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (mediaItemIds != null) 'mediaItemIds': mediaItemIds,
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/mediaItems:batchGet';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return BatchGetMediaItemsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the media item for the specified media item identifier.
  ///
  /// Request parameters:
  ///
  /// [mediaItemId] - Required. Identifier of the media item to be requested.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MediaItem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MediaItem> get(
    core.String mediaItemId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/mediaItems/' + core.Uri.encodeFull('$mediaItemId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return MediaItem.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// List all media items from a user's Google Photos library.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Maximum number of media items to return in the response.
  /// Fewer media items might be returned than the specified number. The default
  /// `pageSize` is 25, the maximum is 100.
  ///
  /// [pageToken] - A continuation token to get the next page of the results.
  /// Adding this to the request returns the rows after the `pageToken`. The
  /// `pageToken` should be the value returned in the `nextPageToken` parameter
  /// in the response to the `listMediaItems` request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMediaItemsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMediaItemsResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/mediaItems';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListMediaItemsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update the media item with the specified `id`.
  ///
  /// Only the `id` and `description` fields of the media item are read. The
  /// media item must have been created by the developer via the API and must be
  /// owned by the user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [id] - Identifier for the media item. This is a persistent identifier that
  /// can be used between sessions to identify this media item.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [updateMask] - Required. Indicate what fields in the provided media item
  /// to update. The only valid value is `description`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MediaItem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MediaItem> patch(
    MediaItem request,
    core.String id, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/mediaItems/' + core.Uri.encodeFull('$id');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return MediaItem.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Searches for media items in a user's Google Photos library.
  ///
  /// If no filters are set, then all media items in the user's library are
  /// returned. If an album is set, all media items in the specified album are
  /// returned. If filters are specified, media items that match the filters
  /// from the user's library are listed. If you set both the album and the
  /// filters, the request results in an error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchMediaItemsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchMediaItemsResponse> search(
    SearchMediaItemsRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/mediaItems:search';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SearchMediaItemsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class SharedAlbumsResource {
  final commons.ApiRequester _requester;

  SharedAlbumsResource(commons.ApiRequester client) : _requester = client;

  /// Returns the album based on the specified `shareToken`.
  ///
  /// Request parameters:
  ///
  /// [shareToken] - Required. Share token of the album to be requested.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Album].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Album> get(
    core.String shareToken, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/sharedAlbums/' + core.Uri.encodeFull('$shareToken');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Album.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Joins a shared album on behalf of the Google Photos user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [JoinSharedAlbumResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<JoinSharedAlbumResponse> join(
    JoinSharedAlbumRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/sharedAlbums:join';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return JoinSharedAlbumResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Leaves a previously-joined shared album on behalf of the Google Photos
  /// user.
  ///
  /// The user must not own this album.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LeaveSharedAlbumResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LeaveSharedAlbumResponse> leave(
    LeaveSharedAlbumRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/sharedAlbums:leave';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return LeaveSharedAlbumResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all shared albums available in the Sharing tab of the user's Google
  /// Photos app.
  ///
  /// Request parameters:
  ///
  /// [excludeNonAppCreatedData] - If set, the results exclude media items that
  /// were not created by this app. Defaults to false (all albums are returned).
  /// This field is ignored if the photoslibrary.readonly.appcreateddata scope
  /// is used.
  ///
  /// [pageSize] - Maximum number of albums to return in the response. Fewer
  /// albums might be returned than the specified number. The default `pageSize`
  /// is 20, the maximum is 50.
  ///
  /// [pageToken] - A continuation token to get the next page of the results.
  /// Adding this to the request returns the rows after the `pageToken`. The
  /// `pageToken` should be the value returned in the `nextPageToken` parameter
  /// in the response to the `listSharedAlbums` request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSharedAlbumsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSharedAlbumsResponse> list({
    core.bool? excludeNonAppCreatedData,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (excludeNonAppCreatedData != null)
        'excludeNonAppCreatedData': ['${excludeNonAppCreatedData}'],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/sharedAlbums';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListSharedAlbumsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Request to add an enrichment to a specific album at a specific position.
class AddEnrichmentToAlbumRequest {
  /// The position in the album where the enrichment is to be inserted.
  ///
  /// Required.
  AlbumPosition? albumPosition;

  /// The enrichment to be added.
  ///
  /// Required.
  NewEnrichmentItem? newEnrichmentItem;

  AddEnrichmentToAlbumRequest({
    this.albumPosition,
    this.newEnrichmentItem,
  });

  AddEnrichmentToAlbumRequest.fromJson(core.Map _json)
      : this(
          albumPosition: _json.containsKey('albumPosition')
              ? AlbumPosition.fromJson(
                  _json['albumPosition'] as core.Map<core.String, core.dynamic>)
              : null,
          newEnrichmentItem: _json.containsKey('newEnrichmentItem')
              ? NewEnrichmentItem.fromJson(_json['newEnrichmentItem']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (albumPosition != null) 'albumPosition': albumPosition!,
        if (newEnrichmentItem != null) 'newEnrichmentItem': newEnrichmentItem!,
      };
}

/// The enrichment item that's created.
class AddEnrichmentToAlbumResponse {
  /// Enrichment which was added.
  ///
  /// Output only.
  EnrichmentItem? enrichmentItem;

  AddEnrichmentToAlbumResponse({
    this.enrichmentItem,
  });

  AddEnrichmentToAlbumResponse.fromJson(core.Map _json)
      : this(
          enrichmentItem: _json.containsKey('enrichmentItem')
              ? EnrichmentItem.fromJson(_json['enrichmentItem']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enrichmentItem != null) 'enrichmentItem': enrichmentItem!,
      };
}

/// Representation of an album in Google Photos.
///
/// Albums are containers for media items. If an album has been shared by the
/// application, it contains an extra `shareInfo` property.
class Album {
  /// A URL to the cover photo's bytes.
  ///
  /// This shouldn't be used as is. Parameters should be appended to this URL
  /// before use. See the
  /// [developer documentation](https://developers.google.com/photos/library/guides/access-media-items#base-urls)
  /// for a complete list of supported parameters. For example, `'=w2048-h1024'`
  /// sets the dimensions of the cover photo to have a width of 2048 px and
  /// height of 1024 px.
  ///
  /// Output only.
  core.String? coverPhotoBaseUrl;

  /// Identifier for the media item associated with the cover photo.
  core.String? coverPhotoMediaItemId;

  /// Identifier for the album.
  ///
  /// This is a persistent identifier that can be used between sessions to
  /// identify this album.
  core.String? id;

  /// True if you can create media items in this album.
  ///
  /// This field is based on the scopes granted and permissions of the album. If
  /// the scopes are changed or permissions of the album are changed, this field
  /// is updated.
  ///
  /// Output only.
  core.bool? isWriteable;

  /// The number of media items in the album.
  ///
  /// Output only.
  core.String? mediaItemsCount;

  /// Google Photos URL for the album.
  ///
  /// The user needs to be signed in to their Google Photos account to access
  /// this link.
  ///
  /// Output only.
  core.String? productUrl;

  /// Information related to shared albums.
  ///
  /// This field is only populated if the album is a shared album, the developer
  /// created the album and the user has granted the `photoslibrary.sharing`
  /// scope.
  ///
  /// Output only.
  ShareInfo? shareInfo;

  /// Name of the album displayed to the user in their Google Photos account.
  ///
  /// This string shouldn't be more than 500 characters.
  core.String? title;

  Album({
    this.coverPhotoBaseUrl,
    this.coverPhotoMediaItemId,
    this.id,
    this.isWriteable,
    this.mediaItemsCount,
    this.productUrl,
    this.shareInfo,
    this.title,
  });

  Album.fromJson(core.Map _json)
      : this(
          coverPhotoBaseUrl: _json.containsKey('coverPhotoBaseUrl')
              ? _json['coverPhotoBaseUrl'] as core.String
              : null,
          coverPhotoMediaItemId: _json.containsKey('coverPhotoMediaItemId')
              ? _json['coverPhotoMediaItemId'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          isWriteable: _json.containsKey('isWriteable')
              ? _json['isWriteable'] as core.bool
              : null,
          mediaItemsCount: _json.containsKey('mediaItemsCount')
              ? _json['mediaItemsCount'] as core.String
              : null,
          productUrl: _json.containsKey('productUrl')
              ? _json['productUrl'] as core.String
              : null,
          shareInfo: _json.containsKey('shareInfo')
              ? ShareInfo.fromJson(
                  _json['shareInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (coverPhotoBaseUrl != null) 'coverPhotoBaseUrl': coverPhotoBaseUrl!,
        if (coverPhotoMediaItemId != null)
          'coverPhotoMediaItemId': coverPhotoMediaItemId!,
        if (id != null) 'id': id!,
        if (isWriteable != null) 'isWriteable': isWriteable!,
        if (mediaItemsCount != null) 'mediaItemsCount': mediaItemsCount!,
        if (productUrl != null) 'productUrl': productUrl!,
        if (shareInfo != null) 'shareInfo': shareInfo!,
        if (title != null) 'title': title!,
      };
}

/// Specifies a position in an album.
class AlbumPosition {
  /// Type of position, for a media or enrichment item.
  /// Possible string values are:
  /// - "POSITION_TYPE_UNSPECIFIED" : Default value if this enum isn't set.
  /// - "FIRST_IN_ALBUM" : At the beginning of the album.
  /// - "LAST_IN_ALBUM" : At the end of the album.
  /// - "AFTER_MEDIA_ITEM" : After a media item.
  /// - "AFTER_ENRICHMENT_ITEM" : After an enrichment item.
  core.String? position;

  /// The enrichment item to which the position is relative to.
  ///
  /// Only used when position type is AFTER_ENRICHMENT_ITEM.
  core.String? relativeEnrichmentItemId;

  /// The media item to which the position is relative to.
  ///
  /// Only used when position type is AFTER_MEDIA_ITEM.
  core.String? relativeMediaItemId;

  AlbumPosition({
    this.position,
    this.relativeEnrichmentItemId,
    this.relativeMediaItemId,
  });

  AlbumPosition.fromJson(core.Map _json)
      : this(
          position: _json.containsKey('position')
              ? _json['position'] as core.String
              : null,
          relativeEnrichmentItemId:
              _json.containsKey('relativeEnrichmentItemId')
                  ? _json['relativeEnrichmentItemId'] as core.String
                  : null,
          relativeMediaItemId: _json.containsKey('relativeMediaItemId')
              ? _json['relativeMediaItemId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (position != null) 'position': position!,
        if (relativeEnrichmentItemId != null)
          'relativeEnrichmentItemId': relativeEnrichmentItemId!,
        if (relativeMediaItemId != null)
          'relativeMediaItemId': relativeMediaItemId!,
      };
}

/// Request to add media items to an album.
class BatchAddMediaItemsToAlbumRequest {
  /// Identifiers of the MediaItems to be added.
  ///
  /// The maximum number of media items that can be added in one call is 50.
  ///
  /// Required.
  core.List<core.String>? mediaItemIds;

  BatchAddMediaItemsToAlbumRequest({
    this.mediaItemIds,
  });

  BatchAddMediaItemsToAlbumRequest.fromJson(core.Map _json)
      : this(
          mediaItemIds: _json.containsKey('mediaItemIds')
              ? (_json['mediaItemIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mediaItemIds != null) 'mediaItemIds': mediaItemIds!,
      };
}

/// Response for adding media items to an album.
typedef BatchAddMediaItemsToAlbumResponse = $Empty;

/// Request to create one or more media items in a user's Google Photos library.
///
/// If an `albumid` is specified, the media items are also added to that album.
/// `albumPosition` is optional and can only be specified if an `albumId` is
/// set.
class BatchCreateMediaItemsRequest {
  /// Identifier of the album where the media items are added.
  ///
  /// The media items are also added to the user's library. This is an optional
  /// field.
  core.String? albumId;

  /// Position in the album where the media items are added.
  ///
  /// If not specified, the media items are added to the end of the album (as
  /// per the default value, that is, `LAST_IN_ALBUM`). The request fails if
  /// this field is set and the `albumId` is not specified. The request will
  /// also fail if you set the field and are not the owner of the shared album.
  AlbumPosition? albumPosition;

  /// List of media items to be created.
  ///
  /// Required.
  core.List<NewMediaItem>? newMediaItems;

  BatchCreateMediaItemsRequest({
    this.albumId,
    this.albumPosition,
    this.newMediaItems,
  });

  BatchCreateMediaItemsRequest.fromJson(core.Map _json)
      : this(
          albumId: _json.containsKey('albumId')
              ? _json['albumId'] as core.String
              : null,
          albumPosition: _json.containsKey('albumPosition')
              ? AlbumPosition.fromJson(
                  _json['albumPosition'] as core.Map<core.String, core.dynamic>)
              : null,
          newMediaItems: _json.containsKey('newMediaItems')
              ? (_json['newMediaItems'] as core.List)
                  .map((value) => NewMediaItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (albumId != null) 'albumId': albumId!,
        if (albumPosition != null) 'albumPosition': albumPosition!,
        if (newMediaItems != null) 'newMediaItems': newMediaItems!,
      };
}

/// List of media items created.
class BatchCreateMediaItemsResponse {
  /// List of media items created.
  ///
  /// Output only.
  core.List<NewMediaItemResult>? newMediaItemResults;

  BatchCreateMediaItemsResponse({
    this.newMediaItemResults,
  });

  BatchCreateMediaItemsResponse.fromJson(core.Map _json)
      : this(
          newMediaItemResults: _json.containsKey('newMediaItemResults')
              ? (_json['newMediaItemResults'] as core.List)
                  .map((value) => NewMediaItemResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newMediaItemResults != null)
          'newMediaItemResults': newMediaItemResults!,
      };
}

/// Response to retrieve a list of media items.
class BatchGetMediaItemsResponse {
  /// List of media items retrieved.
  ///
  /// Note that even if the call to BatchGetMediaItems succeeds, there may have
  /// been failures for some media items in the batch. These failures are
  /// indicated in each MediaItemResult.status.
  ///
  /// Output only.
  core.List<MediaItemResult>? mediaItemResults;

  BatchGetMediaItemsResponse({
    this.mediaItemResults,
  });

  BatchGetMediaItemsResponse.fromJson(core.Map _json)
      : this(
          mediaItemResults: _json.containsKey('mediaItemResults')
              ? (_json['mediaItemResults'] as core.List)
                  .map((value) => MediaItemResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mediaItemResults != null) 'mediaItemResults': mediaItemResults!,
      };
}

/// Request to remove a list of media items from an album.
class BatchRemoveMediaItemsFromAlbumRequest {
  /// Identifiers of the MediaItems to be removed.
  ///
  /// Must not contain repeated identifiers and cannot be empty. The maximum
  /// number of media items that can be removed in one call is 50.
  ///
  /// Required.
  core.List<core.String>? mediaItemIds;

  BatchRemoveMediaItemsFromAlbumRequest({
    this.mediaItemIds,
  });

  BatchRemoveMediaItemsFromAlbumRequest.fromJson(core.Map _json)
      : this(
          mediaItemIds: _json.containsKey('mediaItemIds')
              ? (_json['mediaItemIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mediaItemIds != null) 'mediaItemIds': mediaItemIds!,
      };
}

/// Response for successfully removing all specified media items from the album.
typedef BatchRemoveMediaItemsFromAlbumResponse = $Empty;

/// This filter allows you to return media items based on the content type.
///
/// It's possible to specify a list of categories to include, and/or a list of
/// categories to exclude. Within each list, the categories are combined with an
/// OR. The content filter `includedContentCategories`: \[c1, c2, c3\] would get
/// media items that contain (c1 OR c2 OR c3). The content filter
/// `excludedContentCategories`: \[c1, c2, c3\] would NOT get media items that
/// contain (c1 OR c2 OR c3). You can also include some categories while
/// excluding others, as in this example: `includedContentCategories`: \[c1,
/// c2\], `excludedContentCategories`: \[c3, c4\] The previous example would get
/// media items that contain (c1 OR c2) AND NOT (c3 OR c4). A category that
/// appears in `includedContentategories` must not appear in
/// `excludedContentCategories`.
class ContentFilter {
  /// The set of categories which are not to be included in the media item
  /// search results.
  ///
  /// The items in the set are ORed. There's a maximum of 10
  /// `excludedContentCategories` per request.
  core.List<core.String>? excludedContentCategories;

  /// The set of categories to be included in the media item search results.
  ///
  /// The items in the set are ORed. There's a maximum of 10
  /// `includedContentCategories` per request.
  core.List<core.String>? includedContentCategories;

  ContentFilter({
    this.excludedContentCategories,
    this.includedContentCategories,
  });

  ContentFilter.fromJson(core.Map _json)
      : this(
          excludedContentCategories:
              _json.containsKey('excludedContentCategories')
                  ? (_json['excludedContentCategories'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          includedContentCategories:
              _json.containsKey('includedContentCategories')
                  ? (_json['includedContentCategories'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludedContentCategories != null)
          'excludedContentCategories': excludedContentCategories!,
        if (includedContentCategories != null)
          'includedContentCategories': includedContentCategories!,
      };
}

/// Information about the user who added the media item.
///
/// Note that this information is included only if the media item is within a
/// shared album created by your app and you have the sharing scope.
class ContributorInfo {
  /// Display name of the contributor.
  core.String? displayName;

  /// URL to the profile picture of the contributor.
  core.String? profilePictureBaseUrl;

  ContributorInfo({
    this.displayName,
    this.profilePictureBaseUrl,
  });

  ContributorInfo.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          profilePictureBaseUrl: _json.containsKey('profilePictureBaseUrl')
              ? _json['profilePictureBaseUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (profilePictureBaseUrl != null)
          'profilePictureBaseUrl': profilePictureBaseUrl!,
      };
}

/// Request to create an album in Google Photos.
class CreateAlbumRequest {
  /// The album to be created.
  ///
  /// Required.
  Album? album;

  CreateAlbumRequest({
    this.album,
  });

  CreateAlbumRequest.fromJson(core.Map _json)
      : this(
          album: _json.containsKey('album')
              ? Album.fromJson(
                  _json['album'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (album != null) 'album': album!,
      };
}

/// Represents a whole calendar date.
///
/// Set `day` to 0 when only the month and year are significant, for example,
/// all of December 2018. Set `day` and `month` to 0 if only the year is
/// significant, for example, the entire of 2018. Set `year` to 0 when only the
/// day and month are significant, for example, an anniversary or birthday.
/// Unsupported: Setting all values to 0, only `month` to 0, or both `day` and
/// `year` to 0 at the same time.
class Date {
  /// Day of month.
  ///
  /// Must be from 1 to 31 and valid for the year and month, or 0 if specifying
  /// a year/month where the day isn't significant.
  core.int? day;

  /// Month of a year.
  ///
  /// Must be from 1 to 12, or 0 to specify a year without a month and day.
  core.int? month;

  /// Year of the date.
  ///
  /// Must be from 1 to 9999, or 0 to specify a date without a year.
  core.int? year;

  Date({
    this.day,
    this.month,
    this.year,
  });

  Date.fromJson(core.Map _json)
      : this(
          day: _json.containsKey('day') ? _json['day'] as core.int : null,
          month: _json.containsKey('month') ? _json['month'] as core.int : null,
          year: _json.containsKey('year') ? _json['year'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (month != null) 'month': month!,
        if (year != null) 'year': year!,
      };
}

/// This filter defines the allowed dates or date ranges for the media returned.
///
/// It's possible to pick a set of specific dates and a set of date ranges.
class DateFilter {
  /// List of dates that match the media items' creation date.
  ///
  /// A maximum of 5 dates can be included per request.
  core.List<Date>? dates;

  /// List of dates ranges that match the media items' creation date.
  ///
  /// A maximum of 5 dates ranges can be included per request.
  core.List<DateRange>? ranges;

  DateFilter({
    this.dates,
    this.ranges,
  });

  DateFilter.fromJson(core.Map _json)
      : this(
          dates: _json.containsKey('dates')
              ? (_json['dates'] as core.List)
                  .map((value) => Date.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          ranges: _json.containsKey('ranges')
              ? (_json['ranges'] as core.List)
                  .map((value) => DateRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dates != null) 'dates': dates!,
        if (ranges != null) 'ranges': ranges!,
      };
}

/// Defines a range of dates.
///
/// Both dates must be of the same format. For more information, see Date.
class DateRange {
  /// The end date (included as part of the range).
  ///
  /// It must be specified in the same format as the start date.
  Date? endDate;

  /// The start date (included as part of the range) in one of the formats
  /// described.
  Date? startDate;

  DateRange({
    this.endDate,
    this.startDate,
  });

  DateRange.fromJson(core.Map _json)
      : this(
          endDate: _json.containsKey('endDate')
              ? Date.fromJson(
                  _json['endDate'] as core.Map<core.String, core.dynamic>)
              : null,
          startDate: _json.containsKey('startDate')
              ? Date.fromJson(
                  _json['startDate'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endDate != null) 'endDate': endDate!,
        if (startDate != null) 'startDate': startDate!,
      };
}

/// An enrichment item.
class EnrichmentItem {
  /// Identifier of the enrichment item.
  core.String? id;

  EnrichmentItem({
    this.id,
  });

  EnrichmentItem.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
      };
}

/// This filter defines the features that the media items should have.
class FeatureFilter {
  /// The set of features to be included in the media item search results.
  ///
  /// The items in the set are ORed and may match any of the specified features.
  core.List<core.String>? includedFeatures;

  FeatureFilter({
    this.includedFeatures,
  });

  FeatureFilter.fromJson(core.Map _json)
      : this(
          includedFeatures: _json.containsKey('includedFeatures')
              ? (_json['includedFeatures'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includedFeatures != null) 'includedFeatures': includedFeatures!,
      };
}

/// Filters that can be applied to a media item search.
///
/// If multiple filter options are specified, they're treated as AND with each
/// other.
class Filters {
  /// Filters the media items based on their content.
  ContentFilter? contentFilter;

  /// Filters the media items based on their creation date.
  DateFilter? dateFilter;

  /// If set, the results exclude media items that were not created by this app.
  ///
  /// Defaults to false (all media items are returned). This field is ignored if
  /// the photoslibrary.readonly.appcreateddata scope is used.
  core.bool? excludeNonAppCreatedData;

  /// Filters the media items based on their features.
  FeatureFilter? featureFilter;

  /// If set, the results include media items that the user has archived.
  ///
  /// Defaults to false (archived media items aren't included).
  core.bool? includeArchivedMedia;

  /// Filters the media items based on the type of media.
  MediaTypeFilter? mediaTypeFilter;

  Filters({
    this.contentFilter,
    this.dateFilter,
    this.excludeNonAppCreatedData,
    this.featureFilter,
    this.includeArchivedMedia,
    this.mediaTypeFilter,
  });

  Filters.fromJson(core.Map _json)
      : this(
          contentFilter: _json.containsKey('contentFilter')
              ? ContentFilter.fromJson(
                  _json['contentFilter'] as core.Map<core.String, core.dynamic>)
              : null,
          dateFilter: _json.containsKey('dateFilter')
              ? DateFilter.fromJson(
                  _json['dateFilter'] as core.Map<core.String, core.dynamic>)
              : null,
          excludeNonAppCreatedData:
              _json.containsKey('excludeNonAppCreatedData')
                  ? _json['excludeNonAppCreatedData'] as core.bool
                  : null,
          featureFilter: _json.containsKey('featureFilter')
              ? FeatureFilter.fromJson(
                  _json['featureFilter'] as core.Map<core.String, core.dynamic>)
              : null,
          includeArchivedMedia: _json.containsKey('includeArchivedMedia')
              ? _json['includeArchivedMedia'] as core.bool
              : null,
          mediaTypeFilter: _json.containsKey('mediaTypeFilter')
              ? MediaTypeFilter.fromJson(_json['mediaTypeFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentFilter != null) 'contentFilter': contentFilter!,
        if (dateFilter != null) 'dateFilter': dateFilter!,
        if (excludeNonAppCreatedData != null)
          'excludeNonAppCreatedData': excludeNonAppCreatedData!,
        if (featureFilter != null) 'featureFilter': featureFilter!,
        if (includeArchivedMedia != null)
          'includeArchivedMedia': includeArchivedMedia!,
        if (mediaTypeFilter != null) 'mediaTypeFilter': mediaTypeFilter!,
      };
}

/// Request to join a shared album on behalf of the user.
///
/// This uses a shareToken which can be acquired via the shareAlbum or
/// listSharedAlbums calls.
class JoinSharedAlbumRequest {
  /// Token to join the shared album on behalf of the user.
  ///
  /// Required.
  core.String? shareToken;

  JoinSharedAlbumRequest({
    this.shareToken,
  });

  JoinSharedAlbumRequest.fromJson(core.Map _json)
      : this(
          shareToken: _json.containsKey('shareToken')
              ? _json['shareToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (shareToken != null) 'shareToken': shareToken!,
      };
}

/// Response to successfully joining the shared album on behalf of the user.
class JoinSharedAlbumResponse {
  /// Shared album that the user has joined.
  Album? album;

  JoinSharedAlbumResponse({
    this.album,
  });

  JoinSharedAlbumResponse.fromJson(core.Map _json)
      : this(
          album: _json.containsKey('album')
              ? Album.fromJson(
                  _json['album'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (album != null) 'album': album!,
      };
}

/// An object that represents a latitude/longitude pair.
///
/// This is expressed as a pair of doubles to represent degrees latitude and
/// degrees longitude. Unless specified otherwise, this object must conform to
/// the WGS84 standard. Values must be within normalized ranges.
typedef LatLng = $LatLng;

/// Request to leave a shared album on behalf of the user.
///
/// This uses a shareToken which can be acquired via the or listSharedAlbums or
/// getAlbum calls.
class LeaveSharedAlbumRequest {
  /// Token to leave the shared album on behalf of the user.
  ///
  /// Required.
  core.String? shareToken;

  LeaveSharedAlbumRequest({
    this.shareToken,
  });

  LeaveSharedAlbumRequest.fromJson(core.Map _json)
      : this(
          shareToken: _json.containsKey('shareToken')
              ? _json['shareToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (shareToken != null) 'shareToken': shareToken!,
      };
}

/// Response to successfully leaving the shared album on behalf of the user.
typedef LeaveSharedAlbumResponse = $Empty;

/// List of albums requested.
class ListAlbumsResponse {
  /// List of albums shown in the Albums tab of the user's Google Photos app.
  ///
  /// Output only.
  core.List<Album>? albums;

  /// Token to use to get the next set of albums.
  ///
  /// Populated if there are more albums to retrieve for this request.
  ///
  /// Output only.
  core.String? nextPageToken;

  ListAlbumsResponse({
    this.albums,
    this.nextPageToken,
  });

  ListAlbumsResponse.fromJson(core.Map _json)
      : this(
          albums: _json.containsKey('albums')
              ? (_json['albums'] as core.List)
                  .map((value) => Album.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (albums != null) 'albums': albums!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// List of all media items from the user's Google Photos library.
class ListMediaItemsResponse {
  /// List of media items in the user's library.
  ///
  /// Output only.
  core.List<MediaItem>? mediaItems;

  /// Token to use to get the next set of media items.
  ///
  /// Its presence is the only reliable indicator of more media items being
  /// available in the next request.
  ///
  /// Output only.
  core.String? nextPageToken;

  ListMediaItemsResponse({
    this.mediaItems,
    this.nextPageToken,
  });

  ListMediaItemsResponse.fromJson(core.Map _json)
      : this(
          mediaItems: _json.containsKey('mediaItems')
              ? (_json['mediaItems'] as core.List)
                  .map((value) => MediaItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mediaItems != null) 'mediaItems': mediaItems!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// List of shared albums requested.
class ListSharedAlbumsResponse {
  /// Token to use to get the next set of shared albums.
  ///
  /// Populated if there are more shared albums to retrieve for this request.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// List of shared albums.
  ///
  /// Output only.
  core.List<Album>? sharedAlbums;

  ListSharedAlbumsResponse({
    this.nextPageToken,
    this.sharedAlbums,
  });

  ListSharedAlbumsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          sharedAlbums: _json.containsKey('sharedAlbums')
              ? (_json['sharedAlbums'] as core.List)
                  .map((value) => Album.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (sharedAlbums != null) 'sharedAlbums': sharedAlbums!,
      };
}

/// Represents a physical location.
class Location {
  /// Position of the location on the map.
  LatLng? latlng;

  /// Name of the location to be displayed.
  core.String? locationName;

  Location({
    this.latlng,
    this.locationName,
  });

  Location.fromJson(core.Map _json)
      : this(
          latlng: _json.containsKey('latlng')
              ? LatLng.fromJson(
                  _json['latlng'] as core.Map<core.String, core.dynamic>)
              : null,
          locationName: _json.containsKey('locationName')
              ? _json['locationName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (latlng != null) 'latlng': latlng!,
        if (locationName != null) 'locationName': locationName!,
      };
}

/// An enrichment containing a single location.
class LocationEnrichment {
  /// Location for this enrichment item.
  Location? location;

  LocationEnrichment({
    this.location,
  });

  LocationEnrichment.fromJson(core.Map _json)
      : this(
          location: _json.containsKey('location')
              ? Location.fromJson(
                  _json['location'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
      };
}

/// An enrichment containing a map, showing origin and destination locations.
class MapEnrichment {
  /// Destination location for this enrichemt item.
  Location? destination;

  /// Origin location for this enrichment item.
  Location? origin;

  MapEnrichment({
    this.destination,
    this.origin,
  });

  MapEnrichment.fromJson(core.Map _json)
      : this(
          destination: _json.containsKey('destination')
              ? Location.fromJson(
                  _json['destination'] as core.Map<core.String, core.dynamic>)
              : null,
          origin: _json.containsKey('origin')
              ? Location.fromJson(
                  _json['origin'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destination != null) 'destination': destination!,
        if (origin != null) 'origin': origin!,
      };
}

/// Representation of a media item (such as a photo or video) in Google Photos.
class MediaItem {
  /// A URL to the media item's bytes.
  ///
  /// This shouldn't be used as is. Parameters should be appended to this URL
  /// before use. See the
  /// [developer documentation](https://developers.google.com/photos/library/guides/access-media-items#base-urls)
  /// for a complete list of supported parameters. For example, `'=w2048-h1024'`
  /// will set the dimensions of a media item of type photo to have a width of
  /// 2048 px and height of 1024 px.
  core.String? baseUrl;

  /// Information about the user who added this media item.
  ///
  /// Note that this is only included when using mediaItems.search with the ID
  /// of a shared album. The album must be created by your app and you must have
  /// the sharing scope.
  ContributorInfo? contributorInfo;

  /// Description of the media item.
  ///
  /// This is shown to the user in the item's info section in the Google Photos
  /// app. Must be shorter than 1000 characters. Only include text written by
  /// users. Descriptions should add context and help users understand media. Do
  /// not include any auto-generated strings such as filenames, tags, and other
  /// metadata.
  core.String? description;

  /// Filename of the media item.
  ///
  /// This is shown to the user in the item's info section in the Google Photos
  /// app.
  core.String? filename;

  /// Identifier for the media item.
  ///
  /// This is a persistent identifier that can be used between sessions to
  /// identify this media item.
  core.String? id;

  /// Metadata related to the media item, such as, height, width, or creation
  /// time.
  MediaMetadata? mediaMetadata;

  /// MIME type of the media item.
  ///
  /// For example, `image/jpeg`.
  core.String? mimeType;

  /// Google Photos URL for the media item.
  ///
  /// This link is available to the user only if they're signed in. When
  /// retrieved from an album search, the URL points to the item inside the
  /// album.
  core.String? productUrl;

  MediaItem({
    this.baseUrl,
    this.contributorInfo,
    this.description,
    this.filename,
    this.id,
    this.mediaMetadata,
    this.mimeType,
    this.productUrl,
  });

  MediaItem.fromJson(core.Map _json)
      : this(
          baseUrl: _json.containsKey('baseUrl')
              ? _json['baseUrl'] as core.String
              : null,
          contributorInfo: _json.containsKey('contributorInfo')
              ? ContributorInfo.fromJson(_json['contributorInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          filename: _json.containsKey('filename')
              ? _json['filename'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          mediaMetadata: _json.containsKey('mediaMetadata')
              ? MediaMetadata.fromJson(
                  _json['mediaMetadata'] as core.Map<core.String, core.dynamic>)
              : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
          productUrl: _json.containsKey('productUrl')
              ? _json['productUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseUrl != null) 'baseUrl': baseUrl!,
        if (contributorInfo != null) 'contributorInfo': contributorInfo!,
        if (description != null) 'description': description!,
        if (filename != null) 'filename': filename!,
        if (id != null) 'id': id!,
        if (mediaMetadata != null) 'mediaMetadata': mediaMetadata!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (productUrl != null) 'productUrl': productUrl!,
      };
}

/// Result of retrieving a media item.
class MediaItemResult {
  /// Media item retrieved from the user's library.
  ///
  /// It's populated if no errors occurred and the media item was fetched
  /// successfully.
  MediaItem? mediaItem;

  /// If an error occurred while accessing this media item, this field is
  /// populated with information related to the error.
  ///
  /// For details regarding this field, see Status.
  Status? status;

  MediaItemResult({
    this.mediaItem,
    this.status,
  });

  MediaItemResult.fromJson(core.Map _json)
      : this(
          mediaItem: _json.containsKey('mediaItem')
              ? MediaItem.fromJson(
                  _json['mediaItem'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? Status.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mediaItem != null) 'mediaItem': mediaItem!,
        if (status != null) 'status': status!,
      };
}

/// Metadata for a media item.
class MediaMetadata {
  /// Time when the media item was first created (not when it was uploaded to
  /// Google Photos).
  core.String? creationTime;

  /// Original height (in pixels) of the media item.
  core.String? height;

  /// Metadata for a photo media type.
  Photo? photo;

  /// Metadata for a video media type.
  Video? video;

  /// Original width (in pixels) of the media item.
  core.String? width;

  MediaMetadata({
    this.creationTime,
    this.height,
    this.photo,
    this.video,
    this.width,
  });

  MediaMetadata.fromJson(core.Map _json)
      : this(
          creationTime: _json.containsKey('creationTime')
              ? _json['creationTime'] as core.String
              : null,
          height: _json.containsKey('height')
              ? _json['height'] as core.String
              : null,
          photo: _json.containsKey('photo')
              ? Photo.fromJson(
                  _json['photo'] as core.Map<core.String, core.dynamic>)
              : null,
          video: _json.containsKey('video')
              ? Video.fromJson(
                  _json['video'] as core.Map<core.String, core.dynamic>)
              : null,
          width:
              _json.containsKey('width') ? _json['width'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creationTime != null) 'creationTime': creationTime!,
        if (height != null) 'height': height!,
        if (photo != null) 'photo': photo!,
        if (video != null) 'video': video!,
        if (width != null) 'width': width!,
      };
}

/// This filter defines the type of media items to be returned, for example,
/// videos or photos.
///
/// Only one media type is supported.
class MediaTypeFilter {
  /// The types of media items to be included.
  ///
  /// This field should be populated with only one media type. If you specify
  /// multiple media types, it results in an error.
  core.List<core.String>? mediaTypes;

  MediaTypeFilter({
    this.mediaTypes,
  });

  MediaTypeFilter.fromJson(core.Map _json)
      : this(
          mediaTypes: _json.containsKey('mediaTypes')
              ? (_json['mediaTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mediaTypes != null) 'mediaTypes': mediaTypes!,
      };
}

/// A new enrichment item to be added to an album, used by the
/// `albums.addEnrichment` call.
class NewEnrichmentItem {
  /// Location to be added to the album.
  LocationEnrichment? locationEnrichment;

  /// Map to be added to the album.
  MapEnrichment? mapEnrichment;

  /// Text to be added to the album.
  TextEnrichment? textEnrichment;

  NewEnrichmentItem({
    this.locationEnrichment,
    this.mapEnrichment,
    this.textEnrichment,
  });

  NewEnrichmentItem.fromJson(core.Map _json)
      : this(
          locationEnrichment: _json.containsKey('locationEnrichment')
              ? LocationEnrichment.fromJson(_json['locationEnrichment']
                  as core.Map<core.String, core.dynamic>)
              : null,
          mapEnrichment: _json.containsKey('mapEnrichment')
              ? MapEnrichment.fromJson(
                  _json['mapEnrichment'] as core.Map<core.String, core.dynamic>)
              : null,
          textEnrichment: _json.containsKey('textEnrichment')
              ? TextEnrichment.fromJson(_json['textEnrichment']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locationEnrichment != null)
          'locationEnrichment': locationEnrichment!,
        if (mapEnrichment != null) 'mapEnrichment': mapEnrichment!,
        if (textEnrichment != null) 'textEnrichment': textEnrichment!,
      };
}

/// New media item that's created in a user's Google Photos account.
class NewMediaItem {
  /// Description of the media item.
  ///
  /// This is shown to the user in the item's info section in the Google Photos
  /// app. Must be shorter than 1000 characters. Only include text written by
  /// users. Descriptions should add context and help users understand media. Do
  /// not include any auto-generated strings such as filenames, tags, and other
  /// metadata.
  core.String? description;

  /// A new media item that has been uploaded via the included `uploadToken`.
  SimpleMediaItem? simpleMediaItem;

  NewMediaItem({
    this.description,
    this.simpleMediaItem,
  });

  NewMediaItem.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          simpleMediaItem: _json.containsKey('simpleMediaItem')
              ? SimpleMediaItem.fromJson(_json['simpleMediaItem']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (simpleMediaItem != null) 'simpleMediaItem': simpleMediaItem!,
      };
}

/// Result of creating a new media item.
class NewMediaItemResult {
  /// Media item created with the upload token.
  ///
  /// It's populated if no errors occurred and the media item was created
  /// successfully.
  MediaItem? mediaItem;

  /// If an error occurred during the creation of this media item, this field is
  /// populated with information related to the error.
  ///
  /// For details regarding this field, see Status.
  Status? status;

  /// The upload token used to create this new media item.
  core.String? uploadToken;

  NewMediaItemResult({
    this.mediaItem,
    this.status,
    this.uploadToken,
  });

  NewMediaItemResult.fromJson(core.Map _json)
      : this(
          mediaItem: _json.containsKey('mediaItem')
              ? MediaItem.fromJson(
                  _json['mediaItem'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? Status.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
          uploadToken: _json.containsKey('uploadToken')
              ? _json['uploadToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mediaItem != null) 'mediaItem': mediaItem!,
        if (status != null) 'status': status!,
        if (uploadToken != null) 'uploadToken': uploadToken!,
      };
}

/// Metadata that is specific to a photo, such as, ISO, focal length and
/// exposure time.
///
/// Some of these fields may be null or not included.
class Photo {
  /// Aperture f number of the camera lens with which the photo was taken.
  core.double? apertureFNumber;

  /// Brand of the camera with which the photo was taken.
  core.String? cameraMake;

  /// Model of the camera with which the photo was taken.
  core.String? cameraModel;

  /// Exposure time of the camera aperture when the photo was taken.
  core.String? exposureTime;

  /// Focal length of the camera lens with which the photo was taken.
  core.double? focalLength;

  /// ISO of the camera with which the photo was taken.
  core.int? isoEquivalent;

  Photo({
    this.apertureFNumber,
    this.cameraMake,
    this.cameraModel,
    this.exposureTime,
    this.focalLength,
    this.isoEquivalent,
  });

  Photo.fromJson(core.Map _json)
      : this(
          apertureFNumber: _json.containsKey('apertureFNumber')
              ? (_json['apertureFNumber'] as core.num).toDouble()
              : null,
          cameraMake: _json.containsKey('cameraMake')
              ? _json['cameraMake'] as core.String
              : null,
          cameraModel: _json.containsKey('cameraModel')
              ? _json['cameraModel'] as core.String
              : null,
          exposureTime: _json.containsKey('exposureTime')
              ? _json['exposureTime'] as core.String
              : null,
          focalLength: _json.containsKey('focalLength')
              ? (_json['focalLength'] as core.num).toDouble()
              : null,
          isoEquivalent: _json.containsKey('isoEquivalent')
              ? _json['isoEquivalent'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apertureFNumber != null) 'apertureFNumber': apertureFNumber!,
        if (cameraMake != null) 'cameraMake': cameraMake!,
        if (cameraModel != null) 'cameraModel': cameraModel!,
        if (exposureTime != null) 'exposureTime': exposureTime!,
        if (focalLength != null) 'focalLength': focalLength!,
        if (isoEquivalent != null) 'isoEquivalent': isoEquivalent!,
      };
}

/// Request to search for media items in a user's library.
///
/// If the album id is specified, this call will return the list of media items
/// in the album. If neither filters nor album id are specified, this call will
/// return all media items in a user's Google Photos library. If filters are
/// specified, this call will return all media items in the user's library that
/// fulfill the filter criteria. Filters and album id must not both be set, as
/// this will result in an invalid request.
class SearchMediaItemsRequest {
  /// Identifier of an album.
  ///
  /// If populated, lists all media items in specified album. Can't set in
  /// conjunction with any filters.
  core.String? albumId;

  /// Filters to apply to the request.
  ///
  /// Can't be set in conjunction with an `albumId`.
  Filters? filters;

  /// An optional field to specify the sort order of the search results.
  ///
  /// The `orderBy` field only works when a dateFilter is used. When this field
  /// is not specified, results are displayed newest first, oldest last by their
  /// creationTime. Providing `MediaMetadata.creation_time` displays search
  /// results in the opposite order, oldest first then newest last. To display
  /// results newest first then oldest last, include the `desc` argument as
  /// follows: `MediaMetadata.creation_time desc`. The only additional filters
  /// that can be used with this parameter are includeArchivedMedia and
  /// excludeNonAppCreatedData. No other filters are supported.
  core.String? orderBy;

  /// Maximum number of media items to return in the response.
  ///
  /// Fewer media items might be returned than the specified number. The default
  /// `pageSize` is 25, the maximum is 100.
  core.int? pageSize;

  /// A continuation token to get the next page of the results.
  ///
  /// Adding this to the request returns the rows after the `pageToken`. The
  /// `pageToken` should be the value returned in the `nextPageToken` parameter
  /// in the response to the `searchMediaItems` request.
  core.String? pageToken;

  SearchMediaItemsRequest({
    this.albumId,
    this.filters,
    this.orderBy,
    this.pageSize,
    this.pageToken,
  });

  SearchMediaItemsRequest.fromJson(core.Map _json)
      : this(
          albumId: _json.containsKey('albumId')
              ? _json['albumId'] as core.String
              : null,
          filters: _json.containsKey('filters')
              ? Filters.fromJson(
                  _json['filters'] as core.Map<core.String, core.dynamic>)
              : null,
          orderBy: _json.containsKey('orderBy')
              ? _json['orderBy'] as core.String
              : null,
          pageSize: _json.containsKey('pageSize')
              ? _json['pageSize'] as core.int
              : null,
          pageToken: _json.containsKey('pageToken')
              ? _json['pageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (albumId != null) 'albumId': albumId!,
        if (filters != null) 'filters': filters!,
        if (orderBy != null) 'orderBy': orderBy!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
      };
}

/// List of media items that match the search parameters.
class SearchMediaItemsResponse {
  /// List of media items that match the search parameters.
  ///
  /// Output only.
  core.List<MediaItem>? mediaItems;

  /// Use this token to get the next set of media items.
  ///
  /// Its presence is the only reliable indicator of more media items being
  /// available in the next request.
  ///
  /// Output only.
  core.String? nextPageToken;

  SearchMediaItemsResponse({
    this.mediaItems,
    this.nextPageToken,
  });

  SearchMediaItemsResponse.fromJson(core.Map _json)
      : this(
          mediaItems: _json.containsKey('mediaItems')
              ? (_json['mediaItems'] as core.List)
                  .map((value) => MediaItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mediaItems != null) 'mediaItems': mediaItems!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Request to make an album shared in Google Photos.
class ShareAlbumRequest {
  /// Options to be set when converting the album to a shared album.
  SharedAlbumOptions? sharedAlbumOptions;

  ShareAlbumRequest({
    this.sharedAlbumOptions,
  });

  ShareAlbumRequest.fromJson(core.Map _json)
      : this(
          sharedAlbumOptions: _json.containsKey('sharedAlbumOptions')
              ? SharedAlbumOptions.fromJson(_json['sharedAlbumOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sharedAlbumOptions != null)
          'sharedAlbumOptions': sharedAlbumOptions!,
      };
}

/// Response to successfully sharing an album.
class ShareAlbumResponse {
  /// Information about the shared album.
  ///
  /// Output only.
  ShareInfo? shareInfo;

  ShareAlbumResponse({
    this.shareInfo,
  });

  ShareAlbumResponse.fromJson(core.Map _json)
      : this(
          shareInfo: _json.containsKey('shareInfo')
              ? ShareInfo.fromJson(
                  _json['shareInfo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (shareInfo != null) 'shareInfo': shareInfo!,
      };
}

/// Information about albums that are shared.
///
/// This information is only included if you created the album, it is shared and
/// you have the sharing scope.
class ShareInfo {
  /// True if the album can be joined by users.
  core.bool? isJoinable;

  /// True if the user is joined to the album.
  ///
  /// This is always true for the owner of the album.
  core.bool? isJoined;

  /// True if the user owns the album.
  core.bool? isOwned;

  /// A token that is used to join, leave, or retrieve the details of a shared
  /// album on behalf of a user who isn't the owner.
  ///
  /// A `shareToken` is invalidated if the owner turns off link sharing in the
  /// Google Photos app, or if the album is unshared.
  core.String? shareToken;

  /// A link to the shared Google Photos album.
  ///
  /// Anyone with the link can view the contents of the album, so it should be
  /// treated with care. The `shareableUrl` parameter is only returned if the
  /// album has link sharing turned on. If a user is already joined to an album
  /// that isn't link-shared, they can use the album's
  /// \[`productUrl`\](https://developers.google.com/photos/library/reference/rest/v1/albums#Album)
  /// to access it instead. A `shareableUrl` is invalidated if the owner turns
  /// off link sharing in the Google Photos app, or if the album is unshared.
  core.String? shareableUrl;

  /// Options that control whether someone can add media items to, or comment on
  /// a shared album.
  SharedAlbumOptions? sharedAlbumOptions;

  ShareInfo({
    this.isJoinable,
    this.isJoined,
    this.isOwned,
    this.shareToken,
    this.shareableUrl,
    this.sharedAlbumOptions,
  });

  ShareInfo.fromJson(core.Map _json)
      : this(
          isJoinable: _json.containsKey('isJoinable')
              ? _json['isJoinable'] as core.bool
              : null,
          isJoined: _json.containsKey('isJoined')
              ? _json['isJoined'] as core.bool
              : null,
          isOwned: _json.containsKey('isOwned')
              ? _json['isOwned'] as core.bool
              : null,
          shareToken: _json.containsKey('shareToken')
              ? _json['shareToken'] as core.String
              : null,
          shareableUrl: _json.containsKey('shareableUrl')
              ? _json['shareableUrl'] as core.String
              : null,
          sharedAlbumOptions: _json.containsKey('sharedAlbumOptions')
              ? SharedAlbumOptions.fromJson(_json['sharedAlbumOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (isJoinable != null) 'isJoinable': isJoinable!,
        if (isJoined != null) 'isJoined': isJoined!,
        if (isOwned != null) 'isOwned': isOwned!,
        if (shareToken != null) 'shareToken': shareToken!,
        if (shareableUrl != null) 'shareableUrl': shareableUrl!,
        if (sharedAlbumOptions != null)
          'sharedAlbumOptions': sharedAlbumOptions!,
      };
}

/// Options that control the sharing of an album.
class SharedAlbumOptions {
  /// True if the shared album allows collaborators (users who have joined the
  /// album) to add media items to it.
  ///
  /// Defaults to false.
  core.bool? isCollaborative;

  /// True if the shared album allows collaborators (users who have joined the
  /// album) to add comments to the album.
  ///
  /// Defaults to false.
  core.bool? isCommentable;

  SharedAlbumOptions({
    this.isCollaborative,
    this.isCommentable,
  });

  SharedAlbumOptions.fromJson(core.Map _json)
      : this(
          isCollaborative: _json.containsKey('isCollaborative')
              ? _json['isCollaborative'] as core.bool
              : null,
          isCommentable: _json.containsKey('isCommentable')
              ? _json['isCommentable'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (isCollaborative != null) 'isCollaborative': isCollaborative!,
        if (isCommentable != null) 'isCommentable': isCommentable!,
      };
}

/// A simple media item to be created in Google Photos via an upload token.
class SimpleMediaItem {
  /// File name with extension of the media item.
  ///
  /// This is shown to the user in Google Photos. The file name specified during
  /// the byte upload process is ignored if this field is set. The file name,
  /// including the file extension, shouldn't be more than 255 characters. This
  /// is an optional field.
  core.String? fileName;

  /// Token identifying the media bytes that have been uploaded to Google.
  core.String? uploadToken;

  SimpleMediaItem({
    this.fileName,
    this.uploadToken,
  });

  SimpleMediaItem.fromJson(core.Map _json)
      : this(
          fileName: _json.containsKey('fileName')
              ? _json['fileName'] as core.String
              : null,
          uploadToken: _json.containsKey('uploadToken')
              ? _json['uploadToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileName != null) 'fileName': fileName!,
        if (uploadToken != null) 'uploadToken': uploadToken!,
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

/// An enrichment containing text.
class TextEnrichment {
  /// Text for this enrichment item.
  core.String? text;

  TextEnrichment({
    this.text,
  });

  TextEnrichment.fromJson(core.Map _json)
      : this(
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (text != null) 'text': text!,
      };
}

/// Request to unshare a shared album in Google Photos.
typedef UnshareAlbumRequest = $Empty;

/// Response of a successful unshare of a shared album.
typedef UnshareAlbumResponse = $Empty;

/// Metadata that is specific to a video, for example, fps and processing
/// status.
///
/// Some of these fields may be null or not included.
class Video {
  /// Brand of the camera with which the video was taken.
  core.String? cameraMake;

  /// Model of the camera with which the video was taken.
  core.String? cameraModel;

  /// Frame rate of the video.
  core.double? fps;

  /// Processing status of the video.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Video processing status is unknown.
  /// - "PROCESSING" : Video is being processed. The user sees an icon for this
  /// video in the Google Photos app; however, it isn't playable yet.
  /// - "READY" : Video processing is complete and it is now ready for viewing.
  /// Important: attempting to download a video not in the READY state may fail.
  /// - "FAILED" : Something has gone wrong and the video has failed to process.
  core.String? status;

  Video({
    this.cameraMake,
    this.cameraModel,
    this.fps,
    this.status,
  });

  Video.fromJson(core.Map _json)
      : this(
          cameraMake: _json.containsKey('cameraMake')
              ? _json['cameraMake'] as core.String
              : null,
          cameraModel: _json.containsKey('cameraModel')
              ? _json['cameraModel'] as core.String
              : null,
          fps: _json.containsKey('fps')
              ? (_json['fps'] as core.num).toDouble()
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cameraMake != null) 'cameraMake': cameraMake!,
        if (cameraModel != null) 'cameraModel': cameraModel!,
        if (fps != null) 'fps': fps!,
        if (status != null) 'status': status!,
      };
}
