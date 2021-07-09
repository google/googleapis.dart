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
/// Enables bots to fetch information and perform actions in Google Chat.
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

/// Enables bots to fetch information and perform actions in Google Chat.
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
  /// Example: spaces/AAAAMpdlehY
  /// Value must have pattern `^dms/\[^/\]+$`.
  ///
  /// [threadKey] - Opaque thread identifier string that can be specified to
  /// group messages into a single thread. If this is the first message with a
  /// given thread identifier, a new thread is created. Subsequent messages with
  /// the same thread identifier will be posted into the same thread. This
  /// relieves bots and webhooks from having to store the Hangouts Chat thread
  /// ID of a thread (created earlier by them) to post further updates to it.
  /// Has no effect if thread field, corresponding to an existing thread, is set
  /// in message.
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
    core.String? threadKey,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
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
  /// Example: spaces/AAAAMpdlehY
  /// Value must have pattern `^dms/\[^/\]+$`.
  ///
  /// [threadKey] - Opaque thread identifier string that can be specified to
  /// group messages into a single thread. If this is the first message with a
  /// given thread identifier, a new thread is created. Subsequent messages with
  /// the same thread identifier will be posted into the same thread. This
  /// relieves bots and webhooks from having to store the Hangouts Chat thread
  /// ID of a thread (created earlier by them) to post further updates to it.
  /// Has no effect if thread field, corresponding to an existing thread, is set
  /// in message.
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
    core.String? threadKey,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
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
  /// Example: spaces/AAAAMpdlehY
  /// Value must have pattern `^dms/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [threadKey] - Opaque thread identifier string that can be specified to
  /// group messages into a single thread. If this is the first message with a
  /// given thread identifier, a new thread is created. Subsequent messages with
  /// the same thread identifier will be posted into the same thread. This
  /// relieves bots and webhooks from having to store the Hangouts Chat thread
  /// ID of a thread (created earlier by them) to post further updates to it.
  /// Has no effect if thread field, corresponding to an existing thread, is set
  /// in message.
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
    core.String? threadKey,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
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
  /// Example: spaces/AAAAMpdlehY
  /// Value must have pattern `^rooms/\[^/\]+$`.
  ///
  /// [threadKey] - Opaque thread identifier string that can be specified to
  /// group messages into a single thread. If this is the first message with a
  /// given thread identifier, a new thread is created. Subsequent messages with
  /// the same thread identifier will be posted into the same thread. This
  /// relieves bots and webhooks from having to store the Hangouts Chat thread
  /// ID of a thread (created earlier by them) to post further updates to it.
  /// Has no effect if thread field, corresponding to an existing thread, is set
  /// in message.
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
    core.String? threadKey,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
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
  /// Example: spaces/AAAAMpdlehY
  /// Value must have pattern `^rooms/\[^/\]+$`.
  ///
  /// [threadKey] - Opaque thread identifier string that can be specified to
  /// group messages into a single thread. If this is the first message with a
  /// given thread identifier, a new thread is created. Subsequent messages with
  /// the same thread identifier will be posted into the same thread. This
  /// relieves bots and webhooks from having to store the Hangouts Chat thread
  /// ID of a thread (created earlier by them) to post further updates to it.
  /// Has no effect if thread field, corresponding to an existing thread, is set
  /// in message.
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
    core.String? threadKey,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
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
  /// Example: spaces/AAAAMpdlehY
  /// Value must have pattern `^rooms/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [threadKey] - Opaque thread identifier string that can be specified to
  /// group messages into a single thread. If this is the first message with a
  /// given thread identifier, a new thread is created. Subsequent messages with
  /// the same thread identifier will be posted into the same thread. This
  /// relieves bots and webhooks from having to store the Hangouts Chat thread
  /// ID of a thread (created earlier by them) to post further updates to it.
  /// Has no effect if thread field, corresponding to an existing thread, is set
  /// in message.
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
    core.String? threadKey,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
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
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the space, in the form "spaces / * ".
  /// Example: spaces/AAAAMpdlehY
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
  /// Example: spaces/AAAAMpdlehY
  /// Value must have pattern `^spaces/\[^/\]+$`.
  ///
  /// [threadKey] - Opaque thread identifier string that can be specified to
  /// group messages into a single thread. If this is the first message with a
  /// given thread identifier, a new thread is created. Subsequent messages with
  /// the same thread identifier will be posted into the same thread. This
  /// relieves bots and webhooks from having to store the Hangouts Chat thread
  /// ID of a thread (created earlier by them) to post further updates to it.
  /// Has no effect if thread field, corresponding to an existing thread, is set
  /// in message.
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
    core.String? threadKey,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
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
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the membership to be retrieved, in the
  /// form "spaces / * /members / * ". Example:
  /// spaces/AAAAMpdlehY/members/105115627578887013105
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
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the space for which membership
  /// list is to be fetched, in the form "spaces / * ". Example:
  /// spaces/AAAAMpdlehY
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
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Space resource name, in the form "spaces / * ".
  /// Example: spaces/AAAAMpdlehY
  /// Value must have pattern `^spaces/\[^/\]+$`.
  ///
  /// [threadKey] - Opaque thread identifier string that can be specified to
  /// group messages into a single thread. If this is the first message with a
  /// given thread identifier, a new thread is created. Subsequent messages with
  /// the same thread identifier will be posted into the same thread. This
  /// relieves bots and webhooks from having to store the Hangouts Chat thread
  /// ID of a thread (created earlier by them) to post further updates to it.
  /// Has no effect if thread field, corresponding to an existing thread, is set
  /// in message.
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
    core.String? threadKey,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
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
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the message to be deleted, in the form
  /// "spaces / * /messages / * " Example:
  /// spaces/AAAAMpdlehY/messages/UMxbHmzDlr4.UMxbHmzDlr4
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
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the message to be retrieved, in the
  /// form "spaces / * /messages / * ". Example:
  /// spaces/AAAAMpdlehY/messages/UMxbHmzDlr4.UMxbHmzDlr4
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
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^spaces/\[^/\]+/messages/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The field paths to be updated, comma separated if
  /// there are multiple. Currently supported field paths: * text * cards
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
    final _body = convert.json.encode(request.toJson());
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
  /// The attachment data is fetched using the media API.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the attachment, in the form "spaces / *
  /// /messages / * /attachments / * ".
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
class ActionParameter {
  /// The name of the parameter for the action script.
  core.String? key;

