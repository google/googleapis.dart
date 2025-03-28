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

/// Firebase Cloud Messaging API - v1
///
/// FCM send API that provides a cross-platform messaging solution to reliably
/// deliver messages.
///
/// For more information, see <https://firebase.google.com/docs/cloud-messaging>
///
/// Create an instance of [FirebaseCloudMessagingApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsMessagesResource]
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

/// FCM send API that provides a cross-platform messaging solution to reliably
/// deliver messages.
class FirebaseCloudMessagingApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// Send messages and manage messaging subscriptions for your Firebase
  /// applications
  static const firebaseMessagingScope =
      'https://www.googleapis.com/auth/firebase.messaging';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  FirebaseCloudMessagingApi(http.Client client,
      {core.String rootUrl = 'https://fcm.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsMessagesResource get messages => ProjectsMessagesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsMessagesResource {
  final commons.ApiRequester _requester;

  ProjectsMessagesResource(commons.ApiRequester client) : _requester = client;

  /// Send a message to specified target (a registration token, topic or
  /// condition).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. It contains the Firebase project id (i.e. the unique
  /// identifier for your Firebase project), in the format of
  /// `projects/{project_id}`. For legacy support, the numeric project number
  /// with no padding is also supported in the format of
  /// `projects/{project_number}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
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
  async.Future<Message> send(
    SendMessageRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/messages:send';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Message.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Android specific options for messages sent through
/// [FCM connection server](https://goo.gl/4GLdUl).
class AndroidConfig {
  /// If set to true, messages will be allowed to be delivered to the app while
  /// the device is in bandwidth constrained mode.
  ///
  /// Optional.
  core.bool? bandwidthConstrainedOk;

  /// An identifier of a group of messages that can be collapsed, so that only
  /// the last message gets sent when delivery can be resumed.
  ///
  /// A maximum of 4 different collapse keys is allowed at any given time.
  core.String? collapseKey;

  /// Arbitrary key/value payload.
  ///
  /// If present, it will override google.firebase.fcm.v1.Message.data.
  core.Map<core.String, core.String>? data;

  /// If set to true, messages will be allowed to be delivered to the app while
  /// the device is in direct boot mode.
  ///
  /// See
  /// [Support Direct Boot mode](https://developer.android.com/training/articles/direct-boot).
  core.bool? directBootOk;

  /// Options for features provided by the FCM SDK for Android.
  AndroidFcmOptions? fcmOptions;

  /// Notification to send to android devices.
  AndroidNotification? notification;

  /// Message priority.
  ///
  /// Can take "normal" and "high" values. For more information, see
  /// [Setting the priority of a message](https://goo.gl/GjONJv).
  /// Possible string values are:
  /// - "NORMAL" : Default priority for data messages. Normal priority messages
  /// won't open network connections on a sleeping device, and their delivery
  /// may be delayed to conserve the battery. For less time-sensitive messages,
  /// such as notifications of new email or other data to sync, choose normal
  /// delivery priority.
  /// - "HIGH" : Default priority for notification messages. FCM attempts to
  /// deliver high priority messages immediately, allowing the FCM service to
  /// wake a sleeping device when possible and open a network connection to your
  /// app server. Apps with instant messaging, chat, or voice call alerts, for
  /// example, generally need to open a network connection and make sure FCM
  /// delivers the message to the device without delay. Set high priority if the
  /// message is time-critical and requires the user's immediate interaction,
  /// but beware that setting your messages to high priority contributes more to
  /// battery drain compared with normal priority messages.
  core.String? priority;

  /// Package name of the application where the registration token must match in
  /// order to receive the message.
  core.String? restrictedPackageName;

  /// How long (in seconds) the message should be kept in FCM storage if the
  /// device is offline.
  ///
  /// The maximum time to live supported is 4 weeks, and the default value is 4
  /// weeks if not set. Set it to 0 if want to send the message immediately. In
  /// JSON format, the Duration type is encoded as a string rather than an
  /// object, where the string ends in the suffix "s" (indicating seconds) and
  /// is preceded by the number of seconds, with nanoseconds expressed as
  /// fractional seconds. For example, 3 seconds with 0 nanoseconds should be
  /// encoded in JSON format as "3s", while 3 seconds and 1 nanosecond should be
  /// expressed in JSON format as "3.000000001s". The ttl will be rounded down
  /// to the nearest second.
  core.String? ttl;

  AndroidConfig({
    this.bandwidthConstrainedOk,
    this.collapseKey,
    this.data,
    this.directBootOk,
    this.fcmOptions,
    this.notification,
    this.priority,
    this.restrictedPackageName,
    this.ttl,
  });

  AndroidConfig.fromJson(core.Map json_)
      : this(
          bandwidthConstrainedOk: json_['bandwidthConstrainedOk'] as core.bool?,
          collapseKey: json_['collapseKey'] as core.String?,
          data: (json_['data'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          directBootOk: json_['directBootOk'] as core.bool?,
          fcmOptions: json_.containsKey('fcmOptions')
              ? AndroidFcmOptions.fromJson(
                  json_['fcmOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          notification: json_.containsKey('notification')
              ? AndroidNotification.fromJson(
                  json_['notification'] as core.Map<core.String, core.dynamic>)
              : null,
          priority: json_['priority'] as core.String?,
          restrictedPackageName: json_['restrictedPackageName'] as core.String?,
          ttl: json_['ttl'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bandwidthConstrainedOk != null)
          'bandwidthConstrainedOk': bandwidthConstrainedOk!,
        if (collapseKey != null) 'collapseKey': collapseKey!,
        if (data != null) 'data': data!,
        if (directBootOk != null) 'directBootOk': directBootOk!,
        if (fcmOptions != null) 'fcmOptions': fcmOptions!,
        if (notification != null) 'notification': notification!,
        if (priority != null) 'priority': priority!,
        if (restrictedPackageName != null)
          'restrictedPackageName': restrictedPackageName!,
        if (ttl != null) 'ttl': ttl!,
      };
}

/// Options for features provided by the FCM SDK for Android.
typedef AndroidFcmOptions = $FcmOptions;

/// Notification to send to android devices.
class AndroidNotification {
  /// The notification's body text.
  ///
  /// If present, it will override google.firebase.fcm.v1.Notification.body.
  core.String? body;

  /// Variable string values to be used in place of the format specifiers in
  /// body_loc_key to use to localize the body text to the user's current
  /// localization.
  ///
  /// See [Formatting and Styling](https://goo.gl/MalYE3) for more information.
  core.List<core.String>? bodyLocArgs;

  /// The key to the body string in the app's string resources to use to
  /// localize the body text to the user's current localization.
  ///
  /// See [String Resources](https://goo.gl/NdFZGI) for more information.
  core.String? bodyLocKey;

  /// If set, display notifications delivered to the device will be handled by
  /// the app instead of the proxy.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? bypassProxyNotification;

  /// The
  /// [notification's channel id](https://developer.android.com/guide/topics/ui/notifiers/notifications#ManageChannels)
  /// (new in Android O).
  ///
  /// The app must create a channel with this channel ID before any notification
  /// with this channel ID is received. If you don't send this channel ID in the
  /// request, or if the channel ID provided has not yet been created by the
  /// app, FCM uses the channel ID specified in the app manifest.
  core.String? channelId;

  /// The action associated with a user click on the notification.
  ///
  /// If specified, an activity with a matching intent filter is launched when a
  /// user clicks on the notification.
  core.String? clickAction;

  /// The notification's icon color, expressed in #rrggbb format.
  core.String? color;

  /// If set to true, use the Android framework's default LED light settings for
  /// the notification.
  ///
  /// Default values are specified in
  /// [config.xml](https://android.googlesource.com/platform/frameworks/base/+/master/core/res/res/values/config.xml).
  /// If `default_light_settings` is set to true and `light_settings` is also
  /// set, the user-specified `light_settings` is used instead of the default
  /// value.
  core.bool? defaultLightSettings;

  /// If set to true, use the Android framework's default sound for the
  /// notification.
  ///
  /// Default values are specified in
  /// [config.xml](https://android.googlesource.com/platform/frameworks/base/+/master/core/res/res/values/config.xml).
  core.bool? defaultSound;

  /// If set to true, use the Android framework's default vibrate pattern for
  /// the notification.
  ///
  /// Default values are specified in
  /// [config.xml](https://android.googlesource.com/platform/frameworks/base/+/master/core/res/res/values/config.xml).
  /// If `default_vibrate_timings` is set to true and `vibrate_timings` is also
  /// set, the default value is used instead of the user-specified
  /// `vibrate_timings`.
  core.bool? defaultVibrateTimings;

  /// Set the time that the event in the notification occurred.
  ///
  /// Notifications in the panel are sorted by this time. A point in time is
  /// represented using
  /// [protobuf.Timestamp](https://developers.google.com/protocol-buffers/docs/reference/java/com/google/protobuf/Timestamp).
  core.String? eventTime;

  /// The notification's icon.
  ///
  /// Sets the notification icon to myicon for drawable resource myicon. If you
  /// don't send this key in the request, FCM displays the launcher icon
  /// specified in your app manifest.
  core.String? icon;

  /// Contains the URL of an image that is going to be displayed in a
  /// notification.
  ///
  /// If present, it will override google.firebase.fcm.v1.Notification.image.
  core.String? image;

  /// Settings to control the notification's LED blinking rate and color if LED
  /// is available on the device.
  ///
  /// The total blinking time is controlled by the OS.
  LightSettings? lightSettings;

  /// Set whether or not this notification is relevant only to the current
  /// device.
  ///
  /// Some notifications can be bridged to other devices for remote display,
  /// such as a Wear OS watch. This hint can be set to recommend this
  /// notification not be bridged. See
  /// [Wear OS guides](https://developer.android.com/training/wearables/notifications/bridger#existing-method-of-preventing-bridging)
  core.bool? localOnly;

  /// Sets the number of items this notification represents.
  ///
  /// May be displayed as a badge count for launchers that support badging.See
  /// [Notification Badge](https://developer.android.com/training/notify-user/badges).
  /// For example, this might be useful if you're using just one notification to
  /// represent multiple new messages but you want the count here to represent
  /// the number of total new messages. If zero or unspecified, systems that
  /// support badging use the default, which is to increment a number displayed
  /// on the long-press menu each time a new notification arrives.
  core.int? notificationCount;

  /// Set the relative priority for this notification.
  ///
  /// Priority is an indication of how much of the user's attention should be
  /// consumed by this notification. Low-priority notifications may be hidden
  /// from the user in certain situations, while the user might be interrupted
  /// for a higher-priority notification. The effect of setting the same
  /// priorities may differ slightly on different platforms. Note this priority
  /// differs from `AndroidMessagePriority`. This priority is processed by the
  /// client after the message has been delivered, whereas
  /// [AndroidMessagePriority](https://firebase.google.com/docs/reference/fcm/rest/v1/projects.messages#androidmessagepriority)
  /// is an FCM concept that controls when the message is delivered.
  /// Possible string values are:
  /// - "PRIORITY_UNSPECIFIED" : If priority is unspecified, notification
  /// priority is set to `PRIORITY_DEFAULT`.
  /// - "PRIORITY_MIN" : Lowest notification priority. Notifications with this
  /// `PRIORITY_MIN` might not be shown to the user except under special
  /// circumstances, such as detailed notification logs.
  /// - "PRIORITY_LOW" : Lower notification priority. The UI may choose to show
  /// the notifications smaller, or at a different position in the list,
  /// compared with notifications with `PRIORITY_DEFAULT`.
  /// - "PRIORITY_DEFAULT" : Default notification priority. If the application
  /// does not prioritize its own notifications, use this value for all
  /// notifications.
  /// - "PRIORITY_HIGH" : Higher notification priority. Use this for more
  /// important notifications or alerts. The UI may choose to show these
  /// notifications larger, or at a different position in the notification
  /// lists, compared with notifications with `PRIORITY_DEFAULT`.
  /// - "PRIORITY_MAX" : Highest notification priority. Use this for the
  /// application's most important items that require the user's prompt
  /// attention or input.
  core.String? notificationPriority;

  /// Setting to control when a notification may be proxied.
  /// Possible string values are:
  /// - "PROXY_UNSPECIFIED" : If unspecified, default to
  /// `Proxy.IF_PRIORITY_LOWERED`.
  /// - "ALLOW" : Try to proxy this notification.
  /// - "DENY" : Do not proxy this notification.
  /// - "IF_PRIORITY_LOWERED" : Only try to proxy this notification if its
  /// `AndroidMessagePriority` was lowered from `HIGH` to `NORMAL` on the
  /// device.
  core.String? proxy;

  /// The sound to play when the device receives the notification.
  ///
  /// Supports "default" or the filename of a sound resource bundled in the app.
  /// Sound files must reside in /res/raw/.
  core.String? sound;

  /// When set to false or unset, the notification is automatically dismissed
  /// when the user clicks it in the panel.
  ///
  /// When set to true, the notification persists even when the user clicks it.
  core.bool? sticky;

  /// Identifier used to replace existing notifications in the notification
  /// drawer.
  ///
  /// If not specified, each request creates a new notification. If specified
  /// and a notification with the same tag is already being shown, the new
  /// notification replaces the existing one in the notification drawer.
  core.String? tag;

  /// Sets the "ticker" text, which is sent to accessibility services.
  ///
  /// Prior to API level 21 (`Lollipop`), sets the text that is displayed in the
  /// status bar when the notification first arrives.
  core.String? ticker;

  /// The notification's title.
  ///
  /// If present, it will override google.firebase.fcm.v1.Notification.title.
  core.String? title;

  /// Variable string values to be used in place of the format specifiers in
  /// title_loc_key to use to localize the title text to the user's current
  /// localization.
  ///
  /// See [Formatting and Styling](https://goo.gl/MalYE3) for more information.
  core.List<core.String>? titleLocArgs;

  /// The key to the title string in the app's string resources to use to
  /// localize the title text to the user's current localization.
  ///
  /// See [String Resources](https://goo.gl/NdFZGI) for more information.
  core.String? titleLocKey;

  /// Set the vibration pattern to use.
  ///
  /// Pass in an array of
  /// [protobuf.Duration](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.Duration)
  /// to turn on or off the vibrator. The first value indicates the `Duration`
  /// to wait before turning the vibrator on. The next value indicates the
  /// `Duration` to keep the vibrator on. Subsequent values alternate between
  /// `Duration` to turn the vibrator off and to turn the vibrator on. If
  /// `vibrate_timings` is set and `default_vibrate_timings` is set to `true`,
  /// the default value is used instead of the user-specified `vibrate_timings`.
  core.List<core.String>? vibrateTimings;

  /// Set the
  /// [Notification.visibility](https://developer.android.com/reference/android/app/Notification.html#visibility)
  /// of the notification.
  /// Possible string values are:
  /// - "VISIBILITY_UNSPECIFIED" : If unspecified, default to
  /// `Visibility.PRIVATE`.
  /// - "PRIVATE" : Show this notification on all lockscreens, but conceal
  /// sensitive or private information on secure lockscreens.
  /// - "PUBLIC" : Show this notification in its entirety on all lockscreens.
  /// - "SECRET" : Do not reveal any part of this notification on a secure
  /// lockscreen.
  core.String? visibility;

  AndroidNotification({
    this.body,
    this.bodyLocArgs,
    this.bodyLocKey,
    this.bypassProxyNotification,
    this.channelId,
    this.clickAction,
    this.color,
    this.defaultLightSettings,
    this.defaultSound,
    this.defaultVibrateTimings,
    this.eventTime,
    this.icon,
    this.image,
    this.lightSettings,
    this.localOnly,
    this.notificationCount,
    this.notificationPriority,
    this.proxy,
    this.sound,
    this.sticky,
    this.tag,
    this.ticker,
    this.title,
    this.titleLocArgs,
    this.titleLocKey,
    this.vibrateTimings,
    this.visibility,
  });

  AndroidNotification.fromJson(core.Map json_)
      : this(
          body: json_['body'] as core.String?,
          bodyLocArgs: (json_['bodyLocArgs'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          bodyLocKey: json_['bodyLocKey'] as core.String?,
          bypassProxyNotification:
              json_['bypassProxyNotification'] as core.bool?,
          channelId: json_['channelId'] as core.String?,
          clickAction: json_['clickAction'] as core.String?,
          color: json_['color'] as core.String?,
          defaultLightSettings: json_['defaultLightSettings'] as core.bool?,
          defaultSound: json_['defaultSound'] as core.bool?,
          defaultVibrateTimings: json_['defaultVibrateTimings'] as core.bool?,
          eventTime: json_['eventTime'] as core.String?,
          icon: json_['icon'] as core.String?,
          image: json_['image'] as core.String?,
          lightSettings: json_.containsKey('lightSettings')
              ? LightSettings.fromJson(
                  json_['lightSettings'] as core.Map<core.String, core.dynamic>)
              : null,
          localOnly: json_['localOnly'] as core.bool?,
          notificationCount: json_['notificationCount'] as core.int?,
          notificationPriority: json_['notificationPriority'] as core.String?,
          proxy: json_['proxy'] as core.String?,
          sound: json_['sound'] as core.String?,
          sticky: json_['sticky'] as core.bool?,
          tag: json_['tag'] as core.String?,
          ticker: json_['ticker'] as core.String?,
          title: json_['title'] as core.String?,
          titleLocArgs: (json_['titleLocArgs'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          titleLocKey: json_['titleLocKey'] as core.String?,
          vibrateTimings: (json_['vibrateTimings'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          visibility: json_['visibility'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
        if (bodyLocArgs != null) 'bodyLocArgs': bodyLocArgs!,
        if (bodyLocKey != null) 'bodyLocKey': bodyLocKey!,
        if (bypassProxyNotification != null)
          'bypassProxyNotification': bypassProxyNotification!,
        if (channelId != null) 'channelId': channelId!,
        if (clickAction != null) 'clickAction': clickAction!,
        if (color != null) 'color': color!,
        if (defaultLightSettings != null)
          'defaultLightSettings': defaultLightSettings!,
        if (defaultSound != null) 'defaultSound': defaultSound!,
        if (defaultVibrateTimings != null)
          'defaultVibrateTimings': defaultVibrateTimings!,
        if (eventTime != null) 'eventTime': eventTime!,
        if (icon != null) 'icon': icon!,
        if (image != null) 'image': image!,
        if (lightSettings != null) 'lightSettings': lightSettings!,
        if (localOnly != null) 'localOnly': localOnly!,
        if (notificationCount != null) 'notificationCount': notificationCount!,
        if (notificationPriority != null)
          'notificationPriority': notificationPriority!,
        if (proxy != null) 'proxy': proxy!,
        if (sound != null) 'sound': sound!,
        if (sticky != null) 'sticky': sticky!,
        if (tag != null) 'tag': tag!,
        if (ticker != null) 'ticker': ticker!,
        if (title != null) 'title': title!,
        if (titleLocArgs != null) 'titleLocArgs': titleLocArgs!,
        if (titleLocKey != null) 'titleLocKey': titleLocKey!,
        if (vibrateTimings != null) 'vibrateTimings': vibrateTimings!,
        if (visibility != null) 'visibility': visibility!,
      };
}

/// [Apple Push Notification Service](https://goo.gl/MXRTPa) specific options.
class ApnsConfig {
  /// Options for features provided by the FCM SDK for iOS.
  ApnsFcmOptions? fcmOptions;

  /// HTTP request headers defined in Apple Push Notification Service.
  ///
  /// Refer to
  /// [APNs request headers](https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/sending_notification_requests_to_apns)
  /// for supported headers such as `apns-expiration` and `apns-priority`. The
  /// backend sets a default value for `apns-expiration` of 30 days and a
  /// default value for `apns-priority` of 10 if not explicitly set.
  core.Map<core.String, core.String>? headers;

  /// [Apple Live Activity](https://developer.apple.com/design/human-interface-guidelines/live-activities)
  /// token to send updates to.
  ///
  /// This token can either be a push token or
  /// \[push-to-start\](https://developer.apple.com/documentation/activitykit/activity/pushtostarttoken)
  /// token from Apple. To start, update, or end a live activity remotely using
  /// FCM, construct an \[`aps
  /// payload`\](https://developer.apple.com/documentation/activitykit/starting-and-updating-live-activities-with-activitykit-push-notifications#Construct-the-payload-that-starts-a-Live-Activity)
  /// and put it in the
  /// \[`apns.payload`\](https://firebase.google.com/docs/reference/fcm/rest/v1/projects.messages#ApnsConfig)
  /// field.
  ///
  /// Optional.
  core.String? liveActivityToken;

  /// APNs payload as a JSON object, including both `aps` dictionary and custom
  /// payload.
  ///
  /// See
  /// [Payload Key Reference](https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/generating_a_remote_notification).
  /// If present, it overrides google.firebase.fcm.v1.Notification.title and
  /// google.firebase.fcm.v1.Notification.body.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? payload;

  ApnsConfig({
    this.fcmOptions,
    this.headers,
    this.liveActivityToken,
    this.payload,
  });

  ApnsConfig.fromJson(core.Map json_)
      : this(
          fcmOptions: json_.containsKey('fcmOptions')
              ? ApnsFcmOptions.fromJson(
                  json_['fcmOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          headers:
              (json_['headers'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          liveActivityToken: json_['liveActivityToken'] as core.String?,
          payload: json_.containsKey('payload')
              ? json_['payload'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fcmOptions != null) 'fcmOptions': fcmOptions!,
        if (headers != null) 'headers': headers!,
        if (liveActivityToken != null) 'liveActivityToken': liveActivityToken!,
        if (payload != null) 'payload': payload!,
      };
}

/// Options for features provided by the FCM SDK for iOS.
class ApnsFcmOptions {
  /// Label associated with the message's analytics data.
  core.String? analyticsLabel;

  /// Contains the URL of an image that is going to be displayed in a
  /// notification.
  ///
  /// If present, it will override google.firebase.fcm.v1.Notification.image.
  core.String? image;

  ApnsFcmOptions({
    this.analyticsLabel,
    this.image,
  });

  ApnsFcmOptions.fromJson(core.Map json_)
      : this(
          analyticsLabel: json_['analyticsLabel'] as core.String?,
          image: json_['image'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analyticsLabel != null) 'analyticsLabel': analyticsLabel!,
        if (image != null) 'image': image!,
      };
}

/// Represents a color in the RGBA color space.
///
/// This representation is designed for simplicity of conversion to and from
/// color representations in various languages over compactness. For example,
/// the fields of this representation can be trivially provided to the
/// constructor of `java.awt.Color` in Java; it can also be trivially provided
/// to UIColor's `+colorWithRed:green:blue:alpha` method in iOS; and, with just
/// a little work, it can be easily formatted into a CSS `rgba()` string in
/// JavaScript. This reference page doesn't have information about the absolute
/// color space that should be used to interpret the RGB value—for example,
/// sRGB, Adobe RGB, DCI-P3, and BT.2020. By default, applications should assume
/// the sRGB color space. When color equality needs to be decided,
/// implementations, unless documented otherwise, treat two colors as equal if
/// all their red, green, blue, and alpha values each differ by at most `1e-5`.
/// Example (Java): import com.google.type.Color; // ... public static
/// java.awt.Color fromProto(Color protocolor) { float alpha =
/// protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new
/// java.awt.Color( protocolor.getRed(), protocolor.getGreen(),
/// protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color
/// color) { float red = (float) color.getRed(); float green = (float)
/// color.getGreen(); float blue = (float) color.getBlue(); float denominator =
/// 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red /
/// denominator) .setGreen(green / denominator) .setBlue(blue / denominator);
/// int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha(
/// FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .build());
/// } return resultBuilder.build(); } // ... Example (iOS / Obj-C): // ...
/// static UIColor* fromProto(Color* protocolor) { float red = \[protocolor
/// red\]; float green = \[protocolor green\]; float blue = \[protocolor blue\];
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

/// Platform independent options for features provided by the FCM SDKs.
typedef FcmOptions = $FcmOptions;

/// Settings to control notification LED.
class LightSettings {
  /// Set `color` of the LED with
  /// [google.type.Color](https://github.com/googleapis/googleapis/blob/master/google/type/color.proto).
  ///
  /// Required.
  Color? color;

  /// Along with `light_on_duration `, define the blink rate of LED flashes.
  ///
  /// Resolution defined by
  /// [proto.Duration](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.Duration)
  ///
  /// Required.
  core.String? lightOffDuration;

  /// Along with `light_off_duration`, define the blink rate of LED flashes.
  ///
  /// Resolution defined by
  /// [proto.Duration](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.Duration)
  ///
  /// Required.
  core.String? lightOnDuration;

  LightSettings({
    this.color,
    this.lightOffDuration,
    this.lightOnDuration,
  });

  LightSettings.fromJson(core.Map json_)
      : this(
          color: json_.containsKey('color')
              ? Color.fromJson(
                  json_['color'] as core.Map<core.String, core.dynamic>)
              : null,
          lightOffDuration: json_['lightOffDuration'] as core.String?,
          lightOnDuration: json_['lightOnDuration'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (color != null) 'color': color!,
        if (lightOffDuration != null) 'lightOffDuration': lightOffDuration!,
        if (lightOnDuration != null) 'lightOnDuration': lightOnDuration!,
      };
}

/// Message to send by Firebase Cloud Messaging Service.
class Message {
  /// Input only.
  ///
  /// Android specific options for messages sent through
  /// [FCM connection server](https://goo.gl/4GLdUl).
  AndroidConfig? android;

  /// Input only.
  ///
  /// [Apple Push Notification Service](https://goo.gl/MXRTPa) specific options.
  ApnsConfig? apns;

  /// Condition to send a message to, e.g. "'foo' in topics && 'bar' in topics".
  core.String? condition;

  /// Input only.
  ///
  /// Arbitrary key/value payload, which must be UTF-8 encoded. The key should
  /// not be a reserved word ("from", "message_type", or any word starting with
  /// "google." or "gcm.notification."). When sending payloads containing only
  /// data fields to iOS devices, only normal priority (`"apns-priority": "5"`)
  /// is allowed in
  /// \[`ApnsConfig`\](/docs/reference/fcm/rest/v1/projects.messages#apnsconfig).
  core.Map<core.String, core.String>? data;

  /// Input only.
  ///
  /// Template for FCM SDK feature options to use across all platforms.
  FcmOptions? fcmOptions;

  /// The identifier of the message sent, in the format of `projects / *
  /// /messages/{message_id}`.
  ///
  /// Output only.
  core.String? name;

  /// Input only.
  ///
  /// Basic notification template to use across all platforms.
  Notification? notification;

  /// Registration token to send a message to.
  core.String? token;

  /// Topic name to send a message to, e.g. "weather".
  ///
  /// Note: "/topics/" prefix should not be provided.
  core.String? topic;

  /// Input only.
  ///
  /// [Webpush protocol](https://tools.ietf.org/html/rfc8030) options.
  WebpushConfig? webpush;

  Message({
    this.android,
    this.apns,
    this.condition,
    this.data,
    this.fcmOptions,
    this.name,
    this.notification,
    this.token,
    this.topic,
    this.webpush,
  });

  Message.fromJson(core.Map json_)
      : this(
          android: json_.containsKey('android')
              ? AndroidConfig.fromJson(
                  json_['android'] as core.Map<core.String, core.dynamic>)
              : null,
          apns: json_.containsKey('apns')
              ? ApnsConfig.fromJson(
                  json_['apns'] as core.Map<core.String, core.dynamic>)
              : null,
          condition: json_['condition'] as core.String?,
          data: (json_['data'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          fcmOptions: json_.containsKey('fcmOptions')
              ? FcmOptions.fromJson(
                  json_['fcmOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_['name'] as core.String?,
          notification: json_.containsKey('notification')
              ? Notification.fromJson(
                  json_['notification'] as core.Map<core.String, core.dynamic>)
              : null,
          token: json_['token'] as core.String?,
          topic: json_['topic'] as core.String?,
          webpush: json_.containsKey('webpush')
              ? WebpushConfig.fromJson(
                  json_['webpush'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (android != null) 'android': android!,
        if (apns != null) 'apns': apns!,
        if (condition != null) 'condition': condition!,
        if (data != null) 'data': data!,
        if (fcmOptions != null) 'fcmOptions': fcmOptions!,
        if (name != null) 'name': name!,
        if (notification != null) 'notification': notification!,
        if (token != null) 'token': token!,
        if (topic != null) 'topic': topic!,
        if (webpush != null) 'webpush': webpush!,
      };
}

/// Basic notification template to use across all platforms.
class Notification {
  /// The notification's body text.
  core.String? body;

  /// Contains the URL of an image that is going to be downloaded on the device
  /// and displayed in a notification.
  ///
  /// JPEG, PNG, BMP have full support across platforms. Animated GIF and video
  /// only work on iOS. WebP and HEIF have varying levels of support across
  /// platforms and platform versions. Android has 1MB image size limit. Quota
  /// usage and implications/costs for hosting image on Firebase Storage:
  /// https://firebase.google.com/pricing
  core.String? image;

  /// The notification's title.
  core.String? title;

  Notification({
    this.body,
    this.image,
    this.title,
  });

  Notification.fromJson(core.Map json_)
      : this(
          body: json_['body'] as core.String?,
          image: json_['image'] as core.String?,
          title: json_['title'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
        if (image != null) 'image': image!,
        if (title != null) 'title': title!,
      };
}

/// Request to send a message to specified target.
class SendMessageRequest {
  /// Message to send.
  ///
  /// Required.
  Message? message;

  /// Flag for testing the request without actually delivering the message.
  core.bool? validateOnly;

  SendMessageRequest({
    this.message,
    this.validateOnly,
  });

  SendMessageRequest.fromJson(core.Map json_)
      : this(
          message: json_.containsKey('message')
              ? Message.fromJson(
                  json_['message'] as core.Map<core.String, core.dynamic>)
              : null,
          validateOnly: json_['validateOnly'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (message != null) 'message': message!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// [Webpush protocol](https://tools.ietf.org/html/rfc8030) options.
class WebpushConfig {
  /// Arbitrary key/value payload.
  ///
  /// If present, it will override google.firebase.fcm.v1.Message.data.
  core.Map<core.String, core.String>? data;

  /// Options for features provided by the FCM SDK for Web.
  WebpushFcmOptions? fcmOptions;

  /// HTTP headers defined in webpush protocol.
  ///
  /// Refer to [Webpush protocol](https://tools.ietf.org/html/rfc8030#section-5)
  /// for supported headers, e.g. "TTL": "15".
  core.Map<core.String, core.String>? headers;

  /// Web Notification options as a JSON object.
  ///
  /// Supports Notification instance properties as defined in
  /// [Web Notification API](https://developer.mozilla.org/en-US/docs/Web/API/Notification).
  /// If present, "title" and "body" fields override
  /// \[google.firebase.fcm.v1.Notification.title\] and
  /// \[google.firebase.fcm.v1.Notification.body\].
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? notification;

  WebpushConfig({
    this.data,
    this.fcmOptions,
    this.headers,
    this.notification,
  });

  WebpushConfig.fromJson(core.Map json_)
      : this(
          data: (json_['data'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          fcmOptions: json_.containsKey('fcmOptions')
              ? WebpushFcmOptions.fromJson(
                  json_['fcmOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          headers:
              (json_['headers'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          notification: json_.containsKey('notification')
              ? json_['notification'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (data != null) 'data': data!,
        if (fcmOptions != null) 'fcmOptions': fcmOptions!,
        if (headers != null) 'headers': headers!,
        if (notification != null) 'notification': notification!,
      };
}

/// Options for features provided by the FCM SDK for Web.
class WebpushFcmOptions {
  /// Label associated with the message's analytics data.
  core.String? analyticsLabel;

  /// The link to open when the user clicks on the notification.
  ///
  /// For all URL values, HTTPS is required.
  core.String? link;

  WebpushFcmOptions({
    this.analyticsLabel,
    this.link,
  });

  WebpushFcmOptions.fromJson(core.Map json_)
      : this(
          analyticsLabel: json_['analyticsLabel'] as core.String?,
          link: json_['link'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analyticsLabel != null) 'analyticsLabel': analyticsLabel!,
        if (link != null) 'link': link!,
      };
}
