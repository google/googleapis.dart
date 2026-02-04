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

/// Google Workspace Events API - v1
///
/// The Google Workspace Events API lets you subscribe to events and manage
/// change notifications across Google Workspace applications.
///
/// For more information, see <https://developers.google.com/workspace/events>
///
/// Create an instance of [WorkspaceEventsApi] to access these resources:
///
/// - [MessageResource]
/// - [OperationsResource]
/// - [SubscriptionsResource]
/// - [TasksResource]
///   - [TasksPushNotificationConfigsResource]
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

/// The Google Workspace Events API lets you subscribe to events and manage
/// change notifications across Google Workspace applications.
class WorkspaceEventsApi {
  /// On their own behalf, apps in Google Chat can see, add, update, and remove
  /// members from conversations and spaces
  static const chatAppMembershipsScope =
      'https://www.googleapis.com/auth/chat.app.memberships';

  /// On their own behalf, apps in Google Chat can see all messages and their
  /// associated reactions and message content
  static const chatAppMessagesReadonlyScope =
      'https://www.googleapis.com/auth/chat.app.messages.readonly';

  /// On their own behalf, apps in Google Chat can create conversations and
  /// spaces and see or update their metadata (including history settings and
  /// access settings)
  static const chatAppSpacesScope =
      'https://www.googleapis.com/auth/chat.app.spaces';

  /// Private Service: https://www.googleapis.com/auth/chat.bot
  static const chatBotScope = 'https://www.googleapis.com/auth/chat.bot';

  /// See, add, update, and remove members from conversations and spaces in
  /// Google Chat
  static const chatMembershipsScope =
      'https://www.googleapis.com/auth/chat.memberships';

  /// View members in Google Chat conversations.
  static const chatMembershipsReadonlyScope =
      'https://www.googleapis.com/auth/chat.memberships.readonly';

  /// See, compose, send, update, and delete messages as well as their message
  /// content; add, see, and delete reactions to messages.
  static const chatMessagesScope =
      'https://www.googleapis.com/auth/chat.messages';

  /// See, add, and delete reactions as well as their reaction content to
  /// messages in Google Chat
  static const chatMessagesReactionsScope =
      'https://www.googleapis.com/auth/chat.messages.reactions';

  /// View reactions as well as their reaction content to messages in Google
  /// Chat
  static const chatMessagesReactionsReadonlyScope =
      'https://www.googleapis.com/auth/chat.messages.reactions.readonly';

  /// See messages as well as their reactions and message content in Google Chat
  static const chatMessagesReadonlyScope =
      'https://www.googleapis.com/auth/chat.messages.readonly';

  /// Create conversations and spaces and see or update metadata (including
  /// history settings and access settings) in Google Chat
  static const chatSpacesScope = 'https://www.googleapis.com/auth/chat.spaces';

  /// View chat and spaces in Google Chat
  static const chatSpacesReadonlyScope =
      'https://www.googleapis.com/auth/chat.spaces.readonly';

  /// See, edit, create, and delete all of your Google Drive files
  static const driveScope = 'https://www.googleapis.com/auth/drive';

  /// See, edit, create, and delete only the specific Google Drive files you use
  /// with this app
  static const driveFileScope = 'https://www.googleapis.com/auth/drive.file';

  /// View and manage metadata of files in your Google Drive
  static const driveMetadataScope =
      'https://www.googleapis.com/auth/drive.metadata';

  /// See information about your Google Drive files
  static const driveMetadataReadonlyScope =
      'https://www.googleapis.com/auth/drive.metadata.readonly';

  /// See and download all your Google Drive files
  static const driveReadonlyScope =
      'https://www.googleapis.com/auth/drive.readonly';

  /// Create, edit, and see information about your Google Meet conferences
  /// created by the app.
  static const meetingsSpaceCreatedScope =
      'https://www.googleapis.com/auth/meetings.space.created';

  /// Read information about any of your Google Meet conferences
  static const meetingsSpaceReadonlyScope =
      'https://www.googleapis.com/auth/meetings.space.readonly';

  final commons.ApiRequester _requester;

  MessageResource get message => MessageResource(_requester);
  OperationsResource get operations => OperationsResource(_requester);
  SubscriptionsResource get subscriptions => SubscriptionsResource(_requester);
  TasksResource get tasks => TasksResource(_requester);

