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

/// Firebase Cloud Messaging Data API - v1beta1
///
/// Provides additional information about Firebase Cloud Messaging (FCM) message
/// sends and deliveries.
///
/// For more information, see <https://firebase.google.com/docs/cloud-messaging>
///
/// Create an instance of [FcmdataApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsAndroidAppsResource]
///     - [ProjectsAndroidAppsDeliveryDataResource]
library fcmdata.v1beta1;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Provides additional information about Firebase Cloud Messaging (FCM) message
/// sends and deliveries.
class FcmdataApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  FcmdataApi(http.Client client,
      {core.String rootUrl = 'https://fcmdata.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsAndroidAppsResource get androidApps =>
      ProjectsAndroidAppsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsAndroidAppsResource {
  final commons.ApiRequester _requester;

  ProjectsAndroidAppsDeliveryDataResource get deliveryData =>
      ProjectsAndroidAppsDeliveryDataResource(_requester);

  ProjectsAndroidAppsResource(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsAndroidAppsDeliveryDataResource {
  final commons.ApiRequester _requester;

  ProjectsAndroidAppsDeliveryDataResource(commons.ApiRequester client)
      : _requester = client;

  /// List aggregate delivery data for the given Android application.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The application for which to list delivery data.
  /// Format: `projects/{project_id}/androidApps/{app_id}`
  /// Value must have pattern `^projects/\[^/\]+/androidApps/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of entries to return. The service may
  /// return fewer than this value. If unspecified, at most 1,000 entries will
  /// be returned. The maximum value is 10,000; values above 10,000 will be
  /// capped to 10,000. This default may change over time.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListAndroidDeliveryDataRequest` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListAndroidDeliveryDataRequest` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse>
      list(
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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/deliveryData';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Message delivery data for a given date, app, and analytics label
/// combination.
class GoogleFirebaseFcmDataV1beta1AndroidDeliveryData {
  /// The analytics label associated with the messages sent.
  ///
  /// All messages sent without an analytics label will be grouped together in a
  /// single entry.
  core.String? analyticsLabel;

  /// The app ID to which the messages were sent.
  core.String? appId;

  /// The data for the specified appId, date, and analyticsLabel.
  GoogleFirebaseFcmDataV1beta1Data? data;

  /// The date represented by this entry.
  GoogleTypeDate? date;

  GoogleFirebaseFcmDataV1beta1AndroidDeliveryData({
    this.analyticsLabel,
    this.appId,
    this.data,
    this.date,
  });

  GoogleFirebaseFcmDataV1beta1AndroidDeliveryData.fromJson(core.Map _json)
      : this(
          analyticsLabel: _json.containsKey('analyticsLabel')
              ? _json['analyticsLabel'] as core.String
              : null,
          appId:
              _json.containsKey('appId') ? _json['appId'] as core.String : null,
          data: _json.containsKey('data')
              ? GoogleFirebaseFcmDataV1beta1Data.fromJson(
                  _json['data'] as core.Map<core.String, core.dynamic>)
              : null,
          date: _json.containsKey('date')
              ? GoogleTypeDate.fromJson(
                  _json['date'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analyticsLabel != null) 'analyticsLabel': analyticsLabel!,
        if (appId != null) 'appId': appId!,
        if (data != null) 'data': data!.toJson(),
        if (date != null) 'date': date!.toJson(),
      };
}

/// Data detailing messaging delivery
class GoogleFirebaseFcmDataV1beta1Data {
  /// Count of messages accepted by FCM intended to Android devices.
  ///
  /// The targeted device must have opted in to the collection of usage and
  /// diagnostic information.
  core.String? countMessagesAccepted;

  /// Additional information about delivery performance for messages that were
  /// successfully delivered.
  GoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents?
      deliveryPerformancePercents;

  /// Additional general insights about message delivery.
  GoogleFirebaseFcmDataV1beta1MessageInsightPercents? messageInsightPercents;

  /// Mutually exclusive breakdown of message delivery outcomes.
  GoogleFirebaseFcmDataV1beta1MessageOutcomePercents? messageOutcomePercents;

  GoogleFirebaseFcmDataV1beta1Data({
    this.countMessagesAccepted,
    this.deliveryPerformancePercents,
    this.messageInsightPercents,
    this.messageOutcomePercents,
  });

  GoogleFirebaseFcmDataV1beta1Data.fromJson(core.Map _json)
      : this(
          countMessagesAccepted: _json.containsKey('countMessagesAccepted')
              ? _json['countMessagesAccepted'] as core.String
              : null,
          deliveryPerformancePercents:
              _json.containsKey('deliveryPerformancePercents')
                  ? GoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents
                      .fromJson(_json['deliveryPerformancePercents']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          messageInsightPercents: _json.containsKey('messageInsightPercents')
              ? GoogleFirebaseFcmDataV1beta1MessageInsightPercents.fromJson(
                  _json['messageInsightPercents']
                      as core.Map<core.String, core.dynamic>)
              : null,
          messageOutcomePercents: _json.containsKey('messageOutcomePercents')
              ? GoogleFirebaseFcmDataV1beta1MessageOutcomePercents.fromJson(
                  _json['messageOutcomePercents']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (countMessagesAccepted != null)
          'countMessagesAccepted': countMessagesAccepted!,
        if (deliveryPerformancePercents != null)
          'deliveryPerformancePercents': deliveryPerformancePercents!.toJson(),
        if (messageInsightPercents != null)
          'messageInsightPercents': messageInsightPercents!.toJson(),
        if (messageOutcomePercents != null)
          'messageOutcomePercents': messageOutcomePercents!.toJson(),
      };
}

/// Overview of delivery performance for messages that were successfully
/// delivered.
///
/// All percentages are calculated with countMessagesAccepted as the
/// denominator. These categories are not mutually exclusive; a message can be
/// delayed for multiple reasons.
class GoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents {
  /// The percentage of accepted messages that were delayed because the device
  /// was in doze mode.
  ///
  /// Only
  /// [normal priority messages](https://firebase.google.com/docs/cloud-messaging/concept-options#setting-the-priority-of-a-message)
  /// should be delayed due to doze mode.
  core.double? delayedDeviceDoze;

  /// The percentage of accepted messages that were delayed because the target
  /// device was not connected at the time of sending.
  ///
  /// These messages were eventually delivered when the device reconnected.
  core.double? delayedDeviceOffline;

  /// The percentage of accepted messages that were delayed due to message
  /// throttling, such as
  /// [collapsible message throttling](https://firebase.google.com/docs/cloud-messaging/concept-options#collapsible_throttling)
  /// or
  /// [maximum message rate throttling](https://firebase.google.com/docs/cloud-messaging/concept-options#device_throttling).
  core.double? delayedMessageThrottled;

  /// The percentage of accepted messages that were delayed because the intended
  /// device user-profile was
  /// [stopped](https://firebase.google.com/docs/cloud-messaging/android/receive#handling_messages)
  /// on the target device at the time of the send.
  ///
  /// The messages were eventually delivered when the user-profile was started
  /// again.
  core.double? delayedUserStopped;

  /// The percentage of accepted messages that were delivered to the device
  /// without delay from the FCM system.
  core.double? deliveredNoDelay;

  GoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents({
    this.delayedDeviceDoze,
    this.delayedDeviceOffline,
    this.delayedMessageThrottled,
    this.delayedUserStopped,
    this.deliveredNoDelay,
  });

  GoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents.fromJson(
      core.Map _json)
      : this(
          delayedDeviceDoze: _json.containsKey('delayedDeviceDoze')
              ? (_json['delayedDeviceDoze'] as core.num).toDouble()
              : null,
          delayedDeviceOffline: _json.containsKey('delayedDeviceOffline')
              ? (_json['delayedDeviceOffline'] as core.num).toDouble()
              : null,
          delayedMessageThrottled: _json.containsKey('delayedMessageThrottled')
              ? (_json['delayedMessageThrottled'] as core.num).toDouble()
              : null,
          delayedUserStopped: _json.containsKey('delayedUserStopped')
              ? (_json['delayedUserStopped'] as core.num).toDouble()
              : null,
          deliveredNoDelay: _json.containsKey('deliveredNoDelay')
              ? (_json['deliveredNoDelay'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (delayedDeviceDoze != null) 'delayedDeviceDoze': delayedDeviceDoze!,
        if (delayedDeviceOffline != null)
          'delayedDeviceOffline': delayedDeviceOffline!,
        if (delayedMessageThrottled != null)
          'delayedMessageThrottled': delayedMessageThrottled!,
        if (delayedUserStopped != null)
          'delayedUserStopped': delayedUserStopped!,
        if (deliveredNoDelay != null) 'deliveredNoDelay': deliveredNoDelay!,
      };
}

/// Response message for ListAndroidDeliveryData.
class GoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse {
  /// The delivery data for the provided app.
  ///
  /// There will be one entry per combination of app, date, and analytics label.
  core.List<GoogleFirebaseFcmDataV1beta1AndroidDeliveryData>?
      androidDeliveryData;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse({
    this.androidDeliveryData,
    this.nextPageToken,
  });

  GoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse.fromJson(
      core.Map _json)
      : this(
          androidDeliveryData: _json.containsKey('androidDeliveryData')
              ? (_json['androidDeliveryData'] as core.List)
                  .map((value) =>
                      GoogleFirebaseFcmDataV1beta1AndroidDeliveryData.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidDeliveryData != null)
          'androidDeliveryData':
              androidDeliveryData!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Additional information about message delivery.
///
/// All percentages are calculated with countMessagesAccepted as the
/// denominator.
class GoogleFirebaseFcmDataV1beta1MessageInsightPercents {
  /// The percentage of accepted messages that had their priority lowered from
  /// high to normal due to
  /// [app standby buckets](https://firebase.google.com/docs/cloud-messaging/concept-options#setting-the-priority-of-a-message).
  core.double? priorityLowered;

  GoogleFirebaseFcmDataV1beta1MessageInsightPercents({
    this.priorityLowered,
  });

  GoogleFirebaseFcmDataV1beta1MessageInsightPercents.fromJson(core.Map _json)
      : this(
          priorityLowered: _json.containsKey('priorityLowered')
              ? (_json['priorityLowered'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (priorityLowered != null) 'priorityLowered': priorityLowered!,
      };
}

/// Percentage breakdown of message delivery outcomes.
///
/// These categories are mutually exclusive. All percentages are calculated with
/// countMessagesAccepted as the denominator. These categories may not account
/// for all message outcomes.
class GoogleFirebaseFcmDataV1beta1MessageOutcomePercents {
  /// The percentage of all accepted messages that were successfully delivered
  /// to the device.
  core.double? delivered;

  /// The percentage of accepted messages that were dropped because the
  /// application was force stopped on the device at the time of delivery and
  /// retries were unsuccessful.
  core.double? droppedAppForceStopped;

  /// The percentage of accepted messages that were dropped because the target
  /// device is inactive.
  ///
  /// FCM will drop messages if the target device is deemed inactive by our
  /// servers. If a device does reconnect, we call
  /// \[OnDeletedMessages()\](https://firebase.google.com/docs/cloud-messaging/android/receive#override-ondeletedmessages)
  /// in our SDK instead of delivering the messages.
  core.double? droppedDeviceInactive;

  /// The percentage of accepted messages that were dropped due to \[too many
  /// undelivered non-collapsible
  /// messages\](https://firebase.google.com/docs/cloud-messaging/concept-options#collapsible_and_non-collapsible_messages).
  ///
  /// Specifically, each app instance can only have 100 pending messages stored
  /// on our servers for a device which is disconnected. When that device
  /// reconnects, those messages are delivered. When there are more than the
  /// maximum pending messages, we call
  /// \[OnDeletedMessages()\](https://firebase.google.com/docs/cloud-messaging/android/receive#override-ondeletedmessages)
  /// in our SDK instead of delivering the messages.
  core.double? droppedTooManyPendingMessages;

  /// The percentage of messages accepted on this day that were not dropped and
  /// not delivered, due to the device being disconnected (as of the end of the
  /// America/Los_Angeles day when the message was sent to FCM).
  ///
  /// A portion of these messages will be delivered the next day when the device
  /// connects but others may be destined to devices that ultimately never
  /// reconnect.
  core.double? pending;

  GoogleFirebaseFcmDataV1beta1MessageOutcomePercents({
    this.delivered,
    this.droppedAppForceStopped,
    this.droppedDeviceInactive,
    this.droppedTooManyPendingMessages,
    this.pending,
  });

  GoogleFirebaseFcmDataV1beta1MessageOutcomePercents.fromJson(core.Map _json)
      : this(
          delivered: _json.containsKey('delivered')
              ? (_json['delivered'] as core.num).toDouble()
              : null,
          droppedAppForceStopped: _json.containsKey('droppedAppForceStopped')
              ? (_json['droppedAppForceStopped'] as core.num).toDouble()
              : null,
          droppedDeviceInactive: _json.containsKey('droppedDeviceInactive')
              ? (_json['droppedDeviceInactive'] as core.num).toDouble()
              : null,
          droppedTooManyPendingMessages: _json
                  .containsKey('droppedTooManyPendingMessages')
              ? (_json['droppedTooManyPendingMessages'] as core.num).toDouble()
              : null,
          pending: _json.containsKey('pending')
              ? (_json['pending'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (delivered != null) 'delivered': delivered!,
        if (droppedAppForceStopped != null)
          'droppedAppForceStopped': droppedAppForceStopped!,
        if (droppedDeviceInactive != null)
          'droppedDeviceInactive': droppedDeviceInactive!,
        if (droppedTooManyPendingMessages != null)
          'droppedTooManyPendingMessages': droppedTooManyPendingMessages!,
        if (pending != null) 'pending': pending!,
      };
}

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values * A month and day value, with a zero year, such as an
/// anniversary * A year on its own, with zero month and day values * A year and
/// month value, with a zero day, such as a credit card expiration date Related
/// types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
class GoogleTypeDate {
  /// Day of a month.
  ///
  /// Must be from 1 to 31 and valid for the year and month, or 0 to specify a
  /// year by itself or a year and month where the day isn't significant.
  core.int? day;

  /// Month of a year.
  ///
  /// Must be from 1 to 12, or 0 to specify a year without a month and day.
  core.int? month;

  /// Year of the date.
  ///
  /// Must be from 1 to 9999, or 0 to specify a date without a year.
  core.int? year;

  GoogleTypeDate({
    this.day,
    this.month,
    this.year,
  });

  GoogleTypeDate.fromJson(core.Map _json)
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
