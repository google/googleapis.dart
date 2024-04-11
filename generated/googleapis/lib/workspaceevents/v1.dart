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

/// Google Workspace Events API - v1
///
/// The Google Workspace Events API lets you subscribe to events and manage
/// change notifications across Google Workspace applications.
///
/// For more information, see <https://developers.google.com/workspace/events>
///
/// Create an instance of [WorkspaceEventsApi] to access these resources:
///
/// - [OperationsResource]
/// - [SubscriptionsResource]
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

  /// View, add, and delete reactions to messages in Google Chat
  static const chatMessagesReactionsScope =
      'https://www.googleapis.com/auth/chat.messages.reactions';

  /// View reactions to messages in Google Chat
  static const chatMessagesReactionsReadonlyScope =
      'https://www.googleapis.com/auth/chat.messages.reactions.readonly';

  /// View messages and reactions in Google Chat
  static const chatMessagesReadonlyScope =
      'https://www.googleapis.com/auth/chat.messages.readonly';

  /// Create conversations and spaces and see or edit metadata (including
  /// history settings and access settings) in Google Chat
  static const chatSpacesScope = 'https://www.googleapis.com/auth/chat.spaces';

  /// View chat and spaces in Google Chat
  static const chatSpacesReadonlyScope =
      'https://www.googleapis.com/auth/chat.spaces.readonly';

  /// Create, edit, and see information about your Google Meet conferences
  /// created by the app.
  static const meetingsSpaceCreatedScope =
      'https://www.googleapis.com/auth/meetings.space.created';

  /// Read information about any of your Google Meet conferences
  static const meetingsSpaceReadonlyScope =
      'https://www.googleapis.com/auth/meetings.space.readonly';

  final commons.ApiRequester _requester;

  OperationsResource get operations => OperationsResource(_requester);
  SubscriptionsResource get subscriptions => SubscriptionsResource(_requester);

  WorkspaceEventsApi(http.Client client,
      {core.String rootUrl = 'https://workspaceevents.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
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
  async.Future<Operation> get(
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class SubscriptionsResource {
  final commons.ApiRequester _requester;

  SubscriptionsResource(commons.ApiRequester client) : _requester = client;

  /// [Developer Preview](https://developers.google.com/workspace/preview):
  /// Creates a Google Workspace subscription.
  ///
  /// To learn how to use this method, see
  /// [Create a Google Workspace subscription](https://developers.google.com/workspace/events/guides/create-subscription).
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
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
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

  /// [Developer Preview](https://developers.google.com/workspace/preview):
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
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// [Developer Preview](https://developers.google.com/workspace/preview): Gets
  /// details about a Google Workspace subscription.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Subscription.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// [Developer Preview](https://developers.google.com/workspace/preview):
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
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/subscriptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSubscriptionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// [Developer Preview](https://developers.google.com/workspace/preview):
  /// Updates or renews a Google Workspace subscription.
  ///
  /// To learn how to use this method, see
  /// [Update or renew a Google Workspace subscription](https://developers.google.com/workspace/events/guides/update-subscription).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. Immutable. Identifier. Resource name of the
  /// subscription. Format: `subscriptions/{subscription}`
  /// Value must have pattern `^subscriptions/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The field to update. If omitted, updates any
  /// fields included in the request. You can update one of the following fields
  /// in a subscription: * `expire_time`: The timestamp when the subscription
  /// expires. * `ttl`: The time-to-live (TTL) or duration of the subscription.
  /// To fully replace the subscription (the equivalent of `PUT`), use `*`. Any
  /// omitted fields are updated with empty values.
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
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
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

  /// [Developer Preview](https://developers.google.com/workspace/preview):
  /// Reactivates a suspended Google Workspace subscription.
  ///
  /// This method resets your subscription's `State` field to `ACTIVE`. Before
  /// you use this method, you must fix the error that suspended the
  /// subscription. To learn how to use this method, see
  /// [Reactivate a Google Workspace subscription](https://developers.google.com/workspace/events/guides/reactivate-subscription).
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
      if ($fields != null) 'fields': [$fields],
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

/// The response message for SubscriptionsService.ListSubscriptions.
class ListSubscriptionsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of subscriptions.
  core.List<Subscription>? subscriptions;

  ListSubscriptionsResponse({
    this.nextPageToken,
    this.subscriptions,
  });

  ListSubscriptionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          subscriptions: json_.containsKey('subscriptions')
              ? (json_['subscriptions'] as core.List)
                  .map((value) => Subscription.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (subscriptions != null) 'subscriptions': subscriptions!,
      };
}

/// The endpoint where the subscription delivers events.
class NotificationEndpoint {
  /// The Cloud Pub/Sub topic that receives events for the subscription.
  ///
  /// Format: `projects/{project}/topics/{topic}` You must create the topic in
  /// the same Google Cloud project where you create this subscription. When the
  /// topic receives events, the events are encoded as Cloud Pub/Sub messages.
  /// For details, see the
  /// [Google Cloud Pub/Sub Protocol Binding for CloudEvents](https://github.com/googleapis/google-cloudevents/blob/main/docs/spec/pubsub.md).
  ///
  /// Immutable.
  core.String? pubsubTopic;

  NotificationEndpoint({
    this.pubsubTopic,
  });

  NotificationEndpoint.fromJson(core.Map json_)
      : this(
          pubsubTopic: json_.containsKey('pubsubTopic')
              ? json_['pubsubTopic'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pubsubTopic != null) 'pubsubTopic': pubsubTopic!,
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

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
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

/// Options about what data to include in the event payload.
///
/// Only supported for Google Chat events.
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

  PayloadOptions({
    this.fieldMask,
    this.includeResource,
  });

  PayloadOptions.fromJson(core.Map json_)
      : this(
          fieldMask: json_.containsKey('fieldMask')
              ? json_['fieldMask'] as core.String
              : null,
          includeResource: json_.containsKey('includeResource')
              ? json_['includeResource'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldMask != null) 'fieldMask': fieldMask!,
        if (includeResource != null) 'includeResource': includeResource!,
      };
}

/// The request message for SubscriptionsService.ReactivateSubscription.
typedef ReactivateSubscriptionRequest = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// [Developer Preview](https://developers.google.com/workspace/preview).
///
/// A subscription to receive events about a Google Workspace resource. To learn
/// more about subscriptions, see the
/// [Google Workspace Events API overview](https://developers.google.com/workspace/events).
class Subscription {
  /// The user who authorized the creation of the subscription.
  ///
  /// Format: `users/{user}` For Google Workspace users, the `{user}` value is
  /// the
  /// \[`user.id`\](https://developers.google.com/admin-sdk/directory/reference/rest/v1/users#User.FIELDS.ids)
  /// field from the Directory API.
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
  /// Required. Immutable.
  core.List<core.String>? eventTypes;

  /// Non-empty default.
  ///
  /// The timestamp in UTC when the subscription expires. Always displayed on
  /// output, regardless of what was used on input.
  core.String? expireTime;

  /// Identifier.
  ///
  /// Resource name of the subscription. Format: `subscriptions/{subscription}`
  ///
  /// Optional. Immutable.
  core.String? name;

  /// The endpoint where the subscription delivers events, such as a Pub/Sub
  /// topic.
  ///
  /// Required. Immutable.
  NotificationEndpoint? notificationEndpoint;

  /// Options about what data to include in the event payload.
  ///
  /// Only supported for Google Chat events.
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
          authority: json_.containsKey('authority')
              ? json_['authority'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          eventTypes: json_.containsKey('eventTypes')
              ? (json_['eventTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          notificationEndpoint: json_.containsKey('notificationEndpoint')
              ? NotificationEndpoint.fromJson(json_['notificationEndpoint']
                  as core.Map<core.String, core.dynamic>)
              : null,
          payloadOptions: json_.containsKey('payloadOptions')
              ? PayloadOptions.fromJson(json_['payloadOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          suspensionReason: json_.containsKey('suspensionReason')
              ? json_['suspensionReason'] as core.String
              : null,
          targetResource: json_.containsKey('targetResource')
              ? json_['targetResource'] as core.String
              : null,
          ttl: json_.containsKey('ttl') ? json_['ttl'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authority != null) 'authority': authority!,
        if (createTime != null) 'createTime': createTime!,
        if (etag != null) 'etag': etag!,
        if (eventTypes != null) 'eventTypes': eventTypes!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (name != null) 'name': name!,
        if (notificationEndpoint != null)
          'notificationEndpoint': notificationEndpoint!,
        if (payloadOptions != null) 'payloadOptions': payloadOptions!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (state != null) 'state': state!,
        if (suspensionReason != null) 'suspensionReason': suspensionReason!,
        if (targetResource != null) 'targetResource': targetResource!,
        if (ttl != null) 'ttl': ttl!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}
