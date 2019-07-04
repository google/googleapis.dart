// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.fcm.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client fcm/v1';

/// FCM send API that provides a cross-platform messaging solution to reliably
/// deliver messages at no cost.
class FcmApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  FcmApi(http.Client client,
      {core.String rootUrl = "https://fcm.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsMessagesResourceApi get messages =>
      new ProjectsMessagesResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsMessagesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsMessagesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Send a message to specified target (a registration token, topic
  /// or condition).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. It contains the Firebase project id (i.e. the unique
  /// identifier
  /// for your Firebase project), in the format of `projects/{project_id}`.
  /// For legacy support, the numeric project number with no padding is also
  /// supported in the format of `projects/{project_number}`.
  /// Value must have pattern "^projects/[^/]+$".
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
  async.Future<Message> send(SendMessageRequest request, core.String parent,
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
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/messages:send';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }
}

/// Android specific options for messages sent through
/// [FCM connection server](https://goo.gl/4GLdUl).
class AndroidConfig {
  /// An identifier of a group of messages that can be collapsed, so that only
  /// the last message gets sent when delivery can be resumed. A maximum of 4
  /// different collapse keys is allowed at any given time.
  core.String collapseKey;

  /// Arbitrary key/value payload. If present, it will override
  /// google.firebase.fcm.v1.Message.data.
  core.Map<core.String, core.String> data;

  /// Options for features provided by the FCM SDK for Android.
  AndroidFcmOptions fcmOptions;

  /// Notification to send to android devices.
  AndroidNotification notification;

  /// Message priority. Can take "normal" and "high" values.
  /// For more information, see [Setting the priority of a
  /// message](https://goo.gl/GjONJv).
  /// Possible string values are:
  /// - "NORMAL" : Default priority for data messages. Normal priority messages
  /// won't open
  /// network connections on a sleeping device, and their delivery may be
  /// delayed to conserve the battery. For less time-sensitive messages, such
  /// as notifications of new email or other data to sync, choose normal
  /// delivery priority.
  /// - "HIGH" : Default priority for notification messages. FCM attempts to
  /// deliver high
  /// priority messages immediately, allowing the FCM service to wake a
  /// sleeping device when possible and open a network connection to your app
  /// server. Apps with instant messaging, chat, or voice call alerts, for
  /// example, generally need to open a network connection and make sure FCM
  /// delivers the message to the device without delay. Set high priority if
  /// the message is time-critical and requires the user's immediate
  /// interaction, but beware that setting your messages to high priority
  /// contributes more to battery drain compared with normal priority messages.
  core.String priority;

  /// Package name of the application where the registration token must match in
  /// order to receive the message.
  core.String restrictedPackageName;

  /// How long (in seconds) the message should be kept in FCM storage if the
  /// device is offline. The maximum time to live supported is 4 weeks, and the
  /// default value is 4 weeks if not set. Set it to 0 if want to send the
  /// message immediately.
  /// In JSON format, the Duration type is encoded as a string rather than an
  /// object, where the string ends in the suffix "s" (indicating seconds) and
  /// is preceded by the number of seconds, with nanoseconds expressed as
  /// fractional seconds. For example, 3 seconds with 0 nanoseconds should be
  /// encoded in JSON format as "3s", while 3 seconds and 1 nanosecond should
  /// be expressed in JSON format as "3.000000001s". The ttl will be rounded
  /// down
  /// to the nearest second.
  core.String ttl;

  AndroidConfig();

  AndroidConfig.fromJson(core.Map _json) {
    if (_json.containsKey("collapseKey")) {
      collapseKey = _json["collapseKey"];
    }
    if (_json.containsKey("data")) {
      data = (_json["data"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("fcmOptions")) {
      fcmOptions = new AndroidFcmOptions.fromJson(_json["fcmOptions"]);
    }
    if (_json.containsKey("notification")) {
      notification = new AndroidNotification.fromJson(_json["notification"]);
    }
    if (_json.containsKey("priority")) {
      priority = _json["priority"];
    }
    if (_json.containsKey("restrictedPackageName")) {
      restrictedPackageName = _json["restrictedPackageName"];
    }
    if (_json.containsKey("ttl")) {
      ttl = _json["ttl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (collapseKey != null) {
      _json["collapseKey"] = collapseKey;
    }
    if (data != null) {
      _json["data"] = data;
    }
    if (fcmOptions != null) {
      _json["fcmOptions"] = (fcmOptions).toJson();
    }
    if (notification != null) {
      _json["notification"] = (notification).toJson();
    }
    if (priority != null) {
      _json["priority"] = priority;
    }
    if (restrictedPackageName != null) {
      _json["restrictedPackageName"] = restrictedPackageName;
    }
    if (ttl != null) {
      _json["ttl"] = ttl;
    }
    return _json;
  }
}

/// Options for features provided by the FCM SDK for Android.
class AndroidFcmOptions {
  /// Label associated with the message's analytics data.
  core.String analyticsLabel;

  AndroidFcmOptions();

  AndroidFcmOptions.fromJson(core.Map _json) {
    if (_json.containsKey("analyticsLabel")) {
      analyticsLabel = _json["analyticsLabel"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (analyticsLabel != null) {
      _json["analyticsLabel"] = analyticsLabel;
    }
    return _json;
  }
}

/// Notification to send to android devices.
class AndroidNotification {
  /// The notification's body text. If present, it will override
  /// google.firebase.fcm.v1.Notification.body.
  core.String body;

  /// Variable string values to be used in place of the format specifiers in
  /// body_loc_key to use to localize the body text to the user's current
  /// localization.
  /// See [Formatting and Styling](https://goo.gl/MalYE3) for more information.
  core.List<core.String> bodyLocArgs;

  /// The key to the body string in the app's string resources to use to
  /// localize
  /// the body text to the user's current localization.
  /// See [String Resources](https://goo.gl/NdFZGI) for more information.
  core.String bodyLocKey;

  /// The [notification's channel
  /// id](https://developer.android.com/guide/topics/ui/notifiers/notifications#ManageChannels)
  /// (new in Android O). The app must create a channel with this channel ID
  /// before any notification with this channel ID is received. If you don't
  /// send
  /// this channel ID in the request, or if the channel ID provided has not yet
  /// been created by the app, FCM uses the channel ID specified in the app
  /// manifest.
  core.String channelId;

  /// The action associated with a user click on the notification.
  /// If specified, an activity with a matching intent filter is launched when
  /// a user clicks on the notification.
  core.String clickAction;

  /// The notification's icon color, expressed in #rrggbb format.
  core.String color;

  /// The notification's icon.
  /// Sets the notification icon to myicon for drawable resource myicon.
  /// If you don't send this key in the request, FCM displays the launcher icon
  /// specified in your app manifest.
  core.String icon;

  /// The sound to play when the device receives the notification.
  /// Supports "default" or the filename of a sound resource bundled in the app.
  /// Sound files must reside in /res/raw/.
  core.String sound;

  /// Identifier used to replace existing notifications in the notification
  /// drawer.
  /// If not specified, each request creates a new notification.
  /// If specified and a notification with the same tag is already being shown,
  /// the new notification replaces the existing one in the notification drawer.
  core.String tag;

  /// The notification's title. If present, it will override
  /// google.firebase.fcm.v1.Notification.title.
  core.String title;

  /// Variable string values to be used in place of the format specifiers in
  /// title_loc_key to use to localize the title text to the user's current
  /// localization.
  /// See [Formatting and Styling](https://goo.gl/MalYE3) for more information.
  core.List<core.String> titleLocArgs;

  /// The key to the title string in the app's string resources to use to
  /// localize the title text to the user's current localization.
  /// See [String Resources](https://goo.gl/NdFZGI) for more information.
  core.String titleLocKey;

  AndroidNotification();

  AndroidNotification.fromJson(core.Map _json) {
    if (_json.containsKey("body")) {
      body = _json["body"];
    }
    if (_json.containsKey("bodyLocArgs")) {
      bodyLocArgs = (_json["bodyLocArgs"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("bodyLocKey")) {
      bodyLocKey = _json["bodyLocKey"];
    }
    if (_json.containsKey("channelId")) {
      channelId = _json["channelId"];
    }
    if (_json.containsKey("clickAction")) {
      clickAction = _json["clickAction"];
    }
    if (_json.containsKey("color")) {
      color = _json["color"];
    }
    if (_json.containsKey("icon")) {
      icon = _json["icon"];
    }
    if (_json.containsKey("sound")) {
      sound = _json["sound"];
    }
    if (_json.containsKey("tag")) {
      tag = _json["tag"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("titleLocArgs")) {
      titleLocArgs = (_json["titleLocArgs"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("titleLocKey")) {
      titleLocKey = _json["titleLocKey"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (body != null) {
      _json["body"] = body;
    }
    if (bodyLocArgs != null) {
      _json["bodyLocArgs"] = bodyLocArgs;
    }
    if (bodyLocKey != null) {
      _json["bodyLocKey"] = bodyLocKey;
    }
    if (channelId != null) {
      _json["channelId"] = channelId;
    }
    if (clickAction != null) {
      _json["clickAction"] = clickAction;
    }
    if (color != null) {
      _json["color"] = color;
    }
    if (icon != null) {
      _json["icon"] = icon;
    }
    if (sound != null) {
      _json["sound"] = sound;
    }
    if (tag != null) {
      _json["tag"] = tag;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (titleLocArgs != null) {
      _json["titleLocArgs"] = titleLocArgs;
    }
    if (titleLocKey != null) {
      _json["titleLocKey"] = titleLocKey;
    }
    return _json;
  }
}

/// [Apple Push Notification Service](https://goo.gl/MXRTPa) specific options.
class ApnsConfig {
  /// Options for features provided by the FCM SDK for iOS.
  ApnsFcmOptions fcmOptions;

  /// HTTP request headers defined in Apple Push Notification Service. Refer to
  /// [APNs request headers](https://goo.gl/C6Yhia) for
  /// supported headers, e.g. "apns-priority": "10".
  core.Map<core.String, core.String> headers;

  /// APNs payload as a JSON object, including both `aps` dictionary and custom
  /// payload. See [Payload Key Reference](https://goo.gl/32Pl5W).
  /// If present, it overrides google.firebase.fcm.v1.Notification.title
  /// and google.firebase.fcm.v1.Notification.body.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> payload;

  ApnsConfig();

  ApnsConfig.fromJson(core.Map _json) {
    if (_json.containsKey("fcmOptions")) {
      fcmOptions = new ApnsFcmOptions.fromJson(_json["fcmOptions"]);
    }
    if (_json.containsKey("headers")) {
      headers = (_json["headers"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("payload")) {
      payload = (_json["payload"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fcmOptions != null) {
      _json["fcmOptions"] = (fcmOptions).toJson();
    }
    if (headers != null) {
      _json["headers"] = headers;
    }
    if (payload != null) {
      _json["payload"] = payload;
    }
    return _json;
  }
}

/// Options for features provided by the FCM SDK for iOS.
class ApnsFcmOptions {
  /// Label associated with the message's analytics data.
  core.String analyticsLabel;

  ApnsFcmOptions();

  ApnsFcmOptions.fromJson(core.Map _json) {
    if (_json.containsKey("analyticsLabel")) {
      analyticsLabel = _json["analyticsLabel"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (analyticsLabel != null) {
      _json["analyticsLabel"] = analyticsLabel;
    }
    return _json;
  }
}

/// Platform independent options for features provided by the FCM SDKs.
class FcmOptions {
  /// Label associated with the message's analytics data.
  core.String analyticsLabel;

  FcmOptions();

  FcmOptions.fromJson(core.Map _json) {
    if (_json.containsKey("analyticsLabel")) {
      analyticsLabel = _json["analyticsLabel"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (analyticsLabel != null) {
      _json["analyticsLabel"] = analyticsLabel;
    }
    return _json;
  }
}

/// Message to send by Firebase Cloud Messaging Service.
class Message {
  /// Input only. Android specific options for messages sent through
  /// [FCM connection server](https://goo.gl/4GLdUl).
  AndroidConfig android;

  /// Input only. [Apple Push Notification Service](https://goo.gl/MXRTPa)
  /// specific options.
  ApnsConfig apns;

  /// Condition to send a message to,
  /// e.g. "'foo' in topics && 'bar' in topics".
  core.String condition;

  /// Input only. Arbitrary key/value payload.
  core.Map<core.String, core.String> data;

  /// Input only. Template for FCM SDK feature options to use across all
  /// platforms.
  FcmOptions fcmOptions;

  /// Output Only. The identifier of the message sent, in the format of
  /// `projects / * /messages/{message_id}`.
  core.String name;

  /// Input only. Basic notification template to use across all platforms.
  Notification notification;

  /// Registration token to send a message to.
  core.String token;

  /// Topic name to send a message to, e.g. "weather".
  /// Note: "/topics/" prefix should not be provided.
  core.String topic;

  /// Input only. [Webpush protocol](https://tools.ietf.org/html/rfc8030)
  /// options.
  WebpushConfig webpush;

  Message();

  Message.fromJson(core.Map _json) {
    if (_json.containsKey("android")) {
      android = new AndroidConfig.fromJson(_json["android"]);
    }
    if (_json.containsKey("apns")) {
      apns = new ApnsConfig.fromJson(_json["apns"]);
    }
    if (_json.containsKey("condition")) {
      condition = _json["condition"];
    }
    if (_json.containsKey("data")) {
      data = (_json["data"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("fcmOptions")) {
      fcmOptions = new FcmOptions.fromJson(_json["fcmOptions"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notification")) {
      notification = new Notification.fromJson(_json["notification"]);
    }
    if (_json.containsKey("token")) {
      token = _json["token"];
    }
    if (_json.containsKey("topic")) {
      topic = _json["topic"];
    }
    if (_json.containsKey("webpush")) {
      webpush = new WebpushConfig.fromJson(_json["webpush"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (android != null) {
      _json["android"] = (android).toJson();
    }
    if (apns != null) {
      _json["apns"] = (apns).toJson();
    }
    if (condition != null) {
      _json["condition"] = condition;
    }
    if (data != null) {
      _json["data"] = data;
    }
    if (fcmOptions != null) {
      _json["fcmOptions"] = (fcmOptions).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (notification != null) {
      _json["notification"] = (notification).toJson();
    }
    if (token != null) {
      _json["token"] = token;
    }
    if (topic != null) {
      _json["topic"] = topic;
    }
    if (webpush != null) {
      _json["webpush"] = (webpush).toJson();
    }
    return _json;
  }
}

/// Basic notification template to use across all platforms.
class Notification {
  /// The notification's body text.
  core.String body;

  /// The notification's title.
  core.String title;

  Notification();

  Notification.fromJson(core.Map _json) {
    if (_json.containsKey("body")) {
      body = _json["body"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (body != null) {
      _json["body"] = body;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// Request to send a message to specified target.
class SendMessageRequest {
  /// Required. Message to send.
  Message message;

  /// Flag for testing the request without actually delivering the message.
  core.bool validateOnly;

  SendMessageRequest();

  SendMessageRequest.fromJson(core.Map _json) {
    if (_json.containsKey("message")) {
      message = new Message.fromJson(_json["message"]);
    }
    if (_json.containsKey("validateOnly")) {
      validateOnly = _json["validateOnly"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (message != null) {
      _json["message"] = (message).toJson();
    }
    if (validateOnly != null) {
      _json["validateOnly"] = validateOnly;
    }
    return _json;
  }
}

/// [Webpush protocol](https://tools.ietf.org/html/rfc8030) options.
class WebpushConfig {
  /// Arbitrary key/value payload. If present, it will override
  /// google.firebase.fcm.v1.Message.data.
  core.Map<core.String, core.String> data;

  /// Options for features provided by the FCM SDK for Web.
  WebpushFcmOptions fcmOptions;

  /// HTTP headers defined in webpush protocol. Refer to
  /// [Webpush protocol](https://tools.ietf.org/html/rfc8030#section-5) for
  /// supported headers, e.g. "TTL": "15".
  core.Map<core.String, core.String> headers;

  /// Web Notification options as a JSON object. Supports Notification instance
  /// properties as defined in [Web Notification
  /// API](https://developer.mozilla.org/en-US/docs/Web/API/Notification). If
  /// present, "title" and "body" fields override
  /// [google.firebase.fcm.v1.Notification.title] and
  /// [google.firebase.fcm.v1.Notification.body].
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> notification;

  WebpushConfig();

  WebpushConfig.fromJson(core.Map _json) {
    if (_json.containsKey("data")) {
      data = (_json["data"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("fcmOptions")) {
      fcmOptions = new WebpushFcmOptions.fromJson(_json["fcmOptions"]);
    }
    if (_json.containsKey("headers")) {
      headers = (_json["headers"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("notification")) {
      notification =
          (_json["notification"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (data != null) {
      _json["data"] = data;
    }
    if (fcmOptions != null) {
      _json["fcmOptions"] = (fcmOptions).toJson();
    }
    if (headers != null) {
      _json["headers"] = headers;
    }
    if (notification != null) {
      _json["notification"] = notification;
    }
    return _json;
  }
}

/// Options for features provided by the FCM SDK for Web.
class WebpushFcmOptions {
  /// The link to open when the user clicks on the notification.
  /// For all URL values, HTTPS is required.
  core.String link;

  WebpushFcmOptions();

  WebpushFcmOptions.fromJson(core.Map _json) {
    if (_json.containsKey("link")) {
      link = _json["link"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (link != null) {
      _json["link"] = link;
    }
    return _json;
  }
}
