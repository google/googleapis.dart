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

/// HomeGraph API - v1
///
/// For more information, see
/// <https://developers.google.com/actions/smarthome/create-app#request-sync>
///
/// Create an instance of [HomeGraphServiceApi] to access these resources:
///
/// - [AgentUsersResource]
/// - [DevicesResource]
library homegraph.v1;

import 'dart:async' as async_1;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

class HomeGraphServiceApi {
  /// Private Service: https://www.googleapis.com/auth/homegraph
  static const homegraphScope = 'https://www.googleapis.com/auth/homegraph';

  final commons.ApiRequester _requester;

  AgentUsersResource get agentUsers => AgentUsersResource(_requester);
  DevicesResource get devices => DevicesResource(_requester);

  HomeGraphServiceApi(http.Client client,
      {core.String rootUrl = 'https://homegraph.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AgentUsersResource {
  final commons.ApiRequester _requester;

  AgentUsersResource(commons.ApiRequester client) : _requester = client;

  /// Unlinks the given third-party user from your smart home Action.
  ///
  /// All data related to this user will be deleted. For more details on how
  /// users link their accounts, see
  /// [fulfillment and authentication](https://developers.google.com/assistant/smarthome/concepts/fulfillment-authentication).
  /// The third-party user's identity is passed in via the `agent_user_id` (see
  /// DeleteAgentUserRequest). This request must be authorized using service
  /// account credentials from your Actions console project.
  ///
  /// Request parameters:
  ///
  /// [agentUserId] - Required. Third-party user ID.
  /// Value must have pattern `^agentUsers/.*$`.
  ///
  /// [requestId] - Request ID used for debugging.
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
  async_1.Future<Empty> delete(
    core.String agentUserId, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$agentUserId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class DevicesResource {
  final commons.ApiRequester _requester;

  DevicesResource(commons.ApiRequester client) : _requester = client;

  /// Gets the current states in Home Graph for the given set of the third-party
  /// user's devices.
  ///
  /// The third-party user's identity is passed in via the `agent_user_id` (see
  /// QueryRequest). This request must be authorized using service account
  /// credentials from your Actions console project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async_1.Future<QueryResponse> query(
    QueryRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/devices:query';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return QueryResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Reports device state and optionally sends device notifications.
  ///
  /// Called by your smart home Action when the state of a third-party device
  /// changes or you need to send a notification about the device. See
  /// [Implement Report State](https://developers.google.com/assistant/smarthome/develop/report-state)
  /// for more information. This method updates the device state according to
  /// its declared
  /// [traits](https://developers.google.com/assistant/smarthome/concepts/devices-traits).
  /// Publishing a new state value outside of these traits will result in an
  /// `INVALID_ARGUMENT` error response. The third-party user's identity is
  /// passed in via the `agent_user_id` (see ReportStateAndNotificationRequest).
  /// This request must be authorized using service account credentials from
  /// your Actions console project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReportStateAndNotificationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async_1.Future<ReportStateAndNotificationResponse> reportStateAndNotification(
    ReportStateAndNotificationRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/devices:reportStateAndNotification';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReportStateAndNotificationResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Requests Google to send an `action.devices.SYNC`
  /// [intent](https://developers.google.com/assistant/smarthome/reference/intent/sync)
  /// to your smart home Action to update device metadata for the given user.
  ///
  /// The third-party user's identity is passed via the `agent_user_id` (see
  /// RequestSyncDevicesRequest). This request must be authorized using service
  /// account credentials from your Actions console project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RequestSyncDevicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async_1.Future<RequestSyncDevicesResponse> requestSync(
    RequestSyncDevicesRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/devices:requestSync';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RequestSyncDevicesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets all the devices associated with the given third-party user.
  ///
  /// The third-party user's identity is passed in via the `agent_user_id` (see
  /// SyncRequest). This request must be authorized using service account
  /// credentials from your Actions console project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SyncResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async_1.Future<SyncResponse> sync(
    SyncRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/devices:sync';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SyncResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Third-party device ID for one device.
class AgentDeviceId {
  /// Third-party device ID.
  core.String? id;

  AgentDeviceId({
    this.id,
  });

  AgentDeviceId.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
      };
}

/// Alternate third-party device ID.
class AgentOtherDeviceId {
  /// Project ID for your smart home Action.
  core.String? agentId;

  /// Unique third-party device ID.
  core.String? deviceId;

  AgentOtherDeviceId({
    this.agentId,
    this.deviceId,
  });

  AgentOtherDeviceId.fromJson(core.Map json_)
      : this(
          agentId: json_.containsKey('agentId')
              ? json_['agentId'] as core.String
              : null,
          deviceId: json_.containsKey('deviceId')
              ? json_['deviceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentId != null) 'agentId': agentId!,
        if (deviceId != null) 'deviceId': deviceId!,
      };
}

/// Third-party device definition.
///
/// Next ID = 14
class Device {
  /// Attributes for the traits supported by the device.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? attributes;

  /// Custom device attributes stored in Home Graph and provided to your smart
  /// home Action in each
  /// [QUERY](https://developers.google.com/assistant/smarthome/reference/intent/query)
  /// and
  /// [EXECUTE](https://developers.google.com/assistant/smarthome/reference/intent/execute)
  /// intent.
  ///
  /// Data in this object has a few constraints: No sensitive information,
  /// including but not limited to Personally Identifiable Information.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? customData;

  /// Device manufacturer, model, hardware version, and software version.
  DeviceInfo? deviceInfo;

  /// Third-party device ID.
  core.String? id;

  /// Names given to this device by your smart home Action.
  DeviceNames? name;

  /// Indicates whether your smart home Action will report notifications to
  /// Google for this device via ReportStateAndNotification.
  ///
  /// If your smart home Action enables users to control device notifications,
  /// you should update this field and call RequestSyncDevices.
  core.bool? notificationSupportedByAgent;

  /// Alternate IDs associated with this device.
  ///
  /// This is used to identify cloud synced devices enabled for
  /// [local fulfillment](https://developers.google.com/assistant/smarthome/concepts/local).
  core.List<AgentOtherDeviceId>? otherDeviceIds;

  /// Suggested name for the room where this device is installed.
  ///
  /// Google attempts to use this value during user setup.
  core.String? roomHint;

  /// Suggested name for the structure where this device is installed.
  ///
  /// Google attempts to use this value during user setup.
  core.String? structureHint;

  /// Traits supported by the device.
  ///
  /// See
  /// [device traits](https://developers.google.com/assistant/smarthome/traits).
  core.List<core.String>? traits;

  /// Hardware type of the device.
  ///
  /// See
  /// [device types](https://developers.google.com/assistant/smarthome/guides).
  core.String? type;

  /// Indicates whether your smart home Action will report state of this device
  /// to Google via ReportStateAndNotification.
  core.bool? willReportState;

  Device({
    this.attributes,
    this.customData,
    this.deviceInfo,
    this.id,
    this.name,
    this.notificationSupportedByAgent,
    this.otherDeviceIds,
    this.roomHint,
    this.structureHint,
    this.traits,
    this.type,
    this.willReportState,
  });

  Device.fromJson(core.Map json_)
      : this(
          attributes: json_.containsKey('attributes')
              ? json_['attributes'] as core.Map<core.String, core.dynamic>
              : null,
          customData: json_.containsKey('customData')
              ? json_['customData'] as core.Map<core.String, core.dynamic>
              : null,
          deviceInfo: json_.containsKey('deviceInfo')
              ? DeviceInfo.fromJson(
                  json_['deviceInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name')
              ? DeviceNames.fromJson(
                  json_['name'] as core.Map<core.String, core.dynamic>)
              : null,
          notificationSupportedByAgent:
              json_.containsKey('notificationSupportedByAgent')
                  ? json_['notificationSupportedByAgent'] as core.bool
                  : null,
          otherDeviceIds: json_.containsKey('otherDeviceIds')
              ? (json_['otherDeviceIds'] as core.List)
                  .map((value) => AgentOtherDeviceId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          roomHint: json_.containsKey('roomHint')
              ? json_['roomHint'] as core.String
              : null,
          structureHint: json_.containsKey('structureHint')
              ? json_['structureHint'] as core.String
              : null,
          traits: json_.containsKey('traits')
              ? (json_['traits'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          willReportState: json_.containsKey('willReportState')
              ? json_['willReportState'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributes != null) 'attributes': attributes!,
        if (customData != null) 'customData': customData!,
        if (deviceInfo != null) 'deviceInfo': deviceInfo!,
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (notificationSupportedByAgent != null)
          'notificationSupportedByAgent': notificationSupportedByAgent!,
        if (otherDeviceIds != null) 'otherDeviceIds': otherDeviceIds!,
        if (roomHint != null) 'roomHint': roomHint!,
        if (structureHint != null) 'structureHint': structureHint!,
        if (traits != null) 'traits': traits!,
        if (type != null) 'type': type!,
        if (willReportState != null) 'willReportState': willReportState!,
      };
}

/// Device information.
class DeviceInfo {
  /// Device hardware version.
  core.String? hwVersion;

  /// Device manufacturer.
  core.String? manufacturer;

  /// Device model.
  core.String? model;

  /// Device software version.
  core.String? swVersion;

  DeviceInfo({
    this.hwVersion,
    this.manufacturer,
    this.model,
    this.swVersion,
  });

  DeviceInfo.fromJson(core.Map json_)
      : this(
          hwVersion: json_.containsKey('hwVersion')
              ? json_['hwVersion'] as core.String
              : null,
          manufacturer: json_.containsKey('manufacturer')
              ? json_['manufacturer'] as core.String
              : null,
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
          swVersion: json_.containsKey('swVersion')
              ? json_['swVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hwVersion != null) 'hwVersion': hwVersion!,
        if (manufacturer != null) 'manufacturer': manufacturer!,
        if (model != null) 'model': model!,
        if (swVersion != null) 'swVersion': swVersion!,
      };
}

/// Identifiers used to describe the device.
class DeviceNames {
  /// List of names provided by the manufacturer rather than the user, such as
  /// serial numbers, SKUs, etc.
  core.List<core.String>? defaultNames;

  /// Primary name of the device, generally provided by the user.
  core.String? name;

  /// Additional names provided by the user for the device.
  core.List<core.String>? nicknames;

  DeviceNames({
    this.defaultNames,
    this.name,
    this.nicknames,
  });

  DeviceNames.fromJson(core.Map json_)
      : this(
          defaultNames: json_.containsKey('defaultNames')
              ? (json_['defaultNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nicknames: json_.containsKey('nicknames')
              ? (json_['nicknames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultNames != null) 'defaultNames': defaultNames!,
        if (name != null) 'name': name!,
        if (nicknames != null) 'nicknames': nicknames!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Request type for the
/// \[`Query`\](#google.home.graph.v1.HomeGraphApiService.Query) call.
class QueryRequest {
  /// Third-party user ID.
  ///
  /// Required.
  core.String? agentUserId;

  /// Inputs containing third-party device IDs for which to get the device
  /// states.
  ///
  /// Required.
  core.List<QueryRequestInput>? inputs;

  /// Request ID used for debugging.
  core.String? requestId;

  QueryRequest({
    this.agentUserId,
    this.inputs,
    this.requestId,
  });

  QueryRequest.fromJson(core.Map json_)
      : this(
          agentUserId: json_.containsKey('agentUserId')
              ? json_['agentUserId'] as core.String
              : null,
          inputs: json_.containsKey('inputs')
              ? (json_['inputs'] as core.List)
                  .map((value) => QueryRequestInput.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentUserId != null) 'agentUserId': agentUserId!,
        if (inputs != null) 'inputs': inputs!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Device ID inputs to QueryRequest.
class QueryRequestInput {
  /// Payload containing third-party device IDs.
  QueryRequestPayload? payload;

  QueryRequestInput({
    this.payload,
  });

  QueryRequestInput.fromJson(core.Map json_)
      : this(
          payload: json_.containsKey('payload')
              ? QueryRequestPayload.fromJson(
                  json_['payload'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (payload != null) 'payload': payload!,
      };
}

/// Payload containing device IDs.
class QueryRequestPayload {
  /// Third-party device IDs for which to get the device states.
  core.List<AgentDeviceId>? devices;

  QueryRequestPayload({
    this.devices,
  });

  QueryRequestPayload.fromJson(core.Map json_)
      : this(
          devices: json_.containsKey('devices')
              ? (json_['devices'] as core.List)
                  .map((value) => AgentDeviceId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (devices != null) 'devices': devices!,
      };
}

/// Response type for the
/// \[`Query`\](#google.home.graph.v1.HomeGraphApiService.Query) call.
///
/// This should follow the same format as the Google smart home
/// `action.devices.QUERY`
/// [response](https://developers.google.com/assistant/smarthome/reference/intent/query).
/// # Example ```json { "requestId": "ff36a3cc-ec34-11e6-b1a0-64510650abcf",
/// "payload": { "devices": { "123": { "on": true, "online": true }, "456": {
/// "on": true, "online": true, "brightness": 80, "color": { "name": "cerulean",
/// "spectrumRGB": 31655 } } } } } ```
class QueryResponse {
  /// Device states for the devices given in the request.
  QueryResponsePayload? payload;

  /// Request ID used for debugging.
  ///
  /// Copied from the request.
  core.String? requestId;

  QueryResponse({
    this.payload,
    this.requestId,
  });

  QueryResponse.fromJson(core.Map json_)
      : this(
          payload: json_.containsKey('payload')
              ? QueryResponsePayload.fromJson(
                  json_['payload'] as core.Map<core.String, core.dynamic>)
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (payload != null) 'payload': payload!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Payload containing device states information.
class QueryResponsePayload {
  /// States of the devices.
  ///
  /// Map of third-party device ID to struct of device states.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Map<core.String, core.Object?>>? devices;

  QueryResponsePayload({
    this.devices,
  });

  QueryResponsePayload.fromJson(core.Map json_)
      : this(
          devices: json_.containsKey('devices')
              ? (json_['devices'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.Map<core.String, core.dynamic>,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (devices != null) 'devices': devices!,
      };
}

/// The states and notifications specific to a device.
class ReportStateAndNotificationDevice {
  /// Notifications metadata for devices.
  ///
  /// See the **Device NOTIFICATIONS** section of the individual trait
  /// [reference guides](https://developers.google.com/assistant/smarthome/traits).
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? notifications;

  /// States of devices to update.
  ///
  /// See the **Device STATES** section of the individual trait
  /// [reference guides](https://developers.google.com/assistant/smarthome/traits).
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? states;

  ReportStateAndNotificationDevice({
    this.notifications,
    this.states,
  });

  ReportStateAndNotificationDevice.fromJson(core.Map json_)
      : this(
          notifications: json_.containsKey('notifications')
              ? json_['notifications'] as core.Map<core.String, core.dynamic>
              : null,
          states: json_.containsKey('states')
              ? json_['states'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (notifications != null) 'notifications': notifications!,
        if (states != null) 'states': states!,
      };
}

/// Request type for the
/// \[`ReportStateAndNotification`\](#google.home.graph.v1.HomeGraphApiService.ReportStateAndNotification)
/// call.
///
/// It may include states, notifications, or both. States and notifications are
/// defined per `device_id` (for example, "123" and "456" in the following
/// example). # Example ```json { "requestId":
/// "ff36a3cc-ec34-11e6-b1a0-64510650abcf", "agentUserId": "1234", "payload": {
/// "devices": { "states": { "123": { "on": true }, "456": { "on": true,
/// "brightness": 10 } }, } } } ```
class ReportStateAndNotificationRequest {
  /// Third-party user ID.
  ///
  /// Required.
  core.String? agentUserId;

  /// Unique identifier per event (for example, a doorbell press).
  core.String? eventId;

  /// Deprecated.
  core.String? followUpToken;

  /// State of devices to update and notification metadata for devices.
  ///
  /// Required.
  StateAndNotificationPayload? payload;

  /// Request ID used for debugging.
  core.String? requestId;

  ReportStateAndNotificationRequest({
    this.agentUserId,
    this.eventId,
    this.followUpToken,
    this.payload,
    this.requestId,
  });

  ReportStateAndNotificationRequest.fromJson(core.Map json_)
      : this(
          agentUserId: json_.containsKey('agentUserId')
              ? json_['agentUserId'] as core.String
              : null,
          eventId: json_.containsKey('eventId')
              ? json_['eventId'] as core.String
              : null,
          followUpToken: json_.containsKey('followUpToken')
              ? json_['followUpToken'] as core.String
              : null,
          payload: json_.containsKey('payload')
              ? StateAndNotificationPayload.fromJson(
                  json_['payload'] as core.Map<core.String, core.dynamic>)
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentUserId != null) 'agentUserId': agentUserId!,
        if (eventId != null) 'eventId': eventId!,
        if (followUpToken != null) 'followUpToken': followUpToken!,
        if (payload != null) 'payload': payload!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Response type for the
/// \[`ReportStateAndNotification`\](#google.home.graph.v1.HomeGraphApiService.ReportStateAndNotification)
/// call.
class ReportStateAndNotificationResponse {
  /// Request ID copied from ReportStateAndNotificationRequest.
  core.String? requestId;

  ReportStateAndNotificationResponse({
    this.requestId,
  });

  ReportStateAndNotificationResponse.fromJson(core.Map json_)
      : this(
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Request type for the
/// \[`RequestSyncDevices`\](#google.home.graph.v1.HomeGraphApiService.RequestSyncDevices)
/// call.
class RequestSyncDevicesRequest {
  /// Third-party user ID.
  ///
  /// Required.
  core.String? agentUserId;

  /// If set, the request will be added to a queue and a response will be
  /// returned immediately.
  ///
  /// This enables concurrent requests for the given `agent_user_id`, but the
  /// caller will not receive any error responses.
  ///
  /// Optional.
  core.bool? async;

  RequestSyncDevicesRequest({
    this.agentUserId,
    this.async,
  });

  RequestSyncDevicesRequest.fromJson(core.Map json_)
      : this(
          agentUserId: json_.containsKey('agentUserId')
              ? json_['agentUserId'] as core.String
              : null,
          async:
              json_.containsKey('async') ? json_['async'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentUserId != null) 'agentUserId': agentUserId!,
        if (async != null) 'async': async!,
      };
}

/// Response type for the
/// \[`RequestSyncDevices`\](#google.home.graph.v1.HomeGraphApiService.RequestSyncDevices)
/// call.
///
/// Intentionally empty upon success. An HTTP response code is returned with
/// more details upon failure.
typedef RequestSyncDevicesResponse = $Empty;

/// Payload containing the state and notification information for devices.
class StateAndNotificationPayload {
  /// The devices for updating state and sending notifications.
  ReportStateAndNotificationDevice? devices;

  StateAndNotificationPayload({
    this.devices,
  });

  StateAndNotificationPayload.fromJson(core.Map json_)
      : this(
          devices: json_.containsKey('devices')
              ? ReportStateAndNotificationDevice.fromJson(
                  json_['devices'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (devices != null) 'devices': devices!,
      };
}

/// Request type for the
/// \[`Sync`\](#google.home.graph.v1.HomeGraphApiService.Sync) call.
class SyncRequest {
  /// Third-party user ID.
  ///
  /// Required.
  core.String? agentUserId;

  /// Request ID used for debugging.
  core.String? requestId;

  SyncRequest({
    this.agentUserId,
    this.requestId,
  });

  SyncRequest.fromJson(core.Map json_)
      : this(
          agentUserId: json_.containsKey('agentUserId')
              ? json_['agentUserId'] as core.String
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentUserId != null) 'agentUserId': agentUserId!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Response type for the
/// \[`Sync`\](#google.home.graph.v1.HomeGraphApiService.Sync) call.
///
/// This should follow the same format as the Google smart home
/// `action.devices.SYNC`
/// [response](https://developers.google.com/assistant/smarthome/reference/intent/sync).
/// # Example ```json { "requestId": "ff36a3cc-ec34-11e6-b1a0-64510650abcf",
/// "payload": { "agentUserId": "1836.15267389", "devices": [{ "id": "123",
/// "type": "action.devices.types.OUTLET", "traits": [
/// "action.devices.traits.OnOff" ], "name": { "defaultNames": ["My Outlet
/// 1234"], "name": "Night light", "nicknames": ["wall plug"] },
/// "willReportState": false, "deviceInfo": { "manufacturer": "lights-out-inc",
/// "model": "hs1234", "hwVersion": "3.2", "swVersion": "11.4" }, "customData":
/// { "fooValue": 74, "barValue": true, "bazValue": "foo" } }] } } ```
class SyncResponse {
  /// Devices associated with the third-party user.
  SyncResponsePayload? payload;

  /// Request ID used for debugging.
  ///
  /// Copied from the request.
  core.String? requestId;

  SyncResponse({
    this.payload,
    this.requestId,
  });

  SyncResponse.fromJson(core.Map json_)
      : this(
          payload: json_.containsKey('payload')
              ? SyncResponsePayload.fromJson(
                  json_['payload'] as core.Map<core.String, core.dynamic>)
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (payload != null) 'payload': payload!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Payload containing device information.
class SyncResponsePayload {
  /// Third-party user ID
  core.String? agentUserId;

  /// Devices associated with the third-party user.
  core.List<Device>? devices;

  SyncResponsePayload({
    this.agentUserId,
    this.devices,
  });

  SyncResponsePayload.fromJson(core.Map json_)
      : this(
          agentUserId: json_.containsKey('agentUserId')
              ? json_['agentUserId'] as core.String
              : null,
          devices: json_.containsKey('devices')
              ? (json_['devices'] as core.List)
                  .map((value) => Device.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentUserId != null) 'agentUserId': agentUserId!,
        if (devices != null) 'devices': devices!,
      };
}
