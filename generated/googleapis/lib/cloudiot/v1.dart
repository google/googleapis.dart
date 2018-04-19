// This is a generated file (see the discoveryapis_generator project).

library googleapis.cloudiot.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudiot/v1';

/// Registers and manages IoT (Internet of Things) devices that connect to the
/// Google Cloud Platform.
class CloudiotApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// Register and manage devices in the Google Cloud IoT service
  static const CloudiotScope = "https://www.googleapis.com/auth/cloudiot";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  CloudiotApi(http.Client client,
      {core.String rootUrl: "https://cloudiot.googleapis.com/",
      core.String servicePath: ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsResourceApi get locations =>
      new ProjectsLocationsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsRegistriesResourceApi get registries =>
      new ProjectsLocationsRegistriesResourceApi(_requester);

  ProjectsLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsRegistriesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsRegistriesDevicesResourceApi get devices =>
      new ProjectsLocationsRegistriesDevicesResourceApi(_requester);

  ProjectsLocationsRegistriesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a device registry that contains devices.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The project and cloud region where this device registry must be
  /// created.
  /// For example, `projects/example-project/locations/us-central1`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeviceRegistry].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeviceRegistry> create(
      DeviceRegistry request, core.String parent,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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
        '/registries';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new DeviceRegistry.fromJson(data));
  }

  /// Deletes a device registry configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the device registry. For example,
  /// `projects/example-project/locations/us-central1/registries/my-registry`.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/registries/[^/]+$".
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
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets a device registry configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the device registry. For example,
  /// `projects/example-project/locations/us-central1/registries/my-registry`.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/registries/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeviceRegistry].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeviceRegistry> get(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new DeviceRegistry.fromJson(data));
  }

  /// Gets the access control policy for a resource.
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/registries/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
      GetIamPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Lists device registries.
  ///
  /// Request parameters:
  ///
  /// [parent] - The project and cloud region path. For example,
  /// `projects/example-project/locations/us-central1`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [pageToken] - The value returned by the last
  /// `ListDeviceRegistriesResponse`; indicates
  /// that this is a continuation of a prior `ListDeviceRegistries` call, and
  /// that the system should return the next page of data.
  ///
  /// [pageSize] - The maximum number of registries to return in the response.
  /// If this value
  /// is zero, the service will select a default size. A call may return fewer
  /// objects than requested, but if there is a non-empty `page_token`, it
  /// indicates that more entries are available.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDeviceRegistriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDeviceRegistriesResponse> list(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/registries';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListDeviceRegistriesResponse.fromJson(data));
  }

  /// Updates a device registry configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource path name. For example,
  /// `projects/example-project/locations/us-central1/registries/my-registry`.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/registries/[^/]+$".
  ///
  /// [updateMask] - Only updates the `device_registry` fields indicated by this
  /// mask.
  /// The field mask must not be empty, and it must not contain fields that
  /// are immutable or only set by the server.
  /// Mutable top-level fields: `event_notification_config`, `http_config`,
  /// `mqtt_config`, and `state_notification_config`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeviceRegistry].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeviceRegistry> patch(DeviceRegistry request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new DeviceRegistry.fromJson(data));
  }

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/registries/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
      SetIamPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Returns permissions that a caller has on the specified resource.
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/registries/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
      TestIamPermissionsRequest request, core.String resource,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new TestIamPermissionsResponse.fromJson(data));
  }
}

class ProjectsLocationsRegistriesDevicesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsRegistriesDevicesConfigVersionsResourceApi
      get configVersions =>
          new ProjectsLocationsRegistriesDevicesConfigVersionsResourceApi(
              _requester);
  ProjectsLocationsRegistriesDevicesStatesResourceApi get states =>
      new ProjectsLocationsRegistriesDevicesStatesResourceApi(_requester);

  ProjectsLocationsRegistriesDevicesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a device in a device registry.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the device registry where this device should be
  /// created.
  /// For example,
  /// `projects/example-project/locations/us-central1/registries/my-registry`.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/registries/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Device].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Device> create(Device request, core.String parent,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/devices';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Device.fromJson(data));
  }

  /// Deletes a device.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the device. For example,
  /// `projects/p0/locations/us-central1/registries/registry0/devices/device0`
  /// or
  /// `projects/p0/locations/us-central1/registries/registry0/devices/{num_id}`.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/registries/[^/]+/devices/[^/]+$".
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
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets details about a device.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the device. For example,
  /// `projects/p0/locations/us-central1/registries/registry0/devices/device0`
  /// or
  /// `projects/p0/locations/us-central1/registries/registry0/devices/{num_id}`.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/registries/[^/]+/devices/[^/]+$".
  ///
  /// [fieldMask] - The fields of the `Device` resource to be returned in the
  /// response. If the
  /// field mask is unset or empty, all fields are returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Device].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Device> get(core.String name,
      {core.String fieldMask, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (fieldMask != null) {
      _queryParams["fieldMask"] = [fieldMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Device.fromJson(data));
  }

  /// List devices in a device registry.
  ///
  /// Request parameters:
  ///
  /// [parent] - The device registry path. Required. For example,
  /// `projects/my-project/locations/us-central1/registries/my-registry`.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/registries/[^/]+$".
  ///
  /// [pageToken] - The value returned by the last `ListDevicesResponse`;
  /// indicates
  /// that this is a continuation of a prior `ListDevices` call, and
  /// that the system should return the next page of data.
  ///
  /// [fieldMask] - The fields of the `Device` resource to be returned in the
  /// response. The
  /// fields `id`, and `num_id` are always returned by default, along with any
  /// other fields specified.
  ///
  /// [pageSize] - The maximum number of devices to return in the response. If
  /// this value
  /// is zero, the service will select a default size. A call may return fewer
  /// objects than requested, but if there is a non-empty `page_token`, it
  /// indicates that more entries are available.
  ///
  /// [deviceIds] - A list of device string identifiers. If empty, it will
  /// ignore this field.
  /// For example, `['device0', 'device12']`. This field cannot hold more than
  /// 10,000 entries.
  ///
  /// [deviceNumIds] - A list of device numerical ids. If empty, it will ignore
  /// this field. This
  /// field cannot hold more than 10,000 entries.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDevicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDevicesResponse> list(core.String parent,
      {core.String pageToken,
      core.String fieldMask,
      core.int pageSize,
      core.List<core.String> deviceIds,
      core.List<core.String> deviceNumIds,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (fieldMask != null) {
      _queryParams["fieldMask"] = [fieldMask];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (deviceIds != null) {
      _queryParams["deviceIds"] = deviceIds;
    }
    if (deviceNumIds != null) {
      _queryParams["deviceNumIds"] = deviceNumIds;
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/devices';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListDevicesResponse.fromJson(data));
  }

  /// Modifies the configuration for the device, which is eventually sent from
  /// the Cloud IoT Core servers. Returns the modified configuration version and
  /// its metadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the device. For example,
  /// `projects/p0/locations/us-central1/registries/registry0/devices/device0`
  /// or
  /// `projects/p0/locations/us-central1/registries/registry0/devices/{num_id}`.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/registries/[^/]+/devices/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeviceConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeviceConfig> modifyCloudToDeviceConfig(
      ModifyCloudToDeviceConfigRequest request, core.String name,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':modifyCloudToDeviceConfig';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new DeviceConfig.fromJson(data));
  }

  /// Updates a device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource path name. For example,
  /// `projects/p1/locations/us-central1/registries/registry0/devices/dev0` or
  /// `projects/p1/locations/us-central1/registries/registry0/devices/{num_id}`.
  /// When `name` is populated as a response from the service, it always ends
  /// in the device numeric ID.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/registries/[^/]+/devices/[^/]+$".
  ///
  /// [updateMask] - Only updates the `device` fields indicated by this mask.
  /// The field mask must not be empty, and it must not contain fields that
  /// are immutable or only set by the server.
  /// Mutable top-level fields: `credentials`, `enabled_state`, and `metadata`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Device].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Device> patch(Device request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Device.fromJson(data));
  }
}