  /// The value of the parameter.
  core.String? value;

  ActionParameter({
    this.key,
    this.value,
  });

  ActionParameter.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// Parameters that a bot can use to configure how it's response is posted.
class ActionResponse {
  /// The type of bot response.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default type; will be handled as NEW_MESSAGE.
  /// - "NEW_MESSAGE" : Post as a new message in the topic.
  /// - "UPDATE_MESSAGE" : Update the bot's message. This is only permitted on a
  /// CARD_CLICKED event where the message sender type is BOT.
  /// - "REQUEST_CONFIG" : Update a message, with cards only. (Only after a
  /// MESSAGE event with a matched url, or a CARD_CLICKED event on a human
  /// created message).
  core.String? type;

  /// URL for users to auth or config.
  ///
  /// (Only for REQUEST_CONFIG response types.)
  core.String? url;

  ActionResponse({
    this.type,
    this.url,
  });

  ActionResponse.fromJson(core.Map _json)
      : this(
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
        if (url != null) 'url': url!,
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
        if (slashCommand != null) 'slashCommand': slashCommand!.toJson(),
        if (startIndex != null) 'startIndex': startIndex!,
        if (type != null) 'type': type!,
        if (userMention != null) 'userMention': userMention!.toJson(),
      };
}

/// An attachment in Hangouts Chat.
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
  /// Bots should not use this URL to download attachment content.
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
  /// Bots should not use this URL to download attachment content.
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
        if (attachmentDataRef != null)
          'attachmentDataRef': attachmentDataRef!.toJson(),
        if (contentName != null) 'contentName': contentName!,
        if (contentType != null) 'contentType': contentType!,
        if (downloadUri != null) 'downloadUri': downloadUri!,
        if (driveDataRef != null) 'driveDataRef': driveDataRef!.toJson(),
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
        if (imageButton != null) 'imageButton': imageButton!.toJson(),
        if (textButton != null) 'textButton': textButton!.toJson(),
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
                  .map<CardAction>((value) => CardAction.fromJson(
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
                  .map<Section>((value) => Section.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cardActions != null)
          'cardActions': cardActions!.map((value) => value.toJson()).toList(),
        if (header != null) 'header': header!.toJson(),
        if (name != null) 'name': name!,
        if (sections != null)
          'sections': sections!.map((value) => value.toJson()).toList(),
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
        if (onClick != null) 'onClick': onClick!.toJson(),
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

/// Widgets for chatbots to specify.
class CardWithId {
  /// Card proto that allows chatbots to specify UI elements and editable
  /// widgets.
  GoogleAppsCardV1Card? card;

  /// Chatbot-specified identifier for this widget.
  ///
  /// Scoped within a message.
  core.String? cardId;

  CardWithId({
    this.card,
    this.cardId,
  });

  CardWithId.fromJson(core.Map _json)
      : this(
          card: _json.containsKey('card')
              ? GoogleAppsCardV1Card.fromJson(
                  _json['card'] as core.Map<core.String, core.dynamic>)
              : null,
          cardId: _json.containsKey('cardId')
              ? _json['cardId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (card != null) 'card': card!.toJson(),
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
/// setGreen:green\]; \[result setBlue:blue\]; if (alpha <= 0.9999) { \[result
/// setAlpha:floatWrapperWithValue(alpha)\]; } \[result autorelease\]; return
/// result; } // ... Example (JavaScript): // ... var protoToCssColor =
/// function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac =
/// rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red =
/// Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue
/// = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return
/// rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value ||
/// 0.0; var rgbParams = \[red, green, blue\].join(','); return \['rgba(',
/// rgbParams, ',', alphaFrac, ')'\].join(''); }; var rgbToCssColor =
/// function(red, green, blue) { var rgbNumber = new Number((red << 16) | (green
/// << 8) | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6
/// - hexString.length; var resultBuilder = \['#'\]; for (var i = 0; i <
/// missingZeros; i++) { resultBuilder.push('0'); }
/// resultBuilder.push(hexString); return resultBuilder.join(''); }; // ...
class Color {
  /// The fraction of this color that should be applied to the pixel.
  ///
  /// That is, the final pixel color is defined by the equation: `pixel color =
  /// alpha * (this color) + (1.0 - alpha) * (background color)` This means that
  /// a value of 1.0 corresponds to a solid color, whereas a value of 0.0
  /// corresponds to a completely transparent color. This uses a wrapper message
  /// rather than a simple float scalar so that it is possible to distinguish
  /// between a default value and the value being unset. If omitted, this color
  /// object is rendered as a solid color (as if the alpha value had been
  /// explicitly given a value of 1.0).
  core.double? alpha;

  /// The amount of blue in the color as a value in the interval \[0, 1\].
  core.double? blue;

  /// The amount of green in the color as a value in the interval \[0, 1\].
  core.double? green;

  /// The amount of red in the color as a value in the interval \[0, 1\].
  core.double? red;

  Color({
    this.alpha,
    this.blue,
    this.green,
    this.red,
  });

  Color.fromJson(core.Map _json)
      : this(
          alpha: _json.containsKey('alpha')
              ? (_json['alpha'] as core.num).toDouble()
              : null,
          blue: _json.containsKey('blue')
              ? (_json['blue'] as core.num).toDouble()
              : null,
          green: _json.containsKey('green')
              ? (_json['green'] as core.num).toDouble()
              : null,
          red: _json.containsKey('red')
              ? (_json['red'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alpha != null) 'alpha': alpha!,
        if (blue != null) 'blue': blue!,
        if (green != null) 'green': green!,
        if (red != null) 'red': red!,
      };
}

/// Google Chat events.
class DeprecatedEvent {
  /// The form action data associated with an interactive card that was clicked.
  ///
  /// Only populated for CARD_CLICKED events. See the \[Interactive Cards
  /// guide\](/chat/how-tos/cards-onclick) for more information.
  FormAction? action;

  /// The URL the bot should redirect the user to after they have completed an
  /// authorization or configuration flow outside of Google Chat.
  ///
  /// See the \[Authorizing access to 3p services guide\](/chat/how-tos/auth-3p)
  /// for more information.
  core.String? configCompleteRedirectUrl;

  /// The timestamp indicating when the event was dispatched.
  core.String? eventTime;

  /// The message that triggered the event, if applicable.
  Message? message;

  /// The room or DM in which the event occurred.
  Space? space;

  /// The bot-defined key for the thread related to the event.
  ///
  /// See the thread_key field of the `spaces.message.create` request for more
  /// information.
  core.String? threadKey;

  /// A secret value that bots can use to verify if a request is from Google.
  ///
  /// The token is randomly generated by Google, remains static, and can be
  /// obtained from the Google Chat API configuration page in the Cloud Console.
  /// Developers can revoke/regenerate it if needed from the same page.
  core.String? token;

  /// The type of the event.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Default value for the enum. DO NOT USE.
  /// - "MESSAGE" : A message was sent in a room or direct message.
  /// - "ADDED_TO_SPACE" : The bot was added to a room or DM.
  /// - "REMOVED_FROM_SPACE" : The bot was removed from a room or DM.
  /// - "CARD_CLICKED" : The bot's interactive card was clicked.
  core.String? type;

  /// The user that triggered the event.
  User? user;

  DeprecatedEvent({
    this.action,
    this.configCompleteRedirectUrl,
    this.eventTime,
    this.message,
    this.space,
    this.threadKey,
    this.token,
    this.type,
    this.user,
  });

  DeprecatedEvent.fromJson(core.Map _json)
      : this(
          action: _json.containsKey('action')
              ? FormAction.fromJson(
                  _json['action'] as core.Map<core.String, core.dynamic>)
              : null,
          configCompleteRedirectUrl:
              _json.containsKey('configCompleteRedirectUrl')
                  ? _json['configCompleteRedirectUrl'] as core.String
                  : null,
          eventTime: _json.containsKey('eventTime')
              ? _json['eventTime'] as core.String
              : null,
          message: _json.containsKey('message')
              ? Message.fromJson(
                  _json['message'] as core.Map<core.String, core.dynamic>)
              : null,
          space: _json.containsKey('space')
              ? Space.fromJson(
                  _json['space'] as core.Map<core.String, core.dynamic>)
              : null,
          threadKey: _json.containsKey('threadKey')
              ? _json['threadKey'] as core.String
              : null,
          token:
              _json.containsKey('token') ? _json['token'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          user: _json.containsKey('user')
              ? User.fromJson(
                  _json['user'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!.toJson(),
        if (configCompleteRedirectUrl != null)
          'configCompleteRedirectUrl': configCompleteRedirectUrl!,
        if (eventTime != null) 'eventTime': eventTime!,
        if (message != null) 'message': message!.toJson(),
        if (space != null) 'space': space!.toJson(),
        if (threadKey != null) 'threadKey': threadKey!,
        if (token != null) 'token': token!,
        if (type != null) 'type': type!,
        if (user != null) 'user': user!.toJson(),
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
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// A form action describes the behavior when the form is submitted.
///
/// For example, an Apps Script can be invoked to handle the form.
class FormAction {
  /// The method name is used to identify which part of the form triggered the
  /// form submission.
  ///
  /// This information is echoed back to the bot as part of the card click
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
                  .map<ActionParameter>((value) => ActionParameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionMethodName != null) 'actionMethodName': actionMethodName!,
        if (parameters != null)
          'parameters': parameters!.map((value) => value.toJson()).toList(),
      };
}

/// An action that describes the behavior when the form is submitted.
///
/// For example, an Apps Script can be invoked to handle the form.
class GoogleAppsCardV1Action {
  /// Apps Script function to invoke when the containing element is
  /// clicked/activated.
  core.String? function;

  ///
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
                  .map<GoogleAppsCardV1ActionParameter>((value) =>
                      GoogleAppsCardV1ActionParameter.fromJson(
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
        if (parameters != null)
          'parameters': parameters!.map((value) => value.toJson()).toList(),
        if (persistValues != null) 'persistValues': persistValues!,
      };
}

/// List of string parameters to supply when the action method is invoked.
///
/// For example, consider three snooze buttons: snooze now, snooze 1 day, snooze
/// next week. You might use action method = snooze(), passing the snooze type
/// and snooze time in the list of string parameters.
class GoogleAppsCardV1ActionParameter {
  /// The name of the parameter for the action script.
  core.String? key;

  /// The value of the parameter.
  core.String? value;

  GoogleAppsCardV1ActionParameter({
    this.key,
    this.value,
  });

  GoogleAppsCardV1ActionParameter.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

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
        if (strokeColor != null) 'strokeColor': strokeColor!.toJson(),
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

  /// If true, the button is displayed in a disabled state and doesn't respond
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
        if (color != null) 'color': color!.toJson(),
        if (disabled != null) 'disabled': disabled!,
        if (icon != null) 'icon': icon!.toJson(),
        if (onClick != null) 'onClick': onClick!.toJson(),
        if (text != null) 'text': text!,
      };
}

/// A list of buttons layed out horizontally.
class GoogleAppsCardV1ButtonList {
  core.List<GoogleAppsCardV1Button>? buttons;

  GoogleAppsCardV1ButtonList({
    this.buttons,
  });

  GoogleAppsCardV1ButtonList.fromJson(core.Map _json)
      : this(
          buttons: _json.containsKey('buttons')
              ? (_json['buttons'] as core.List)
                  .map<GoogleAppsCardV1Button>((value) =>
                      GoogleAppsCardV1Button.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buttons != null)
          'buttons': buttons!.map((value) => value.toJson()).toList(),
      };
}

/// A card is a UI element that can contain UI widgets such as text and images.
///
/// For more information, see Cards . For example, the following JSON creates a
/// card that has a header with the name, position, icons, and link for a
/// contact, followed by a section with contact information like email and phone
/// number. ``` { "header": { "title": "Heba Salam", "subtitle": "Software
/// Engineer", "imageStyle": "ImageStyle.AVATAR", "imageUrl":
/// "https://example.com/heba_salam.png", "imageAltText": "Avatar for Heba
/// Salam" }, "sections" : [ { "header": "Contact Info", "widgets": [ {
/// "decorated_text": { "icon": { "knownIcon": "EMAIL" }, "content":
/// "heba.salam@example.com" } }, { "decoratedText": { "icon": { "knownIcon":
/// "PERSON" }, "content": "Online" } }, { "decoratedText": { "icon": {
/// "knownIcon": "PHONE" }, "content": "+1 (555) 555-1234" } }, { "buttons": [ {
/// "textButton": { "text": "Share", }, "onClick": { "openLink": { "url":
/// "https://example.com/share" } } }, { "textButton": { "text": "Edit", },
/// "onClick": { "action": { "function": "goToView", "parameters": [ { "key":
/// "viewType", "value": "EDIT" } ], "loadIndicator": "LoadIndicator.SPINNER" }
/// } } ] } ], "collapsible": true, "uncollapsibleWidgetsCount": 3 } ],
/// "cardActions": [ { "actionLabel": "Send Feedback", "onClick": { "openLink":
/// { "url": "https://example.com/feedback" } } } ], "name":
/// "contact-card-K3wB6arF2H9L" } ```
class GoogleAppsCardV1Card {
  /// The actions of this card.
  ///
  /// They are added to a card's generated toolbar menu. For example, the
  /// following JSON constructs a card action menu with Settings and Send
  /// Feedback options: ``` "card_actions": [ { "actionLabel": "Setting",
  /// "onClick": { "action": { "functionName": "goToView", "parameters": [ {
  /// "key": "viewType", "value": "SETTING" } ], "loadIndicator":
  /// "LoadIndicator.SPINNER" } } }, { "actionLabel": "Send Feedback",
  /// "onClick": { "openLink": { "url": "https://example.com/feedback" } } } ]
  /// ```
  core.List<GoogleAppsCardV1CardAction>? cardActions;

  /// The display style for peekCardHeader.
  /// Possible string values are:
  /// - "DISPLAY_STYLE_UNSPECIFIED"
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

  /// Name of the card, which is used as a identifier for the card in card
  /// navigation.
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
                  .map<GoogleAppsCardV1CardAction>((value) =>
                      GoogleAppsCardV1CardAction.fromJson(
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
                  .map<GoogleAppsCardV1Section>((value) =>
                      GoogleAppsCardV1Section.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cardActions != null)
          'cardActions': cardActions!.map((value) => value.toJson()).toList(),
        if (displayStyle != null) 'displayStyle': displayStyle!,
        if (fixedFooter != null) 'fixedFooter': fixedFooter!.toJson(),
        if (header != null) 'header': header!.toJson(),
        if (name != null) 'name': name!,
        if (peekCardHeader != null) 'peekCardHeader': peekCardHeader!.toJson(),
        if (sections != null)
          'sections': sections!.map((value) => value.toJson()).toList(),
      };
}

/// A card action is the action associated with the card.
///
/// For example, an invoice card might include actions such as delete invoice,
/// email invoice, or open the invoice in a browser.
class GoogleAppsCardV1CardAction {
  /// The label that displays as the action menu item.
  core.String? actionLabel;

  /// The onclick action for this action item.
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
        if (onClick != null) 'onClick': onClick!.toJson(),
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
        if (primaryButton != null) 'primaryButton': primaryButton!.toJson(),
        if (secondaryButton != null)
          'secondaryButton': secondaryButton!.toJson(),
      };
}

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
  /// The title must be specified. The header has a fixed height: if both a
  /// title and subtitle are specified, each takes up one line. If only the
  /// title is specified, it takes up both lines.
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
class GoogleAppsCardV1DateTimePicker {
  /// The label for the field that displays to the user.
  core.String? label;

  /// The name of the text input that's used in formInput, and uniquely
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
        if (onChangeAction != null) 'onChangeAction': onChangeAction!.toJson(),
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
        if (button != null) 'button': button!.toJson(),
        if (endIcon != null) 'endIcon': endIcon!.toJson(),
        if (icon != null) 'icon': icon!.toJson(),
        if (onClick != null) 'onClick': onClick!.toJson(),
        if (startIcon != null) 'startIcon': startIcon!.toJson(),
        if (switchControl != null) 'switchControl': switchControl!.toJson(),
        if (text != null) 'text': text!,
        if (topLabel != null) 'topLabel': topLabel!,
        if (wrapText != null) 'wrapText': wrapText!,
      };
}

/// A divider that appears in between widgets.
class GoogleAppsCardV1Divider {
  GoogleAppsCardV1Divider();

  GoogleAppsCardV1Divider.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

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
                  .map<GoogleAppsCardV1GridItem>((value) =>
                      GoogleAppsCardV1GridItem.fromJson(
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
        if (borderStyle != null) 'borderStyle': borderStyle!.toJson(),
        if (columnCount != null) 'columnCount': columnCount!,
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
        if (onClick != null) 'onClick': onClick!.toJson(),
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
        if (image != null) 'image': image!.toJson(),
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

  /// The icon specified by the string name of a list of known icons
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

/// An image that is specified by a URL and can have an onClick action.
class GoogleAppsCardV1Image {
  /// The alternative text of this image, used for accessibility.
  core.String? altText;

  /// An image URL.
  core.String? imageUrl;
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
        if (onClick != null) 'onClick': onClick!.toJson(),
      };
}

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
        if (borderStyle != null) 'borderStyle': borderStyle!.toJson(),
        if (cropStyle != null) 'cropStyle': cropStyle!.toJson(),
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

class GoogleAppsCardV1OnClick {
  /// If specified, an action is triggered by this onClick.
  GoogleAppsCardV1Action? action;

  /// A new card is pushed to the card stack after clicking if specified.
  GoogleAppsCardV1Card? card;

  /// An add-on triggers this action when the action needs to open a link.
  ///
  /// This differs from the open_link above in that this needs to talk to server
  /// to get the link. Thus some preparation work is required for web client to
  /// do before the open link action response comes back.
  GoogleAppsCardV1Action? openDynamicLinkAction;

  /// If specified, this onClick triggers an open link action.
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
        if (action != null) 'action': action!.toJson(),
        if (card != null) 'card': card!.toJson(),
        if (openDynamicLinkAction != null)
          'openDynamicLinkAction': openDynamicLinkAction!.toJson(),
        if (openLink != null) 'openLink': openLink!.toJson(),
      };
}

class GoogleAppsCardV1OpenLink {
  ///
  /// Possible string values are:
  /// - "NOTHING" : Doesn’t reload the card after the child window closes.
  /// Reloads the card after the child window closes. If used in conjunction
  /// with
  /// \[OpenAs.OVERLAY\](/workspace/add-ons/reference/rpc/google.apps.card.v1#openas),
  /// the child window acts as a modal dialog and the main card is blocked until
  /// the child window closes.
  /// - "RELOAD"
  core.String? onClose;

  ///
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
  /// `numUncollapsibleWidget` is set to `2`, the first two widgets are always
  /// shown and the last three are collapsed as default. The
  /// `numUncollapsibleWidget` is taken into account only when collapsible is
  /// set to `true`.
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
                  .map<GoogleAppsCardV1Widget>((value) =>
                      GoogleAppsCardV1Widget.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (collapsible != null) 'collapsible': collapsible!,
        if (header != null) 'header': header!,
        if (uncollapsibleWidgetsCount != null)
          'uncollapsibleWidgetsCount': uncollapsibleWidgetsCount!,
        if (widgets != null)
          'widgets': widgets!.map((value) => value.toJson()).toList(),
      };
}

/// A widget that creates a UI item (for example, a drop-down list) with options
/// for users to select.
class GoogleAppsCardV1SelectionInput {
  core.List<GoogleAppsCardV1SelectionItem>? items;

  /// The label displayed ahead of the switch control.
  core.String? label;

  /// The name of the text input which is used in formInput.
  core.String? name;

  /// If specified, the form is submitted when the selection changes.
  ///
  /// If not specified, you must specify a separate button.
  GoogleAppsCardV1Action? onChangeAction;

  ///
  /// Possible string values are:
  /// - "CHECK_BOX" : The selection type is a checkbox.
  /// - "RADIO_BUTTON" : The selection type is a radio button.
  /// - "SWITCH" : The selection type is a switch.
  /// - "DROPDOWN" : The selection type is a dropdown.
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
                  .map<GoogleAppsCardV1SelectionItem>((value) =>
                      GoogleAppsCardV1SelectionItem.fromJson(
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
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
        if (label != null) 'label': label!,
        if (name != null) 'name': name!,
        if (onChangeAction != null) 'onChangeAction': onChangeAction!.toJson(),
        if (type != null) 'type': type!,
      };
}

/// The item in the switch control.
///
/// A radio button, at most one of the items is selected.
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
///
/// Only supports text for now.
class GoogleAppsCardV1SuggestionItem {
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
  /// A list of suggestions items which will be used in are used in
  /// autocomplete.
  core.List<GoogleAppsCardV1SuggestionItem>? items;

  GoogleAppsCardV1Suggestions({
    this.items,
  });

  GoogleAppsCardV1Suggestions.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map<GoogleAppsCardV1SuggestionItem>((value) =>
                      GoogleAppsCardV1SuggestionItem.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
      };
}

class GoogleAppsCardV1SwitchControl {
  /// The control type, either switch or checkbox.
  /// Possible string values are:
  /// - "SWITCH"
  /// - "CHECKBOX" : Deprecated in favor of `CHECK_BOX`.
  /// - "CHECK_BOX"
  core.String? controlType;

  /// The name of the switch widget that's used in formInput.
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
        if (onChangeAction != null) 'onChangeAction': onChangeAction!.toJson(),
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

  /// The name of the text input which is used in formInput.
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
          'autoCompleteAction': autoCompleteAction!.toJson(),
        if (hintText != null) 'hintText': hintText!,
        if (initialSuggestions != null)
          'initialSuggestions': initialSuggestions!.toJson(),
        if (label != null) 'label': label!,
        if (name != null) 'name': name!,
        if (onChangeAction != null) 'onChangeAction': onChangeAction!.toJson(),
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
  /// "topLabel": "Email Address", "content": "heba.salam@example.com",
  /// "bottomLabel": "This is a new Email address!", "switchWidget": { "name":
  /// "has_send_welcome_email_to_heba_salam", "selected": false, "controlType":
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
  /// ``` "image": { "imageUrl": "https://example.com/heba_salam.png" "altText":
  /// "Avatar for Heba Salam" } ```
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
        if (buttonList != null) 'buttonList': buttonList!.toJson(),
        if (dateTimePicker != null) 'dateTimePicker': dateTimePicker!.toJson(),
        if (decoratedText != null) 'decoratedText': decoratedText!.toJson(),
        if (divider != null) 'divider': divider!.toJson(),
        if (grid != null) 'grid': grid!.toJson(),
        if (horizontalAlignment != null)
          'horizontalAlignment': horizontalAlignment!,
        if (image != null) 'image': image!.toJson(),
        if (selectionInput != null) 'selectionInput': selectionInput!.toJson(),
        if (textInput != null) 'textInput': textInput!.toJson(),
        if (textParagraph != null) 'textParagraph': textParagraph!.toJson(),
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
        if (onClick != null) 'onClick': onClick!.toJson(),
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
        if (onClick != null) 'onClick': onClick!.toJson(),
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
        if (button != null) 'button': button!.toJson(),
        if (content != null) 'content': content!,
        if (contentMultiline != null) 'contentMultiline': contentMultiline!,
        if (icon != null) 'icon': icon!,
        if (iconUrl != null) 'iconUrl': iconUrl!,
        if (onClick != null) 'onClick': onClick!.toJson(),
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
                  .map<Membership>((value) => Membership.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (memberships != null)
          'memberships': memberships!.map((value) => value.toJson()).toList(),
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
                  .map<Space>((value) => Space.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (spaces != null)
          'spaces': spaces!.map((value) => value.toJson()).toList(),
      };
}

/// Media resource.
class Media {
  /// Name of the media resource.
  core.String? resourceName;

  Media({
    this.resourceName,
  });

  Media.fromJson(core.Map _json)
      : this(
          resourceName: _json.containsKey('resourceName')
              ? _json['resourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceName != null) 'resourceName': resourceName!,
      };
}

/// Represents a membership relation in Hangouts Chat.
class Membership {
  /// The creation time of the membership a.k.a the time at which the member
  /// joined the space, if applicable.
  core.String? createTime;

  /// A User in Hangout Chat
  User? member;
  core.String? name;

  /// State of the membership.
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
        if (member != null) 'member': member!.toJson(),
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
      };
}

/// A message in Hangouts Chat.
class Message {
  /// Input only.
  ///
  /// Parameters that a bot can use to configure how its response is posted.
  ActionResponse? actionResponse;

  /// Annotations associated with the text in this message.
  ///
  /// Output only.
  core.List<Annotation>? annotations;

  /// Plain-text body of the message with all bot mentions stripped out.
  core.String? argumentText;

  /// User uploaded attachment.
  core.List<Attachment>? attachment;

  /// Rich, formatted and interactive cards that can be used to display UI
  /// elements such as: formatted texts, buttons, clickable images.
  ///
  /// Cards are normally displayed below the plain-text body of the message.
  core.List<Card>? cards;

  /// Rich, formatted and interactive cards that can be used to display UI
  /// elements and editable widgets, such as: formatted text, buttons, clickable
  /// images, checkboxes, radio buttons.
  ///
  /// Cards are normally displayed below the plain-text body of the message.
  /// This v2 allows input widgets. The string key is a unique identifier among
  /// cards in the same message for identifying inputs.
  core.List<CardWithId>? cardsV2;

  /// The time at which the message was created in Hangouts Chat server.
  ///
  /// Output only.
  core.String? createTime;

  /// A plain-text description of the message's cards, used when the actual
  /// cards cannot be displayed (e.g. mobile notifications).
  core.String? fallbackText;
  core.String? name;

  /// Text for generating preview chips.
  ///
  /// This text will not be displayed to the user, but any links to images, web
  /// pages, videos, etc. included here will generate preview chips.
  core.String? previewText;

  /// The user who created the message.
  User? sender;

  /// Slash command information, if applicable.
  SlashCommand? slashCommand;

  /// The space the message belongs to.
  Space? space;

  /// Plain-text body of the message.
  core.String? text;

  /// The thread the message belongs to.
  Thread? thread;

  Message({
    this.actionResponse,
    this.annotations,
    this.argumentText,
    this.attachment,
    this.cards,
    this.cardsV2,
    this.createTime,
    this.fallbackText,
    this.name,
    this.previewText,
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
                  .map<Annotation>((value) => Annotation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          argumentText: _json.containsKey('argumentText')
              ? _json['argumentText'] as core.String
              : null,
          attachment: _json.containsKey('attachment')
              ? (_json['attachment'] as core.List)
                  .map<Attachment>((value) => Attachment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          cards: _json.containsKey('cards')
              ? (_json['cards'] as core.List)
                  .map<Card>((value) => Card.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          cardsV2: _json.containsKey('cardsV2')
              ? (_json['cardsV2'] as core.List)
                  .map<CardWithId>((value) => CardWithId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          fallbackText: _json.containsKey('fallbackText')
              ? _json['fallbackText'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          previewText: _json.containsKey('previewText')
              ? _json['previewText'] as core.String
              : null,
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
        if (actionResponse != null) 'actionResponse': actionResponse!.toJson(),
        if (annotations != null)
          'annotations': annotations!.map((value) => value.toJson()).toList(),
        if (argumentText != null) 'argumentText': argumentText!,
        if (attachment != null)
          'attachment': attachment!.map((value) => value.toJson()).toList(),
        if (cards != null)
          'cards': cards!.map((value) => value.toJson()).toList(),
        if (cardsV2 != null)
          'cardsV2': cardsV2!.map((value) => value.toJson()).toList(),
        if (createTime != null) 'createTime': createTime!,
        if (fallbackText != null) 'fallbackText': fallbackText!,
        if (name != null) 'name': name!,
        if (previewText != null) 'previewText': previewText!,
        if (sender != null) 'sender': sender!.toJson(),
        if (slashCommand != null) 'slashCommand': slashCommand!.toJson(),
        if (space != null) 'space': space!.toJson(),
        if (text != null) 'text': text!,
        if (thread != null) 'thread': thread!.toJson(),
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
        if (action != null) 'action': action!.toJson(),
        if (openLink != null) 'openLink': openLink!.toJson(),
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
                  .map<WidgetMarkup>((value) => WidgetMarkup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (header != null) 'header': header!,
        if (widgets != null)
          'widgets': widgets!.map((value) => value.toJson()).toList(),
      };
}

/// A Slash Command in Chat.
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
  /// The bot whose command was invoked.
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
  /// - "ADD" : Add bot to space.
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
        if (bot != null) 'bot': bot!.toJson(),
        if (commandId != null) 'commandId': commandId!,
        if (commandName != null) 'commandName': commandName!,
        if (triggersDialog != null) 'triggersDialog': triggersDialog!,
        if (type != null) 'type': type!,
      };
}

/// A room or DM in Hangouts Chat.
class Space {
  /// The display name (only if the space is a room).
  ///
  /// Please note that this field might not be populated in direct messages
  /// between humans.
  ///
  /// Output only.
  core.String? displayName;

  /// Resource name of the space, in the form "spaces / * ".
  ///
  /// Example: spaces/AAAAMpdlehYs
  core.String? name;

  /// Whether the space is a DM between a bot and a single human.
  core.bool? singleUserBotDm;

  /// Whether the messages are threaded in this space.
  core.bool? threaded;

  /// The type of a space.
  ///
  /// This is deprecated. Use `single_user_bot_dm` instead.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED"
  /// - "ROOM" : Multi-user spaces such as rooms and DMs between humans.
  /// - "DM" : 1:1 Direct Message between a human and a bot, where all messages
  /// are flat.
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
        if (onClick != null) 'onClick': onClick!.toJson(),
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

/// A thread in Hangouts Chat.
class Thread {
  /// Resource name, in the form "spaces / * /threads / * ".
  ///
  /// Example: spaces/AAAAMpdlehY/threads/UMxbHmzDlr4
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
  core.String? displayName;

  /// Obfuscated domain information.
  core.String? domainId;

  /// True when the user is deleted or the user's profile is not visible.
  core.bool? isAnonymous;

  /// Resource name, in the format "users / * ".
  core.String? name;

  /// User type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value for the enum. DO NOT USE.
  /// - "HUMAN" : Human user.
  /// - "BOT" : Bot user.
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
        if (user != null) 'user': user!.toJson(),
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
                  .map<Button>((value) => Button.fromJson(
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
        if (buttons != null)
          'buttons': buttons!.map((value) => value.toJson()).toList(),
        if (image != null) 'image': image!.toJson(),
        if (keyValue != null) 'keyValue': keyValue!.toJson(),
        if (textParagraph != null) 'textParagraph': textParagraph!.toJson(),
      };
}
