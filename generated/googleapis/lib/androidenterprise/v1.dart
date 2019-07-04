// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.androidenterprise.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client androidenterprise/v1';

/// Manages the deployment of apps to Android for Work users.
class AndroidenterpriseApi {
  /// Manage corporate Android devices
  static const AndroidenterpriseScope =
      "https://www.googleapis.com/auth/androidenterprise";

  final commons.ApiRequester _requester;

  DevicesResourceApi get devices => new DevicesResourceApi(_requester);
  EnterprisesResourceApi get enterprises =>
      new EnterprisesResourceApi(_requester);
  EntitlementsResourceApi get entitlements =>
      new EntitlementsResourceApi(_requester);
  GrouplicensesResourceApi get grouplicenses =>
      new GrouplicensesResourceApi(_requester);
  GrouplicenseusersResourceApi get grouplicenseusers =>
      new GrouplicenseusersResourceApi(_requester);
  InstallsResourceApi get installs => new InstallsResourceApi(_requester);
  ManagedconfigurationsfordeviceResourceApi
      get managedconfigurationsfordevice =>
          new ManagedconfigurationsfordeviceResourceApi(_requester);
  ManagedconfigurationsforuserResourceApi get managedconfigurationsforuser =>
      new ManagedconfigurationsforuserResourceApi(_requester);
  ManagedconfigurationssettingsResourceApi get managedconfigurationssettings =>
      new ManagedconfigurationssettingsResourceApi(_requester);
  PermissionsResourceApi get permissions =>
      new PermissionsResourceApi(_requester);
  ProductsResourceApi get products => new ProductsResourceApi(_requester);
  ServiceaccountkeysResourceApi get serviceaccountkeys =>
      new ServiceaccountkeysResourceApi(_requester);
  StorelayoutclustersResourceApi get storelayoutclusters =>
      new StorelayoutclustersResourceApi(_requester);
  StorelayoutpagesResourceApi get storelayoutpages =>
      new StorelayoutpagesResourceApi(_requester);
  UsersResourceApi get users => new UsersResourceApi(_requester);
  WebappsResourceApi get webapps => new WebappsResourceApi(_requester);

  AndroidenterpriseApi(http.Client client,
      {core.String rootUrl = "https://www.googleapis.com/",
      core.String servicePath = "androidenterprise/v1/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class DevicesResourceApi {
  final commons.ApiRequester _requester;

  DevicesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Uploads a report containing any changes in app states on the device since
  /// the last report was generated. You can call this method up to 3 times
  /// every 24 hours for a given device.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [deviceId] - The ID of the device.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future forceReportUpload(
      core.String enterpriseId, core.String userId, core.String deviceId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/devices/' +
        commons.Escaper.ecapeVariable('$deviceId') +
        '/forceReportUpload';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieves the details of a device.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [deviceId] - The ID of the device.
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
  async.Future<Device> get(
      core.String enterpriseId, core.String userId, core.String deviceId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/devices/' +
        commons.Escaper.ecapeVariable('$deviceId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Device.fromJson(data));
  }

  /// Retrieves whether a device's access to Google services is enabled or
  /// disabled. The device state takes effect only if enforcing EMM policies on
  /// Android devices is enabled in the Google Admin Console. Otherwise, the
  /// device state is ignored and all devices are allowed access to Google
  /// services. This is only supported for Google-managed users.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [deviceId] - The ID of the device.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeviceState].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeviceState> getState(
      core.String enterpriseId, core.String userId, core.String deviceId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/devices/' +
        commons.Escaper.ecapeVariable('$deviceId') +
        '/state';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new DeviceState.fromJson(data));
  }

  /// Retrieves the IDs of all of a user's devices.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DevicesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DevicesListResponse> list(
      core.String enterpriseId, core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/devices';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new DevicesListResponse.fromJson(data));
  }

  /// Updates the device policy. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [deviceId] - The ID of the device.
  ///
  /// [updateMask] - Mask that identifies which fields to update. If not set,
  /// all modifiable fields will be modified.
  ///
  /// When set in a query parameter, this field should be specified as
  /// updateMask=<field1>,<field2>,...
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
  async.Future<Device> patch(Device request, core.String enterpriseId,
      core.String userId, core.String deviceId,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/devices/' +
        commons.Escaper.ecapeVariable('$deviceId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Device.fromJson(data));
  }

  /// Sets whether a device's access to Google services is enabled or disabled.
  /// The device state takes effect only if enforcing EMM policies on Android
  /// devices is enabled in the Google Admin Console. Otherwise, the device
  /// state is ignored and all devices are allowed access to Google services.
  /// This is only supported for Google-managed users.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [deviceId] - The ID of the device.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeviceState].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeviceState> setState(DeviceState request,
      core.String enterpriseId, core.String userId, core.String deviceId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/devices/' +
        commons.Escaper.ecapeVariable('$deviceId') +
        '/state';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new DeviceState.fromJson(data));
  }

  /// Updates the device policy
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [deviceId] - The ID of the device.
  ///
  /// [updateMask] - Mask that identifies which fields to update. If not set,
  /// all modifiable fields will be modified.
  ///
  /// When set in a query parameter, this field should be specified as
  /// updateMask=<field1>,<field2>,...
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
  async.Future<Device> update(Device request, core.String enterpriseId,
      core.String userId, core.String deviceId,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/devices/' +
        commons.Escaper.ecapeVariable('$deviceId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Device.fromJson(data));
  }
}

class EnterprisesResourceApi {
  final commons.ApiRequester _requester;

  EnterprisesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Acknowledges notifications that were received from
  /// Enterprises.PullNotificationSet to prevent subsequent calls from returning
  /// the same notifications.
  ///
  /// Request parameters:
  ///
  /// [notificationSetId] - The notification set ID as returned by
  /// Enterprises.PullNotificationSet. This must be provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future acknowledgeNotificationSet(
      {core.String notificationSetId, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (notificationSetId != null) {
      _queryParams["notificationSetId"] = [notificationSetId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'enterprises/acknowledgeNotificationSet';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Completes the signup flow, by specifying the Completion token and
  /// Enterprise token. This request must not be called multiple times for a
  /// given Enterprise Token.
  ///
  /// Request parameters:
  ///
  /// [completionToken] - The Completion token initially returned by
  /// GenerateSignupUrl.
  ///
  /// [enterpriseToken] - The Enterprise token appended to the Callback URL.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Enterprise].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Enterprise> completeSignup(
      {core.String completionToken,
      core.String enterpriseToken,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (completionToken != null) {
      _queryParams["completionToken"] = [completionToken];
    }
    if (enterpriseToken != null) {
      _queryParams["enterpriseToken"] = [enterpriseToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/completeSignup';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Enterprise.fromJson(data));
  }

  /// Returns a unique token to access an embeddable UI. To generate a web UI,
  /// pass the generated token into the managed Google Play javascript API. Each
  /// token may only be used to start one UI session. See the javascript API
  /// documentation for further information.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdministratorWebToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdministratorWebToken> createWebToken(
      AdministratorWebTokenSpec request, core.String enterpriseId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/createWebToken';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AdministratorWebToken.fromJson(data));
  }

  /// Enrolls an enterprise with the calling EMM.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [token] - The token provided by the enterprise to register the EMM.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Enterprise].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Enterprise> enroll(Enterprise request, core.String token,
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
    if (token == null) {
      throw new core.ArgumentError("Parameter token is required.");
    }
    _queryParams["token"] = [token];
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/enroll';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Enterprise.fromJson(data));
  }

  /// Generates a sign-up URL.
  ///
  /// Request parameters:
  ///
  /// [callbackUrl] - The callback URL to which the Admin will be redirected
  /// after successfully creating an enterprise. Before redirecting there the
  /// system will add a single query parameter to this URL named
  /// "enterpriseToken" which will contain an opaque token to be used for the
  /// CompleteSignup request.
  /// Beware that this means that the URL will be parsed, the parameter added
  /// and then a new URL formatted, i.e. there may be some minor formatting
  /// changes and, more importantly, the URL must be well-formed so that it can
  /// be parsed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SignupInfo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SignupInfo> generateSignupUrl(
      {core.String callbackUrl, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (callbackUrl != null) {
      _queryParams["callbackUrl"] = [callbackUrl];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/signupUrl';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SignupInfo.fromJson(data));
  }

  /// Retrieves the name and domain of an enterprise.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Enterprise].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Enterprise> get(core.String enterpriseId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Enterprise.fromJson(data));
  }

  /// Returns a service account and credentials. The service account can be
  /// bound to the enterprise by calling setAccount. The service account is
  /// unique to this enterprise and EMM, and will be deleted if the enterprise
  /// is unbound. The credentials contain private key data and are not stored
  /// server-side.
  ///
  /// This method can only be called after calling Enterprises.Enroll or
  /// Enterprises.CompleteSignup, and before Enterprises.SetAccount; at other
  /// times it will return an error.
  ///
  /// Subsequent calls after the first will generate a new, unique set of
  /// credentials, and invalidate the previously generated credentials.
  ///
  /// Once the service account is bound to the enterprise, it can be managed
  /// using the serviceAccountKeys resource.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [keyType] - The type of credential to return with the service account.
  /// Required.
  /// Possible string values are:
  /// - "googleCredentials"
  /// - "pkcs12"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccount> getServiceAccount(core.String enterpriseId,
      {core.String keyType, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (keyType != null) {
      _queryParams["keyType"] = [keyType];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/serviceAccount';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceAccount.fromJson(data));
  }

  /// Returns the store layout for the enterprise. If the store layout has not
  /// been set, returns "basic" as the store layout type and no homepage.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StoreLayout].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StoreLayout> getStoreLayout(core.String enterpriseId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/storeLayout';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new StoreLayout.fromJson(data));
  }

  /// Looks up an enterprise by domain name. This is only supported for
  /// enterprises created via the Google-initiated creation flow. Lookup of the
  /// id is not needed for enterprises created via the EMM-initiated flow since
  /// the EMM learns the enterprise ID in the callback specified in the
  /// Enterprises.generateSignupUrl call.
  ///
  /// Request parameters:
  ///
  /// [domain] - The exact primary domain name of the enterprise to look up.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EnterprisesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EnterprisesListResponse> list(core.String domain,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (domain == null) {
      throw new core.ArgumentError("Parameter domain is required.");
    }
    _queryParams["domain"] = [domain];
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new EnterprisesListResponse.fromJson(data));
  }

  /// Pulls and returns a notification set for the enterprises associated with
  /// the service account authenticated for the request. The notification set
  /// may be empty if no notification are pending.
  /// A notification set returned needs to be acknowledged within 20 seconds by
  /// calling Enterprises.AcknowledgeNotificationSet, unless the notification
  /// set is empty.
  /// Notifications that are not acknowledged within the 20 seconds will
  /// eventually be included again in the response to another
  /// PullNotificationSet request, and those that are never acknowledged will
  /// ultimately be deleted according to the Google Cloud Platform Pub/Sub
  /// system policy.
  /// Multiple requests might be performed concurrently to retrieve
  /// notifications, in which case the pending notifications (if any) will be
  /// split among each caller, if any are pending.
  /// If no notifications are present, an empty notification list is returned.
  /// Subsequent requests may return more notifications once they become
  /// available.
  ///
  /// Request parameters:
  ///
  /// [requestMode] - The request mode for pulling notifications.
  /// Specifying waitForNotifications will cause the request to block and wait
  /// until one or more notifications are present, or return an empty
  /// notification list if no notifications are present after some time.
  /// Speciying returnImmediately will cause the request to immediately return
  /// the pending notifications, or an empty list if no notifications are
  /// present.
  /// If omitted, defaults to waitForNotifications.
  /// Possible string values are:
  /// - "returnImmediately"
  /// - "waitForNotifications"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationSet> pullNotificationSet(
      {core.String requestMode, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (requestMode != null) {
      _queryParams["requestMode"] = [requestMode];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/pullNotificationSet';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new NotificationSet.fromJson(data));
  }

  /// Sends a test notification to validate the EMM integration with the Google
  /// Cloud Pub/Sub service for this enterprise.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EnterprisesSendTestPushNotificationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EnterprisesSendTestPushNotificationResponse>
      sendTestPushNotification(core.String enterpriseId,
          {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/sendTestPushNotification';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new EnterprisesSendTestPushNotificationResponse.fromJson(data));
  }

  /// Sets the account that will be used to authenticate to the API as the
  /// enterprise.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EnterpriseAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EnterpriseAccount> setAccount(
      EnterpriseAccount request, core.String enterpriseId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/account';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new EnterpriseAccount.fromJson(data));
  }

  /// Sets the store layout for the enterprise. By default, storeLayoutType is
  /// set to "basic" and the basic store layout is enabled. The basic layout
  /// only contains apps approved by the admin, and that have been added to the
  /// available product set for a user (using the  setAvailableProductSet call).
  /// Apps on the page are sorted in order of their product ID value. If you
  /// create a custom store layout (by setting storeLayoutType = "custom" and
  /// setting a homepage), the basic store layout is disabled.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StoreLayout].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StoreLayout> setStoreLayout(
      StoreLayout request, core.String enterpriseId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/storeLayout';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new StoreLayout.fromJson(data));
  }

  /// Unenrolls an enterprise from the calling EMM.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future unenroll(core.String enterpriseId, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/unenroll';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }
}

class EntitlementsResourceApi {
  final commons.ApiRequester _requester;

  EntitlementsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Removes an entitlement to an app for a user.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [entitlementId] - The ID of the entitlement (a product ID), e.g.
  /// "app:com.google.android.gm".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(
      core.String enterpriseId, core.String userId, core.String entitlementId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (entitlementId == null) {
      throw new core.ArgumentError("Parameter entitlementId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/entitlements/' +
        commons.Escaper.ecapeVariable('$entitlementId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieves details of an entitlement.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [entitlementId] - The ID of the entitlement (a product ID), e.g.
  /// "app:com.google.android.gm".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Entitlement].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Entitlement> get(
      core.String enterpriseId, core.String userId, core.String entitlementId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (entitlementId == null) {
      throw new core.ArgumentError("Parameter entitlementId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/entitlements/' +
        commons.Escaper.ecapeVariable('$entitlementId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Entitlement.fromJson(data));
  }

  /// Lists all entitlements for the specified user. Only the ID is set.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EntitlementsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EntitlementsListResponse> list(
      core.String enterpriseId, core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/entitlements';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new EntitlementsListResponse.fromJson(data));
  }

  /// Adds or updates an entitlement to an app for a user. This method supports
  /// patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [entitlementId] - The ID of the entitlement (a product ID), e.g.
  /// "app:com.google.android.gm".
  ///
  /// [install] - Set to true to also install the product on all the user's
  /// devices where possible. Failure to install on one or more devices will not
  /// prevent this operation from returning successfully, as long as the
  /// entitlement was successfully assigned to the user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Entitlement].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Entitlement> patch(Entitlement request, core.String enterpriseId,
      core.String userId, core.String entitlementId,
      {core.bool install, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (entitlementId == null) {
      throw new core.ArgumentError("Parameter entitlementId is required.");
    }
    if (install != null) {
      _queryParams["install"] = ["${install}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/entitlements/' +
        commons.Escaper.ecapeVariable('$entitlementId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Entitlement.fromJson(data));
  }

  /// Adds or updates an entitlement to an app for a user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [entitlementId] - The ID of the entitlement (a product ID), e.g.
  /// "app:com.google.android.gm".
  ///
  /// [install] - Set to true to also install the product on all the user's
  /// devices where possible. Failure to install on one or more devices will not
  /// prevent this operation from returning successfully, as long as the
  /// entitlement was successfully assigned to the user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Entitlement].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Entitlement> update(Entitlement request,
      core.String enterpriseId, core.String userId, core.String entitlementId,
      {core.bool install, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (entitlementId == null) {
      throw new core.ArgumentError("Parameter entitlementId is required.");
    }
    if (install != null) {
      _queryParams["install"] = ["${install}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/entitlements/' +
        commons.Escaper.ecapeVariable('$entitlementId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Entitlement.fromJson(data));
  }
}

class GrouplicensesResourceApi {
  final commons.ApiRequester _requester;

  GrouplicensesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Retrieves details of an enterprise's group license for a product.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [groupLicenseId] - The ID of the product the group license is for, e.g.
  /// "app:com.google.android.gm".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GroupLicense].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GroupLicense> get(
      core.String enterpriseId, core.String groupLicenseId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (groupLicenseId == null) {
      throw new core.ArgumentError("Parameter groupLicenseId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/groupLicenses/' +
        commons.Escaper.ecapeVariable('$groupLicenseId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GroupLicense.fromJson(data));
  }

  /// Retrieves IDs of all products for which the enterprise has a group
  /// license.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GroupLicensesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GroupLicensesListResponse> list(core.String enterpriseId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/groupLicenses';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GroupLicensesListResponse.fromJson(data));
  }
}

class GrouplicenseusersResourceApi {
  final commons.ApiRequester _requester;

  GrouplicenseusersResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Retrieves the IDs of the users who have been granted entitlements under
  /// the license.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [groupLicenseId] - The ID of the product the group license is for, e.g.
  /// "app:com.google.android.gm".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GroupLicenseUsersListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GroupLicenseUsersListResponse> list(
      core.String enterpriseId, core.String groupLicenseId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (groupLicenseId == null) {
      throw new core.ArgumentError("Parameter groupLicenseId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/groupLicenses/' +
        commons.Escaper.ecapeVariable('$groupLicenseId') +
        '/users';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GroupLicenseUsersListResponse.fromJson(data));
  }
}

class InstallsResourceApi {
  final commons.ApiRequester _requester;

  InstallsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Requests to remove an app from a device. A call to get or list will still
  /// show the app as installed on the device until it is actually removed.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [deviceId] - The Android ID of the device.
  ///
  /// [installId] - The ID of the product represented by the install, e.g.
  /// "app:com.google.android.gm".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String enterpriseId, core.String userId,
      core.String deviceId, core.String installId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }
    if (installId == null) {
      throw new core.ArgumentError("Parameter installId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/devices/' +
        commons.Escaper.ecapeVariable('$deviceId') +
        '/installs/' +
        commons.Escaper.ecapeVariable('$installId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieves details of an installation of an app on a device.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [deviceId] - The Android ID of the device.
  ///
  /// [installId] - The ID of the product represented by the install, e.g.
  /// "app:com.google.android.gm".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Install].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Install> get(core.String enterpriseId, core.String userId,
      core.String deviceId, core.String installId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }
    if (installId == null) {
      throw new core.ArgumentError("Parameter installId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/devices/' +
        commons.Escaper.ecapeVariable('$deviceId') +
        '/installs/' +
        commons.Escaper.ecapeVariable('$installId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Install.fromJson(data));
  }

  /// Retrieves the details of all apps installed on the specified device.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [deviceId] - The Android ID of the device.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InstallsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InstallsListResponse> list(
      core.String enterpriseId, core.String userId, core.String deviceId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/devices/' +
        commons.Escaper.ecapeVariable('$deviceId') +
        '/installs';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new InstallsListResponse.fromJson(data));
  }

  /// Requests to install the latest version of an app to a device. If the app
  /// is already installed, then it is updated to the latest version if
  /// necessary. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [deviceId] - The Android ID of the device.
  ///
  /// [installId] - The ID of the product represented by the install, e.g.
  /// "app:com.google.android.gm".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Install].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Install> patch(Install request, core.String enterpriseId,
      core.String userId, core.String deviceId, core.String installId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }
    if (installId == null) {
      throw new core.ArgumentError("Parameter installId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/devices/' +
        commons.Escaper.ecapeVariable('$deviceId') +
        '/installs/' +
        commons.Escaper.ecapeVariable('$installId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Install.fromJson(data));
  }

  /// Requests to install the latest version of an app to a device. If the app
  /// is already installed, then it is updated to the latest version if
  /// necessary.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [deviceId] - The Android ID of the device.
  ///
  /// [installId] - The ID of the product represented by the install, e.g.
  /// "app:com.google.android.gm".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Install].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Install> update(Install request, core.String enterpriseId,
      core.String userId, core.String deviceId, core.String installId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }
    if (installId == null) {
      throw new core.ArgumentError("Parameter installId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/devices/' +
        commons.Escaper.ecapeVariable('$deviceId') +
        '/installs/' +
        commons.Escaper.ecapeVariable('$installId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Install.fromJson(data));
  }
}

class ManagedconfigurationsfordeviceResourceApi {
  final commons.ApiRequester _requester;

  ManagedconfigurationsfordeviceResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Removes a per-device managed configuration for an app for the specified
  /// device.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [deviceId] - The Android ID of the device.
  ///
  /// [managedConfigurationForDeviceId] - The ID of the managed configuration (a
  /// product ID), e.g. "app:com.google.android.gm".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String enterpriseId, core.String userId,
      core.String deviceId, core.String managedConfigurationForDeviceId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }
    if (managedConfigurationForDeviceId == null) {
      throw new core.ArgumentError(
          "Parameter managedConfigurationForDeviceId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/devices/' +
        commons.Escaper.ecapeVariable('$deviceId') +
        '/managedConfigurationsForDevice/' +
        commons.Escaper.ecapeVariable('$managedConfigurationForDeviceId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieves details of a per-device managed configuration.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [deviceId] - The Android ID of the device.
  ///
  /// [managedConfigurationForDeviceId] - The ID of the managed configuration (a
  /// product ID), e.g. "app:com.google.android.gm".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagedConfiguration].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagedConfiguration> get(
      core.String enterpriseId,
      core.String userId,
      core.String deviceId,
      core.String managedConfigurationForDeviceId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }
    if (managedConfigurationForDeviceId == null) {
      throw new core.ArgumentError(
          "Parameter managedConfigurationForDeviceId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/devices/' +
        commons.Escaper.ecapeVariable('$deviceId') +
        '/managedConfigurationsForDevice/' +
        commons.Escaper.ecapeVariable('$managedConfigurationForDeviceId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ManagedConfiguration.fromJson(data));
  }

  /// Lists all the per-device managed configurations for the specified device.
  /// Only the ID is set.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [deviceId] - The Android ID of the device.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagedConfigurationsForDeviceListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagedConfigurationsForDeviceListResponse> list(
      core.String enterpriseId, core.String userId, core.String deviceId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/devices/' +
        commons.Escaper.ecapeVariable('$deviceId') +
        '/managedConfigurationsForDevice';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new ManagedConfigurationsForDeviceListResponse.fromJson(data));
  }

  /// Adds or updates a per-device managed configuration for an app for the
  /// specified device. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [deviceId] - The Android ID of the device.
  ///
  /// [managedConfigurationForDeviceId] - The ID of the managed configuration (a
  /// product ID), e.g. "app:com.google.android.gm".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagedConfiguration].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagedConfiguration> patch(
      ManagedConfiguration request,
      core.String enterpriseId,
      core.String userId,
      core.String deviceId,
      core.String managedConfigurationForDeviceId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }
    if (managedConfigurationForDeviceId == null) {
      throw new core.ArgumentError(
          "Parameter managedConfigurationForDeviceId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/devices/' +
        commons.Escaper.ecapeVariable('$deviceId') +
        '/managedConfigurationsForDevice/' +
        commons.Escaper.ecapeVariable('$managedConfigurationForDeviceId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ManagedConfiguration.fromJson(data));
  }

  /// Adds or updates a per-device managed configuration for an app for the
  /// specified device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [deviceId] - The Android ID of the device.
  ///
  /// [managedConfigurationForDeviceId] - The ID of the managed configuration (a
  /// product ID), e.g. "app:com.google.android.gm".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagedConfiguration].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagedConfiguration> update(
      ManagedConfiguration request,
      core.String enterpriseId,
      core.String userId,
      core.String deviceId,
      core.String managedConfigurationForDeviceId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }
    if (managedConfigurationForDeviceId == null) {
      throw new core.ArgumentError(
          "Parameter managedConfigurationForDeviceId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/devices/' +
        commons.Escaper.ecapeVariable('$deviceId') +
        '/managedConfigurationsForDevice/' +
        commons.Escaper.ecapeVariable('$managedConfigurationForDeviceId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ManagedConfiguration.fromJson(data));
  }
}

class ManagedconfigurationsforuserResourceApi {
  final commons.ApiRequester _requester;

  ManagedconfigurationsforuserResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Removes a per-user managed configuration for an app for the specified
  /// user.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [managedConfigurationForUserId] - The ID of the managed configuration (a
  /// product ID), e.g. "app:com.google.android.gm".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String enterpriseId, core.String userId,
      core.String managedConfigurationForUserId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (managedConfigurationForUserId == null) {
      throw new core.ArgumentError(
          "Parameter managedConfigurationForUserId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/managedConfigurationsForUser/' +
        commons.Escaper.ecapeVariable('$managedConfigurationForUserId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieves details of a per-user managed configuration for an app for the
  /// specified user.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [managedConfigurationForUserId] - The ID of the managed configuration (a
  /// product ID), e.g. "app:com.google.android.gm".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagedConfiguration].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagedConfiguration> get(core.String enterpriseId,
      core.String userId, core.String managedConfigurationForUserId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (managedConfigurationForUserId == null) {
      throw new core.ArgumentError(
          "Parameter managedConfigurationForUserId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/managedConfigurationsForUser/' +
        commons.Escaper.ecapeVariable('$managedConfigurationForUserId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ManagedConfiguration.fromJson(data));
  }

  /// Lists all the per-user managed configurations for the specified user. Only
  /// the ID is set.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagedConfigurationsForUserListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagedConfigurationsForUserListResponse> list(
      core.String enterpriseId, core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/managedConfigurationsForUser';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then(
        (data) => new ManagedConfigurationsForUserListResponse.fromJson(data));
  }

  /// Adds or updates the managed configuration settings for an app for the
  /// specified user. If you support the Managed configurations iframe, you can
  /// apply managed configurations to a user by specifying an mcmId and its
  /// associated configuration variables (if any) in the request. Alternatively,
  /// all EMMs can apply managed configurations by passing a list of managed
  /// properties. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [managedConfigurationForUserId] - The ID of the managed configuration (a
  /// product ID), e.g. "app:com.google.android.gm".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagedConfiguration].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagedConfiguration> patch(
      ManagedConfiguration request,
      core.String enterpriseId,
      core.String userId,
      core.String managedConfigurationForUserId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (managedConfigurationForUserId == null) {
      throw new core.ArgumentError(
          "Parameter managedConfigurationForUserId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/managedConfigurationsForUser/' +
        commons.Escaper.ecapeVariable('$managedConfigurationForUserId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ManagedConfiguration.fromJson(data));
  }

  /// Adds or updates the managed configuration settings for an app for the
  /// specified user. If you support the Managed configurations iframe, you can
  /// apply managed configurations to a user by specifying an mcmId and its
  /// associated configuration variables (if any) in the request. Alternatively,
  /// all EMMs can apply managed configurations by passing a list of managed
  /// properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [managedConfigurationForUserId] - The ID of the managed configuration (a
  /// product ID), e.g. "app:com.google.android.gm".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagedConfiguration].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagedConfiguration> update(
      ManagedConfiguration request,
      core.String enterpriseId,
      core.String userId,
      core.String managedConfigurationForUserId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (managedConfigurationForUserId == null) {
      throw new core.ArgumentError(
          "Parameter managedConfigurationForUserId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/managedConfigurationsForUser/' +
        commons.Escaper.ecapeVariable('$managedConfigurationForUserId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ManagedConfiguration.fromJson(data));
  }
}

class ManagedconfigurationssettingsResourceApi {
  final commons.ApiRequester _requester;

  ManagedconfigurationssettingsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists all the managed configurations settings for the specified app. Only
  /// the ID and the name is set.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [productId] - The ID of the product for which the managed configurations
  /// settings applies to.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagedConfigurationsSettingsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagedConfigurationsSettingsListResponse> list(
      core.String enterpriseId, core.String productId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (productId == null) {
      throw new core.ArgumentError("Parameter productId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/products/' +
        commons.Escaper.ecapeVariable('$productId') +
        '/managedConfigurationsSettings';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then(
        (data) => new ManagedConfigurationsSettingsListResponse.fromJson(data));
  }
}

class PermissionsResourceApi {
  final commons.ApiRequester _requester;

  PermissionsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Retrieves details of an Android app permission for display to an
  /// enterprise admin.
  ///
  /// Request parameters:
  ///
  /// [permissionId] - The ID of the permission.
  ///
  /// [language] - The BCP47 tag for the user's preferred language (e.g.
  /// "en-US", "de")
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Permission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Permission> get(core.String permissionId,
      {core.String language, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (permissionId == null) {
      throw new core.ArgumentError("Parameter permissionId is required.");
    }
    if (language != null) {
      _queryParams["language"] = [language];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'permissions/' + commons.Escaper.ecapeVariable('$permissionId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Permission.fromJson(data));
  }
}

class ProductsResourceApi {
  final commons.ApiRequester _requester;

  ProductsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Approves the specified product and the relevant app permissions, if any.
  /// The maximum number of products that you can approve per enterprise
  /// customer is 1,000.
  ///
  /// To learn how to use managed Google Play to design and create a store
  /// layout to display approved products to your users, see Store Layout
  /// Design.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [productId] - The ID of the product.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future approve(ProductsApproveRequest request, core.String enterpriseId,
      core.String productId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (productId == null) {
      throw new core.ArgumentError("Parameter productId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/products/' +
        commons.Escaper.ecapeVariable('$productId') +
        '/approve';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Generates a URL that can be rendered in an iframe to display the
  /// permissions (if any) of a product. An enterprise admin must view these
  /// permissions and accept them on behalf of their organization in order to
  /// approve that product.
  ///
  /// Admins should accept the displayed permissions by interacting with a
  /// separate UI element in the EMM console, which in turn should trigger the
  /// use of this URL as the approvalUrlInfo.approvalUrl property in a
  /// Products.approve call to approve the product. This URL can only be used to
  /// display permissions for up to 1 day.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [productId] - The ID of the product.
  ///
  /// [languageCode] - The BCP 47 language code used for permission names and
  /// descriptions in the returned iframe, for instance "en-US".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductsGenerateApprovalUrlResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductsGenerateApprovalUrlResponse> generateApprovalUrl(
      core.String enterpriseId, core.String productId,
      {core.String languageCode, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (productId == null) {
      throw new core.ArgumentError("Parameter productId is required.");
    }
    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/products/' +
        commons.Escaper.ecapeVariable('$productId') +
        '/generateApprovalUrl';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ProductsGenerateApprovalUrlResponse.fromJson(data));
  }

  /// Retrieves details of a product for display to an enterprise admin.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [productId] - The ID of the product, e.g. "app:com.google.android.gm".
  ///
  /// [language] - The BCP47 tag for the user's preferred language (e.g.
  /// "en-US", "de").
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Product].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Product> get(core.String enterpriseId, core.String productId,
      {core.String language, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (productId == null) {
      throw new core.ArgumentError("Parameter productId is required.");
    }
    if (language != null) {
      _queryParams["language"] = [language];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/products/' +
        commons.Escaper.ecapeVariable('$productId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Product.fromJson(data));
  }

  /// Retrieves the schema that defines the configurable properties for this
  /// product. All products have a schema, but this schema may be empty if no
  /// managed configurations have been defined. This schema can be used to
  /// populate a UI that allows an admin to configure the product. To apply a
  /// managed configuration based on the schema obtained using this API, see
  /// Managed Configurations through Play.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [productId] - The ID of the product.
  ///
  /// [language] - The BCP47 tag for the user's preferred language (e.g.
  /// "en-US", "de").
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppRestrictionsSchema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppRestrictionsSchema> getAppRestrictionsSchema(
      core.String enterpriseId, core.String productId,
      {core.String language, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (productId == null) {
      throw new core.ArgumentError("Parameter productId is required.");
    }
    if (language != null) {
      _queryParams["language"] = [language];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/products/' +
        commons.Escaper.ecapeVariable('$productId') +
        '/appRestrictionsSchema';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AppRestrictionsSchema.fromJson(data));
  }

  /// Retrieves the Android app permissions required by this app.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [productId] - The ID of the product.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductPermissions].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductPermissions> getPermissions(
      core.String enterpriseId, core.String productId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (productId == null) {
      throw new core.ArgumentError("Parameter productId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/products/' +
        commons.Escaper.ecapeVariable('$productId') +
        '/permissions';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ProductPermissions.fromJson(data));
  }

  /// Finds approved products that match a query, or all approved products if
  /// there is no query.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [approved] - Specifies whether to search among all products (false) or
  /// among only products that have been approved (true). Only "true" is
  /// supported, and should be specified.
  ///
  /// [language] - The BCP47 tag for the user's preferred language (e.g.
  /// "en-US", "de"). Results are returned in the language best matching the
  /// preferred language.
  ///
  /// [maxResults] - Specifies the maximum number of products that can be
  /// returned per request. If not specified, uses a default value of 100, which
  /// is also the maximum retrievable within a single response.
  ///
  /// [query] - The search query as typed in the Google Play store search box.
  /// If omitted, all approved apps will be returned (using the pagination
  /// parameters), including apps that are not available in the store (e.g.
  /// unpublished apps).
  ///
  /// [token] - A pagination token is contained in a request's response when
  /// there are more products. The token can be used in a subsequent request to
  /// obtain more products, and so forth. This parameter cannot be used in the
  /// initial request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductsListResponse> list(core.String enterpriseId,
      {core.bool approved,
      core.String language,
      core.int maxResults,
      core.String query,
      core.String token,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (approved != null) {
      _queryParams["approved"] = ["${approved}"];
    }
    if (language != null) {
      _queryParams["language"] = [language];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (query != null) {
      _queryParams["query"] = [query];
    }
    if (token != null) {
      _queryParams["token"] = [token];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/products';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ProductsListResponse.fromJson(data));
  }

  /// Unapproves the specified product (and the relevant app permissions, if
  /// any)
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [productId] - The ID of the product.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future unapprove(core.String enterpriseId, core.String productId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (productId == null) {
      throw new core.ArgumentError("Parameter productId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/products/' +
        commons.Escaper.ecapeVariable('$productId') +
        '/unapprove';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }
}

class ServiceaccountkeysResourceApi {
  final commons.ApiRequester _requester;

  ServiceaccountkeysResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Removes and invalidates the specified credentials for the service account
  /// associated with this enterprise. The calling service account must have
  /// been retrieved by calling Enterprises.GetServiceAccount and must have been
  /// set as the enterprise service account by calling Enterprises.SetAccount.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [keyId] - The ID of the key.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String enterpriseId, core.String keyId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (keyId == null) {
      throw new core.ArgumentError("Parameter keyId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/serviceAccountKeys/' +
        commons.Escaper.ecapeVariable('$keyId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Generates new credentials for the service account associated with this
  /// enterprise. The calling service account must have been retrieved by
  /// calling Enterprises.GetServiceAccount and must have been set as the
  /// enterprise service account by calling Enterprises.SetAccount.
  ///
  /// Only the type of the key should be populated in the resource to be
  /// inserted.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccountKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccountKey> insert(
      ServiceAccountKey request, core.String enterpriseId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/serviceAccountKeys';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceAccountKey.fromJson(data));
  }

  /// Lists all active credentials for the service account associated with this
  /// enterprise. Only the ID and key type are returned. The calling service
  /// account must have been retrieved by calling Enterprises.GetServiceAccount
  /// and must have been set as the enterprise service account by calling
  /// Enterprises.SetAccount.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccountKeysListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccountKeysListResponse> list(core.String enterpriseId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/serviceAccountKeys';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ServiceAccountKeysListResponse.fromJson(data));
  }
}

class StorelayoutclustersResourceApi {
  final commons.ApiRequester _requester;

  StorelayoutclustersResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a cluster.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [pageId] - The ID of the page.
  ///
  /// [clusterId] - The ID of the cluster.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(
      core.String enterpriseId, core.String pageId, core.String clusterId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (pageId == null) {
      throw new core.ArgumentError("Parameter pageId is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/storeLayout/pages/' +
        commons.Escaper.ecapeVariable('$pageId') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieves details of a cluster.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [pageId] - The ID of the page.
  ///
  /// [clusterId] - The ID of the cluster.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StoreCluster].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StoreCluster> get(
      core.String enterpriseId, core.String pageId, core.String clusterId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (pageId == null) {
      throw new core.ArgumentError("Parameter pageId is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/storeLayout/pages/' +
        commons.Escaper.ecapeVariable('$pageId') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new StoreCluster.fromJson(data));
  }

  /// Inserts a new cluster in a page.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [pageId] - The ID of the page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StoreCluster].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StoreCluster> insert(
      StoreCluster request, core.String enterpriseId, core.String pageId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (pageId == null) {
      throw new core.ArgumentError("Parameter pageId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/storeLayout/pages/' +
        commons.Escaper.ecapeVariable('$pageId') +
        '/clusters';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new StoreCluster.fromJson(data));
  }

  /// Retrieves the details of all clusters on the specified page.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [pageId] - The ID of the page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StoreLayoutClustersListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StoreLayoutClustersListResponse> list(
      core.String enterpriseId, core.String pageId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (pageId == null) {
      throw new core.ArgumentError("Parameter pageId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/storeLayout/pages/' +
        commons.Escaper.ecapeVariable('$pageId') +
        '/clusters';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new StoreLayoutClustersListResponse.fromJson(data));
  }

  /// Updates a cluster. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [pageId] - The ID of the page.
  ///
  /// [clusterId] - The ID of the cluster.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StoreCluster].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StoreCluster> patch(StoreCluster request,
      core.String enterpriseId, core.String pageId, core.String clusterId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (pageId == null) {
      throw new core.ArgumentError("Parameter pageId is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/storeLayout/pages/' +
        commons.Escaper.ecapeVariable('$pageId') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new StoreCluster.fromJson(data));
  }

  /// Updates a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [pageId] - The ID of the page.
  ///
  /// [clusterId] - The ID of the cluster.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StoreCluster].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StoreCluster> update(StoreCluster request,
      core.String enterpriseId, core.String pageId, core.String clusterId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (pageId == null) {
      throw new core.ArgumentError("Parameter pageId is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/storeLayout/pages/' +
        commons.Escaper.ecapeVariable('$pageId') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new StoreCluster.fromJson(data));
  }
}

class StorelayoutpagesResourceApi {
  final commons.ApiRequester _requester;

  StorelayoutpagesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a store page.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [pageId] - The ID of the page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String enterpriseId, core.String pageId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (pageId == null) {
      throw new core.ArgumentError("Parameter pageId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/storeLayout/pages/' +
        commons.Escaper.ecapeVariable('$pageId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieves details of a store page.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [pageId] - The ID of the page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StorePage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StorePage> get(core.String enterpriseId, core.String pageId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (pageId == null) {
      throw new core.ArgumentError("Parameter pageId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/storeLayout/pages/' +
        commons.Escaper.ecapeVariable('$pageId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new StorePage.fromJson(data));
  }

  /// Inserts a new store page.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StorePage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StorePage> insert(StorePage request, core.String enterpriseId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/storeLayout/pages';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new StorePage.fromJson(data));
  }

  /// Retrieves the details of all pages in the store.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StoreLayoutPagesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StoreLayoutPagesListResponse> list(core.String enterpriseId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/storeLayout/pages';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new StoreLayoutPagesListResponse.fromJson(data));
  }

  /// Updates the content of a store page. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [pageId] - The ID of the page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StorePage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StorePage> patch(
      StorePage request, core.String enterpriseId, core.String pageId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (pageId == null) {
      throw new core.ArgumentError("Parameter pageId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/storeLayout/pages/' +
        commons.Escaper.ecapeVariable('$pageId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new StorePage.fromJson(data));
  }

  /// Updates the content of a store page.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [pageId] - The ID of the page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StorePage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StorePage> update(
      StorePage request, core.String enterpriseId, core.String pageId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (pageId == null) {
      throw new core.ArgumentError("Parameter pageId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/storeLayout/pages/' +
        commons.Escaper.ecapeVariable('$pageId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new StorePage.fromJson(data));
  }
}

class UsersResourceApi {
  final commons.ApiRequester _requester;

  UsersResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deleted an EMM-managed user.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String enterpriseId, core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Generates an authentication token which the device policy client can use
  /// to provision the given EMM-managed user account on a device. The generated
  /// token is single-use and expires after a few minutes.
  ///
  /// You can provision a maximum of 10 devices per user.
  ///
  /// This call only works with EMM-managed accounts.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuthenticationToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuthenticationToken> generateAuthenticationToken(
      core.String enterpriseId, core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/authenticationToken';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AuthenticationToken.fromJson(data));
  }

  /// Generates a token (activation code) to allow this user to configure their
  /// managed account in the Android Setup Wizard. Revokes any previously
  /// generated token.
  ///
  /// This call only works with Google managed accounts.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserToken> generateToken(
      core.String enterpriseId, core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/token';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UserToken.fromJson(data));
  }

  /// Retrieves a user's details.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> get(core.String enterpriseId, core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new User.fromJson(data));
  }

  /// Retrieves the set of products a user is entitled to access.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductSet> getAvailableProductSet(
      core.String enterpriseId, core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/availableProductSet';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ProductSet.fromJson(data));
  }

  /// Creates a new EMM-managed user.
  ///
  /// The Users resource passed in the body of the request should include an
  /// accountIdentifier and an accountType.
  /// If a corresponding user already exists with the same account identifier,
  /// the user will be updated with the resource. In this case only the
  /// displayName field can be changed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> insert(User request, core.String enterpriseId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new User.fromJson(data));
  }

  /// Looks up a user by primary email address. This is only supported for
  /// Google-managed users. Lookup of the id is not needed for EMM-managed users
  /// because the id is already returned in the result of the Users.insert call.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [email] - The exact primary email address of the user to look up.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UsersListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UsersListResponse> list(
      core.String enterpriseId, core.String email,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (email == null) {
      throw new core.ArgumentError("Parameter email is required.");
    }
    _queryParams["email"] = [email];
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UsersListResponse.fromJson(data));
  }

  /// Updates the details of an EMM-managed user.
  ///
  /// Can be used with EMM-managed users only (not Google managed users). Pass
  /// the new details in the Users resource in the request body. Only the
  /// displayName field can be changed. Other fields must either be unset or
  /// have the currently active value. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> patch(
      User request, core.String enterpriseId, core.String userId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new User.fromJson(data));
  }

  /// Revokes access to all devices currently provisioned to the user. The user
  /// will no longer be able to use the managed Play store on any of their
  /// managed devices.
  ///
  /// This call only works with EMM-managed accounts.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future revokeDeviceAccess(core.String enterpriseId, core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/deviceAccess';

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Revokes a previously generated token (activation code) for the user.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future revokeToken(core.String enterpriseId, core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/token';

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Modifies the set of products that a user is entitled to access (referred
  /// to as whitelisted products). Only products that are approved or products
  /// that were previously approved (products with revoked approval) can be
  /// whitelisted.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductSet> setAvailableProductSet(
      ProductSet request, core.String enterpriseId, core.String userId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/availableProductSet';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ProductSet.fromJson(data));
  }

  /// Updates the details of an EMM-managed user.
  ///
  /// Can be used with EMM-managed users only (not Google managed users). Pass
  /// the new details in the Users resource in the request body. Only the
  /// displayName field can be changed. Other fields must either be unset or
  /// have the currently active value.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> update(
      User request, core.String enterpriseId, core.String userId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new User.fromJson(data));
  }
}

class WebappsResourceApi {
  final commons.ApiRequester _requester;

  WebappsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes an existing web app.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [webAppId] - The ID of the web app.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String enterpriseId, core.String webAppId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (webAppId == null) {
      throw new core.ArgumentError("Parameter webAppId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/webApps/' +
        commons.Escaper.ecapeVariable('$webAppId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Gets an existing web app.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [webAppId] - The ID of the web app.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebApp> get(core.String enterpriseId, core.String webAppId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (webAppId == null) {
      throw new core.ArgumentError("Parameter webAppId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/webApps/' +
        commons.Escaper.ecapeVariable('$webAppId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new WebApp.fromJson(data));
  }

  /// Creates a new web app for the enterprise.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebApp> insert(WebApp request, core.String enterpriseId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/webApps';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new WebApp.fromJson(data));
  }

  /// Retrieves the details of all web apps for a given enterprise.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebAppsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebAppsListResponse> list(core.String enterpriseId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/webApps';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new WebAppsListResponse.fromJson(data));
  }

  /// Updates an existing web app. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [webAppId] - The ID of the web app.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebApp> patch(
      WebApp request, core.String enterpriseId, core.String webAppId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (webAppId == null) {
      throw new core.ArgumentError("Parameter webAppId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/webApps/' +
        commons.Escaper.ecapeVariable('$webAppId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new WebApp.fromJson(data));
  }

  /// Updates an existing web app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseId] - The ID of the enterprise.
  ///
  /// [webAppId] - The ID of the web app.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebApp> update(
      WebApp request, core.String enterpriseId, core.String webAppId,
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
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (webAppId == null) {
      throw new core.ArgumentError("Parameter webAppId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'enterprises/' +
        commons.Escaper.ecapeVariable('$enterpriseId') +
        '/webApps/' +
        commons.Escaper.ecapeVariable('$webAppId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new WebApp.fromJson(data));
  }
}

/// This represents an enterprise admin who can manage the enterprise in the
/// managed Google Play store.
class Administrator {
  /// The admin's email address.
  core.String email;

  Administrator();

  Administrator.fromJson(core.Map _json) {
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (email != null) {
      _json["email"] = email;
    }
    return _json;
  }
}

/// A token authorizing an admin to access an iframe.
class AdministratorWebToken {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#administratorWebToken".
  core.String kind;

  /// An opaque token to be passed to the Play front-end to generate an iframe.
  core.String token;

  AdministratorWebToken();

  AdministratorWebToken.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("token")) {
      token = _json["token"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (token != null) {
      _json["token"] = token;
    }
    return _json;
  }
}

/// Specification for a token used to generate iframes. The token specifies what
/// data the admin is allowed to modify and the URI the iframe is allowed to
/// communiate with.
class AdministratorWebTokenSpec {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#administratorWebTokenSpec".
  core.String kind;

  /// Options for displaying the Managed Configuration page.
  AdministratorWebTokenSpecManagedConfigurations managedConfigurations;

  /// The URI of the parent frame hosting the iframe. To prevent XSS, the iframe
  /// may not be hosted at other URIs. This URI must be https.
  core.String parent;

  /// Deprecated. Use PlaySearch.approveApps.
  core.List<core.String> permission;

  /// Options for displaying the managed Play Search apps page.
  AdministratorWebTokenSpecPlaySearch playSearch;

  /// Options for displaying the Private Apps page.
  AdministratorWebTokenSpecPrivateApps privateApps;

  /// Options for displaying the Organize apps page.
  AdministratorWebTokenSpecStoreBuilder storeBuilder;

  /// Options for displaying the Web Apps page.
  AdministratorWebTokenSpecWebApps webApps;

  AdministratorWebTokenSpec();

  AdministratorWebTokenSpec.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("managedConfigurations")) {
      managedConfigurations =
          new AdministratorWebTokenSpecManagedConfigurations.fromJson(
              _json["managedConfigurations"]);
    }
    if (_json.containsKey("parent")) {
      parent = _json["parent"];
    }
    if (_json.containsKey("permission")) {
      permission = (_json["permission"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("playSearch")) {
      playSearch =
          new AdministratorWebTokenSpecPlaySearch.fromJson(_json["playSearch"]);
    }
    if (_json.containsKey("privateApps")) {
      privateApps = new AdministratorWebTokenSpecPrivateApps.fromJson(
          _json["privateApps"]);
    }
    if (_json.containsKey("storeBuilder")) {
      storeBuilder = new AdministratorWebTokenSpecStoreBuilder.fromJson(
          _json["storeBuilder"]);
    }
    if (_json.containsKey("webApps")) {
      webApps = new AdministratorWebTokenSpecWebApps.fromJson(_json["webApps"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (managedConfigurations != null) {
      _json["managedConfigurations"] = (managedConfigurations).toJson();
    }
    if (parent != null) {
      _json["parent"] = parent;
    }
    if (permission != null) {
      _json["permission"] = permission;
    }
    if (playSearch != null) {
      _json["playSearch"] = (playSearch).toJson();
    }
    if (privateApps != null) {
      _json["privateApps"] = (privateApps).toJson();
    }
    if (storeBuilder != null) {
      _json["storeBuilder"] = (storeBuilder).toJson();
    }
    if (webApps != null) {
      _json["webApps"] = (webApps).toJson();
    }
    return _json;
  }
}

class AdministratorWebTokenSpecManagedConfigurations {
  /// Whether the Managed Configuration page is displayed. Default is true.
  core.bool enabled;

  AdministratorWebTokenSpecManagedConfigurations();

  AdministratorWebTokenSpecManagedConfigurations.fromJson(core.Map _json) {
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    return _json;
  }
}

class AdministratorWebTokenSpecPlaySearch {
  /// Allow access to the iframe in approve mode. Default is false.
  core.bool approveApps;

  /// Whether the managed Play Search apps page is displayed. Default is true.
  core.bool enabled;

  AdministratorWebTokenSpecPlaySearch();

  AdministratorWebTokenSpecPlaySearch.fromJson(core.Map _json) {
    if (_json.containsKey("approveApps")) {
      approveApps = _json["approveApps"];
    }
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (approveApps != null) {
      _json["approveApps"] = approveApps;
    }
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    return _json;
  }
}

class AdministratorWebTokenSpecPrivateApps {
  /// Whether the Private Apps page is displayed. Default is true.
  core.bool enabled;

  AdministratorWebTokenSpecPrivateApps();

  AdministratorWebTokenSpecPrivateApps.fromJson(core.Map _json) {
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    return _json;
  }
}

class AdministratorWebTokenSpecStoreBuilder {
  /// Whether the Organize apps page is displayed. Default is true.
  core.bool enabled;

  AdministratorWebTokenSpecStoreBuilder();

  AdministratorWebTokenSpecStoreBuilder.fromJson(core.Map _json) {
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    return _json;
  }
}

class AdministratorWebTokenSpecWebApps {
  /// Whether the Web Apps page is displayed. Default is true.
  core.bool enabled;

  AdministratorWebTokenSpecWebApps();

  AdministratorWebTokenSpecWebApps.fromJson(core.Map _json) {
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    return _json;
  }
}

/// Represents the list of app restrictions available to be pre-configured for
/// the product.
class AppRestrictionsSchema {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#appRestrictionsSchema".
  core.String kind;

  /// The set of restrictions that make up this schema.
  core.List<AppRestrictionsSchemaRestriction> restrictions;

  AppRestrictionsSchema();

  AppRestrictionsSchema.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("restrictions")) {
      restrictions = (_json["restrictions"] as core.List)
          .map<AppRestrictionsSchemaRestriction>(
              (value) => new AppRestrictionsSchemaRestriction.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (restrictions != null) {
      _json["restrictions"] =
          restrictions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// An event generated when a new app version is uploaded to Google Play and its
/// app restrictions schema changed. To fetch the app restrictions schema for an
/// app, use Products.getAppRestrictionsSchema on the EMM API.
class AppRestrictionsSchemaChangeEvent {
  /// The id of the product (e.g. "app:com.google.android.gm") for which the app
  /// restriction schema changed. This field will always be present.
  core.String productId;

  AppRestrictionsSchemaChangeEvent();

  AppRestrictionsSchemaChangeEvent.fromJson(core.Map _json) {
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (productId != null) {
      _json["productId"] = productId;
    }
    return _json;
  }
}

/// A restriction in the App Restriction Schema represents a piece of
/// configuration that may be pre-applied.
class AppRestrictionsSchemaRestriction {
  /// The default value of the restriction. bundle and bundleArray restrictions
  /// never have a default value.
  AppRestrictionsSchemaRestrictionRestrictionValue defaultValue;

  /// A longer description of the restriction, giving more detail of what it
  /// affects.
  core.String description;

  /// For choice or multiselect restrictions, the list of possible entries'
  /// human-readable names.
  core.List<core.String> entry;

  /// For choice or multiselect restrictions, the list of possible entries'
  /// machine-readable values. These values should be used in the configuration,
  /// either as a single string value for a choice restriction or in a
  /// stringArray for a multiselect restriction.
  core.List<core.String> entryValue;

  /// The unique key that the product uses to identify the restriction, e.g.
  /// "com.google.android.gm.fieldname".
  core.String key;

  /// For bundle or bundleArray restrictions, the list of nested restrictions. A
  /// bundle restriction is always nested within a bundleArray restriction, and
  /// a bundleArray restriction is at most two levels deep.
  core.List<AppRestrictionsSchemaRestriction> nestedRestriction;

  /// The type of the restriction.
  core.String restrictionType;

  /// The name of the restriction.
  core.String title;

  AppRestrictionsSchemaRestriction();

  AppRestrictionsSchemaRestriction.fromJson(core.Map _json) {
    if (_json.containsKey("defaultValue")) {
      defaultValue =
          new AppRestrictionsSchemaRestrictionRestrictionValue.fromJson(
              _json["defaultValue"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("entry")) {
      entry = (_json["entry"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("entryValue")) {
      entryValue = (_json["entryValue"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("nestedRestriction")) {
      nestedRestriction = (_json["nestedRestriction"] as core.List)
          .map<AppRestrictionsSchemaRestriction>(
              (value) => new AppRestrictionsSchemaRestriction.fromJson(value))
          .toList();
    }
    if (_json.containsKey("restrictionType")) {
      restrictionType = _json["restrictionType"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (defaultValue != null) {
      _json["defaultValue"] = (defaultValue).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (entry != null) {
      _json["entry"] = entry;
    }
    if (entryValue != null) {
      _json["entryValue"] = entryValue;
    }
    if (key != null) {
      _json["key"] = key;
    }
    if (nestedRestriction != null) {
      _json["nestedRestriction"] =
          nestedRestriction.map((value) => (value).toJson()).toList();
    }
    if (restrictionType != null) {
      _json["restrictionType"] = restrictionType;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// A typed value for the restriction.
class AppRestrictionsSchemaRestrictionRestrictionValue {
  /// The type of the value being provided.
  core.String type;

  /// The boolean value - this will only be present if type is bool.
  core.bool valueBool;

  /// The integer value - this will only be present if type is integer.
  core.int valueInteger;

  /// The list of string values - this will only be present if type is
  /// multiselect.
  core.List<core.String> valueMultiselect;

  /// The string value - this will be present for types string, choice and
  /// hidden.
  core.String valueString;

  AppRestrictionsSchemaRestrictionRestrictionValue();

  AppRestrictionsSchemaRestrictionRestrictionValue.fromJson(core.Map _json) {
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("valueBool")) {
      valueBool = _json["valueBool"];
    }
    if (_json.containsKey("valueInteger")) {
      valueInteger = _json["valueInteger"];
    }
    if (_json.containsKey("valueMultiselect")) {
      valueMultiselect =
          (_json["valueMultiselect"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("valueString")) {
      valueString = _json["valueString"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (type != null) {
      _json["type"] = type;
    }
    if (valueBool != null) {
      _json["valueBool"] = valueBool;
    }
    if (valueInteger != null) {
      _json["valueInteger"] = valueInteger;
    }
    if (valueMultiselect != null) {
      _json["valueMultiselect"] = valueMultiselect;
    }
    if (valueString != null) {
      _json["valueString"] = valueString;
    }
    return _json;
  }
}

/// List of states set by the app.
class AppState {
  /// List of keyed app states. This field will always be present.
  core.List<KeyedAppState> keyedAppState;

  /// The package name of the app. This field will always be present.
  core.String packageName;

  AppState();

  AppState.fromJson(core.Map _json) {
    if (_json.containsKey("keyedAppState")) {
      keyedAppState = (_json["keyedAppState"] as core.List)
          .map<KeyedAppState>((value) => new KeyedAppState.fromJson(value))
          .toList();
    }
    if (_json.containsKey("packageName")) {
      packageName = _json["packageName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (keyedAppState != null) {
      _json["keyedAppState"] =
          keyedAppState.map((value) => (value).toJson()).toList();
    }
    if (packageName != null) {
      _json["packageName"] = packageName;
    }
    return _json;
  }
}

/// An event generated when a new version of an app is uploaded to Google Play.
/// Notifications are sent for new public versions only: alpha, beta, or canary
/// versions do not generate this event. To fetch up-to-date version history for
/// an app, use Products.Get on the EMM API.
class AppUpdateEvent {
  /// The id of the product (e.g. "app:com.google.android.gm") that was updated.
  /// This field will always be present.
  core.String productId;

  AppUpdateEvent();

  AppUpdateEvent.fromJson(core.Map _json) {
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (productId != null) {
      _json["productId"] = productId;
    }
    return _json;
  }
}

/// This represents a single version of the app.
class AppVersion {
  /// True if this version is a production APK.
  core.bool isProduction;

  /// Deprecated, use trackId instead.
  core.String track;

  /// Track ids that the app version is published in. Replaces the track field
  /// (deprecated), but doesn't include the production track (see isProduction
  /// instead).
  core.List<core.String> trackId;

  /// Unique increasing identifier for the app version.
  core.int versionCode;

  /// The string used in the Play store by the app developer to identify the
  /// version. The string is not necessarily unique or localized (for example,
  /// the string could be "1.4").
  core.String versionString;

  AppVersion();

  AppVersion.fromJson(core.Map _json) {
    if (_json.containsKey("isProduction")) {
      isProduction = _json["isProduction"];
    }
    if (_json.containsKey("track")) {
      track = _json["track"];
    }
    if (_json.containsKey("trackId")) {
      trackId = (_json["trackId"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("versionCode")) {
      versionCode = _json["versionCode"];
    }
    if (_json.containsKey("versionString")) {
      versionString = _json["versionString"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (isProduction != null) {
      _json["isProduction"] = isProduction;
    }
    if (track != null) {
      _json["track"] = track;
    }
    if (trackId != null) {
      _json["trackId"] = trackId;
    }
    if (versionCode != null) {
      _json["versionCode"] = versionCode;
    }
    if (versionString != null) {
      _json["versionString"] = versionString;
    }
    return _json;
  }
}

/// Information on an approval URL.
class ApprovalUrlInfo {
  /// A URL that displays a product's permissions and that can also be used to
  /// approve the product with the Products.approve call.
  core.String approvalUrl;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#approvalUrlInfo".
  core.String kind;

  ApprovalUrlInfo();

  ApprovalUrlInfo.fromJson(core.Map _json) {
    if (_json.containsKey("approvalUrl")) {
      approvalUrl = _json["approvalUrl"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (approvalUrl != null) {
      _json["approvalUrl"] = approvalUrl;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// An AuthenticationToken is used by the EMM's device policy client on a device
/// to provision the given EMM-managed user on that device.
class AuthenticationToken {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#authenticationToken".
  core.String kind;

  /// The authentication token to be passed to the device policy client on the
  /// device where it can be used to provision the account for which this token
  /// was generated.
  core.String token;

  AuthenticationToken();

  AuthenticationToken.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("token")) {
      token = _json["token"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (token != null) {
      _json["token"] = token;
    }
    return _json;
  }
}

/// The auto-install constraint. Defines a set of restrictions for installation.
/// At least one of the fields must be set.
class AutoInstallConstraint {
  /// Charging state constraint.
  core.String chargingStateConstraint;

  /// Device idle state constraint.
  core.String deviceIdleStateConstraint;

  /// Network type constraint.
  core.String networkTypeConstraint;

  AutoInstallConstraint();

  AutoInstallConstraint.fromJson(core.Map _json) {
    if (_json.containsKey("chargingStateConstraint")) {
      chargingStateConstraint = _json["chargingStateConstraint"];
    }
    if (_json.containsKey("deviceIdleStateConstraint")) {
      deviceIdleStateConstraint = _json["deviceIdleStateConstraint"];
    }
    if (_json.containsKey("networkTypeConstraint")) {
      networkTypeConstraint = _json["networkTypeConstraint"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (chargingStateConstraint != null) {
      _json["chargingStateConstraint"] = chargingStateConstraint;
    }
    if (deviceIdleStateConstraint != null) {
      _json["deviceIdleStateConstraint"] = deviceIdleStateConstraint;
    }
    if (networkTypeConstraint != null) {
      _json["networkTypeConstraint"] = networkTypeConstraint;
    }
    return _json;
  }
}

class AutoInstallPolicy {
  /// The constraints for auto-installing the app. You can specify a maximum of
  /// one constraint.
  core.List<AutoInstallConstraint> autoInstallConstraint;

  /// The auto-install mode. If unset defaults to "doNotAutoInstall".
  core.String autoInstallMode;

  /// The priority of the install, as an unsigned integer. A lower number means
  /// higher priority.
  core.int autoInstallPriority;

  /// The minimum version of the app. If a lower version of the app is
  /// installed, then the app will be auto-updated according to the auto-install
  /// constraints, instead of waiting for the regular auto-update.
  core.int minimumVersionCode;

  AutoInstallPolicy();

  AutoInstallPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("autoInstallConstraint")) {
      autoInstallConstraint = (_json["autoInstallConstraint"] as core.List)
          .map<AutoInstallConstraint>(
              (value) => new AutoInstallConstraint.fromJson(value))
          .toList();
    }
    if (_json.containsKey("autoInstallMode")) {
      autoInstallMode = _json["autoInstallMode"];
    }
    if (_json.containsKey("autoInstallPriority")) {
      autoInstallPriority = _json["autoInstallPriority"];
    }
    if (_json.containsKey("minimumVersionCode")) {
      minimumVersionCode = _json["minimumVersionCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (autoInstallConstraint != null) {
      _json["autoInstallConstraint"] =
          autoInstallConstraint.map((value) => (value).toJson()).toList();
    }
    if (autoInstallMode != null) {
      _json["autoInstallMode"] = autoInstallMode;
    }
    if (autoInstallPriority != null) {
      _json["autoInstallPriority"] = autoInstallPriority;
    }
    if (minimumVersionCode != null) {
      _json["minimumVersionCode"] = minimumVersionCode;
    }
    return _json;
  }
}

/// A configuration variables resource contains the managed configuration
/// settings ID to be applied to a single user, as well as the variable set that
/// is attributed to the user. The variable set will be used to replace
/// placeholders in the managed configuration settings.
class ConfigurationVariables {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#configurationVariables".
  core.String kind;

  /// The ID of the managed configurations settings.
  core.String mcmId;

  /// The variable set that is attributed to the user.
  core.List<VariableSet> variableSet;

  ConfigurationVariables();

  ConfigurationVariables.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("mcmId")) {
      mcmId = _json["mcmId"];
    }
    if (_json.containsKey("variableSet")) {
      variableSet = (_json["variableSet"] as core.List)
          .map<VariableSet>((value) => new VariableSet.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (mcmId != null) {
      _json["mcmId"] = mcmId;
    }
    if (variableSet != null) {
      _json["variableSet"] =
          variableSet.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A Devices resource represents a mobile device managed by the EMM and
/// belonging to a specific enterprise user.
class Device {
  /// The Google Play Services Android ID for the device encoded as a lowercase
  /// hex string. For example, "123456789abcdef0".
  core.String androidId;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#device".
  core.String kind;

  /// Identifies the extent to which the device is controlled by a managed
  /// Google Play EMM in various deployment configurations.
  ///
  /// Possible values include:
  /// - "managedDevice", a device that has the EMM's device policy controller
  /// (DPC) as the device owner.
  /// - "managedProfile", a device that has a profile managed by the DPC (DPC is
  /// profile owner) in addition to a separate, personal profile that is
  /// unavailable to the DPC.
  /// - "containerApp", no longer used (deprecated).
  /// - "unmanagedProfile", a device that has been allowed (by the domain's
  /// admin, using the Admin Console to enable the privilege) to use managed
  /// Google Play, but the profile is itself not owned by a DPC.
  core.String managementType;

  /// The policy enforced on the device.
  Policy policy;

  /// The device report updated with the latest app states.
  DeviceReport report;

  Device();

  Device.fromJson(core.Map _json) {
    if (_json.containsKey("androidId")) {
      androidId = _json["androidId"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("managementType")) {
      managementType = _json["managementType"];
    }
    if (_json.containsKey("policy")) {
      policy = new Policy.fromJson(_json["policy"]);
    }
    if (_json.containsKey("report")) {
      report = new DeviceReport.fromJson(_json["report"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (androidId != null) {
      _json["androidId"] = androidId;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (managementType != null) {
      _json["managementType"] = managementType;
    }
    if (policy != null) {
      _json["policy"] = (policy).toJson();
    }
    if (report != null) {
      _json["report"] = (report).toJson();
    }
    return _json;
  }
}

/// Device report updated with the latest app states for managed apps on the
/// device.
class DeviceReport {
  /// List of app states set by managed apps on the device. App states are
  /// defined by the app's developers. This field will always be present.
  core.List<AppState> appState;

  /// The timestamp of the last report update in milliseconds since epoch. This
  /// field will always be present.
  core.String lastUpdatedTimestampMillis;

  DeviceReport();

  DeviceReport.fromJson(core.Map _json) {
    if (_json.containsKey("appState")) {
      appState = (_json["appState"] as core.List)
          .map<AppState>((value) => new AppState.fromJson(value))
          .toList();
    }
    if (_json.containsKey("lastUpdatedTimestampMillis")) {
      lastUpdatedTimestampMillis = _json["lastUpdatedTimestampMillis"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appState != null) {
      _json["appState"] = appState.map((value) => (value).toJson()).toList();
    }
    if (lastUpdatedTimestampMillis != null) {
      _json["lastUpdatedTimestampMillis"] = lastUpdatedTimestampMillis;
    }
    return _json;
  }
}

/// An event generated when an updated device report is available.
class DeviceReportUpdateEvent {
  /// The Android ID of the device. This field will always be present.
  core.String deviceId;

  /// The device report updated with the latest app states. This field will
  /// always be present.
  DeviceReport report;

  /// The ID of the user. This field will always be present.
  core.String userId;

  DeviceReportUpdateEvent();

  DeviceReportUpdateEvent.fromJson(core.Map _json) {
    if (_json.containsKey("deviceId")) {
      deviceId = _json["deviceId"];
    }
    if (_json.containsKey("report")) {
      report = new DeviceReport.fromJson(_json["report"]);
    }
    if (_json.containsKey("userId")) {
      userId = _json["userId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deviceId != null) {
      _json["deviceId"] = deviceId;
    }
    if (report != null) {
      _json["report"] = (report).toJson();
    }
    if (userId != null) {
      _json["userId"] = userId;
    }
    return _json;
  }
}

/// The state of a user's device, as accessed by the getState and setState
/// methods on device resources.
class DeviceState {
  /// The state of the Google account on the device. "enabled" indicates that
  /// the Google account on the device can be used to access Google services
  /// (including Google Play), while "disabled" means that it cannot. A new
  /// device is initially in the "disabled" state.
  core.String accountState;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#deviceState".
  core.String kind;

  DeviceState();

  DeviceState.fromJson(core.Map _json) {
    if (_json.containsKey("accountState")) {
      accountState = _json["accountState"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountState != null) {
      _json["accountState"] = accountState;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// The device resources for the user.
class DevicesListResponse {
  /// A managed device.
  core.List<Device> device;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#devicesListResponse".
  core.String kind;

  DevicesListResponse();

  DevicesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("device")) {
      device = (_json["device"] as core.List)
          .map<Device>((value) => new Device.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (device != null) {
      _json["device"] = device.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// An Enterprises resource represents the binding between an EMM and a specific
/// organization. That binding can be instantiated in one of two different ways
/// using this API as follows:
/// - For Google managed domain customers, the process involves using
/// Enterprises.enroll and Enterprises.setAccount (in conjunction with artifacts
/// obtained from the Admin console and the Google API Console) and submitted to
/// the EMM through a more-or-less manual process.
/// - For managed Google Play Accounts customers, the process involves using
/// Enterprises.generateSignupUrl and Enterprises.completeSignup in conjunction
/// with the managed Google Play sign-up UI (Google-provided mechanism) to
/// create the binding without manual steps. As an EMM, you can support either
/// or both approaches in your EMM console. See Create an Enterprise for
/// details.
class Enterprise {
  /// Admins of the enterprise. This is only supported for enterprises created
  /// via the EMM-initiated flow.
  core.List<Administrator> administrator;

  /// The unique ID for the enterprise.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#enterprise".
  core.String kind;

  /// The name of the enterprise, for example, "Example, Inc".
  core.String name;

  /// The enterprise's primary domain, such as "example.com".
  core.String primaryDomain;

  Enterprise();

  Enterprise.fromJson(core.Map _json) {
    if (_json.containsKey("administrator")) {
      administrator = (_json["administrator"] as core.List)
          .map<Administrator>((value) => new Administrator.fromJson(value))
          .toList();
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("primaryDomain")) {
      primaryDomain = _json["primaryDomain"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (administrator != null) {
      _json["administrator"] =
          administrator.map((value) => (value).toJson()).toList();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (primaryDomain != null) {
      _json["primaryDomain"] = primaryDomain;
    }
    return _json;
  }
}

/// A service account that can be used to authenticate as the enterprise to API
/// calls that require such authentication.
class EnterpriseAccount {
  /// The email address of the service account.
  core.String accountEmail;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#enterpriseAccount".
  core.String kind;

  EnterpriseAccount();

  EnterpriseAccount.fromJson(core.Map _json) {
    if (_json.containsKey("accountEmail")) {
      accountEmail = _json["accountEmail"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountEmail != null) {
      _json["accountEmail"] = accountEmail;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// The matching enterprise resources.
class EnterprisesListResponse {
  /// An enterprise.
  core.List<Enterprise> enterprise;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#enterprisesListResponse".
  core.String kind;

  EnterprisesListResponse();

  EnterprisesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("enterprise")) {
      enterprise = (_json["enterprise"] as core.List)
          .map<Enterprise>((value) => new Enterprise.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enterprise != null) {
      _json["enterprise"] =
          enterprise.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

class EnterprisesSendTestPushNotificationResponse {
  /// The message ID of the test push notification that was sent.
  core.String messageId;

  /// The name of the Cloud Pub/Sub topic to which notifications for this
  /// enterprise's enrolled account will be sent.
  core.String topicName;

  EnterprisesSendTestPushNotificationResponse();

  EnterprisesSendTestPushNotificationResponse.fromJson(core.Map _json) {
    if (_json.containsKey("messageId")) {
      messageId = _json["messageId"];
    }
    if (_json.containsKey("topicName")) {
      topicName = _json["topicName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (messageId != null) {
      _json["messageId"] = messageId;
    }
    if (topicName != null) {
      _json["topicName"] = topicName;
    }
    return _json;
  }
}

/// The presence of an Entitlements resource indicates that a user has the right
/// to use a particular app. Entitlements are user specific, not device
/// specific. This allows a user with an entitlement to an app to install the
/// app on all their devices. It's also possible for a user to hold an
/// entitlement to an app without installing the app on any device.
///
/// The API can be used to create an entitlement. As an option, you can also use
/// the API to trigger the installation of an app on all a user's managed
/// devices at the same time the entitlement is created.
///
/// If the app is free, creating the entitlement also creates a group license
/// for that app. For paid apps, creating the entitlement consumes one license,
/// and that license remains consumed until the entitlement is removed. If the
/// enterprise hasn't purchased enough licenses, then no entitlement is created
/// and the installation fails. An entitlement is also not created for an app if
/// the app requires permissions that the enterprise hasn't accepted.
///
/// If an entitlement is deleted, the app may be uninstalled from a user's
/// device. As a best practice, uninstall the app by calling  Installs.delete()
/// before deleting the entitlement.
///
/// Entitlements for apps that a user pays for on an unmanaged profile have
/// "userPurchase" as the entitlement reason. These entitlements cannot be
/// removed via the API.
class Entitlement {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#entitlement".
  core.String kind;

  /// The ID of the product that the entitlement is for. For example,
  /// "app:com.google.android.gm".
  core.String productId;

  /// The reason for the entitlement. For example, "free" for free apps. This
  /// property is temporary: it will be replaced by the acquisition kind field
  /// of group licenses.
  core.String reason;

  Entitlement();

  Entitlement.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
    if (_json.containsKey("reason")) {
      reason = _json["reason"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    if (reason != null) {
      _json["reason"] = reason;
    }
    return _json;
  }
}

/// The entitlement resources for the user.
class EntitlementsListResponse {
  /// An entitlement of a user to a product (e.g. an app). For example, a free
  /// app that they have installed, or a paid app that they have been allocated
  /// a license to.
  core.List<Entitlement> entitlement;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#entitlementsListResponse".
  core.String kind;

  EntitlementsListResponse();

  EntitlementsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("entitlement")) {
      entitlement = (_json["entitlement"] as core.List)
          .map<Entitlement>((value) => new Entitlement.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (entitlement != null) {
      _json["entitlement"] =
          entitlement.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// Group license objects allow you to keep track of licenses (called
/// entitlements) for both free and paid apps. For a free app, a group license
/// is created when an enterprise admin first approves the product in Google
/// Play or when the first entitlement for the product is created for a user via
/// the API. For a paid app, a group license object is only created when an
/// enterprise admin purchases the product in Google Play for the first time.
///
/// Use the API to query group licenses. A Grouplicenses resource includes the
/// total number of licenses purchased (paid apps only) and the total number of
/// licenses currently in use. In other words, the total number of Entitlements
/// that exist for the product.
///
/// Only one group license object is created per product and group license
/// objects are never deleted. If a product is unapproved, its group license
/// remains. This allows enterprise admins to keep track of any remaining
/// entitlements for the product.
class GroupLicense {
  /// How this group license was acquired. "bulkPurchase" means that this
  /// Grouplicenses resource was created because the enterprise purchased
  /// licenses for this product; otherwise, the value is "free" (for free
  /// products).
  core.String acquisitionKind;

  /// Whether the product to which this group license relates is currently
  /// approved by the enterprise. Products are approved when a group license is
  /// first created, but this approval may be revoked by an enterprise admin via
  /// Google Play. Unapproved products will not be visible to end users in
  /// collections, and new entitlements to them should not normally be created.
  core.String approval;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#groupLicense".
  core.String kind;

  /// The total number of provisioned licenses for this product. Returned by
  /// read operations, but ignored in write operations.
  core.int numProvisioned;

  /// The number of purchased licenses (possibly in multiple purchases). If this
  /// field is omitted, then there is no limit on the number of licenses that
  /// can be provisioned (for example, if the acquisition kind is "free").
  core.int numPurchased;

  /// The permission approval status of the product. This field is only set if
  /// the product is approved. Possible states are:
  /// - "currentApproved", the current set of permissions is approved, but
  /// additional permissions will require the administrator to reapprove the
  /// product (If the product was approved without specifying the approved
  /// permissions setting, then this is the default behavior.),
  /// - "needsReapproval", the product has unapproved permissions. No additional
  /// product licenses can be assigned until the product is reapproved,
  /// - "allCurrentAndFutureApproved", the current permissions are approved and
  /// any future permission updates will be automatically approved without
  /// administrator review.
  core.String permissions;

  /// The ID of the product that the license is for. For example,
  /// "app:com.google.android.gm".
  core.String productId;

  GroupLicense();

  GroupLicense.fromJson(core.Map _json) {
    if (_json.containsKey("acquisitionKind")) {
      acquisitionKind = _json["acquisitionKind"];
    }
    if (_json.containsKey("approval")) {
      approval = _json["approval"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("numProvisioned")) {
      numProvisioned = _json["numProvisioned"];
    }
    if (_json.containsKey("numPurchased")) {
      numPurchased = _json["numPurchased"];
    }
    if (_json.containsKey("permissions")) {
      permissions = _json["permissions"];
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (acquisitionKind != null) {
      _json["acquisitionKind"] = acquisitionKind;
    }
    if (approval != null) {
      _json["approval"] = approval;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (numProvisioned != null) {
      _json["numProvisioned"] = numProvisioned;
    }
    if (numPurchased != null) {
      _json["numPurchased"] = numPurchased;
    }
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    return _json;
  }
}

/// The user resources for the group license.
class GroupLicenseUsersListResponse {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#groupLicenseUsersListResponse".
  core.String kind;

  /// A user of an enterprise.
  core.List<User> user;

  GroupLicenseUsersListResponse();

  GroupLicenseUsersListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("user")) {
      user = (_json["user"] as core.List)
          .map<User>((value) => new User.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (user != null) {
      _json["user"] = user.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The grouplicense resources for the enterprise.
class GroupLicensesListResponse {
  /// A group license for a product approved for use in the enterprise.
  core.List<GroupLicense> groupLicense;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#groupLicensesListResponse".
  core.String kind;

  GroupLicensesListResponse();

  GroupLicensesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("groupLicense")) {
      groupLicense = (_json["groupLicense"] as core.List)
          .map<GroupLicense>((value) => new GroupLicense.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (groupLicense != null) {
      _json["groupLicense"] =
          groupLicense.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// The existence of an Installs resource indicates that an app is installed on
/// a particular device (or that an install is pending).
///
/// The API can be used to create an install resource using the update method.
/// This triggers the actual install of the app on the device. If the user does
/// not already have an entitlement for the app, then an attempt is made to
/// create one. If this fails (for example, because the app is not free and
/// there is no available license), then the creation of the install fails.
///
/// The API can also be used to update an installed app. If the update method is
/// used on an existing install, then the app will be updated to the latest
/// available version.
///
/// Note that it is not possible to force the installation of a specific version
/// of an app: the version code is read-only.
///
/// If a user installs an app themselves (as permitted by the enterprise), then
/// again an install resource and possibly an entitlement resource are
/// automatically created.
///
/// The API can also be used to delete an install resource, which triggers the
/// removal of the app from the device. Note that deleting an install does not
/// automatically remove the corresponding entitlement, even if there are no
/// remaining installs. The install resource will also be deleted if the user
/// uninstalls the app themselves.
class Install {
  /// Install state. The state "installPending" means that an install request
  /// has recently been made and download to the device is in progress. The
  /// state "installed" means that the app has been installed. This field is
  /// read-only.
  core.String installState;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#install".
  core.String kind;

  /// The ID of the product that the install is for. For example,
  /// "app:com.google.android.gm".
  core.String productId;

  /// The version of the installed product. Guaranteed to be set only if the
  /// install state is "installed".
  core.int versionCode;

  Install();

  Install.fromJson(core.Map _json) {
    if (_json.containsKey("installState")) {
      installState = _json["installState"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
    if (_json.containsKey("versionCode")) {
      versionCode = _json["versionCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (installState != null) {
      _json["installState"] = installState;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    if (versionCode != null) {
      _json["versionCode"] = versionCode;
    }
    return _json;
  }
}

/// An event generated when an app installation failed on a device
class InstallFailureEvent {
  /// The Android ID of the device. This field will always be present.
  core.String deviceId;

  /// Additional details on the failure if applicable.
  core.String failureDetails;

  /// The reason for the installation failure. This field will always be
  /// present.
  core.String failureReason;

  /// The id of the product (e.g. "app:com.google.android.gm") for which the
  /// install failure event occured. This field will always be present.
  core.String productId;

  /// The ID of the user. This field will always be present.
  core.String userId;

  InstallFailureEvent();

  InstallFailureEvent.fromJson(core.Map _json) {
    if (_json.containsKey("deviceId")) {
      deviceId = _json["deviceId"];
    }
    if (_json.containsKey("failureDetails")) {
      failureDetails = _json["failureDetails"];
    }
    if (_json.containsKey("failureReason")) {
      failureReason = _json["failureReason"];
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
    if (_json.containsKey("userId")) {
      userId = _json["userId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deviceId != null) {
      _json["deviceId"] = deviceId;
    }
    if (failureDetails != null) {
      _json["failureDetails"] = failureDetails;
    }
    if (failureReason != null) {
      _json["failureReason"] = failureReason;
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    if (userId != null) {
      _json["userId"] = userId;
    }
    return _json;
  }
}

/// The install resources for the device.
class InstallsListResponse {
  /// An installation of an app for a user on a specific device. The existence
  /// of an install implies that the user must have an entitlement to the app.
  core.List<Install> install;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#installsListResponse".
  core.String kind;

  InstallsListResponse();

  InstallsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("install")) {
      install = (_json["install"] as core.List)
          .map<Install>((value) => new Install.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (install != null) {
      _json["install"] = install.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// Represents a keyed app state containing a key, timestamp, severity level,
/// optional description, and optional data.
class KeyedAppState {
  /// Additional field intended for machine-readable data. For example, a number
  /// or JSON object. To prevent XSS, we recommend removing any HTML from the
  /// data before displaying it.
  core.String data;

  /// Key indicating what the app is providing a state for. The content of the
  /// key is set by the app's developer. To prevent XSS, we recommend removing
  /// any HTML from the key before displaying it. This field will always be
  /// present.
  core.String key;

  /// Free-form, human-readable message describing the app state. For example,
  /// an error message. To prevent XSS, we recommend removing any HTML from the
  /// message before displaying it.
  core.String message;

  /// Severity of the app state. This field will always be present.
  core.String severity;

  /// Timestamp of when the app set the state in milliseconds since epoch. This
  /// field will always be present.
  core.String stateTimestampMillis;

  KeyedAppState();

  KeyedAppState.fromJson(core.Map _json) {
    if (_json.containsKey("data")) {
      data = _json["data"];
    }
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
    if (_json.containsKey("severity")) {
      severity = _json["severity"];
    }
    if (_json.containsKey("stateTimestampMillis")) {
      stateTimestampMillis = _json["stateTimestampMillis"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (data != null) {
      _json["data"] = data;
    }
    if (key != null) {
      _json["key"] = key;
    }
    if (message != null) {
      _json["message"] = message;
    }
    if (severity != null) {
      _json["severity"] = severity;
    }
    if (stateTimestampMillis != null) {
      _json["stateTimestampMillis"] = stateTimestampMillis;
    }
    return _json;
  }
}

/// A localized string with its locale.
class LocalizedText {
  /// The BCP47 tag for a locale. (e.g. "en-US", "de").
  core.String locale;

  /// The text localized in the associated locale.
  core.String text;

  LocalizedText();

  LocalizedText.fromJson(core.Map _json) {
    if (_json.containsKey("locale")) {
      locale = _json["locale"];
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (locale != null) {
      _json["locale"] = locale;
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// Maintenance window for managed Google Play Accounts. This allows Play store
/// to update the apps on the foreground in the designated window.
class MaintenanceWindow {
  /// Duration of the maintenance window, in milliseconds. The duration must be
  /// between 30 minutes and 24 hours (inclusive).
  core.String durationMs;

  /// Start time of the maintenance window, in milliseconds after midnight on
  /// the device. Windows can span midnight.
  core.String startTimeAfterMidnightMs;

  MaintenanceWindow();

  MaintenanceWindow.fromJson(core.Map _json) {
    if (_json.containsKey("durationMs")) {
      durationMs = _json["durationMs"];
    }
    if (_json.containsKey("startTimeAfterMidnightMs")) {
      startTimeAfterMidnightMs = _json["startTimeAfterMidnightMs"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (durationMs != null) {
      _json["durationMs"] = durationMs;
    }
    if (startTimeAfterMidnightMs != null) {
      _json["startTimeAfterMidnightMs"] = startTimeAfterMidnightMs;
    }
    return _json;
  }
}

/// A managed configuration resource contains the set of managed properties
/// defined by the app developer in the app's managed configurations schema, as
/// well as any configuration variables defined for the user.
class ManagedConfiguration {
  /// Contains the ID of the managed configuration profile and the set of
  /// configuration variables (if any) defined for the user.
  ConfigurationVariables configurationVariables;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#managedConfiguration".
  core.String kind;

  /// The set of managed properties for this configuration.
  core.List<ManagedProperty> managedProperty;

  /// The ID of the product that the managed configuration is for, e.g.
  /// "app:com.google.android.gm".
  core.String productId;

  ManagedConfiguration();

  ManagedConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("configurationVariables")) {
      configurationVariables =
          new ConfigurationVariables.fromJson(_json["configurationVariables"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("managedProperty")) {
      managedProperty = (_json["managedProperty"] as core.List)
          .map<ManagedProperty>((value) => new ManagedProperty.fromJson(value))
          .toList();
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (configurationVariables != null) {
      _json["configurationVariables"] = (configurationVariables).toJson();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (managedProperty != null) {
      _json["managedProperty"] =
          managedProperty.map((value) => (value).toJson()).toList();
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    return _json;
  }
}

/// The managed configuration resources for the device.
class ManagedConfigurationsForDeviceListResponse {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#managedConfigurationsForDeviceListResponse".
  core.String kind;

  /// A managed configuration for an app on a specific device.
  core.List<ManagedConfiguration> managedConfigurationForDevice;

  ManagedConfigurationsForDeviceListResponse();

  ManagedConfigurationsForDeviceListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("managedConfigurationForDevice")) {
      managedConfigurationForDevice =
          (_json["managedConfigurationForDevice"] as core.List)
              .map<ManagedConfiguration>(
                  (value) => new ManagedConfiguration.fromJson(value))
              .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (managedConfigurationForDevice != null) {
      _json["managedConfigurationForDevice"] = managedConfigurationForDevice
          .map((value) => (value).toJson())
          .toList();
    }
    return _json;
  }
}

/// The managed configuration resources for the user.
class ManagedConfigurationsForUserListResponse {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#managedConfigurationsForUserListResponse".
  core.String kind;

  /// A managed configuration for an app for a specific user.
  core.List<ManagedConfiguration> managedConfigurationForUser;

  ManagedConfigurationsForUserListResponse();

  ManagedConfigurationsForUserListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("managedConfigurationForUser")) {
      managedConfigurationForUser =
          (_json["managedConfigurationForUser"] as core.List)
              .map<ManagedConfiguration>(
                  (value) => new ManagedConfiguration.fromJson(value))
              .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (managedConfigurationForUser != null) {
      _json["managedConfigurationForUser"] =
          managedConfigurationForUser.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A managed configurations settings resource contains the set of managed
/// properties that have been configured for an Android app to be applied to a
/// set of users. The app's developer would have defined configurable properties
/// in the managed configurations schema.
class ManagedConfigurationsSettings {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#managedConfigurationsSettings".
  core.String kind;

  /// The last updated time of the managed configuration settings in
  /// milliseconds since 1970-01-01T00:00:00Z.
  core.String lastUpdatedTimestampMillis;

  /// The set of managed properties for this configuration.
  core.List<ManagedProperty> managedProperty;

  /// The ID of the managed configurations settings.
  core.String mcmId;

  /// The name of the managed configurations settings.
  core.String name;

  ManagedConfigurationsSettings();

  ManagedConfigurationsSettings.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("lastUpdatedTimestampMillis")) {
      lastUpdatedTimestampMillis = _json["lastUpdatedTimestampMillis"];
    }
    if (_json.containsKey("managedProperty")) {
      managedProperty = (_json["managedProperty"] as core.List)
          .map<ManagedProperty>((value) => new ManagedProperty.fromJson(value))
          .toList();
    }
    if (_json.containsKey("mcmId")) {
      mcmId = _json["mcmId"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (lastUpdatedTimestampMillis != null) {
      _json["lastUpdatedTimestampMillis"] = lastUpdatedTimestampMillis;
    }
    if (managedProperty != null) {
      _json["managedProperty"] =
          managedProperty.map((value) => (value).toJson()).toList();
    }
    if (mcmId != null) {
      _json["mcmId"] = mcmId;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// The managed configurations settings for a product.
class ManagedConfigurationsSettingsListResponse {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#managedConfigurationsSettingsListResponse".
  core.String kind;

  /// A managed configurations settings for an app that may be assigned to a
  /// group of users in an enterprise.
  core.List<ManagedConfigurationsSettings> managedConfigurationsSettings;

  ManagedConfigurationsSettingsListResponse();

  ManagedConfigurationsSettingsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("managedConfigurationsSettings")) {
      managedConfigurationsSettings =
          (_json["managedConfigurationsSettings"] as core.List)
              .map<ManagedConfigurationsSettings>(
                  (value) => new ManagedConfigurationsSettings.fromJson(value))
              .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (managedConfigurationsSettings != null) {
      _json["managedConfigurationsSettings"] = managedConfigurationsSettings
          .map((value) => (value).toJson())
          .toList();
    }
    return _json;
  }
}

/// A managed property of a managed configuration. The property must match one
/// of the properties in the app restrictions schema of the product. Exactly one
/// of the value fields must be populated, and it must match the property's type
/// in the app restrictions schema.
class ManagedProperty {
  /// The unique key that identifies the property.
  core.String key;

  /// The boolean value - this will only be present if type of the property is
  /// bool.
  core.bool valueBool;

  /// The bundle of managed properties - this will only be present if type of
  /// the property is bundle.
  ManagedPropertyBundle valueBundle;

  /// The list of bundles of properties - this will only be present if type of
  /// the property is bundle_array.
  core.List<ManagedPropertyBundle> valueBundleArray;

  /// The integer value - this will only be present if type of the property is
  /// integer.
  core.int valueInteger;

  /// The string value - this will only be present if type of the property is
  /// string, choice or hidden.
  core.String valueString;

  /// The list of string values - this will only be present if type of the
  /// property is multiselect.
  core.List<core.String> valueStringArray;

  ManagedProperty();

  ManagedProperty.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("valueBool")) {
      valueBool = _json["valueBool"];
    }
    if (_json.containsKey("valueBundle")) {
      valueBundle = new ManagedPropertyBundle.fromJson(_json["valueBundle"]);
    }
    if (_json.containsKey("valueBundleArray")) {
      valueBundleArray = (_json["valueBundleArray"] as core.List)
          .map<ManagedPropertyBundle>(
              (value) => new ManagedPropertyBundle.fromJson(value))
          .toList();
    }
    if (_json.containsKey("valueInteger")) {
      valueInteger = _json["valueInteger"];
    }
    if (_json.containsKey("valueString")) {
      valueString = _json["valueString"];
    }
    if (_json.containsKey("valueStringArray")) {
      valueStringArray =
          (_json["valueStringArray"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (valueBool != null) {
      _json["valueBool"] = valueBool;
    }
    if (valueBundle != null) {
      _json["valueBundle"] = (valueBundle).toJson();
    }
    if (valueBundleArray != null) {
      _json["valueBundleArray"] =
          valueBundleArray.map((value) => (value).toJson()).toList();
    }
    if (valueInteger != null) {
      _json["valueInteger"] = valueInteger;
    }
    if (valueString != null) {
      _json["valueString"] = valueString;
    }
    if (valueStringArray != null) {
      _json["valueStringArray"] = valueStringArray;
    }
    return _json;
  }
}

/// A bundle of managed properties.
class ManagedPropertyBundle {
  /// The list of managed properties.
  core.List<ManagedProperty> managedProperty;

  ManagedPropertyBundle();

  ManagedPropertyBundle.fromJson(core.Map _json) {
    if (_json.containsKey("managedProperty")) {
      managedProperty = (_json["managedProperty"] as core.List)
          .map<ManagedProperty>((value) => new ManagedProperty.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (managedProperty != null) {
      _json["managedProperty"] =
          managedProperty.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// An event generated when a new device is ready to be managed.
class NewDeviceEvent {
  /// The Android ID of the device. This field will always be present.
  core.String deviceId;

  /// Policy app on the device.
  core.String dpcPackageName;

  /// Identifies the extent to which the device is controlled by an Android EMM
  /// in various deployment configurations.
  ///
  /// Possible values include:
  /// - "managedDevice", a device where the DPC is set as device owner,
  /// - "managedProfile", a device where the DPC is set as profile owner.
  core.String managementType;

  /// The ID of the user. This field will always be present.
  core.String userId;

  NewDeviceEvent();

  NewDeviceEvent.fromJson(core.Map _json) {
    if (_json.containsKey("deviceId")) {
      deviceId = _json["deviceId"];
    }
    if (_json.containsKey("dpcPackageName")) {
      dpcPackageName = _json["dpcPackageName"];
    }
    if (_json.containsKey("managementType")) {
      managementType = _json["managementType"];
    }
    if (_json.containsKey("userId")) {
      userId = _json["userId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deviceId != null) {
      _json["deviceId"] = deviceId;
    }
    if (dpcPackageName != null) {
      _json["dpcPackageName"] = dpcPackageName;
    }
    if (managementType != null) {
      _json["managementType"] = managementType;
    }
    if (userId != null) {
      _json["userId"] = userId;
    }
    return _json;
  }
}

/// An event generated when new permissions are added to an app.
class NewPermissionsEvent {
  /// The set of permissions that the enterprise admin has already approved for
  /// this application. Use Permissions.Get on the EMM API to retrieve details
  /// about these permissions.
  core.List<core.String> approvedPermissions;

  /// The id of the product (e.g. "app:com.google.android.gm") for which new
  /// permissions were added. This field will always be present.
  core.String productId;

  /// The set of permissions that the app is currently requesting. Use
  /// Permissions.Get on the EMM API to retrieve details about these
  /// permissions.
  core.List<core.String> requestedPermissions;

  NewPermissionsEvent();

  NewPermissionsEvent.fromJson(core.Map _json) {
    if (_json.containsKey("approvedPermissions")) {
      approvedPermissions =
          (_json["approvedPermissions"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
    if (_json.containsKey("requestedPermissions")) {
      requestedPermissions =
          (_json["requestedPermissions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (approvedPermissions != null) {
      _json["approvedPermissions"] = approvedPermissions;
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    if (requestedPermissions != null) {
      _json["requestedPermissions"] = requestedPermissions;
    }
    return _json;
  }
}

/// A notification of one event relating to an enterprise.
class Notification {
  /// Notifications about new app restrictions schema changes.
  AppRestrictionsSchemaChangeEvent appRestrictionsSchemaChangeEvent;

  /// Notifications about app updates.
  AppUpdateEvent appUpdateEvent;

  /// Notifications about device report updates.
  DeviceReportUpdateEvent deviceReportUpdateEvent;

  /// The ID of the enterprise for which the notification is sent. This will
  /// always be present.
  core.String enterpriseId;

  /// Notifications about an app installation failure.
  InstallFailureEvent installFailureEvent;

  /// Notifications about new devices.
  NewDeviceEvent newDeviceEvent;

  /// Notifications about new app permissions.
  NewPermissionsEvent newPermissionsEvent;

  /// Type of the notification.
  core.String notificationType;

  /// Notifications about changes to a product's approval status.
  ProductApprovalEvent productApprovalEvent;

  /// Notifications about product availability changes.
  ProductAvailabilityChangeEvent productAvailabilityChangeEvent;

  /// The time when the notification was published in milliseconds since
  /// 1970-01-01T00:00:00Z. This will always be present.
  core.String timestampMillis;

  Notification();

  Notification.fromJson(core.Map _json) {
    if (_json.containsKey("appRestrictionsSchemaChangeEvent")) {
      appRestrictionsSchemaChangeEvent =
          new AppRestrictionsSchemaChangeEvent.fromJson(
              _json["appRestrictionsSchemaChangeEvent"]);
    }
    if (_json.containsKey("appUpdateEvent")) {
      appUpdateEvent = new AppUpdateEvent.fromJson(_json["appUpdateEvent"]);
    }
    if (_json.containsKey("deviceReportUpdateEvent")) {
      deviceReportUpdateEvent = new DeviceReportUpdateEvent.fromJson(
          _json["deviceReportUpdateEvent"]);
    }
    if (_json.containsKey("enterpriseId")) {
      enterpriseId = _json["enterpriseId"];
    }
    if (_json.containsKey("installFailureEvent")) {
      installFailureEvent =
          new InstallFailureEvent.fromJson(_json["installFailureEvent"]);
    }
    if (_json.containsKey("newDeviceEvent")) {
      newDeviceEvent = new NewDeviceEvent.fromJson(_json["newDeviceEvent"]);
    }
    if (_json.containsKey("newPermissionsEvent")) {
      newPermissionsEvent =
          new NewPermissionsEvent.fromJson(_json["newPermissionsEvent"]);
    }
    if (_json.containsKey("notificationType")) {
      notificationType = _json["notificationType"];
    }
    if (_json.containsKey("productApprovalEvent")) {
      productApprovalEvent =
          new ProductApprovalEvent.fromJson(_json["productApprovalEvent"]);
    }
    if (_json.containsKey("productAvailabilityChangeEvent")) {
      productAvailabilityChangeEvent =
          new ProductAvailabilityChangeEvent.fromJson(
              _json["productAvailabilityChangeEvent"]);
    }
    if (_json.containsKey("timestampMillis")) {
      timestampMillis = _json["timestampMillis"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appRestrictionsSchemaChangeEvent != null) {
      _json["appRestrictionsSchemaChangeEvent"] =
          (appRestrictionsSchemaChangeEvent).toJson();
    }
    if (appUpdateEvent != null) {
      _json["appUpdateEvent"] = (appUpdateEvent).toJson();
    }
    if (deviceReportUpdateEvent != null) {
      _json["deviceReportUpdateEvent"] = (deviceReportUpdateEvent).toJson();
    }
    if (enterpriseId != null) {
      _json["enterpriseId"] = enterpriseId;
    }
    if (installFailureEvent != null) {
      _json["installFailureEvent"] = (installFailureEvent).toJson();
    }
    if (newDeviceEvent != null) {
      _json["newDeviceEvent"] = (newDeviceEvent).toJson();
    }
    if (newPermissionsEvent != null) {
      _json["newPermissionsEvent"] = (newPermissionsEvent).toJson();
    }
    if (notificationType != null) {
      _json["notificationType"] = notificationType;
    }
    if (productApprovalEvent != null) {
      _json["productApprovalEvent"] = (productApprovalEvent).toJson();
    }
    if (productAvailabilityChangeEvent != null) {
      _json["productAvailabilityChangeEvent"] =
          (productAvailabilityChangeEvent).toJson();
    }
    if (timestampMillis != null) {
      _json["timestampMillis"] = timestampMillis;
    }
    return _json;
  }
}

/// A resource returned by the PullNotificationSet API, which contains a
/// collection of notifications for enterprises associated with the service
/// account authenticated for the request.
class NotificationSet {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#notificationSet".
  core.String kind;

  /// The notifications received, or empty if no notifications are present.
  core.List<Notification> notification;

  /// The notification set ID, required to mark the notification as received
  /// with the Enterprises.AcknowledgeNotification API. This will be omitted if
  /// no notifications are present.
  core.String notificationSetId;

  NotificationSet();

  NotificationSet.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("notification")) {
      notification = (_json["notification"] as core.List)
          .map<Notification>((value) => new Notification.fromJson(value))
          .toList();
    }
    if (_json.containsKey("notificationSetId")) {
      notificationSetId = _json["notificationSetId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (notification != null) {
      _json["notification"] =
          notification.map((value) => (value).toJson()).toList();
    }
    if (notificationSetId != null) {
      _json["notificationSetId"] = notificationSetId;
    }
    return _json;
  }
}

class PageInfo {
  core.int resultPerPage;
  core.int startIndex;
  core.int totalResults;

  PageInfo();

  PageInfo.fromJson(core.Map _json) {
    if (_json.containsKey("resultPerPage")) {
      resultPerPage = _json["resultPerPage"];
    }
    if (_json.containsKey("startIndex")) {
      startIndex = _json["startIndex"];
    }
    if (_json.containsKey("totalResults")) {
      totalResults = _json["totalResults"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (resultPerPage != null) {
      _json["resultPerPage"] = resultPerPage;
    }
    if (startIndex != null) {
      _json["startIndex"] = startIndex;
    }
    if (totalResults != null) {
      _json["totalResults"] = totalResults;
    }
    return _json;
  }
}

/// A Permissions resource represents some extra capability, to be granted to an
/// Android app, which requires explicit consent. An enterprise admin must
/// consent to these permissions on behalf of their users before an entitlement
/// for the app can be created.
///
/// The permissions collection is read-only. The information provided for each
/// permission (localized name and description) is intended to be used in the
/// MDM user interface when obtaining consent from the enterprise.
class Permission {
  /// A longer description of the Permissions resource, giving more details of
  /// what it affects.
  core.String description;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#permission".
  core.String kind;

  /// The name of the permission.
  core.String name;

  /// An opaque string uniquely identifying the permission.
  core.String permissionId;

  Permission();

  Permission.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("permissionId")) {
      permissionId = _json["permissionId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (permissionId != null) {
      _json["permissionId"] = permissionId;
    }
    return _json;
  }
}

/// The device policy for a given managed device.
class Policy {
  /// The auto-update policy for apps installed on the device. "choiceToTheUser"
  /// allows the device's user to configure the app update policy. "always"
  /// enables auto updates. "never" disables auto updates. "wifiOnly" enables
  /// auto updates only when the device is connected to wifi.
  core.String autoUpdatePolicy;

  /// Whether the device reports app states to the EMM. The default value is
  /// "deviceReportDisabled".
  core.String deviceReportPolicy;

  /// The maintenance window defining when apps running in the foreground should
  /// be updated.
  MaintenanceWindow maintenanceWindow;

  /// The availability granted to the device for the specified products. "all"
  /// gives the device access to all products, regardless of approval status.
  /// "all" does not enable automatic visibility of "alpha" or "beta" tracks.
  /// "whitelist" grants the device access the products specified in
  /// productPolicy[]. Only products that are approved or products that were
  /// previously approved (products with revoked approval) by the enterprise can
  /// be whitelisted. If no value is provided, the availability set at the user
  /// level is applied by default.
  core.String productAvailabilityPolicy;

  /// The list of product policies.
  core.List<ProductPolicy> productPolicy;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey("autoUpdatePolicy")) {
      autoUpdatePolicy = _json["autoUpdatePolicy"];
    }
    if (_json.containsKey("deviceReportPolicy")) {
      deviceReportPolicy = _json["deviceReportPolicy"];
    }
    if (_json.containsKey("maintenanceWindow")) {
      maintenanceWindow =
          new MaintenanceWindow.fromJson(_json["maintenanceWindow"]);
    }
    if (_json.containsKey("productAvailabilityPolicy")) {
      productAvailabilityPolicy = _json["productAvailabilityPolicy"];
    }
    if (_json.containsKey("productPolicy")) {
      productPolicy = (_json["productPolicy"] as core.List)
          .map<ProductPolicy>((value) => new ProductPolicy.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (autoUpdatePolicy != null) {
      _json["autoUpdatePolicy"] = autoUpdatePolicy;
    }
    if (deviceReportPolicy != null) {
      _json["deviceReportPolicy"] = deviceReportPolicy;
    }
    if (maintenanceWindow != null) {
      _json["maintenanceWindow"] = (maintenanceWindow).toJson();
    }
    if (productAvailabilityPolicy != null) {
      _json["productAvailabilityPolicy"] = productAvailabilityPolicy;
    }
    if (productPolicy != null) {
      _json["productPolicy"] =
          productPolicy.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A Products resource represents an app in the Google Play store that is
/// available to at least some users in the enterprise. (Some apps are
/// restricted to a single enterprise, and no information about them is made
/// available outside that enterprise.)
///
/// The information provided for each product (localized name, icon, link to the
/// full Google Play details page) is intended to allow a basic representation
/// of the product within an EMM user interface.
class Product {
  /// The tracks visible to the enterprise.
  core.List<TrackInfo> appTracks;

  /// App versions currently available for this product.
  core.List<AppVersion> appVersion;

  /// The name of the author of the product (for example, the app developer).
  core.String authorName;

  /// The countries which this app is available in.
  core.List<core.String> availableCountries;

  /// Deprecated, use appTracks instead.
  core.List<core.String> availableTracks;

  /// The app category (e.g. RACING, SOCIAL, etc.)
  core.String category;

  /// The content rating for this app.
  core.String contentRating;

  /// The localized promotional description, if available.
  core.String description;

  /// A link to the (consumer) Google Play details page for the product.
  core.String detailsUrl;

  /// How and to whom the package is made available. The value
  /// publicGoogleHosted means that the package is available through the Play
  /// store and not restricted to a specific enterprise. The value
  /// privateGoogleHosted means that the package is a private app (restricted to
  /// an enterprise) but hosted by Google. The value privateSelfHosted means
  /// that the package is a private app (restricted to an enterprise) and is
  /// privately hosted.
  core.String distributionChannel;

  /// A link to an image that can be used as an icon for the product. This image
  /// is suitable for use at up to 512px x 512px.
  core.String iconUrl;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#product".
  core.String kind;

  /// The approximate time (within 7 days) the app was last published, expressed
  /// in milliseconds since epoch.
  core.String lastUpdatedTimestampMillis;

  /// The minimum Android SDK necessary to run the app.
  core.int minAndroidSdkVersion;

  /// A list of permissions required by the app.
  core.List<ProductPermission> permissions;

  /// A string of the form app:<package name>. For example,
  /// app:com.google.android.gm represents the Gmail app.
  core.String productId;

  /// Whether this product is free, free with in-app purchases, or paid. If the
  /// pricing is unknown, this means the product is not generally available
  /// anymore (even though it might still be available to people who own it).
  core.String productPricing;

  /// A description of the recent changes made to the app.
  core.String recentChanges;

  /// Deprecated.
  core.bool requiresContainerApp;

  /// A list of screenshot links representing the app.
  core.List<core.String> screenshotUrls;

  /// The certificate used to sign this product.
  ProductSigningCertificate signingCertificate;

  /// A link to a smaller image that can be used as an icon for the product.
  /// This image is suitable for use at up to 128px x 128px.
  core.String smallIconUrl;

  /// The name of the product.
  core.String title;

  /// A link to the managed Google Play details page for the product, for use by
  /// an Enterprise admin.
  core.String workDetailsUrl;

  Product();

  Product.fromJson(core.Map _json) {
    if (_json.containsKey("appTracks")) {
      appTracks = (_json["appTracks"] as core.List)
          .map<TrackInfo>((value) => new TrackInfo.fromJson(value))
          .toList();
    }
    if (_json.containsKey("appVersion")) {
      appVersion = (_json["appVersion"] as core.List)
          .map<AppVersion>((value) => new AppVersion.fromJson(value))
          .toList();
    }
    if (_json.containsKey("authorName")) {
      authorName = _json["authorName"];
    }
    if (_json.containsKey("availableCountries")) {
      availableCountries =
          (_json["availableCountries"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("availableTracks")) {
      availableTracks =
          (_json["availableTracks"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("category")) {
      category = _json["category"];
    }
    if (_json.containsKey("contentRating")) {
      contentRating = _json["contentRating"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("detailsUrl")) {
      detailsUrl = _json["detailsUrl"];
    }
    if (_json.containsKey("distributionChannel")) {
      distributionChannel = _json["distributionChannel"];
    }
    if (_json.containsKey("iconUrl")) {
      iconUrl = _json["iconUrl"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("lastUpdatedTimestampMillis")) {
      lastUpdatedTimestampMillis = _json["lastUpdatedTimestampMillis"];
    }
    if (_json.containsKey("minAndroidSdkVersion")) {
      minAndroidSdkVersion = _json["minAndroidSdkVersion"];
    }
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List)
          .map<ProductPermission>(
              (value) => new ProductPermission.fromJson(value))
          .toList();
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
    if (_json.containsKey("productPricing")) {
      productPricing = _json["productPricing"];
    }
    if (_json.containsKey("recentChanges")) {
      recentChanges = _json["recentChanges"];
    }
    if (_json.containsKey("requiresContainerApp")) {
      requiresContainerApp = _json["requiresContainerApp"];
    }
    if (_json.containsKey("screenshotUrls")) {
      screenshotUrls =
          (_json["screenshotUrls"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("signingCertificate")) {
      signingCertificate =
          new ProductSigningCertificate.fromJson(_json["signingCertificate"]);
    }
    if (_json.containsKey("smallIconUrl")) {
      smallIconUrl = _json["smallIconUrl"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("workDetailsUrl")) {
      workDetailsUrl = _json["workDetailsUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appTracks != null) {
      _json["appTracks"] = appTracks.map((value) => (value).toJson()).toList();
    }
    if (appVersion != null) {
      _json["appVersion"] =
          appVersion.map((value) => (value).toJson()).toList();
    }
    if (authorName != null) {
      _json["authorName"] = authorName;
    }
    if (availableCountries != null) {
      _json["availableCountries"] = availableCountries;
    }
    if (availableTracks != null) {
      _json["availableTracks"] = availableTracks;
    }
    if (category != null) {
      _json["category"] = category;
    }
    if (contentRating != null) {
      _json["contentRating"] = contentRating;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (detailsUrl != null) {
      _json["detailsUrl"] = detailsUrl;
    }
    if (distributionChannel != null) {
      _json["distributionChannel"] = distributionChannel;
    }
    if (iconUrl != null) {
      _json["iconUrl"] = iconUrl;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (lastUpdatedTimestampMillis != null) {
      _json["lastUpdatedTimestampMillis"] = lastUpdatedTimestampMillis;
    }
    if (minAndroidSdkVersion != null) {
      _json["minAndroidSdkVersion"] = minAndroidSdkVersion;
    }
    if (permissions != null) {
      _json["permissions"] =
          permissions.map((value) => (value).toJson()).toList();
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    if (productPricing != null) {
      _json["productPricing"] = productPricing;
    }
    if (recentChanges != null) {
      _json["recentChanges"] = recentChanges;
    }
    if (requiresContainerApp != null) {
      _json["requiresContainerApp"] = requiresContainerApp;
    }
    if (screenshotUrls != null) {
      _json["screenshotUrls"] = screenshotUrls;
    }
    if (signingCertificate != null) {
      _json["signingCertificate"] = (signingCertificate).toJson();
    }
    if (smallIconUrl != null) {
      _json["smallIconUrl"] = smallIconUrl;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (workDetailsUrl != null) {
      _json["workDetailsUrl"] = workDetailsUrl;
    }
    return _json;
  }
}

/// An event generated when a product's approval status is changed.
class ProductApprovalEvent {
  /// Whether the product was approved or unapproved. This field will always be
  /// present.
  core.String approved;

  /// The id of the product (e.g. "app:com.google.android.gm") for which the
  /// approval status has changed. This field will always be present.
  core.String productId;

  ProductApprovalEvent();

  ProductApprovalEvent.fromJson(core.Map _json) {
    if (_json.containsKey("approved")) {
      approved = _json["approved"];
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (approved != null) {
      _json["approved"] = approved;
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    return _json;
  }
}

/// An event generated whenever a product's availability changes.
class ProductAvailabilityChangeEvent {
  /// The new state of the product. This field will always be present.
  core.String availabilityStatus;

  /// The id of the product (e.g. "app:com.google.android.gm") for which the
  /// product availability changed. This field will always be present.
  core.String productId;

  ProductAvailabilityChangeEvent();

  ProductAvailabilityChangeEvent.fromJson(core.Map _json) {
    if (_json.containsKey("availabilityStatus")) {
      availabilityStatus = _json["availabilityStatus"];
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (availabilityStatus != null) {
      _json["availabilityStatus"] = availabilityStatus;
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    return _json;
  }
}

/// A product permissions resource represents the set of permissions required by
/// a specific app and whether or not they have been accepted by an enterprise
/// admin.
///
/// The API can be used to read the set of permissions, and also to update the
/// set to indicate that permissions have been accepted.
class ProductPermission {
  /// An opaque string uniquely identifying the permission.
  core.String permissionId;

  /// Whether the permission has been accepted or not.
  core.String state;

  ProductPermission();

  ProductPermission.fromJson(core.Map _json) {
    if (_json.containsKey("permissionId")) {
      permissionId = _json["permissionId"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permissionId != null) {
      _json["permissionId"] = permissionId;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/// Information about the permissions required by a specific app and whether
/// they have been accepted by the enterprise.
class ProductPermissions {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#productPermissions".
  core.String kind;

  /// The permissions required by the app.
  core.List<ProductPermission> permission;

  /// The ID of the app that the permissions relate to, e.g.
  /// "app:com.google.android.gm".
  core.String productId;

  ProductPermissions();

  ProductPermissions.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("permission")) {
      permission = (_json["permission"] as core.List)
          .map<ProductPermission>(
              (value) => new ProductPermission.fromJson(value))
          .toList();
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (permission != null) {
      _json["permission"] =
          permission.map((value) => (value).toJson()).toList();
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    return _json;
  }
}

/// The policy for a product.
class ProductPolicy {
  /// The auto-install policy for the product.
  AutoInstallPolicy autoInstallPolicy;

  /// The managed configuration for the product.
  ManagedConfiguration managedConfiguration;

  /// The ID of the product. For example, "app:com.google.android.gm".
  core.String productId;

  /// Grants the device visibility to the specified product release track(s),
  /// identified by trackIds. The list of release tracks of a product can be
  /// obtained by calling Products.Get.
  core.List<core.String> trackIds;

  /// Deprecated. Use trackIds instead.
  core.List<core.String> tracks;

  ProductPolicy();

  ProductPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("autoInstallPolicy")) {
      autoInstallPolicy =
          new AutoInstallPolicy.fromJson(_json["autoInstallPolicy"]);
    }
    if (_json.containsKey("managedConfiguration")) {
      managedConfiguration =
          new ManagedConfiguration.fromJson(_json["managedConfiguration"]);
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
    if (_json.containsKey("trackIds")) {
      trackIds = (_json["trackIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("tracks")) {
      tracks = (_json["tracks"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (autoInstallPolicy != null) {
      _json["autoInstallPolicy"] = (autoInstallPolicy).toJson();
    }
    if (managedConfiguration != null) {
      _json["managedConfiguration"] = (managedConfiguration).toJson();
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    if (trackIds != null) {
      _json["trackIds"] = trackIds;
    }
    if (tracks != null) {
      _json["tracks"] = tracks;
    }
    return _json;
  }
}

/// A set of products.
class ProductSet {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#productSet".
  core.String kind;

  /// The list of product IDs making up the set of products.
  core.List<core.String> productId;

  /// The interpretation of this product set. "unknown" should never be sent and
  /// is ignored if received. "whitelist" means that the user is entitled to
  /// access the product set. "includeAll" means that all products are
  /// accessible, including products that are approved, products with revoked
  /// approval, and products that have never been approved. "allApproved" means
  /// that the user is entitled to access all products that are approved for the
  /// enterprise. If the value is "allApproved" or "includeAll", the productId
  /// field is ignored. If no value is provided, it is interpreted as
  /// "whitelist" for backwards compatibility. Further "allApproved" or
  /// "includeAll" does not enable automatic visibility of "alpha" or "beta"
  /// tracks for Android app. Use ProductVisibility to enable "alpha" or "beta"
  /// tracks per user.
  core.String productSetBehavior;

  /// Additional list of product IDs making up the product set. Unlike the
  /// productID array, in this list It's possible to specify which tracks
  /// (alpha, beta, production) of a product are visible to the user. See
  /// ProductVisibility and its fields for more information. Specifying the same
  /// product ID both here and in the productId array is not allowed and it will
  /// result in an error.
  core.List<ProductVisibility> productVisibility;

  ProductSet();

  ProductSet.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("productId")) {
      productId = (_json["productId"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("productSetBehavior")) {
      productSetBehavior = _json["productSetBehavior"];
    }
    if (_json.containsKey("productVisibility")) {
      productVisibility = (_json["productVisibility"] as core.List)
          .map<ProductVisibility>(
              (value) => new ProductVisibility.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    if (productSetBehavior != null) {
      _json["productSetBehavior"] = productSetBehavior;
    }
    if (productVisibility != null) {
      _json["productVisibility"] =
          productVisibility.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ProductSigningCertificate {
  /// The base64 urlsafe encoded SHA1 hash of the certificate. (This field is
  /// deprecated in favor of SHA2-256. It should not be used and may be removed
  /// at any time.)
  core.String certificateHashSha1;

  /// The base64 urlsafe encoded SHA2-256 hash of the certificate.
  core.String certificateHashSha256;

  ProductSigningCertificate();

  ProductSigningCertificate.fromJson(core.Map _json) {
    if (_json.containsKey("certificateHashSha1")) {
      certificateHashSha1 = _json["certificateHashSha1"];
    }
    if (_json.containsKey("certificateHashSha256")) {
      certificateHashSha256 = _json["certificateHashSha256"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (certificateHashSha1 != null) {
      _json["certificateHashSha1"] = certificateHashSha1;
    }
    if (certificateHashSha256 != null) {
      _json["certificateHashSha256"] = certificateHashSha256;
    }
    return _json;
  }
}

/// A product to be made visible to a user.
class ProductVisibility {
  /// The product ID to make visible to the user. Required for each item in the
  /// productVisibility list.
  core.String productId;

  /// Grants the user visibility to the specified product track(s), identified
  /// by trackIds.
  core.List<core.String> trackIds;

  /// Deprecated. Use trackIds instead.
  core.List<core.String> tracks;

  ProductVisibility();

  ProductVisibility.fromJson(core.Map _json) {
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
    if (_json.containsKey("trackIds")) {
      trackIds = (_json["trackIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("tracks")) {
      tracks = (_json["tracks"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (productId != null) {
      _json["productId"] = productId;
    }
    if (trackIds != null) {
      _json["trackIds"] = trackIds;
    }
    if (tracks != null) {
      _json["tracks"] = tracks;
    }
    return _json;
  }
}

class ProductsApproveRequest {
  /// The approval URL that was shown to the user. Only the permissions shown to
  /// the user with that URL will be accepted, which may not be the product's
  /// entire set of permissions. For example, the URL may only display new
  /// permissions from an update after the product was approved, or not include
  /// new permissions if the product was updated since the URL was generated.
  ApprovalUrlInfo approvalUrlInfo;

  /// Sets how new permission requests for the product are handled.
  /// "allPermissions" automatically approves all current and future permissions
  /// for the product. "currentPermissionsOnly" approves the current set of
  /// permissions for the product, but any future permissions added through
  /// updates will require manual reapproval. If not specified, only the current
  /// set of permissions will be approved.
  core.String approvedPermissions;

  ProductsApproveRequest();

  ProductsApproveRequest.fromJson(core.Map _json) {
    if (_json.containsKey("approvalUrlInfo")) {
      approvalUrlInfo = new ApprovalUrlInfo.fromJson(_json["approvalUrlInfo"]);
    }
    if (_json.containsKey("approvedPermissions")) {
      approvedPermissions = _json["approvedPermissions"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (approvalUrlInfo != null) {
      _json["approvalUrlInfo"] = (approvalUrlInfo).toJson();
    }
    if (approvedPermissions != null) {
      _json["approvedPermissions"] = approvedPermissions;
    }
    return _json;
  }
}

class ProductsGenerateApprovalUrlResponse {
  /// A URL that can be rendered in an iframe to display the permissions (if
  /// any) of a product. This URL can be used to approve the product only once
  /// and only within 24 hours of being generated, using the Products.approve
  /// call. If the product is currently unapproved and has no permissions, this
  /// URL will point to an empty page. If the product is currently approved, a
  /// URL will only be generated if that product has added permissions since it
  /// was last approved, and the URL will only display those new permissions
  /// that have not yet been accepted.
  core.String url;

  ProductsGenerateApprovalUrlResponse();

  ProductsGenerateApprovalUrlResponse.fromJson(core.Map _json) {
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// The matching products.
class ProductsListResponse {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#productsListResponse".
  core.String kind;

  /// General pagination information.
  PageInfo pageInfo;

  /// Information about a product (e.g. an app) in the Google Play store, for
  /// display to an enterprise admin.
  core.List<Product> product;

  /// Pagination information for token pagination.
  TokenPagination tokenPagination;

  ProductsListResponse();

  ProductsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(_json["pageInfo"]);
    }
    if (_json.containsKey("product")) {
      product = (_json["product"] as core.List)
          .map<Product>((value) => new Product.fromJson(value))
          .toList();
    }
    if (_json.containsKey("tokenPagination")) {
      tokenPagination = new TokenPagination.fromJson(_json["tokenPagination"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (pageInfo != null) {
      _json["pageInfo"] = (pageInfo).toJson();
    }
    if (product != null) {
      _json["product"] = product.map((value) => (value).toJson()).toList();
    }
    if (tokenPagination != null) {
      _json["tokenPagination"] = (tokenPagination).toJson();
    }
    return _json;
  }
}

/// A service account identity, including the name and credentials that can be
/// used to authenticate as the service account.
class ServiceAccount {
  /// Credentials that can be used to authenticate as this ServiceAccount.
  ServiceAccountKey key;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#serviceAccount".
  core.String kind;

  /// The account name of the service account, in the form of an email address.
  /// Assigned by the server.
  core.String name;

  ServiceAccount();

  ServiceAccount.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = new ServiceAccountKey.fromJson(_json["key"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = (key).toJson();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Credentials that can be used to authenticate as a service account.
class ServiceAccountKey {
  /// The body of the private key credentials file, in string format. This is
  /// only populated when the ServiceAccountKey is created, and is not stored by
  /// Google.
  core.String data;

  /// An opaque, unique identifier for this ServiceAccountKey. Assigned by the
  /// server.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#serviceAccountKey".
  core.String kind;

  /// Public key data for the credentials file. This is an X.509 cert. If you
  /// are using the googleCredentials key type, this is identical to the cert
  /// that can be retrieved by using the X.509 cert url inside of the
  /// credentials file.
  core.String publicData;

  /// The file format of the generated key data.
  core.String type;

  ServiceAccountKey();

  ServiceAccountKey.fromJson(core.Map _json) {
    if (_json.containsKey("data")) {
      data = _json["data"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("publicData")) {
      publicData = _json["publicData"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (data != null) {
      _json["data"] = data;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (publicData != null) {
      _json["publicData"] = publicData;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

class ServiceAccountKeysListResponse {
  /// The service account credentials.
  core.List<ServiceAccountKey> serviceAccountKey;

  ServiceAccountKeysListResponse();

  ServiceAccountKeysListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("serviceAccountKey")) {
      serviceAccountKey = (_json["serviceAccountKey"] as core.List)
          .map<ServiceAccountKey>(
              (value) => new ServiceAccountKey.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (serviceAccountKey != null) {
      _json["serviceAccountKey"] =
          serviceAccountKey.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A resource returned by the GenerateSignupUrl API, which contains the Signup
/// URL and Completion Token.
class SignupInfo {
  /// An opaque token that will be required, along with the Enterprise Token,
  /// for obtaining the enterprise resource from CompleteSignup.
  core.String completionToken;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#signupInfo".
  core.String kind;

  /// A URL under which the Admin can sign up for an enterprise. The page
  /// pointed to cannot be rendered in an iframe.
  core.String url;

  SignupInfo();

  SignupInfo.fromJson(core.Map _json) {
    if (_json.containsKey("completionToken")) {
      completionToken = _json["completionToken"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (completionToken != null) {
      _json["completionToken"] = completionToken;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// Definition of a managed Google Play store cluster, a list of products
/// displayed as part of a store page.
class StoreCluster {
  /// Unique ID of this cluster. Assigned by the server. Immutable once
  /// assigned.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#storeCluster".
  core.String kind;

  /// Ordered list of localized strings giving the name of this page. The text
  /// displayed is the one that best matches the user locale, or the first entry
  /// if there is no good match. There needs to be at least one entry.
  core.List<LocalizedText> name;

  /// String (US-ASCII only) used to determine order of this cluster within the
  /// parent page's elements. Page elements are sorted in lexicographic order of
  /// this field. Duplicated values are allowed, but ordering between elements
  /// with duplicate order is undefined.
  ///
  /// The value of this field is never visible to a user, it is used solely for
  /// the purpose of defining an ordering. Maximum length is 256 characters.
  core.String orderInPage;

  /// List of products in the order they are displayed in the cluster. There
  /// should not be duplicates within a cluster.
  core.List<core.String> productId;

  StoreCluster();

  StoreCluster.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = (_json["name"] as core.List)
          .map<LocalizedText>((value) => new LocalizedText.fromJson(value))
          .toList();
    }
    if (_json.containsKey("orderInPage")) {
      orderInPage = _json["orderInPage"];
    }
    if (_json.containsKey("productId")) {
      productId = (_json["productId"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name.map((value) => (value).toJson()).toList();
    }
    if (orderInPage != null) {
      _json["orderInPage"] = orderInPage;
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    return _json;
  }
}

/// General setting for the managed Google Play store layout, currently only
/// specifying the page to display the first time the store is opened.
class StoreLayout {
  /// The ID of the store page to be used as the homepage. The homepage is the
  /// first page shown in the managed Google Play Store.
  ///
  /// Not specifying a homepage is equivalent to setting the store layout type
  /// to "basic".
  core.String homepageId;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#storeLayout".
  core.String kind;

  /// The store layout type. By default, this value is set to "basic" if the
  /// homepageId field is not set, and to "custom" otherwise. If set to "basic",
  /// the layout will consist of all approved apps that have been whitelisted
  /// for the user.
  core.String storeLayoutType;

  StoreLayout();

  StoreLayout.fromJson(core.Map _json) {
    if (_json.containsKey("homepageId")) {
      homepageId = _json["homepageId"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("storeLayoutType")) {
      storeLayoutType = _json["storeLayoutType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (homepageId != null) {
      _json["homepageId"] = homepageId;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (storeLayoutType != null) {
      _json["storeLayoutType"] = storeLayoutType;
    }
    return _json;
  }
}

/// The store page resources for the enterprise.
class StoreLayoutClustersListResponse {
  /// A store cluster of an enterprise.
  core.List<StoreCluster> cluster;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#storeLayoutClustersListResponse".
  core.String kind;

  StoreLayoutClustersListResponse();

  StoreLayoutClustersListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("cluster")) {
      cluster = (_json["cluster"] as core.List)
          .map<StoreCluster>((value) => new StoreCluster.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cluster != null) {
      _json["cluster"] = cluster.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// The store page resources for the enterprise.
class StoreLayoutPagesListResponse {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#storeLayoutPagesListResponse".
  core.String kind;

  /// A store page of an enterprise.
  core.List<StorePage> page;

  StoreLayoutPagesListResponse();

  StoreLayoutPagesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("page")) {
      page = (_json["page"] as core.List)
          .map<StorePage>((value) => new StorePage.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (page != null) {
      _json["page"] = page.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Definition of a managed Google Play store page, made of a localized name and
/// links to other pages. A page also contains clusters defined as a
/// subcollection.
class StorePage {
  /// Unique ID of this page. Assigned by the server. Immutable once assigned.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#storePage".
  core.String kind;

  /// Ordered list of pages a user should be able to reach from this page. The
  /// list can't include this page. It is recommended that the basic pages are
  /// created first, before adding the links between pages.
  ///
  /// The API doesn't verify that the pages exist or the pages are reachable.
  core.List<core.String> link;

  /// Ordered list of localized strings giving the name of this page. The text
  /// displayed is the one that best matches the user locale, or the first entry
  /// if there is no good match. There needs to be at least one entry.
  core.List<LocalizedText> name;

  StorePage();

  StorePage.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("link")) {
      link = (_json["link"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("name")) {
      name = (_json["name"] as core.List)
          .map<LocalizedText>((value) => new LocalizedText.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (link != null) {
      _json["link"] = link;
    }
    if (name != null) {
      _json["name"] = name.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class TokenPagination {
  core.String nextPageToken;
  core.String previousPageToken;

  TokenPagination();

  TokenPagination.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("previousPageToken")) {
      previousPageToken = _json["previousPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (previousPageToken != null) {
      _json["previousPageToken"] = previousPageToken;
    }
    return _json;
  }
}

/// Id to name association of a track.
class TrackInfo {
  /// A modifiable name for a track. This is the visible name in the play
  /// developer console.
  core.String trackAlias;

  /// Unmodifiable, unique track identifier. This identifier is the
  /// releaseTrackId in the url of the play developer console page that displays
  /// the track information.
  core.String trackId;

  TrackInfo();

  TrackInfo.fromJson(core.Map _json) {
    if (_json.containsKey("trackAlias")) {
      trackAlias = _json["trackAlias"];
    }
    if (_json.containsKey("trackId")) {
      trackId = _json["trackId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (trackAlias != null) {
      _json["trackAlias"] = trackAlias;
    }
    if (trackId != null) {
      _json["trackId"] = trackId;
    }
    return _json;
  }
}

/// A Users resource represents an account associated with an enterprise. The
/// account may be specific to a device or to an individual user (who can then
/// use the account across multiple devices). The account may provide access to
/// managed Google Play only, or to other Google services, depending on the
/// identity model:
/// - The Google managed domain identity model requires synchronization to
/// Google account sources (via primaryEmail).
/// - The managed Google Play Accounts identity model provides a dynamic means
/// for enterprises to create user or device accounts as needed. These accounts
/// provide access to managed Google Play.
class User {
  /// A unique identifier you create for this user, such as "user342" or
  /// "asset#44418". Do not use personally identifiable information (PII) for
  /// this property. Must always be set for EMM-managed users. Not set for
  /// Google-managed users.
  core.String accountIdentifier;

  /// The type of account that this user represents. A userAccount can be
  /// installed on multiple devices, but a deviceAccount is specific to a single
  /// device. An EMM-managed user (emmManaged) can be either type (userAccount,
  /// deviceAccount), but a Google-managed user (googleManaged) is always a
  /// userAccount.
  core.String accountType;

  /// The name that will appear in user interfaces. Setting this property is
  /// optional when creating EMM-managed users. If you do set this property, use
  /// something generic about the organization (such as "Example, Inc.") or your
  /// name (as EMM). Not used for Google-managed user accounts.
  core.String displayName;

  /// The unique ID for the user.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#user".
  core.String kind;

  /// The entity that manages the user. With googleManaged users, the source of
  /// truth is Google so EMMs have to make sure a Google Account exists for the
  /// user. With emmManaged users, the EMM is in charge.
  core.String managementType;

  /// The user's primary email address, for example, "jsmith@example.com". Will
  /// always be set for Google managed users and not set for EMM managed users.
  core.String primaryEmail;

  User();

  User.fromJson(core.Map _json) {
    if (_json.containsKey("accountIdentifier")) {
      accountIdentifier = _json["accountIdentifier"];
    }
    if (_json.containsKey("accountType")) {
      accountType = _json["accountType"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("managementType")) {
      managementType = _json["managementType"];
    }
    if (_json.containsKey("primaryEmail")) {
      primaryEmail = _json["primaryEmail"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountIdentifier != null) {
      _json["accountIdentifier"] = accountIdentifier;
    }
    if (accountType != null) {
      _json["accountType"] = accountType;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (managementType != null) {
      _json["managementType"] = managementType;
    }
    if (primaryEmail != null) {
      _json["primaryEmail"] = primaryEmail;
    }
    return _json;
  }
}

/// A UserToken is used by a user when setting up a managed device or profile
/// with their managed Google Play account on a device. When the user enters
/// their email address and token (activation code) the appropriate EMM app can
/// be automatically downloaded.
class UserToken {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#userToken".
  core.String kind;

  /// The token (activation code) to be entered by the user. This consists of a
  /// sequence of decimal digits. Note that the leading digit may be 0.
  core.String token;

  /// The unique ID for the user.
  core.String userId;

  UserToken();

  UserToken.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("token")) {
      token = _json["token"];
    }
    if (_json.containsKey("userId")) {
      userId = _json["userId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (token != null) {
      _json["token"] = token;
    }
    if (userId != null) {
      _json["userId"] = userId;
    }
    return _json;
  }
}

/// The matching user resources.
class UsersListResponse {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#usersListResponse".
  core.String kind;

  /// A user of an enterprise.
  core.List<User> user;

  UsersListResponse();

  UsersListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("user")) {
      user = (_json["user"] as core.List)
          .map<User>((value) => new User.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (user != null) {
      _json["user"] = user.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A variable set is a key-value pair of EMM-provided placeholders and its
/// corresponding value, which is attributed to a user. For example, $FIRSTNAME
/// could be a placeholder, and its value could be Alice. Placeholders should
/// start with a '$' sign and should be alphanumeric only.
class VariableSet {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#variableSet".
  core.String kind;

  /// The placeholder string; defined by EMM.
  core.String placeholder;

  /// The value of the placeholder, specific to the user.
  core.String userValue;

  VariableSet();

  VariableSet.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("placeholder")) {
      placeholder = _json["placeholder"];
    }
    if (_json.containsKey("userValue")) {
      userValue = _json["userValue"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (placeholder != null) {
      _json["placeholder"] = placeholder;
    }
    if (userValue != null) {
      _json["userValue"] = userValue;
    }
    return _json;
  }
}

/// A WebApps resource represents a web app created for an enterprise. Web apps
/// are published to managed Google Play and can be distributed like other
/// Android apps. On a user's device, a web app opens its specified URL.
class WebApp {
  /// The display mode of the web app.
  ///
  /// Possible values include:
  /// - "minimalUi", the device's status bar, navigation bar, the app's URL, and
  /// a refresh button are visible when the app is open. For HTTP URLs, you can
  /// only select this option.
  /// - "standalone", the device's status bar and navigation bar are visible
  /// when the app is open.
  /// - "fullScreen", the app opens in full screen mode, hiding the device's
  /// status and navigation bars. All browser UI elements, page URL, system
  /// status bar and back button are not visible, and the web app takes up the
  /// entirety of the available display area.
  core.String displayMode;

  /// A list of icons representing this website. If absent, a default icon (for
  /// create) or the current icon (for update) will be used.
  core.List<WebAppIcon> icons;

  /// A flag whether the app has been published to the Play store yet.
  core.bool isPublished;

  /// The start URL, i.e. the URL that should load when the user opens the
  /// application.
  core.String startUrl;

  /// The title of the web app as displayed to the user (e.g., amongst a list of
  /// other applications, or as a label for an icon).
  core.String title;

  /// The current version of the app.
  ///
  ///
  /// Note that the version can automatically increase during the lifetime of
  /// the web app, while Google does internal housekeeping to keep the web app
  /// up-to-date.
  core.String versionCode;

  /// The ID of the application. A string of the form "app:<package name>" where
  /// the package name always starts with the prefix
  /// "com.google.enterprise.webapp." followed by a random id.
  core.String webAppId;

  WebApp();

  WebApp.fromJson(core.Map _json) {
    if (_json.containsKey("displayMode")) {
      displayMode = _json["displayMode"];
    }
    if (_json.containsKey("icons")) {
      icons = (_json["icons"] as core.List)
          .map<WebAppIcon>((value) => new WebAppIcon.fromJson(value))
          .toList();
    }
    if (_json.containsKey("isPublished")) {
      isPublished = _json["isPublished"];
    }
    if (_json.containsKey("startUrl")) {
      startUrl = _json["startUrl"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("versionCode")) {
      versionCode = _json["versionCode"];
    }
    if (_json.containsKey("webAppId")) {
      webAppId = _json["webAppId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayMode != null) {
      _json["displayMode"] = displayMode;
    }
    if (icons != null) {
      _json["icons"] = icons.map((value) => (value).toJson()).toList();
    }
    if (isPublished != null) {
      _json["isPublished"] = isPublished;
    }
    if (startUrl != null) {
      _json["startUrl"] = startUrl;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (versionCode != null) {
      _json["versionCode"] = versionCode;
    }
    if (webAppId != null) {
      _json["webAppId"] = webAppId;
    }
    return _json;
  }
}

/// Icon for a web app.
class WebAppIcon {
  /// The actual bytes of the image in a base64url encoded string (c.f. RFC4648,
  /// section 5 "Base 64 Encoding with URL and Filename Safe Alphabet").
  /// - The image type can be png or jpg.
  /// - The image should ideally be square.
  /// - The image should ideally have a size of 512x512.
  core.String imageData;

  WebAppIcon();

  WebAppIcon.fromJson(core.Map _json) {
    if (_json.containsKey("imageData")) {
      imageData = _json["imageData"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (imageData != null) {
      _json["imageData"] = imageData;
    }
    return _json;
  }
}

/// The web app details for an enterprise.
class WebAppsListResponse {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "androidenterprise#webAppsListResponse".
  core.String kind;

  /// The manifest describing a web app.
  core.List<WebApp> webApp;

  WebAppsListResponse();

  WebAppsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("webApp")) {
      webApp = (_json["webApp"] as core.List)
          .map<WebApp>((value) => new WebApp.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (webApp != null) {
      _json["webApp"] = webApp.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}