class ProjectsLocationsRegistriesDevicesConfigVersionsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsRegistriesDevicesConfigVersionsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Lists the last few versions of the device configuration in descending
  /// order (i.e.: newest first).
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the device. For example,
  /// `projects/p0/locations/us-central1/registries/registry0/devices/device0`
  /// or
  /// `projects/p0/locations/us-central1/registries/registry0/devices/{num_id}`.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/registries/[^/]+/devices/[^/]+$".
  ///
  /// [numVersions] - The number of versions to list. Versions are listed in
  /// decreasing order of
  /// the version number. The maximum number of versions retained is 10. If this
  /// value is zero, it will return all the versions available.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDeviceConfigVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDeviceConfigVersionsResponse> list(core.String name,
      {core.int numVersions, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (numVersions != null) {
      _queryParams["numVersions"] = ["${numVersions}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/configVersions';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListDeviceConfigVersionsResponse.fromJson(data));
  }
}

class ProjectsLocationsRegistriesDevicesStatesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsRegistriesDevicesStatesResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Lists the last few versions of the device state in descending order (i.e.:
  /// newest first).
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the device. For example,
  /// `projects/p0/locations/us-central1/registries/registry0/devices/device0`
  /// or
  /// `projects/p0/locations/us-central1/registries/registry0/devices/{num_id}`.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/registries/[^/]+/devices/[^/]+$".
  ///
  /// [numStates] - The number of states to list. States are listed in
  /// descending order of
  /// update time. The maximum number of states retained is 10. If this
  /// value is zero, it will return all the states available.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDeviceStatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDeviceStatesResponse> list(core.String name,
      {core.int numStates, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (numStates != null) {
      _queryParams["numStates"] = ["${numStates}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/states';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListDeviceStatesResponse.fromJson(data));
  }
}

/// Specifies the audit configuration for a service.
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging.
/// An AuditConfig must have one or more AuditLogConfigs.
///
/// If there are AuditConfigs for both `allServices` and a specific service,
/// the union of the two AuditConfigs is used for that service: the log_types
/// specified in each AuditConfig are enabled, and the exempted_members in each
/// AuditLogConfig are exempted.
///
/// Example Policy with multiple AuditConfigs:
///
///     {
///       "audit_configs": [
///         {
///           "service": "allServices"
///           "audit_log_configs": [
///             {
///               "log_type": "DATA_READ",
///               "exempted_members": [
///                 "user:foo@gmail.com"
///               ]
///             },
///             {
///               "log_type": "DATA_WRITE",
///             },
///             {
///               "log_type": "ADMIN_READ",
///             }
///           ]
///         },
///         {
///           "service": "fooservice.googleapis.com"
///           "audit_log_configs": [
///             {
///               "log_type": "DATA_READ",
///             },
///             {
///               "log_type": "DATA_WRITE",
///               "exempted_members": [
///                 "user:bar@gmail.com"
///               ]
///             }
///           ]
///         }
///       ]
///     }
///
/// For fooservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts foo@gmail.com from DATA_READ logging, and
/// bar@gmail.com from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  /// Next ID: 4
  core.List<AuditLogConfig> auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String service;

  AuditConfig();

  AuditConfig.fromJson(core.Map _json) {
    if (_json.containsKey("auditLogConfigs")) {
      auditLogConfigs = (_json["auditLogConfigs"] as core.List)
          .map<AuditLogConfig>((value) => new AuditLogConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("service")) {
      service = _json["service"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (auditLogConfigs != null) {
      _json["auditLogConfigs"] =
          auditLogConfigs.map((value) => (value).toJson()).toList();
    }
    if (service != null) {
      _json["service"] = service;
    }
    return _json;
  }
}

/// Provides the configuration for logging a type of permissions.
/// Example:
///
///     {
///       "audit_log_configs": [
///         {
///           "log_type": "DATA_READ",
///           "exempted_members": [
///             "user:foo@gmail.com"
///           ]
///         },
///         {
///           "log_type": "DATA_WRITE",
///         }
///       ]
///     }
///
/// This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting
/// foo@gmail.com from DATA_READ logging.
class AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission.
  /// Follows the same format of Binding.members.
  core.List<core.String> exemptedMembers;

  /// The log type that this config enables.
  /// Possible string values are:
  /// - "LOG_TYPE_UNSPECIFIED" : Default case. Should never be this.
  /// - "ADMIN_READ" : Admin reads. Example: CloudIAM getIamPolicy
  /// - "DATA_WRITE" : Data writes. Example: CloudSQL Users create
  /// - "DATA_READ" : Data reads. Example: CloudSQL Users list
  core.String logType;

  AuditLogConfig();

  AuditLogConfig.fromJson(core.Map _json) {
    if (_json.containsKey("exemptedMembers")) {
      exemptedMembers =
          (_json["exemptedMembers"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("logType")) {
      logType = _json["logType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exemptedMembers != null) {
      _json["exemptedMembers"] = exemptedMembers;
    }
    if (logType != null) {
      _json["logType"] = logType;
    }
    return _json;
  }
}

/// Associates `members` with a `role`.
class Binding {
  /// Specifies the identities requesting access for a Cloud Platform resource.
  /// `members` can have the following values:
  ///
  /// * `allUsers`: A special identifier that represents anyone who is
  ///    on the internet; with or without a Google account.
  ///
  /// * `allAuthenticatedUsers`: A special identifier that represents anyone
  ///    who is authenticated with a Google account or a service account.
  ///
  /// * `user:{emailid}`: An email address that represents a specific Google
  ///    account. For example, `alice@gmail.com` or `joe@example.com`.
  ///
  ///
  /// * `serviceAccount:{emailid}`: An email address that represents a service
  ///    account. For example, `my-other-app@appspot.gserviceaccount.com`.
  ///
  /// * `group:{emailid}`: An email address that represents a Google group.
  ///    For example, `admins@example.com`.
  ///
  ///
  /// * `domain:{domain}`: A Google Apps domain name that represents all the
  ///    users of that domain. For example, `google.com` or `example.com`.
  core.List<core.String> members;

  /// Role that is assigned to `members`.
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  /// Required
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey("members")) {
      members = (_json["members"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (members != null) {
      _json["members"] = members;
    }
    if (role != null) {
      _json["role"] = role;
    }
    return _json;
  }
}

/// The device resource.
class Device {
  /// If a device is blocked, connections or requests from this device will
  /// fail.
  /// Can be used to temporarily prevent the device from connecting if, for
  /// example, the sensor is generating bad data and needs maintenance.
  core.bool blocked;

  /// The most recent device configuration, which is eventually sent from
  /// Cloud IoT Core to the device. If not present on creation, the
  /// configuration will be initialized with an empty payload and version value
  /// of `1`. To update this field after creation, use the
  /// `DeviceManager.ModifyCloudToDeviceConfig` method.
  DeviceConfig config;

  /// The credentials used to authenticate this device. To allow credential
  /// rotation without interruption, multiple device credentials can be bound to
  /// this device. No more than 3 credentials can be bound to a single device at
  /// a time. When new credentials are added to a device, they are verified
  /// against the registry credentials. For details, see the description of the
  /// `DeviceRegistry.credentials` field.
  core.List<DeviceCredential> credentials;

  /// The user-defined device identifier. The device ID must be unique
  /// within a device registry.
  core.String id;

  /// [Output only] The last time a cloud-to-device config version
  /// acknowledgment
  /// was received from the device. This field is only for configurations
  /// sent through MQTT.
  core.String lastConfigAckTime;

  /// [Output only] The last time a cloud-to-device config version was sent to
  /// the device.
  core.String lastConfigSendTime;

  /// [Output only] The error message of the most recent error, such as a
  /// failure
  /// to publish to Cloud Pub/Sub. 'last_error_time' is the timestamp of this
  /// field. If no errors have occurred, this field has an empty message
  /// and the status code 0 == OK. Otherwise, this field is expected to have a
  /// status code other than OK.
  Status lastErrorStatus;

  /// [Output only] The time the most recent error occurred, such as a failure
  /// to
  /// publish to Cloud Pub/Sub. This field is the timestamp of
  /// 'last_error_status'.
  core.String lastErrorTime;

  /// [Output only] The last time a telemetry event was received. Timestamps are
  /// periodically collected and written to storage; they may be stale by a few
  /// minutes.
  core.String lastEventTime;

  /// [Output only] The last time an MQTT `PINGREQ` was received. This field
  /// applies only to devices connecting through MQTT. MQTT clients usually only
  /// send `PINGREQ` messages if the connection is idle, and no other messages
  /// have been sent. Timestamps are periodically collected and written to
  /// storage; they may be stale by a few minutes.
  core.String lastHeartbeatTime;

  /// [Output only] The last time a state event was received. Timestamps are
  /// periodically collected and written to storage; they may be stale by a few
  /// minutes.
  core.String lastStateTime;

  /// The metadata key-value pairs assigned to the device. This metadata is not
  /// interpreted or indexed by Cloud IoT Core. It can be used to add contextual
  /// information for the device.
  ///
  /// Keys must conform to the regular expression [a-zA-Z0-9-_]+ and be less
  /// than
  /// 128 bytes in length.
  ///
  /// Values are free-form strings. Each value must be less than or equal to 32
  /// KB in size.
  ///
  /// The total size of all keys and values must be less than 256 KB, and the
  /// maximum number of key-value pairs is 500.
  core.Map<core.String, core.String> metadata;

  /// The resource path name. For example,
  /// `projects/p1/locations/us-central1/registries/registry0/devices/dev0` or
  /// `projects/p1/locations/us-central1/registries/registry0/devices/{num_id}`.
  /// When `name` is populated as a response from the service, it always ends
  /// in the device numeric ID.
  core.String name;

  /// [Output only] A server-defined unique numeric ID for the device. This is a
  /// more compact way to identify devices, and it is globally unique.
  core.String numId;

  /// [Output only] The state most recently received from the device. If no
  /// state
  /// has been reported, this field is not present.
  DeviceState state;

  Device();

  Device.fromJson(core.Map _json) {
    if (_json.containsKey("blocked")) {
      blocked = _json["blocked"];
    }
    if (_json.containsKey("config")) {
      config = new DeviceConfig.fromJson(_json["config"]);
    }
    if (_json.containsKey("credentials")) {
      credentials = (_json["credentials"] as core.List)
          .map<DeviceCredential>(
              (value) => new DeviceCredential.fromJson(value))
          .toList();
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("lastConfigAckTime")) {
      lastConfigAckTime = _json["lastConfigAckTime"];
    }
    if (_json.containsKey("lastConfigSendTime")) {
      lastConfigSendTime = _json["lastConfigSendTime"];
    }
    if (_json.containsKey("lastErrorStatus")) {
      lastErrorStatus = new Status.fromJson(_json["lastErrorStatus"]);
    }
    if (_json.containsKey("lastErrorTime")) {
      lastErrorTime = _json["lastErrorTime"];
    }
    if (_json.containsKey("lastEventTime")) {
      lastEventTime = _json["lastEventTime"];
    }
    if (_json.containsKey("lastHeartbeatTime")) {
      lastHeartbeatTime = _json["lastHeartbeatTime"];
    }
    if (_json.containsKey("lastStateTime")) {
      lastStateTime = _json["lastStateTime"];
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("numId")) {
      numId = _json["numId"];
    }
    if (_json.containsKey("state")) {
      state = new DeviceState.fromJson(_json["state"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (blocked != null) {
      _json["blocked"] = blocked;
    }
    if (config != null) {
      _json["config"] = (config).toJson();
    }
    if (credentials != null) {
      _json["credentials"] =
          credentials.map((value) => (value).toJson()).toList();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (lastConfigAckTime != null) {
      _json["lastConfigAckTime"] = lastConfigAckTime;
    }
    if (lastConfigSendTime != null) {
      _json["lastConfigSendTime"] = lastConfigSendTime;
    }
    if (lastErrorStatus != null) {
      _json["lastErrorStatus"] = (lastErrorStatus).toJson();
    }
    if (lastErrorTime != null) {
      _json["lastErrorTime"] = lastErrorTime;
    }
    if (lastEventTime != null) {
      _json["lastEventTime"] = lastEventTime;
    }
    if (lastHeartbeatTime != null) {
      _json["lastHeartbeatTime"] = lastHeartbeatTime;
    }
    if (lastStateTime != null) {
      _json["lastStateTime"] = lastStateTime;
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (numId != null) {
      _json["numId"] = numId;
    }
    if (state != null) {
      _json["state"] = (state).toJson();
    }
    return _json;
  }
}

/// The device configuration. Eventually delivered to devices.
class DeviceConfig {
  /// The device configuration data.
  core.String binaryData;
  core.List<core.int> get binaryDataAsBytes {
    return convert.base64.decode(binaryData);
  }

  void set binaryDataAsBytes(core.List<core.int> _bytes) {
    binaryData =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// [Output only] The time at which this configuration version was updated in
  /// Cloud IoT Core. This timestamp is set by the server.
  core.String cloudUpdateTime;

  /// [Output only] The time at which Cloud IoT Core received the
  /// acknowledgment from the device, indicating that the device has received
  /// this configuration version. If this field is not present, the device has
  /// not yet acknowledged that it received this version. Note that when
  /// the config was sent to the device, many config versions may have been
  /// available in Cloud IoT Core while the device was disconnected, and on
  /// connection, only the latest version is sent to the device. Some
  /// versions may never be sent to the device, and therefore are never
  /// acknowledged. This timestamp is set by Cloud IoT Core.
  core.String deviceAckTime;

  /// [Output only] The version of this update. The version number is assigned
  /// by
  /// the server, and is always greater than 0 after device creation. The
  /// version must be 0 on the `CreateDevice` request if a `config` is
  /// specified; the response of `CreateDevice` will always have a value of 1.
  core.String version;

  DeviceConfig();

  DeviceConfig.fromJson(core.Map _json) {
    if (_json.containsKey("binaryData")) {
      binaryData = _json["binaryData"];
    }
    if (_json.containsKey("cloudUpdateTime")) {
      cloudUpdateTime = _json["cloudUpdateTime"];
    }
    if (_json.containsKey("deviceAckTime")) {
      deviceAckTime = _json["deviceAckTime"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (binaryData != null) {
      _json["binaryData"] = binaryData;
    }
    if (cloudUpdateTime != null) {
      _json["cloudUpdateTime"] = cloudUpdateTime;
    }
    if (deviceAckTime != null) {
      _json["deviceAckTime"] = deviceAckTime;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// A server-stored device credential used for authentication.
class DeviceCredential {
  /// [Optional] The time at which this credential becomes invalid. This
  /// credential will be ignored for new client authentication requests after
  /// this timestamp; however, it will not be automatically deleted.
  core.String expirationTime;

  /// A public key used to verify the signature of JSON Web Tokens (JWTs).
  /// When adding a new device credential, either via device creation or via
  /// modifications, this public key credential may be required to be signed by
  /// one of the registry level certificates. More specifically, if the
  /// registry contains at least one certificate, any new device credential
  /// must be signed by one of the registry certificates. As a result,
  /// when the registry contains certificates, only X.509 certificates are
  /// accepted as device credentials. However, if the registry does
  /// not contain a certificate, self-signed certificates and public keys will
  /// be accepted. New device credentials must be different from every
  /// registry-level certificate.
  PublicKeyCredential publicKey;

  DeviceCredential();

  DeviceCredential.fromJson(core.Map _json) {
    if (_json.containsKey("expirationTime")) {
      expirationTime = _json["expirationTime"];
    }
    if (_json.containsKey("publicKey")) {
      publicKey = new PublicKeyCredential.fromJson(_json["publicKey"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (expirationTime != null) {
      _json["expirationTime"] = expirationTime;
    }
    if (publicKey != null) {
      _json["publicKey"] = (publicKey).toJson();
    }
    return _json;
  }
}

/// A container for a group of devices.
class DeviceRegistry {
  /// The credentials used to verify the device credentials. No more than 10
  /// credentials can be bound to a single registry at a time. The verification
  /// process occurs at the time of device creation or update. If this field is
  /// empty, no verification is performed. Otherwise, the credentials of a newly
  /// created device or added credentials of an updated device should be signed
  /// with one of these registry credentials.
  ///
  /// Note, however, that existing devices will never be affected by
  /// modifications to this list of credentials: after a device has been
  /// successfully created in a registry, it should be able to connect even if
  /// its registry credentials are revoked, deleted, or modified.
  core.List<RegistryCredential> credentials;

  /// The configuration for notification of telemetry events received from the
  /// device. All telemetry events that were successfully published by the
  /// device and acknowledged by Cloud IoT Core are guaranteed to be
  /// delivered to Cloud Pub/Sub. Only the first configuration is used. If you
  /// try to publish a device telemetry event using MQTT without specifying a
  /// Cloud Pub/Sub topic for the device's registry, the connection closes
  /// automatically. If you try to do so using an HTTP connection, an error
  /// is returned.
  core.List<EventNotificationConfig> eventNotificationConfigs;

  /// The DeviceService (HTTP) configuration for this device registry.
  HttpConfig httpConfig;

  /// The identifier of this device registry. For example, `myRegistry`.
  core.String id;

  /// The MQTT configuration for this device registry.
  MqttConfig mqttConfig;

  /// The resource path name. For example,
  /// `projects/example-project/locations/us-central1/registries/my-registry`.
  core.String name;

  /// The configuration for notification of new states received from the device.
  /// State updates are guaranteed to be stored in the state history, but
  /// notifications to Cloud Pub/Sub are not guaranteed. For example, if
  /// permissions are misconfigured or the specified topic doesn't exist, no
  /// notification will be published but the state will still be stored in Cloud
  /// IoT Core.
  StateNotificationConfig stateNotificationConfig;

  DeviceRegistry();

  DeviceRegistry.fromJson(core.Map _json) {
    if (_json.containsKey("credentials")) {
      credentials = (_json["credentials"] as core.List)
          .map<RegistryCredential>(
              (value) => new RegistryCredential.fromJson(value))
          .toList();
    }
    if (_json.containsKey("eventNotificationConfigs")) {
      eventNotificationConfigs =
          (_json["eventNotificationConfigs"] as core.List)
              .map<EventNotificationConfig>(
                  (value) => new EventNotificationConfig.fromJson(value))
              .toList();
    }
    if (_json.containsKey("httpConfig")) {
      httpConfig = new HttpConfig.fromJson(_json["httpConfig"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("mqttConfig")) {
      mqttConfig = new MqttConfig.fromJson(_json["mqttConfig"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("stateNotificationConfig")) {
      stateNotificationConfig = new StateNotificationConfig.fromJson(
          _json["stateNotificationConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (credentials != null) {
      _json["credentials"] =
          credentials.map((value) => (value).toJson()).toList();
    }
    if (eventNotificationConfigs != null) {
      _json["eventNotificationConfigs"] =
          eventNotificationConfigs.map((value) => (value).toJson()).toList();
    }
    if (httpConfig != null) {
      _json["httpConfig"] = (httpConfig).toJson();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (mqttConfig != null) {
      _json["mqttConfig"] = (mqttConfig).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (stateNotificationConfig != null) {
      _json["stateNotificationConfig"] = (stateNotificationConfig).toJson();
    }
    return _json;
  }
}

/// The device state, as reported by the device.
class DeviceState {
  /// The device state data.
  core.String binaryData;
  core.List<core.int> get binaryDataAsBytes {
    return convert.base64.decode(binaryData);
  }

  void set binaryDataAsBytes(core.List<core.int> _bytes) {
    binaryData =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// [Output only] The time at which this state version was updated in Cloud
  /// IoT Core.
  core.String updateTime;

  DeviceState();

  DeviceState.fromJson(core.Map _json) {
    if (_json.containsKey("binaryData")) {
      binaryData = _json["binaryData"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (binaryData != null) {
      _json["binaryData"] = binaryData;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
///
///     service Foo {
///       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
///     }
///
/// The JSON representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// The configuration to forward telemetry events.
class EventNotificationConfig {
  /// A Cloud Pub/Sub topic name. For example,
  /// `projects/myProject/topics/deviceEvents`.
  core.String pubsubTopicName;
  core.String subfolderMatches;

  EventNotificationConfig();

  EventNotificationConfig.fromJson(core.Map _json) {
    if (_json.containsKey("pubsubTopicName")) {
      pubsubTopicName = _json["pubsubTopicName"];
    }
    if (_json.containsKey("subfolderMatches")) {
      subfolderMatches = _json["subfolderMatches"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pubsubTopicName != null) {
      _json["pubsubTopicName"] = pubsubTopicName;
    }
    if (subfolderMatches != null) {
      _json["subfolderMatches"] = subfolderMatches;
    }
    return _json;
  }
}

/// Request message for `GetIamPolicy` method.
class GetIamPolicyRequest {
  GetIamPolicyRequest();

  GetIamPolicyRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// The configuration of the HTTP bridge for a device registry.
class HttpConfig {
  /// If enabled, allows devices to use DeviceService via the HTTP protocol.
  /// Otherwise, any requests to DeviceService will fail for this registry.
  /// Possible string values are:
  /// - "HTTP_STATE_UNSPECIFIED" : No HTTP state specified. If not specified,
  /// DeviceService will be
  /// enabled by default.
  /// - "HTTP_ENABLED" : Enables DeviceService (HTTP) service for the registry.
  /// - "HTTP_DISABLED" : Disables DeviceService (HTTP) service for the
  /// registry.
  core.String httpEnabledState;

  HttpConfig();

  HttpConfig.fromJson(core.Map _json) {
    if (_json.containsKey("httpEnabledState")) {
      httpEnabledState = _json["httpEnabledState"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (httpEnabledState != null) {
      _json["httpEnabledState"] = httpEnabledState;
    }
    return _json;
  }
}

/// Response for `ListDeviceConfigVersions`.
class ListDeviceConfigVersionsResponse {
  /// The device configuration for the last few versions. Versions are listed
  /// in decreasing order, starting from the most recent one.
  core.List<DeviceConfig> deviceConfigs;

  ListDeviceConfigVersionsResponse();

  ListDeviceConfigVersionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("deviceConfigs")) {
      deviceConfigs = (_json["deviceConfigs"] as core.List)
          .map<DeviceConfig>((value) => new DeviceConfig.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deviceConfigs != null) {
      _json["deviceConfigs"] =
          deviceConfigs.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response for `ListDeviceRegistries`.
class ListDeviceRegistriesResponse {
  /// The registries that matched the query.
  core.List<DeviceRegistry> deviceRegistries;

  /// If not empty, indicates that there may be more registries that match the
  /// request; this value should be passed in a new
  /// `ListDeviceRegistriesRequest`.
  core.String nextPageToken;

  ListDeviceRegistriesResponse();

  ListDeviceRegistriesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("deviceRegistries")) {
      deviceRegistries = (_json["deviceRegistries"] as core.List)
          .map<DeviceRegistry>((value) => new DeviceRegistry.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deviceRegistries != null) {
      _json["deviceRegistries"] =
          deviceRegistries.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response for `ListDeviceStates`.
class ListDeviceStatesResponse {
  /// The last few device states. States are listed in descending order of
  /// server
  /// update time, starting from the most recent one.
  core.List<DeviceState> deviceStates;

  ListDeviceStatesResponse();

  ListDeviceStatesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("deviceStates")) {
      deviceStates = (_json["deviceStates"] as core.List)
          .map<DeviceState>((value) => new DeviceState.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deviceStates != null) {
      _json["deviceStates"] =
          deviceStates.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response for `ListDevices`.
class ListDevicesResponse {
  /// The devices that match the request.
  core.List<Device> devices;

  /// If not empty, indicates that there may be more devices that match the
  /// request; this value should be passed in a new `ListDevicesRequest`.
  core.String nextPageToken;

  ListDevicesResponse();

  ListDevicesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("devices")) {
      devices = (_json["devices"] as core.List)
          .map<Device>((value) => new Device.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (devices != null) {
      _json["devices"] = devices.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Request for `ModifyCloudToDeviceConfig`.
class ModifyCloudToDeviceConfigRequest {
  /// The configuration data for the device.
  core.String binaryData;
  core.List<core.int> get binaryDataAsBytes {
    return convert.base64.decode(binaryData);
  }

  void set binaryDataAsBytes(core.List<core.int> _bytes) {
    binaryData =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The version number to update. If this value is zero, it will not check the
  /// version number of the server and will always update the current version;
  /// otherwise, this update will fail if the version number found on the server
  /// does not match this version number. This is used to support multiple
  /// simultaneous updates without losing data.
  core.String versionToUpdate;

  ModifyCloudToDeviceConfigRequest();

  ModifyCloudToDeviceConfigRequest.fromJson(core.Map _json) {
    if (_json.containsKey("binaryData")) {
      binaryData = _json["binaryData"];
    }
    if (_json.containsKey("versionToUpdate")) {
      versionToUpdate = _json["versionToUpdate"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (binaryData != null) {
      _json["binaryData"] = binaryData;
    }
    if (versionToUpdate != null) {
      _json["versionToUpdate"] = versionToUpdate;
    }
    return _json;
  }
}

/// The configuration of MQTT for a device registry.
class MqttConfig {
  /// If enabled, allows connections using the MQTT protocol. Otherwise, MQTT
  /// connections to this registry will fail.
  /// Possible string values are:
  /// - "MQTT_STATE_UNSPECIFIED" : No MQTT state specified. If not specified,
  /// MQTT will be enabled by default.
  /// - "MQTT_ENABLED" : Enables a MQTT connection.
  /// - "MQTT_DISABLED" : Disables a MQTT connection.
  core.String mqttEnabledState;

  MqttConfig();

  MqttConfig.fromJson(core.Map _json) {
    if (_json.containsKey("mqttEnabledState")) {
      mqttEnabledState = _json["mqttEnabledState"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (mqttEnabledState != null) {
      _json["mqttEnabledState"] = mqttEnabledState;
    }
    return _json;
  }
}

/// Defines an Identity and Access Management (IAM) policy. It is used to
/// specify access control policies for Cloud Platform resources.
///
///
/// A `Policy` consists of a list of `bindings`. A `Binding` binds a list of
/// `members` to a `role`, where the members can be user accounts, Google
/// groups,
/// Google domains, and service accounts. A `role` is a named list of
/// permissions
/// defined by IAM.
///
/// **Example**
///
///     {
///       "bindings": [
///         {
///           "role": "roles/owner",
///           "members": [
///             "user:mike@example.com",
///             "group:admins@example.com",
///             "domain:google.com",
///             "serviceAccount:my-other-app@appspot.gserviceaccount.com",
///           ]
///         },
///         {
///           "role": "roles/viewer",
///           "members": ["user:sean@example.com"]
///         }
///       ]
///     }
///
/// For a description of IAM and its features, see the
/// [IAM developer's guide](https://cloud.google.com/iam/docs).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig> auditConfigs;

  /// Associates a list of `members` to a `role`.
  /// `bindings` with no members will result in an error.
  core.List<Binding> bindings;

  /// `etag` is used for optimistic concurrency control as a way to help
  /// prevent simultaneous updates of a policy from overwriting each other.
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy.
  ///
  /// If no `etag` is provided in the call to `setIamPolicy`, then the existing
  /// policy is overwritten blindly.
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return convert.base64.decode(etag);
  }

  void set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Deprecated.
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey("auditConfigs")) {
      auditConfigs = (_json["auditConfigs"] as core.List)
          .map<AuditConfig>((value) => new AuditConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("bindings")) {
      bindings = (_json["bindings"] as core.List)
          .map<Binding>((value) => new Binding.fromJson(value))
          .toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (auditConfigs != null) {
      _json["auditConfigs"] =
          auditConfigs.map((value) => (value).toJson()).toList();
    }
    if (bindings != null) {
      _json["bindings"] = bindings.map((value) => (value).toJson()).toList();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// A public key certificate format and data.
class PublicKeyCertificate {
  /// The certificate data.
  core.String certificate;

  /// The certificate format.
  /// Possible string values are:
  /// - "UNSPECIFIED_PUBLIC_KEY_CERTIFICATE_FORMAT" : The format has not been
  /// specified. This is an invalid default value and
  /// must not be used.
  /// - "X509_CERTIFICATE_PEM" : An X.509v3 certificate
  /// ([RFC5280](https://www.ietf.org/rfc/rfc5280.txt)),
  /// encoded in base64, and wrapped by `-----BEGIN CERTIFICATE-----` and
  /// `-----END CERTIFICATE-----`.
  core.String format;

  /// [Output only] The certificate details. Used only for X.509 certificates.
  X509CertificateDetails x509Details;

  PublicKeyCertificate();

  PublicKeyCertificate.fromJson(core.Map _json) {
    if (_json.containsKey("certificate")) {
      certificate = _json["certificate"];
    }
    if (_json.containsKey("format")) {
      format = _json["format"];
    }
    if (_json.containsKey("x509Details")) {
      x509Details = new X509CertificateDetails.fromJson(_json["x509Details"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (certificate != null) {
      _json["certificate"] = certificate;
    }
    if (format != null) {
      _json["format"] = format;
    }
    if (x509Details != null) {
      _json["x509Details"] = (x509Details).toJson();
    }
    return _json;
  }
}

/// A public key format and data.
class PublicKeyCredential {
  /// The format of the key.
  /// Possible string values are:
  /// - "UNSPECIFIED_PUBLIC_KEY_FORMAT" : The format has not been specified.
  /// This is an invalid default value and
  /// must not be used.
  /// - "RSA_PEM" : An RSA public key encoded in base64, and wrapped by
  /// `-----BEGIN PUBLIC KEY-----` and `-----END PUBLIC KEY-----`. This can be
  /// used to verify `RS256` signatures in JWT tokens ([RFC7518](
  /// https://www.ietf.org/rfc/rfc7518.txt)).
  /// - "RSA_X509_PEM" : As RSA_PEM, but wrapped in an X.509v3 certificate
  /// ([RFC5280](
  /// https://www.ietf.org/rfc/rfc5280.txt)), encoded in base64, and wrapped by
  /// `-----BEGIN CERTIFICATE-----` and `-----END CERTIFICATE-----`.
  /// - "ES256_PEM" : Public key for the ECDSA algorithm using P-256 and
  /// SHA-256, encoded in
  /// base64, and wrapped by `-----BEGIN PUBLIC KEY-----` and `-----END
  /// PUBLIC KEY-----`. This can be used to verify JWT tokens with the `ES256`
  /// algorithm ([RFC7518](https://www.ietf.org/rfc/rfc7518.txt)). This curve is
  /// defined in [OpenSSL](https://www.openssl.org/) as the `prime256v1` curve.
  /// - "ES256_X509_PEM" : As ES256_PEM, but wrapped in an X.509v3 certificate
  /// ([RFC5280](
  /// https://www.ietf.org/rfc/rfc5280.txt)), encoded in base64, and wrapped by
  /// `-----BEGIN CERTIFICATE-----` and `-----END CERTIFICATE-----`.
  core.String format;

  /// The key data.
  core.String key;

  PublicKeyCredential();

  PublicKeyCredential.fromJson(core.Map _json) {
    if (_json.containsKey("format")) {
      format = _json["format"];
    }
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (format != null) {
      _json["format"] = format;
    }
    if (key != null) {
      _json["key"] = key;
    }
    return _json;
  }
}

/// A server-stored registry credential used to validate device credentials.
class RegistryCredential {
  /// A public key certificate used to verify the device credentials.
  PublicKeyCertificate publicKeyCertificate;

  RegistryCredential();

  RegistryCredential.fromJson(core.Map _json) {
    if (_json.containsKey("publicKeyCertificate")) {
      publicKeyCertificate =
          new PublicKeyCertificate.fromJson(_json["publicKeyCertificate"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (publicKeyCertificate != null) {
      _json["publicKeyCertificate"] = (publicKeyCertificate).toJson();
    }
    return _json;
  }
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`. The size of
  /// the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects)
  /// might reject them.
  Policy policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  /// Only
  /// the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used:
  /// paths: "bindings, etag"
  /// This field is only used by Cloud IAM.
  core.String updateMask;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("policy")) {
      policy = new Policy.fromJson(_json["policy"]);
    }
    if (_json.containsKey("updateMask")) {
      updateMask = _json["updateMask"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (policy != null) {
      _json["policy"] = (policy).toJson();
    }
    if (updateMask != null) {
      _json["updateMask"] = updateMask;
    }
    return _json;
  }
}

/// The configuration for notification of new states received from the device.
class StateNotificationConfig {
  /// A Cloud Pub/Sub topic name. For example,
  /// `projects/myProject/topics/deviceEvents`.
  core.String pubsubTopicName;

  StateNotificationConfig();

  StateNotificationConfig.fromJson(core.Map _json) {
    if (_json.containsKey("pubsubTopicName")) {
      pubsubTopicName = _json["pubsubTopicName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pubsubTopicName != null) {
      _json["pubsubTopicName"] = pubsubTopicName;
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different
/// programming environments, including REST APIs and RPC APIs. It is used by
/// [gRPC](https://github.com/grpc). The error model is designed to be:
///
/// - Simple to use and understand for most users
/// - Flexible enough to meet unexpected needs
///
/// # Overview
///
/// The `Status` message contains three pieces of data: error code, error
/// message,
/// and error details. The error code should be an enum value of
/// google.rpc.Code, but it may accept additional error codes if needed.  The
/// error message should be a developer-facing English message that helps
/// developers *understand* and *resolve* the error. If a localized user-facing
/// error message is needed, put the localized message in the error details or
/// localize it in the client. The optional error details may contain arbitrary
/// information about the error. There is a predefined set of error detail types
/// in the package `google.rpc` that can be used for common error conditions.
///
/// # Language mapping
///
/// The `Status` message is the logical representation of the error model, but
/// it
/// is not necessarily the actual wire format. When the `Status` message is
/// exposed in different client libraries and different wire protocols, it can
/// be
/// mapped differently. For example, it will likely be mapped to some exceptions
/// in Java, but more likely mapped to some error codes in C.
///
/// # Other uses
///
/// The error model and the `Status` message can be used in a variety of
/// environments, either with or without APIs, to provide a
/// consistent developer experience across different environments.
///
/// Example uses of this error model include:
///
/// - Partial errors. If a service needs to return partial errors to the client,
/// it may embed the `Status` in the normal response to indicate the partial
///     errors.
///
/// - Workflow errors. A typical workflow has multiple steps. Each step may
///     have a `Status` message for error reporting.
///
/// - Batch operations. If a client uses batch request and batch response, the
///     `Status` message should be used directly inside batch response, one for
///     each error sub-response.
///
/// - Asynchronous operations. If an API call embeds asynchronous operation
///     results in its response, the status of those operations should be
///     represented directly using the `Status` message.
///
/// - Logging. If some API errors are stored in logs, the message `Status` could
/// be used directly after any stripping needed for security/privacy reasons.
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details.  There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`. Permissions with
  /// wildcards (such as '*' or 'storage.*') are not allowed. For more
  /// information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/// Response message for `TestIamPermissions` method.
class TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String> permissions;

  TestIamPermissionsResponse();

  TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/// Details of an X.509 certificate. For informational purposes only.
class X509CertificateDetails {
  /// The time the certificate becomes invalid.
  core.String expiryTime;

  /// The entity that signed the certificate.
  core.String issuer;

  /// The type of public key in the certificate.
  core.String publicKeyType;

  /// The algorithm used to sign the certificate.
  core.String signatureAlgorithm;

  /// The time the certificate becomes valid.
  core.String startTime;

  /// The entity the certificate and public key belong to.
  core.String subject;

  X509CertificateDetails();

  X509CertificateDetails.fromJson(core.Map _json) {
    if (_json.containsKey("expiryTime")) {
      expiryTime = _json["expiryTime"];
    }
    if (_json.containsKey("issuer")) {
      issuer = _json["issuer"];
    }
    if (_json.containsKey("publicKeyType")) {
      publicKeyType = _json["publicKeyType"];
    }
    if (_json.containsKey("signatureAlgorithm")) {
      signatureAlgorithm = _json["signatureAlgorithm"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("subject")) {
      subject = _json["subject"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (expiryTime != null) {
      _json["expiryTime"] = expiryTime;
    }
    if (issuer != null) {
      _json["issuer"] = issuer;
    }
    if (publicKeyType != null) {
      _json["publicKeyType"] = publicKeyType;
    }
    if (signatureAlgorithm != null) {
      _json["signatureAlgorithm"] = signatureAlgorithm;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (subject != null) {
      _json["subject"] = subject;
    }
    return _json;
  }
}
