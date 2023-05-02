// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Google Chat API - v1
///
/// Enables apps to fetch information and perform actions in Google Chat.
/// Authentication is a prerequisite for using the Google Chat REST API.
///
/// For more information, see <https://developers.google.com/hangouts/chat>
///
/// Create an instance of [HangoutsChatApi] to access these resources:
///
/// - [MediaResource]
/// - [SpacesResource]
///   - [SpacesMembersResource]
///   - [SpacesMessagesResource]
///     - [SpacesMessagesAttachmentsResource]
library;

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
        ByteRange,
        DetailedApiRequestError,
        DownloadOptions,
        Media,
        PartialDownloadOptions,
        ResumableUploadOptions,
        UploadOptions;

/// Enables apps to fetch information and perform actions in Google Chat.
///
/// Authentication is a prerequisite for using the Google Chat REST API.
class HangoutsChatApi {
  /// Private Service: https://www.googleapis.com/auth/chat.bot
  static const chatBotScope = 'https://www.googleapis.com/auth/chat.bot';

  /// View, add, and remove members from conversations in Google Chat
  static const chatMembershipsScope =
      'https://www.googleapis.com/auth/chat.memberships';

  /// View members in Google Chat conversations.
  static const chatMembershipsReadonlyScope =
      'https://www.googleapis.com/auth/chat.memberships.readonly';

  /// View, compose, send, update, and delete messages, and add, view, and
  /// delete reactions to messages.
  static const chatMessagesScope =
      'https://www.googleapis.com/auth/chat.messages';

  /// Compose and send messages in Google Chat
  static const chatMessagesCreateScope =
      'https://www.googleapis.com/auth/chat.messages.create';

  /// View messages and reactions in Google Chat
  static const chatMessagesReadonlyScope =
      'https://www.googleapis.com/auth/chat.messages.readonly';

  /// Create conversations and spaces and view or update metadata (including
  /// history settings) in Google Chat
  static const chatSpacesScope = 'https://www.googleapis.com/auth/chat.spaces';

  /// View chat and spaces in Google Chat
  static const chatSpacesReadonlyScope =
      'https://www.googleapis.com/auth/chat.spaces.readonly';

  final commons.ApiRequester _requester;

  MediaResource get media => MediaResource(_requester);
  SpacesResource get spaces => SpacesResource(_requester);

