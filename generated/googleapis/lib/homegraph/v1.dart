// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

library googleapis.homegraph.v1;

import 'dart:core' as core;
import 'dart:async' as async_1;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client homegraph/v1';

class HomegraphApi {
  /// New Service: https://www.googleapis.com/auth/homegraph
  static const HomegraphScope = 'https://www.googleapis.com/auth/homegraph';

  final commons.ApiRequester _requester;

  AgentUsersResourceApi get agentUsers => AgentUsersResourceApi(_requester);
  DevicesResourceApi get devices => DevicesResourceApi(_requester);

  HomegraphApi(http.Client client,
      {core.String rootUrl = 'https://homegraph.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class AgentUsersResourceApi {
  final commons.ApiRequester _requester;

  AgentUsersResourceApi(commons.ApiRequester client) : _requester = client;

  /// Unlinks the given third-party user from your smart home Action. All data
  /// related to this user will be deleted. For more details on how users link
  /// their accounts, see [fulfillment and
  /// authentication](https://developers.google.com/assistant/smarthome/concepts/fulfillment-authentication).
  /// The third-party user's identity is passed in via the `agent_user_id` (see
  /// DeleteAgentUserRequest). This request must be authorized using service
  /// account credentials from your Actions console project.
  ///
  /// Request parameters:
  ///
  /// [agentUserId] - Required. Third-party user ID.
  /// Value must have pattern "^agentUsers/.*$".
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
    core.String requestId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (agentUserId == null) {
      throw core.ArgumentError('Parameter agentUserId is required.');
    }
    if (requestId != null) {
      _queryParams['requestId'] = [requestId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$agentUserId');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Empty.fromJson(data));
  }
}

class DevicesResourceApi {
  final commons.ApiRequester _requester;

  DevicesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets the current states in Home Graph for the given set of the third-party
  /// user's devices. The third-party user's identity is passed in via the
  /// `agent_user_id` (see QueryRequest). This request must be authorized using
  /// service account credentials from your Actions console project.
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/devices:query';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => QueryResponse.fromJson(data));
  }

  /// Reports device state and optionally sends device notifications. Called by
  /// your smart home Action when the state of a third-party device changes or
  /// you need to send a notification about the device. See [Implement Report
  /// State](https://developers.google.com/assistant/smarthome/develop/report-state)
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/devices:reportStateAndNotification';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => ReportStateAndNotificationResponse.fromJson(data));
  }

  /// Requests Google to send an `action.devices.SYNC`
  /// [intent](https://developers.google.com/assistant/smarthome/reference/intent/sync)
  /// to your smart home Action to update device metadata for the given user.
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/devices:requestSync';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => RequestSyncDevicesResponse.fromJson(data));
  }

  /// Gets all the devices associated with the given third-party user. The
  /// third-party user's identity is passed in via the `agent_user_id` (see
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/devices:sync';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SyncResponse.fromJson(data));
  }
}

/// Third-party device ID for one device.
class AgentDeviceId {
  /// Third-party device ID.
  core.String id;

  AgentDeviceId();

  AgentDeviceId.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    return _json;
  }
}

/// Alternate third-party device ID.
class AgentOtherDeviceId {
  /// Project ID for your smart home Action.
  core.String agentId;

  /// Unique third-party device ID.
  core.String deviceId;

  AgentOtherDeviceId();