  WorkspaceEventsApi(
    http.Client client, {
    core.String rootUrl = 'https://workspaceevents.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class MessageResource {
  final commons.ApiRequester _requester;

  MessageResource(commons.ApiRequester client) : _requester = client;

  /// SendStreamingMessage is a streaming call that will return a stream of task
  /// update events until the Task is in an interrupted or terminal state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StreamResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StreamResponse> stream(
    SendMessageRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/message:stream';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return StreamResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^operations/.*$`.
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
  async.Future<Operation> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class SubscriptionsResource {
  final commons.ApiRequester _requester;

  SubscriptionsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a Google Workspace subscription.
  ///
  /// To learn how to use this method, see
  /// [Create a Google Workspace subscription](https://developers.google.com/workspace/events/guides/create-subscription).
  /// For a subscription on a
  /// [Chat target resource](https://developers.google.com/workspace/events/guides/events-chat),
  /// you can create a subscription as: - A Chat app by specifying an
  /// authorization scope that begins with `chat.app` and getting one-time
  /// administrator approval
  /// ([Developer Preview](https://developers.google.com/workspace/preview)). To
  /// learn more, see
  /// [Authorize as a Chat app with administrator approval](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app).
  /// - A user by specifying an authorization scope that doesn't include `app`
  /// in its name. To learn more, see
  /// [Authorize as a Chat user](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [validateOnly] - Optional. If set to `true`, validates and previews the
  /// request, but doesn't create the subscription.
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
    Subscription request, {
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/subscriptions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Google Workspace subscription.
  ///
  /// To learn how to use this method, see
  /// [Delete a Google Workspace subscription](https://developers.google.com/workspace/events/guides/delete-subscription).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the subscription to delete. Format:
  /// `subscriptions/{subscription}`
  /// Value must have pattern `^subscriptions/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to `true` and the subscription isn't
  /// found, the request succeeds but doesn't delete the subscription.
  ///
  /// [etag] - Optional. Etag of the subscription. If present, it must match
  /// with the server's etag. Otherwise, request fails with the status
  /// `ABORTED`.
  ///
  /// [validateOnly] - Optional. If set to `true`, validates and previews the
  /// request, but doesn't delete the subscription.
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
  async.Future<Operation> delete(
    core.String name, {
    core.bool? allowMissing,
    core.String? etag,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'allowMissing': ?allowMissing == null ? null : ['${allowMissing}'],
      'etag': ?etag == null ? null : [etag],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details about a Google Workspace subscription.
  ///
  /// To learn how to use this method, see
  /// [Get details about a Google Workspace subscription](https://developers.google.com/workspace/events/guides/get-subscription).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the subscription. Format:
  /// `subscriptions/{subscription}`
  /// Value must have pattern `^subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Subscription.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Google Workspace subscriptions.
  ///
  /// To learn how to use this method, see
  /// [List Google Workspace subscriptions](https://developers.google.com/workspace/events/guides/list-subscriptions).
  ///
  /// Request parameters:
  ///
  /// [filter] - Required. A query filter. You can filter subscriptions by event
  /// type (`event_types`) and target resource (`target_resource`). You must
  /// specify at least one event type in your query. To filter for multiple
  /// event types, use the `OR` operator. To filter by both event type and
  /// target resource, use the `AND` operator and specify the full resource
  /// name, such as `//chat.googleapis.com/spaces/{space}`. For example, the
  /// following queries are valid: ```
  /// event_types:"google.workspace.chat.membership.v1.updated" OR
  /// event_types:"google.workspace.chat.message.v1.created"
  /// event_types:"google.workspace.chat.message.v1.created" AND
  /// target_resource="//chat.googleapis.com/spaces/{space}" (
  /// event_types:"google.workspace.chat.membership.v1.updated" OR
  /// event_types:"google.workspace.chat.message.v1.created" ) AND
  /// target_resource="//chat.googleapis.com/spaces/{space}" ``` The server
  /// rejects invalid queries with an `INVALID_ARGUMENT` error.
  ///
  /// [pageSize] - Optional. The maximum number of subscriptions to return. The
  /// service might return fewer than this value. If unspecified or set to `0`,
  /// up to 50 subscriptions are returned. The maximum value is 100. If you
  /// specify a value more than 100, the system only returns 100 subscriptions.
  ///
  /// [pageToken] - Optional. A page token, received from a previous list
  /// subscriptions call. Provide this parameter to retrieve the subsequent
  /// page. When paginating, the filter value should match the call that
  /// provided the page token. Passing a different value might lead to
  /// unexpected results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSubscriptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSubscriptionsResponse> list({
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/subscriptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSubscriptionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates or renews a Google Workspace subscription.
  ///
  /// To learn how to use this method, see
  /// [Update or renew a Google Workspace subscription](https://developers.google.com/workspace/events/guides/update-subscription).
  /// For a subscription on a
  /// [Chat target resource](https://developers.google.com/workspace/events/guides/events-chat),
  /// you can update a subscription as: - A Chat app by specifying an
  /// authorization scope that begins with `chat.app` andgetting one-time
  /// administrator approval
  /// ([Developer Preview](https://developers.google.com/workspace/preview)). To
  /// learn more, see
  /// [Authorize as a Chat app with administrator approval](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app).
  /// - A user by specifying an authorization scope that doesn't include `app`
  /// in its name. To learn more, see
  /// [Authorize as a Chat user](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Resource name of the subscription. Format:
  /// `subscriptions/{subscription}`
  /// Value must have pattern `^subscriptions/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The field to update. If omitted, updates any
  /// fields included in the request. You can update one of the following fields
  /// in a subscription: * `expire_time`: The timestamp when the subscription
  /// expires. * `ttl`: The time-to-live (TTL) or duration of the subscription.
  /// * `event_types`: The list of event types to receive about the target
  /// resource. When using the `*` wildcard (equivalent to `PUT`), omitted
  /// fields are set to empty values and rejected if they're invalid.
  ///
  /// [validateOnly] - Optional. If set to `true`, validates and previews the
  /// request, but doesn't update the subscription.
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
  async.Future<Operation> patch(
    Subscription request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Reactivates a suspended Google Workspace subscription.
  ///
  /// This method resets your subscription's `State` field to `ACTIVE`. Before
  /// you use this method, you must fix the error that suspended the
  /// subscription. This method will ignore or reject any subscription that
  /// isn't currently in a suspended state. To learn how to use this method, see
  /// [Reactivate a Google Workspace subscription](https://developers.google.com/workspace/events/guides/reactivate-subscription).
  /// For a subscription on a
  /// [Chat target resource](https://developers.google.com/workspace/events/guides/events-chat),
  /// you can reactivate a subscription as: - A Chat app by specifying an
  /// authorization scope that begins with `chat.app` andgetting one-time
  /// administrator approval
  /// ([Developer Preview](https://developers.google.com/workspace/preview)). To
  /// learn more, see
  /// [Authorize as a Chat app with administrator approval](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app).
  /// - A user by specifying an authorization scope that doesn't include `app`
  /// in its name. To learn more, see
  /// [Authorize as a Chat user](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the subscription. Format:
  /// `subscriptions/{subscription}`
  /// Value must have pattern `^subscriptions/\[^/\]+$`.
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
  async.Future<Operation> reactivate(
    ReactivateSubscriptionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':reactivate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class TasksResource {
  final commons.ApiRequester _requester;

  TasksPushNotificationConfigsResource get pushNotificationConfigs =>
      TasksPushNotificationConfigsResource(_requester);

  TasksResource(commons.ApiRequester client) : _requester = client;

  /// Cancel a task from the agent.
  ///
  /// If supported one should expect no more task updates for the task.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the task to cancel. Format: tasks/{task_id}
  /// Value must have pattern `^tasks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Task].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Task> cancel(
    CancelTaskRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Task.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get the current state of a task from the agent.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the task. Format: tasks/{task_id}
  /// Value must have pattern `^tasks/\[^/\]+$`.
  ///
  /// [historyLength] - The number of most recent messages from the task's
  /// history to retrieve.
  ///
  /// [tenant] - Optional tenant, provided as a path parameter. Experimental,
  /// might still change for 1.0 release.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Task].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Task> get(
    core.String name, {
    core.int? historyLength,
    core.String? tenant,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'historyLength': ?historyLength == null ? null : ['${historyLength}'],
      'tenant': ?tenant == null ? null : [tenant],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Task.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// TaskSubscription is a streaming call that will return a stream of task
  /// update events.
  ///
  /// This attaches the stream to an existing in process task. If the task is
  /// complete the stream will return the completed task (like GetTask) and
  /// close the stream.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the task to subscribe to. Format:
  /// tasks/{task_id}
  /// Value must have pattern `^tasks/\[^/\]+$`.
  ///
  /// [tenant] - Optional tenant, provided as a path parameter. Experimental,
  /// might still change for 1.0 release.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StreamResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StreamResponse> subscribe(
    core.String name, {
    core.String? tenant,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'tenant': ?tenant == null ? null : [tenant],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':subscribe';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return StreamResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class TasksPushNotificationConfigsResource {
  final commons.ApiRequester _requester;

  TasksPushNotificationConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// Set a push notification config for a task.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent task resource for this config. Format:
  /// tasks/{task_id}
  /// Value must have pattern `^tasks/\[^/\]+/pushNotificationConfigs$`.
  ///
  /// [configId] - Required. The ID for the new config.
  ///
  /// [tenant] - Optional tenant, provided as a path parameter. Experimental,
  /// might still change for 1.0 release.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TaskPushNotificationConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TaskPushNotificationConfig> create(
    TaskPushNotificationConfig request,
    core.String parent, {
    core.String? configId,
    core.String? tenant,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'configId': ?configId == null ? null : [configId],
      'tenant': ?tenant == null ? null : [tenant],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent');

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TaskPushNotificationConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete a push notification config for a task.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config to delete. Format:
  /// tasks/{task_id}/pushNotificationConfigs/{config_id}
  /// Value must have pattern `^tasks/\[^/\]+/pushNotificationConfigs/\[^/\]+$`.
  ///
  /// [tenant] - Optional tenant, provided as a path parameter. Experimental,
  /// might still change for 1.0 release.
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
    core.String? tenant,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'tenant': ?tenant == null ? null : [tenant],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get a push notification config for a task.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config to retrieve. Format:
  /// tasks/{task_id}/pushNotificationConfigs/{config_id}
  /// Value must have pattern `^tasks/\[^/\]+/pushNotificationConfigs/\[^/\]+$`.
  ///
  /// [tenant] - Optional tenant, provided as a path parameter. Experimental,
  /// might still change for 1.0 release.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TaskPushNotificationConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TaskPushNotificationConfig> get(
    core.String name, {
    core.String? tenant,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'tenant': ?tenant == null ? null : [tenant],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TaskPushNotificationConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get a list of push notifications configured for a task.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent task resource. Format: tasks/{task_id}
  /// Value must have pattern `^tasks/\[^/\]+$`.
  ///
  /// [pageSize] - For AIP-158 these fields are present. Usually not
  /// used/needed. The maximum number of configurations to return. If
  /// unspecified, all configs will be returned.
  ///
  /// [pageToken] - A page token received from a previous
  /// ListTaskPushNotificationConfigRequest call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListTaskPushNotificationConfigRequest` must match the call that provided
  /// the page token.
  ///
  /// [tenant] - Optional tenant, provided as a path parameter. Experimental,
  /// might still change for 1.0 release.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTaskPushNotificationConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTaskPushNotificationConfigResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? tenant,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'tenant': ?tenant == null ? null : [tenant],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/pushNotificationConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTaskPushNotificationConfigResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Artifacts are the container for task completed results.
///
/// These are similar to Messages but are intended to be the product of a task,
/// as opposed to point-to-point communication.
class Artifact {
  /// Unique identifier (e.g. UUID) for the artifact.
  ///
  /// It must be at least unique within a task.
  core.String? artifactId;

  /// A human readable description of the artifact, optional.
  core.String? description;

  /// The URIs of extensions that are present or contributed to this Artifact.
  core.List<core.String>? extensions;

  /// Optional metadata included with the artifact.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// A human readable name for the artifact.
  core.String? name;

  /// The content of the artifact.
  core.List<Part>? parts;

  Artifact({
    this.artifactId,
    this.description,
    this.extensions,
    this.metadata,
    this.name,
    this.parts,
  });

  Artifact.fromJson(core.Map json_)
    : this(
        artifactId: json_['artifactId'] as core.String?,
        description: json_['description'] as core.String?,
        extensions: (json_['extensions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        name: json_['name'] as core.String?,
        parts: (json_['parts'] as core.List?)
            ?.map(
              (value) =>
                  Part.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final artifactId = this.artifactId;
    final description = this.description;
    final extensions = this.extensions;
    final metadata = this.metadata;
    final name = this.name;
    final parts = this.parts;
    return {
      'artifactId': ?artifactId,
      'description': ?description,
      'extensions': ?extensions,
      'metadata': ?metadata,
      'name': ?name,
      'parts': ?parts,
    };
  }
}

/// Defines authentication details, used for push notifications.
class AuthenticationInfo {
  /// Optional credentials
  core.String? credentials;

  /// Supported authentication schemes - e.g. Basic, Bearer, etc
  core.List<core.String>? schemes;

  AuthenticationInfo({this.credentials, this.schemes});

  AuthenticationInfo.fromJson(core.Map json_)
    : this(
        credentials: json_['credentials'] as core.String?,
        schemes: (json_['schemes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final credentials = this.credentials;
    final schemes = this.schemes;
    return {'credentials': ?credentials, 'schemes': ?schemes};
  }
}

class CancelTaskRequest {
  /// Optional tenant, provided as a path parameter.
  ///
  /// Experimental, might still change for 1.0 release.
  core.String? tenant;

  CancelTaskRequest({this.tenant});

  CancelTaskRequest.fromJson(core.Map json_)
    : this(tenant: json_['tenant'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final tenant = this.tenant;
    return {'tenant': ?tenant};
  }
}

/// DataPart represents a structured blob.
///
/// This is most commonly a JSON payload.
class DataPart {
  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? data;

  DataPart({this.data});

  DataPart.fromJson(core.Map json_)
    : this(
        data: json_.containsKey('data')
            ? json_['data'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final data = this.data;
    return {'data': ?data};
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// FilePart represents the different ways files can be provided.
///
/// If files are small, directly feeding the bytes is supported via
/// file_with_bytes. If the file is large, the agent should read the content as
/// appropriate directly from the file_with_uri source.
class FilePart {
  core.String? fileWithBytes;
  core.List<core.int> get fileWithBytesAsBytes =>
      convert.base64.decode(fileWithBytes!);

  set fileWithBytesAsBytes(core.List<core.int> bytes_) {
    fileWithBytes = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  core.String? fileWithUri;
  core.String? mimeType;
  core.String? name;

  FilePart({this.fileWithBytes, this.fileWithUri, this.mimeType, this.name});

  FilePart.fromJson(core.Map json_)
    : this(
        fileWithBytes: json_['fileWithBytes'] as core.String?,
        fileWithUri: json_['fileWithUri'] as core.String?,
        mimeType: json_['mimeType'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fileWithBytes = this.fileWithBytes;
    final fileWithUri = this.fileWithUri;
    final mimeType = this.mimeType;
    final name = this.name;
    return {
      'fileWithBytes': ?fileWithBytes,
      'fileWithUri': ?fileWithUri,
      'mimeType': ?mimeType,
      'name': ?name,
    };
  }
}

/// The response message for SubscriptionsService.ListSubscriptions.
class ListSubscriptionsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of subscriptions.
  core.List<Subscription>? subscriptions;

  ListSubscriptionsResponse({this.nextPageToken, this.subscriptions});

  ListSubscriptionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        subscriptions: (json_['subscriptions'] as core.List?)
            ?.map(
              (value) => Subscription.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final subscriptions = this.subscriptions;
    return {'nextPageToken': ?nextPageToken, 'subscriptions': ?subscriptions};
  }
}

class ListTaskPushNotificationConfigResponse {
  /// The list of push notification configurations.
  core.List<TaskPushNotificationConfig>? configs;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListTaskPushNotificationConfigResponse({this.configs, this.nextPageToken});

  ListTaskPushNotificationConfigResponse.fromJson(core.Map json_)
    : this(
        configs: (json_['configs'] as core.List?)
            ?.map(
              (value) => TaskPushNotificationConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final configs = this.configs;
    final nextPageToken = this.nextPageToken;
    return {'configs': ?configs, 'nextPageToken': ?nextPageToken};
  }
}

/// Message is one unit of communication between client and server.
///
/// It is associated with a context and optionally a task. Since the server is
/// responsible for the context definition, it must always provide a context_id
/// in its messages. The client can optionally provide the context_id if it
/// knows the context to associate the message to. Similarly for task_id, except
/// the server decides if a task is created and whether to include the task_id.
class Message {
  /// protolint:disable REPEATED_FIELD_NAMES_PLURALIZED Content is the container
  /// of the message content.
  core.List<Part>? content;

  /// The context id of the message.
  ///
  /// This is optional and if set, the message will be associated with the given
  /// context.
  core.String? contextId;

  /// The URIs of extensions that are present or contributed to this Message.
  core.List<core.String>? extensions;

  /// The unique identifier (e.g. UUID)of the message.
  ///
  /// This is required and created by the message creator.
  core.String? messageId;

  /// protolint:enable REPEATED_FIELD_NAMES_PLURALIZED Any optional metadata to
  /// provide along with the message.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// A role for the message.
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED"
  /// - "ROLE_USER" : USER role refers to communication from the client to the
  /// server.
  /// - "ROLE_AGENT" : AGENT role refers to communication from the server to the
  /// client.
  core.String? role;

  /// The task id of the message.
  ///
  /// This is optional and if set, the message will be associated with the given
  /// task.
  core.String? taskId;

  Message({
    this.content,
    this.contextId,
    this.extensions,
    this.messageId,
    this.metadata,
    this.role,
    this.taskId,
  });

  Message.fromJson(core.Map json_)
    : this(
        content: (json_['content'] as core.List?)
            ?.map(
              (value) =>
                  Part.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        contextId: json_['contextId'] as core.String?,
        extensions: (json_['extensions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        messageId: json_['messageId'] as core.String?,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        role: json_['role'] as core.String?,
        taskId: json_['taskId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final contextId = this.contextId;
    final extensions = this.extensions;
    final messageId = this.messageId;
    final metadata = this.metadata;
    final role = this.role;
    final taskId = this.taskId;
    return {
      'content': ?content,
      'contextId': ?contextId,
      'extensions': ?extensions,
      'messageId': ?messageId,
      'metadata': ?metadata,
      'role': ?role,
      'taskId': ?taskId,
    };
  }
}

/// The endpoint where the subscription delivers events.
class NotificationEndpoint {
  /// The Pub/Sub topic that receives events for the subscription.
  ///
  /// Format: `projects/{project}/topics/{topic}` You must create the topic in
  /// the same Google Cloud project where you create this subscription. Note:
  /// The Google Workspace Events API uses
  /// [ordering keys](https://cloud.google.com/pubsub/docs/ordering) for the
  /// benefit of sequential events. If the Cloud Pub/Sub topic has a
  /// [message storage policy](https://cloud.google.com/pubsub/docs/resource-location-restriction#exceptions)
  /// configured to exclude the nearest Google Cloud region, publishing events
  /// with ordering keys will fail. When the topic receives events, the events
  /// are encoded as Pub/Sub messages. For details, see the
  /// [Google Cloud Pub/Sub Protocol Binding for CloudEvents](https://github.com/googleapis/google-cloudevents/blob/main/docs/spec/pubsub.md).
  ///
  /// Immutable.
  core.String? pubsubTopic;

  NotificationEndpoint({this.pubsubTopic});

  NotificationEndpoint.fromJson(core.Map json_)
    : this(pubsubTopic: json_['pubsubTopic'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final pubsubTopic = this.pubsubTopic;
    return {'pubsubTopic': ?pubsubTopic};
  }
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

  /// The normal, successful response of the operation.
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

  Operation({this.done, this.error, this.metadata, this.name, this.response});

  Operation.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        error: json_.containsKey('error')
            ? Status.fromJson(
                json_['error'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        name: json_['name'] as core.String?,
        response: json_.containsKey('response')
            ? json_['response'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final done = this.done;
    final error = this.error;
    final metadata = this.metadata;
    final name = this.name;
    final response = this.response;
    return {
      'done': ?done,
      'error': ?error,
      'metadata': ?metadata,
      'name': ?name,
      'response': ?response,
    };
  }
}

/// Part represents a container for a section of communication content.
///
/// Parts can be purely textual, some sort of file (image, video, etc) or a
/// structured data blob (i.e. JSON).
class Part {
  DataPart? data;
  FilePart? file;

  /// Optional metadata associated with this part.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;
  core.String? text;

  Part({this.data, this.file, this.metadata, this.text});

  Part.fromJson(core.Map json_)
    : this(
        data: json_.containsKey('data')
            ? DataPart.fromJson(
                json_['data'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        file: json_.containsKey('file')
            ? FilePart.fromJson(
                json_['file'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final data = this.data;
    final file = this.file;
    final metadata = this.metadata;
    final text = this.text;
    return {'data': ?data, 'file': ?file, 'metadata': ?metadata, 'text': ?text};
  }
}

/// Options about what data to include in the event payload.
///
/// Only supported for Google Chat and Google Drive events.
class PayloadOptions {
  /// If `include_resource` is set to `true`, the list of fields to include in
  /// the event payload.
  ///
  /// Separate fields with a comma. For example, to include a Google Chat
  /// message's sender and create time, enter
  /// `message.sender,message.createTime`. If omitted, the payload includes all
  /// fields for the resource. If you specify a field that doesn't exist for the
  /// resource, the system ignores the field.
  ///
  /// Optional.
  core.String? fieldMask;

  /// Whether the event payload includes data about the resource that changed.
  ///
  /// For example, for an event where a Google Chat message was created, whether
  /// the payload contains data about the
  /// \[`Message`\](https://developers.google.com/chat/api/reference/rest/v1/spaces.messages)
  /// resource. If false, the event payload only includes the name of the
  /// changed resource.
  ///
  /// Optional.
  core.bool? includeResource;

  PayloadOptions({this.fieldMask, this.includeResource});

  PayloadOptions.fromJson(core.Map json_)
    : this(
        fieldMask: json_['fieldMask'] as core.String?,
        includeResource: json_['includeResource'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fieldMask = this.fieldMask;
    final includeResource = this.includeResource;
    return {'fieldMask': ?fieldMask, 'includeResource': ?includeResource};
  }
}

/// Configuration for setting up push notifications for task updates.
class PushNotificationConfig {
  /// Information about the authentication to sent with the notification
  AuthenticationInfo? authentication;

  /// A unique identifier (e.g. UUID) for this push notification.
  core.String? id;

  /// Token unique for this task/session
  core.String? token;

  /// Url to send the notification too
  core.String? url;

  PushNotificationConfig({this.authentication, this.id, this.token, this.url});

  PushNotificationConfig.fromJson(core.Map json_)
    : this(
        authentication: json_.containsKey('authentication')
            ? AuthenticationInfo.fromJson(
                json_['authentication'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        id: json_['id'] as core.String?,
        token: json_['token'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authentication = this.authentication;
    final id = this.id;
    final token = this.token;
    final url = this.url;
    return {
      'authentication': ?authentication,
      'id': ?id,
      'token': ?token,
      'url': ?url,
    };
  }
}

/// The request message for SubscriptionsService.ReactivateSubscription.
typedef ReactivateSubscriptionRequest = $Empty;

/// Configuration of a send message request.
class SendMessageConfiguration {
  /// The output modes that the agent is expected to respond with.
  core.List<core.String>? acceptedOutputModes;

  /// If true, the message will be blocking until the task is completed.
  ///
  /// If false, the message will be non-blocking and the task will be returned
  /// immediately. It is the caller's responsibility to check for any task
  /// updates.
  core.bool? blocking;

  /// The maximum number of messages to include in the history.
  ///
  /// if 0, the history will be unlimited.
  core.int? historyLength;

  /// A configuration of a webhook that can be used to receive updates
  PushNotificationConfig? pushNotification;

  SendMessageConfiguration({
    this.acceptedOutputModes,
    this.blocking,
    this.historyLength,
    this.pushNotification,
  });

  SendMessageConfiguration.fromJson(core.Map json_)
    : this(
        acceptedOutputModes: (json_['acceptedOutputModes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        blocking: json_['blocking'] as core.bool?,
        historyLength: json_['historyLength'] as core.int?,
        pushNotification: json_.containsKey('pushNotification')
            ? PushNotificationConfig.fromJson(
                json_['pushNotification']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final acceptedOutputModes = this.acceptedOutputModes;
    final blocking = this.blocking;
    final historyLength = this.historyLength;
    final pushNotification = this.pushNotification;
    return {
      'acceptedOutputModes': ?acceptedOutputModes,
      'blocking': ?blocking,
      'historyLength': ?historyLength,
      'pushNotification': ?pushNotification,
    };
  }
}

/// /////////// Request Messages ///////////
class SendMessageRequest {
  /// Configuration for the send request.
  SendMessageConfiguration? configuration;

  /// The message to send to the agent.
  ///
  /// Required.
  Message? message;

  /// Optional metadata for the request.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// Optional tenant, provided as a path parameter.
  ///
  /// Experimental, might still change for 1.0 release.
  core.String? tenant;

  SendMessageRequest({
    this.configuration,
    this.message,
    this.metadata,
    this.tenant,
  });

  SendMessageRequest.fromJson(core.Map json_)
    : this(
        configuration: json_.containsKey('configuration')
            ? SendMessageConfiguration.fromJson(
                json_['configuration'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        message: json_.containsKey('message')
            ? Message.fromJson(
                json_['message'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        tenant: json_['tenant'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final configuration = this.configuration;
    final message = this.message;
    final metadata = this.metadata;
    final tenant = this.tenant;
    return {
      'configuration': ?configuration,
      'message': ?message,
      'metadata': ?metadata,
      'tenant': ?tenant,
    };
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// The stream response for a message.
///
/// The stream should be one of the following sequences: If the response is a
/// message, the stream should contain one, and only one, message and then close
/// If the response is a task lifecycle, the first response should be a Task
/// object followed by zero or more TaskStatusUpdateEvents and
/// TaskArtifactUpdateEvents. The stream should complete when the Task if in an
/// interrupted or terminal state. A stream that ends before these conditions
/// are met are
class StreamResponse {
  TaskArtifactUpdateEvent? artifactUpdate;
  Message? message;
  TaskStatusUpdateEvent? statusUpdate;
  Task? task;

  StreamResponse({
    this.artifactUpdate,
    this.message,
    this.statusUpdate,
    this.task,
  });

  StreamResponse.fromJson(core.Map json_)
    : this(
        artifactUpdate: json_.containsKey('artifactUpdate')
            ? TaskArtifactUpdateEvent.fromJson(
                json_['artifactUpdate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        message: json_.containsKey('message')
            ? Message.fromJson(
                json_['message'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        statusUpdate: json_.containsKey('statusUpdate')
            ? TaskStatusUpdateEvent.fromJson(
                json_['statusUpdate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        task: json_.containsKey('task')
            ? Task.fromJson(
                json_['task'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final artifactUpdate = this.artifactUpdate;
    final message = this.message;
    final statusUpdate = this.statusUpdate;
    final task = this.task;
    return {
      'artifactUpdate': ?artifactUpdate,
      'message': ?message,
      'statusUpdate': ?statusUpdate,
      'task': ?task,
    };
  }
}

/// A subscription to receive events about a Google Workspace resource.
///
/// To learn more about subscriptions, see the
/// [Google Workspace Events API overview](https://developers.google.com/workspace/events).
class Subscription {
  /// The user who authorized the creation of the subscription.
  ///
  /// When a user authorizes the subscription, this field and the
  /// `user_authority` field have the same value and the format is: Format:
  /// `users/{user}` For Google Workspace users, the `{user}` value is the
  /// \[`user.id`\](https://developers.google.com/admin-sdk/directory/reference/rest/v1/users#User.FIELDS.ids)
  /// field from the Directory API. When a Chat app authorizes the subscription,
  /// only `service_account_authority` field populates and this field is empty.
  ///
  /// Output only.
  core.String? authority;

  /// The time when the subscription is created.
  ///
  /// Output only.
  core.String? createTime;

  /// This checksum is computed by the server based on the value of other
  /// fields, and might be sent on update requests to ensure the client has an
  /// up-to-date value before proceeding.
  ///
  /// Optional.
  core.String? etag;

  /// Unordered list.
  ///
  /// Input for creating a subscription. Otherwise, output only. One or more
  /// types of events to receive about the target resource. Formatted according
  /// to the CloudEvents specification. The supported event types depend on the
  /// target resource of your subscription. For details, see
  /// [Supported Google Workspace events](https://developers.google.com/workspace/events/guides#supported-events).
  /// By default, you also receive events about the
  /// [lifecycle of your subscription](https://developers.google.com/workspace/events/guides/events-lifecycle).
  /// You don't need to specify lifecycle events for this field. If you specify
  /// an event type that doesn't exist for the target resource, the request
  /// returns an HTTP `400 Bad Request` status code.
  ///
  /// Required.
  core.List<core.String>? eventTypes;

  /// Non-empty default.
  ///
  /// The timestamp in UTC when the subscription expires. Always displayed on
  /// output, regardless of what was used on input.
  core.String? expireTime;

  /// Identifier.
  ///
  /// Resource name of the subscription. Format: `subscriptions/{subscription}`
  core.String? name;

  /// The endpoint where the subscription delivers events, such as a Pub/Sub
  /// topic.
  ///
  /// Required. Immutable.
  NotificationEndpoint? notificationEndpoint;

  /// Options about what data to include in the event payload.
  ///
  /// Only supported for Google Chat and Google Drive events.
  ///
  /// Optional.
  PayloadOptions? payloadOptions;

  /// If `true`, the subscription is in the process of being updated.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The state of the subscription.
  ///
  /// Determines whether the subscription can receive events and deliver them to
  /// the notification endpoint.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "ACTIVE" : The subscription is active and can receive and deliver events
  /// to its notification endpoint.
  /// - "SUSPENDED" : The subscription is unable to receive events due to an
  /// error. To identify the error, see the `suspension_reason` field.
  /// - "DELETED" : The subscription is deleted.
  core.String? state;

  /// The error that suspended the subscription.
  ///
  /// To reactivate the subscription, resolve the error and call the
  /// `ReactivateSubscription` method.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ERROR_TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "USER_SCOPE_REVOKED" : The authorizing user has revoked the grant of one
  /// or more OAuth scopes. To learn more about authorization for Google
  /// Workspace, see
  /// [Configure the OAuth consent screen](https://developers.google.com/workspace/guides/configure-oauth-consent#choose-scopes).
  /// - "RESOURCE_DELETED" : The target resource for the subscription no longer
  /// exists.
  /// - "USER_AUTHORIZATION_FAILURE" : The user that authorized the creation of
  /// the subscription no longer has access to the subscription's target
  /// resource.
  /// - "ENDPOINT_PERMISSION_DENIED" : The Google Workspace application doesn't
  /// have access to deliver events to your subscription's notification
  /// endpoint.
  /// - "ENDPOINT_NOT_FOUND" : The subscription's notification endpoint doesn't
  /// exist, or the endpoint can't be found in the Google Cloud project where
  /// you created the subscription.
  /// - "ENDPOINT_RESOURCE_EXHAUSTED" : The subscription's notification endpoint
  /// failed to receive events due to insufficient quota or reaching rate
  /// limiting.
  /// - "OTHER" : An unidentified error has occurred.
  core.String? suspensionReason;

  /// The Google Workspace resource that's monitored for events, formatted as
  /// the [full resource name](https://google.aip.dev/122#full-resource-names).
  ///
  /// To learn about target resources and the events that they support, see
  /// [Supported Google Workspace events](https://developers.google.com/workspace/events#supported-events).
  /// A user can only authorize your app to create one subscription for a given
  /// target resource. If your app tries to create another subscription with the
  /// same user credentials, the request returns an `ALREADY_EXISTS` error.
  ///
  /// Required. Immutable.
  core.String? targetResource;

  /// Input only.
  ///
  /// The time-to-live (TTL) or duration for the subscription. If unspecified or
  /// set to `0`, uses the maximum possible duration.
  core.String? ttl;

  /// System-assigned unique identifier for the subscription.
  ///
  /// Output only.
  core.String? uid;

  /// The last time that the subscription is updated.
  ///
  /// Output only.
  core.String? updateTime;

  Subscription({
    this.authority,
    this.createTime,
    this.etag,
    this.eventTypes,
    this.expireTime,
    this.name,
    this.notificationEndpoint,
    this.payloadOptions,
    this.reconciling,
    this.state,
    this.suspensionReason,
    this.targetResource,
    this.ttl,
    this.uid,
    this.updateTime,
  });

  Subscription.fromJson(core.Map json_)
    : this(
        authority: json_['authority'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        etag: json_['etag'] as core.String?,
        eventTypes: (json_['eventTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        expireTime: json_['expireTime'] as core.String?,
        name: json_['name'] as core.String?,
        notificationEndpoint: json_.containsKey('notificationEndpoint')
            ? NotificationEndpoint.fromJson(
                json_['notificationEndpoint']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        payloadOptions: json_.containsKey('payloadOptions')
            ? PayloadOptions.fromJson(
                json_['payloadOptions'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        reconciling: json_['reconciling'] as core.bool?,
        state: json_['state'] as core.String?,
        suspensionReason: json_['suspensionReason'] as core.String?,
        targetResource: json_['targetResource'] as core.String?,
        ttl: json_['ttl'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authority = this.authority;
    final createTime = this.createTime;
    final etag = this.etag;
    final eventTypes = this.eventTypes;
    final expireTime = this.expireTime;
    final name = this.name;
    final notificationEndpoint = this.notificationEndpoint;
    final payloadOptions = this.payloadOptions;
    final reconciling = this.reconciling;
    final state = this.state;
    final suspensionReason = this.suspensionReason;
    final targetResource = this.targetResource;
    final ttl = this.ttl;
    final uid = this.uid;
    final updateTime = this.updateTime;
    return {
      'authority': ?authority,
      'createTime': ?createTime,
      'etag': ?etag,
      'eventTypes': ?eventTypes,
      'expireTime': ?expireTime,
      'name': ?name,
      'notificationEndpoint': ?notificationEndpoint,
      'payloadOptions': ?payloadOptions,
      'reconciling': ?reconciling,
      'state': ?state,
      'suspensionReason': ?suspensionReason,
      'targetResource': ?targetResource,
      'ttl': ?ttl,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }
}

/// Task is the core unit of action for A2A.
///
/// It has a current status and when results are created for the task they are
/// stored in the artifact. If there are multiple turns for a task, these are
/// stored in history.
class Task {
  /// A set of output artifacts for a Task.
  core.List<Artifact>? artifacts;

  /// Unique identifier (e.g. UUID) for the contextual collection of
  /// interactions (tasks and messages).
  ///
  /// Created by the A2A server.
  core.String? contextId;

  /// protolint:disable REPEATED_FIELD_NAMES_PLURALIZED The history of
  /// interactions from a task.
  core.List<Message>? history;

  /// Unique identifier (e.g. UUID) for the task, generated by the server for a
  /// new task.
  core.String? id;

  /// protolint:enable REPEATED_FIELD_NAMES_PLURALIZED A key/value object to
  /// store custom metadata about a task.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The current status of a Task, including state and a message.
  TaskStatus? status;

  Task({
    this.artifacts,
    this.contextId,
    this.history,
    this.id,
    this.metadata,
    this.status,
  });

  Task.fromJson(core.Map json_)
    : this(
        artifacts: (json_['artifacts'] as core.List?)
            ?.map(
              (value) => Artifact.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        contextId: json_['contextId'] as core.String?,
        history: (json_['history'] as core.List?)
            ?.map(
              (value) => Message.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        id: json_['id'] as core.String?,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        status: json_.containsKey('status')
            ? TaskStatus.fromJson(
                json_['status'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final artifacts = this.artifacts;
    final contextId = this.contextId;
    final history = this.history;
    final id = this.id;
    final metadata = this.metadata;
    final status = this.status;
    return {
      'artifacts': ?artifacts,
      'contextId': ?contextId,
      'history': ?history,
      'id': ?id,
      'metadata': ?metadata,
      'status': ?status,
    };
  }
}

/// TaskArtifactUpdateEvent represents a task delta where an artifact has been
/// generated.
class TaskArtifactUpdateEvent {
  /// Whether this should be appended to a prior one produced
  core.bool? append;

  /// The artifact itself
  Artifact? artifact;

  /// The id of the context that this task belongs too
  core.String? contextId;

  /// Whether this represents the last part of an artifact
  core.bool? lastChunk;

  /// Optional metadata associated with the artifact update.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The id of the task for this artifact
  core.String? taskId;

  TaskArtifactUpdateEvent({
    this.append,
    this.artifact,
    this.contextId,
    this.lastChunk,
    this.metadata,
    this.taskId,
  });

  TaskArtifactUpdateEvent.fromJson(core.Map json_)
    : this(
        append: json_['append'] as core.bool?,
        artifact: json_.containsKey('artifact')
            ? Artifact.fromJson(
                json_['artifact'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        contextId: json_['contextId'] as core.String?,
        lastChunk: json_['lastChunk'] as core.bool?,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        taskId: json_['taskId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final append = this.append;
    final artifact = this.artifact;
    final contextId = this.contextId;
    final lastChunk = this.lastChunk;
    final metadata = this.metadata;
    final taskId = this.taskId;
    return {
      'append': ?append,
      'artifact': ?artifact,
      'contextId': ?contextId,
      'lastChunk': ?lastChunk,
      'metadata': ?metadata,
      'taskId': ?taskId,
    };
  }
}

class TaskPushNotificationConfig {
  /// The resource name of the config.
  ///
  /// Format: tasks/{task_id}/pushNotificationConfigs/{config_id}
  core.String? name;

  /// The push notification configuration details.
  PushNotificationConfig? pushNotificationConfig;

  TaskPushNotificationConfig({this.name, this.pushNotificationConfig});

  TaskPushNotificationConfig.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        pushNotificationConfig: json_.containsKey('pushNotificationConfig')
            ? PushNotificationConfig.fromJson(
                json_['pushNotificationConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final pushNotificationConfig = this.pushNotificationConfig;
    return {'name': ?name, 'pushNotificationConfig': ?pushNotificationConfig};
  }
}

/// A container for the status of a task
class TaskStatus {
  /// A message associated with the status.
  Message? message;

  /// The current state of this task
  /// Possible string values are:
  /// - "TASK_STATE_UNSPECIFIED"
  /// - "TASK_STATE_SUBMITTED" : Represents the status that acknowledges a task
  /// is created
  /// - "TASK_STATE_WORKING" : Represents the status that a task is actively
  /// being processed
  /// - "TASK_STATE_COMPLETED" : Represents the status a task is finished. This
  /// is a terminal state
  /// - "TASK_STATE_FAILED" : Represents the status a task is done but failed.
  /// This is a terminal state
  /// - "TASK_STATE_CANCELLED" : Represents the status a task was cancelled
  /// before it finished. This is a terminal state.
  /// - "TASK_STATE_INPUT_REQUIRED" : Represents the status that the task
  /// requires information to complete. This is an interrupted state.
  /// - "TASK_STATE_REJECTED" : Represents the status that the agent has decided
  /// to not perform the task. This may be done during initial task creation or
  /// later once an agent has determined it can't or won't proceed. This is a
  /// terminal state.
  /// - "TASK_STATE_AUTH_REQUIRED" : Represents the state that some
  /// authentication is needed from the upstream client. Authentication is
  /// expected to come out-of-band thus this is not an interrupted or terminal
  /// state.
  core.String? state;

  /// Timestamp when the status was recorded.
  ///
  /// Example: "2023-10-27T10:00:00Z"
  core.String? timestamp;

  TaskStatus({this.message, this.state, this.timestamp});

  TaskStatus.fromJson(core.Map json_)
    : this(
        message: json_.containsKey('message')
            ? Message.fromJson(
                json_['message'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        state: json_['state'] as core.String?,
        timestamp: json_['timestamp'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final message = this.message;
    final state = this.state;
    final timestamp = this.timestamp;
    return {'message': ?message, 'state': ?state, 'timestamp': ?timestamp};
  }
}

/// TaskStatusUpdateEvent is a delta even on a task indicating that a task has
/// changed.
class TaskStatusUpdateEvent {
  /// The id of the context that the task belongs to
  core.String? contextId;

  /// Whether this is the last status update expected for this task.
  core.bool? final_;

  /// Optional metadata to associate with the task update.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The new status of the task.
  TaskStatus? status;

  /// The id of the task that is changed
  core.String? taskId;

  TaskStatusUpdateEvent({
    this.contextId,
    this.final_,
    this.metadata,
    this.status,
    this.taskId,
  });

  TaskStatusUpdateEvent.fromJson(core.Map json_)
    : this(
        contextId: json_['contextId'] as core.String?,
        final_: json_['final'] as core.bool?,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        status: json_.containsKey('status')
            ? TaskStatus.fromJson(
                json_['status'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        taskId: json_['taskId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contextId = this.contextId;
    final final_ = this.final_;
    final metadata = this.metadata;
    final status = this.status;
    final taskId = this.taskId;
    return {
      'contextId': ?contextId,
      'final': ?final_,
      'metadata': ?metadata,
      'status': ?status,
      'taskId': ?taskId,
    };
  }
}