  HangoutsChatApi(http.Client client,
      {core.String rootUrl = 'https://chat.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/media/' + core.Uri.encodeFull('$resourceName');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return Media.fromJson(response_ as core.Map<core.String, core.dynamic>);
    } else {
      return response_ as commons.Media;
    }
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
  /// [authentication](https://developers.google.com/chat/api/guides/auth).
  /// Fully supports
  /// [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts).
  /// Supports
  /// [user authentication](https://developers.google.com/chat/api/guides/auth/users)
  /// as part of the
  /// [Google Workspace Developer Preview Program](https://developers.google.com/workspace/preview),
  /// which grants early access to certain features.
  /// [User authentication](https://developers.google.com/chat/api/guides/auth/users)
  /// requires the `chat.spaces` or `chat.spaces.readonly` authorization scope.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Space.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists spaces the caller is a member of.
  ///
  /// Requires
  /// [authentication](https://developers.google.com/chat/api/guides/auth).
  /// Fully supports
  /// [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts).
  /// Supports
  /// [user authentication](https://developers.google.com/chat/api/guides/auth/users)
  /// as part of the
  /// [Google Workspace Developer Preview Program](https://developers.google.com/workspace/preview),
  /// which grants early access to certain features.
  /// [User authentication](https://developers.google.com/chat/api/guides/auth/users)
  /// requires the `chat.spaces` or `chat.spaces.readonly` authorization scope.
  /// Lists spaces visible to the caller or authenticated user. Group chats and
  /// DMs aren't listed until the first message is sent.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Optional. The maximum number of spaces to return. The service
  /// may return fewer than this value. If unspecified, at most 100 spaces are
  /// returned. The maximum value is 1000; values above 1000 are coerced to
  /// 1000. Negative values return an `INVALID_ARGUMENT` error.
  ///
  /// [pageToken] - Optional. A page token, received from a previous list spaces
  /// call. Provide this to retrieve the subsequent page. When paginating, the
  /// filter value should match the call that provided the page token. Passing a
  /// different value may lead to unexpected results.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/spaces';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSpacesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class SpacesMembersResource {
  final commons.ApiRequester _requester;

  SpacesMembersResource(commons.ApiRequester client) : _requester = client;

  /// Returns a membership.
  ///
  /// Requires
  /// [authentication](https://developers.google.com/chat/api/guides/auth/).
  /// Fully supports
  /// [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts).
  /// Supports
  /// [user authentication](https://developers.google.com/chat/api/guides/auth/users)
  /// as part of the
  /// [Google Workspace Developer Preview Program](https://developers.google.com/workspace/preview),
  /// which grants early access to certain features.
  /// [User authentication](https://developers.google.com/chat/api/guides/auth/users)
  /// requires the `chat.memberships` or `chat.memberships.readonly`
  /// authorization scope.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Membership.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists memberships in a space.
  ///
  /// Requires
  /// [authentication](https://developers.google.com/chat/api/guides/auth/).
  /// Fully supports
  /// [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts).
  /// Supports
  /// [user authentication](https://developers.google.com/chat/api/guides/auth/users)
  /// as part of the
  /// [Google Workspace Developer Preview Program](https://developers.google.com/workspace/preview),
  /// which grants early access to certain features.
  /// [User authentication](https://developers.google.com/chat/api/guides/auth/users)
  /// requires the `chat.memberships` or `chat.memberships.readonly`
  /// authorization scope.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the space for which to fetch a
  /// membership list. Format: spaces/{space}
  /// Value must have pattern `^spaces/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of memberships to return. The service may
  /// return fewer than this value. If unspecified, at most 100 memberships are
  /// returned. The maximum value is 1000; values above 1000 are coerced to
  /// 1000. Negative values return an INVALID_ARGUMENT error.
  ///
  /// [pageToken] - A page token, received from a previous call to list
  /// memberships. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided should match the call that
  /// provided the page token. Passing different values to the other parameters
  /// may lead to unexpected results.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/members';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMembershipsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class SpacesMessagesResource {
  final commons.ApiRequester _requester;

  SpacesMessagesAttachmentsResource get attachments =>
      SpacesMessagesAttachmentsResource(_requester);

  SpacesMessagesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a message.
  ///
  /// For example usage, see
  /// [Create a message](https://developers.google.com/chat/api/guides/crudl/messages#create_a_message).
  /// Requires
  /// [authentication](https://developers.google.com/chat/api/guides/auth).
  /// Fully supports
  /// [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts).
  /// Supports
  /// [user authentication](https://developers.google.com/chat/api/guides/auth/users)
  /// as part of the
  /// [Google Workspace Developer Preview Program](https://developers.google.com/workspace/preview),
  /// which grants early access to certain features.
  /// [User authentication](https://developers.google.com/chat/api/guides/auth/users)
  /// requires the `chat.messages` or `chat.messages.create` authorization
  /// scope. Because Chat provides authentication for
  /// [webhooks](https://developers.google.com/chat/how-tos/webhooks) as part of
  /// the URL that's generated when a webhook is registered, webhooks can create
  /// messages without a service account or user authentication.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the space in which to create a
  /// message. Format: spaces/{space}
  /// Value must have pattern `^spaces/\[^/\]+$`.
  ///
  /// [messageId] - Optional. A custom name for a Chat message assigned at
  /// creation. Must start with `client-` and contain only lowercase letters,
  /// numbers, and hyphens up to 63 characters in length. Specify this field to
  /// get, update, or delete the message with the specified value. For example
  /// usage, see
  /// [Name a created message](https://developers.google.com/chat/api/guides/crudl/messages#name_a_created_message).
  ///
  /// [messageReplyOption] - Optional. Specifies whether a message starts a
  /// thread or replies to one. Only supported in named spaces.
  /// Possible string values are:
  /// - "MESSAGE_REPLY_OPTION_UNSPECIFIED" : Default. Starts a thread.
  /// - "REPLY_MESSAGE_FALLBACK_TO_NEW_THREAD" : Creates the message as a reply
  /// to the thread specified by thread ID or thread_key. If it fails, the
  /// message starts a new thread instead.
  /// - "REPLY_MESSAGE_OR_FAIL" : Creates the message as a reply to the thread
  /// specified by thread ID or thread_key. If it fails, a NOT_FOUND error is
  /// returned instead.
  ///
  /// [requestId] - Optional. A unique request ID for this message. Specifying
  /// an existing request ID returns the message created with that ID instead of
  /// creating a new message.
  ///
  /// [threadKey] - Optional. Deprecated: Use thread.thread_key instead. Opaque
  /// thread identifier. To start or add to a thread, create a message and
  /// specify a `threadKey` or the thread.name. For example usage, see
  /// [Start or reply to a message thread](https://developers.google.com/chat/api/guides/crudl/messages#start_or_reply_to_a_message_thread).
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
    core.String? messageId,
    core.String? messageReplyOption,
    core.String? requestId,
    core.String? threadKey,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (messageId != null) 'messageId': [messageId],
      if (messageReplyOption != null)
        'messageReplyOption': [messageReplyOption],
      if (requestId != null) 'requestId': [requestId],
      if (threadKey != null) 'threadKey': [threadKey],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/messages';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Message.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a message.
  ///
  /// For example usage, see
  /// [Delete a message](https://developers.google.com/chat/api/guides/crudl/messages#delete_a_message).
  /// Requires
  /// [authentication](https://developers.google.com/chat/api/guides/auth).
  /// Fully supports
  /// [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts).
  /// Supports
  /// [user authentication](https://developers.google.com/chat/api/guides/auth/users)
  /// as part of the
  /// [Google Workspace Developer Preview Program](https://developers.google.com/workspace/preview),
  /// which grants early access to certain features.
  /// [User authentication](https://developers.google.com/chat/api/guides/auth/users)
  /// requires the `chat.messages` authorization scope.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a message.
  ///
  /// For example usage, see
  /// [Read a message](https://developers.google.com/chat/api/guides/crudl/messages#read_a_message).
  /// Requires
  /// [authentication](https://developers.google.com/chat/api/guides/auth).
  /// Fully supports
  /// [Service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts).
  /// Supports
  /// [user authentication](https://developers.google.com/chat/api/guides/auth/users)
  /// as part of the
  /// [Google Workspace Developer Preview Program](https://developers.google.com/workspace/preview),
  /// which grants early access to certain features.
  /// [User authentication](https://developers.google.com/chat/api/guides/auth/users)
  /// requires the `chat.messages` or `chat.messages.readonly` authorization
  /// scope. Note: Might return a message from a blocked member or space.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the message to retrieve. Format:
  /// spaces/{space}/messages/{message} If the message begins with `client-`,
  /// then it has a custom name assigned by a Chat app that created it with the
  /// Chat REST API. That Chat app (but not others) can pass the custom name to
  /// get, update, or delete the message. To learn more, see
  /// [create and name a message](https://developers.google.com/chat/api/guides/crudl/messages#name_a_created_message).
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Message.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a message.
  ///
  /// There's a difference between `patch` and `update` methods. The `patch`
  /// method uses a `patch` request while the `update` method uses a `put`
  /// request. We recommend using the `patch` method. For example usage, see
  /// [Update a message](https://developers.google.com/chat/api/guides/crudl/messages#update_a_message).
  /// Requires
  /// [authentication](https://developers.google.com/chat/api/guides/auth/).
  /// Fully supports
  /// [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts).
  /// Supports
  /// [user authentication](https://developers.google.com/chat/api/guides/auth/users)
  /// as part of the
  /// [Google Workspace Developer Preview Program](https://developers.google.com/workspace/preview),
  /// which grants early access to certain features.
  /// [User authentication](https://developers.google.com/chat/api/guides/auth/users)
  /// requires the `chat.messages` authorization scope.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name in the form `spaces / * /messages / * `. Example:
  /// `spaces/AAAAAAAAAAA/messages/BBBBBBBBBBB.BBBBBBBBBBB`
  /// Value must have pattern `^spaces/\[^/\]+/messages/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If `true` and the message is not found, a new
  /// message is created and `updateMask` is ignored. The specified message ID
  /// must be
  /// \[client-assigned\](https://developers.google.com/chat/api/guides/crudl/messages#name_a_created_message)
  /// or the request fails.
  ///
  /// [updateMask] - Required. The field paths to update. Separate multiple
  /// values with commas. Currently supported field paths: - text - cards
  /// (Requires \[service account
  /// authentication\](/chat/api/guides/auth/service-accounts).) - cards_v2
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
  async.Future<Message> patch(
    Message request,
    core.String name, {
    core.bool? allowMissing,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Message.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a message.
  ///
  /// There's a difference between `patch` and `update` methods. The `patch`
  /// method uses a `patch` request while the `update` method uses a `put`
  /// request. We recommend using the `patch` method. For example usage, see
  /// [Update a message](https://developers.google.com/chat/api/guides/crudl/messages#update_a_message).
  /// Requires
  /// [authentication](https://developers.google.com/chat/api/guides/auth/).
  /// Fully supports
  /// [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts).
  /// Supports
  /// [user authentication](https://developers.google.com/chat/api/guides/auth/users)
  /// as part of the
  /// [Google Workspace Developer Preview Program](https://developers.google.com/workspace/preview),
  /// which grants early access to certain features.
  /// [User authentication](https://developers.google.com/chat/api/guides/auth/users)
  /// requires the `chat.messages` authorization scope.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name in the form `spaces / * /messages / * `. Example:
  /// `spaces/AAAAAAAAAAA/messages/BBBBBBBBBBB.BBBBBBBBBBB`
  /// Value must have pattern `^spaces/\[^/\]+/messages/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If `true` and the message is not found, a new
  /// message is created and `updateMask` is ignored. The specified message ID
  /// must be
  /// \[client-assigned\](https://developers.google.com/chat/api/guides/crudl/messages#name_a_created_message)
  /// or the request fails.
  ///
  /// [updateMask] - Required. The field paths to update. Separate multiple
  /// values with commas. Currently supported field paths: - text - cards
  /// (Requires \[service account
  /// authentication\](/chat/api/guides/auth/service-accounts).) - cards_v2
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
    core.bool? allowMissing,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Message.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class SpacesMessagesAttachmentsResource {
  final commons.ApiRequester _requester;

  SpacesMessagesAttachmentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the metadata of a message attachment.
  ///
  /// The attachment data is fetched using the
  /// [media API](https://developers.google.com/chat/api/reference/rest/v1/media/download).
  /// Requires
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Attachment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// List of string parameters to supply when the action method is invoked.
///
/// For example, consider three snooze buttons: snooze now, snooze 1 day, snooze
/// next week. You might use action method = snooze(), passing the snooze type
/// and snooze time in the list of string parameters.
typedef ActionParameter = $ActionParameter;

/// Parameters that a Chat app can use to configure how its response is posted.
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

  ActionResponse.fromJson(core.Map json_)
      : this(
          dialogAction: json_.containsKey('dialogAction')
              ? DialogAction.fromJson(
                  json_['dialogAction'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
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
  /// - "OK" : Not an error; returned on success. HTTP Mapping: 200 OK
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

  ActionStatus.fromJson(core.Map json_)
      : this(
          statusCode: json_.containsKey('statusCode')
              ? json_['statusCode'] as core.String
              : null,
          userFacingMessage: json_.containsKey('userFacingMessage')
              ? json_['userFacingMessage'] as core.String
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
/// { "name":"users/{user}", "displayName":"FooBot",
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

  Annotation.fromJson(core.Map json_)
      : this(
          length:
              json_.containsKey('length') ? json_['length'] as core.int : null,
          slashCommand: json_.containsKey('slashCommand')
              ? SlashCommandMetadata.fromJson(
                  json_['slashCommand'] as core.Map<core.String, core.dynamic>)
              : null,
          startIndex: json_.containsKey('startIndex')
              ? json_['startIndex'] as core.int
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          userMention: json_.containsKey('userMention')
              ? UserMentionMetadata.fromJson(
                  json_['userMention'] as core.Map<core.String, core.dynamic>)
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

  Attachment.fromJson(core.Map json_)
      : this(
          attachmentDataRef: json_.containsKey('attachmentDataRef')
              ? AttachmentDataRef.fromJson(json_['attachmentDataRef']
                  as core.Map<core.String, core.dynamic>)
              : null,
          contentName: json_.containsKey('contentName')
              ? json_['contentName'] as core.String
              : null,
          contentType: json_.containsKey('contentType')
              ? json_['contentType'] as core.String
              : null,
          downloadUri: json_.containsKey('downloadUri')
              ? json_['downloadUri'] as core.String
              : null,
          driveDataRef: json_.containsKey('driveDataRef')
              ? DriveDataRef.fromJson(
                  json_['driveDataRef'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          source: json_.containsKey('source')
              ? json_['source'] as core.String
              : null,
          thumbnailUri: json_.containsKey('thumbnailUri')
              ? json_['thumbnailUri'] as core.String
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

class AttachmentDataRef {
  /// The resource name of the attachment data.
  ///
  /// This is used with the media API to download the attachment data.
  core.String? resourceName;

  AttachmentDataRef({
    this.resourceName,
  });

  AttachmentDataRef.fromJson(core.Map json_)
      : this(
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
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

  Button.fromJson(core.Map json_)
      : this(
          imageButton: json_.containsKey('imageButton')
              ? ImageButton.fromJson(
                  json_['imageButton'] as core.Map<core.String, core.dynamic>)
              : null,
          textButton: json_.containsKey('textButton')
              ? TextButton.fromJson(
                  json_['textButton'] as core.Map<core.String, core.dynamic>)
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

  Card.fromJson(core.Map json_)
      : this(
          cardActions: json_.containsKey('cardActions')
              ? (json_['cardActions'] as core.List)
                  .map((value) => CardAction.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          header: json_.containsKey('header')
              ? CardHeader.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          sections: json_.containsKey('sections')
              ? (json_['sections'] as core.List)
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
/// invoice or open the invoice in browser. Not supported by Google Chat apps.
class CardAction {
  /// The label used to be displayed in the action menu item.
  core.String? actionLabel;

  /// The onclick action for this action item.
  OnClick? onClick;

  CardAction({
    this.actionLabel,
    this.onClick,
  });

  CardAction.fromJson(core.Map json_)
      : this(
          actionLabel: json_.containsKey('actionLabel')
              ? json_['actionLabel'] as core.String
              : null,
          onClick: json_.containsKey('onClick')
              ? OnClick.fromJson(
                  json_['onClick'] as core.Map<core.String, core.dynamic>)
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

  CardHeader.fromJson(core.Map json_)
      : this(
          imageStyle: json_.containsKey('imageStyle')
              ? json_['imageStyle'] as core.String
              : null,
          imageUrl: json_.containsKey('imageUrl')
              ? json_['imageUrl'] as core.String
              : null,
          subtitle: json_.containsKey('subtitle')
              ? json_['subtitle'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imageStyle != null) 'imageStyle': imageStyle!,
        if (imageUrl != null) 'imageUrl': imageUrl!,
        if (subtitle != null) 'subtitle': subtitle!,
        if (title != null) 'title': title!,
      };
}

/// Widgets for Chat apps to specify.
class CardWithId {
  /// Cards support a defined layout, interactive UI elements like buttons, and
  /// rich media like images.
  ///
  /// Use this card to present detailed information, gather information from
  /// users, and guide users to take a next step.
  GoogleAppsCardV1Card? card;

  /// Required for `cardsV2` messages.
  ///
  /// Chat app-specified identifier for this widget. Scoped within a message.
  core.String? cardId;

  CardWithId({
    this.card,
    this.cardId,
  });

  CardWithId.fromJson(core.Map json_)
      : this(
          card: json_.containsKey('card')
              ? GoogleAppsCardV1Card.fromJson(
                  json_['card'] as core.Map<core.String, core.dynamic>)
              : null,
          cardId: json_.containsKey('cardId')
              ? json_['cardId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (card != null) 'card': card!,
        if (cardId != null) 'cardId': cardId!,
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

  Dialog.fromJson(core.Map json_)
      : this(
          body: json_.containsKey('body')
              ? GoogleAppsCardV1Card.fromJson(
                  json_['body'] as core.Map<core.String, core.dynamic>)
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

  DialogAction.fromJson(core.Map json_)
      : this(
          actionStatus: json_.containsKey('actionStatus')
              ? ActionStatus.fromJson(
                  json_['actionStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          dialog: json_.containsKey('dialog')
              ? Dialog.fromJson(
                  json_['dialog'] as core.Map<core.String, core.dynamic>)
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

  DriveDataRef.fromJson(core.Map json_)
      : this(
          driveFileId: json_.containsKey('driveFileId')
              ? json_['driveFileId'] as core.String
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

  FormAction.fromJson(core.Map json_)
      : this(
          actionMethodName: json_.containsKey('actionMethodName')
              ? json_['actionMethodName'] as core.String
              : null,
          parameters: json_.containsKey('parameters')
              ? (json_['parameters'] as core.List)
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
/// For example, an Apps Script can be invoked to handle the form. If the action
/// is triggered, the form values are sent to the server.
class GoogleAppsCardV1Action {
  /// A custom function to invoke when the containing element is clicked or
  /// othrwise activated.
  ///
  /// For example usage, see
  /// [Create interactive cards](https://developers.google.com/chat/how-tos/cards-onclick).
  core.String? function;

  /// Required when opening a
  /// [dialog](https://developers.google.com/chat/how-tos/dialogs).
  ///
  /// What to do in response to an interaction with a user, such as a user
  /// clicking button on a card message. If unspecified, the app responds by
  /// executing an `action` - like opening a link or running a function - as
  /// normal. By specifying an `interaction`, the app can respond in special
  /// interactive ways. For example, by setting `interaction` to `OPEN_DIALOG`,
  /// the app can open a
  /// [dialog](https://developers.google.com/chat/how-tos/dialogs). When
  /// specified, a loading indicator is not shown. Supported by Chat apps, but
  /// not Google Workspace Add-ons. If specified for an add-on, the entire card
  /// is stripped and nothing is shown in the client.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "INTERACTION_UNSPECIFIED" : Default value. The `action` executes as
  /// normal.
  /// - "OPEN_DIALOG" : Opens a
  /// [dialog](https://developers.google.com/chat/how-tos/dialogs), a windowed,
  /// card-based interface that Chat apps use to interact with users. Only
  /// supported by Chat apps in response to button-clicks on card messages. Not
  /// supported by Google Workspace Add-ons. If specified for an add-on, the
  /// entire card is stripped and nothing is shown in the client.
  core.String? interaction;

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
  /// action is triggered. To let the user make changes while the action is
  /// being processed, set
  /// [LoadIndicator](https://developers.google.com/workspace/add-ons/reference/rpc/google.apps.card.v1#loadindicator)
  /// to `NONE`. For
  /// [card messages](https://developers.google.com/chat/api/guides/message-formats/cards)
  /// in Chat apps, you must also set the action's
  /// [ResponseType](https://developers.google.com/chat/api/reference/rest/v1/spaces.messages#responsetype)
  /// to `UPDATE_MESSAGE` and use the same
  /// \[`card_id`\](https://developers.google.com/chat/api/reference/rest/v1/spaces.messages#CardWithId)
  /// from the card that contained the action. If `false`, the form values are
  /// cleared when the action is triggered. To prevent the user from making
  /// changes while the action is being processed, set
  /// [LoadIndicator](https://developers.google.com/workspace/add-ons/reference/rpc/google.apps.card.v1#loadindicator)
  /// to `SPINNER`.
  core.bool? persistValues;

  GoogleAppsCardV1Action({
    this.function,
    this.interaction,
    this.loadIndicator,
    this.parameters,
    this.persistValues,
  });

  GoogleAppsCardV1Action.fromJson(core.Map json_)
      : this(
          function: json_.containsKey('function')
              ? json_['function'] as core.String
              : null,
          interaction: json_.containsKey('interaction')
              ? json_['interaction'] as core.String
              : null,
          loadIndicator: json_.containsKey('loadIndicator')
              ? json_['loadIndicator'] as core.String
              : null,
          parameters: json_.containsKey('parameters')
              ? (json_['parameters'] as core.List)
                  .map((value) => GoogleAppsCardV1ActionParameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          persistValues: json_.containsKey('persistValues')
              ? json_['persistValues'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (function != null) 'function': function!,
        if (interaction != null) 'interaction': interaction!,
        if (loadIndicator != null) 'loadIndicator': loadIndicator!,
        if (parameters != null) 'parameters': parameters!,
        if (persistValues != null) 'persistValues': persistValues!,
      };
}

/// List of string parameters to supply when the action method is invoked.
///
/// For example, consider three snooze buttons: snooze now, snooze 1 day, snooze
/// next week. You might use action method = snooze(), passing the snooze type
/// and snooze time in the list of string parameters. To learn more, see
/// [CommonEventObject](https://developers.google.com/chat/api/reference/rest/v1/Event#commoneventobject).
typedef GoogleAppsCardV1ActionParameter = $ActionParameter;

/// The style options for the border of a card or widget, including the border
/// type and color.
class GoogleAppsCardV1BorderStyle {
  /// The corner radius for the border.
  core.int? cornerRadius;

  /// The colors to use when the type is `BORDER_TYPE_STROKE`.
  Color? strokeColor;

  /// The border type.
  /// Possible string values are:
  /// - "BORDER_TYPE_UNSPECIFIED" : No value specified.
  /// - "NO_BORDER" : Default value. No border.
  /// - "STROKE" : Outline.
  core.String? type;

  GoogleAppsCardV1BorderStyle({
    this.cornerRadius,
    this.strokeColor,
    this.type,
  });

  GoogleAppsCardV1BorderStyle.fromJson(core.Map json_)
      : this(
          cornerRadius: json_.containsKey('cornerRadius')
              ? json_['cornerRadius'] as core.int
              : null,
          strokeColor: json_.containsKey('strokeColor')
              ? Color.fromJson(
                  json_['strokeColor'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cornerRadius != null) 'cornerRadius': cornerRadius!,
        if (strokeColor != null) 'strokeColor': strokeColor!,
        if (type != null) 'type': type!,
      };
}

/// A text, icon, or text + icon button that users can click.
///
/// To make an image a clickable button, specify an Image (not an
/// ImageComponent) and set an `onClick` action.
class GoogleAppsCardV1Button {
  /// The alternative text used for accessibility.
  ///
  /// Set descriptive text that lets users know what the button does. For
  /// example, if a button opens a hyperlink, you might write: "Opens a new
  /// browser tab and navigates to the Google Chat developer documentation at
  /// https://developers.google.com/chat".
  core.String? altText;

  /// If set, the button is filled with a solid background color and the font
  /// color changes to maintain contrast with the background color.
  ///
  /// For example, setting a blue background will likely result in white text.
  /// If unset, the image background is white and the font color is blue. For
  /// red, green and blue, the value of each field is a `float` number that can
  /// be expressed in either of two ways: as a number between 0 and 255 divided
  /// by 255 (153/255) or as a value between 0 and 1 (0.6). 0 represents the
  /// absence of a color and 1 or 255/255 represent the full presence of that
  /// color on the RGB scale. Optionally set alpha, which sets a level of
  /// transparency using this equation: ``` pixel color = alpha * (this color) +
  /// (1.0 - alpha) * (background color) ``` For alpha, a value of 1 corresponds
  /// with a solid color, and a value of 0 corresponds with a completely
  /// transparent color. For example, the following color represents a half
  /// transparent red: ``` "color": { "red": 1, "green": 0, "blue": 0, "alpha":
  /// 0.5 } ```
  Color? color;

  /// If `true`, the button is displayed in an inactive state and doesn't
  /// respond to user actions.
  core.bool? disabled;

  /// The icon image.
  ///
  /// If both `icon` and `text` are set, then the icon appears before the text.
  GoogleAppsCardV1Icon? icon;

  /// The action to perform when the button is clicked, such as opening a
  /// hyperlink or running a custom function.
  ///
  /// Required.
  GoogleAppsCardV1OnClick? onClick;

  /// The text displayed inside the button.
  core.String? text;

  GoogleAppsCardV1Button({
    this.altText,
    this.color,
    this.disabled,
    this.icon,
    this.onClick,
    this.text,
  });

  GoogleAppsCardV1Button.fromJson(core.Map json_)
      : this(
          altText: json_.containsKey('altText')
              ? json_['altText'] as core.String
              : null,
          color: json_.containsKey('color')
              ? Color.fromJson(
                  json_['color'] as core.Map<core.String, core.dynamic>)
              : null,
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
              : null,
          icon: json_.containsKey('icon')
              ? GoogleAppsCardV1Icon.fromJson(
                  json_['icon'] as core.Map<core.String, core.dynamic>)
              : null,
          onClick: json_.containsKey('onClick')
              ? GoogleAppsCardV1OnClick.fromJson(
                  json_['onClick'] as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
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

  GoogleAppsCardV1ButtonList.fromJson(core.Map json_)
      : this(
          buttons: json_.containsKey('buttons')
              ? (json_['buttons'] as core.List)
                  .map((value) => GoogleAppsCardV1Button.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buttons != null) 'buttons': buttons!,
      };
}

/// Cards support a defined layout, interactive UI elements like buttons, and
/// rich media like images.
///
/// Use cards to present detailed information, gather information from users,
/// and guide users to take a next step. In Google Chat, cards appear in several
/// places: - As stand-alone messages. - Accompanying a text message, just
/// beneath the text message. - As a
/// [dialog](https://developers.google.com/chat/how-tos/dialogs). The following
/// example JSON creates a "contact card" that features: - A header with the
/// contact's name, job title, avatar picture. - A section with the contact
/// information, including formatted text. - Buttons that users can click to
/// share the contact or see more or less info.
/// ![Example contact card](https://developers.google.com/chat/images/card_api_reference.png)
/// ``` { "cardsV2": [ { "cardId": "unique-card-id", "card": { "header": {
/// "title": "Sasha", "subtitle": "Software Engineer", "imageUrl":
/// "https://developers.google.com/chat/images/quickstart-app-avatar.png",
/// "imageType": "CIRCLE", "imageAltText": "Avatar for Sasha", }, "sections": [
/// { "header": "Contact Info", "collapsible": true,
/// "uncollapsibleWidgetsCount": 1, "widgets": [ { "decoratedText": {
/// "startIcon": { "knownIcon": "EMAIL", }, "text": "sasha@example.com", } }, {
/// "decoratedText": { "startIcon": { "knownIcon": "PERSON", }, "text":
/// "Online", }, }, { "decoratedText": { "startIcon": { "knownIcon": "PHONE", },
/// "text": "+1 (555) 555-1234", } }, { "buttonList": { "buttons": [ { "text":
/// "Share", "onClick": { "openLink": { "url": "https://example.com/share", } }
/// }, { "text": "Edit", "onClick": { "action": { "function": "goToView",
/// "parameters": [ { "key": "viewType", "value": "EDIT", } ], } } }, ], } }, ],
/// }, ], }, } ], } ```
class GoogleAppsCardV1Card {
  /// The card's actions.
  ///
  /// Actions are added to the card's toolbar menu. Because Chat app cards have
  /// no toolbar, `cardActions[]` is not supported by Chat apps. For example,
  /// the following JSON constructs a card action menu with Settings and Send
  /// Feedback options: ``` "card_actions": [ { "actionLabel": "Settings",
  /// "onClick": { "action": { "functionName": "goToView", "parameters": [ {
  /// "key": "viewType", "value": "SETTING" } ], "loadIndicator":
  /// "LoadIndicator.SPINNER" } } }, { "actionLabel": "Send Feedback",
  /// "onClick": { "openLink": { "url": "https://example.com/feedback" } } } ]
  /// ```
  core.List<GoogleAppsCardV1CardAction>? cardActions;

  /// In Google Workspace add-ons, sets the display properties of the
  /// `peekCardHeader`.
  ///
  /// Not supported by Chat apps.
  /// Possible string values are:
  /// - "DISPLAY_STYLE_UNSPECIFIED" : Do not use.
  /// - "PEEK" : The header of the card appears at the bottom of the sidebar,
  /// partially covering the current top card of the stack. Clicking the header
  /// pops the card into the card stack. If the card has no header, a generated
  /// header is used instead.
  /// - "REPLACE" : Default value. The card is shown by replacing the view of
  /// the top card in the card stack.
  core.String? displayStyle;

  /// The fixed footer shown at the bottom of this card.
  ///
  /// Setting `fixedFooter` without specifying a `primaryButton` or a
  /// `secondaryButton` causes an error. Supported by Google Workspace Add-ons
  /// and Chat apps. For Chat apps, you can use fixed footers in
  /// [dialogs](https://developers.google.com/chat/how-tos/dialogs), but not
  /// [card messages](https://developers.google.com/chat/api/guides/message-formats/cards).
  GoogleAppsCardV1CardFixedFooter? fixedFooter;

  /// The header of the card.
  ///
  /// A header usually contains a leading image and a title. Headers always
  /// appear at the top of a card.
  GoogleAppsCardV1CardHeader? header;

  /// Name of the card.
  ///
  /// Used as a card identifier in card navigation. Because Chat apps don't
  /// support card navigation, they ignore this field.
  core.String? name;

  /// When displaying contextual content, the peek card header acts as a
  /// placeholder so that the user can navigate forward between the homepage
  /// cards and the contextual cards.
  ///
  /// Not supported by Chat apps.
  GoogleAppsCardV1CardHeader? peekCardHeader;

  /// Contains a collection of widgets.
  ///
  /// Each section has its own, optional header. Sections are visually separated
  /// by a line divider.
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

  GoogleAppsCardV1Card.fromJson(core.Map json_)
      : this(
          cardActions: json_.containsKey('cardActions')
              ? (json_['cardActions'] as core.List)
                  .map((value) => GoogleAppsCardV1CardAction.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          displayStyle: json_.containsKey('displayStyle')
              ? json_['displayStyle'] as core.String
              : null,
          fixedFooter: json_.containsKey('fixedFooter')
              ? GoogleAppsCardV1CardFixedFooter.fromJson(
                  json_['fixedFooter'] as core.Map<core.String, core.dynamic>)
              : null,
          header: json_.containsKey('header')
              ? GoogleAppsCardV1CardHeader.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          peekCardHeader: json_.containsKey('peekCardHeader')
              ? GoogleAppsCardV1CardHeader.fromJson(json_['peekCardHeader']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sections: json_.containsKey('sections')
              ? (json_['sections'] as core.List)
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
/// email invoice, or open the invoice in a browser. Not supported by Chat apps.
class GoogleAppsCardV1CardAction {
  /// The label that displays as the action menu item.
  core.String? actionLabel;

  /// The `onClick` action for this action item.
  GoogleAppsCardV1OnClick? onClick;

  GoogleAppsCardV1CardAction({
    this.actionLabel,
    this.onClick,
  });

  GoogleAppsCardV1CardAction.fromJson(core.Map json_)
      : this(
          actionLabel: json_.containsKey('actionLabel')
              ? json_['actionLabel'] as core.String
              : null,
          onClick: json_.containsKey('onClick')
              ? GoogleAppsCardV1OnClick.fromJson(
                  json_['onClick'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionLabel != null) 'actionLabel': actionLabel!,
        if (onClick != null) 'onClick': onClick!,
      };
}

/// A persistent (sticky) footer that that appears at the bottom of the card.
///
/// Setting `fixedFooter` without specifying a `primaryButton` or a
/// `secondaryButton` causes an error. Supported by Google Workspace Add-ons and
/// Chat apps. For Chat apps, you can use fixed footers in
/// [dialogs](https://developers.google.com/chat/how-tos/dialogs), but not
/// [card messages](https://developers.google.com/chat/api/guides/message-formats/cards).
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

  GoogleAppsCardV1CardFixedFooter.fromJson(core.Map json_)
      : this(
          primaryButton: json_.containsKey('primaryButton')
              ? GoogleAppsCardV1Button.fromJson(
                  json_['primaryButton'] as core.Map<core.String, core.dynamic>)
              : null,
          secondaryButton: json_.containsKey('secondaryButton')
              ? GoogleAppsCardV1Button.fromJson(json_['secondaryButton']
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

  /// The shape used to crop the image.
  /// Possible string values are:
  /// - "SQUARE" : Default value. Applies a square mask to the image. For
  /// example, a 4x3 image becomes 3x3.
  /// - "CIRCLE" : Applies a circular mask to the image. For example, a 4x3
  /// image becomes a circle with a diameter of 3.
  core.String? imageType;

  /// The HTTPS URL of the image in the card header.
  core.String? imageUrl;

  /// The subtitle of the card header.
  ///
  /// If specified, appears on its own line below the `title`.
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

  GoogleAppsCardV1CardHeader.fromJson(core.Map json_)
      : this(
          imageAltText: json_.containsKey('imageAltText')
              ? json_['imageAltText'] as core.String
              : null,
          imageType: json_.containsKey('imageType')
              ? json_['imageType'] as core.String
              : null,
          imageUrl: json_.containsKey('imageUrl')
              ? json_['imageUrl'] as core.String
              : null,
          subtitle: json_.containsKey('subtitle')
              ? json_['subtitle'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imageAltText != null) 'imageAltText': imageAltText!,
        if (imageType != null) 'imageType': imageType!,
        if (imageUrl != null) 'imageUrl': imageUrl!,
        if (subtitle != null) 'subtitle': subtitle!,
        if (title != null) 'title': title!,
      };
}

/// Lets users specify a date, a time, or both a date and a time.
///
/// Accepts text input from users, but features an interactive date and time
/// selector that helps users enter correctly-formatted dates and times. If
/// users enter a date or time incorrectly, the widget shows an error that
/// prompts users to enter the correct format. Not supported by Chat apps.
/// Support by Chat apps coming soon.
class GoogleAppsCardV1DateTimePicker {
  /// The text that prompts users to enter a date, time, or datetime.
  ///
  /// Specify text that helps the user enter the information your app needs. For
  /// example, if users are setting an appointment, then a label like
  /// "Appointment date" or "Appointment date and time" might work well.
  core.String? label;

  /// The name by which the datetime picker is identified in a form input event.
  ///
  /// For details about working with form inputs, see
  /// [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).
  core.String? name;

  /// Triggered when the user clicks **Save** or **Clear** from the datetime
  /// picker interface.
  GoogleAppsCardV1Action? onChangeAction;

  /// The number representing the time zone offset from UTC, in minutes.
  ///
  /// If set, the `value_ms_epoch` is displayed in the specified time zone. If
  /// not set, it uses the user's time zone setting on the client side.
  core.int? timezoneOffsetDate;

  /// What kind of date and time input the datetime picker supports.
  /// Possible string values are:
  /// - "DATE_AND_TIME" : The user can select a date and time.
  /// - "DATE_ONLY" : The user can only select a date.
  /// - "TIME_ONLY" : The user can only select a time.
  core.String? type;

  /// The value displayed as the default value before user input or previous
  /// user input, represented in milliseconds
  /// ([Epoch time](https://en.wikipedia.org/wiki/Unix_time)).
  ///
  /// For `DATE_AND_TIME` type, the full epoch value is used. For `DATE_ONLY`
  /// type, only date of the epoch time is used. For `TIME_ONLY` type, only time
  /// of the epoch time is used. For example, to represent 3:00 AM, set epoch
  /// time to `3 * 60 * 60 * 1000`.
  core.String? valueMsEpoch;

  GoogleAppsCardV1DateTimePicker({
    this.label,
    this.name,
    this.onChangeAction,
    this.timezoneOffsetDate,
    this.type,
    this.valueMsEpoch,
  });

  GoogleAppsCardV1DateTimePicker.fromJson(core.Map json_)
      : this(
          label:
              json_.containsKey('label') ? json_['label'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          onChangeAction: json_.containsKey('onChangeAction')
              ? GoogleAppsCardV1Action.fromJson(json_['onChangeAction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          timezoneOffsetDate: json_.containsKey('timezoneOffsetDate')
              ? json_['timezoneOffsetDate'] as core.int
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          valueMsEpoch: json_.containsKey('valueMsEpoch')
              ? json_['valueMsEpoch'] as core.String
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
  /// The text that appears below `text`.
  ///
  /// Always truncates.
  core.String? bottomLabel;

  /// A button that can be clicked to trigger an action.
  GoogleAppsCardV1Button? button;

  /// An icon displayed after the text.
  ///
  /// Supports
  /// \[built-in\](https://developers.google.com/chat/api/guides/message-formats/cards#builtinicons)
  /// and
  /// [custom](https://developers.google.com/chat/api/guides/message-formats/cards#customicons)
  /// icons.
  GoogleAppsCardV1Icon? endIcon;

  /// Deprecated in favor of `startIcon`.
  GoogleAppsCardV1Icon? icon;

  /// When users click on `topLabel` or `bottomLabel`, this action triggers.
  GoogleAppsCardV1OnClick? onClick;

  /// The icon displayed in front of the text.
  GoogleAppsCardV1Icon? startIcon;

  /// A switch widget can be clicked to change its state and trigger an action.
  GoogleAppsCardV1SwitchControl? switchControl;

  /// The primary text.
  ///
  /// Supports simple formatting. For more information about formatting text,
  /// see Formatting text in Google Chat apps and Formatting text in Google
  /// Workspace Add-ons.
  ///
  /// Required.
  core.String? text;

  /// The text that appears above `text`.
  ///
  /// Always truncates.
  core.String? topLabel;

  /// The wrap text setting.
  ///
  /// If `true`, the text wraps and displays on multiple lines. Otherwise, the
  /// text is truncated. Only applies to `text`, not `topLabel` and
  /// `bottomLabel`.
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

  GoogleAppsCardV1DecoratedText.fromJson(core.Map json_)
      : this(
          bottomLabel: json_.containsKey('bottomLabel')
              ? json_['bottomLabel'] as core.String
              : null,
          button: json_.containsKey('button')
              ? GoogleAppsCardV1Button.fromJson(
                  json_['button'] as core.Map<core.String, core.dynamic>)
              : null,
          endIcon: json_.containsKey('endIcon')
              ? GoogleAppsCardV1Icon.fromJson(
                  json_['endIcon'] as core.Map<core.String, core.dynamic>)
              : null,
          icon: json_.containsKey('icon')
              ? GoogleAppsCardV1Icon.fromJson(
                  json_['icon'] as core.Map<core.String, core.dynamic>)
              : null,
          onClick: json_.containsKey('onClick')
              ? GoogleAppsCardV1OnClick.fromJson(
                  json_['onClick'] as core.Map<core.String, core.dynamic>)
              : null,
          startIcon: json_.containsKey('startIcon')
              ? GoogleAppsCardV1Icon.fromJson(
                  json_['startIcon'] as core.Map<core.String, core.dynamic>)
              : null,
          switchControl: json_.containsKey('switchControl')
              ? GoogleAppsCardV1SwitchControl.fromJson(
                  json_['switchControl'] as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
          topLabel: json_.containsKey('topLabel')
              ? json_['topLabel'] as core.String
              : null,
          wrapText: json_.containsKey('wrapText')
              ? json_['wrapText'] as core.bool
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

/// Displays a divider between widgets, a horizontal line.
///
/// For example, the following JSON creates a divider: ``` "divider": {} ```
typedef GoogleAppsCardV1Divider = $Empty;

/// Displays a grid with a collection of items.
///
/// A grid supports any number of columns and items. The number of rows is
/// determined by items divided by columns. A grid with 10 items and 2 columns
/// has 5 rows. A grid with 11 items and 2 columns has 6 rows. For example, the
/// following JSON creates a 2 column grid with a single item: ``` "grid": {
/// "title": "A fine collection of items", "columnCount": 2, "borderStyle": {
/// "type": "STROKE", "cornerRadius": 4 }, "items": [ { "image": { "imageUri":
/// "https://www.example.com/image.png", "cropStyle": { "type": "SQUARE" },
/// "borderStyle": { "type": "STROKE" } }, "title": "An item", "textAlignment":
/// "CENTER" } ], "onClick": { "openLink": { "url": "https://www.example.com" }
/// } } ```
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

  GoogleAppsCardV1Grid.fromJson(core.Map json_)
      : this(
          borderStyle: json_.containsKey('borderStyle')
              ? GoogleAppsCardV1BorderStyle.fromJson(
                  json_['borderStyle'] as core.Map<core.String, core.dynamic>)
              : null,
          columnCount: json_.containsKey('columnCount')
              ? json_['columnCount'] as core.int
              : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => GoogleAppsCardV1GridItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          onClick: json_.containsKey('onClick')
              ? GoogleAppsCardV1OnClick.fromJson(
                  json_['onClick'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
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

  /// The grid item's title.
  core.String? title;

  GoogleAppsCardV1GridItem({
    this.id,
    this.image,
    this.layout,
    this.subtitle,
    this.title,
  });

  GoogleAppsCardV1GridItem.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          image: json_.containsKey('image')
              ? GoogleAppsCardV1ImageComponent.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>)
              : null,
          layout: json_.containsKey('layout')
              ? json_['layout'] as core.String
              : null,
          subtitle: json_.containsKey('subtitle')
              ? json_['subtitle'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (image != null) 'image': image!,
        if (layout != null) 'layout': layout!,
        if (subtitle != null) 'subtitle': subtitle!,
        if (title != null) 'title': title!,
      };
}

/// An icon displayed in a widget on a card.
///
/// Supports
/// \[built-in\](https://developers.google.com/chat/api/guides/message-formats/cards#builtinicons)
/// and
/// [custom](https://developers.google.com/chat/api/guides/message-formats/cards#customicons)
/// icons.
class GoogleAppsCardV1Icon {
  /// A description of the icon used for accessibility.
  ///
  /// If unspecified, the default value "Button" is provided. As a best
  /// practice, you should set a helpful description for what the icon displays,
  /// and if applicable, what it does. For example, `A user's account portrait`,
  /// or `Opens a new browser tab and navigates to the Google Chat developer
  /// documentation at https://developers.google.com/chat`. If the icon is set
  /// in a Button, the `altText` appears as helper text when the user hovers
  /// over the button. However, if the button also sets `text`, the icon's
  /// `altText` is ignored.
  ///
  /// Optional.
  core.String? altText;

  /// Display a custom icon hosted at an HTTPS URL.
  ///
  /// For example: ``` "iconUrl":
  /// "https://developers.google.com/chat/images/quickstart-app-avatar.png" ```
  /// Supported file types include `.png` and `.jpg`.
  core.String? iconUrl;

  /// The crop style applied to the image.
  ///
  /// In some cases, applying a `CIRCLE` crop causes the image to be drawn
  /// larger than a built-in icon.
  /// Possible string values are:
  /// - "SQUARE" : Default value. Applies a square mask to the image. For
  /// example, a 4x3 image becomes 3x3.
  /// - "CIRCLE" : Applies a circular mask to the image. For example, a 4x3
  /// image becomes a circle with a diameter of 3.
  core.String? imageType;

  /// Display one of the built-in icons provided by Google Workspace.
  ///
  /// For example, to display an airplane icon, specify `AIRPLANE`. For a bus,
  /// specify `BUS`. For a full list of supported icons, see \[built-in
  /// icons\](https://developers.google.com/chat/api/guides/message-formats/cards#builtinicons).
  core.String? knownIcon;

  GoogleAppsCardV1Icon({
    this.altText,
    this.iconUrl,
    this.imageType,
    this.knownIcon,
  });

  GoogleAppsCardV1Icon.fromJson(core.Map json_)
      : this(
          altText: json_.containsKey('altText')
              ? json_['altText'] as core.String
              : null,
          iconUrl: json_.containsKey('iconUrl')
              ? json_['iconUrl'] as core.String
              : null,
          imageType: json_.containsKey('imageType')
              ? json_['imageType'] as core.String
              : null,
          knownIcon: json_.containsKey('knownIcon')
              ? json_['knownIcon'] as core.String
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

  /// The `https` URL that hosts the image.
  ///
  /// For example: ```
  /// https://developers.google.com/chat/images/quickstart-app-avatar.png ```
  core.String? imageUrl;

  /// When a user clicks on the image, the click triggers this action.
  GoogleAppsCardV1OnClick? onClick;

  GoogleAppsCardV1Image({
    this.altText,
    this.imageUrl,
    this.onClick,
  });

  GoogleAppsCardV1Image.fromJson(core.Map json_)
      : this(
          altText: json_.containsKey('altText')
              ? json_['altText'] as core.String
              : null,
          imageUrl: json_.containsKey('imageUrl')
              ? json_['imageUrl'] as core.String
              : null,
          onClick: json_.containsKey('onClick')
              ? GoogleAppsCardV1OnClick.fromJson(
                  json_['onClick'] as core.Map<core.String, core.dynamic>)
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

  GoogleAppsCardV1ImageComponent.fromJson(core.Map json_)
      : this(
          altText: json_.containsKey('altText')
              ? json_['altText'] as core.String
              : null,
          borderStyle: json_.containsKey('borderStyle')
              ? GoogleAppsCardV1BorderStyle.fromJson(
                  json_['borderStyle'] as core.Map<core.String, core.dynamic>)
              : null,
          cropStyle: json_.containsKey('cropStyle')
              ? GoogleAppsCardV1ImageCropStyle.fromJson(
                  json_['cropStyle'] as core.Map<core.String, core.dynamic>)
              : null,
          imageUri: json_.containsKey('imageUri')
              ? json_['imageUri'] as core.String
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
///
/// For example, here's how to apply a 16 by 9 aspect ratio: ``` cropStyle {
/// "type": "RECTANGLE_CUSTOM", "aspectRatio": 16/9 } ```
class GoogleAppsCardV1ImageCropStyle {
  /// The aspect ratio to use if the crop type is `RECTANGLE_CUSTOM`.
  ///
  /// For example, here's how to apply a 16 by 9 aspect ratio: ``` cropStyle {
  /// "type": "RECTANGLE_CUSTOM", "aspectRatio": 16/9 } ```
  core.double? aspectRatio;

  /// The crop type.
  /// Possible string values are:
  /// - "IMAGE_CROP_TYPE_UNSPECIFIED" : No value specified. Do not use.
  /// - "SQUARE" : Default value. Applies a square crop.
  /// - "CIRCLE" : Applies a circular crop.
  /// - "RECTANGLE_CUSTOM" : Applies a rectangular crop with a custom aspect
  /// ratio. Set the custom aspect ratio with `aspectRatio`.
  /// - "RECTANGLE_4_3" : Applies a rectangular crop with a 4:3 aspect ratio.
  core.String? type;

  GoogleAppsCardV1ImageCropStyle({
    this.aspectRatio,
    this.type,
  });

  GoogleAppsCardV1ImageCropStyle.fromJson(core.Map json_)
      : this(
          aspectRatio: json_.containsKey('aspectRatio')
              ? (json_['aspectRatio'] as core.num).toDouble()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aspectRatio != null) 'aspectRatio': aspectRatio!,
        if (type != null) 'type': type!,
      };
}

/// Represents how to respond when users click an interactive element on a card,
/// such as a button.
class GoogleAppsCardV1OnClick {
  /// If specified, an action is triggered by this `onClick`.
  GoogleAppsCardV1Action? action;

  /// A new card is pushed to the card stack after clicking if specified.
  ///
  /// Supported by Google Workspace Add-ons, but not Chat apps.
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

  GoogleAppsCardV1OnClick.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? GoogleAppsCardV1Action.fromJson(
                  json_['action'] as core.Map<core.String, core.dynamic>)
              : null,
          card: json_.containsKey('card')
              ? GoogleAppsCardV1Card.fromJson(
                  json_['card'] as core.Map<core.String, core.dynamic>)
              : null,
          openDynamicLinkAction: json_.containsKey('openDynamicLinkAction')
              ? GoogleAppsCardV1Action.fromJson(json_['openDynamicLinkAction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          openLink: json_.containsKey('openLink')
              ? GoogleAppsCardV1OpenLink.fromJson(
                  json_['openLink'] as core.Map<core.String, core.dynamic>)
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
  /// - "NOTHING" : Default value. The card does not reload; nothing happens.
  /// - "RELOAD" : Reloads the card after the child window closes. If used in
  /// conjunction with
  /// [OpenAs.OVERLAY](https://developers.google.com/workspace/add-ons/reference/rpc/google.apps.card.v1#openas),
  /// the child window acts as a modal dialog and the parent card is blocked
  /// until the child window closes.
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

  GoogleAppsCardV1OpenLink.fromJson(core.Map json_)
      : this(
          onClose: json_.containsKey('onClose')
              ? json_['onClose'] as core.String
              : null,
          openAs: json_.containsKey('openAs')
              ? json_['openAs'] as core.String
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (onClose != null) 'onClose': onClose!,
        if (openAs != null) 'openAs': openAs!,
        if (url != null) 'url': url!,
      };
}

/// A section contains a collection of widgets that are rendered vertically in
/// the order that they are specified.
class GoogleAppsCardV1Section {
  /// Indicates whether this section is collapsible.
  ///
  /// Collapsible sections hide some or all widgets, but users can expand the
  /// section to reveal the hidden widgets by clicking **Show more**. Users can
  /// hide the widgets again by clicking **Show less**. To determine which
  /// widgets are hidden, specify `uncollapsibleWidgetsCount`.
  core.bool? collapsible;

  /// Text that appears at the top of a section.
  ///
  /// Supports simple HTML formatted text. For more information about formatting
  /// text, see Formatting text in Google Chat apps and Formatting text in
  /// Google Workspace Add-ons.
  core.String? header;

  /// The number of uncollapsible widgets which remain visible even when a
  /// section is collapsed.
  ///
  /// For example, when a section contains five widgets and the
  /// `uncollapsibleWidgetsCount` is set to `2`, the first two widgets are
  /// always shown and the last three are collapsed by default. The
  /// `uncollapsibleWidgetsCount` is taken into account only when `collapsible`
  /// is `true`.
  core.int? uncollapsibleWidgetsCount;

  /// All the widgets in the section.
  ///
  /// Must contain at least 1 widget.
  core.List<GoogleAppsCardV1Widget>? widgets;

  GoogleAppsCardV1Section({
    this.collapsible,
    this.header,
    this.uncollapsibleWidgetsCount,
    this.widgets,
  });

  GoogleAppsCardV1Section.fromJson(core.Map json_)
      : this(
          collapsible: json_.containsKey('collapsible')
              ? json_['collapsible'] as core.bool
              : null,
          header: json_.containsKey('header')
              ? json_['header'] as core.String
              : null,
          uncollapsibleWidgetsCount:
              json_.containsKey('uncollapsibleWidgetsCount')
                  ? json_['uncollapsibleWidgetsCount'] as core.int
                  : null,
          widgets: json_.containsKey('widgets')
              ? (json_['widgets'] as core.List)
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

/// A widget that creates one or more UI items that users can select.
///
/// For example, a dropdown menu or checkboxes. You can use this widget to
/// collect data that can be predicted or enumerated. Chat apps can process the
/// value of items that users select or input. For details about working with
/// form inputs, see
/// [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).
/// To collect undefined or abstract data from users, use the TextInput widget.
class GoogleAppsCardV1SelectionInput {
  /// An array of selectable items.
  ///
  /// For example, an array of radio buttons or checkboxes. Supports up to 100
  /// items.
  core.List<GoogleAppsCardV1SelectionItem>? items;

  /// The text that appears above the selection input field in the user
  /// interface.
  ///
  /// Specify text that helps the user enter the information your app needs. For
  /// example, if users are selecting the urgency of a work ticket from a
  /// drop-down menu, the label might be "Urgency" or "Select urgency".
  core.String? label;

  /// The name that identifies the selection input in a form input event.
  ///
  /// For details about working with form inputs, see
  /// [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).
  core.String? name;

  /// If specified, the form is submitted when the selection changes.
  ///
  /// If not specified, you must specify a separate button that submits the
  /// form. For details about working with form inputs, see
  /// [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).
  GoogleAppsCardV1Action? onChangeAction;

  /// The type of items that are displayed to users in a `SelectionInput`
  /// widget.
  ///
  /// Selection types support different types of interactions. For example,
  /// users can select one or more checkboxes, but they can only select one
  /// value from a dropdown menu.
  /// Possible string values are:
  /// - "CHECK_BOX" : A set of checkboxes. Users can select one or more
  /// checkboxes.
  /// - "RADIO_BUTTON" : A set of radio buttons. Users can select one radio
  /// button.
  /// - "SWITCH" : A set of switches. Users can turn on one or more switches.
  /// - "DROPDOWN" : A dropdown menu. Users can select one item from the menu.
  core.String? type;

  GoogleAppsCardV1SelectionInput({
    this.items,
    this.label,
    this.name,
    this.onChangeAction,
    this.type,
  });

  GoogleAppsCardV1SelectionInput.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => GoogleAppsCardV1SelectionItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          label:
              json_.containsKey('label') ? json_['label'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          onChangeAction: json_.containsKey('onChangeAction')
              ? GoogleAppsCardV1Action.fromJson(json_['onChangeAction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (label != null) 'label': label!,
        if (name != null) 'name': name!,
        if (onChangeAction != null) 'onChangeAction': onChangeAction!,
        if (type != null) 'type': type!,
      };
}

/// An item that users can select in a selection input, such as a checkbox or
/// switch.
class GoogleAppsCardV1SelectionItem {
  /// When `true`, more than one item is selected.
  ///
  /// If more than one item is selected for radio buttons and dropdown menus,
  /// the first selected item is received and the ones after are ignored.
  core.bool? selected;

  /// The text that identifies or describes the item to users.
  core.String? text;

  /// The value associated with this item.
  ///
  /// The client should use this as a form input value. For details about
  /// working with form inputs, see
  /// [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).
  core.String? value;

  GoogleAppsCardV1SelectionItem({
    this.selected,
    this.text,
    this.value,
  });

  GoogleAppsCardV1SelectionItem.fromJson(core.Map json_)
      : this(
          selected: json_.containsKey('selected')
              ? json_['selected'] as core.bool
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (selected != null) 'selected': selected!,
        if (text != null) 'text': text!,
        if (value != null) 'value': value!,
      };
}

/// One suggested value that users can enter in a text input field.
class GoogleAppsCardV1SuggestionItem {
  /// The value of a suggested input to a text input field.
  ///
  /// This is equivalent to what users would enter themselves.
  core.String? text;

  GoogleAppsCardV1SuggestionItem({
    this.text,
  });

  GoogleAppsCardV1SuggestionItem.fromJson(core.Map json_)
      : this(
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (text != null) 'text': text!,
      };
}

/// Suggested values that users can enter.
///
/// These values appear when users click inside the text input field. As users
/// type, the suggested values dynamically filter to match what the users have
/// typed. For example, a text input field for programming language might
/// suggest Java, JavaScript, Python, and C++. When users start typing "Jav",
/// the list of suggestions filters to show just Java and JavaScript. Suggested
/// values help guide users to enter values that your app can make sense of.
/// When referring to JavaScript, some users might enter "javascript" and others
/// "java script". Suggesting "JavaScript" can standardize how users interact
/// with your app. When specified, `TextInput.type` is always `SINGLE_LINE`,
/// even if it is set to `MULTIPLE_LINE`.
class GoogleAppsCardV1Suggestions {
  /// A list of suggestions used for autocomplete recommendations in text input
  /// fields.
  core.List<GoogleAppsCardV1SuggestionItem>? items;

  GoogleAppsCardV1Suggestions({
    this.items,
  });

  GoogleAppsCardV1Suggestions.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => GoogleAppsCardV1SuggestionItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
      };
}

/// Either a toggle-style switch or a checkbox inside a `decoratedText` widget.
///
/// Only supported on the `decoratedText` widget.
class GoogleAppsCardV1SwitchControl {
  /// How the switch appears in the user interface.
  /// Possible string values are:
  /// - "SWITCH" : A toggle-style switch.
  /// - "CHECKBOX" : Deprecated in favor of `CHECK_BOX`.
  /// - "CHECK_BOX" : A checkbox.
  core.String? controlType;

  /// The name by which the switch widget is identified in a form input event.
  ///
  /// For details about working with form inputs, see
  /// [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).
  core.String? name;

  /// The action to perform when the switch state is changed, such as what
  /// function to run.
  GoogleAppsCardV1Action? onChangeAction;

  /// When `true`, the switch is selected.
  core.bool? selected;

  /// The value entered by a user, returned as part of a form input event.
  ///
  /// For details about working with form inputs, see
  /// [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).
  core.String? value;

  GoogleAppsCardV1SwitchControl({
    this.controlType,
    this.name,
    this.onChangeAction,
    this.selected,
    this.value,
  });

  GoogleAppsCardV1SwitchControl.fromJson(core.Map json_)
      : this(
          controlType: json_.containsKey('controlType')
              ? json_['controlType'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          onChangeAction: json_.containsKey('onChangeAction')
              ? GoogleAppsCardV1Action.fromJson(json_['onChangeAction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          selected: json_.containsKey('selected')
              ? json_['selected'] as core.bool
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (controlType != null) 'controlType': controlType!,
        if (name != null) 'name': name!,
        if (onChangeAction != null) 'onChangeAction': onChangeAction!,
        if (selected != null) 'selected': selected!,
        if (value != null) 'value': value!,
      };
}

/// A field in which users can enter text.
///
/// Supports suggestions and on-change actions. Chat apps receive and can
/// process the value of entered text during form input events. For details
/// about working with form inputs, see
/// [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).
/// When you need to collect undefined or abstract data from users, use a text
/// input. To collect defined or enumerated data from users, use the
/// SelectionInput widget.
class GoogleAppsCardV1TextInput {
  /// Specify what action to take when the text input field provides suggestions
  /// to users who interact with it.
  ///
  /// If unspecified, the suggestions are set by `initialSuggestions` and are
  /// processed by the client. If specified, the app takes the action specified
  /// here, such as running a custom function. Supported by Google Workspace
  /// Add-ons, but not Chat apps.
  ///
  /// Optional.
  GoogleAppsCardV1Action? autoCompleteAction;

  /// Text that appears below the text input field meant to assist users by
  /// prompting them to enter a certain value.
  ///
  /// This text is always visible. Required if `label` is unspecified.
  /// Otherwise, optional.
  core.String? hintText;

  /// Suggested values that users can enter.
  ///
  /// These values appear when users click inside the text input field. As users
  /// type, the suggested values dynamically filter to match what the users have
  /// typed. For example, a text input field for programming language might
  /// suggest Java, JavaScript, Python, and C++. When users start typing "Jav",
  /// the list of suggestions filters to show just Java and JavaScript.
  /// Suggested values help guide users to enter values that your app can make
  /// sense of. When referring to JavaScript, some users might enter
  /// "javascript" and others "java script". Suggesting "JavaScript" can
  /// standardize how users interact with your app. When specified,
  /// `TextInput.type` is always `SINGLE_LINE`, even if it is set to
  /// `MULTIPLE_LINE`.
  GoogleAppsCardV1Suggestions? initialSuggestions;

  /// The text that appears above the text input field in the user interface.
  ///
  /// Specify text that helps the user enter the information your app needs. For
  /// example, if you are asking someone's name, but specifically need their
  /// surname, write "surname" instead of "name". Required if `hintText` is
  /// unspecified. Otherwise, optional.
  core.String? label;

  /// The name by which the text input is identified in a form input event.
  ///
  /// For details about working with form inputs, see
  /// [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).
  core.String? name;

  /// What to do when a change occurs in the text input field.
  ///
  /// Examples of changes include a user adding to the field, or deleting text.
  /// Examples of actions to take include running a custom function or opening a
  /// [dialog](https://developers.google.com/chat/how-tos/dialogs) in Google
  /// Chat.
  GoogleAppsCardV1Action? onChangeAction;

  /// How a text input field appears in the user interface.
  ///
  /// For example, whether the field is single or multi-line.
  /// Possible string values are:
  /// - "SINGLE_LINE" : The text input field has a fixed height of one line.
  /// - "MULTIPLE_LINE" : The text input field has a fixed height of multiple
  /// lines.
  core.String? type;

  /// The value entered by a user, returned as part of a form input event.
  ///
  /// For details about working with form inputs, see
  /// [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).
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

  GoogleAppsCardV1TextInput.fromJson(core.Map json_)
      : this(
          autoCompleteAction: json_.containsKey('autoCompleteAction')
              ? GoogleAppsCardV1Action.fromJson(json_['autoCompleteAction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          hintText: json_.containsKey('hintText')
              ? json_['hintText'] as core.String
              : null,
          initialSuggestions: json_.containsKey('initialSuggestions')
              ? GoogleAppsCardV1Suggestions.fromJson(json_['initialSuggestions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          label:
              json_.containsKey('label') ? json_['label'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          onChangeAction: json_.containsKey('onChangeAction')
              ? GoogleAppsCardV1Action.fromJson(json_['onChangeAction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
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
/// For more information about formatting text, see Formatting text in Google
/// Chat apps and Formatting text in Google Workspace Add-ons.
class GoogleAppsCardV1TextParagraph {
  /// The text that's shown in the widget.
  core.String? text;

  GoogleAppsCardV1TextParagraph({
    this.text,
  });

  GoogleAppsCardV1TextParagraph.fromJson(core.Map json_)
      : this(
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (text != null) 'text': text!,
      };
}

/// Each card is made up of widgets.
///
/// A widget is a composite object that can represent one of text, images,
/// buttons, and other object types.
class GoogleAppsCardV1Widget {
  /// A list of buttons.
  ///
  /// For example, the following JSON creates two buttons. The first is a blue
  /// text button and the second is an image button that opens a link: ```
  /// "buttonList": { "buttons": [ { "text": "Edit", "color": { "red": 0,
  /// "green": 0, "blue": 1, "alpha": 1 }, "disabled": true, }, { "icon": {
  /// "knownIcon": "INVITE", "altText": "check calendar" }, "onClick": {
  /// "openLink": { "url": "https://example.com/calendar" } } } ] } ```
  GoogleAppsCardV1ButtonList? buttonList;

  /// Displays a selection/input widget for date, time, or date and time.
  ///
  /// Not supported by Chat apps. Support by Chat apps is coming soon. For
  /// example, the following JSON creates a datetime picker to schedule an
  /// appointment: ``` "dateTimePicker": { "name": "appointment_time", "label":
  /// "Book your appointment at:", "type": "DATE_AND_TIME", "valueMsEpoch":
  /// "796435200000" } ```
  GoogleAppsCardV1DateTimePicker? dateTimePicker;

  /// Displays a decorated text item.
  ///
  /// For example, the following JSON creates a decorated text widget showing
  /// email address: ``` "decoratedText": { "icon": { "knownIcon": "EMAIL" },
  /// "topLabel": "Email Address", "text": "sasha@example.com", "bottomLabel":
  /// "This is a new Email address!", "switchControl": { "name":
  /// "has_send_welcome_email_to_sasha", "selected": false, "controlType":
  /// "CHECKBOX" } } ```
  GoogleAppsCardV1DecoratedText? decoratedText;

  /// Displays a horizontal line divider between widgets.
  ///
  /// For example, the following JSON creates a divider: ``` "divider": { } ```
  GoogleAppsCardV1Divider? divider;

  /// Displays a grid with a collection of items.
  ///
  /// A grid supports any number of columns and items. The number of rows is
  /// determined by the upper bounds of the number items divided by the number
  /// of columns. A grid with 10 items and 2 columns has 5 rows. A grid with 11
  /// items and 2 columns has 6 rows. For example, the following JSON creates a
  /// 2 column grid with a single item: ``` "grid": { "title": "A fine
  /// collection of items", "columnCount": 2, "borderStyle": { "type": "STROKE",
  /// "cornerRadius": 4 }, "items": [ { "image": { "imageUri":
  /// "https://www.example.com/image.png", "cropStyle": { "type": "SQUARE" },
  /// "borderStyle": { "type": "STROKE" } }, "title": "An item",
  /// "textAlignment": "CENTER" } ], "onClick": { "openLink": { "url":
  /// "https://www.example.com" } } } ```
  GoogleAppsCardV1Grid? grid;

  /// Displays an image.
  ///
  /// For example, the following JSON creates an image with alternative text:
  /// ``` "image": { "imageUrl":
  /// "https://developers.google.com/chat/images/quickstart-app-avatar.png",
  /// "altText": "Chat app avatar" } ```
  GoogleAppsCardV1Image? image;

  /// Displays a selection control that lets users select items.
  ///
  /// Selection controls can be checkboxes, radio buttons, switches, or dropdown
  /// menus. For example, the following JSON creates a dropdown menu that lets
  /// users choose a size: ``` "selectionInput": { "name": "size", "label":
  /// "Size" "type": "DROPDOWN", "items": [ { "text": "S", "value": "small",
  /// "selected": false }, { "text": "M", "value": "medium", "selected": true },
  /// { "text": "L", "value": "large", "selected": false }, { "text": "XL",
  /// "value": "extra_large", "selected": false } ] } ```
  GoogleAppsCardV1SelectionInput? selectionInput;

  /// Displays a text box that users can type into.
  ///
  /// For example, the following JSON creates a text input for an email address:
  /// ``` "textInput": { "name": "mailing_address", "label": "Mailing Address" }
  /// ``` As another example, the following JSON creates a text input for a
  /// programming language with static suggestions: ``` "textInput": { "name":
  /// "preferred_programing_language", "label": "Preferred Language",
  /// "initialSuggestions": { "items": [ { "text": "C++" }, { "text": "Java" },
  /// { "text": "JavaScript" }, { "text": "Python" } ] } } ```
  GoogleAppsCardV1TextInput? textInput;

  /// Displays a text paragraph.
  ///
  /// Supports simple HTML formatted text. For more information about formatting
  /// text, see Formatting text in Google Chat apps and Formatting text in
  /// Google Workspace Add-ons. For example, the following JSON creates a bolded
  /// text: ``` "textParagraph": { "text": " *bold text*" } ```
  GoogleAppsCardV1TextParagraph? textParagraph;

  GoogleAppsCardV1Widget({
    this.buttonList,
    this.dateTimePicker,
    this.decoratedText,
    this.divider,
    this.grid,
    this.image,
    this.selectionInput,
    this.textInput,
    this.textParagraph,
  });

  GoogleAppsCardV1Widget.fromJson(core.Map json_)
      : this(
          buttonList: json_.containsKey('buttonList')
              ? GoogleAppsCardV1ButtonList.fromJson(
                  json_['buttonList'] as core.Map<core.String, core.dynamic>)
              : null,
          dateTimePicker: json_.containsKey('dateTimePicker')
              ? GoogleAppsCardV1DateTimePicker.fromJson(json_['dateTimePicker']
                  as core.Map<core.String, core.dynamic>)
              : null,
          decoratedText: json_.containsKey('decoratedText')
              ? GoogleAppsCardV1DecoratedText.fromJson(
                  json_['decoratedText'] as core.Map<core.String, core.dynamic>)
              : null,
          divider: json_.containsKey('divider')
              ? GoogleAppsCardV1Divider.fromJson(
                  json_['divider'] as core.Map<core.String, core.dynamic>)
              : null,
          grid: json_.containsKey('grid')
              ? GoogleAppsCardV1Grid.fromJson(
                  json_['grid'] as core.Map<core.String, core.dynamic>)
              : null,
          image: json_.containsKey('image')
              ? GoogleAppsCardV1Image.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>)
              : null,
          selectionInput: json_.containsKey('selectionInput')
              ? GoogleAppsCardV1SelectionInput.fromJson(json_['selectionInput']
                  as core.Map<core.String, core.dynamic>)
              : null,
          textInput: json_.containsKey('textInput')
              ? GoogleAppsCardV1TextInput.fromJson(
                  json_['textInput'] as core.Map<core.String, core.dynamic>)
              : null,
          textParagraph: json_.containsKey('textParagraph')
              ? GoogleAppsCardV1TextParagraph.fromJson(
                  json_['textParagraph'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buttonList != null) 'buttonList': buttonList!,
        if (dateTimePicker != null) 'dateTimePicker': dateTimePicker!,
        if (decoratedText != null) 'decoratedText': decoratedText!,
        if (divider != null) 'divider': divider!,
        if (grid != null) 'grid': grid!,
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

  Image.fromJson(core.Map json_)
      : this(
          aspectRatio: json_.containsKey('aspectRatio')
              ? (json_['aspectRatio'] as core.num).toDouble()
              : null,
          imageUrl: json_.containsKey('imageUrl')
              ? json_['imageUrl'] as core.String
              : null,
          onClick: json_.containsKey('onClick')
              ? OnClick.fromJson(
                  json_['onClick'] as core.Map<core.String, core.dynamic>)
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

  ImageButton.fromJson(core.Map json_)
      : this(
          icon: json_.containsKey('icon') ? json_['icon'] as core.String : null,
          iconUrl: json_.containsKey('iconUrl')
              ? json_['iconUrl'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          onClick: json_.containsKey('onClick')
              ? OnClick.fromJson(
                  json_['onClick'] as core.Map<core.String, core.dynamic>)
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
  /// Formatted text supported. For more information about formatting text, see
  /// Formatting text in Google Chat apps and Formatting text in Google
  /// Workspace Add-ons.
  core.String? bottomLabel;

  /// A button that can be clicked to trigger an action.
  Button? button;

  /// The text of the content.
  ///
  /// Formatted text supported and always required. For more information about
  /// formatting text, see Formatting text in Google Chat apps and Formatting
  /// text in Google Workspace Add-ons.
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
  /// Formatted text supported. For more information about formatting text, see
  /// Formatting text in Google Chat apps and Formatting text in Google
  /// Workspace Add-ons.
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

  KeyValue.fromJson(core.Map json_)
      : this(
          bottomLabel: json_.containsKey('bottomLabel')
              ? json_['bottomLabel'] as core.String
              : null,
          button: json_.containsKey('button')
              ? Button.fromJson(
                  json_['button'] as core.Map<core.String, core.dynamic>)
              : null,
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          contentMultiline: json_.containsKey('contentMultiline')
              ? json_['contentMultiline'] as core.bool
              : null,
          icon: json_.containsKey('icon') ? json_['icon'] as core.String : null,
          iconUrl: json_.containsKey('iconUrl')
              ? json_['iconUrl'] as core.String
              : null,
          onClick: json_.containsKey('onClick')
              ? OnClick.fromJson(
                  json_['onClick'] as core.Map<core.String, core.dynamic>)
              : null,
          topLabel: json_.containsKey('topLabel')
              ? json_['topLabel'] as core.String
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

  /// A token that can be sent as `pageToken` to retrieve the next page of
  /// results.
  ///
  /// If empty, there are no subsequent pages.
  core.String? nextPageToken;

  ListMembershipsResponse({
    this.memberships,
    this.nextPageToken,
  });

  ListMembershipsResponse.fromJson(core.Map json_)
      : this(
          memberships: json_.containsKey('memberships')
              ? (json_['memberships'] as core.List)
                  .map((value) => Membership.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (memberships != null) 'memberships': memberships!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListSpacesResponse {
  /// A token that can be sent as `pageToken` to retrieve the next page of
  /// results.
  ///
  /// If empty, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of spaces in the requested (or first) page.
  core.List<Space>? spaces;

  ListSpacesResponse({
    this.nextPageToken,
    this.spaces,
  });

  ListSpacesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          spaces: json_.containsKey('spaces')
              ? (json_['spaces'] as core.List)
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

  MatchedUrl.fromJson(core.Map json_)
      : this(
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
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

  /// The Google Chat user or app the membership corresponds to.
  ///
  /// If your Chat app
  /// [authenticates as a user](https://developers.google.com/chat/api/guides/auth/users),
  /// the output populates the
  /// [user](https://developers.google.com/chat/api/reference/rest/v1/User)
  /// `name` and `type`.
  User? member;

  /// Resource name of the membership, assigned by the server.
  ///
  /// Format: spaces/{space}/members/{member}
  core.String? name;

  /// User's role within a Chat space, which determines their permitted actions
  /// in the space.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "MEMBERSHIP_ROLE_UNSPECIFIED" : Default value. The user isn't a member
  /// of the space, but might be invited.
  /// - "ROLE_MEMBER" : A member of the space. The user has basic permissions,
  /// like sending messages to the space. In 1:1 and unnamed group
  /// conversations, everyone has this role.
  /// - "ROLE_MANAGER" : A space manager. The user has all basic permissions
  /// plus administrative permissions that allow them to manage the space, like
  /// adding or removing members. Only supported in SpaceType.SPACE.
  core.String? role;

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
    this.role,
    this.state,
  });

  Membership.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          member: json_.containsKey('member')
              ? User.fromJson(
                  json_['member'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (member != null) 'member': member!,
        if (name != null) 'name': name!,
        if (role != null) 'role': role!,
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
  ///
  /// Output only.
  core.String? argumentText;

  /// User-uploaded attachment.
  core.List<Attachment>? attachment;

  /// Deprecated: Use `cards_v2` instead.
  ///
  /// Rich, formatted and interactive cards that can be used to display UI
  /// elements such as: formatted texts, buttons, clickable images. Cards are
  /// normally displayed below the plain-text body of the message. `cards` and
  /// `cards_v2` can have a maximum size of 32 KB.
  core.List<Card>? cards;

  /// Richly formatted and interactive cards that display UI elements and
  /// editable widgets, such as: - Formatted text - Buttons - Clickable images -
  /// Checkboxes - Radio buttons - Input widgets.
  ///
  /// Cards are usually displayed below the text body of a Chat message, but can
  /// situationally appear other places, such as
  /// [dialogs](https://developers.google.com/chat/how-tos/dialogs). Each card
  /// can have a maximum size of 32 KB. The `cardId` is a unique identifier
  /// among cards in the same message and for identifying user input values.
  /// Currently supported widgets include: - `TextParagraph` - `DecoratedText` -
  /// `Image` - `ButtonList` - `Divider` - `TextInput` - `SelectionInput` -
  /// `Grid`
  core.List<CardWithId>? cardsV2;

  /// A custom name for a Chat message assigned at creation.
  ///
  /// Must start with `client-` and contain only lowercase letters, numbers, and
  /// hyphens up to 63 characters in length. Specify this field to get, update,
  /// or delete the message with the specified value. For example usage, see
  /// [Name a created message](https://developers.google.com/chat/api/guides/crudl/messages#name_a_created_message).
  core.String? clientAssignedMessageId;

  /// The time at which the message was created in Google Chat server.
  ///
  /// Output only.
  core.String? createTime;

  /// A plain-text description of the message's cards, used when the actual
  /// cards cannot be displayed (e.g. mobile notifications).
  core.String? fallbackText;

  /// The time at which the message was last edited by a user.
  ///
  /// If the message has never been edited, this field is empty.
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
  /// If your Chat app
  /// [authenticates as a user](https://developers.google.com/chat/api/guides/auth/users),
  /// the output populates the
  /// [user](https://developers.google.com/chat/api/reference/rest/v1/User)
  /// `name` and `type`.
  ///
  /// Output only.
  User? sender;

  /// Slash command information, if applicable.
  ///
  /// Output only.
  SlashCommand? slashCommand;

  /// If your Chat app
  /// [authenticates as a user](https://developers.google.com/chat/api/guides/auth/users),
  /// the output populates the
  /// [space](https://developers.google.com/chat/api/reference/rest/v1/spaces)
  /// `name`.
  Space? space;

  /// Plain-text body of the message.
  ///
  /// The first link to an image, video, web page, or other preview-able item
  /// generates a preview chip.
  core.String? text;

  /// The thread the message belongs to.
  ///
  /// For example usage, see
  /// [Start or reply to a message thread](https://developers.google.com/chat/api/guides/crudl/messages#start_or_reply_to_a_message_thread).
  Thread? thread;

  /// When `true`, the message is a response in a reply thread.
  ///
  /// When `false`, the message is visible in the space's top-level conversation
  /// as either the first message of a thread or a message with no threaded
  /// replies. If the space doesn't support reply in threads, this field is
  /// always `false`.
  ///
  /// Output only.
  core.bool? threadReply;

  Message({
    this.actionResponse,
    this.annotations,
    this.argumentText,
    this.attachment,
    this.cards,
    this.cardsV2,
    this.clientAssignedMessageId,
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
    this.threadReply,
  });

  Message.fromJson(core.Map json_)
      : this(
          actionResponse: json_.containsKey('actionResponse')
              ? ActionResponse.fromJson(json_['actionResponse']
                  as core.Map<core.String, core.dynamic>)
              : null,
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.List)
                  .map((value) => Annotation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          argumentText: json_.containsKey('argumentText')
              ? json_['argumentText'] as core.String
              : null,
          attachment: json_.containsKey('attachment')
              ? (json_['attachment'] as core.List)
                  .map((value) => Attachment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          cards: json_.containsKey('cards')
              ? (json_['cards'] as core.List)
                  .map((value) => Card.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          cardsV2: json_.containsKey('cardsV2')
              ? (json_['cardsV2'] as core.List)
                  .map((value) => CardWithId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          clientAssignedMessageId: json_.containsKey('clientAssignedMessageId')
              ? json_['clientAssignedMessageId'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          fallbackText: json_.containsKey('fallbackText')
              ? json_['fallbackText'] as core.String
              : null,
          lastUpdateTime: json_.containsKey('lastUpdateTime')
              ? json_['lastUpdateTime'] as core.String
              : null,
          matchedUrl: json_.containsKey('matchedUrl')
              ? MatchedUrl.fromJson(
                  json_['matchedUrl'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          sender: json_.containsKey('sender')
              ? User.fromJson(
                  json_['sender'] as core.Map<core.String, core.dynamic>)
              : null,
          slashCommand: json_.containsKey('slashCommand')
              ? SlashCommand.fromJson(
                  json_['slashCommand'] as core.Map<core.String, core.dynamic>)
              : null,
          space: json_.containsKey('space')
              ? Space.fromJson(
                  json_['space'] as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
          thread: json_.containsKey('thread')
              ? Thread.fromJson(
                  json_['thread'] as core.Map<core.String, core.dynamic>)
              : null,
          threadReply: json_.containsKey('threadReply')
              ? json_['threadReply'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionResponse != null) 'actionResponse': actionResponse!,
        if (annotations != null) 'annotations': annotations!,
        if (argumentText != null) 'argumentText': argumentText!,
        if (attachment != null) 'attachment': attachment!,
        if (cards != null) 'cards': cards!,
        if (cardsV2 != null) 'cardsV2': cardsV2!,
        if (clientAssignedMessageId != null)
          'clientAssignedMessageId': clientAssignedMessageId!,
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
        if (threadReply != null) 'threadReply': threadReply!,
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

  OnClick.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? FormAction.fromJson(
                  json_['action'] as core.Map<core.String, core.dynamic>)
              : null,
          openLink: json_.containsKey('openLink')
              ? OpenLink.fromJson(
                  json_['openLink'] as core.Map<core.String, core.dynamic>)
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

  OpenLink.fromJson(core.Map json_)
      : this(
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
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
  /// The header of the section.
  ///
  /// Formatted text is supported. For more information about formatting text,
  /// see Formatting text in Google Chat apps and Formatting text in Google
  /// Workspace Add-ons.
  core.String? header;

  /// A section must contain at least 1 widget.
  core.List<WidgetMarkup>? widgets;

  Section({
    this.header,
    this.widgets,
  });

  Section.fromJson(core.Map json_)
      : this(
          header: json_.containsKey('header')
              ? json_['header'] as core.String
              : null,
          widgets: json_.containsKey('widgets')
              ? (json_['widgets'] as core.List)
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

  SlashCommand.fromJson(core.Map json_)
      : this(
          commandId: json_.containsKey('commandId')
              ? json_['commandId'] as core.String
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

  SlashCommandMetadata.fromJson(core.Map json_)
      : this(
          bot: json_.containsKey('bot')
              ? User.fromJson(
                  json_['bot'] as core.Map<core.String, core.dynamic>)
              : null,
          commandId: json_.containsKey('commandId')
              ? json_['commandId'] as core.String
              : null,
          commandName: json_.containsKey('commandName')
              ? json_['commandName'] as core.String
              : null,
          triggersDialog: json_.containsKey('triggersDialog')
              ? json_['triggersDialog'] as core.bool
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
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
  /// Whether the Chat app was installed by a Google Workspace administrator.
  ///
  /// Administrators can install a Chat app for their domain, organizational
  /// unit, or a group of users. Administrators can only install Chat apps for
  /// direct messaging between users and the app. To support admin install, your
  /// app must feature direct messaging.
  ///
  /// Output only.
  core.bool? adminInstalled;

  /// The space's display name.
  ///
  /// Required when
  /// [creating a space](https://developers.google.com/chat/api/reference/rest/v1/spaces/create).
  /// For direct messages, this field may be empty. Supports up to 128
  /// characters.
  core.String? displayName;

  /// Resource name of the space.
  ///
  /// Format: spaces/{space}
  core.String? name;

  /// Whether the space is a DM between a Chat app and a single human.
  ///
  /// Optional.
  core.bool? singleUserBotDm;

  /// Details about the space including description and rules.
  SpaceDetails? spaceDetails;

  /// The threading state in the Chat space.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SPACE_THREADING_STATE_UNSPECIFIED" : Reserved.
  /// - "THREADED_MESSAGES" : Named spaces that support message threads. When
  /// users respond to a message, they can reply in-thread, which keeps their
  /// response in the context of the original message.
  /// - "GROUPED_MESSAGES" : Named spaces where the conversation is organized by
  /// topic. Topics and their replies are grouped together.
  /// - "UNTHREADED_MESSAGES" : Direct messages (DMs) between two people and
  /// group conversations between 3 or more people.
  core.String? spaceThreadingState;

  /// Deprecated: Use `spaceThreadingState` instead.
  ///
  /// Whether messages are threaded in this space.
  ///
  /// Output only.
  core.bool? threaded;

  /// Deprecated: Use `singleUserBotDm` or `spaceType` (developer preview)
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
    this.adminInstalled,
    this.displayName,
    this.name,
    this.singleUserBotDm,
    this.spaceDetails,
    this.spaceThreadingState,
    this.threaded,
    this.type,
  });

  Space.fromJson(core.Map json_)
      : this(
          adminInstalled: json_.containsKey('adminInstalled')
              ? json_['adminInstalled'] as core.bool
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          singleUserBotDm: json_.containsKey('singleUserBotDm')
              ? json_['singleUserBotDm'] as core.bool
              : null,
          spaceDetails: json_.containsKey('spaceDetails')
              ? SpaceDetails.fromJson(
                  json_['spaceDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          spaceThreadingState: json_.containsKey('spaceThreadingState')
              ? json_['spaceThreadingState'] as core.String
              : null,
          threaded: json_.containsKey('threaded')
              ? json_['threaded'] as core.bool
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adminInstalled != null) 'adminInstalled': adminInstalled!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (singleUserBotDm != null) 'singleUserBotDm': singleUserBotDm!,
        if (spaceDetails != null) 'spaceDetails': spaceDetails!,
        if (spaceThreadingState != null)
          'spaceThreadingState': spaceThreadingState!,
        if (threaded != null) 'threaded': threaded!,
        if (type != null) 'type': type!,
      };
}

/// Details about the space including description and rules.
class SpaceDetails {
  /// A description of the space.
  ///
  /// It could describe the space's discussion topic, functional purpose, or
  /// participants. Supports up to 150 characters.
  ///
  /// Optional.
  core.String? description;

  /// The space's rules, expectations, and etiquette.
  ///
  /// Supports up to 5,000 characters.
  ///
  /// Optional.
  core.String? guidelines;

  SpaceDetails({
    this.description,
    this.guidelines,
  });

  SpaceDetails.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          guidelines: json_.containsKey('guidelines')
              ? json_['guidelines'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (guidelines != null) 'guidelines': guidelines!,
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

  TextButton.fromJson(core.Map json_)
      : this(
          onClick: json_.containsKey('onClick')
              ? OnClick.fromJson(
                  json_['onClick'] as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (onClick != null) 'onClick': onClick!,
        if (text != null) 'text': text!,
      };
}

/// A paragraph of text.
///
/// Formatted text supported. For more information about formatting text, see
/// Formatting text in Google Chat apps and Formatting text in Google Workspace
/// Add-ons.
class TextParagraph {
  core.String? text;

  TextParagraph({
    this.text,
  });

  TextParagraph.fromJson(core.Map json_)
      : this(
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (text != null) 'text': text!,
      };
}

/// A thread in Google Chat.
class Thread {
  /// Resource name of the thread.
  ///
  /// Example: spaces/{space}/threads/{thread}
  core.String? name;

  /// Opaque thread identifier.
  ///
  /// To start or add to a thread, create a message and specify a `threadKey` or
  /// the thread.name. For example usage, see
  /// [Start or reply to a message thread](https://developers.google.com/chat/api/guides/crudl/messages#start_or_reply_to_a_message_thread).
  /// For other requests, this is an output only field.
  ///
  /// Optional.
  core.String? threadKey;

  Thread({
    this.name,
    this.threadKey,
  });

  Thread.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          threadKey: json_.containsKey('threadKey')
              ? json_['threadKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (threadKey != null) 'threadKey': threadKey!,
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
  /// Format: `users/{user}`. `users/app` can be used as an alias for the
  /// calling app bot user. For human users, `{user}` is the same user
  /// identifier as: - the `{person_id`} for the
  /// [Person](https://developers.google.com/people/api/rest/v1/people) in the
  /// People API, where the Person `resource_name` is `people/{person_id}`. For
  /// example, `users/123456789` in Chat API represents the same person as
  /// `people/123456789` in People API. - the `id` for a
  /// [user](https://developers.google.com/admin-sdk/directory/reference/rest/v1/users)
  /// in the Admin SDK Directory API.
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

  User.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          domainId: json_.containsKey('domainId')
              ? json_['domainId'] as core.String
              : null,
          isAnonymous: json_.containsKey('isAnonymous')
              ? json_['isAnonymous'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
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

  UserMentionMetadata.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          user: json_.containsKey('user')
              ? User.fromJson(
                  json_['user'] as core.Map<core.String, core.dynamic>)
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
  /// Buttons is also `oneof data` and only one of these fields should be set.
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

  WidgetMarkup.fromJson(core.Map json_)
      : this(
          buttons: json_.containsKey('buttons')
              ? (json_['buttons'] as core.List)
                  .map((value) => Button.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          image: json_.containsKey('image')
              ? Image.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>)
              : null,
          keyValue: json_.containsKey('keyValue')
              ? KeyValue.fromJson(
                  json_['keyValue'] as core.Map<core.String, core.dynamic>)
              : null,
          textParagraph: json_.containsKey('textParagraph')
              ? TextParagraph.fromJson(
                  json_['textParagraph'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buttons != null) 'buttons': buttons!,
        if (image != null) 'image': image!,
        if (keyValue != null) 'keyValue': keyValue!,
        if (textParagraph != null) 'textParagraph': textParagraph!,
      };
}
