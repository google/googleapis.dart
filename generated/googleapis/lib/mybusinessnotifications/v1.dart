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

/// My Business Notifications API - v1
///
/// The My Business Notification Settings API enables managing notification
/// settings for business accounts.
///
/// For more information, see <https://developers.google.com/my-business/>
///
/// Create an instance of [MyBusinessNotificationSettingsApi] to access these
/// resources:
///
/// - [AccountsResource]
library mybusinessnotifications.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The My Business Notification Settings API enables managing notification
/// settings for business accounts.
class MyBusinessNotificationSettingsApi {
  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);

  MyBusinessNotificationSettingsApi(http.Client client,
      {core.String rootUrl = 'https://mybusinessnotifications.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsResource(commons.ApiRequester client) : _requester = client;

  /// Returns the pubsub notification settings for the account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the notification setting we are
  /// trying to fetch.
  /// Value must have pattern `^accounts/\[^/\]+/notificationSetting$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationSetting].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationSetting> getNotificationSetting(
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
    return NotificationSetting.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the pubsub notification setting for the account informing Google
  /// which topic to send pubsub notifications for.
  ///
  /// Use the notification_types field within notification_setting to manipulate
  /// the events an account wants to subscribe to. An account will only have one
  /// notification setting resource, and only one pubsub topic can be set. To
  /// delete the setting, update with an empty notification_types
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name this setting is for. This is of the
  /// form `accounts/{account_id}/notificationSetting`.
  /// Value must have pattern `^accounts/\[^/\]+/notificationSetting$`.
  ///
  /// [updateMask] - Required. The specific fields that should be updated. The
  /// only editable field is notification_setting.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationSetting].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationSetting> updateNotificationSetting(
    NotificationSetting request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
    return NotificationSetting.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A Google Pub/Sub topic where notifications can be published when a location
/// is updated or has a new review.
///
/// There will be only one notification setting resource per-account.
class NotificationSetting {
  /// The resource name this setting is for.
  ///
  /// This is of the form `accounts/{account_id}/notificationSetting`.
  ///
  /// Required.
  core.String? name;

  /// The types of notifications that will be sent to the Pub/Sub topic.
  ///
  /// To stop receiving notifications entirely, use
  /// NotificationSettings.UpdateNotificationSetting with an empty
  /// notification_types or set the pubsub_topic to an empty string.
  core.List<core.String>? notificationTypes;

  /// The Google Pub/Sub topic that will receive notifications when locations
  /// managed by this account are updated.
  ///
  /// If unset, no notifications will be posted. The account
  /// mybusiness-api-pubsub@system.gserviceaccount.com must have at least
  /// Publish permissions on the Pub/Sub topic.
  ///
  /// Optional.
  core.String? pubsubTopic;

  NotificationSetting({
    this.name,
    this.notificationTypes,
    this.pubsubTopic,
  });

  NotificationSetting.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          notificationTypes: json_.containsKey('notificationTypes')
              ? (json_['notificationTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          pubsubTopic: json_.containsKey('pubsubTopic')
              ? json_['pubsubTopic'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (notificationTypes != null) 'notificationTypes': notificationTypes!,
        if (pubsubTopic != null) 'pubsubTopic': pubsubTopic!,
      };
}
