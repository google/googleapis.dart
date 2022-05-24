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

/// Google Chat API - v1
///
/// Enables apps to fetch information and perform actions in Google Chat.
/// Authentication using a service account is a prerequisite for using the
/// Google Chat REST API.
///
/// For more information, see <https://developers.google.com/hangouts/chat>
///
/// Create an instance of [HangoutsChatApi] to access these resources:
///
/// - [DmsResource]
///   - [DmsConversationsResource]
/// - [MediaResource]
/// - [RoomsResource]
///   - [RoomsConversationsResource]
/// - [SpacesResource]
///   - [SpacesMembersResource]
///   - [SpacesMessagesResource]
///     - [SpacesMessagesAttachmentsResource]
library chat.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

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

/// Enables apps to fetch information and perform actions in Google Chat.
///
/// Authentication using a service account is a prerequisite for using the
/// Google Chat REST API.
class HangoutsChatApi {
  final commons.ApiRequester _requester;

  DmsResource get dms => DmsResource(_requester);
  MediaResource get media => MediaResource(_requester);
  RoomsResource get rooms => RoomsResource(_requester);
  SpacesResource get spaces => SpacesResource(_requester);

  HangoutsChatApi(http.Client client,
      {core.String rootUrl = 'https://chat.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class DmsResource {
  final commons.ApiRequester _requester;

  DmsConversationsResource get conversations =>
      DmsConversationsResource(_requester);

  DmsResource(commons.ApiRequester client) : _requester = client;

  /// Legacy path for creating message.
  ///
  /// Calling these will result in a BadRequest response.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Space resource name, in the form "spaces / * ".
  /// Example: spaces/AAAAAAAAAAA
  /// Value must have pattern `^dms/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique request ID for this message. Specifying
  /// an existing request ID returns the message created with that ID instead of
  /// creating a new message.
  ///
  /// [threadKey] - Optional. Opaque thread identifier. To start or add to a
  /// thread, create a message and specify a `threadKey` instead of thread.name.
  /// (Setting thread.name has no effect.) The first message with a given
  /// `threadKey` starts a new thread. Subsequent messages with the same
  /// `threadKey` post into the same thread.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> messages(
    Message request,
    core.String parent, {
    core.String? requestId,
    core.String? threadKey,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (threadKey != null) 'threadKey': [threadKey],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/messages';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Message.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Legacy path for creating message.
  ///
  /// Calling these will result in a BadRequest response.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Space resource name, in the form "spaces / * ".
  /// Example: spaces/AAAAAAAAAAA
  /// Value must have pattern `^dms/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique request ID for this message. Specifying
  /// an existing request ID returns the message created with that ID instead of
  /// creating a new message.
  ///
  /// [threadKey] - Optional. Opaque thread identifier. To start or add to a
  /// thread, create a message and specify a `threadKey` instead of thread.name.
  /// (Setting thread.name has no effect.) The first message with a given
  /// `threadKey` starts a new thread. Subsequent messages with the same
  /// `threadKey` post into the same thread.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> webhooks(
    Message request,
    core.String parent, {
    core.String? requestId,
    core.String? threadKey,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (threadKey != null) 'threadKey': [threadKey],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/webhooks';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Message.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class DmsConversationsResource {
  final commons.ApiRequester _requester;

  DmsConversationsResource(commons.ApiRequester client) : _requester = client;

  /// Legacy path for creating message.
  ///
  /// Calling these will result in a BadRequest response.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Space resource name, in the form "spaces / * ".
  /// Example: spaces/AAAAAAAAAAA
  /// Value must have pattern `^dms/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique request ID for this message. Specifying
  /// an existing request ID returns the message created with that ID instead of
  /// creating a new message.
  ///
  /// [threadKey] - Optional. Opaque thread identifier. To start or add to a
  /// thread, create a message and specify a `threadKey` instead of thread.name.
  /// (Setting thread.name has no effect.) The first message with a given
  /// `threadKey` starts a new thread. Subsequent messages with the same
  /// `threadKey` post into the same thread.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> messages(
    Message request,
    core.String parent, {
    core.String? requestId,
    core.String? threadKey,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (threadKey != null) 'threadKey': [threadKey],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/messages';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Message.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class MediaResource {
  final commons.ApiRequester _requester;

  MediaResource(commons.ApiRequester client) : _requester = client;

  /// Downloads media.
  ///
  /// Download is supported on the URI `/v1/media/{+name}?alt=media`.
  ///
  /// Request parameters:
  ///
  /// [resourceName] - Name of the media that is being downloaded. See
  /// ReadRequest.resource_name.
  /// Value must have pattern `^.*$`.
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
  /// - [Media] for Metadata downloads (see [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Object> download(
    core.String resourceName, {
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/media/' + core.Uri.encodeFull('$resourceName');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return Media.fromJson(_response as core.Map<core.String, core.dynamic>);
    } else {
      return _response as commons.Media;
    }
  }
}

class RoomsResource {
  final commons.ApiRequester _requester;

  RoomsConversationsResource get conversations =>
      RoomsConversationsResource(_requester);

  RoomsResource(commons.ApiRequester client) : _requester = client;

  /// Legacy path for creating message.
  ///
  /// Calling these will result in a BadRequest response.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Space resource name, in the form "spaces / * ".
  /// Example: spaces/AAAAAAAAAAA
  /// Value must have pattern `^rooms/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique request ID for this message. Specifying
  /// an existing request ID returns the message created with that ID instead of
  /// creating a new message.
  ///
  /// [threadKey] - Optional. Opaque thread identifier. To start or add to a
  /// thread, create a message and specify a `threadKey` instead of thread.name.
  /// (Setting thread.name has no effect.) The first message with a given
  /// `threadKey` starts a new thread. Subsequent messages with the same
  /// `threadKey` post into the same thread.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> messages(
    Message request,
    core.String parent, {
    core.String? requestId,
    core.String? threadKey,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (threadKey != null) 'threadKey': [threadKey],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/messages';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Message.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Legacy path for creating message.
  ///
  /// Calling these will result in a BadRequest response.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Space resource name, in the form "spaces / * ".
  /// Example: spaces/AAAAAAAAAAA
  /// Value must have pattern `^rooms/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique request ID for this message. Specifying
  /// an existing request ID returns the message created with that ID instead of
  /// creating a new message.
  ///
  /// [threadKey] - Optional. Opaque thread identifier. To start or add to a
  /// thread, create a message and specify a `threadKey` instead of thread.name.
  /// (Setting thread.name has no effect.) The first message with a given
  /// `threadKey` starts a new thread. Subsequent messages with the same
  /// `threadKey` post into the same thread.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> webhooks(
    Message request,
    core.String parent, {
    core.String? requestId,
    core.String? threadKey,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (threadKey != null) 'threadKey': [threadKey],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/webhooks';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Message.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class RoomsConversationsResource {
  final commons.ApiRequester _requester;

  RoomsConversationsResource(commons.ApiRequester client) : _requester = client;

  /// Legacy path for creating message.
  ///
  /// Calling these will result in a BadRequest response.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Space resource name, in the form "spaces / * ".
  /// Example: spaces/AAAAAAAAAAA
  /// Value must have pattern `^rooms/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique request ID for this message. Specifying
  /// an existing request ID returns the message created with that ID instead of
  /// creating a new message.
  ///
  /// [threadKey] - Optional. Opaque thread identifier. To start or add to a
  /// thread, create a message and specify a `threadKey` instead of thread.name.
  /// (Setting thread.name has no effect.) The first message with a given
  /// `threadKey` starts a new thread. Subsequent messages with the same
  /// `threadKey` post into the same thread.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> messages(
    Message request,
    core.String parent, {
    core.String? requestId,
    core.String? threadKey,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (threadKey != null) 'threadKey': [threadKey],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/messages';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Message.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class SpacesResource {
  final commons.ApiRequester _requester;

  SpacesMembersResource get members => SpacesMembersResource(_requester);
  SpacesMessagesResource get messages => SpacesMessagesResource(_requester);

  SpacesResource(commons.ApiRequester client) : _requester = client;

  /// Returns a space.
  ///
  /// Requires
  /// [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the space, in the form "spaces / * ".
  /// Format: spaces/{space}
  /// Value must have pattern `^spaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Space].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Space> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Space.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists spaces the caller is a member of.
  ///
  /// Requires
  /// [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts).
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Requested page size. The value is capped at 1000. Server may
  /// return fewer results than requested. If unspecified, server will default
  /// to 100.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSpacesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSpacesResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/spaces';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListSpacesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Legacy path for creating message.
  ///
  /// Calling these will result in a BadRequest response.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Space resource name, in the form "spaces / * ".
  /// Example: spaces/AAAAAAAAAAA
  /// Value must have pattern `^spaces/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique request ID for this message. Specifying
  /// an existing request ID returns the message created with that ID instead of
  /// creating a new message.
  ///
  /// [threadKey] - Optional. Opaque thread identifier. To start or add to a
  /// thread, create a message and specify a `threadKey` instead of thread.name.
  /// (Setting thread.name has no effect.) The first message with a given
  /// `threadKey` starts a new thread. Subsequent messages with the same
  /// `threadKey` post into the same thread.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> webhooks(
    Message request,
    core.String parent, {
    core.String? requestId,
    core.String? threadKey,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (threadKey != null) 'threadKey': [threadKey],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/webhooks';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Message.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class SpacesMembersResource {
  final commons.ApiRequester _requester;

  SpacesMembersResource(commons.ApiRequester client) : _requester = client;

  /// Returns a membership.
  ///
  /// Requires
  /// [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the membership to retrieve. Format:
  /// spaces/{space}/members/{member}
  /// Value must have pattern `^spaces/\[^/\]+/members/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Membership].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Membership> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Membership.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists human memberships in a space.
  ///
  /// Requires
  /// [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts).
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the space for which to fetch a
  /// membership list. Format: spaces/{space}
  /// Value must have pattern `^spaces/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The value is capped at 1000. Server may
  /// return fewer results than requested. If unspecified, server will default
  /// to 100.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMembershipsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMembershipsResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/members';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListMembershipsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class SpacesMessagesResource {
  final commons.ApiRequester _requester;

  SpacesMessagesAttachmentsResource get attachments =>
      SpacesMessagesAttachmentsResource(_requester);

  SpacesMessagesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a message.
  ///
  /// Requires
  /// [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Space resource name, in the form "spaces / * ".
  /// Example: spaces/AAAAAAAAAAA
  /// Value must have pattern `^spaces/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique request ID for this message. Specifying
  /// an existing request ID returns the message created with that ID instead of
  /// creating a new message.
  ///
  /// [threadKey] - Optional. Opaque thread identifier. To start or add to a
  /// thread, create a message and specify a `threadKey` instead of thread.name.
  /// (Setting thread.name has no effect.) The first message with a given
  /// `threadKey` starts a new thread. Subsequent messages with the same
  /// `threadKey` post into the same thread.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> create(
    Message request,
    core.String parent, {
    core.String? requestId,
    core.String? threadKey,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (threadKey != null) 'threadKey': [threadKey],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/messages';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Message.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a message.
  ///
  /// Requires
  /// [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the message to be deleted, in the form
  /// "spaces / * /messages / * " Example:
  /// spaces/AAAAAAAAAAA/messages/BBBBBBBBBBB.BBBBBBBBBBB
  /// Value must have pattern `^spaces/\[^/\]+/messages/\[^/\]+$`.
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
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns a message.
  ///
  /// Requires
  /// [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the message to be retrieved, in the
  /// form "spaces / * /messages / * ". Example:
  /// spaces/AAAAAAAAAAA/messages/BBBBBBBBBBB.BBBBBBBBBBB
  /// Value must have pattern `^spaces/\[^/\]+/messages/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Message.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a message.
  ///
  /// Requires
  /// [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name in the form `spaces / * /messages / * `. Example:
  /// `spaces/AAAAAAAAAAA/messages/BBBBBBBBBBB.BBBBBBBBBBB`
  /// Value must have pattern `^spaces/\[^/\]+/messages/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The field paths to be updated, comma separated if
  /// there are multiple. Currently supported field paths: * text * cards *
  /// attachment
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> update(
    Message request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Message.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class SpacesMessagesAttachmentsResource {
  final commons.ApiRequester _requester;

  SpacesMessagesAttachmentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the metadata of a message attachment.
  ///
  /// The attachment data is fetched using the media API. Requires
  /// [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the attachment, in the form "spaces /
  /// * /messages / * /attachments / * ".
  /// Value must have pattern
  /// `^spaces/\[^/\]+/messages/\[^/\]+/attachments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Attachment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Attachment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Attachment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// List of string parameters to supply when the action method is invoked.
///
/// For example, consider three snooze buttons: snooze now, snooze 1 day, snooze
/// next week. You might use action method = snooze(), passing the snooze type
/// and snooze time in the list of string parameters.
typedef ActionParameter = $ActionParameter;

/// Parameters that a Chat app can use to configure how it's response is posted.
class ActionResponse {
  /// Input only.
  ///
  /// A response to an event related to a
  /// [dialog](https://developers.google.com/chat/how-tos/dialogs). Must be
  /// accompanied by `ResponseType.Dialog`.
  DialogAction? dialogAction;

  /// Input only.
  ///
  /// The type of Chat app response.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default type; will be handled as NEW_MESSAGE.
  /// - "NEW_MESSAGE" : Post as a new message in the topic.
  /// - "UPDATE_MESSAGE" : Update the Chat app's message. This is only permitted
  /// on a CARD_CLICKED event where the message sender type is BOT.
  /// - "UPDATE_USER_MESSAGE_CARDS" : Update the cards on a user's message. This
  /// is only permitted as a response to a MESSAGE event with a matched url, or
  /// a CARD_CLICKED event where the message sender type is HUMAN. Text will be
  /// ignored.
  /// - "REQUEST_CONFIG" : Privately ask the user for additional auth or config.
  /// - "DIALOG" : Presents a
  /// [dialog](https://developers.google.com/chat/how-tos/dialogs).
  core.String? type;

  /// Input only.
  ///
  /// URL for users to auth or config. (Only for REQUEST_CONFIG response types.)
  core.String? url;

  ActionResponse({
    this.dialogAction,
    this.type,
    this.url,
  });

  ActionResponse.fromJson(core.Map _json)
      : this(
          dialogAction: _json.containsKey('dialogAction')
              ? DialogAction.fromJson(
                  _json['dialogAction'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dialogAction != null) 'dialogAction': dialogAction!,
        if (type != null) 'type': type!,
        if (url != null) 'url': url!,
      };
}

/// Represents the status for a request to either invoke or submit a
/// [dialog](https://developers.google.com/chat/how-tos/dialogs).
class ActionStatus {
  /// The status code.
  /// Possible string values are:
  /// - "OK" : Not an error; returned on success HTTP Mapping: 200 OK
  /// - "CANCELLED" : The operation was cancelled, typically by the caller. HTTP
  /// Mapping: 499 Client Closed Request
  /// - "UNKNOWN" : Unknown error. For example, this error may be returned when
  /// a `Status` value received from another address space belongs to an error
  /// space that is not known in this address space. Also errors raised by APIs
  /// that do not return enough error information may be converted to this
  /// error. HTTP Mapping: 500 Internal Server Error
  /// - "INVALID_ARGUMENT" : The client specified an invalid argument. Note that
  /// this differs from `FAILED_PRECONDITION`. `INVALID_ARGUMENT` indicates
  /// arguments that are problematic regardless of the state of the system
  /// (e.g., a malformed file name). HTTP Mapping: 400 Bad Request
  /// - "DEADLINE_EXCEEDED" : The deadline expired before the operation could
  /// complete. For operations that change the state of the system, this error
  /// may be returned even if the operation has completed successfully. For
  /// example, a successful response from a server could have been delayed long
  /// enough for the deadline to expire. HTTP Mapping: 504 Gateway Timeout
  /// - "NOT_FOUND" : Some requested entity (e.g., file or directory) was not
  /// found. Note to server developers: if a request is denied for an entire
  /// class of users, such as gradual feature rollout or undocumented allowlist,
  /// `NOT_FOUND` may be used. If a request is denied for some users within a
  /// class of users, such as user-based access control, `PERMISSION_DENIED`
  /// must be used. HTTP Mapping: 404 Not Found
  /// - "ALREADY_EXISTS" : The entity that a client attempted to create (e.g.,
  /// file or directory) already exists. HTTP Mapping: 409 Conflict
  /// - "PERMISSION_DENIED" : The caller does not have permission to execute the
  /// specified operation. `PERMISSION_DENIED` must not be used for rejections
  /// caused by exhausting some resource (use `RESOURCE_EXHAUSTED` instead for
  /// those errors). `PERMISSION_DENIED` must not be used if the caller can not
  /// be identified (use `UNAUTHENTICATED` instead for those errors). This error
  /// code does not imply the request is valid or the requested entity exists or
  /// satisfies other pre-conditions. HTTP Mapping: 403 Forbidden
  /// - "UNAUTHENTICATED" : The request does not have valid authentication
  /// credentials for the operation. HTTP Mapping: 401 Unauthorized
  /// - "RESOURCE_EXHAUSTED" : Some resource has been exhausted, perhaps a
  /// per-user quota, or perhaps the entire file system is out of space. HTTP
  /// Mapping: 429 Too Many Requests
  /// - "FAILED_PRECONDITION" : The operation was rejected because the system is
  /// not in a state required for the operation's execution. For example, the
  /// directory to be deleted is non-empty, an rmdir operation is applied to a
  /// non-directory, etc. Service implementors can use the following guidelines
  /// to decide between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`: (a)
  /// Use `UNAVAILABLE` if the client can retry just the failing call. (b) Use
  /// `ABORTED` if the client should retry at a higher level. For example, when
  /// a client-specified test-and-set fails, indicating the client should
  /// restart a read-modify-write sequence. (c) Use `FAILED_PRECONDITION` if the
  /// client should not retry until the system state has been explicitly fixed.
  /// For example, if an "rmdir" fails because the directory is non-empty,
  /// `FAILED_PRECONDITION` should be returned since the client should not retry
  /// unless the files are deleted from the directory. HTTP Mapping: 400 Bad
  /// Request
  /// - "ABORTED" : The operation was aborted, typically due to a concurrency
  /// issue such as a sequencer check failure or transaction abort. See the
  /// guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`,
  /// and `UNAVAILABLE`. HTTP Mapping: 409 Conflict
  /// - "OUT_OF_RANGE" : The operation was attempted past the valid range. E.g.,
  /// seeking or reading past end-of-file. Unlike `INVALID_ARGUMENT`, this error
  /// indicates a problem that may be fixed if the system state changes. For
  /// example, a 32-bit file system will generate `INVALID_ARGUMENT` if asked to
  /// read at an offset that is not in the range \[0,2^32-1\], but it will
  /// generate `OUT_OF_RANGE` if asked to read from an offset past the current
  /// file size. There is a fair bit of overlap between `FAILED_PRECONDITION`
  /// and `OUT_OF_RANGE`. We recommend using `OUT_OF_RANGE` (the more specific
  /// error) when it applies so that callers who are iterating through a space
  /// can easily look for an `OUT_OF_RANGE` error to detect when they are done.
  /// HTTP Mapping: 400 Bad Request
  /// - "UNIMPLEMENTED" : The operation is not implemented or is not
  /// supported/enabled in this service. HTTP Mapping: 501 Not Implemented
  /// - "INTERNAL" : Internal errors. This means that some invariants expected
  /// by the underlying system have been broken. This error code is reserved for
  /// serious errors. HTTP Mapping: 500 Internal Server Error
  /// - "UNAVAILABLE" : The service is currently unavailable. This is most
  /// likely a transient condition, which can be corrected by retrying with a
  /// backoff. Note that it is not always safe to retry non-idempotent
  /// operations. See the guidelines above for deciding between
  /// `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 503
  /// Service Unavailable
  /// - "DATA_LOSS" : Unrecoverable data loss or corruption. HTTP Mapping: 500
  /// Internal Server Error
  core.String? statusCode;

  /// The message to send users about the status of their request.
  ///
  /// If unset, a generic message based on the `status_code` is sent.
  core.String? userFacingMessage;

  ActionStatus({
    this.statusCode,
    this.userFacingMessage,
  });

  ActionStatus.fromJson(core.Map _json)
      : this(
          statusCode: _json.containsKey('statusCode')
              ? _json['statusCode'] as core.String
              : null,
          userFacingMessage: _json.containsKey('userFacingMessage')
              ? _json['userFacingMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (statusCode != null) 'statusCode': statusCode!,
        if (userFacingMessage != null) 'userFacingMessage': userFacingMessage!,
      };
}

/// Annotations associated with the plain-text body of the message.
///
/// Example plain-text message body: ``` Hello @FooBot how are you!" ``` The
/// corresponding annotations metadata: ``` "annotations":[{
/// "type":"USER_MENTION", "startIndex":6, "length":7, "userMention": { "user":
/// { "name":"users/107946847022116401880", "displayName":"FooBot",
/// "avatarUrl":"https://goo.gl/aeDtrS", "type":"BOT" }, "type":"MENTION" } }]
/// ```
class Annotation {
  /// Length of the substring in the plain-text message body this annotation
  /// corresponds to.
  core.int? length;

  /// The metadata for a slash command.
  SlashCommandMetadata? slashCommand;

  /// Start index (0-based, inclusive) in the plain-text message body this
  /// annotation corresponds to.
  core.int? startIndex;

  /// The type of this annotation.
  /// Possible string values are:
  /// - "ANNOTATION_TYPE_UNSPECIFIED" : Default value for the enum. DO NOT USE.
  /// - "USER_MENTION" : A user is mentioned.
  /// - "SLASH_COMMAND" : A slash command is invoked.
  core.String? type;

  /// The metadata of user mention.
  UserMentionMetadata? userMention;

  Annotation({
    this.length,
    this.slashCommand,
    this.startIndex,
    this.type,
    this.userMention,
  });

  Annotation.fromJson(core.Map _json)
      : this(
          length:
              _json.containsKey('length') ? _json['length'] as core.int : null,
          slashCommand: _json.containsKey('slashCommand')
              ? SlashCommandMetadata.fromJson(
                  _json['slashCommand'] as core.Map<core.String, core.dynamic>)
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          userMention: _json.containsKey('userMention')
              ? UserMentionMetadata.fromJson(
                  _json['userMention'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (length != null) 'length': length!,
        if (slashCommand != null) 'slashCommand': slashCommand!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (type != null) 'type': type!,
        if (userMention != null) 'userMention': userMention!,
      };
}

/// An attachment in Google Chat.
class Attachment {
  /// A reference to the attachment data.
  ///
  /// This is used with the media API to download the attachment data.
  AttachmentDataRef? attachmentDataRef;

  /// The original file name for the content, not the full path.
  core.String? contentName;

  /// The content type (MIME type) of the file.
  core.String? contentType;

  /// The download URL which should be used to allow a human user to download
  /// the attachment.
  ///
  /// Chat apps should not use this URL to download attachment content.
  ///
  /// Output only.
  core.String? downloadUri;

  /// A reference to the drive attachment.
  ///
  /// This is used with the Drive API.
  DriveDataRef? driveDataRef;

  /// Resource name of the attachment, in the form "spaces / * /messages / *
  /// /attachments / * ".
  core.String? name;

  /// The source of the attachment.
  /// Possible string values are:
  /// - "SOURCE_UNSPECIFIED"
  /// - "DRIVE_FILE"
  /// - "UPLOADED_CONTENT"
  core.String? source;

  /// The thumbnail URL which should be used to preview the attachment to a
  /// human user.
  ///
  /// Chat apps should not use this URL to download attachment content.
  ///
  /// Output only.
  core.String? thumbnailUri;

  Attachment({
    this.attachmentDataRef,
    this.contentName,
    this.contentType,
    this.downloadUri,
    this.driveDataRef,
    this.name,
    this.source,
    this.thumbnailUri,
  });

  Attachment.fromJson(core.Map _json)
      : this(
          attachmentDataRef: _json.containsKey('attachmentDataRef')
              ? AttachmentDataRef.fromJson(_json['attachmentDataRef']
                  as core.Map<core.String, core.dynamic>)
              : null,
          contentName: _json.containsKey('contentName')
              ? _json['contentName'] as core.String
              : null,
          contentType: _json.containsKey('contentType')
              ? _json['contentType'] as core.String
              : null,
          downloadUri: _json.containsKey('downloadUri')
              ? _json['downloadUri'] as core.String
              : null,
          driveDataRef: _json.containsKey('driveDataRef')
              ? DriveDataRef.fromJson(
                  _json['driveDataRef'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          source: _json.containsKey('source')
              ? _json['source'] as core.String
              : null,
          thumbnailUri: _json.containsKey('thumbnailUri')
              ? _json['thumbnailUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attachmentDataRef != null) 'attachmentDataRef': attachmentDataRef!,
        if (contentName != null) 'contentName': contentName!,
        if (contentType != null) 'contentType': contentType!,
        if (downloadUri != null) 'downloadUri': downloadUri!,
        if (driveDataRef != null) 'driveDataRef': driveDataRef!,
        if (name != null) 'name': name!,
        if (source != null) 'source': source!,
        if (thumbnailUri != null) 'thumbnailUri': thumbnailUri!,
      };
}

/// A reference to the data of an attachment.
class AttachmentDataRef {
  /// The resource name of the attachment data.
  ///
  /// This is used with the media API to download the attachment data.
  core.String? resourceName;

  AttachmentDataRef({
    this.resourceName,
  });

  AttachmentDataRef.fromJson(core.Map _json)
      : this(
          resourceName: _json.containsKey('resourceName')
              ? _json['resourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceName != null) 'resourceName': resourceName!,
      };
}

/// A button.
///
/// Can be a text button or an image button.
class Button {
  /// A button with image and onclick action.
  ImageButton? imageButton;

  /// A button with text and onclick action.
  TextButton? textButton;

  Button({
    this.imageButton,
    this.textButton,
  });

  Button.fromJson(core.Map _json)
      : this(
          imageButton: _json.containsKey('imageButton')
              ? ImageButton.fromJson(
                  _json['imageButton'] as core.Map<core.String, core.dynamic>)
              : null,
          textButton: _json.containsKey('textButton')
              ? TextButton.fromJson(
                  _json['textButton'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imageButton != null) 'imageButton': imageButton!,
        if (textButton != null) 'textButton': textButton!,
      };
}

/// A card is a UI element that can contain UI widgets such as texts, images.
class Card {
  /// The actions of this card.
  core.List<CardAction>? cardActions;

  /// The header of the card.
  ///
  /// A header usually contains a title and an image.
  CardHeader? header;

  /// Name of the card.
  core.String? name;

  /// Sections are separated by a line divider.
  core.List<Section>? sections;

  Card({
    this.cardActions,
    this.header,
    this.name,
    this.sections,
  });

  Card.fromJson(core.Map _json)
      : this(
          cardActions: _json.containsKey('cardActions')
              ? (_json['cardActions'] as core.List)
                  .map((value) => CardAction.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          header: _json.containsKey('header')
              ? CardHeader.fromJson(
                  _json['header'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          sections: _json.containsKey('sections')
              ? (_json['sections'] as core.List)
                  .map((value) => Section.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cardActions != null) 'cardActions': cardActions!,
        if (header != null) 'header': header!,
        if (name != null) 'name': name!,
        if (sections != null) 'sections': sections!,
      };
}

/// A card action is the action associated with the card.
///
/// For an invoice card, a typical action would be: delete invoice, email
/// invoice or open the invoice in browser.
class CardAction {
  /// The label used to be displayed in the action menu item.
  core.String? actionLabel;

  /// The onclick action for this action item.
  OnClick? onClick;

  CardAction({
    this.actionLabel,
    this.onClick,
  });

  CardAction.fromJson(core.Map _json)
      : this(
          actionLabel: _json.containsKey('actionLabel')
              ? _json['actionLabel'] as core.String
              : null,
          onClick: _json.containsKey('onClick')
              ? OnClick.fromJson(
                  _json['onClick'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionLabel != null) 'actionLabel': actionLabel!,
        if (onClick != null) 'onClick': onClick!,
      };
}

class CardHeader {
  /// The image's type (e.g. square border or circular border).
  /// Possible string values are:
  /// - "IMAGE_STYLE_UNSPECIFIED"
  /// - "IMAGE" : Square border.
  /// - "AVATAR" : Circular border.
  core.String? imageStyle;

  /// The URL of the image in the card header.
  core.String? imageUrl;

  /// The subtitle of the card header.
  core.String? subtitle;

  /// The title must be specified.
  ///
  /// The header has a fixed height: if both a title and subtitle is specified,
  /// each will take up 1 line. If only the title is specified, it will take up
  /// both lines.
  core.String? title;

  CardHeader({
    this.imageStyle,
    this.imageUrl,
    this.subtitle,
    this.title,
  });

  CardHeader.fromJson(core.Map _json)
      : this(
          imageStyle: _json.containsKey('imageStyle')
              ? _json['imageStyle'] as core.String
              : null,
          imageUrl: _json.containsKey('imageUrl')
              ? _json['imageUrl'] as core.String
              : null,
          subtitle: _json.containsKey('subtitle')
              ? _json['subtitle'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imageStyle != null) 'imageStyle': imageStyle!,
        if (imageUrl != null) 'imageUrl': imageUrl!,
        if (subtitle != null) 'subtitle': subtitle!,
        if (title != null) 'title': title!,
      };
}

/// Represents a color in the RGBA color space.
///
/// This representation is designed for simplicity of conversion to/from color
/// representations in various languages over compactness. For example, the
/// fields of this representation can be trivially provided to the constructor
/// of `java.awt.Color` in Java; it can also be trivially provided to UIColor's
/// `+colorWithRed:green:blue:alpha` method in iOS; and, with just a little
/// work, it can be easily formatted into a CSS `rgba()` string in JavaScript.
/// This reference page doesn't carry information about the absolute color space
/// that should be used to interpret the RGB value (e.g. sRGB, Adobe RGB,
/// DCI-P3, BT.2020, etc.). By default, applications should assume the sRGB
/// color space. When color equality needs to be decided, implementations,
/// unless documented otherwise, treat two colors as equal if all their red,
/// green, blue, and alpha values each differ by at most 1e-5. Example (Java):
/// import com.google.type.Color; // ... public static java.awt.Color
/// fromProto(Color protocolor) { float alpha = protocolor.hasAlpha() ?
/// protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color(
/// protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); }
/// public static Color toProto(java.awt.Color color) { float red = (float)
/// color.getRed(); float green = (float) color.getGreen(); float blue = (float)
/// color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder =
/// Color .newBuilder() .setRed(red / denominator) .setGreen(green /
/// denominator) .setBlue(blue / denominator); int alpha = color.getAlpha(); if
/// (alpha != 255) { result.setAlpha( FloatValue .newBuilder()
/// .setValue(((float) alpha) / denominator) .build()); } return
/// resultBuilder.build(); } // ... Example (iOS / Obj-C): // ... static
/// UIColor* fromProto(Color* protocolor) { float red = \[protocolor red\];
/// float green = \[protocolor green\]; float blue = \[protocolor blue\];
/// FloatValue* alpha_wrapper = \[protocolor alpha\]; float alpha = 1.0; if
/// (alpha_wrapper != nil) { alpha = \[alpha_wrapper value\]; } return \[UIColor
/// colorWithRed:red green:green blue:blue alpha:alpha\]; } static Color*
/// toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (!\[color
/// getRed:&red green:&green blue:&blue alpha:&alpha\]) { return nil; } Color*
/// result = \[\[Color alloc\] init\]; \[result setRed:red\]; \[result
/// setGreen:green\]; \[result setBlue:blue\]; if (alpha \<= 0.9999) { \[result
/// setAlpha:floatWrapperWithValue(alpha)\]; } \[result autorelease\]; return
/// result; } // ... Example (JavaScript): // ... var protoToCssColor =
/// function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac =
/// rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red =
/// Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue
/// = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return
/// rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value ||
/// 0.0; var rgbParams = \[red, green, blue\].join(','); return \['rgba(',
/// rgbParams, ',', alphaFrac, ')'\].join(''); }; var rgbToCssColor =
/// function(red, green, blue) { var rgbNumber = new Number((red \<\< 16) |
/// (green \<\< 8) | blue); var hexString = rgbNumber.toString(16); var
/// missingZeros = 6 - hexString.length; var resultBuilder = \['#'\]; for (var i
/// = 0; i \< missingZeros; i++) { resultBuilder.push('0'); }
/// resultBuilder.push(hexString); return resultBuilder.join(''); }; // ...
typedef Color = $Color;

/// Wrapper around the card body of the dialog.
class Dialog {
  /// Input only.
  ///
  /// Body of the dialog, which is rendered in a modal. Google Chat apps do not
  /// support the following card entities: `DateTimePicker`, `OnChangeAction`.
  GoogleAppsCardV1Card? body;

  Dialog({
    this.body,
  });

  Dialog.fromJson(core.Map _json)
      : this(
          body: _json.containsKey('body')
              ? GoogleAppsCardV1Card.fromJson(
                  _json['body'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
      };
}

/// Contains a [dialog](https://developers.google.com/chat/how-tos/dialogs) and
/// request status code.
class DialogAction {
  /// Input only.
  ///
  /// Status for a request to either invoke or submit a
  /// [dialog](https://developers.google.com/chat/how-tos/dialogs). Displays a
  /// status and message to users, if necessary. For example, in case of an
  /// error or success.
  ActionStatus? actionStatus;

  /// Input only.
  ///
  /// [Dialog](https://developers.google.com/chat/how-tos/dialogs) for the
  /// request.
  Dialog? dialog;

  DialogAction({
    this.actionStatus,
    this.dialog,
  });

  DialogAction.fromJson(core.Map _json)
      : this(
          actionStatus: _json.containsKey('actionStatus')
              ? ActionStatus.fromJson(
                  _json['actionStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          dialog: _json.containsKey('dialog')
              ? Dialog.fromJson(
                  _json['dialog'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionStatus != null) 'actionStatus': actionStatus!,
        if (dialog != null) 'dialog': dialog!,
      };
}

/// A reference to the data of a drive attachment.
class DriveDataRef {
  /// The id for the drive file, for use with the Drive API.
  core.String? driveFileId;

  DriveDataRef({
    this.driveFileId,
  });

  DriveDataRef.fromJson(core.Map _json)
      : this(
          driveFileId: _json.containsKey('driveFileId')
              ? _json['driveFileId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (driveFileId != null) 'driveFileId': driveFileId!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// A form action describes the behavior when the form is submitted.
///
/// For example, an Apps Script can be invoked to handle the form.
class FormAction {
  /// The method name is used to identify which part of the form triggered the
  /// form submission.
  ///
  /// This information is echoed back to the Chat app as part of the card click
  /// event. The same method name can be used for several elements that trigger
  /// a common behavior if desired.
  core.String? actionMethodName;

  /// List of action parameters.
  core.List<ActionParameter>? parameters;

  FormAction({
    this.actionMethodName,
    this.parameters,
  });

  FormAction.fromJson(core.Map _json)
      : this(
          actionMethodName: _json.containsKey('actionMethodName')
              ? _json['actionMethodName'] as core.String
              : null,
          parameters: _json.containsKey('parameters')
              ? (_json['parameters'] as core.List)
                  .map((value) => ActionParameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionMethodName != null) 'actionMethodName': actionMethodName!,
        if (parameters != null) 'parameters': parameters!,
      };
}

/// An action that describes the behavior when the form is submitted.
///
/// For example, an Apps Script can be invoked to handle the form.
class GoogleAppsCardV1Action {
  /// Apps Script function to invoke when the containing element is
  /// clicked/activated.
  core.String? function;

  /// Specifies the loading indicator that the action displays while making the
  /// call to the action.
  /// Possible string values are:
  /// - "SPINNER" : Displays a spinner to indicate that content is loading.
  /// - "NONE" : Nothing is displayed.
  core.String? loadIndicator;

  /// List of action parameters.
  core.List<GoogleAppsCardV1ActionParameter>? parameters;

  /// Indicates whether form values persist after the action.
  ///
  /// The default value is `false`. If `true`, form values remain after the
  /// action is triggered. When using
  /// \[LoadIndicator.NONE\](workspace/add-ons/reference/rpc/google.apps.card.v1#loadindicator)
  /// for actions, `persist_values` = `true`is recommended, as it ensures that
  /// any changes made by the user after form or on change actions are sent to
  /// the server are not overwritten by the response. If `false`, the form
  /// values are cleared when the action is triggered. When `persist_values` is
  /// set to `false`, it is strongly recommended that the card use
  /// \[LoadIndicator.SPINNER\](workspace/add-ons/reference/rpc/google.apps.card.v1#loadindicator)
  /// for all actions, as this locks the UI to ensure no changes are made by the
  /// user while the action is being processed.
  core.bool? persistValues;

  GoogleAppsCardV1Action({
    this.function,
    this.loadIndicator,
    this.parameters,
    this.persistValues,
  });

  GoogleAppsCardV1Action.fromJson(core.Map _json)
      : this(
          function: _json.containsKey('function')
              ? _json['function'] as core.String
              : null,
          loadIndicator: _json.containsKey('loadIndicator')
              ? _json['loadIndicator'] as core.String
              : null,
          parameters: _json.containsKey('parameters')
              ? (_json['parameters'] as core.List)
                  .map((value) => GoogleAppsCardV1ActionParameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          persistValues: _json.containsKey('persistValues')
              ? _json['persistValues'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (function != null) 'function': function!,
        if (loadIndicator != null) 'loadIndicator': loadIndicator!,
        if (parameters != null) 'parameters': parameters!,
        if (persistValues != null) 'persistValues': persistValues!,
      };
}

/// List of string parameters to supply when the action method is invoked.
///
/// For example, consider three snooze buttons: snooze now, snooze 1 day, snooze
/// next week. You might use action method = snooze(), passing the snooze type
/// and snooze time in the list of string parameters.
typedef GoogleAppsCardV1ActionParameter = $ActionParameter;

/// Represents the complete border style applied to widgets.
class GoogleAppsCardV1BorderStyle {
  /// The corner radius for the border.
  core.int? cornerRadius;

  /// The colors to use when the type is `BORDER_TYPE_STROKE`.
  Color? strokeColor;

  /// The border type.
  /// Possible string values are:
  /// - "BORDER_TYPE_UNSPECIFIED" : No value specified.
  /// - "NO_BORDER" : No border.
  /// - "STROKE" : Outline.
  core.String? type;

  GoogleAppsCardV1BorderStyle({
    this.cornerRadius,
    this.strokeColor,
    this.type,
  });

  GoogleAppsCardV1BorderStyle.fromJson(core.Map _json)
      : this(
          cornerRadius: _json.containsKey('cornerRadius')
              ? _json['cornerRadius'] as core.int
              : null,
          strokeColor: _json.containsKey('strokeColor')
              ? Color.fromJson(
                  _json['strokeColor'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cornerRadius != null) 'cornerRadius': cornerRadius!,
        if (strokeColor != null) 'strokeColor': strokeColor!,
        if (type != null) 'type': type!,
      };
}

/// A button.
///
/// Can be a text button or an image button.
class GoogleAppsCardV1Button {
  /// The alternative text used for accessibility.
  ///
  /// Has no effect when an icon is set; use `icon.alt_text` instead.
  core.String? altText;

  /// If set, the button is filled with a solid background.
  Color? color;

  /// If `true`, the button is displayed in a disabled state and doesn't respond
  /// to user actions.
  core.bool? disabled;

  /// The icon image.
  GoogleAppsCardV1Icon? icon;

  /// The action to perform when the button is clicked.
  GoogleAppsCardV1OnClick? onClick;

  /// The text of the button.
  core.String? text;

  GoogleAppsCardV1Button({
    this.altText,
    this.color,
    this.disabled,
    this.icon,
    this.onClick,
    this.text,
  });

  GoogleAppsCardV1Button.fromJson(core.Map _json)
      : this(
          altText: _json.containsKey('altText')
              ? _json['altText'] as core.String
              : null,
          color: _json.containsKey('color')
              ? Color.fromJson(
                  _json['color'] as core.Map<core.String, core.dynamic>)
              : null,
          disabled: _json.containsKey('disabled')
              ? _json['disabled'] as core.bool
              : null,
          icon: _json.containsKey('icon')
              ? GoogleAppsCardV1Icon.fromJson(
                  _json['icon'] as core.Map<core.String, core.dynamic>)
              : null,
          onClick: _json.containsKey('onClick')
              ? GoogleAppsCardV1OnClick.fromJson(
                  _json['onClick'] as core.Map<core.String, core.dynamic>)
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (altText != null) 'altText': altText!,
        if (color != null) 'color': color!,
        if (disabled != null) 'disabled': disabled!,
        if (icon != null) 'icon': icon!,
        if (onClick != null) 'onClick': onClick!,
        if (text != null) 'text': text!,
      };
}

/// A list of buttons layed out horizontally.
class GoogleAppsCardV1ButtonList {
  /// An array of buttons.
  core.List<GoogleAppsCardV1Button>? buttons;

  GoogleAppsCardV1ButtonList({
    this.buttons,
  });

  GoogleAppsCardV1ButtonList.fromJson(core.Map _json)
      : this(
          buttons: _json.containsKey('buttons')
              ? (_json['buttons'] as core.List)
                  .map((value) => GoogleAppsCardV1Button.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buttons != null) 'buttons': buttons!,
      };
}

/// A card is a UI element that can contain UI widgets such as text and images.
///
/// For more information, see Cards . For example, the following JSON creates a
/// card that has a header with the name, position, icons, and link for a
/// contact, followed by a section with contact information like email and phone
/// number. ``` { "header": { "title": "Sasha", "subtitle": "Software Engineer",
/// "imageStyle": "ImageStyle.AVATAR", "imageUrl":
/// "https://example.com/sasha.png", "imageAltText": "Avatar for Sasha" },
/// "sections" : [ { "header": "Contact Info", "widgets": [ { "decorated_text":
/// { "icon": { "knownIcon": "EMAIL" }, "content": "sasha@example.com" } }, {
/// "decoratedText": { "icon": { "knownIcon": "PERSON" }, "content": "Online" }
/// }, { "decoratedText": { "icon": { "knownIcon": "PHONE" }, "content": "+1
/// (555) 555-1234" } }, { "buttons": [ { "textButton": { "text": "Share", },
/// "onClick": { "openLink": { "url": "https://example.com/share" } } }, {
/// "textButton": { "text": "Edit", }, "onClick": { "action": { "function":
/// "goToView", "parameters": [ { "key": "viewType", "value": "EDIT" } ],
/// "loadIndicator": "LoadIndicator.SPINNER" } } } ] } ], "collapsible": true,
/// "uncollapsibleWidgetsCount": 3 } ], "cardActions": [ { "actionLabel": "Send
/// Feedback", "onClick": { "openLink": { "url": "https://example.com/feedback"
/// } } } ], "name": "contact-card-K3wB6arF2H9L" } ```
class GoogleAppsCardV1Card {
  /// The card's actions.
  ///
  /// Actions are added to the card's generated toolbar menu. For example, the
  /// following JSON constructs a card action menu with Settings and Send
  /// Feedback options: ``` "card_actions": [ { "actionLabel": "Settings",
  /// "onClick": { "action": { "functionName": "goToView", "parameters": [ {
  /// "key": "viewType", "value": "SETTING" } ], "loadIndicator":
  /// "LoadIndicator.SPINNER" } } }, { "actionLabel": "Send Feedback",
  /// "onClick": { "openLink": { "url": "https://example.com/feedback" } } } ]
  /// ```
  core.List<GoogleAppsCardV1CardAction>? cardActions;

  /// The display style for `peekCardHeader`.
  /// Possible string values are:
  /// - "DISPLAY_STYLE_UNSPECIFIED" : Default value. Do not use.
  /// - "PEEK" : The header of the card appears at the bottom of the sidebar,
  /// partially covering the current top card of the stack. Clicking the header
  /// pops the card into the card stack. If the card has no header, a generated
  /// header is used instead.
  /// - "REPLACE" : The card is shown by replacing the view of the top card in
  /// the card stack.
  core.String? displayStyle;

  /// The fixed footer shown at the bottom of this card.
  GoogleAppsCardV1CardFixedFooter? fixedFooter;

  /// The header of the card.
  ///
  /// A header usually contains a title and an image.
  GoogleAppsCardV1CardHeader? header;

  /// Name of the card.
  ///
  /// Used as a card identifier in card navigation.
  core.String? name;

  /// When displaying contextual content, the peek card header acts as a
  /// placeholder so that the user can navigate forward between the homepage
  /// cards and the contextual cards.
  GoogleAppsCardV1CardHeader? peekCardHeader;

  /// Sections are separated by a line divider.
  core.List<GoogleAppsCardV1Section>? sections;

  GoogleAppsCardV1Card({
    this.cardActions,
    this.displayStyle,
    this.fixedFooter,
    this.header,
    this.name,
    this.peekCardHeader,
    this.sections,
  });

  GoogleAppsCardV1Card.fromJson(core.Map _json)
      : this(
          cardActions: _json.containsKey('cardActions')
              ? (_json['cardActions'] as core.List)
                  .map((value) => GoogleAppsCardV1CardAction.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          displayStyle: _json.containsKey('displayStyle')
              ? _json['displayStyle'] as core.String
              : null,
          fixedFooter: _json.containsKey('fixedFooter')
              ? GoogleAppsCardV1CardFixedFooter.fromJson(
                  _json['fixedFooter'] as core.Map<core.String, core.dynamic>)
              : null,
          header: _json.containsKey('header')
              ? GoogleAppsCardV1CardHeader.fromJson(
                  _json['header'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          peekCardHeader: _json.containsKey('peekCardHeader')
              ? GoogleAppsCardV1CardHeader.fromJson(_json['peekCardHeader']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sections: _json.containsKey('sections')
              ? (_json['sections'] as core.List)
                  .map((value) => GoogleAppsCardV1Section.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cardActions != null) 'cardActions': cardActions!,
        if (displayStyle != null) 'displayStyle': displayStyle!,
        if (fixedFooter != null) 'fixedFooter': fixedFooter!,
        if (header != null) 'header': header!,
        if (name != null) 'name': name!,
        if (peekCardHeader != null) 'peekCardHeader': peekCardHeader!,
        if (sections != null) 'sections': sections!,
      };
}

/// A card action is the action associated with the card.
///
/// For example, an invoice card might include actions such as delete invoice,
/// email invoice, or open the invoice in a browser.
class GoogleAppsCardV1CardAction {
  /// The label that displays as the action menu item.
  core.String? actionLabel;

  /// The `onClick` action for this action item.
  GoogleAppsCardV1OnClick? onClick;

  GoogleAppsCardV1CardAction({
    this.actionLabel,
    this.onClick,
  });

  GoogleAppsCardV1CardAction.fromJson(core.Map _json)
      : this(
          actionLabel: _json.containsKey('actionLabel')
              ? _json['actionLabel'] as core.String
              : null,
          onClick: _json.containsKey('onClick')
              ? GoogleAppsCardV1OnClick.fromJson(
                  _json['onClick'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionLabel != null) 'actionLabel': actionLabel!,
        if (onClick != null) 'onClick': onClick!,
      };
}

/// A persistent (sticky) footer that is added to the bottom of the card.
class GoogleAppsCardV1CardFixedFooter {
  /// The primary button of the fixed footer.
  ///
  /// The button must be a text button with text and color set.
  GoogleAppsCardV1Button? primaryButton;

  /// The secondary button of the fixed footer.
  ///
  /// The button must be a text button with text and color set. `primaryButton`
  /// must be set if `secondaryButton` is set.
  GoogleAppsCardV1Button? secondaryButton;

  GoogleAppsCardV1CardFixedFooter({
    this.primaryButton,
    this.secondaryButton,
  });

  GoogleAppsCardV1CardFixedFooter.fromJson(core.Map _json)
      : this(
          primaryButton: _json.containsKey('primaryButton')
              ? GoogleAppsCardV1Button.fromJson(
                  _json['primaryButton'] as core.Map<core.String, core.dynamic>)
              : null,
          secondaryButton: _json.containsKey('secondaryButton')
              ? GoogleAppsCardV1Button.fromJson(_json['secondaryButton']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (primaryButton != null) 'primaryButton': primaryButton!,
        if (secondaryButton != null) 'secondaryButton': secondaryButton!,
      };
}

/// Represents a card header.
class GoogleAppsCardV1CardHeader {
  /// The alternative text of this image which is used for accessibility.
  core.String? imageAltText;

  /// The image's type.
  /// Possible string values are:
  /// - "SQUARE" : Applies no cropping to the image.
  /// - "CIRCLE" : Applies a circular mask to the image.
  core.String? imageType;

  /// The URL of the image in the card header.
  core.String? imageUrl;

  /// The subtitle of the card header.
  core.String? subtitle;

  /// The title of the card header.
  ///
  /// The header has a fixed height: if both a title and subtitle are specified,
  /// each takes up one line. If only the title is specified, it takes up both
  /// lines.
  ///
  /// Required.
  core.String? title;

  GoogleAppsCardV1CardHeader({
    this.imageAltText,
    this.imageType,
    this.imageUrl,
    this.subtitle,
    this.title,
  });

  GoogleAppsCardV1CardHeader.fromJson(core.Map _json)
      : this(
          imageAltText: _json.containsKey('imageAltText')
              ? _json['imageAltText'] as core.String
              : null,
          imageType: _json.containsKey('imageType')
              ? _json['imageType'] as core.String
              : null,
          imageUrl: _json.containsKey('imageUrl')
              ? _json['imageUrl'] as core.String
              : null,
          subtitle: _json.containsKey('subtitle')
              ? _json['subtitle'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imageAltText != null) 'imageAltText': imageAltText!,
        if (imageType != null) 'imageType': imageType!,
        if (imageUrl != null) 'imageUrl': imageUrl!,
        if (subtitle != null) 'subtitle': subtitle!,
        if (title != null) 'title': title!,
      };
}

/// The widget that lets users to specify a date and time.
///
/// Not supported by Google Chat apps.
class GoogleAppsCardV1DateTimePicker {
  /// The label for the field that displays to the user.
  core.String? label;

  /// The name of the text input that's used in `formInput`, and uniquely
  /// identifies this input.
  core.String? name;

  /// Triggered when the user clicks Save or Clear from the date/time picker
  /// dialog.
  ///
  /// This is only triggered if the value changed as a result of the Save/Clear
  /// operation.
  GoogleAppsCardV1Action? onChangeAction;

  /// The number representing the time zone offset from UTC, in minutes.
  ///
  /// If set, the `value_ms_epoch` is displayed in the specified time zone. If
  /// not set, it uses the user's time zone setting on the client side.
  core.int? timezoneOffsetDate;

  /// The type of the date/time picker.
  /// Possible string values are:
  /// - "DATE_AND_TIME" : The user can select a date and time.
  /// - "DATE_ONLY" : The user can only select a date.
  /// - "TIME_ONLY" : The user can only select a time.
  core.String? type;

  /// The value to display as the default value before user input or previous
  /// user input.
  ///
  /// It is represented in milliseconds (Epoch time). For `DATE_AND_TIME` type,
  /// the full epoch value is used. For `DATE_ONLY` type, only date of the epoch
  /// time is used. For `TIME_ONLY` type, only time of the epoch time is used.
  /// For example, you can set epoch time to `3 * 60 * 60 * 1000` to represent
  /// 3am.
  core.String? valueMsEpoch;

  GoogleAppsCardV1DateTimePicker({
    this.label,
    this.name,
    this.onChangeAction,
    this.timezoneOffsetDate,
    this.type,
    this.valueMsEpoch,
  });

  GoogleAppsCardV1DateTimePicker.fromJson(core.Map _json)
      : this(
          label:
              _json.containsKey('label') ? _json['label'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          onChangeAction: _json.containsKey('onChangeAction')
              ? GoogleAppsCardV1Action.fromJson(_json['onChangeAction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          timezoneOffsetDate: _json.containsKey('timezoneOffsetDate')
              ? _json['timezoneOffsetDate'] as core.int
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          valueMsEpoch: _json.containsKey('valueMsEpoch')
              ? _json['valueMsEpoch'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (label != null) 'label': label!,
        if (name != null) 'name': name!,
        if (onChangeAction != null) 'onChangeAction': onChangeAction!,
        if (timezoneOffsetDate != null)
          'timezoneOffsetDate': timezoneOffsetDate!,
        if (type != null) 'type': type!,
        if (valueMsEpoch != null) 'valueMsEpoch': valueMsEpoch!,
      };
}

/// A widget that displays text with optional decorations such as a label above
/// or below the text, an icon in front of the text, a selection widget or a
/// button after the text.
class GoogleAppsCardV1DecoratedText {
  /// The formatted text label that shows below the main text.
  core.String? bottomLabel;

  /// A button that can be clicked to trigger an action.
  GoogleAppsCardV1Button? button;

  /// An icon displayed after the text.
  GoogleAppsCardV1Icon? endIcon;

  /// Deprecated in favor of start_icon.
  GoogleAppsCardV1Icon? icon;

  /// Only the top and bottom label and content region are clickable.
  GoogleAppsCardV1OnClick? onClick;

  /// The icon displayed in front of the text.
  GoogleAppsCardV1Icon? startIcon;

  /// A switch widget can be clicked to change its state or trigger an action.
  GoogleAppsCardV1SwitchControl? switchControl;

  /// The main widget formatted text.
  ///
  /// See Text formatting for details.
  ///
  /// Required.
  core.String? text;

  /// The formatted text label that shows above the main text.
  core.String? topLabel;

  /// The wrap text setting.
  ///
  /// If `true`, the text is wrapped and displayed in multiline. Otherwise, the
  /// text is truncated.
  core.bool? wrapText;

  GoogleAppsCardV1DecoratedText({
    this.bottomLabel,
    this.button,
    this.endIcon,
    this.icon,
    this.onClick,
    this.startIcon,
    this.switchControl,
    this.text,
    this.topLabel,
    this.wrapText,
  });

  GoogleAppsCardV1DecoratedText.fromJson(core.Map _json)
      : this(
          bottomLabel: _json.containsKey('bottomLabel')
              ? _json['bottomLabel'] as core.String
              : null,
          button: _json.containsKey('button')
              ? GoogleAppsCardV1Button.fromJson(
                  _json['button'] as core.Map<core.String, core.dynamic>)
              : null,
          endIcon: _json.containsKey('endIcon')
              ? GoogleAppsCardV1Icon.fromJson(
                  _json['endIcon'] as core.Map<core.String, core.dynamic>)
              : null,
          icon: _json.containsKey('icon')
              ? GoogleAppsCardV1Icon.fromJson(
                  _json['icon'] as core.Map<core.String, core.dynamic>)
              : null,
          onClick: _json.containsKey('onClick')
              ? GoogleAppsCardV1OnClick.fromJson(
                  _json['onClick'] as core.Map<core.String, core.dynamic>)
              : null,
          startIcon: _json.containsKey('startIcon')
              ? GoogleAppsCardV1Icon.fromJson(
                  _json['startIcon'] as core.Map<core.String, core.dynamic>)
              : null,
          switchControl: _json.containsKey('switchControl')
              ? GoogleAppsCardV1SwitchControl.fromJson(
                  _json['switchControl'] as core.Map<core.String, core.dynamic>)
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
          topLabel: _json.containsKey('topLabel')
              ? _json['topLabel'] as core.String
              : null,
          wrapText: _json.containsKey('wrapText')
              ? _json['wrapText'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bottomLabel != null) 'bottomLabel': bottomLabel!,
        if (button != null) 'button': button!,
        if (endIcon != null) 'endIcon': endIcon!,
        if (icon != null) 'icon': icon!,
        if (onClick != null) 'onClick': onClick!,
        if (startIcon != null) 'startIcon': startIcon!,
        if (switchControl != null) 'switchControl': switchControl!,
        if (text != null) 'text': text!,
        if (topLabel != null) 'topLabel': topLabel!,
        if (wrapText != null) 'wrapText': wrapText!,
      };
}

/// A divider that appears in between widgets.
typedef GoogleAppsCardV1Divider = $Empty;

/// Represents a Grid widget that displays items in a configurable grid layout.
class GoogleAppsCardV1Grid {
  /// The border style to apply to each grid item.
  GoogleAppsCardV1BorderStyle? borderStyle;

  /// The number of columns to display in the grid.
  ///
  /// A default value is used if this field isn't specified, and that default
  /// value is different depending on where the grid is shown (dialog versus
  /// companion).
  core.int? columnCount;

  /// The items to display in the grid.
  core.List<GoogleAppsCardV1GridItem>? items;

  /// This callback is reused by each individual grid item, but with the item's
  /// identifier and index in the items list added to the callback's parameters.
  GoogleAppsCardV1OnClick? onClick;

  /// The text that displays in the grid header.
  core.String? title;

  GoogleAppsCardV1Grid({
    this.borderStyle,
    this.columnCount,
    this.items,
    this.onClick,
    this.title,
  });

  GoogleAppsCardV1Grid.fromJson(core.Map _json)
      : this(
          borderStyle: _json.containsKey('borderStyle')
              ? GoogleAppsCardV1BorderStyle.fromJson(
                  _json['borderStyle'] as core.Map<core.String, core.dynamic>)
              : null,
          columnCount: _json.containsKey('columnCount')
              ? _json['columnCount'] as core.int
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => GoogleAppsCardV1GridItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          onClick: _json.containsKey('onClick')
              ? GoogleAppsCardV1OnClick.fromJson(
                  _json['onClick'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (borderStyle != null) 'borderStyle': borderStyle!,
        if (columnCount != null) 'columnCount': columnCount!,
        if (items != null) 'items': items!,
        if (onClick != null) 'onClick': onClick!,
        if (title != null) 'title': title!,
      };
}

/// Represents a single item in the grid layout.
class GoogleAppsCardV1GridItem {
  /// A user-specified identifier for this grid item.
  ///
  /// This identifier is returned in the parent Grid's onClick callback
  /// parameters.
  core.String? id;

  /// The image that displays in the grid item.
  GoogleAppsCardV1ImageComponent? image;

  /// The layout to use for the grid item.
  /// Possible string values are:
  /// - "GRID_ITEM_LAYOUT_UNSPECIFIED" : No layout specified.
  /// - "TEXT_BELOW" : The title and subtitle are shown below the grid item's
  /// image.
  /// - "TEXT_ABOVE" : The title and subtitle are shown above the grid item's
  /// image.
  core.String? layout;

  /// The grid item's subtitle.
  core.String? subtitle;

  /// The horizontal alignment of the grid item's text.
  /// Possible string values are:
  /// - "HORIZONTAL_ALIGNMENT_UNSPECIFIED" : Unspecified alignment.
  /// - "START" : Alignment to the start position.
  /// - "CENTER" : Alignment to the center position.
  /// - "END" : Alignment to the end position.
  core.String? textAlignment;

  /// The grid item's title.
  core.String? title;

  GoogleAppsCardV1GridItem({
    this.id,
    this.image,
    this.layout,
    this.subtitle,
    this.textAlignment,
    this.title,
  });

  GoogleAppsCardV1GridItem.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          image: _json.containsKey('image')
              ? GoogleAppsCardV1ImageComponent.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
          layout: _json.containsKey('layout')
              ? _json['layout'] as core.String
              : null,
          subtitle: _json.containsKey('subtitle')
              ? _json['subtitle'] as core.String
              : null,
          textAlignment: _json.containsKey('textAlignment')
              ? _json['textAlignment'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (image != null) 'image': image!,
        if (layout != null) 'layout': layout!,
        if (subtitle != null) 'subtitle': subtitle!,
        if (textAlignment != null) 'textAlignment': textAlignment!,
        if (title != null) 'title': title!,
      };
}

class GoogleAppsCardV1Icon {
  /// The description of the icon, used for accessibility.
  ///
  /// The default value is provided if you don't specify one.
  core.String? altText;

  /// The icon specified by a URL.
  core.String? iconUrl;

  /// The crop style applied to the image.
  ///
  /// In some cases, applying a `CIRCLE` crop causes the image to be drawn
  /// larger than a standard icon.
  /// Possible string values are:
  /// - "SQUARE" : Applies no cropping to the image.
  /// - "CIRCLE" : Applies a circular mask to the image.
  core.String? imageType;

  /// The icon specified by the string name of a list of known icons.
  core.String? knownIcon;

  GoogleAppsCardV1Icon({
    this.altText,
    this.iconUrl,
    this.imageType,
    this.knownIcon,
  });

  GoogleAppsCardV1Icon.fromJson(core.Map _json)
      : this(
          altText: _json.containsKey('altText')
              ? _json['altText'] as core.String
              : null,
          iconUrl: _json.containsKey('iconUrl')
              ? _json['iconUrl'] as core.String
              : null,
          imageType: _json.containsKey('imageType')
              ? _json['imageType'] as core.String
              : null,
          knownIcon: _json.containsKey('knownIcon')
              ? _json['knownIcon'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (altText != null) 'altText': altText!,
        if (iconUrl != null) 'iconUrl': iconUrl!,
        if (imageType != null) 'imageType': imageType!,
        if (knownIcon != null) 'knownIcon': knownIcon!,
      };
}

/// An image that is specified by a URL and can have an `onClick` action.
class GoogleAppsCardV1Image {
  /// The alternative text of this image, used for accessibility.
  core.String? altText;

  /// An image URL.
  core.String? imageUrl;

  /// The action triggered by an `onClick` event.
  GoogleAppsCardV1OnClick? onClick;

  GoogleAppsCardV1Image({
    this.altText,
    this.imageUrl,
    this.onClick,
  });

  GoogleAppsCardV1Image.fromJson(core.Map _json)
      : this(
          altText: _json.containsKey('altText')
              ? _json['altText'] as core.String
              : null,
          imageUrl: _json.containsKey('imageUrl')
              ? _json['imageUrl'] as core.String
              : null,
          onClick: _json.containsKey('onClick')
              ? GoogleAppsCardV1OnClick.fromJson(
                  _json['onClick'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (altText != null) 'altText': altText!,
        if (imageUrl != null) 'imageUrl': imageUrl!,
        if (onClick != null) 'onClick': onClick!,
      };
}

/// Represents an image.
class GoogleAppsCardV1ImageComponent {
  /// The accessibility label for the image.
  core.String? altText;

  /// The border style to apply to the image.
  GoogleAppsCardV1BorderStyle? borderStyle;

  /// The crop style to apply to the image.
  GoogleAppsCardV1ImageCropStyle? cropStyle;

  /// The image URL.
  core.String? imageUri;

  GoogleAppsCardV1ImageComponent({
    this.altText,
    this.borderStyle,
    this.cropStyle,
    this.imageUri,
  });

  GoogleAppsCardV1ImageComponent.fromJson(core.Map _json)
      : this(
          altText: _json.containsKey('altText')
              ? _json['altText'] as core.String
              : null,
          borderStyle: _json.containsKey('borderStyle')
              ? GoogleAppsCardV1BorderStyle.fromJson(
                  _json['borderStyle'] as core.Map<core.String, core.dynamic>)
              : null,
          cropStyle: _json.containsKey('cropStyle')
              ? GoogleAppsCardV1ImageCropStyle.fromJson(
                  _json['cropStyle'] as core.Map<core.String, core.dynamic>)
              : null,
          imageUri: _json.containsKey('imageUri')
              ? _json['imageUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (altText != null) 'altText': altText!,
        if (borderStyle != null) 'borderStyle': borderStyle!,
        if (cropStyle != null) 'cropStyle': cropStyle!,
        if (imageUri != null) 'imageUri': imageUri!,
      };
}

/// Represents the crop style applied to an image.
class GoogleAppsCardV1ImageCropStyle {
  /// The aspect ratio to use if the crop type is `RECTANGLE_CUSTOM`.
  core.double? aspectRatio;

  /// The crop type.
  /// Possible string values are:
  /// - "IMAGE_CROP_TYPE_UNSPECIFIED" : No value specified.
  /// - "SQUARE" : Applies a square crop.
  /// - "CIRCLE" : Applies a circular crop.
  /// - "RECTANGLE_CUSTOM" : Applies a rectangular crop with a custom aspect
  /// ratio.
  /// - "RECTANGLE_4_3" : Applies a rectangular crop with a 4:3 aspect ratio.
  core.String? type;

  GoogleAppsCardV1ImageCropStyle({
    this.aspectRatio,
    this.type,
  });

  GoogleAppsCardV1ImageCropStyle.fromJson(core.Map _json)
      : this(
          aspectRatio: _json.containsKey('aspectRatio')
              ? (_json['aspectRatio'] as core.num).toDouble()
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aspectRatio != null) 'aspectRatio': aspectRatio!,
        if (type != null) 'type': type!,
      };
}

/// Represents the response to an `onClick` event.
class GoogleAppsCardV1OnClick {
  /// If specified, an action is triggered by this `onClick`.
  GoogleAppsCardV1Action? action;

  /// A new card is pushed to the card stack after clicking if specified.
  GoogleAppsCardV1Card? card;

  /// An add-on triggers this action when the action needs to open a link.
  ///
  /// This differs from the `open_link` above in that this needs to talk to
  /// server to get the link. Thus some preparation work is required for web
  /// client to do before the open link action response comes back.
  GoogleAppsCardV1Action? openDynamicLinkAction;

  /// If specified, this `onClick` triggers an open link action.
  GoogleAppsCardV1OpenLink? openLink;

  GoogleAppsCardV1OnClick({
    this.action,
    this.card,
    this.openDynamicLinkAction,
    this.openLink,
  });

  GoogleAppsCardV1OnClick.fromJson(core.Map _json)
      : this(
          action: _json.containsKey('action')
              ? GoogleAppsCardV1Action.fromJson(
                  _json['action'] as core.Map<core.String, core.dynamic>)
              : null,
          card: _json.containsKey('card')
              ? GoogleAppsCardV1Card.fromJson(
                  _json['card'] as core.Map<core.String, core.dynamic>)
              : null,
          openDynamicLinkAction: _json.containsKey('openDynamicLinkAction')
              ? GoogleAppsCardV1Action.fromJson(_json['openDynamicLinkAction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          openLink: _json.containsKey('openLink')
              ? GoogleAppsCardV1OpenLink.fromJson(
                  _json['openLink'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (card != null) 'card': card!,
        if (openDynamicLinkAction != null)
          'openDynamicLinkAction': openDynamicLinkAction!,
        if (openLink != null) 'openLink': openLink!,
      };
}

/// Represents an `onClick` event that opens a hyperlink.
class GoogleAppsCardV1OpenLink {
  /// Whether the client forgets about a link after opening it, or observes it
  /// until the window closes.
  ///
  /// Not supported by Chat apps.
  /// Possible string values are:
  /// - "NOTHING" : Doesn’t reload the card after the child window closes.
  /// - "RELOAD" : Reloads the card after the child window closes. If used in
  /// conjunction with
  /// \[OpenAs.OVERLAY\](/workspace/add-ons/reference/rpc/google.apps.card.v1#openas),
  /// the child window acts as a modal dialog and the main card is blocked until
  /// the child window closes.
  core.String? onClose;

  /// How to open a link.
  ///
  /// Not supported by Chat apps.
  /// Possible string values are:
  /// - "FULL_SIZE" : The link opens as a full size window (if that's the frame
  /// used by the client.
  /// - "OVERLAY" : The link opens as an overlay, such as a pop-up.
  core.String? openAs;

  /// The URL to open.
  core.String? url;

  GoogleAppsCardV1OpenLink({
    this.onClose,
    this.openAs,
    this.url,
  });

  GoogleAppsCardV1OpenLink.fromJson(core.Map _json)
      : this(
          onClose: _json.containsKey('onClose')
              ? _json['onClose'] as core.String
              : null,
          openAs: _json.containsKey('openAs')
              ? _json['openAs'] as core.String
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (onClose != null) 'onClose': onClose!,
        if (openAs != null) 'openAs': openAs!,
        if (url != null) 'url': url!,
      };
}

/// A section contains a collection of widgets that are rendered vertically in
/// the order that they are specified.
///
/// Across all platforms, cards have a narrow fixed width, so there is currently
/// no need for layout properties, for example, float.
class GoogleAppsCardV1Section {
  /// Indicates whether this section is collapsible.
  ///
  /// If a section is collapsible, the description must be given.
  core.bool? collapsible;

  /// The header of the section.
  ///
  /// Formatted text is supported.
  core.String? header;

  /// The number of uncollapsible widgets.
  ///
  /// For example, when a section contains five widgets and the
  /// `uncollapsibleWidgetsCount` is set to `2`, the first two widgets are
  /// always shown and the last three are collapsed as default. The
  /// `uncollapsibleWidgetsCount` is taken into account only when `collapsible`
  /// is `true`.
  core.int? uncollapsibleWidgetsCount;

  /// A section must contain at least 1 widget.
  core.List<GoogleAppsCardV1Widget>? widgets;

  GoogleAppsCardV1Section({
    this.collapsible,
    this.header,
    this.uncollapsibleWidgetsCount,
    this.widgets,
  });

  GoogleAppsCardV1Section.fromJson(core.Map _json)
      : this(
          collapsible: _json.containsKey('collapsible')
              ? _json['collapsible'] as core.bool
              : null,
          header: _json.containsKey('header')
              ? _json['header'] as core.String
              : null,
          uncollapsibleWidgetsCount:
              _json.containsKey('uncollapsibleWidgetsCount')
                  ? _json['uncollapsibleWidgetsCount'] as core.int
                  : null,
          widgets: _json.containsKey('widgets')
              ? (_json['widgets'] as core.List)
                  .map((value) => GoogleAppsCardV1Widget.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (collapsible != null) 'collapsible': collapsible!,
        if (header != null) 'header': header!,
        if (uncollapsibleWidgetsCount != null)
          'uncollapsibleWidgetsCount': uncollapsibleWidgetsCount!,
        if (widgets != null) 'widgets': widgets!,
      };
}

/// A widget that creates a UI item with options for users to select.
///
/// For example, a dropdown menu.
class GoogleAppsCardV1SelectionInput {
  /// An array of the selected items.
  core.List<GoogleAppsCardV1SelectionItem>? items;

  /// The label displayed ahead of the switch control.
  core.String? label;

  /// The name of the text input which is used in `formInput`.
  core.String? name;

  /// If specified, the form is submitted when the selection changes.
  ///
  /// If not specified, you must specify a separate button.
  GoogleAppsCardV1Action? onChangeAction;

  /// The type of the selection.
  /// Possible string values are:
  /// - "CHECK_BOX" : A checkbox.
  /// - "RADIO_BUTTON" : A radio button.
  /// - "SWITCH" : A switch.
  /// - "DROPDOWN" : A dropdown menu.
  core.String? type;

  GoogleAppsCardV1SelectionInput({
    this.items,
    this.label,
    this.name,
    this.onChangeAction,
    this.type,
  });

  GoogleAppsCardV1SelectionInput.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => GoogleAppsCardV1SelectionItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          label:
              _json.containsKey('label') ? _json['label'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          onChangeAction: _json.containsKey('onChangeAction')
              ? GoogleAppsCardV1Action.fromJson(_json['onChangeAction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (label != null) 'label': label!,
        if (name != null) 'name': name!,
        if (onChangeAction != null) 'onChangeAction': onChangeAction!,
        if (type != null) 'type': type!,
      };
}

/// A selectable item in the switch control.
class GoogleAppsCardV1SelectionItem {
  /// If more than one item is selected for `RADIO_BUTTON` and `DROPDOWN`, the
  /// first selected item is treated as selected and the ones after are ignored.
  core.bool? selected;

  /// The text to be displayed.
  core.String? text;

  /// The value associated with this item.
  ///
  /// The client should use this as a form input value.
  core.String? value;

  GoogleAppsCardV1SelectionItem({
    this.selected,
    this.text,
    this.value,
  });

  GoogleAppsCardV1SelectionItem.fromJson(core.Map _json)
      : this(
          selected: _json.containsKey('selected')
              ? _json['selected'] as core.bool
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (selected != null) 'selected': selected!,
        if (text != null) 'text': text!,
        if (value != null) 'value': value!,
      };
}

/// A suggestion item.
class GoogleAppsCardV1SuggestionItem {
  /// The suggested autocomplete result.
  core.String? text;

  GoogleAppsCardV1SuggestionItem({
    this.text,
  });

  GoogleAppsCardV1SuggestionItem.fromJson(core.Map _json)
      : this(
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (text != null) 'text': text!,
      };
}

/// A container wrapping elements necessary for showing suggestion items used in
/// text input autocomplete.
class GoogleAppsCardV1Suggestions {
  /// A list of suggestions used for autocomplete recommendations.
  core.List<GoogleAppsCardV1SuggestionItem>? items;

  GoogleAppsCardV1Suggestions({
    this.items,
  });

  GoogleAppsCardV1Suggestions.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => GoogleAppsCardV1SuggestionItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
      };
}

/// Either a toggle-style switch or a checkbox.
class GoogleAppsCardV1SwitchControl {
  /// The control type, either switch or checkbox.
  /// Possible string values are:
  /// - "SWITCH" : A toggle-style switch.
  /// - "CHECKBOX" : Deprecated in favor of `CHECK_BOX`.
  /// - "CHECK_BOX" : A checkbox.
  core.String? controlType;

  /// The name of the switch widget that's used in `formInput`.
  core.String? name;

  /// The action when the switch state is changed.
  GoogleAppsCardV1Action? onChangeAction;

  /// If the switch is selected.
  core.bool? selected;

  /// The value is what is passed back in the callback.
  core.String? value;

  GoogleAppsCardV1SwitchControl({
    this.controlType,
    this.name,
    this.onChangeAction,
    this.selected,
    this.value,
  });

  GoogleAppsCardV1SwitchControl.fromJson(core.Map _json)
      : this(
          controlType: _json.containsKey('controlType')
              ? _json['controlType'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          onChangeAction: _json.containsKey('onChangeAction')
              ? GoogleAppsCardV1Action.fromJson(_json['onChangeAction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          selected: _json.containsKey('selected')
              ? _json['selected'] as core.bool
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (controlType != null) 'controlType': controlType!,
        if (name != null) 'name': name!,
        if (onChangeAction != null) 'onChangeAction': onChangeAction!,
        if (selected != null) 'selected': selected!,
        if (value != null) 'value': value!,
      };
}

/// A text input is a UI item where users can input text.
///
/// A text input can also have an onChange action and suggestions.
class GoogleAppsCardV1TextInput {
  /// The refresh function that returns suggestions based on the user's input
  /// text.
  ///
  /// If the callback is not specified, autocomplete is done in client side
  /// based on the initial suggestion items.
  GoogleAppsCardV1Action? autoCompleteAction;

  /// The hint text.
  core.String? hintText;

  /// The initial suggestions made before any user input.
  GoogleAppsCardV1Suggestions? initialSuggestions;

  /// At least one of label and hintText must be specified.
  core.String? label;

  /// The name of the text input which is used in `formInput`.
  core.String? name;

  /// The onChange action, for example, invoke a function.
  GoogleAppsCardV1Action? onChangeAction;

  /// The style of the text, for example, a single line or multiple lines.
  /// Possible string values are:
  /// - "SINGLE_LINE" : The text is put into a single line.
  /// - "MULTIPLE_LINE" : The text is put into multiple lines.
  core.String? type;

  /// The default value when there is no input from the user.
  core.String? value;

  GoogleAppsCardV1TextInput({
    this.autoCompleteAction,
    this.hintText,
    this.initialSuggestions,
    this.label,
    this.name,
    this.onChangeAction,
    this.type,
    this.value,
  });

  GoogleAppsCardV1TextInput.fromJson(core.Map _json)
      : this(
          autoCompleteAction: _json.containsKey('autoCompleteAction')
              ? GoogleAppsCardV1Action.fromJson(_json['autoCompleteAction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          hintText: _json.containsKey('hintText')
              ? _json['hintText'] as core.String
              : null,
          initialSuggestions: _json.containsKey('initialSuggestions')
              ? GoogleAppsCardV1Suggestions.fromJson(_json['initialSuggestions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          label:
              _json.containsKey('label') ? _json['label'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          onChangeAction: _json.containsKey('onChangeAction')
              ? GoogleAppsCardV1Action.fromJson(_json['onChangeAction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoCompleteAction != null)
          'autoCompleteAction': autoCompleteAction!,
        if (hintText != null) 'hintText': hintText!,
        if (initialSuggestions != null)
          'initialSuggestions': initialSuggestions!,
        if (label != null) 'label': label!,
        if (name != null) 'name': name!,
        if (onChangeAction != null) 'onChangeAction': onChangeAction!,
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

/// A paragraph of text that supports formatting.
///
/// See \[Text formatting\](workspace/add-ons/concepts/widgets#text_formatting")
/// for details.
class GoogleAppsCardV1TextParagraph {
  /// The text that's shown in the widget.
  core.String? text;

  GoogleAppsCardV1TextParagraph({
    this.text,
  });

  GoogleAppsCardV1TextParagraph.fromJson(core.Map _json)
      : this(
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (text != null) 'text': text!,
      };
}

/// A widget is a UI element that presents texts, images, etc.
class GoogleAppsCardV1Widget {
  /// A list of buttons.
  ///
  /// For example, the following JSON creates two buttons. The first is a filled
  /// text button and the second is an image button that opens a link: ```
  /// "buttonList": { "buttons": [ "button": { "text": "Edit", "Color": { "Red":
  /// 255 "Green": 255 "Blue": 255 } "disabled": true }, "button": { "icon": {
  /// "knownIcon": "INVITE" "altText": "check calendar" }, "onClick": {
  /// "openLink": { "url": "https://example.com/calendar" } } }, ] } ```
  GoogleAppsCardV1ButtonList? buttonList;

  /// Displays a selection/input widget for date/time.
  ///
  /// For example, the following JSON creates a date/time picker for an
  /// appointment time: ``` "date_time_picker": { "name": "appointment_time",
  /// "label": "Book your appointment at:", "type":
  /// "DateTimePickerType.DATE_AND_TIME", "valueMsEpoch": "796435200000" } ```
  GoogleAppsCardV1DateTimePicker? dateTimePicker;

  /// Displays a decorated text item in this widget.
  ///
  /// For example, the following JSON creates a decorated text widget showing
  /// email address: ``` "decoratedText": { "icon": { "knownIcon": "EMAIL" },
  /// "topLabel": "Email Address", "content": "sasha@example.com",
  /// "bottomLabel": "This is a new Email address!", "switchWidget": { "name":
  /// "has_send_welcome_email_to_sasha", "selected": false, "controlType":
  /// "ControlType.CHECKBOX" } } ```
  GoogleAppsCardV1DecoratedText? decoratedText;

  /// Displays a divider.
  ///
  /// For example, the following JSON creates a divider: ``` "divider": { } ```
  GoogleAppsCardV1Divider? divider;

  /// Displays a grid with a collection of items.
  ///
  /// For example, the following JSON creates a 2 column grid with a single
  /// item: ``` "grid": { "title": "A fine collection of items", "numColumns":
  /// 2, "borderStyle": { "type": "STROKE", "cornerRadius": 4.0 }, "items": [
  /// "image": { "imageUri": "https://www.example.com/image.png", "cropStyle": {
  /// "type": "SQUARE" }, "borderStyle": { "type": "STROKE" } }, "title": "An
  /// item", "textAlignment": "CENTER" ], "onClick": { "openLink": {
  /// "url":"https://www.example.com" } } } ```
  GoogleAppsCardV1Grid? grid;

  /// The horizontal alignment of this widget.
  /// Possible string values are:
  /// - "HORIZONTAL_ALIGNMENT_UNSPECIFIED" : Unspecified alignment.
  /// - "START" : Alignment to the start position.
  /// - "CENTER" : Alignment to the center position.
  /// - "END" : Alignment to the end position.
  core.String? horizontalAlignment;

  /// Displays an image in this widget.
  ///
  /// For example, the following JSON creates an image with alternative text:
  /// ``` "image": { "imageUrl": "https://example.com/sasha.png" "altText":
  /// "Avatar for Sasha" } ```
  GoogleAppsCardV1Image? image;

  /// Displays a switch control in this widget.
  ///
  /// For example, the following JSON creates a dropdown selection for size: ```
  /// "switchControl": { "name": "size", "label": "Size" "type":
  /// "SelectionType.DROPDOWN", "items": [ { "text": "S", "value": "small",
  /// "selected": false }, { "text": "M", "value": "medium", "selected": true },
  /// { "text": "L", "value": "large", "selected": false }, { "text": "XL",
  /// "value": "extra_large", "selected": false } ] } ```
  GoogleAppsCardV1SelectionInput? selectionInput;

  /// Displays a text input in this widget.
  ///
  /// For example, the following JSON creates a text input for mail address: ```
  /// "textInput": { "name": "mailing_address", "label": "Mailing Address" } ```
  /// As another example, the following JSON creates a text input for
  /// programming language with static suggestions: ``` "textInput": { "name":
  /// "preferred_programing_language", "label": "Preferred Language",
  /// "initialSuggestions": { "items": [ { "text": "C++" }, { "text": "Java" },
  /// { "text": "JavaScript" }, { "text": "Python" } ] } } ```
  GoogleAppsCardV1TextInput? textInput;

  /// Displays a text paragraph in this widget.
  ///
  /// For example, the following JSON creates a bolded text: ```
  /// "textParagraph": { "text": " *bold text*" } ```
  GoogleAppsCardV1TextParagraph? textParagraph;

  GoogleAppsCardV1Widget({
    this.buttonList,
    this.dateTimePicker,
    this.decoratedText,
    this.divider,
    this.grid,
    this.horizontalAlignment,
    this.image,
    this.selectionInput,
    this.textInput,
    this.textParagraph,
  });

  GoogleAppsCardV1Widget.fromJson(core.Map _json)
      : this(
          buttonList: _json.containsKey('buttonList')
              ? GoogleAppsCardV1ButtonList.fromJson(
                  _json['buttonList'] as core.Map<core.String, core.dynamic>)
              : null,
          dateTimePicker: _json.containsKey('dateTimePicker')
              ? GoogleAppsCardV1DateTimePicker.fromJson(_json['dateTimePicker']
                  as core.Map<core.String, core.dynamic>)
              : null,
          decoratedText: _json.containsKey('decoratedText')
              ? GoogleAppsCardV1DecoratedText.fromJson(
                  _json['decoratedText'] as core.Map<core.String, core.dynamic>)
              : null,
          divider: _json.containsKey('divider')
              ? GoogleAppsCardV1Divider.fromJson(
                  _json['divider'] as core.Map<core.String, core.dynamic>)
              : null,
          grid: _json.containsKey('grid')
              ? GoogleAppsCardV1Grid.fromJson(
                  _json['grid'] as core.Map<core.String, core.dynamic>)
              : null,
          horizontalAlignment: _json.containsKey('horizontalAlignment')
              ? _json['horizontalAlignment'] as core.String
              : null,
          image: _json.containsKey('image')
              ? GoogleAppsCardV1Image.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
          selectionInput: _json.containsKey('selectionInput')
              ? GoogleAppsCardV1SelectionInput.fromJson(_json['selectionInput']
                  as core.Map<core.String, core.dynamic>)
              : null,
          textInput: _json.containsKey('textInput')
              ? GoogleAppsCardV1TextInput.fromJson(
                  _json['textInput'] as core.Map<core.String, core.dynamic>)
              : null,
          textParagraph: _json.containsKey('textParagraph')
              ? GoogleAppsCardV1TextParagraph.fromJson(
                  _json['textParagraph'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buttonList != null) 'buttonList': buttonList!,
        if (dateTimePicker != null) 'dateTimePicker': dateTimePicker!,
        if (decoratedText != null) 'decoratedText': decoratedText!,
        if (divider != null) 'divider': divider!,
        if (grid != null) 'grid': grid!,
        if (horizontalAlignment != null)
          'horizontalAlignment': horizontalAlignment!,
        if (image != null) 'image': image!,
        if (selectionInput != null) 'selectionInput': selectionInput!,
        if (textInput != null) 'textInput': textInput!,
        if (textParagraph != null) 'textParagraph': textParagraph!,
      };
}

/// An image that is specified by a URL and can have an onclick action.
class Image {
  /// The aspect ratio of this image (width/height).
  ///
  /// This field allows clients to reserve the right height for the image while
  /// waiting for it to load. It's not meant to override the native aspect ratio
  /// of the image. If unset, the server fills it by prefetching the image.
  core.double? aspectRatio;

  /// The URL of the image.
  core.String? imageUrl;

  /// The onclick action.
  OnClick? onClick;

  Image({
    this.aspectRatio,
    this.imageUrl,
    this.onClick,
  });

  Image.fromJson(core.Map _json)
      : this(
          aspectRatio: _json.containsKey('aspectRatio')
              ? (_json['aspectRatio'] as core.num).toDouble()
              : null,
          imageUrl: _json.containsKey('imageUrl')
              ? _json['imageUrl'] as core.String
              : null,
          onClick: _json.containsKey('onClick')
              ? OnClick.fromJson(
                  _json['onClick'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aspectRatio != null) 'aspectRatio': aspectRatio!,
        if (imageUrl != null) 'imageUrl': imageUrl!,
        if (onClick != null) 'onClick': onClick!,
      };
}

/// An image button with an onclick action.
class ImageButton {
  /// The icon specified by an enum that indices to an icon provided by Chat
  /// API.
  /// Possible string values are:
  /// - "ICON_UNSPECIFIED"
  /// - "AIRPLANE"
  /// - "BOOKMARK"
  /// - "BUS"
  /// - "CAR"
  /// - "CLOCK"
  /// - "CONFIRMATION_NUMBER_ICON"
  /// - "DOLLAR"
  /// - "DESCRIPTION"
  /// - "EMAIL"
  /// - "EVENT_PERFORMER"
  /// - "EVENT_SEAT"
  /// - "FLIGHT_ARRIVAL"
  /// - "FLIGHT_DEPARTURE"
  /// - "HOTEL"
  /// - "HOTEL_ROOM_TYPE"
  /// - "INVITE"
  /// - "MAP_PIN"
  /// - "MEMBERSHIP"
  /// - "MULTIPLE_PEOPLE"
  /// - "OFFER"
  /// - "PERSON"
  /// - "PHONE"
  /// - "RESTAURANT_ICON"
  /// - "SHOPPING_CART"
  /// - "STAR"
  /// - "STORE"
  /// - "TICKET"
  /// - "TRAIN"
  /// - "VIDEO_CAMERA"
  /// - "VIDEO_PLAY"
  core.String? icon;

  /// The icon specified by a URL.
  core.String? iconUrl;

  /// The name of this image_button which will be used for accessibility.
  ///
  /// Default value will be provided if developers don't specify.
  core.String? name;

  /// The onclick action.
  OnClick? onClick;

  ImageButton({
    this.icon,
    this.iconUrl,
    this.name,
    this.onClick,
  });

  ImageButton.fromJson(core.Map _json)
      : this(
          icon: _json.containsKey('icon') ? _json['icon'] as core.String : null,
          iconUrl: _json.containsKey('iconUrl')
              ? _json['iconUrl'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          onClick: _json.containsKey('onClick')
              ? OnClick.fromJson(
                  _json['onClick'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (icon != null) 'icon': icon!,
        if (iconUrl != null) 'iconUrl': iconUrl!,
        if (name != null) 'name': name!,
        if (onClick != null) 'onClick': onClick!,
      };
}

/// A UI element contains a key (label) and a value (content).
///
/// And this element may also contain some actions such as onclick button.
class KeyValue {
  /// The text of the bottom label.
  ///
  /// Formatted text supported.
  core.String? bottomLabel;

  /// A button that can be clicked to trigger an action.
  Button? button;

  /// The text of the content.
  ///
  /// Formatted text supported and always required.
  core.String? content;

  /// If the content should be multiline.
  core.bool? contentMultiline;

  /// An enum value that will be replaced by the Chat API with the corresponding
  /// icon image.
  /// Possible string values are:
  /// - "ICON_UNSPECIFIED"
  /// - "AIRPLANE"
  /// - "BOOKMARK"
  /// - "BUS"
  /// - "CAR"
  /// - "CLOCK"
  /// - "CONFIRMATION_NUMBER_ICON"
  /// - "DOLLAR"
  /// - "DESCRIPTION"
  /// - "EMAIL"
  /// - "EVENT_PERFORMER"
  /// - "EVENT_SEAT"
  /// - "FLIGHT_ARRIVAL"
  /// - "FLIGHT_DEPARTURE"
  /// - "HOTEL"
  /// - "HOTEL_ROOM_TYPE"
  /// - "INVITE"
  /// - "MAP_PIN"
  /// - "MEMBERSHIP"
  /// - "MULTIPLE_PEOPLE"
  /// - "OFFER"
  /// - "PERSON"
  /// - "PHONE"
  /// - "RESTAURANT_ICON"
  /// - "SHOPPING_CART"
  /// - "STAR"
  /// - "STORE"
  /// - "TICKET"
  /// - "TRAIN"
  /// - "VIDEO_CAMERA"
  /// - "VIDEO_PLAY"
  core.String? icon;

  /// The icon specified by a URL.
  core.String? iconUrl;

  /// The onclick action.
  ///
  /// Only the top label, bottom label and content region are clickable.
  OnClick? onClick;

  /// The text of the top label.
  ///
  /// Formatted text supported.
  core.String? topLabel;

  KeyValue({
    this.bottomLabel,
    this.button,
    this.content,
    this.contentMultiline,
    this.icon,
    this.iconUrl,
    this.onClick,
    this.topLabel,
  });

  KeyValue.fromJson(core.Map _json)
      : this(
          bottomLabel: _json.containsKey('bottomLabel')
              ? _json['bottomLabel'] as core.String
              : null,
          button: _json.containsKey('button')
              ? Button.fromJson(
                  _json['button'] as core.Map<core.String, core.dynamic>)
              : null,
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          contentMultiline: _json.containsKey('contentMultiline')
              ? _json['contentMultiline'] as core.bool
              : null,
          icon: _json.containsKey('icon') ? _json['icon'] as core.String : null,
          iconUrl: _json.containsKey('iconUrl')
              ? _json['iconUrl'] as core.String
              : null,
          onClick: _json.containsKey('onClick')
              ? OnClick.fromJson(
                  _json['onClick'] as core.Map<core.String, core.dynamic>)
              : null,
          topLabel: _json.containsKey('topLabel')
              ? _json['topLabel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bottomLabel != null) 'bottomLabel': bottomLabel!,
        if (button != null) 'button': button!,
        if (content != null) 'content': content!,
        if (contentMultiline != null) 'contentMultiline': contentMultiline!,
        if (icon != null) 'icon': icon!,
        if (iconUrl != null) 'iconUrl': iconUrl!,
        if (onClick != null) 'onClick': onClick!,
        if (topLabel != null) 'topLabel': topLabel!,
      };
}

class ListMembershipsResponse {
  /// List of memberships in the requested (or first) page.
  core.List<Membership>? memberships;

  /// Continuation token to retrieve the next page of results.
  ///
  /// It will be empty for the last page of results.
  core.String? nextPageToken;

  ListMembershipsResponse({
    this.memberships,
    this.nextPageToken,
  });

  ListMembershipsResponse.fromJson(core.Map _json)
      : this(
          memberships: _json.containsKey('memberships')
              ? (_json['memberships'] as core.List)
                  .map((value) => Membership.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (memberships != null) 'memberships': memberships!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListSpacesResponse {
  /// Continuation token to retrieve the next page of results.
  ///
  /// It will be empty for the last page of results. Tokens expire in an hour.
  /// An error is thrown if an expired token is passed.
  core.String? nextPageToken;

  /// List of spaces in the requested (or first) page.
  core.List<Space>? spaces;

  ListSpacesResponse({
    this.nextPageToken,
    this.spaces,
  });

  ListSpacesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          spaces: _json.containsKey('spaces')
              ? (_json['spaces'] as core.List)
                  .map((value) => Space.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (spaces != null) 'spaces': spaces!,
      };
}

/// A matched url in a Chat message.
///
/// Chat apps can preview matched URLs. For more information, refer to
/// [Preview links](https://developers.google.com/chat/how-tos/preview-links).
class MatchedUrl {
  /// The url that was matched.
  ///
  /// Output only.
  core.String? url;

  MatchedUrl({
    this.url,
  });

  MatchedUrl.fromJson(core.Map _json)
      : this(
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (url != null) 'url': url!,
      };
}

/// Media resource.
typedef Media = $Media;

/// Represents a membership relation in Google Chat, such as whether a user or
/// Chat app is invited to, part of, or absent from a space.
class Membership {
  /// The creation time of the membership, such as when a member joined or was
  /// invited to join a space.
  ///
  /// Output only.
  core.String? createTime;

  /// A Google Chat user or app.
  ///
  /// Format: `users/{user}` or `users/app` When `users/{user}`, represents a
  /// [person](https://developers.google.com/people/api/rest/v1/people) in the
  /// People API or a
  /// [user](https://developers.google.com/admin-sdk/directory/reference/rest/v1/users)
  /// in the Admin SDK Directory API. When `users/app`, represents a Chat app
  /// creating membership for itself.
  User? member;

  /// Resource name of the membership.
  ///
  /// Format: spaces/{space}/members/{member}
  core.String? name;

  /// State of the membership.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "MEMBERSHIP_STATE_UNSPECIFIED" : Default, do not use.
  /// - "JOINED" : The user has joined the space.
  /// - "INVITED" : The user has been invited, is able to join the space, but
  /// currently has not joined.
  /// - "NOT_A_MEMBER" : The user is not a member of the space, has not been
  /// invited and is not able to join the space.
  core.String? state;

  Membership({
    this.createTime,
    this.member,
    this.name,
    this.state,
  });

  Membership.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          member: _json.containsKey('member')
              ? User.fromJson(
                  _json['member'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (member != null) 'member': member!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
      };
}

/// A message in Google Chat.
class Message {
  /// Input only.
  ///
  /// Parameters that a Chat app can use to configure how its response is
  /// posted.
  ActionResponse? actionResponse;

  /// Annotations associated with the text in this message.
  ///
  /// Output only.
  core.List<Annotation>? annotations;

  /// Plain-text body of the message with all Chat app mentions stripped out.
  core.String? argumentText;

  /// User uploaded attachment.
  core.List<Attachment>? attachment;

  /// Rich, formatted and interactive cards that can be used to display UI
  /// elements such as: formatted texts, buttons, clickable images.
  ///
  /// Cards are normally displayed below the plain-text body of the message.
  core.List<Card>? cards;

  /// The time at which the message was created in Google Chat server.
  ///
  /// Output only.
  core.String? createTime;

  /// A plain-text description of the message's cards, used when the actual
  /// cards cannot be displayed (e.g. mobile notifications).
  core.String? fallbackText;

  /// The time at which the message was last updated.
  ///
  /// If the message was never updated, this field matches `create_time`.
  ///
  /// Output only.
  core.String? lastUpdateTime;

  /// A URL in `spaces.messages.text` that matches a link preview pattern.
  ///
  /// For more information, refer to
  /// [Preview links](https://developers.google.com/chat/how-tos/preview-links).
  ///
  /// Output only.
  MatchedUrl? matchedUrl;

  /// Resource name in the form `spaces / * /messages / * `.
  ///
  /// Example: `spaces/AAAAAAAAAAA/messages/BBBBBBBBBBB.BBBBBBBBBBB`
  core.String? name;

  /// The user who created the message.
  ///
  /// Output only.
  User? sender;

  /// Slash command information, if applicable.
  ///
  /// Output only.
  SlashCommand? slashCommand;

  /// The space the message belongs to.
  Space? space;

  /// Plain-text body of the message.
  ///
  /// The first link to an image, video, web page, or other preview-able item
  /// generates a preview chip.
  core.String? text;

  /// The thread the message belongs to.
  Thread? thread;

  Message({
    this.actionResponse,
    this.annotations,
    this.argumentText,
    this.attachment,
    this.cards,
    this.createTime,
    this.fallbackText,
    this.lastUpdateTime,
    this.matchedUrl,
    this.name,
    this.sender,
    this.slashCommand,
    this.space,
    this.text,
    this.thread,
  });

  Message.fromJson(core.Map _json)
      : this(
          actionResponse: _json.containsKey('actionResponse')
              ? ActionResponse.fromJson(_json['actionResponse']
                  as core.Map<core.String, core.dynamic>)
              : null,
          annotations: _json.containsKey('annotations')
              ? (_json['annotations'] as core.List)
                  .map((value) => Annotation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          argumentText: _json.containsKey('argumentText')
              ? _json['argumentText'] as core.String
              : null,
          attachment: _json.containsKey('attachment')
              ? (_json['attachment'] as core.List)
                  .map((value) => Attachment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          cards: _json.containsKey('cards')
              ? (_json['cards'] as core.List)
                  .map((value) => Card.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          fallbackText: _json.containsKey('fallbackText')
              ? _json['fallbackText'] as core.String
              : null,
          lastUpdateTime: _json.containsKey('lastUpdateTime')
              ? _json['lastUpdateTime'] as core.String
              : null,
          matchedUrl: _json.containsKey('matchedUrl')
              ? MatchedUrl.fromJson(
                  _json['matchedUrl'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          sender: _json.containsKey('sender')
              ? User.fromJson(
                  _json['sender'] as core.Map<core.String, core.dynamic>)
              : null,
          slashCommand: _json.containsKey('slashCommand')
              ? SlashCommand.fromJson(
                  _json['slashCommand'] as core.Map<core.String, core.dynamic>)
              : null,
          space: _json.containsKey('space')
              ? Space.fromJson(
                  _json['space'] as core.Map<core.String, core.dynamic>)
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
          thread: _json.containsKey('thread')
              ? Thread.fromJson(
                  _json['thread'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionResponse != null) 'actionResponse': actionResponse!,
        if (annotations != null) 'annotations': annotations!,
        if (argumentText != null) 'argumentText': argumentText!,
        if (attachment != null) 'attachment': attachment!,
        if (cards != null) 'cards': cards!,
        if (createTime != null) 'createTime': createTime!,
        if (fallbackText != null) 'fallbackText': fallbackText!,
        if (lastUpdateTime != null) 'lastUpdateTime': lastUpdateTime!,
        if (matchedUrl != null) 'matchedUrl': matchedUrl!,
        if (name != null) 'name': name!,
        if (sender != null) 'sender': sender!,
        if (slashCommand != null) 'slashCommand': slashCommand!,
        if (space != null) 'space': space!,
        if (text != null) 'text': text!,
        if (thread != null) 'thread': thread!,
      };
}

/// An onclick action (e.g. open a link).
class OnClick {
  /// A form action will be triggered by this onclick if specified.
  FormAction? action;

  /// This onclick triggers an open link action if specified.
  OpenLink? openLink;

  OnClick({
    this.action,
    this.openLink,
  });

  OnClick.fromJson(core.Map _json)
      : this(
          action: _json.containsKey('action')
              ? FormAction.fromJson(
                  _json['action'] as core.Map<core.String, core.dynamic>)
              : null,
          openLink: _json.containsKey('openLink')
              ? OpenLink.fromJson(
                  _json['openLink'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (openLink != null) 'openLink': openLink!,
      };
}

/// A link that opens a new window.
class OpenLink {
  /// The URL to open.
  core.String? url;

  OpenLink({
    this.url,
  });

  OpenLink.fromJson(core.Map _json)
      : this(
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (url != null) 'url': url!,
      };
}

/// A section contains a collection of widgets that are rendered (vertically) in
/// the order that they are specified.
///
/// Across all platforms, cards have a narrow fixed width, so there is currently
/// no need for layout properties (e.g. float).
class Section {
  /// The header of the section, text formatted supported.
  core.String? header;

  /// A section must contain at least 1 widget.
  core.List<WidgetMarkup>? widgets;

  Section({
    this.header,
    this.widgets,
  });

  Section.fromJson(core.Map _json)
      : this(
          header: _json.containsKey('header')
              ? _json['header'] as core.String
              : null,
          widgets: _json.containsKey('widgets')
              ? (_json['widgets'] as core.List)
                  .map((value) => WidgetMarkup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (header != null) 'header': header!,
        if (widgets != null) 'widgets': widgets!,
      };
}

/// A [slash command](https://developers.google.com/chat/how-tos/slash-commands)
/// in Google Chat.
class SlashCommand {
  /// The id of the slash command invoked.
  core.String? commandId;

  SlashCommand({
    this.commandId,
  });

  SlashCommand.fromJson(core.Map _json)
      : this(
          commandId: _json.containsKey('commandId')
              ? _json['commandId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commandId != null) 'commandId': commandId!,
      };
}

/// Annotation metadata for slash commands (/).
class SlashCommandMetadata {
  /// The Chat app whose command was invoked.
  User? bot;

  /// The command id of the invoked slash command.
  core.String? commandId;

  /// The name of the invoked slash command.
  core.String? commandName;

  /// Indicating whether the slash command is for a dialog.
  core.bool? triggersDialog;

  /// The type of slash command.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value for the enum. DO NOT USE.
  /// - "ADD" : Add Chat app to space.
  /// - "INVOKE" : Invoke slash command in space.
  core.String? type;

  SlashCommandMetadata({
    this.bot,
    this.commandId,
    this.commandName,
    this.triggersDialog,
    this.type,
  });

  SlashCommandMetadata.fromJson(core.Map _json)
      : this(
          bot: _json.containsKey('bot')
              ? User.fromJson(
                  _json['bot'] as core.Map<core.String, core.dynamic>)
              : null,
          commandId: _json.containsKey('commandId')
              ? _json['commandId'] as core.String
              : null,
          commandName: _json.containsKey('commandName')
              ? _json['commandName'] as core.String
              : null,
          triggersDialog: _json.containsKey('triggersDialog')
              ? _json['triggersDialog'] as core.bool
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bot != null) 'bot': bot!,
        if (commandId != null) 'commandId': commandId!,
        if (commandName != null) 'commandName': commandName!,
        if (triggersDialog != null) 'triggersDialog': triggersDialog!,
        if (type != null) 'type': type!,
      };
}

/// A space in Google Chat.
///
/// Spaces are conversations between two or more users or 1:1 messages between a
/// user and a Chat app.
class Space {
  /// The space's display name.
  ///
  /// For direct messages between humans, this field might be empty.
  core.String? displayName;

  /// Resource name of the space.
  ///
  /// Format: spaces/{space}
  core.String? name;

  /// Whether the space is a DM between a Chat app and a single human.
  ///
  /// Output only.
  core.bool? singleUserBotDm;

  /// Whether messages are threaded in this space.
  ///
  /// Output only.
  core.bool? threaded;

  /// Deprecated: Use `single_user_bot_dm` or `space_type` (developer preview)
  /// instead.
  ///
  /// The type of a space.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED"
  /// - "ROOM" : Conversations between two or more humans.
  /// - "DM" : 1:1 Direct Message between a human and a Chat app, where all
  /// messages are flat. Note that this does not include direct messages between
  /// two humans.
  core.String? type;

  Space({
    this.displayName,
    this.name,
    this.singleUserBotDm,
    this.threaded,
    this.type,
  });

  Space.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          singleUserBotDm: _json.containsKey('singleUserBotDm')
              ? _json['singleUserBotDm'] as core.bool
              : null,
          threaded: _json.containsKey('threaded')
              ? _json['threaded'] as core.bool
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (singleUserBotDm != null) 'singleUserBotDm': singleUserBotDm!,
        if (threaded != null) 'threaded': threaded!,
        if (type != null) 'type': type!,
      };
}

/// A button with text and onclick action.
class TextButton {
  /// The onclick action of the button.
  OnClick? onClick;

  /// The text of the button.
  core.String? text;

  TextButton({
    this.onClick,
    this.text,
  });

  TextButton.fromJson(core.Map _json)
      : this(
          onClick: _json.containsKey('onClick')
              ? OnClick.fromJson(
                  _json['onClick'] as core.Map<core.String, core.dynamic>)
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (onClick != null) 'onClick': onClick!,
        if (text != null) 'text': text!,
      };
}

/// A paragraph of text.
///
/// Formatted text supported.
class TextParagraph {
  core.String? text;

  TextParagraph({
    this.text,
  });

  TextParagraph.fromJson(core.Map _json)
      : this(
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (text != null) 'text': text!,
      };
}

/// A thread in Google Chat.
class Thread {
  /// Resource name, in the form "spaces / * /threads / * ".
  ///
  /// Example: spaces/AAAAAAAAAAA/threads/TTTTTTTTTTT
  core.String? name;

  Thread({
    this.name,
  });

  Thread.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// A user in Google Chat.
class User {
  /// The user's display name.
  ///
  /// Output only.
  core.String? displayName;

  /// Unique identifier of the user's Google Workspace domain.
  core.String? domainId;

  /// When `true`, the user is deleted or their profile is not visible.
  ///
  /// Output only.
  core.bool? isAnonymous;

  /// Resource name for a Google Chat user.
  ///
  /// Represents a
  /// [person](https://developers.google.com/people/api/rest/v1/people#Person)
  /// in the People API or a
  /// [user](https://developers.google.com/admin-sdk/directory/reference/rest/v1/users)
  /// in the Admin SDK Directory API. Formatted as: `users/{user}`
  core.String? name;

  /// User type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value for the enum. DO NOT USE.
  /// - "HUMAN" : Human user.
  /// - "BOT" : Chat app user.
  core.String? type;

  User({
    this.displayName,
    this.domainId,
    this.isAnonymous,
    this.name,
    this.type,
  });

  User.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          domainId: _json.containsKey('domainId')
              ? _json['domainId'] as core.String
              : null,
          isAnonymous: _json.containsKey('isAnonymous')
              ? _json['isAnonymous'] as core.bool
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (domainId != null) 'domainId': domainId!,
        if (isAnonymous != null) 'isAnonymous': isAnonymous!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

/// Annotation metadata for user mentions (@).
class UserMentionMetadata {
  /// The type of user mention.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value for the enum. DO NOT USE.
  /// - "ADD" : Add user to space.
  /// - "MENTION" : Mention user in space.
  core.String? type;

  /// The user mentioned.
  User? user;

  UserMentionMetadata({
    this.type,
    this.user,
  });

  UserMentionMetadata.fromJson(core.Map _json)
      : this(
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          user: _json.containsKey('user')
              ? User.fromJson(
                  _json['user'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
        if (user != null) 'user': user!,
      };
}

/// A widget is a UI element that presents texts, images, etc.
class WidgetMarkup {
  /// A list of buttons.
  ///
  /// Buttons is also oneof data and only one of these fields should be set.
  core.List<Button>? buttons;

  /// Display an image in this widget.
  Image? image;

  /// Display a key value item in this widget.
  KeyValue? keyValue;

  /// Display a text paragraph in this widget.
  TextParagraph? textParagraph;

  WidgetMarkup({
    this.buttons,
    this.image,
    this.keyValue,
    this.textParagraph,
  });

  WidgetMarkup.fromJson(core.Map _json)
      : this(
          buttons: _json.containsKey('buttons')
              ? (_json['buttons'] as core.List)
                  .map((value) => Button.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          image: _json.containsKey('image')
              ? Image.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
          keyValue: _json.containsKey('keyValue')
              ? KeyValue.fromJson(
                  _json['keyValue'] as core.Map<core.String, core.dynamic>)
              : null,
          textParagraph: _json.containsKey('textParagraph')
              ? TextParagraph.fromJson(
                  _json['textParagraph'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buttons != null) 'buttons': buttons!,
        if (image != null) 'image': image!,
        if (keyValue != null) 'keyValue': keyValue!,
        if (textParagraph != null) 'textParagraph': textParagraph!,
      };
}