  AgentOtherDeviceId.fromJson(core.Map _json) {
    if (_json.containsKey('agentId')) {
      agentId = _json['agentId'];
    }
    if (_json.containsKey('deviceId')) {
      deviceId = _json['deviceId'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (agentId != null) {
      _json['agentId'] = agentId;
    }
    if (deviceId != null) {
      _json['deviceId'] = deviceId;
    }
    return _json;
  }
}

/// Third-party device definition.
class Device {
  /// Attributes for the traits supported by the device.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> attributes;

  /// Custom device attributes stored in Home Graph and provided to your smart
  /// home Action in each
  /// [QUERY](https://developers.google.com/assistant/smarthome/reference/intent/query)
  /// and
  /// [EXECUTE](https://developers.google.com/assistant/smarthome/reference/intent/execute)
  /// intent.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> customData;

  /// Device manufacturer, model, hardware version, and software version.
  DeviceInfo deviceInfo;

  /// Third-party device ID.
  core.String id;

  /// Names given to this device by your smart home Action.
  DeviceNames name;

  /// Indicates whether your smart home Action will report notifications to
  /// Google for this device via ReportStateAndNotification. If your smart home
  /// Action enables users to control device notifications, you should update
  /// this field and call RequestSyncDevices.
  core.bool notificationSupportedByAgent;

  /// Alternate IDs associated with this device. This is used to identify cloud
  /// synced devices enabled for [local
  /// fulfillment](https://developers.google.com/assistant/smarthome/concepts/local).
  core.List<AgentOtherDeviceId> otherDeviceIds;

  /// Suggested name for the room where this device is installed. Google
  /// attempts to use this value during user setup.
  core.String roomHint;

  /// Suggested name for the structure where this device is installed. Google
  /// attempts to use this value during user setup.
  core.String structureHint;

  /// Traits supported by the device. See [device
  /// traits](https://developers.google.com/assistant/smarthome/traits).
  core.List<core.String> traits;

  /// Hardware type of the device. See [device
  /// types](https://developers.google.com/assistant/smarthome/guides).
  core.String type;

  /// Indicates whether your smart home Action will report state of this device
  /// to Google via ReportStateAndNotification.
  core.bool willReportState;

  Device();

  Device.fromJson(core.Map _json) {
    if (_json.containsKey('attributes')) {
      attributes =
          (_json['attributes'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('customData')) {
      customData =
          (_json['customData'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('deviceInfo')) {
      deviceInfo = DeviceInfo.fromJson(_json['deviceInfo']);
    }
    if (_json.containsKey('id')) {
      id = _json['id'];
    }
    if (_json.containsKey('name')) {
      name = DeviceNames.fromJson(_json['name']);
    }
    if (_json.containsKey('notificationSupportedByAgent')) {
      notificationSupportedByAgent = _json['notificationSupportedByAgent'];
    }
    if (_json.containsKey('otherDeviceIds')) {
      otherDeviceIds = (_json['otherDeviceIds'] as core.List)
          .map<AgentOtherDeviceId>(
              (value) => AgentOtherDeviceId.fromJson(value))
          .toList();
    }
    if (_json.containsKey('roomHint')) {
      roomHint = _json['roomHint'];
    }
    if (_json.containsKey('structureHint')) {
      structureHint = _json['structureHint'];
    }
    if (_json.containsKey('traits')) {
      traits = (_json['traits'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('type')) {
      type = _json['type'];
    }
    if (_json.containsKey('willReportState')) {
      willReportState = _json['willReportState'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (attributes != null) {
      _json['attributes'] = attributes;
    }
    if (customData != null) {
      _json['customData'] = customData;
    }
    if (deviceInfo != null) {
      _json['deviceInfo'] = deviceInfo.toJson();
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (name != null) {
      _json['name'] = name.toJson();
    }
    if (notificationSupportedByAgent != null) {
      _json['notificationSupportedByAgent'] = notificationSupportedByAgent;
    }
    if (otherDeviceIds != null) {
      _json['otherDeviceIds'] =
          otherDeviceIds.map((value) => value.toJson()).toList();
    }
    if (roomHint != null) {
      _json['roomHint'] = roomHint;
    }
    if (structureHint != null) {
      _json['structureHint'] = structureHint;
    }
    if (traits != null) {
      _json['traits'] = traits;
    }
    if (type != null) {
      _json['type'] = type;
    }
    if (willReportState != null) {
      _json['willReportState'] = willReportState;
    }
    return _json;
  }
}

/// Device information.
class DeviceInfo {
  /// Device hardware version.
  core.String hwVersion;

  /// Device manufacturer.
  core.String manufacturer;

  /// Device model.
  core.String model;

  /// Device software version.
  core.String swVersion;

  DeviceInfo();

  DeviceInfo.fromJson(core.Map _json) {
    if (_json.containsKey('hwVersion')) {
      hwVersion = _json['hwVersion'];
    }
    if (_json.containsKey('manufacturer')) {
      manufacturer = _json['manufacturer'];
    }
    if (_json.containsKey('model')) {
      model = _json['model'];
    }
    if (_json.containsKey('swVersion')) {
      swVersion = _json['swVersion'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (hwVersion != null) {
      _json['hwVersion'] = hwVersion;
    }
    if (manufacturer != null) {
      _json['manufacturer'] = manufacturer;
    }
    if (model != null) {
      _json['model'] = model;
    }
    if (swVersion != null) {
      _json['swVersion'] = swVersion;
    }
    return _json;
  }
}

/// Identifiers used to describe the device.
class DeviceNames {
  /// List of names provided by the manufacturer rather than the user, such as
  /// serial numbers, SKUs, etc.
  core.List<core.String> defaultNames;

  /// Primary name of the device, generally provided by the user.
  core.String name;

  /// Additional names provided by the user for the device.
  core.List<core.String> nicknames;

  DeviceNames();

  DeviceNames.fromJson(core.Map _json) {
    if (_json.containsKey('defaultNames')) {
      defaultNames = (_json['defaultNames'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('nicknames')) {
      nicknames = (_json['nicknames'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (defaultNames != null) {
      _json['defaultNames'] = defaultNames;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (nicknames != null) {
      _json['nicknames'] = nicknames;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance: service Foo { rpc
/// Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
/// representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// Request type for the
/// [`Query`](#google.home.graph.v1.HomeGraphApiService.Query) call.
class QueryRequest {
  /// Required. Third-party user ID.
  core.String agentUserId;

  /// Required. Inputs containing third-party device IDs for which to get the
  /// device states.
  core.List<QueryRequestInput> inputs;

  /// Request ID used for debugging.
  core.String requestId;

  QueryRequest();

  QueryRequest.fromJson(core.Map _json) {
    if (_json.containsKey('agentUserId')) {
      agentUserId = _json['agentUserId'];
    }
    if (_json.containsKey('inputs')) {
      inputs = (_json['inputs'] as core.List)
          .map<QueryRequestInput>((value) => QueryRequestInput.fromJson(value))
          .toList();
    }
    if (_json.containsKey('requestId')) {
      requestId = _json['requestId'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (agentUserId != null) {
      _json['agentUserId'] = agentUserId;
    }
    if (inputs != null) {
      _json['inputs'] = inputs.map((value) => value.toJson()).toList();
    }
    if (requestId != null) {
      _json['requestId'] = requestId;
    }
    return _json;
  }
}

/// Device ID inputs to QueryRequest.
class QueryRequestInput {
  /// Payload containing third-party device IDs.
  QueryRequestPayload payload;

  QueryRequestInput();

  QueryRequestInput.fromJson(core.Map _json) {
    if (_json.containsKey('payload')) {
      payload = QueryRequestPayload.fromJson(_json['payload']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (payload != null) {
      _json['payload'] = payload.toJson();
    }
    return _json;
  }
}

/// Payload containing device IDs.
class QueryRequestPayload {
  /// Third-party device IDs for which to get the device states.
  core.List<AgentDeviceId> devices;

  QueryRequestPayload();

  QueryRequestPayload.fromJson(core.Map _json) {
    if (_json.containsKey('devices')) {
      devices = (_json['devices'] as core.List)
          .map<AgentDeviceId>((value) => AgentDeviceId.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (devices != null) {
      _json['devices'] = devices.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response type for the
/// [`Query`](#google.home.graph.v1.HomeGraphApiService.Query) call. This should
/// follow the same format as the Google smart home `action.devices.QUERY`
/// [response](https://developers.google.com/assistant/smarthome/reference/intent/query).
/// # Example ```json { "requestId": "ff36a3cc-ec34-11e6-b1a0-64510650abcf",
/// "payload": { "devices": { "123": { "on": true, "online": true }, "456": {
/// "on": true, "online": true, "brightness": 80, "color": { "name": "cerulean",
/// "spectrumRGB": 31655 } } } } } ```
class QueryResponse {
  /// Device states for the devices given in the request.
  QueryResponsePayload payload;

  /// Request ID used for debugging. Copied from the request.
  core.String requestId;

  QueryResponse();

  QueryResponse.fromJson(core.Map _json) {
    if (_json.containsKey('payload')) {
      payload = QueryResponsePayload.fromJson(_json['payload']);
    }
    if (_json.containsKey('requestId')) {
      requestId = _json['requestId'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (payload != null) {
      _json['payload'] = payload.toJson();
    }
    if (requestId != null) {
      _json['requestId'] = requestId;
    }
    return _json;
  }
}

/// Payload containing device states information.
class QueryResponsePayload {
  /// States of the devices. Map of third-party device ID to struct of device
  /// states.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Map<core.String, core.Object>> devices;

  QueryResponsePayload();

  QueryResponsePayload.fromJson(core.Map _json) {
    if (_json.containsKey('devices')) {
      devices = commons.mapMap<core.Map, core.Map<core.String, core.Object>>(
          _json['devices'].cast<core.String, core.Map>(),
          (core.Map item) =>
              (item as core.Map).cast<core.String, core.Object>());
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (devices != null) {
      _json['devices'] = devices;
    }
    return _json;
  }
}

/// The states and notifications specific to a device.
class ReportStateAndNotificationDevice {
  /// Notifications metadata for devices. See the **Device NOTIFICATIONS**
  /// section of the individual trait [reference
  /// guides](https://developers.google.com/assistant/smarthome/traits).
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> notifications;

  /// States of devices to update. See the **Device STATES** section of the
  /// individual trait [reference
  /// guides](https://developers.google.com/assistant/smarthome/traits).
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> states;

  ReportStateAndNotificationDevice();

  ReportStateAndNotificationDevice.fromJson(core.Map _json) {
    if (_json.containsKey('notifications')) {
      notifications =
          (_json['notifications'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('states')) {
      states = (_json['states'] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (notifications != null) {
      _json['notifications'] = notifications;
    }
    if (states != null) {
      _json['states'] = states;
    }
    return _json;
  }
}

/// Request type for the
/// [`ReportStateAndNotification`](#google.home.graph.v1.HomeGraphApiService.ReportStateAndNotification)
/// call. It may include states, notifications, or both. States and
/// notifications are defined per `device_id` (for example, "123" and "456" in
/// the following example). # Example ```json { "requestId":
/// "ff36a3cc-ec34-11e6-b1a0-64510650abcf", "agentUserId": "1234", "payload": {
/// "devices": { "states": { "123": { "on": true }, "456": { "on": true,
/// "brightness": 10 } }, } } } ```
class ReportStateAndNotificationRequest {
  /// Required. Third-party user ID.
  core.String agentUserId;

  /// Unique identifier per event (for example, a doorbell press).
  core.String eventId;

  /// Token to maintain state in the follow up notification response.
  /// Deprecated. See the [notifications
  /// guide](https://developers.google.com/assistant/smarthome/develop/notifications)
  /// for details on implementing follow up notifications.
  core.String followUpToken;

  /// Required. State of devices to update and notification metadata for
  /// devices.
  StateAndNotificationPayload payload;

  /// Request ID used for debugging.
  core.String requestId;

  ReportStateAndNotificationRequest();

  ReportStateAndNotificationRequest.fromJson(core.Map _json) {
    if (_json.containsKey('agentUserId')) {
      agentUserId = _json['agentUserId'];
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'];
    }
    if (_json.containsKey('followUpToken')) {
      followUpToken = _json['followUpToken'];
    }
    if (_json.containsKey('payload')) {
      payload = StateAndNotificationPayload.fromJson(_json['payload']);
    }
    if (_json.containsKey('requestId')) {
      requestId = _json['requestId'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (agentUserId != null) {
      _json['agentUserId'] = agentUserId;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (followUpToken != null) {
      _json['followUpToken'] = followUpToken;
    }
    if (payload != null) {
      _json['payload'] = payload.toJson();
    }
    if (requestId != null) {
      _json['requestId'] = requestId;
    }
    return _json;
  }
}

/// Response type for the
/// [`ReportStateAndNotification`](#google.home.graph.v1.HomeGraphApiService.ReportStateAndNotification)
/// call.
class ReportStateAndNotificationResponse {
  /// Request ID copied from ReportStateAndNotificationRequest.
  core.String requestId;

  ReportStateAndNotificationResponse();

  ReportStateAndNotificationResponse.fromJson(core.Map _json) {
    if (_json.containsKey('requestId')) {
      requestId = _json['requestId'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (requestId != null) {
      _json['requestId'] = requestId;
    }
    return _json;
  }
}

/// Request type for the
/// [`RequestSyncDevices`](#google.home.graph.v1.HomeGraphApiService.RequestSyncDevices)
/// call.
class RequestSyncDevicesRequest {
  /// Required. Third-party user ID.
  core.String agentUserId;

  /// Optional. If set, the request will be added to a queue and a response will
  /// be returned immediately. This enables concurrent requests for the given
  /// `agent_user_id`, but the caller will not receive any error responses.
  core.bool async;

  RequestSyncDevicesRequest();

  RequestSyncDevicesRequest.fromJson(core.Map _json) {
    if (_json.containsKey('agentUserId')) {
      agentUserId = _json['agentUserId'];
    }
    if (_json.containsKey('async')) {
      async = _json['async'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (agentUserId != null) {
      _json['agentUserId'] = agentUserId;
    }
    if (async != null) {
      _json['async'] = async;
    }
    return _json;
  }
}

/// Response type for the
/// [`RequestSyncDevices`](#google.home.graph.v1.HomeGraphApiService.RequestSyncDevices)
/// call. Intentionally empty upon success. An HTTP response code is returned
/// with more details upon failure.
class RequestSyncDevicesResponse {
  RequestSyncDevicesResponse();

  RequestSyncDevicesResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// Payload containing the state and notification information for devices.
class StateAndNotificationPayload {
  /// The devices for updating state and sending notifications.
  ReportStateAndNotificationDevice devices;

  StateAndNotificationPayload();

  StateAndNotificationPayload.fromJson(core.Map _json) {
    if (_json.containsKey('devices')) {
      devices = ReportStateAndNotificationDevice.fromJson(_json['devices']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (devices != null) {
      _json['devices'] = devices.toJson();
    }
    return _json;
  }
}

/// Request type for the
/// [`Sync`](#google.home.graph.v1.HomeGraphApiService.Sync) call.
class SyncRequest {
  /// Required. Third-party user ID.
  core.String agentUserId;

  /// Request ID used for debugging.
  core.String requestId;

  SyncRequest();

  SyncRequest.fromJson(core.Map _json) {
    if (_json.containsKey('agentUserId')) {
      agentUserId = _json['agentUserId'];
    }
    if (_json.containsKey('requestId')) {
      requestId = _json['requestId'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (agentUserId != null) {
      _json['agentUserId'] = agentUserId;
    }
    if (requestId != null) {
      _json['requestId'] = requestId;
    }
    return _json;
  }
}

/// Response type for the
/// [`Sync`](#google.home.graph.v1.HomeGraphApiService.Sync) call. This should
/// follow the same format as the Google smart home `action.devices.SYNC`
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
  SyncResponsePayload payload;

  /// Request ID used for debugging. Copied from the request.
  core.String requestId;

  SyncResponse();

  SyncResponse.fromJson(core.Map _json) {
    if (_json.containsKey('payload')) {
      payload = SyncResponsePayload.fromJson(_json['payload']);
    }
    if (_json.containsKey('requestId')) {
      requestId = _json['requestId'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (payload != null) {
      _json['payload'] = payload.toJson();
    }
    if (requestId != null) {
      _json['requestId'] = requestId;
    }
    return _json;
  }
}

/// Payload containing device information.
class SyncResponsePayload {
  /// Third-party user ID
  core.String agentUserId;

  /// Devices associated with the third-party user.
  core.List<Device> devices;

  SyncResponsePayload();

  SyncResponsePayload.fromJson(core.Map _json) {
    if (_json.containsKey('agentUserId')) {
      agentUserId = _json['agentUserId'];
    }
    if (_json.containsKey('devices')) {
      devices = (_json['devices'] as core.List)
          .map<Device>((value) => Device.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (agentUserId != null) {
      _json['agentUserId'] = agentUserId;
    }
    if (devices != null) {
      _json['devices'] = devices.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}
