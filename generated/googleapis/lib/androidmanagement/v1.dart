// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.androidmanagement.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client androidmanagement/v1';

/// The Android Management API provides remote enterprise management of Android
/// devices and apps.
class AndroidmanagementApi {
  /// Manage Android devices and apps for your customers
  static const AndroidmanagementScope =
      "https://www.googleapis.com/auth/androidmanagement";

  final commons.ApiRequester _requester;

  EnterprisesResourceApi get enterprises =>
      new EnterprisesResourceApi(_requester);
  SignupUrlsResourceApi get signupUrls => new SignupUrlsResourceApi(_requester);

  AndroidmanagementApi(http.Client client,
      {core.String rootUrl = "https://androidmanagement.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class EnterprisesResourceApi {
  final commons.ApiRequester _requester;

  EnterprisesApplicationsResourceApi get applications =>
      new EnterprisesApplicationsResourceApi(_requester);
  EnterprisesDevicesResourceApi get devices =>
      new EnterprisesDevicesResourceApi(_requester);
  EnterprisesEnrollmentTokensResourceApi get enrollmentTokens =>
      new EnterprisesEnrollmentTokensResourceApi(_requester);
  EnterprisesPoliciesResourceApi get policies =>
      new EnterprisesPoliciesResourceApi(_requester);
  EnterprisesWebAppsResourceApi get webApps =>
      new EnterprisesWebAppsResourceApi(_requester);
  EnterprisesWebTokensResourceApi get webTokens =>
      new EnterprisesWebTokensResourceApi(_requester);

  EnterprisesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates an enterprise. This is the last step in the enterprise signup
  /// flow.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [enterpriseToken] - The enterprise token appended to the callback URL.
  ///
  /// [signupUrlName] - The name of the SignupUrl used to sign up for the
  /// enterprise.
  ///
  /// [projectId] - The ID of the Google Cloud Platform project which will own
  /// the enterprise.
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
  async.Future<Enterprise> create(Enterprise request,
      {core.String enterpriseToken,
      core.String signupUrlName,
      core.String projectId,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (enterpriseToken != null) {
      _queryParams["enterpriseToken"] = [enterpriseToken];
    }
    if (signupUrlName != null) {
      _queryParams["signupUrlName"] = [signupUrlName];
    }
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/enterprises';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Enterprise.fromJson(data));
  }

  /// Gets an enterprise.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the enterprise in the form
  /// enterprises/{enterpriseId}.
  /// Value must have pattern "^enterprises/[^/]+$".
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
  async.Future<Enterprise> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

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
    return _response.then((data) => new Enterprise.fromJson(data));
  }

  /// Updates an enterprise.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the enterprise in the form
  /// enterprises/{enterpriseId}.
  /// Value must have pattern "^enterprises/[^/]+$".
  ///
  /// [updateMask] - The field mask indicating the fields to update. If not set,
  /// all modifiable fields will be modified.
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
  async.Future<Enterprise> patch(Enterprise request, core.String name,
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
    return _response.then((data) => new Enterprise.fromJson(data));
  }
}

class EnterprisesApplicationsResourceApi {
  final commons.ApiRequester _requester;

  EnterprisesApplicationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets info about an application.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the application in the form
  /// enterprises/{enterpriseId}/applications/{package_name}.
  /// Value must have pattern "^enterprises/[^/]+/applications/[^/]+$".
  ///
  /// [languageCode] - The preferred language for localized application info, as
  /// a BCP47 tag (e.g. "en-US", "de"). If not specified the default language of
  /// the application will be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Application].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Application> get(core.String name,
      {core.String languageCode, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
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
    return _response.then((data) => new Application.fromJson(data));
  }
}

class EnterprisesDevicesResourceApi {
  final commons.ApiRequester _requester;

  EnterprisesDevicesOperationsResourceApi get operations =>
      new EnterprisesDevicesOperationsResourceApi(_requester);

  EnterprisesDevicesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a device. This operation wipes the device.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the device in the form
  /// enterprises/{enterpriseId}/devices/{deviceId}.
  /// Value must have pattern "^enterprises/[^/]+/devices/[^/]+$".
  ///
  /// [wipeDataFlags] - Optional flags that control the device wiping behavior.
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
  async.Future<Empty> delete(core.String name,
      {core.List<core.String> wipeDataFlags, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (wipeDataFlags != null) {
      _queryParams["wipeDataFlags"] = wipeDataFlags;
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

  /// Gets a device.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the device in the form
  /// enterprises/{enterpriseId}/devices/{deviceId}.
  /// Value must have pattern "^enterprises/[^/]+/devices/[^/]+$".
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
  async.Future<Device> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

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
    return _response.then((data) => new Device.fromJson(data));
  }

  /// Issues a command to a device. The Operation resource returned contains a
  /// Command in its metadata field. Use the get operation method to get the
  /// status of the command.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the device in the form
  /// enterprises/{enterpriseId}/devices/{deviceId}.
  /// Value must have pattern "^enterprises/[^/]+/devices/[^/]+$".
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
  async.Future<Operation> issueCommand(Command request, core.String name,
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
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':issueCommand';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Lists devices for a given enterprise.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the enterprise in the form
  /// enterprises/{enterpriseId}.
  /// Value must have pattern "^enterprises/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results returned by the
  /// server.
  ///
  /// [pageSize] - The requested page size. The actual page size may be fixed to
  /// a min or max value.
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
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

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

  /// Updates a device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the device in the form
  /// enterprises/{enterpriseId}/devices/{deviceId}.
  /// Value must have pattern "^enterprises/[^/]+/devices/[^/]+$".
  ///
  /// [updateMask] - The field mask indicating the fields to update. If not set,
  /// all modifiable fields will be modified.
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
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

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

class EnterprisesDevicesOperationsResourceApi {
  final commons.ApiRequester _requester;

  EnterprisesDevicesOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation. The server
  /// makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or
  /// other methods to check whether the cancellation succeeded or whether the
  /// operation completed despite cancellation. On successful cancellation, the
  /// operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// Code.CANCELLED.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// "^enterprises/[^/]+/devices/[^/]+/operations/[^/]+$".
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
  async.Future<Empty> cancel(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Deletes a long-running operation. This method indicates that the client is
  /// no longer interested in the operation result. It does not cancel the
  /// operation. If the server doesn't support this method, it returns
  /// google.rpc.Code.UNIMPLEMENTED.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern
  /// "^enterprises/[^/]+/devices/[^/]+/operations/[^/]+$".
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
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

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

  /// Gets the latest state of a long-running operation. Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// "^enterprises/[^/]+/devices/[^/]+/operations/[^/]+$".
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
  async.Future<Operation> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

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
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Lists operations that match the specified filter in the request. If the
  /// server doesn't support this method, it returns UNIMPLEMENTED.NOTE: the
  /// name binding allows API services to override the binding to use different
  /// resource name schemes, such as users / * /operations. To override the
  /// binding, API services can add a binding such as "/v1/{name=users / *
  /// }/operations" to their service configuration. For backwards compatibility,
  /// the default name includes the operations collection id, however overriding
  /// users must ensure the name binding is the parent resource, without the
  /// operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern "^enterprises/[^/]+/devices/[^/]+/operations$".
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(core.String name,
      {core.int pageSize,
      core.String filter,
      core.String pageToken,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
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
    return _response.then((data) => new ListOperationsResponse.fromJson(data));
  }
}

class EnterprisesEnrollmentTokensResourceApi {
  final commons.ApiRequester _requester;

  EnterprisesEnrollmentTokensResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates an enrollment token for a given enterprise.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the enterprise in the form
  /// enterprises/{enterpriseId}.
  /// Value must have pattern "^enterprises/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EnrollmentToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EnrollmentToken> create(
      EnrollmentToken request, core.String parent,
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
        '/enrollmentTokens';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new EnrollmentToken.fromJson(data));
  }

  /// Deletes an enrollment token. This operation invalidates the token,
  /// preventing its future use.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the enrollment token in the form
  /// enterprises/{enterpriseId}/enrollmentTokens/{enrollmentTokenId}.
  /// Value must have pattern "^enterprises/[^/]+/enrollmentTokens/[^/]+$".
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
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

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
}

class EnterprisesPoliciesResourceApi {
  final commons.ApiRequester _requester;

  EnterprisesPoliciesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a policy. This operation is only permitted if no devices are
  /// currently referencing the policy.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the policy in the form
  /// enterprises/{enterpriseId}/policies/{policyId}.
  /// Value must have pattern "^enterprises/[^/]+/policies/[^/]+$".
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
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

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

  /// Gets a policy.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the policy in the form
  /// enterprises/{enterpriseId}/policies/{policyId}.
  /// Value must have pattern "^enterprises/[^/]+/policies/[^/]+$".
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
  async.Future<Policy> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

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
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Lists policies for a given enterprise.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the enterprise in the form
  /// enterprises/{enterpriseId}.
  /// Value must have pattern "^enterprises/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results returned by the
  /// server.
  ///
  /// [pageSize] - The requested page size. The actual page size may be fixed to
  /// a min or max value.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPoliciesResponse> list(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

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

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/policies';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListPoliciesResponse.fromJson(data));
  }

  /// Updates or creates a policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the policy in the form
  /// enterprises/{enterpriseId}/policies/{policyId}.
  /// Value must have pattern "^enterprises/[^/]+/policies/[^/]+$".
  ///
  /// [updateMask] - The field mask indicating the fields to update. If not set,
  /// all modifiable fields will be modified.
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
  async.Future<Policy> patch(Policy request, core.String name,
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
    return _response.then((data) => new Policy.fromJson(data));
  }
}

class EnterprisesWebAppsResourceApi {
  final commons.ApiRequester _requester;

  EnterprisesWebAppsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a web app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the enterprise in the form
  /// enterprises/{enterpriseId}.
  /// Value must have pattern "^enterprises/[^/]+$".
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
  async.Future<WebApp> create(WebApp request, core.String parent,
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

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/webApps';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new WebApp.fromJson(data));
  }

  /// Deletes a web app.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the web app in the form
  /// enterprises/{enterpriseId}/webApps/{packageName}.
  /// Value must have pattern "^enterprises/[^/]+/webApps/[^/]+$".
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
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

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

  /// Gets a web app.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the web app in the form
  /// enterprises/{enterpriseId}/webApp/{packageName}.
  /// Value must have pattern "^enterprises/[^/]+/webApps/[^/]+$".
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
  async.Future<WebApp> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

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
    return _response.then((data) => new WebApp.fromJson(data));
  }

  /// Lists web apps for a given enterprise.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the enterprise in the form
  /// enterprises/{enterpriseId}.
  /// Value must have pattern "^enterprises/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results returned by the
  /// server.
  ///
  /// [pageSize] - The requested page size. The actual page size may be fixed to
  /// a min or max value.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWebAppsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWebAppsResponse> list(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

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

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/webApps';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListWebAppsResponse.fromJson(data));
  }

  /// Updates a web app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the web app in the form
  /// enterprises/{enterpriseId}/webApps/{packageName}.
  /// Value must have pattern "^enterprises/[^/]+/webApps/[^/]+$".
  ///
  /// [updateMask] - The field mask indicating the fields to update. If not set,
  /// all modifiable fields will be modified.
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
  async.Future<WebApp> patch(WebApp request, core.String name,
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
    return _response.then((data) => new WebApp.fromJson(data));
  }
}

class EnterprisesWebTokensResourceApi {
  final commons.ApiRequester _requester;

  EnterprisesWebTokensResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a web token to access an embeddable managed Google Play web UI for
  /// a given enterprise.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the enterprise in the form
  /// enterprises/{enterpriseId}.
  /// Value must have pattern "^enterprises/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebToken> create(WebToken request, core.String parent,
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

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/webTokens';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new WebToken.fromJson(data));
  }
}

class SignupUrlsResourceApi {
  final commons.ApiRequester _requester;

  SignupUrlsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates an enterprise signup URL.
  ///
  /// Request parameters:
  ///
  /// [callbackUrl] - The callback URL that the admin will be redirected to
  /// after successfully creating an enterprise. Before redirecting there the
  /// system will add a query parameter to this URL named enterpriseToken which
  /// will contain an opaque token to be used for the create enterprise request.
  /// The URL will be parsed then reformatted in order to add the
  /// enterpriseToken parameter, so there may be some minor formatting changes.
  ///
  /// [projectId] - The ID of the Google Cloud Platform project which will own
  /// the enterprise.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SignupUrl].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SignupUrl> create(
      {core.String callbackUrl, core.String projectId, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (callbackUrl != null) {
      _queryParams["callbackUrl"] = [callbackUrl];
    }
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/signupUrls';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SignupUrl.fromJson(data));
  }
}

/// Configuration for an always-on VPN connection.
class AlwaysOnVpnPackage {
  /// Disallows networking when the VPN is not connected.
  core.bool lockdownEnabled;

  /// The package name of the VPN app.
  core.String packageName;

  AlwaysOnVpnPackage();

  AlwaysOnVpnPackage.fromJson(core.Map _json) {
    if (_json.containsKey("lockdownEnabled")) {
      lockdownEnabled = _json["lockdownEnabled"];
    }
    if (_json.containsKey("packageName")) {
      packageName = _json["packageName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (lockdownEnabled != null) {
      _json["lockdownEnabled"] = lockdownEnabled;
    }
    if (packageName != null) {
      _json["packageName"] = packageName;
    }
    return _json;
  }
}

/// A compliance rule condition which is satisfied if the Android Framework API
/// level on the device doesn't meet a minimum requirement. There can only be
/// one rule with this type of condition per policy.
class ApiLevelCondition {
  /// The minimum desired Android Framework API level. If the device doesn't
  /// meet the minimum requirement, this condition is satisfied. Must be greater
  /// than zero.
  core.int minApiLevel;

  ApiLevelCondition();

  ApiLevelCondition.fromJson(core.Map _json) {
    if (_json.containsKey("minApiLevel")) {
      minApiLevel = _json["minApiLevel"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (minApiLevel != null) {
      _json["minApiLevel"] = minApiLevel;
    }
    return _json;
  }
}

/// Information about an app.
class Application {
  /// The set of managed properties available to be pre-configured for the app.
  core.List<ManagedProperty> managedProperties;

  /// The name of the app in the form
  /// enterprises/{enterpriseId}/applications/{package_name}.
  core.String name;

  /// The permissions required by the app.
  core.List<ApplicationPermission> permissions;

  /// The title of the app. Localized.
  core.String title;

  Application();

  Application.fromJson(core.Map _json) {
    if (_json.containsKey("managedProperties")) {
      managedProperties = (_json["managedProperties"] as core.List)
          .map<ManagedProperty>((value) => new ManagedProperty.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List)
          .map<ApplicationPermission>(
              (value) => new ApplicationPermission.fromJson(value))
          .toList();
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (managedProperties != null) {
      _json["managedProperties"] =
          managedProperties.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (permissions != null) {
      _json["permissions"] =
          permissions.map((value) => (value).toJson()).toList();
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// An app-related event.
class ApplicationEvent {
  /// The creation time of the event.
  core.String createTime;

  /// App event type.
  /// Possible string values are:
  /// - "APPLICATION_EVENT_TYPE_UNSPECIFIED" : This value is disallowed.
  /// - "INSTALLED" : The app was installed.
  /// - "CHANGED" : The app was changed, for example, a component was enabled or
  /// disabled.
  /// - "DATA_CLEARED" : The app data was cleared.
  /// - "REMOVED" : The app was removed.
  /// - "REPLACED" : A new version of the app has been installed, replacing the
  /// old version.
  /// - "RESTARTED" : The app was restarted.
  /// - "PINNED" : The app was pinned to the foreground.
  /// - "UNPINNED" : The app was unpinned.
  core.String eventType;

  ApplicationEvent();

  ApplicationEvent.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("eventType")) {
      eventType = _json["eventType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (eventType != null) {
      _json["eventType"] = eventType;
    }
    return _json;
  }
}

/// A permission required by the app.
class ApplicationPermission {
  /// A longer description of the permission, providing more detail on what it
  /// affects. Localized.
  core.String description;

  /// The name of the permission. Localized.
  core.String name;

  /// An opaque string uniquely identifying the permission. Not localized.
  core.String permissionId;

  ApplicationPermission();

  ApplicationPermission.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
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
    if (name != null) {
      _json["name"] = name;
    }
    if (permissionId != null) {
      _json["permissionId"] = permissionId;
    }
    return _json;
  }
}

/// Policy for an individual app.
class ApplicationPolicy {
  /// The default policy for all permissions requested by the app. If specified,
  /// this overrides the policy-level default_permission_policy which applies to
  /// all apps. It does not override the permission_grants which applies to all
  /// apps.
  /// Possible string values are:
  /// - "PERMISSION_POLICY_UNSPECIFIED" : Policy not specified. If no policy is
  /// specified for a permission at any level, then the PROMPT behavior is used
  /// by default.
  /// - "PROMPT" : Prompt the user to grant a permission.
  /// - "GRANT" : Automatically grant a permission.
  /// - "DENY" : Automatically deny a permission.
  core.String defaultPermissionPolicy;

  /// The scopes delegated to the app from Android Device Policy.
  core.List<core.String> delegatedScopes;

  /// Whether the app is disabled. When disabled, the app data is still
  /// preserved.
  core.bool disabled;

  /// The type of installation to perform.
  /// Possible string values are:
  /// - "INSTALL_TYPE_UNSPECIFIED" : Unspecified. Defaults to AVAILABLE.
  /// - "PREINSTALLED" : The app is automatically installed and can be removed
  /// by the user.
  /// - "FORCE_INSTALLED" : The app is automatically installed and can't be
  /// removed by the user.
  /// - "BLOCKED" : The app is blocked and can't be installed. If the app was
  /// installed under a previous policy, it will be uninstalled.
  /// - "AVAILABLE" : The app is available to install.
  /// - "REQUIRED_FOR_SETUP" : The app is automatically installed and can't be
  /// removed by the user and will prevent setup from completion until
  /// installation is complete.
  core.String installType;

  /// Whether the app is allowed to lock itself in full-screen mode.
  core.bool lockTaskAllowed;

  /// Managed configuration applied to the app. The format for the configuration
  /// is dictated by the ManagedProperty values supported by the app. Each field
  /// name in the managed configuration must match the key field of the
  /// ManagedProperty. The field value must be compatible with the type of the
  /// ManagedProperty: <table> <tr><td><i>type</i></td><td><i>JSON
  /// value</i></td></tr> <tr><td>BOOL</td><td>true or false</td></tr>
  /// <tr><td>STRING</td><td>string</td></tr>
  /// <tr><td>INTEGER</td><td>number</td></tr>
  /// <tr><td>CHOICE</td><td>string</td></tr> <tr><td>MULTISELECT</td><td>array
  /// of strings</td></tr> <tr><td>HIDDEN</td><td>string</td></tr>
  /// <tr><td>BUNDLE_ARRAY</td><td>array of objects</td></tr> </table>
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> managedConfiguration;

  /// The managed configurations template for the app, saved from the managed
  /// configurations iframe. This field is ignored if managed_configuration is
  /// set.
  ManagedConfigurationTemplate managedConfigurationTemplate;

  /// The minimum version of the app that runs on the device. If set, the device
  /// attempts to update the app to at least this version code. If the app is
  /// not up-to-date, the device will contain a NonComplianceDetail with
  /// non_compliance_reason set to APP_NOT_UPDATED. The app must already be
  /// published to Google Play with a version code greater than or equal to this
  /// value. At most 20 apps may specify a minimum version code per policy.
  core.int minimumVersionCode;

  /// The package name of the app. For example, com.google.android.youtube for
  /// the YouTube app.
  core.String packageName;

  /// Explicit permission grants or denials for the app. These values override
  /// the default_permission_policy and permission_grants which apply to all
  /// apps.
  core.List<PermissionGrant> permissionGrants;

  ApplicationPolicy();

  ApplicationPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("defaultPermissionPolicy")) {
      defaultPermissionPolicy = _json["defaultPermissionPolicy"];
    }
    if (_json.containsKey("delegatedScopes")) {
      delegatedScopes =
          (_json["delegatedScopes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("disabled")) {
      disabled = _json["disabled"];
    }
    if (_json.containsKey("installType")) {
      installType = _json["installType"];
    }
    if (_json.containsKey("lockTaskAllowed")) {
      lockTaskAllowed = _json["lockTaskAllowed"];
    }
    if (_json.containsKey("managedConfiguration")) {
      managedConfiguration = (_json["managedConfiguration"] as core.Map)
          .cast<core.String, core.Object>();
    }
    if (_json.containsKey("managedConfigurationTemplate")) {
      managedConfigurationTemplate = new ManagedConfigurationTemplate.fromJson(
          _json["managedConfigurationTemplate"]);
    }
    if (_json.containsKey("minimumVersionCode")) {
      minimumVersionCode = _json["minimumVersionCode"];
    }
    if (_json.containsKey("packageName")) {
      packageName = _json["packageName"];
    }
    if (_json.containsKey("permissionGrants")) {
      permissionGrants = (_json["permissionGrants"] as core.List)
          .map<PermissionGrant>((value) => new PermissionGrant.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (defaultPermissionPolicy != null) {
      _json["defaultPermissionPolicy"] = defaultPermissionPolicy;
    }
    if (delegatedScopes != null) {
      _json["delegatedScopes"] = delegatedScopes;
    }
    if (disabled != null) {
      _json["disabled"] = disabled;
    }
    if (installType != null) {
      _json["installType"] = installType;
    }
    if (lockTaskAllowed != null) {
      _json["lockTaskAllowed"] = lockTaskAllowed;
    }
    if (managedConfiguration != null) {
      _json["managedConfiguration"] = managedConfiguration;
    }
    if (managedConfigurationTemplate != null) {
      _json["managedConfigurationTemplate"] =
          (managedConfigurationTemplate).toJson();
    }
    if (minimumVersionCode != null) {
      _json["minimumVersionCode"] = minimumVersionCode;
    }
    if (packageName != null) {
      _json["packageName"] = packageName;
    }
    if (permissionGrants != null) {
      _json["permissionGrants"] =
          permissionGrants.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Information reported about an installed app.
class ApplicationReport {
  /// The source of the package.
  /// Possible string values are:
  /// - "APPLICATION_SOURCE_UNSPECIFIED" : The app was sideloaded from an
  /// unspecified source.
  /// - "SYSTEM_APP_FACTORY_VERSION" : This is a system app from the device's
  /// factory image.
  /// - "SYSTEM_APP_UPDATED_VERSION" : This is an updated system app.
  /// - "INSTALLED_FROM_PLAY_STORE" : The app was installed from the Google Play
  /// Store.
  core.String applicationSource;

  /// The display name of the app.
  core.String displayName;

  /// List of app events. The most recent 20 events are stored in the list.
  core.List<ApplicationEvent> events;

  /// The package name of the app that installed this app.
  core.String installerPackageName;

  /// List of keyed app states reported by the app.
  core.List<KeyedAppState> keyedAppStates;

  /// Package name of the app.
  core.String packageName;

  /// The SHA-256 hash of the app's APK file, which can be used to verify the
  /// app hasn't been modified. Each byte of the hash value is represented as a
  /// two-digit hexadecimal number.
  core.String packageSha256Hash;

  /// The SHA-1 hash of each android.content.pm.Signature
  /// (https://developer.android.com/reference/android/content/pm/Signature.html)
  /// associated with the app package. Each byte of each hash value is
  /// represented as a two-digit hexadecimal number.
  core.List<core.String> signingKeyCertFingerprints;

  /// Application state.
  /// Possible string values are:
  /// - "INSTALLED" : App is installed on the device
  /// - "REMOVED" : App was removed from the device
  core.String state;

  /// The app version code, which can be used to determine whether one version
  /// is more recent than another.
  core.int versionCode;

  /// The app version as displayed to the user.
  core.String versionName;

  ApplicationReport();

  ApplicationReport.fromJson(core.Map _json) {
    if (_json.containsKey("applicationSource")) {
      applicationSource = _json["applicationSource"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("events")) {
      events = (_json["events"] as core.List)
          .map<ApplicationEvent>(
              (value) => new ApplicationEvent.fromJson(value))
          .toList();
    }
    if (_json.containsKey("installerPackageName")) {
      installerPackageName = _json["installerPackageName"];
    }
    if (_json.containsKey("keyedAppStates")) {
      keyedAppStates = (_json["keyedAppStates"] as core.List)
          .map<KeyedAppState>((value) => new KeyedAppState.fromJson(value))
          .toList();
    }
    if (_json.containsKey("packageName")) {
      packageName = _json["packageName"];
    }
    if (_json.containsKey("packageSha256Hash")) {
      packageSha256Hash = _json["packageSha256Hash"];
    }
    if (_json.containsKey("signingKeyCertFingerprints")) {
      signingKeyCertFingerprints =
          (_json["signingKeyCertFingerprints"] as core.List)
              .cast<core.String>();
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("versionCode")) {
      versionCode = _json["versionCode"];
    }
    if (_json.containsKey("versionName")) {
      versionName = _json["versionName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (applicationSource != null) {
      _json["applicationSource"] = applicationSource;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (events != null) {
      _json["events"] = events.map((value) => (value).toJson()).toList();
    }
    if (installerPackageName != null) {
      _json["installerPackageName"] = installerPackageName;
    }
    if (keyedAppStates != null) {
      _json["keyedAppStates"] =
          keyedAppStates.map((value) => (value).toJson()).toList();
    }
    if (packageName != null) {
      _json["packageName"] = packageName;
    }
    if (packageSha256Hash != null) {
      _json["packageSha256Hash"] = packageSha256Hash;
    }
    if (signingKeyCertFingerprints != null) {
      _json["signingKeyCertFingerprints"] = signingKeyCertFingerprints;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (versionCode != null) {
      _json["versionCode"] = versionCode;
    }
    if (versionName != null) {
      _json["versionName"] = versionName;
    }
    return _json;
  }
}

/// Settings controlling the behavior of application reports.
class ApplicationReportingSettings {
  /// Whether removed apps are included in application reports.
  core.bool includeRemovedApps;

  ApplicationReportingSettings();

  ApplicationReportingSettings.fromJson(core.Map _json) {
    if (_json.containsKey("includeRemovedApps")) {
      includeRemovedApps = _json["includeRemovedApps"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (includeRemovedApps != null) {
      _json["includeRemovedApps"] = includeRemovedApps;
    }
    return _json;
  }
}

/// An action to block access to apps and data on a fully managed device or in a
/// work profile. This action also triggers a device or work profile to displays
/// a user-facing notification with information (where possible) on how to
/// correct the compliance issue. Note: wipeAction must also be specified.
class BlockAction {
  /// Number of days the policy is non-compliant before the device or work
  /// profile is blocked. To block access immediately, set to 0. blockAfterDays
  /// must be less than wipeAfterDays.
  core.int blockAfterDays;

  BlockAction();

  BlockAction.fromJson(core.Map _json) {
    if (_json.containsKey("blockAfterDays")) {
      blockAfterDays = _json["blockAfterDays"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (blockAfterDays != null) {
      _json["blockAfterDays"] = blockAfterDays;
    }
    return _json;
  }
}

/// A rule for automatically choosing a private key and certificate to
/// authenticate the device to a server.
class ChoosePrivateKeyRule {
  /// The package names for which outgoing requests are subject to this rule. If
  /// no package names are specified, then the rule applies to all packages. For
  /// each package name listed, the rule applies to that package and all other
  /// packages that shared the same Android UID. The SHA256 hash of the signing
  /// key signatures of each package_name will be verified against those
  /// provided by Play
  core.List<core.String> packageNames;

  /// The alias of the private key to be used.
  core.String privateKeyAlias;

  /// The URL pattern to match against the URL of the outgoing request. The
  /// pattern may contain asterisk (*) wildcards. Any URL is matched if
  /// unspecified.
  core.String urlPattern;

  ChoosePrivateKeyRule();

  ChoosePrivateKeyRule.fromJson(core.Map _json) {
    if (_json.containsKey("packageNames")) {
      packageNames = (_json["packageNames"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("privateKeyAlias")) {
      privateKeyAlias = _json["privateKeyAlias"];
    }
    if (_json.containsKey("urlPattern")) {
      urlPattern = _json["urlPattern"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (packageNames != null) {
      _json["packageNames"] = packageNames;
    }
    if (privateKeyAlias != null) {
      _json["privateKeyAlias"] = privateKeyAlias;
    }
    if (urlPattern != null) {
      _json["urlPattern"] = urlPattern;
    }
    return _json;
  }
}

/// A command.
class Command {
  /// The timestamp at which the command was created. The timestamp is
  /// automatically generated by the server.
  core.String createTime;

  /// The duration for which the command is valid. The command will expire if
  /// not executed by the device during this time. The default duration if
  /// unspecified is ten minutes. There is no maximum duration.
  core.String duration;

  /// If the command failed, an error code explaining the failure. This is not
  /// set when the command is cancelled by the caller.
  /// Possible string values are:
  /// - "COMMAND_ERROR_CODE_UNSPECIFIED" : There was no error.
  /// - "UNKNOWN" : An unknown error occurred.
  /// - "API_LEVEL" : The API level of the device does not support this command.
  /// - "MANAGEMENT_MODE" : The management mode (profile owner, device owner,
  /// etc.) does not support the command.
  /// - "INVALID_VALUE" : The command has an invalid parameter value.
  /// - "UNSUPPORTED" : The device doesn't support the command. Updating Android
  /// Device Policy to the latest version may resolve the issue.
  core.String errorCode;

  /// For commands of type RESET_PASSWORD, optionally specifies the new
  /// password.
  core.String newPassword;

  /// For commands of type RESET_PASSWORD, optionally specifies flags.
  core.List<core.String> resetPasswordFlags;

  /// The type of the command.
  /// Possible string values are:
  /// - "COMMAND_TYPE_UNSPECIFIED" : This value is disallowed.
  /// - "LOCK" : Lock the device, as if the lock screen timeout had expired.
  /// - "RESET_PASSWORD" : Reset the user's password.
  /// - "REBOOT" : Reboot the device. Only supported on API level 24+.
  core.String type;

  /// The resource name of the user that owns the device in the form
  /// enterprises/{enterpriseId}/users/{userId}. This is automatically generated
  /// by the server based on the device the command is sent to.
  core.String userName;

  Command();

  Command.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("duration")) {
      duration = _json["duration"];
    }
    if (_json.containsKey("errorCode")) {
      errorCode = _json["errorCode"];
    }
    if (_json.containsKey("newPassword")) {
      newPassword = _json["newPassword"];
    }
    if (_json.containsKey("resetPasswordFlags")) {
      resetPasswordFlags =
          (_json["resetPasswordFlags"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("userName")) {
      userName = _json["userName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (duration != null) {
      _json["duration"] = duration;
    }
    if (errorCode != null) {
      _json["errorCode"] = errorCode;
    }
    if (newPassword != null) {
      _json["newPassword"] = newPassword;
    }
    if (resetPasswordFlags != null) {
      _json["resetPasswordFlags"] = resetPasswordFlags;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (userName != null) {
      _json["userName"] = userName;
    }
    return _json;
  }
}

/// A rule declaring which mitigating actions to take when a device is not
/// compliant with its policy. For every rule, there is always an implicit
/// mitigating action to set policy_compliant to false for the Device resource,
/// and display a message on the device indicating that the device is not
/// compliant with its policy. Other mitigating actions may optionally be taken
/// as well, depending on the field values in the rule.
class ComplianceRule {
  /// A condition which is satisfied if the Android Framework API level on the
  /// device doesn't meet a minimum requirement.
  ApiLevelCondition apiLevelCondition;

  /// If set to true, the rule includes a mitigating action to disable apps so
  /// that the device is effectively disabled, but app data is preserved. If the
  /// device is running an app in locked task mode, the app will be closed and a
  /// UI showing the reason for non-compliance will be displayed.
  core.bool disableApps;

  /// A condition which is satisfied if there exists any matching
  /// NonComplianceDetail for the device.
  NonComplianceDetailCondition nonComplianceDetailCondition;

  /// If set, the rule includes a mitigating action to disable apps specified in
  /// the list, but app data is preserved.
  core.List<core.String> packageNamesToDisable;

  ComplianceRule();

  ComplianceRule.fromJson(core.Map _json) {
    if (_json.containsKey("apiLevelCondition")) {
      apiLevelCondition =
          new ApiLevelCondition.fromJson(_json["apiLevelCondition"]);
    }
    if (_json.containsKey("disableApps")) {
      disableApps = _json["disableApps"];
    }
    if (_json.containsKey("nonComplianceDetailCondition")) {
      nonComplianceDetailCondition = new NonComplianceDetailCondition.fromJson(
          _json["nonComplianceDetailCondition"]);
    }
    if (_json.containsKey("packageNamesToDisable")) {
      packageNamesToDisable =
          (_json["packageNamesToDisable"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (apiLevelCondition != null) {
      _json["apiLevelCondition"] = (apiLevelCondition).toJson();
    }
    if (disableApps != null) {
      _json["disableApps"] = disableApps;
    }
    if (nonComplianceDetailCondition != null) {
      _json["nonComplianceDetailCondition"] =
          (nonComplianceDetailCondition).toJson();
    }
    if (packageNamesToDisable != null) {
      _json["packageNamesToDisable"] = packageNamesToDisable;
    }
    return _json;
  }
}

/// A device owned by an enterprise. Unless otherwise noted, all fields are
/// read-only and can't be modified by enterprises.devices.patch.
class Device {
  /// The API level of the Android platform version running on the device.
  core.int apiLevel;

  /// Reports for apps installed on the device. This information is only
  /// available when application_reports_enabled is true in the device's policy.
  core.List<ApplicationReport> applicationReports;

  /// The name of the policy currently applied to the device.
  core.String appliedPolicyName;

  /// The version of the policy currently applied to the device.
  core.String appliedPolicyVersion;

  /// The state currently applied to the device.
  /// Possible string values are:
  /// - "DEVICE_STATE_UNSPECIFIED" : This value is disallowed.
  /// - "ACTIVE" : The device is active.
  /// - "DISABLED" : The device is disabled.
  /// - "DELETED" : The device was deleted. This state will never be returned by
  /// an API call, but is used in the final status report published to Cloud
  /// Pub/Sub when the device acknowledges the deletion.
  /// - "PROVISIONING" : The device is being provisioned. Newly enrolled devices
  /// are in this state until they have a policy applied.
  core.String appliedState;

  /// Device settings information. This information is only available if
  /// deviceSettingsEnabled is true in the device's policy.
  DeviceSettings deviceSettings;

  /// If the device state is DISABLED, an optional message that is displayed on
  /// the device indicating the reason the device is disabled. This field can be
  /// modified by a patch request.
  UserFacingMessage disabledReason;

  /// Detailed information about displays on the device. This information is
  /// only available if displayInfoEnabled is true in the device's policy.
  core.List<Display> displays;

  /// The time of device enrollment.
  core.String enrollmentTime;

  /// If the device was enrolled with an enrollment token with additional data
  /// provided, this field contains that data.
  core.String enrollmentTokenData;

  /// If the device was enrolled with an enrollment token, this field contains
  /// the name of the token.
  core.String enrollmentTokenName;

  /// Detailed information about the device hardware.
  HardwareInfo hardwareInfo;

  /// Hardware status samples in chronological order. This information is only
  /// available if hardwareStatusEnabled is true in the device's policy.
  core.List<HardwareStatus> hardwareStatusSamples;

  /// Deprecated.
  core.String lastPolicyComplianceReportTime;

  /// The last time the device fetched its policy.
  core.String lastPolicySyncTime;

  /// The last time the device sent a status report.
  core.String lastStatusReportTime;

  /// The type of management mode Android Device Policy takes on the device.
  /// This influences which policy settings are supported.
  /// Possible string values are:
  /// - "MANAGEMENT_MODE_UNSPECIFIED" : This value is disallowed.
  /// - "DEVICE_OWNER" : Device owner. Android Device Policy has full control
  /// over the device.
  /// - "PROFILE_OWNER" : Profile owner. Android Device Policy has control over
  /// a managed profile on the device.
  core.String managementMode;

  /// Events related to memory and storage measurements in chronological order.
  /// This information is only available if memoryInfoEnabled is true in the
  /// device's policy.
  core.List<MemoryEvent> memoryEvents;

  /// Memory information. This information is only available if
  /// memoryInfoEnabled is true in the device's policy.
  MemoryInfo memoryInfo;

  /// The name of the device in the form
  /// enterprises/{enterpriseId}/devices/{deviceId}.
  core.String name;

  /// Device network information. This information is only available if
  /// networkInfoEnabled is true in the device's policy.
  NetworkInfo networkInfo;

  /// Details about policy settings that the device is not compliant with.
  core.List<NonComplianceDetail> nonComplianceDetails;

  /// Whether the device is compliant with its policy.
  core.bool policyCompliant;

  /// The name of the policy applied to the device, in the form
  /// enterprises/{enterpriseId}/policies/{policyId}. If not specified, the
  /// policy_name for the device's user is applied. This field can be modified
  /// by a patch request. You can specify only the policyId when calling
  /// enterprises.devices.patch, as long as the policyId doesn’t contain any
  /// slashes. The rest of the policy name is inferred.
  core.String policyName;

  /// Power management events on the device in chronological order. This
  /// information is only available if powerManagementEventsEnabled is true in
  /// the device's policy.
  core.List<PowerManagementEvent> powerManagementEvents;

  /// If the same physical device has been enrolled multiple times, this field
  /// contains its previous device names. The serial number is used as the
  /// unique identifier to determine if the same physical device has enrolled
  /// previously. The names are in chronological order.
  core.List<core.String> previousDeviceNames;

  /// Detailed information about the device software. This information is only
  /// available if softwareInfoEnabled is true in the device's policy.
  SoftwareInfo softwareInfo;

  /// The state to be applied to the device. This field can be modified by a
  /// patch request. Note that when calling enterprises.devices.patch, ACTIVE
  /// and DISABLED are the only allowable values. To enter the device into a
  /// DELETED state, call enterprises.devices.delete.
  /// Possible string values are:
  /// - "DEVICE_STATE_UNSPECIFIED" : This value is disallowed.
  /// - "ACTIVE" : The device is active.
  /// - "DISABLED" : The device is disabled.
  /// - "DELETED" : The device was deleted. This state will never be returned by
  /// an API call, but is used in the final status report published to Cloud
  /// Pub/Sub when the device acknowledges the deletion.
  /// - "PROVISIONING" : The device is being provisioned. Newly enrolled devices
  /// are in this state until they have a policy applied.
  core.String state;

  /// Map of selected system properties name and value related to the device.
  core.Map<core.String, core.String> systemProperties;

  /// The user who owns the device.
  User user;

  /// The resource name of the user that owns this device in the form
  /// enterprises/{enterpriseId}/users/{userId}.
  core.String userName;

  Device();

  Device.fromJson(core.Map _json) {
    if (_json.containsKey("apiLevel")) {
      apiLevel = _json["apiLevel"];
    }
    if (_json.containsKey("applicationReports")) {
      applicationReports = (_json["applicationReports"] as core.List)
          .map<ApplicationReport>(
              (value) => new ApplicationReport.fromJson(value))
          .toList();
    }
    if (_json.containsKey("appliedPolicyName")) {
      appliedPolicyName = _json["appliedPolicyName"];
    }
    if (_json.containsKey("appliedPolicyVersion")) {
      appliedPolicyVersion = _json["appliedPolicyVersion"];
    }
    if (_json.containsKey("appliedState")) {
      appliedState = _json["appliedState"];
    }
    if (_json.containsKey("deviceSettings")) {
      deviceSettings = new DeviceSettings.fromJson(_json["deviceSettings"]);
    }
    if (_json.containsKey("disabledReason")) {
      disabledReason = new UserFacingMessage.fromJson(_json["disabledReason"]);
    }
    if (_json.containsKey("displays")) {
      displays = (_json["displays"] as core.List)
          .map<Display>((value) => new Display.fromJson(value))
          .toList();
    }
    if (_json.containsKey("enrollmentTime")) {
      enrollmentTime = _json["enrollmentTime"];
    }
    if (_json.containsKey("enrollmentTokenData")) {
      enrollmentTokenData = _json["enrollmentTokenData"];
    }
    if (_json.containsKey("enrollmentTokenName")) {
      enrollmentTokenName = _json["enrollmentTokenName"];
    }
    if (_json.containsKey("hardwareInfo")) {
      hardwareInfo = new HardwareInfo.fromJson(_json["hardwareInfo"]);
    }
    if (_json.containsKey("hardwareStatusSamples")) {
      hardwareStatusSamples = (_json["hardwareStatusSamples"] as core.List)
          .map<HardwareStatus>((value) => new HardwareStatus.fromJson(value))
          .toList();
    }
    if (_json.containsKey("lastPolicyComplianceReportTime")) {
      lastPolicyComplianceReportTime = _json["lastPolicyComplianceReportTime"];
    }
    if (_json.containsKey("lastPolicySyncTime")) {
      lastPolicySyncTime = _json["lastPolicySyncTime"];
    }
    if (_json.containsKey("lastStatusReportTime")) {
      lastStatusReportTime = _json["lastStatusReportTime"];
    }
    if (_json.containsKey("managementMode")) {
      managementMode = _json["managementMode"];
    }
    if (_json.containsKey("memoryEvents")) {
      memoryEvents = (_json["memoryEvents"] as core.List)
          .map<MemoryEvent>((value) => new MemoryEvent.fromJson(value))
          .toList();
    }
    if (_json.containsKey("memoryInfo")) {
      memoryInfo = new MemoryInfo.fromJson(_json["memoryInfo"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("networkInfo")) {
      networkInfo = new NetworkInfo.fromJson(_json["networkInfo"]);
    }
    if (_json.containsKey("nonComplianceDetails")) {
      nonComplianceDetails = (_json["nonComplianceDetails"] as core.List)
          .map<NonComplianceDetail>(
              (value) => new NonComplianceDetail.fromJson(value))
          .toList();
    }
    if (_json.containsKey("policyCompliant")) {
      policyCompliant = _json["policyCompliant"];
    }
    if (_json.containsKey("policyName")) {
      policyName = _json["policyName"];
    }
    if (_json.containsKey("powerManagementEvents")) {
      powerManagementEvents = (_json["powerManagementEvents"] as core.List)
          .map<PowerManagementEvent>(
              (value) => new PowerManagementEvent.fromJson(value))
          .toList();
    }
    if (_json.containsKey("previousDeviceNames")) {
      previousDeviceNames =
          (_json["previousDeviceNames"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("softwareInfo")) {
      softwareInfo = new SoftwareInfo.fromJson(_json["softwareInfo"]);
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("systemProperties")) {
      systemProperties = (_json["systemProperties"] as core.Map)
          .cast<core.String, core.String>();
    }
    if (_json.containsKey("user")) {
      user = new User.fromJson(_json["user"]);
    }
    if (_json.containsKey("userName")) {
      userName = _json["userName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (apiLevel != null) {
      _json["apiLevel"] = apiLevel;
    }
    if (applicationReports != null) {
      _json["applicationReports"] =
          applicationReports.map((value) => (value).toJson()).toList();
    }
    if (appliedPolicyName != null) {
      _json["appliedPolicyName"] = appliedPolicyName;
    }
    if (appliedPolicyVersion != null) {
      _json["appliedPolicyVersion"] = appliedPolicyVersion;
    }
    if (appliedState != null) {
      _json["appliedState"] = appliedState;
    }
    if (deviceSettings != null) {
      _json["deviceSettings"] = (deviceSettings).toJson();
    }
    if (disabledReason != null) {
      _json["disabledReason"] = (disabledReason).toJson();
    }
    if (displays != null) {
      _json["displays"] = displays.map((value) => (value).toJson()).toList();
    }
    if (enrollmentTime != null) {
      _json["enrollmentTime"] = enrollmentTime;
    }
    if (enrollmentTokenData != null) {
      _json["enrollmentTokenData"] = enrollmentTokenData;
    }
    if (enrollmentTokenName != null) {
      _json["enrollmentTokenName"] = enrollmentTokenName;
    }
    if (hardwareInfo != null) {
      _json["hardwareInfo"] = (hardwareInfo).toJson();
    }
    if (hardwareStatusSamples != null) {
      _json["hardwareStatusSamples"] =
          hardwareStatusSamples.map((value) => (value).toJson()).toList();
    }
    if (lastPolicyComplianceReportTime != null) {
      _json["lastPolicyComplianceReportTime"] = lastPolicyComplianceReportTime;
    }
    if (lastPolicySyncTime != null) {
      _json["lastPolicySyncTime"] = lastPolicySyncTime;
    }
    if (lastStatusReportTime != null) {
      _json["lastStatusReportTime"] = lastStatusReportTime;
    }
    if (managementMode != null) {
      _json["managementMode"] = managementMode;
    }
    if (memoryEvents != null) {
      _json["memoryEvents"] =
          memoryEvents.map((value) => (value).toJson()).toList();
    }
    if (memoryInfo != null) {
      _json["memoryInfo"] = (memoryInfo).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (networkInfo != null) {
      _json["networkInfo"] = (networkInfo).toJson();
    }
    if (nonComplianceDetails != null) {
      _json["nonComplianceDetails"] =
          nonComplianceDetails.map((value) => (value).toJson()).toList();
    }
    if (policyCompliant != null) {
      _json["policyCompliant"] = policyCompliant;
    }
    if (policyName != null) {
      _json["policyName"] = policyName;
    }
    if (powerManagementEvents != null) {
      _json["powerManagementEvents"] =
          powerManagementEvents.map((value) => (value).toJson()).toList();
    }
    if (previousDeviceNames != null) {
      _json["previousDeviceNames"] = previousDeviceNames;
    }
    if (softwareInfo != null) {
      _json["softwareInfo"] = (softwareInfo).toJson();
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (systemProperties != null) {
      _json["systemProperties"] = systemProperties;
    }
    if (user != null) {
      _json["user"] = (user).toJson();
    }
    if (userName != null) {
      _json["userName"] = userName;
    }
    return _json;
  }
}

/// Information about security related device settings on device.
class DeviceSettings {
  /// Whether ADB (https://developer.android.com/studio/command-line/adb.html)
  /// is enabled on the device.
  core.bool adbEnabled;

  /// Whether developer mode is enabled on the device.
  core.bool developmentSettingsEnabled;

  /// Encryption status from DevicePolicyManager.
  /// Possible string values are:
  /// - "ENCRYPTION_STATUS_UNSPECIFIED" : Unspecified. No device should have
  /// this type.
  /// - "UNSUPPORTED" : Encryption is not supported by the device.
  /// - "INACTIVE" : Encryption is supported by the device, but is not currently
  /// active.
  /// - "ACTIVATING" : Encryption is not currently active, but is currently
  /// being activated.
  /// - "ACTIVE" : Encryption is active.
  /// - "ACTIVE_DEFAULT_KEY" : Encryption is active, but an encryption key is
  /// not set by the user.
  /// - "ACTIVE_PER_USER" : Encryption is active, and the encryption key is tied
  /// to the user profile.
  core.String encryptionStatus;

  /// Whether the device is secured with PIN/password.
  core.bool isDeviceSecure;

  /// Whether the storage encryption is enabled.
  core.bool isEncrypted;

  /// Whether installing apps from unknown sources is enabled.
  core.bool unknownSourcesEnabled;

  /// Whether Verify Apps (Google Play Protect
  /// (https://support.google.com/googleplay/answer/2812853)) is enabled on the
  /// device.
  core.bool verifyAppsEnabled;

  DeviceSettings();

  DeviceSettings.fromJson(core.Map _json) {
    if (_json.containsKey("adbEnabled")) {
      adbEnabled = _json["adbEnabled"];
    }
    if (_json.containsKey("developmentSettingsEnabled")) {
      developmentSettingsEnabled = _json["developmentSettingsEnabled"];
    }
    if (_json.containsKey("encryptionStatus")) {
      encryptionStatus = _json["encryptionStatus"];
    }
    if (_json.containsKey("isDeviceSecure")) {
      isDeviceSecure = _json["isDeviceSecure"];
    }
    if (_json.containsKey("isEncrypted")) {
      isEncrypted = _json["isEncrypted"];
    }
    if (_json.containsKey("unknownSourcesEnabled")) {
      unknownSourcesEnabled = _json["unknownSourcesEnabled"];
    }
    if (_json.containsKey("verifyAppsEnabled")) {
      verifyAppsEnabled = _json["verifyAppsEnabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (adbEnabled != null) {
      _json["adbEnabled"] = adbEnabled;
    }
    if (developmentSettingsEnabled != null) {
      _json["developmentSettingsEnabled"] = developmentSettingsEnabled;
    }
    if (encryptionStatus != null) {
      _json["encryptionStatus"] = encryptionStatus;
    }
    if (isDeviceSecure != null) {
      _json["isDeviceSecure"] = isDeviceSecure;
    }
    if (isEncrypted != null) {
      _json["isEncrypted"] = isEncrypted;
    }
    if (unknownSourcesEnabled != null) {
      _json["unknownSourcesEnabled"] = unknownSourcesEnabled;
    }
    if (verifyAppsEnabled != null) {
      _json["verifyAppsEnabled"] = verifyAppsEnabled;
    }
    return _json;
  }
}

/// Device display information.
class Display {
  /// Display density expressed as dots-per-inch.
  core.int density;

  /// Unique display id.
  core.int displayId;

  /// Display height in pixels.
  core.int height;

  /// Name of the display.
  core.String name;

  /// Refresh rate of the display in frames per second.
  core.int refreshRate;

  /// State of the display.
  /// Possible string values are:
  /// - "DISPLAY_STATE_UNSPECIFIED" : This value is disallowed.
  /// - "OFF" : Display is off.
  /// - "ON" : Display is on.
  /// - "DOZE" : Display is dozing in a low power state
  /// - "SUSPENDED" : Display is dozing in a suspended low power state.
  core.String state;

  /// Display width in pixels.
  core.int width;

  Display();

  Display.fromJson(core.Map _json) {
    if (_json.containsKey("density")) {
      density = _json["density"];
    }
    if (_json.containsKey("displayId")) {
      displayId = _json["displayId"];
    }
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("refreshRate")) {
      refreshRate = _json["refreshRate"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (density != null) {
      _json["density"] = density;
    }
    if (displayId != null) {
      _json["displayId"] = displayId;
    }
    if (height != null) {
      _json["height"] = height;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (refreshRate != null) {
      _json["refreshRate"] = refreshRate;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
/// service Foo {
///   rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
/// }
/// The JSON representation for Empty is empty JSON object {}.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// An enrollment token.
class EnrollmentToken {
  /// Optional, arbitrary data associated with the enrollment token. This could
  /// contain, for example, the ID of an org unit the device is assigned to
  /// after enrollment. After a device enrolls with the token, this data will be
  /// exposed in the enrollment_token_data field of the Device resource. The
  /// data must be 1024 characters or less; otherwise, the creation request will
  /// fail.
  core.String additionalData;

  /// The length of time the enrollment token is valid, ranging from 1 minute to
  /// 30 days. If not specified, the default duration is 1 hour.
  core.String duration;

  /// The expiration time of the token. This is a read-only field generated by
  /// the server.
  core.String expirationTimestamp;

  /// The name of the enrollment token, which is generated by the server during
  /// creation, in the form
  /// enterprises/{enterpriseId}/enrollmentTokens/{enrollmentTokenId}.
  core.String name;

  /// Whether the enrollment token is for one time use only. If the flag is set
  /// to true, only one device can use it for registration.
  core.bool oneTimeOnly;

  /// The name of the policy initially applied to the enrolled device, in the
  /// form enterprises/{enterpriseId}/policies/{policyId}. If not specified, the
  /// policy_name for the device’s user is applied. If user_name is also not
  /// specified, enterprises/{enterpriseId}/policies/default is applied by
  /// default. When updating this field, you can specify only the policyId as
  /// long as the policyId doesn’t contain any slashes. The rest of the policy
  /// name will be inferred.
  core.String policyName;

  /// A JSON string whose UTF-8 representation can be used to generate a QR code
  /// to enroll a device with this enrollment token. To enroll a device using
  /// NFC, the NFC record must contain a serialized java.util.Properties
  /// representation of the properties in the JSON.
  core.String qrCode;

  /// The user associated with this enrollment token. If it's specified when the
  /// enrollment token is created and the user does not exist, the user will be
  /// created. This field must not contain personally identifiable information.
  /// Only the account_identifier field needs to be set.
  User user;

  /// The token value that's passed to the device and authorizes the device to
  /// enroll. This is a read-only field generated by the server.
  core.String value;

  EnrollmentToken();

  EnrollmentToken.fromJson(core.Map _json) {
    if (_json.containsKey("additionalData")) {
      additionalData = _json["additionalData"];
    }
    if (_json.containsKey("duration")) {
      duration = _json["duration"];
    }
    if (_json.containsKey("expirationTimestamp")) {
      expirationTimestamp = _json["expirationTimestamp"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("oneTimeOnly")) {
      oneTimeOnly = _json["oneTimeOnly"];
    }
    if (_json.containsKey("policyName")) {
      policyName = _json["policyName"];
    }
    if (_json.containsKey("qrCode")) {
      qrCode = _json["qrCode"];
    }
    if (_json.containsKey("user")) {
      user = new User.fromJson(_json["user"]);
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (additionalData != null) {
      _json["additionalData"] = additionalData;
    }
    if (duration != null) {
      _json["duration"] = duration;
    }
    if (expirationTimestamp != null) {
      _json["expirationTimestamp"] = expirationTimestamp;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (oneTimeOnly != null) {
      _json["oneTimeOnly"] = oneTimeOnly;
    }
    if (policyName != null) {
      _json["policyName"] = policyName;
    }
    if (qrCode != null) {
      _json["qrCode"] = qrCode;
    }
    if (user != null) {
      _json["user"] = (user).toJson();
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// The configuration applied to an enterprise.
class Enterprise {
  /// Deprecated and unused.
  core.bool appAutoApprovalEnabled;

  /// The types of Google Pub/Sub notifications enabled for the enterprise.
  core.List<core.String> enabledNotificationTypes;

  /// The name of the enterprise displayed to users.
  core.String enterpriseDisplayName;

  /// An image displayed as a logo during device provisioning. Supported types
  /// are: image/bmp, image/gif, image/x-ico, image/jpeg, image/png, image/webp,
  /// image/vnd.wap.wbmp, image/x-adobe-dng.
  ExternalData logo;

  /// The name of the enterprise which is generated by the server during
  /// creation, in the form enterprises/{enterpriseId}.
  core.String name;

  /// A color in RGB format that indicates the predominant color to display in
  /// the device management app UI. The color components are stored as follows:
  /// (red << 16) | (green << 8) | blue, where the value of each component is
  /// between 0 and 255, inclusive.
  core.int primaryColor;

  /// The topic that Cloud Pub/Sub notifications are published to, in the form
  /// projects/{project}/topics/{topic}. This field is only required if Pub/Sub
  /// notifications are enabled.
  core.String pubsubTopic;

  /// Sign-in details of the enterprise. Maximum of 1 SigninDetail is supported.
  core.List<SigninDetail> signinDetails;

  /// Terms and conditions that must be accepted when provisioning a device for
  /// this enterprise. A page of terms is generated for each value in this list.
  core.List<TermsAndConditions> termsAndConditions;

  Enterprise();

  Enterprise.fromJson(core.Map _json) {
    if (_json.containsKey("appAutoApprovalEnabled")) {
      appAutoApprovalEnabled = _json["appAutoApprovalEnabled"];
    }
    if (_json.containsKey("enabledNotificationTypes")) {
      enabledNotificationTypes =
          (_json["enabledNotificationTypes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("enterpriseDisplayName")) {
      enterpriseDisplayName = _json["enterpriseDisplayName"];
    }
    if (_json.containsKey("logo")) {
      logo = new ExternalData.fromJson(_json["logo"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("primaryColor")) {
      primaryColor = _json["primaryColor"];
    }
    if (_json.containsKey("pubsubTopic")) {
      pubsubTopic = _json["pubsubTopic"];
    }
    if (_json.containsKey("signinDetails")) {
      signinDetails = (_json["signinDetails"] as core.List)
          .map<SigninDetail>((value) => new SigninDetail.fromJson(value))
          .toList();
    }
    if (_json.containsKey("termsAndConditions")) {
      termsAndConditions = (_json["termsAndConditions"] as core.List)
          .map<TermsAndConditions>(
              (value) => new TermsAndConditions.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appAutoApprovalEnabled != null) {
      _json["appAutoApprovalEnabled"] = appAutoApprovalEnabled;
    }
    if (enabledNotificationTypes != null) {
      _json["enabledNotificationTypes"] = enabledNotificationTypes;
    }
    if (enterpriseDisplayName != null) {
      _json["enterpriseDisplayName"] = enterpriseDisplayName;
    }
    if (logo != null) {
      _json["logo"] = (logo).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (primaryColor != null) {
      _json["primaryColor"] = primaryColor;
    }
    if (pubsubTopic != null) {
      _json["pubsubTopic"] = pubsubTopic;
    }
    if (signinDetails != null) {
      _json["signinDetails"] =
          signinDetails.map((value) => (value).toJson()).toList();
    }
    if (termsAndConditions != null) {
      _json["termsAndConditions"] =
          termsAndConditions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Data hosted at an external location. The data is to be downloaded by Android
/// Device Policy and verified against the hash.
class ExternalData {
  /// The base-64 encoded SHA-256 hash of the content hosted at url. If the
  /// content doesn't match this hash, Android Device Policy won't use the data.
  core.String sha256Hash;

  /// The absolute URL to the data, which must use either the http or https
  /// scheme. Android Device Policy doesn't provide any credentials in the GET
  /// request, so the URL must be publicly accessible. Including a long, random
  /// component in the URL may be used to prevent attackers from discovering the
  /// URL.
  core.String url;

  ExternalData();

  ExternalData.fromJson(core.Map _json) {
    if (_json.containsKey("sha256Hash")) {
      sha256Hash = _json["sha256Hash"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (sha256Hash != null) {
      _json["sha256Hash"] = sha256Hash;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// Information about device hardware. The fields related to temperature
/// thresholds are only available if hardwareStatusEnabled is true in the
/// device's policy.
class HardwareInfo {
  /// Battery shutdown temperature thresholds in Celsius for each battery on the
  /// device.
  core.List<core.double> batteryShutdownTemperatures;

  /// Battery throttling temperature thresholds in Celsius for each battery on
  /// the device.
  core.List<core.double> batteryThrottlingTemperatures;

  /// Brand of the device. For example, Google.
  core.String brand;

  /// CPU shutdown temperature thresholds in Celsius for each CPU on the device.
  core.List<core.double> cpuShutdownTemperatures;

  /// CPU throttling temperature thresholds in Celsius for each CPU on the
  /// device.
  core.List<core.double> cpuThrottlingTemperatures;

  /// Baseband version. For example, MDM9625_104662.22.05.34p.
  core.String deviceBasebandVersion;

  /// GPU shutdown temperature thresholds in Celsius for each GPU on the device.
  core.List<core.double> gpuShutdownTemperatures;

  /// GPU throttling temperature thresholds in Celsius for each GPU on the
  /// device.
  core.List<core.double> gpuThrottlingTemperatures;

  /// Name of the hardware. For example, Angler.
  core.String hardware;

  /// Manufacturer. For example, Motorola.
  core.String manufacturer;

  /// The model of the device. For example, Asus Nexus 7.
  core.String model;

  /// The device serial number.
  core.String serialNumber;

  /// Device skin shutdown temperature thresholds in Celsius.
  core.List<core.double> skinShutdownTemperatures;

  /// Device skin throttling temperature thresholds in Celsius.
  core.List<core.double> skinThrottlingTemperatures;

  HardwareInfo();

  HardwareInfo.fromJson(core.Map _json) {
    if (_json.containsKey("batteryShutdownTemperatures")) {
      batteryShutdownTemperatures =
          (_json["batteryShutdownTemperatures"] as core.List)
              .map<core.double>((value) => value.toDouble())
              .toList();
    }
    if (_json.containsKey("batteryThrottlingTemperatures")) {
      batteryThrottlingTemperatures =
          (_json["batteryThrottlingTemperatures"] as core.List)
              .map<core.double>((value) => value.toDouble())
              .toList();
    }
    if (_json.containsKey("brand")) {
      brand = _json["brand"];
    }
    if (_json.containsKey("cpuShutdownTemperatures")) {
      cpuShutdownTemperatures = (_json["cpuShutdownTemperatures"] as core.List)
          .map<core.double>((value) => value.toDouble())
          .toList();
    }
    if (_json.containsKey("cpuThrottlingTemperatures")) {
      cpuThrottlingTemperatures =
          (_json["cpuThrottlingTemperatures"] as core.List)
              .map<core.double>((value) => value.toDouble())
              .toList();
    }
    if (_json.containsKey("deviceBasebandVersion")) {
      deviceBasebandVersion = _json["deviceBasebandVersion"];
    }
    if (_json.containsKey("gpuShutdownTemperatures")) {
      gpuShutdownTemperatures = (_json["gpuShutdownTemperatures"] as core.List)
          .map<core.double>((value) => value.toDouble())
          .toList();
    }
    if (_json.containsKey("gpuThrottlingTemperatures")) {
      gpuThrottlingTemperatures =
          (_json["gpuThrottlingTemperatures"] as core.List)
              .map<core.double>((value) => value.toDouble())
              .toList();
    }
    if (_json.containsKey("hardware")) {
      hardware = _json["hardware"];
    }
    if (_json.containsKey("manufacturer")) {
      manufacturer = _json["manufacturer"];
    }
    if (_json.containsKey("model")) {
      model = _json["model"];
    }
    if (_json.containsKey("serialNumber")) {
      serialNumber = _json["serialNumber"];
    }
    if (_json.containsKey("skinShutdownTemperatures")) {
      skinShutdownTemperatures =
          (_json["skinShutdownTemperatures"] as core.List)
              .map<core.double>((value) => value.toDouble())
              .toList();
    }
    if (_json.containsKey("skinThrottlingTemperatures")) {
      skinThrottlingTemperatures =
          (_json["skinThrottlingTemperatures"] as core.List)
              .map<core.double>((value) => value.toDouble())
              .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (batteryShutdownTemperatures != null) {
      _json["batteryShutdownTemperatures"] = batteryShutdownTemperatures;
    }
    if (batteryThrottlingTemperatures != null) {
      _json["batteryThrottlingTemperatures"] = batteryThrottlingTemperatures;
    }
    if (brand != null) {
      _json["brand"] = brand;
    }
    if (cpuShutdownTemperatures != null) {
      _json["cpuShutdownTemperatures"] = cpuShutdownTemperatures;
    }
    if (cpuThrottlingTemperatures != null) {
      _json["cpuThrottlingTemperatures"] = cpuThrottlingTemperatures;
    }
    if (deviceBasebandVersion != null) {
      _json["deviceBasebandVersion"] = deviceBasebandVersion;
    }
    if (gpuShutdownTemperatures != null) {
      _json["gpuShutdownTemperatures"] = gpuShutdownTemperatures;
    }
    if (gpuThrottlingTemperatures != null) {
      _json["gpuThrottlingTemperatures"] = gpuThrottlingTemperatures;
    }
    if (hardware != null) {
      _json["hardware"] = hardware;
    }
    if (manufacturer != null) {
      _json["manufacturer"] = manufacturer;
    }
    if (model != null) {
      _json["model"] = model;
    }
    if (serialNumber != null) {
      _json["serialNumber"] = serialNumber;
    }
    if (skinShutdownTemperatures != null) {
      _json["skinShutdownTemperatures"] = skinShutdownTemperatures;
    }
    if (skinThrottlingTemperatures != null) {
      _json["skinThrottlingTemperatures"] = skinThrottlingTemperatures;
    }
    return _json;
  }
}

/// Hardware status. Temperatures may be compared to the temperature thresholds
/// available in hardwareInfo to determine hardware health.
class HardwareStatus {
  /// Current battery temperatures in Celsius for each battery on the device.
  core.List<core.double> batteryTemperatures;

  /// Current CPU temperatures in Celsius for each CPU on the device.
  core.List<core.double> cpuTemperatures;

  /// CPU usages in percentage for each core available on the device. Usage is 0
  /// for each unplugged core. Empty array implies that CPU usage is not
  /// supported in the system.
  core.List<core.double> cpuUsages;

  /// The time the measurements were taken.
  core.String createTime;

  /// Fan speeds in RPM for each fan on the device. Empty array means that there
  /// are no fans or fan speed is not supported on the system.
  core.List<core.double> fanSpeeds;

  /// Current GPU temperatures in Celsius for each GPU on the device.
  core.List<core.double> gpuTemperatures;

  /// Current device skin temperatures in Celsius.
  core.List<core.double> skinTemperatures;

  HardwareStatus();

  HardwareStatus.fromJson(core.Map _json) {
    if (_json.containsKey("batteryTemperatures")) {
      batteryTemperatures = (_json["batteryTemperatures"] as core.List)
          .map<core.double>((value) => value.toDouble())
          .toList();
    }
    if (_json.containsKey("cpuTemperatures")) {
      cpuTemperatures = (_json["cpuTemperatures"] as core.List)
          .map<core.double>((value) => value.toDouble())
          .toList();
    }
    if (_json.containsKey("cpuUsages")) {
      cpuUsages = (_json["cpuUsages"] as core.List)
          .map<core.double>((value) => value.toDouble())
          .toList();
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("fanSpeeds")) {
      fanSpeeds = (_json["fanSpeeds"] as core.List)
          .map<core.double>((value) => value.toDouble())
          .toList();
    }
    if (_json.containsKey("gpuTemperatures")) {
      gpuTemperatures = (_json["gpuTemperatures"] as core.List)
          .map<core.double>((value) => value.toDouble())
          .toList();
    }
    if (_json.containsKey("skinTemperatures")) {
      skinTemperatures = (_json["skinTemperatures"] as core.List)
          .map<core.double>((value) => value.toDouble())
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (batteryTemperatures != null) {
      _json["batteryTemperatures"] = batteryTemperatures;
    }
    if (cpuTemperatures != null) {
      _json["cpuTemperatures"] = cpuTemperatures;
    }
    if (cpuUsages != null) {
      _json["cpuUsages"] = cpuUsages;
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (fanSpeeds != null) {
      _json["fanSpeeds"] = fanSpeeds;
    }
    if (gpuTemperatures != null) {
      _json["gpuTemperatures"] = gpuTemperatures;
    }
    if (skinTemperatures != null) {
      _json["skinTemperatures"] = skinTemperatures;
    }
    return _json;
  }
}

/// Keyed app state reported by the app.
class KeyedAppState {
  /// The creation time of the app state on the device.
  core.String createTime;

  /// Optionally, a machine-readable value to be read by the EMM. For example,
  /// setting values that the admin can choose to query against in the EMM
  /// console (e.g. “notify me if the battery_warning data < 10”).
  core.String data;

  /// The key for the app state. Acts as a point of reference for what the app
  /// is providing state for. For example, when providing managed configuration
  /// feedback, this key could be the managed configuration key.
  core.String key;

  /// The time the app state was most recently updated.
  core.String lastUpdateTime;

  /// Optionally, a free-form message string to explain the app state. If the
  /// state was triggered by a particular value (e.g. a managed configuration
  /// value), it should be included in the message.
  core.String message;

  /// The severity of the app state.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unspecified severity level.
  /// - "INFO" : Information severity level.
  /// - "ERROR" : Error severity level. This should only be set for genuine
  /// error conditions that a management organization needs to take action to
  /// fix.
  core.String severity;

  KeyedAppState();

  KeyedAppState.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"];
    }
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("lastUpdateTime")) {
      lastUpdateTime = _json["lastUpdateTime"];
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
    if (_json.containsKey("severity")) {
      severity = _json["severity"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (data != null) {
      _json["data"] = data;
    }
    if (key != null) {
      _json["key"] = key;
    }
    if (lastUpdateTime != null) {
      _json["lastUpdateTime"] = lastUpdateTime;
    }
    if (message != null) {
      _json["message"] = message;
    }
    if (severity != null) {
      _json["severity"] = severity;
    }
    return _json;
  }
}

/// An action to launch an app.
class LaunchAppAction {
  /// Package name of app to be launched
  core.String packageName;

  LaunchAppAction();

  LaunchAppAction.fromJson(core.Map _json) {
    if (_json.containsKey("packageName")) {
      packageName = _json["packageName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (packageName != null) {
      _json["packageName"] = packageName;
    }
    return _json;
  }
}

/// Response to a request to list devices for a given enterprise.
class ListDevicesResponse {
  /// The list of devices.
  core.List<Device> devices;

  /// If there are more results, a token to retrieve next page of results.
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

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("operations")) {
      operations = (_json["operations"] as core.List)
          .map<Operation>((value) => new Operation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (operations != null) {
      _json["operations"] =
          operations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response to a request to list policies for a given enterprise.
class ListPoliciesResponse {
  /// If there are more results, a token to retrieve next page of results.
  core.String nextPageToken;

  /// The list of policies.
  core.List<Policy> policies;

  ListPoliciesResponse();

  ListPoliciesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("policies")) {
      policies = (_json["policies"] as core.List)
          .map<Policy>((value) => new Policy.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (policies != null) {
      _json["policies"] = policies.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response to a request to list web apps for a given enterprise.
class ListWebAppsResponse {
  /// If there are more results, a token to retrieve next page of results.
  core.String nextPageToken;

  /// The list of web apps.
  core.List<WebApp> webApps;

  ListWebAppsResponse();

  ListWebAppsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("webApps")) {
      webApps = (_json["webApps"] as core.List)
          .map<WebApp>((value) => new WebApp.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (webApps != null) {
      _json["webApps"] = webApps.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The managed configurations template for the app, saved from the managed
/// configurations iframe.
class ManagedConfigurationTemplate {
  /// Optional, a map containing <key, value> configuration variables defined
  /// for the configuration.
  core.Map<core.String, core.String> configurationVariables;

  /// The ID of the managed configurations template.
  core.String templateId;

  ManagedConfigurationTemplate();

  ManagedConfigurationTemplate.fromJson(core.Map _json) {
    if (_json.containsKey("configurationVariables")) {
      configurationVariables = (_json["configurationVariables"] as core.Map)
          .cast<core.String, core.String>();
    }
    if (_json.containsKey("templateId")) {
      templateId = _json["templateId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (configurationVariables != null) {
      _json["configurationVariables"] = configurationVariables;
    }
    if (templateId != null) {
      _json["templateId"] = templateId;
    }
    return _json;
  }
}

/// Managed property.
class ManagedProperty {
  /// The default value of the property. BUNDLE_ARRAY properties don't have a
  /// default value.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object defaultValue;

  /// A longer description of the property, providing more detail of what it
  /// affects. Localized.
  core.String description;

  /// For CHOICE or MULTISELECT properties, the list of possible entries.
  core.List<ManagedPropertyEntry> entries;

  /// The unique key that the app uses to identify the property, e.g.
  /// "com.google.android.gm.fieldname".
  core.String key;

  /// For BUNDLE_ARRAY properties, the list of nested properties. A BUNDLE_ARRAY
  /// property is at most two levels deep.
  core.List<ManagedProperty> nestedProperties;

  /// The name of the property. Localized.
  core.String title;

  /// The type of the property.
  /// Possible string values are:
  /// - "MANAGED_PROPERTY_TYPE_UNSPECIFIED" : Not used.
  /// - "BOOL" : A property of boolean type.
  /// - "STRING" : A property of string type.
  /// - "INTEGER" : A property of integer type.
  /// - "CHOICE" : A choice of one item from a set.
  /// - "MULTISELECT" : A choice of multiple items from a set.
  /// - "HIDDEN" : A hidden restriction of string type (the default value can be
  /// used to pass along information that can't be modified, such as a version
  /// code).
  /// - "BUNDLE_ARRAY" : An array of property bundles.
  core.String type;

  ManagedProperty();

  ManagedProperty.fromJson(core.Map _json) {
    if (_json.containsKey("defaultValue")) {
      defaultValue = _json["defaultValue"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("entries")) {
      entries = (_json["entries"] as core.List)
          .map<ManagedPropertyEntry>(
              (value) => new ManagedPropertyEntry.fromJson(value))
          .toList();
    }
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("nestedProperties")) {
      nestedProperties = (_json["nestedProperties"] as core.List)
          .map<ManagedProperty>((value) => new ManagedProperty.fromJson(value))
          .toList();
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (defaultValue != null) {
      _json["defaultValue"] = defaultValue;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    if (key != null) {
      _json["key"] = key;
    }
    if (nestedProperties != null) {
      _json["nestedProperties"] =
          nestedProperties.map((value) => (value).toJson()).toList();
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// An entry of a managed property.
class ManagedPropertyEntry {
  /// The human-readable name of the value. Localized.
  core.String name;

  /// The machine-readable value of the entry, which should be used in the
  /// configuration. Not localized.
  core.String value;

  ManagedPropertyEntry();

  ManagedPropertyEntry.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// An event related to memory and storage measurements.
class MemoryEvent {
  /// The number of free bytes in the medium, or for EXTERNAL_STORAGE_DETECTED,
  /// the total capacity in bytes of the storage medium.
  core.String byteCount;

  /// The creation time of the event.
  core.String createTime;

  /// Event type.
  /// Possible string values are:
  /// - "MEMORY_EVENT_TYPE_UNSPECIFIED" : Unspecified. No events have this type.
  /// - "RAM_MEASURED" : Free space in RAM was measured.
  /// - "INTERNAL_STORAGE_MEASURED" : Free space in internal storage was
  /// measured.
  /// - "EXTERNAL_STORAGE_DETECTED" : A new external storage medium was
  /// detected. The reported byte count is the total capacity of the storage
  /// medium.
  /// - "EXTERNAL_STORAGE_REMOVED" : An external storage medium was removed. The
  /// reported byte count is zero.
  /// - "EXTERNAL_STORAGE_MEASURED" : Free space in an external storage medium
  /// was measured.
  core.String eventType;

  MemoryEvent();

  MemoryEvent.fromJson(core.Map _json) {
    if (_json.containsKey("byteCount")) {
      byteCount = _json["byteCount"];
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("eventType")) {
      eventType = _json["eventType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (byteCount != null) {
      _json["byteCount"] = byteCount;
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (eventType != null) {
      _json["eventType"] = eventType;
    }
    return _json;
  }
}

/// Information about device memory and storage.
class MemoryInfo {
  /// Total internal storage on device in bytes.
  core.String totalInternalStorage;

  /// Total RAM on device in bytes.
  core.String totalRam;

  MemoryInfo();

  MemoryInfo.fromJson(core.Map _json) {
    if (_json.containsKey("totalInternalStorage")) {
      totalInternalStorage = _json["totalInternalStorage"];
    }
    if (_json.containsKey("totalRam")) {
      totalRam = _json["totalRam"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (totalInternalStorage != null) {
      _json["totalInternalStorage"] = totalInternalStorage;
    }
    if (totalRam != null) {
      _json["totalRam"] = totalRam;
    }
    return _json;
  }
}

/// Device network info.
class NetworkInfo {
  /// IMEI number of the GSM device. For example, A1000031212.
  core.String imei;

  /// MEID number of the CDMA device. For example, A00000292788E1.
  core.String meid;

  /// Alphabetic name of current registered operator. For example, Vodafone.
  core.String networkOperatorName;

  /// Wi-Fi MAC address of the device. For example, 7c:11:11:11:11:11.
  core.String wifiMacAddress;

  NetworkInfo();

  NetworkInfo.fromJson(core.Map _json) {
    if (_json.containsKey("imei")) {
      imei = _json["imei"];
    }
    if (_json.containsKey("meid")) {
      meid = _json["meid"];
    }
    if (_json.containsKey("networkOperatorName")) {
      networkOperatorName = _json["networkOperatorName"];
    }
    if (_json.containsKey("wifiMacAddress")) {
      wifiMacAddress = _json["wifiMacAddress"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (imei != null) {
      _json["imei"] = imei;
    }
    if (meid != null) {
      _json["meid"] = meid;
    }
    if (networkOperatorName != null) {
      _json["networkOperatorName"] = networkOperatorName;
    }
    if (wifiMacAddress != null) {
      _json["wifiMacAddress"] = wifiMacAddress;
    }
    return _json;
  }
}

/// Provides detail about non-compliance with a policy setting.
class NonComplianceDetail {
  /// If the policy setting could not be applied, the current value of the
  /// setting on the device.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object currentValue;

  /// For settings with nested fields, if a particular nested field is out of
  /// compliance, this specifies the full path to the offending field. The path
  /// is formatted in the same way the policy JSON field would be referenced in
  /// JavaScript, that is: 1) For object-typed fields, the field name is
  /// followed by a dot then by a  subfield name. 2) For array-typed fields, the
  /// field name is followed by the array index  enclosed in brackets. For
  /// example, to indicate a problem with the url field in the externalData
  /// field in the 3rd application, the path would be
  /// applications[2].externalData.url
  core.String fieldPath;

  /// If package_name is set and the non-compliance reason is APP_NOT_INSTALLED
  /// or APP_NOT_UPDATED, the detailed reason the app can't be installed or
  /// updated.
  /// Possible string values are:
  /// - "INSTALLATION_FAILURE_REASON_UNSPECIFIED" : This value is disallowed.
  /// - "INSTALLATION_FAILURE_REASON_UNKNOWN" : An unknown condition is
  /// preventing the app from being installed. Some potential reasons are that
  /// the device doesn't have enough storage, the device network connection is
  /// unreliable, or the installation is taking longer than expected. The
  /// installation will be retried automatically.
  /// - "IN_PROGRESS" : The installation is still in progress.
  /// - "NOT_FOUND" : The app was not found in Play.
  /// - "NOT_COMPATIBLE_WITH_DEVICE" : The app is incompatible with the device.
  /// - "NOT_APPROVED" : The app has not been approved by the admin.
  /// - "PERMISSIONS_NOT_ACCEPTED" : The app has new permissions that have not
  /// been accepted by the admin.
  /// - "NOT_AVAILABLE_IN_COUNTRY" : The app is not available in the user's
  /// country.
  /// - "NO_LICENSES_REMAINING" : There are no licenses available to assign to
  /// the user.
  /// - "NOT_ENROLLED" : The enterprise is no longer enrolled with managed Play
  /// or the admin has not accepted the latest managed Play terms of service.
  /// - "USER_INVALID" : The user is no longer valid. The user may have been
  /// deleted or disabled.
  core.String installationFailureReason;

  /// The reason the device is not in compliance with the setting.
  /// Possible string values are:
  /// - "NON_COMPLIANCE_REASON_UNSPECIFIED" : This value is disallowed.
  /// - "API_LEVEL" : The setting is not supported in the API level of the
  /// Android version running on the device.
  /// - "MANAGEMENT_MODE" : The management mode (profile owner, device owner,
  /// etc.) doesn't support the setting.
  /// - "USER_ACTION" : The user has not taken required action to comply with
  /// the setting.
  /// - "INVALID_VALUE" : The setting has an invalid value.
  /// - "APP_NOT_INSTALLED" : The app required to implement the policy is not
  /// installed.
  /// - "UNSUPPORTED" : The policy is not supported by the version of Android
  /// Device Policy on the device.
  /// - "APP_INSTALLED" : A blocked app is installed.
  /// - "PENDING" : The setting hasn't been applied at the time of the report,
  /// but is expected to be applied shortly.
  /// - "APP_INCOMPATIBLE" : The setting can't be applied to the app because the
  /// app doesn't support it, for example because its target SDK version is not
  /// high enough.
  /// - "APP_NOT_UPDATED" : The app is installed, but it hasn't been updated to
  /// the minimum version code specified by policy.
  core.String nonComplianceReason;

  /// The package name indicating which app is out of compliance, if applicable.
  core.String packageName;

  /// The name of the policy setting. This is the JSON field name of a top-level
  /// Policy  field.
  core.String settingName;

  NonComplianceDetail();

  NonComplianceDetail.fromJson(core.Map _json) {
    if (_json.containsKey("currentValue")) {
      currentValue = _json["currentValue"];
    }
    if (_json.containsKey("fieldPath")) {
      fieldPath = _json["fieldPath"];
    }
    if (_json.containsKey("installationFailureReason")) {
      installationFailureReason = _json["installationFailureReason"];
    }
    if (_json.containsKey("nonComplianceReason")) {
      nonComplianceReason = _json["nonComplianceReason"];
    }
    if (_json.containsKey("packageName")) {
      packageName = _json["packageName"];
    }
    if (_json.containsKey("settingName")) {
      settingName = _json["settingName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (currentValue != null) {
      _json["currentValue"] = currentValue;
    }
    if (fieldPath != null) {
      _json["fieldPath"] = fieldPath;
    }
    if (installationFailureReason != null) {
      _json["installationFailureReason"] = installationFailureReason;
    }
    if (nonComplianceReason != null) {
      _json["nonComplianceReason"] = nonComplianceReason;
    }
    if (packageName != null) {
      _json["packageName"] = packageName;
    }
    if (settingName != null) {
      _json["settingName"] = settingName;
    }
    return _json;
  }
}

/// A compliance rule condition which is satisfied if there exists any matching
/// NonComplianceDetail for the device. A NonComplianceDetail matches a
/// NonComplianceDetailCondition if all the fields which are set within the
/// NonComplianceDetailCondition match the corresponding NonComplianceDetail
/// fields.
class NonComplianceDetailCondition {
  /// The reason the device is not in compliance with the setting. If not set,
  /// then this condition matches any reason.
  /// Possible string values are:
  /// - "NON_COMPLIANCE_REASON_UNSPECIFIED" : This value is disallowed.
  /// - "API_LEVEL" : The setting is not supported in the API level of the
  /// Android version running on the device.
  /// - "MANAGEMENT_MODE" : The management mode (profile owner, device owner,
  /// etc.) doesn't support the setting.
  /// - "USER_ACTION" : The user has not taken required action to comply with
  /// the setting.
  /// - "INVALID_VALUE" : The setting has an invalid value.
  /// - "APP_NOT_INSTALLED" : The app required to implement the policy is not
  /// installed.
  /// - "UNSUPPORTED" : The policy is not supported by the version of Android
  /// Device Policy on the device.
  /// - "APP_INSTALLED" : A blocked app is installed.
  /// - "PENDING" : The setting hasn't been applied at the time of the report,
  /// but is expected to be applied shortly.
  /// - "APP_INCOMPATIBLE" : The setting can't be applied to the app because the
  /// app doesn't support it, for example because its target SDK version is not
  /// high enough.
  /// - "APP_NOT_UPDATED" : The app is installed, but it hasn't been updated to
  /// the minimum version code specified by policy.
  core.String nonComplianceReason;

  /// The package name of the app that's out of compliance. If not set, then
  /// this condition matches any package name.
  core.String packageName;

  /// The name of the policy setting. This is the JSON field name of a top-level
  /// Policy field. If not set, then this condition matches any setting name.
  core.String settingName;

  NonComplianceDetailCondition();

  NonComplianceDetailCondition.fromJson(core.Map _json) {
    if (_json.containsKey("nonComplianceReason")) {
      nonComplianceReason = _json["nonComplianceReason"];
    }
    if (_json.containsKey("packageName")) {
      packageName = _json["packageName"];
    }
    if (_json.containsKey("settingName")) {
      settingName = _json["settingName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nonComplianceReason != null) {
      _json["nonComplianceReason"] = nonComplianceReason;
    }
    if (packageName != null) {
      _json["packageName"] = packageName;
    }
    if (settingName != null) {
      _json["settingName"] = settingName;
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is false, it means the operation is still in progress. If
  /// true, the operation is completed, and either error or response is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation. It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata. Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it. If you use the default HTTP mapping, the name
  /// should be a resource name ending with operations/{unique_id}.
  core.String name;

  /// The normal response of the operation in case of success. If the original
  /// method returns no data on success, such as Delete, the response is
  /// google.protobuf.Empty. If the original method is standard
  /// Get/Create/Update, the response should be the resource. For other methods,
  /// the response should have the type XxxResponse, where Xxx is the original
  /// method name. For example, if the original method name is TakeSnapshot(),
  /// the inferred response type is TakeSnapshotResponse.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response =
          (_json["response"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (done != null) {
      _json["done"] = done;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (response != null) {
      _json["response"] = response;
    }
    return _json;
  }
}

/// A list of package names.
class PackageNameList {
  /// A list of package names.
  core.List<core.String> packageNames;

  PackageNameList();

  PackageNameList.fromJson(core.Map _json) {
    if (_json.containsKey("packageNames")) {
      packageNames = (_json["packageNames"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (packageNames != null) {
      _json["packageNames"] = packageNames;
    }
    return _json;
  }
}

/// Requirements for the password used to unlock a device.
class PasswordRequirements {
  /// Number of incorrect device-unlock passwords that can be entered before a
  /// device is wiped. A value of 0 means there is no restriction.
  core.int maximumFailedPasswordsForWipe;

  /// Password expiration timeout.
  core.String passwordExpirationTimeout;

  /// The length of the password history. After setting this field, the user
  /// won't be able to enter a new password that is the same as any password in
  /// the history. A value of 0 means there is no restriction.
  core.int passwordHistoryLength;

  /// The minimum allowed password length. A value of 0 means there is no
  /// restriction. Only enforced when password_quality is NUMERIC,
  /// NUMERIC_COMPLEX, ALPHABETIC, ALPHANUMERIC, or COMPLEX.
  core.int passwordMinimumLength;

  /// Minimum number of letters required in the password. Only enforced when
  /// password_quality is COMPLEX.
  core.int passwordMinimumLetters;

  /// Minimum number of lower case letters required in the password. Only
  /// enforced when password_quality is COMPLEX.
  core.int passwordMinimumLowerCase;

  /// Minimum number of non-letter characters (numerical digits or symbols)
  /// required in the password. Only enforced when password_quality is COMPLEX.
  core.int passwordMinimumNonLetter;

  /// Minimum number of numerical digits required in the password. Only enforced
  /// when password_quality is COMPLEX.
  core.int passwordMinimumNumeric;

  /// Minimum number of symbols required in the password. Only enforced when
  /// password_quality is COMPLEX.
  core.int passwordMinimumSymbols;

  /// Minimum number of upper case letters required in the password. Only
  /// enforced when password_quality is COMPLEX.
  core.int passwordMinimumUpperCase;

  /// The required password quality.
  /// Possible string values are:
  /// - "PASSWORD_QUALITY_UNSPECIFIED" : There are no password requirements.
  /// - "BIOMETRIC_WEAK" : The device must be secured with a low-security
  /// biometric recognition technology, at minimum. This includes technologies
  /// that can recognize the identity of an individual that are roughly
  /// equivalent to a 3-digit PIN (false detection is less than 1 in 1,000).
  /// - "SOMETHING" : A password is required, but there are no restrictions on
  /// what the password must contain.
  /// - "NUMERIC" : The password must contain numeric characters.
  /// - "NUMERIC_COMPLEX" : The password must contain numeric characters with no
  /// repeating (4444) or ordered (1234, 4321, 2468) sequences.
  /// - "ALPHABETIC" : The password must contain alphabetic (or symbol)
  /// characters.
  /// - "ALPHANUMERIC" : The password must contain both numeric and alphabetic
  /// (or symbol) characters.
  /// - "COMPLEX" : The password must contain at least a letter, a numerical
  /// digit and a special symbol. Other password constraints, for example,
  /// password_minimum_letters are enforced.
  core.String passwordQuality;

  /// The scope that the password requirement applies to.
  /// Possible string values are:
  /// - "SCOPE_UNSPECIFIED" : The scope is unspecified. The password
  /// requirements are applied to the work profile for work profile devices and
  /// the whole device for fully managed or dedicated devices.
  /// - "SCOPE_DEVICE" : The password requirements are only applied to the
  /// device.
  /// - "SCOPE_PROFILE" : The password requirements are only applied to the work
  /// profile.
  core.String passwordScope;

  PasswordRequirements();

  PasswordRequirements.fromJson(core.Map _json) {
    if (_json.containsKey("maximumFailedPasswordsForWipe")) {
      maximumFailedPasswordsForWipe = _json["maximumFailedPasswordsForWipe"];
    }
    if (_json.containsKey("passwordExpirationTimeout")) {
      passwordExpirationTimeout = _json["passwordExpirationTimeout"];
    }
    if (_json.containsKey("passwordHistoryLength")) {
      passwordHistoryLength = _json["passwordHistoryLength"];
    }
    if (_json.containsKey("passwordMinimumLength")) {
      passwordMinimumLength = _json["passwordMinimumLength"];
    }
    if (_json.containsKey("passwordMinimumLetters")) {
      passwordMinimumLetters = _json["passwordMinimumLetters"];
    }
    if (_json.containsKey("passwordMinimumLowerCase")) {
      passwordMinimumLowerCase = _json["passwordMinimumLowerCase"];
    }
    if (_json.containsKey("passwordMinimumNonLetter")) {
      passwordMinimumNonLetter = _json["passwordMinimumNonLetter"];
    }
    if (_json.containsKey("passwordMinimumNumeric")) {
      passwordMinimumNumeric = _json["passwordMinimumNumeric"];
    }
    if (_json.containsKey("passwordMinimumSymbols")) {
      passwordMinimumSymbols = _json["passwordMinimumSymbols"];
    }
    if (_json.containsKey("passwordMinimumUpperCase")) {
      passwordMinimumUpperCase = _json["passwordMinimumUpperCase"];
    }
    if (_json.containsKey("passwordQuality")) {
      passwordQuality = _json["passwordQuality"];
    }
    if (_json.containsKey("passwordScope")) {
      passwordScope = _json["passwordScope"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (maximumFailedPasswordsForWipe != null) {
      _json["maximumFailedPasswordsForWipe"] = maximumFailedPasswordsForWipe;
    }
    if (passwordExpirationTimeout != null) {
      _json["passwordExpirationTimeout"] = passwordExpirationTimeout;
    }
    if (passwordHistoryLength != null) {
      _json["passwordHistoryLength"] = passwordHistoryLength;
    }
    if (passwordMinimumLength != null) {
      _json["passwordMinimumLength"] = passwordMinimumLength;
    }
    if (passwordMinimumLetters != null) {
      _json["passwordMinimumLetters"] = passwordMinimumLetters;
    }
    if (passwordMinimumLowerCase != null) {
      _json["passwordMinimumLowerCase"] = passwordMinimumLowerCase;
    }
    if (passwordMinimumNonLetter != null) {
      _json["passwordMinimumNonLetter"] = passwordMinimumNonLetter;
    }
    if (passwordMinimumNumeric != null) {
      _json["passwordMinimumNumeric"] = passwordMinimumNumeric;
    }
    if (passwordMinimumSymbols != null) {
      _json["passwordMinimumSymbols"] = passwordMinimumSymbols;
    }
    if (passwordMinimumUpperCase != null) {
      _json["passwordMinimumUpperCase"] = passwordMinimumUpperCase;
    }
    if (passwordQuality != null) {
      _json["passwordQuality"] = passwordQuality;
    }
    if (passwordScope != null) {
      _json["passwordScope"] = passwordScope;
    }
    return _json;
  }
}

/// Configuration for an Android permission and its grant state.
class PermissionGrant {
  /// The Android permission or group, e.g. android.permission.READ_CALENDAR or
  /// android.permission_group.CALENDAR.
  core.String permission;

  /// The policy for granting the permission.
  /// Possible string values are:
  /// - "PERMISSION_POLICY_UNSPECIFIED" : Policy not specified. If no policy is
  /// specified for a permission at any level, then the PROMPT behavior is used
  /// by default.
  /// - "PROMPT" : Prompt the user to grant a permission.
  /// - "GRANT" : Automatically grant a permission.
  /// - "DENY" : Automatically deny a permission.
  core.String policy;

  PermissionGrant();

  PermissionGrant.fromJson(core.Map _json) {
    if (_json.containsKey("permission")) {
      permission = _json["permission"];
    }
    if (_json.containsKey("policy")) {
      policy = _json["policy"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permission != null) {
      _json["permission"] = permission;
    }
    if (policy != null) {
      _json["policy"] = policy;
    }
    return _json;
  }
}

/// A default activity for handling intents that match a particular intent
/// filter.
class PersistentPreferredActivity {
  /// The intent actions to match in the filter. If any actions are included in
  /// the filter, then an intent's action must be one of those values for it to
  /// match. If no actions are included, the intent action is ignored.
  core.List<core.String> actions;

  /// The intent categories to match in the filter. An intent includes the
  /// categories that it requires, all of which must be included in the filter
  /// in order to match. In other words, adding a category to the filter has no
  /// impact on matching unless that category is specified in the intent.
  core.List<core.String> categories;

  /// The activity that should be the default intent handler. This should be an
  /// Android component name, e.g. com.android.enterprise.app/.MainActivity.
  /// Alternatively, the value may be the package name of an app, which causes
  /// Android Device Policy to choose an appropriate activity from the app to
  /// handle the intent.
  core.String receiverActivity;

  PersistentPreferredActivity();

  PersistentPreferredActivity.fromJson(core.Map _json) {
    if (_json.containsKey("actions")) {
      actions = (_json["actions"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("categories")) {
      categories = (_json["categories"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("receiverActivity")) {
      receiverActivity = _json["receiverActivity"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (actions != null) {
      _json["actions"] = actions;
    }
    if (categories != null) {
      _json["categories"] = categories;
    }
    if (receiverActivity != null) {
      _json["receiverActivity"] = receiverActivity;
    }
    return _json;
  }
}

/// A policy resources represents a group settings that govern the behavior of a
/// managed device and the apps installed on it.
class Policy {
  /// Account types that can't be managed by the user.
  core.List<core.String> accountTypesWithManagementDisabled;

  /// Whether adding new users and profiles is disabled.
  core.bool addUserDisabled;

  /// Whether adjusting the master volume is disabled.
  core.bool adjustVolumeDisabled;

  /// Configuration for an always-on VPN connection. Use with
  /// vpn_config_disabled to prevent modification of this setting.
  AlwaysOnVpnPackage alwaysOnVpnPackage;

  /// The app tracks for Android Device Policy the device can access. The device
  /// receives the latest version among all accessible tracks. If no tracks are
  /// specified, then the device only uses the production track.
  core.List<core.String> androidDevicePolicyTracks;

  /// The app auto update policy, which controls when automatic app updates can
  /// be applied.
  /// Possible string values are:
  /// - "APP_AUTO_UPDATE_POLICY_UNSPECIFIED" : The auto-update policy is not
  /// set. Equivalent to CHOICE_TO_THE_USER.
  /// - "CHOICE_TO_THE_USER" : The user can control auto-updates.
  /// - "NEVER" : Apps are never auto-updated.
  /// - "WIFI_ONLY" : Apps are auto-updated over Wi-Fi only.
  /// - "ALWAYS" : Apps are auto-updated at any time. Data charges may apply.
  core.String appAutoUpdatePolicy;

  /// Policy applied to apps.
  core.List<ApplicationPolicy> applications;

  /// Whether auto time is required, which prevents the user from manually
  /// setting the date and time.
  core.bool autoTimeRequired;

  /// Whether applications other than the ones configured in applications are
  /// blocked from being installed. When set, applications that were installed
  /// under a previous policy but no longer appear in the policy are
  /// automatically uninstalled.
  core.bool blockApplicationsEnabled;

  /// Whether configuring bluetooth is disabled.
  core.bool bluetoothConfigDisabled;

  /// Whether bluetooth contact sharing is disabled.
  core.bool bluetoothContactSharingDisabled;

  /// Whether bluetooth is disabled. Prefer this setting over
  /// bluetooth_config_disabled because bluetooth_config_disabled can be
  /// bypassed by the user.
  core.bool bluetoothDisabled;

  /// Whether all cameras on the device are disabled.
  core.bool cameraDisabled;

  /// Whether configuring cell broadcast is disabled.
  core.bool cellBroadcastsConfigDisabled;

  /// Rules for automatically choosing a private key and certificate to
  /// authenticate the device to a server. The rules are ordered by increasing
  /// precedence, so if an outgoing request matches more than one rule, the last
  /// rule defines which private key to use.
  core.List<ChoosePrivateKeyRule> choosePrivateKeyRules;

  /// Rules declaring which mitigating actions to take when a device is not
  /// compliant with its policy. When the conditions for multiple rules are
  /// satisfied, all of the mitigating actions for the rules are taken. There is
  /// a maximum limit of 100 rules. Use policy enforcement rules instead.
  core.List<ComplianceRule> complianceRules;

  /// Whether creating windows besides app windows is disabled.
  core.bool createWindowsDisabled;

  /// Whether configuring user credentials is disabled.
  core.bool credentialsConfigDisabled;

  /// Whether roaming data services are disabled.
  core.bool dataRoamingDisabled;

  /// Whether the user is allowed to enable debugging features.
  core.bool debuggingFeaturesAllowed;

  /// The default permission policy for runtime permission requests.
  /// Possible string values are:
  /// - "PERMISSION_POLICY_UNSPECIFIED" : Policy not specified. If no policy is
  /// specified for a permission at any level, then the PROMPT behavior is used
  /// by default.
  /// - "PROMPT" : Prompt the user to grant a permission.
  /// - "GRANT" : Automatically grant a permission.
  /// - "DENY" : Automatically deny a permission.
  core.String defaultPermissionPolicy;

  /// The device owner information to be shown on the lock screen.
  UserFacingMessage deviceOwnerLockScreenInfo;

  /// Whether encryption is enabled
  /// Possible string values are:
  /// - "ENCRYPTION_POLICY_UNSPECIFIED" : This value is ignored, i.e. no
  /// encryption required
  /// - "ENABLED_WITHOUT_PASSWORD" : Encryption required but no password
  /// required to boot
  /// - "ENABLED_WITH_PASSWORD" : Encryption required with password required to
  /// boot
  core.String encryptionPolicy;

  /// Whether app verification is force-enabled.
  core.bool ensureVerifyAppsEnabled;

  /// Whether factory resetting from settings is disabled.
  core.bool factoryResetDisabled;

  /// Email addresses of device administrators for factory reset protection.
  /// When the device is factory reset, it will require one of these admins to
  /// log in with the Google account email and password to unlock the device. If
  /// no admins are specified, the device won't provide factory reset
  /// protection.
  core.List<core.String> frpAdminEmails;

  /// Whether the user is allowed to have fun. Controls whether the Easter egg
  /// game in Settings is disabled.
  core.bool funDisabled;

  /// Whether user installation of apps is disabled.
  core.bool installAppsDisabled;

  /// Whether the user is allowed to enable the "Unknown Sources" setting, which
  /// allows installation of apps from unknown sources.
  core.bool installUnknownSourcesAllowed;

  /// Whether the keyguard is disabled.
  core.bool keyguardDisabled;

  /// Disabled keyguard customizations, such as widgets.
  core.List<core.String> keyguardDisabledFeatures;

  /// Whether the kiosk custom launcher is enabled. This replaces the home
  /// screen with a launcher that locks down the device to the apps installed
  /// via the applications setting. The apps appear on a single page in
  /// alphabetical order. It is recommended to also use status_bar_disabled to
  /// block access to device settings.
  core.bool kioskCustomLauncherEnabled;

  /// The degree of location detection enabled. The user may change the value
  /// unless the user is otherwise blocked from accessing device settings.
  /// Possible string values are:
  /// - "LOCATION_MODE_UNSPECIFIED" : The current device value is not modified.
  /// - "HIGH_ACCURACY" : All location detection methods are enabled, including
  /// GPS, networks, and other sensors.
  /// - "SENSORS_ONLY" : Only GPS and other sensors are enabled.
  /// - "BATTERY_SAVING" : Only the network location provider is enabled.
  /// - "OFF" : Location detection is disabled.
  core.String locationMode;

  /// A message displayed to the user in the device administators settings
  /// screen.
  UserFacingMessage longSupportMessage;

  /// Maximum time in milliseconds for user activity until the device locks. A
  /// value of 0 means there is no restriction.
  core.String maximumTimeToLock;

  /// The minimum allowed Android API level.
  core.int minimumApiLevel;

  /// Whether configuring mobile networks is disabled.
  core.bool mobileNetworksConfigDisabled;

  /// Whether adding or removing accounts is disabled.
  core.bool modifyAccountsDisabled;

  /// Whether the user mounting physical external media is disabled.
  core.bool mountPhysicalMediaDisabled;

  /// The name of the policy in the form
  /// enterprises/{enterpriseId}/policies/{policyId}.
  core.String name;

  /// Whether the network escape hatch is enabled. If a network connection can't
  /// be made at boot time, the escape hatch prompts the user to temporarily
  /// connect to a network in order to refresh the device policy. After applying
  /// policy, the temporary network will be forgotten and the device will
  /// continue booting. This prevents being unable to connect to a network if
  /// there is no suitable network in the last policy and the device boots into
  /// an app in lock task mode, or the user is otherwise unable to reach device
  /// settings.
  core.bool networkEscapeHatchEnabled;

  /// Whether resetting network settings is disabled.
  core.bool networkResetDisabled;

  /// Network configuration for the device. See configure networks for more
  /// information.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> openNetworkConfiguration;

  /// Whether using NFC to beam data from apps is disabled.
  core.bool outgoingBeamDisabled;

  /// Whether outgoing calls are disabled.
  core.bool outgoingCallsDisabled;

  /// Password requirement policies. Different policies can be set for work
  /// profile or fully managed devices by setting the password_scope field in
  /// the policy.
  core.List<PasswordRequirements> passwordPolicies;

  /// Password requirements. DEPRECATED - Use password_policies
  PasswordRequirements passwordRequirements;

  /// Explicit permission or group grants or denials for all apps. These values
  /// override the default_permission_policy.
  core.List<PermissionGrant> permissionGrants;

  /// If present, only the input methods provided by packages in this list are
  /// permitted. If this field is present, but the list is empty, then only
  /// system input methods are permitted.
  PackageNameList permittedInputMethods;

  /// Default intent handler activities.
  core.List<PersistentPreferredActivity> persistentPreferredActivities;

  /// This mode controls which apps are available to the user in the Play Store
  /// and the behavior on the device when apps are removed from the policy.
  /// Possible string values are:
  /// - "PLAY_STORE_MODE_UNSPECIFIED" : Unspecified. Defaults to WHITELIST.
  /// - "WHITELIST" : Only apps that are in the policy are available and any app
  /// not in the policy will be automatically uninstalled from the device.
  /// - "BLACKLIST" : All apps are available and any app that should not be on
  /// the device should be explicitly marked as 'BLOCKED' in the applications
  /// policy.
  core.String playStoreMode;

  /// Rules that define the behavior when a particular policy can not be applied
  /// on device
  core.List<PolicyEnforcementRule> policyEnforcementRules;

  /// Allows showing UI on a device for a user to choose a private key alias if
  /// there are no matching rules in ChoosePrivateKeyRules. For devices below
  /// Android P, setting this may leave enterprise keys vulnerable.
  core.bool privateKeySelectionEnabled;

  /// The network-independent global HTTP proxy. Typically proxies should be
  /// configured per-network in open_network_configuration. However for unusual
  /// configurations like general internal filtering a global HTTP proxy may be
  /// useful. If the proxy is not accessible, network access may break. The
  /// global proxy is only a recommendation and some apps may ignore it.
  ProxyInfo recommendedGlobalProxy;

  /// Whether removing other users is disabled.
  core.bool removeUserDisabled;

  /// Whether rebooting the device into safe boot is disabled.
  core.bool safeBootDisabled;

  /// Whether screen capture is disabled.
  core.bool screenCaptureDisabled;

  /// Whether changing the user icon is disabled.
  core.bool setUserIconDisabled;

  /// Whether changing the wallpaper is disabled.
  core.bool setWallpaperDisabled;

  /// Actions to take during the setup process.
  core.List<SetupAction> setupActions;

  /// Whether location sharing is disabled.
  core.bool shareLocationDisabled;

  /// A message displayed to the user in the settings screen wherever
  /// functionality has been disabled by the admin.
  UserFacingMessage shortSupportMessage;

  /// Flag to skip hints on the first use. Enterprise admin can enable the
  /// system recommendation for apps to skip their user tutorial and other
  /// introductory hints on first start-up.
  core.bool skipFirstUseHintsEnabled;

  /// Whether sending and receiving SMS messages is disabled.
  core.bool smsDisabled;

  /// Whether the status bar is disabled. This disables notifications, quick
  /// settings, and other screen overlays that allow escape from full-screen
  /// mode.
  core.bool statusBarDisabled;

  /// Status reporting settings
  StatusReportingSettings statusReportingSettings;

  /// The battery plugged in modes for which the device stays on. When using
  /// this setting, it is recommended to clear maximum_time_to_lock so that the
  /// device doesn't lock itself while it stays on.
  core.List<core.String> stayOnPluggedModes;

  /// The system update policy, which controls how OS updates are applied. If
  /// the update type is WINDOWED, the update window will automatically apply to
  /// Play app updates as well.
  SystemUpdate systemUpdate;

  /// Whether configuring tethering and portable hotspots is disabled.
  core.bool tetheringConfigDisabled;

  /// Whether user uninstallation of applications is disabled.
  core.bool uninstallAppsDisabled;

  /// Whether the microphone is muted and adjusting microphone volume is
  /// disabled.
  core.bool unmuteMicrophoneDisabled;

  /// Whether transferring files over USB is disabled.
  core.bool usbFileTransferDisabled;

  /// Whether USB storage is enabled. Deprecated.
  core.bool usbMassStorageEnabled;

  /// The version of the policy. This is a read-only field. The version is
  /// incremented each time the policy is updated.
  core.String version;

  /// Whether configuring VPN is disabled.
  core.bool vpnConfigDisabled;

  /// Whether configuring Wi-Fi access points is disabled.
  core.bool wifiConfigDisabled;

  /// DEPRECATED - Use wifi_config_disabled.
  core.bool wifiConfigsLockdownEnabled;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey("accountTypesWithManagementDisabled")) {
      accountTypesWithManagementDisabled =
          (_json["accountTypesWithManagementDisabled"] as core.List)
              .cast<core.String>();
    }
    if (_json.containsKey("addUserDisabled")) {
      addUserDisabled = _json["addUserDisabled"];
    }
    if (_json.containsKey("adjustVolumeDisabled")) {
      adjustVolumeDisabled = _json["adjustVolumeDisabled"];
    }
    if (_json.containsKey("alwaysOnVpnPackage")) {
      alwaysOnVpnPackage =
          new AlwaysOnVpnPackage.fromJson(_json["alwaysOnVpnPackage"]);
    }
    if (_json.containsKey("androidDevicePolicyTracks")) {
      androidDevicePolicyTracks =
          (_json["androidDevicePolicyTracks"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("appAutoUpdatePolicy")) {
      appAutoUpdatePolicy = _json["appAutoUpdatePolicy"];
    }
    if (_json.containsKey("applications")) {
      applications = (_json["applications"] as core.List)
          .map<ApplicationPolicy>(
              (value) => new ApplicationPolicy.fromJson(value))
          .toList();
    }
    if (_json.containsKey("autoTimeRequired")) {
      autoTimeRequired = _json["autoTimeRequired"];
    }
    if (_json.containsKey("blockApplicationsEnabled")) {
      blockApplicationsEnabled = _json["blockApplicationsEnabled"];
    }
    if (_json.containsKey("bluetoothConfigDisabled")) {
      bluetoothConfigDisabled = _json["bluetoothConfigDisabled"];
    }
    if (_json.containsKey("bluetoothContactSharingDisabled")) {
      bluetoothContactSharingDisabled =
          _json["bluetoothContactSharingDisabled"];
    }
    if (_json.containsKey("bluetoothDisabled")) {
      bluetoothDisabled = _json["bluetoothDisabled"];
    }
    if (_json.containsKey("cameraDisabled")) {
      cameraDisabled = _json["cameraDisabled"];
    }
    if (_json.containsKey("cellBroadcastsConfigDisabled")) {
      cellBroadcastsConfigDisabled = _json["cellBroadcastsConfigDisabled"];
    }
    if (_json.containsKey("choosePrivateKeyRules")) {
      choosePrivateKeyRules = (_json["choosePrivateKeyRules"] as core.List)
          .map<ChoosePrivateKeyRule>(
              (value) => new ChoosePrivateKeyRule.fromJson(value))
          .toList();
    }
    if (_json.containsKey("complianceRules")) {
      complianceRules = (_json["complianceRules"] as core.List)
          .map<ComplianceRule>((value) => new ComplianceRule.fromJson(value))
          .toList();
    }
    if (_json.containsKey("createWindowsDisabled")) {
      createWindowsDisabled = _json["createWindowsDisabled"];
    }
    if (_json.containsKey("credentialsConfigDisabled")) {
      credentialsConfigDisabled = _json["credentialsConfigDisabled"];
    }
    if (_json.containsKey("dataRoamingDisabled")) {
      dataRoamingDisabled = _json["dataRoamingDisabled"];
    }
    if (_json.containsKey("debuggingFeaturesAllowed")) {
      debuggingFeaturesAllowed = _json["debuggingFeaturesAllowed"];
    }
    if (_json.containsKey("defaultPermissionPolicy")) {
      defaultPermissionPolicy = _json["defaultPermissionPolicy"];
    }
    if (_json.containsKey("deviceOwnerLockScreenInfo")) {
      deviceOwnerLockScreenInfo =
          new UserFacingMessage.fromJson(_json["deviceOwnerLockScreenInfo"]);
    }
    if (_json.containsKey("encryptionPolicy")) {
      encryptionPolicy = _json["encryptionPolicy"];
    }
    if (_json.containsKey("ensureVerifyAppsEnabled")) {
      ensureVerifyAppsEnabled = _json["ensureVerifyAppsEnabled"];
    }
    if (_json.containsKey("factoryResetDisabled")) {
      factoryResetDisabled = _json["factoryResetDisabled"];
    }
    if (_json.containsKey("frpAdminEmails")) {
      frpAdminEmails =
          (_json["frpAdminEmails"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("funDisabled")) {
      funDisabled = _json["funDisabled"];
    }
    if (_json.containsKey("installAppsDisabled")) {
      installAppsDisabled = _json["installAppsDisabled"];
    }
    if (_json.containsKey("installUnknownSourcesAllowed")) {
      installUnknownSourcesAllowed = _json["installUnknownSourcesAllowed"];
    }
    if (_json.containsKey("keyguardDisabled")) {
      keyguardDisabled = _json["keyguardDisabled"];
    }
    if (_json.containsKey("keyguardDisabledFeatures")) {
      keyguardDisabledFeatures =
          (_json["keyguardDisabledFeatures"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("kioskCustomLauncherEnabled")) {
      kioskCustomLauncherEnabled = _json["kioskCustomLauncherEnabled"];
    }
    if (_json.containsKey("locationMode")) {
      locationMode = _json["locationMode"];
    }
    if (_json.containsKey("longSupportMessage")) {
      longSupportMessage =
          new UserFacingMessage.fromJson(_json["longSupportMessage"]);
    }
    if (_json.containsKey("maximumTimeToLock")) {
      maximumTimeToLock = _json["maximumTimeToLock"];
    }
    if (_json.containsKey("minimumApiLevel")) {
      minimumApiLevel = _json["minimumApiLevel"];
    }
    if (_json.containsKey("mobileNetworksConfigDisabled")) {
      mobileNetworksConfigDisabled = _json["mobileNetworksConfigDisabled"];
    }
    if (_json.containsKey("modifyAccountsDisabled")) {
      modifyAccountsDisabled = _json["modifyAccountsDisabled"];
    }
    if (_json.containsKey("mountPhysicalMediaDisabled")) {
      mountPhysicalMediaDisabled = _json["mountPhysicalMediaDisabled"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("networkEscapeHatchEnabled")) {
      networkEscapeHatchEnabled = _json["networkEscapeHatchEnabled"];
    }
    if (_json.containsKey("networkResetDisabled")) {
      networkResetDisabled = _json["networkResetDisabled"];
    }
    if (_json.containsKey("openNetworkConfiguration")) {
      openNetworkConfiguration = (_json["openNetworkConfiguration"] as core.Map)
          .cast<core.String, core.Object>();
    }
    if (_json.containsKey("outgoingBeamDisabled")) {
      outgoingBeamDisabled = _json["outgoingBeamDisabled"];
    }
    if (_json.containsKey("outgoingCallsDisabled")) {
      outgoingCallsDisabled = _json["outgoingCallsDisabled"];
    }
    if (_json.containsKey("passwordPolicies")) {
      passwordPolicies = (_json["passwordPolicies"] as core.List)
          .map<PasswordRequirements>(
              (value) => new PasswordRequirements.fromJson(value))
          .toList();
    }
    if (_json.containsKey("passwordRequirements")) {
      passwordRequirements =
          new PasswordRequirements.fromJson(_json["passwordRequirements"]);
    }
    if (_json.containsKey("permissionGrants")) {
      permissionGrants = (_json["permissionGrants"] as core.List)
          .map<PermissionGrant>((value) => new PermissionGrant.fromJson(value))
          .toList();
    }
    if (_json.containsKey("permittedInputMethods")) {
      permittedInputMethods =
          new PackageNameList.fromJson(_json["permittedInputMethods"]);
    }
    if (_json.containsKey("persistentPreferredActivities")) {
      persistentPreferredActivities =
          (_json["persistentPreferredActivities"] as core.List)
              .map<PersistentPreferredActivity>(
                  (value) => new PersistentPreferredActivity.fromJson(value))
              .toList();
    }
    if (_json.containsKey("playStoreMode")) {
      playStoreMode = _json["playStoreMode"];
    }
    if (_json.containsKey("policyEnforcementRules")) {
      policyEnforcementRules = (_json["policyEnforcementRules"] as core.List)
          .map<PolicyEnforcementRule>(
              (value) => new PolicyEnforcementRule.fromJson(value))
          .toList();
    }
    if (_json.containsKey("privateKeySelectionEnabled")) {
      privateKeySelectionEnabled = _json["privateKeySelectionEnabled"];
    }
    if (_json.containsKey("recommendedGlobalProxy")) {
      recommendedGlobalProxy =
          new ProxyInfo.fromJson(_json["recommendedGlobalProxy"]);
    }
    if (_json.containsKey("removeUserDisabled")) {
      removeUserDisabled = _json["removeUserDisabled"];
    }
    if (_json.containsKey("safeBootDisabled")) {
      safeBootDisabled = _json["safeBootDisabled"];
    }
    if (_json.containsKey("screenCaptureDisabled")) {
      screenCaptureDisabled = _json["screenCaptureDisabled"];
    }
    if (_json.containsKey("setUserIconDisabled")) {
      setUserIconDisabled = _json["setUserIconDisabled"];
    }
    if (_json.containsKey("setWallpaperDisabled")) {
      setWallpaperDisabled = _json["setWallpaperDisabled"];
    }
    if (_json.containsKey("setupActions")) {
      setupActions = (_json["setupActions"] as core.List)
          .map<SetupAction>((value) => new SetupAction.fromJson(value))
          .toList();
    }
    if (_json.containsKey("shareLocationDisabled")) {
      shareLocationDisabled = _json["shareLocationDisabled"];
    }
    if (_json.containsKey("shortSupportMessage")) {
      shortSupportMessage =
          new UserFacingMessage.fromJson(_json["shortSupportMessage"]);
    }
    if (_json.containsKey("skipFirstUseHintsEnabled")) {
      skipFirstUseHintsEnabled = _json["skipFirstUseHintsEnabled"];
    }
    if (_json.containsKey("smsDisabled")) {
      smsDisabled = _json["smsDisabled"];
    }
    if (_json.containsKey("statusBarDisabled")) {
      statusBarDisabled = _json["statusBarDisabled"];
    }
    if (_json.containsKey("statusReportingSettings")) {
      statusReportingSettings = new StatusReportingSettings.fromJson(
          _json["statusReportingSettings"]);
    }
    if (_json.containsKey("stayOnPluggedModes")) {
      stayOnPluggedModes =
          (_json["stayOnPluggedModes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("systemUpdate")) {
      systemUpdate = new SystemUpdate.fromJson(_json["systemUpdate"]);
    }
    if (_json.containsKey("tetheringConfigDisabled")) {
      tetheringConfigDisabled = _json["tetheringConfigDisabled"];
    }
    if (_json.containsKey("uninstallAppsDisabled")) {
      uninstallAppsDisabled = _json["uninstallAppsDisabled"];
    }
    if (_json.containsKey("unmuteMicrophoneDisabled")) {
      unmuteMicrophoneDisabled = _json["unmuteMicrophoneDisabled"];
    }
    if (_json.containsKey("usbFileTransferDisabled")) {
      usbFileTransferDisabled = _json["usbFileTransferDisabled"];
    }
    if (_json.containsKey("usbMassStorageEnabled")) {
      usbMassStorageEnabled = _json["usbMassStorageEnabled"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
    if (_json.containsKey("vpnConfigDisabled")) {
      vpnConfigDisabled = _json["vpnConfigDisabled"];
    }
    if (_json.containsKey("wifiConfigDisabled")) {
      wifiConfigDisabled = _json["wifiConfigDisabled"];
    }
    if (_json.containsKey("wifiConfigsLockdownEnabled")) {
      wifiConfigsLockdownEnabled = _json["wifiConfigsLockdownEnabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountTypesWithManagementDisabled != null) {
      _json["accountTypesWithManagementDisabled"] =
          accountTypesWithManagementDisabled;
    }
    if (addUserDisabled != null) {
      _json["addUserDisabled"] = addUserDisabled;
    }
    if (adjustVolumeDisabled != null) {
      _json["adjustVolumeDisabled"] = adjustVolumeDisabled;
    }
    if (alwaysOnVpnPackage != null) {
      _json["alwaysOnVpnPackage"] = (alwaysOnVpnPackage).toJson();
    }
    if (androidDevicePolicyTracks != null) {
      _json["androidDevicePolicyTracks"] = androidDevicePolicyTracks;
    }
    if (appAutoUpdatePolicy != null) {
      _json["appAutoUpdatePolicy"] = appAutoUpdatePolicy;
    }
    if (applications != null) {
      _json["applications"] =
          applications.map((value) => (value).toJson()).toList();
    }
    if (autoTimeRequired != null) {
      _json["autoTimeRequired"] = autoTimeRequired;
    }
    if (blockApplicationsEnabled != null) {
      _json["blockApplicationsEnabled"] = blockApplicationsEnabled;
    }
    if (bluetoothConfigDisabled != null) {
      _json["bluetoothConfigDisabled"] = bluetoothConfigDisabled;
    }
    if (bluetoothContactSharingDisabled != null) {
      _json["bluetoothContactSharingDisabled"] =
          bluetoothContactSharingDisabled;
    }
    if (bluetoothDisabled != null) {
      _json["bluetoothDisabled"] = bluetoothDisabled;
    }
    if (cameraDisabled != null) {
      _json["cameraDisabled"] = cameraDisabled;
    }
    if (cellBroadcastsConfigDisabled != null) {
      _json["cellBroadcastsConfigDisabled"] = cellBroadcastsConfigDisabled;
    }
    if (choosePrivateKeyRules != null) {
      _json["choosePrivateKeyRules"] =
          choosePrivateKeyRules.map((value) => (value).toJson()).toList();
    }
    if (complianceRules != null) {
      _json["complianceRules"] =
          complianceRules.map((value) => (value).toJson()).toList();
    }
    if (createWindowsDisabled != null) {
      _json["createWindowsDisabled"] = createWindowsDisabled;
    }
    if (credentialsConfigDisabled != null) {
      _json["credentialsConfigDisabled"] = credentialsConfigDisabled;
    }
    if (dataRoamingDisabled != null) {
      _json["dataRoamingDisabled"] = dataRoamingDisabled;
    }
    if (debuggingFeaturesAllowed != null) {
      _json["debuggingFeaturesAllowed"] = debuggingFeaturesAllowed;
    }
    if (defaultPermissionPolicy != null) {
      _json["defaultPermissionPolicy"] = defaultPermissionPolicy;
    }
    if (deviceOwnerLockScreenInfo != null) {
      _json["deviceOwnerLockScreenInfo"] = (deviceOwnerLockScreenInfo).toJson();
    }
    if (encryptionPolicy != null) {
      _json["encryptionPolicy"] = encryptionPolicy;
    }
    if (ensureVerifyAppsEnabled != null) {
      _json["ensureVerifyAppsEnabled"] = ensureVerifyAppsEnabled;
    }
    if (factoryResetDisabled != null) {
      _json["factoryResetDisabled"] = factoryResetDisabled;
    }
    if (frpAdminEmails != null) {
      _json["frpAdminEmails"] = frpAdminEmails;
    }
    if (funDisabled != null) {
      _json["funDisabled"] = funDisabled;
    }
    if (installAppsDisabled != null) {
      _json["installAppsDisabled"] = installAppsDisabled;
    }
    if (installUnknownSourcesAllowed != null) {
      _json["installUnknownSourcesAllowed"] = installUnknownSourcesAllowed;
    }
    if (keyguardDisabled != null) {
      _json["keyguardDisabled"] = keyguardDisabled;
    }
    if (keyguardDisabledFeatures != null) {
      _json["keyguardDisabledFeatures"] = keyguardDisabledFeatures;
    }
    if (kioskCustomLauncherEnabled != null) {
      _json["kioskCustomLauncherEnabled"] = kioskCustomLauncherEnabled;
    }
    if (locationMode != null) {
      _json["locationMode"] = locationMode;
    }
    if (longSupportMessage != null) {
      _json["longSupportMessage"] = (longSupportMessage).toJson();
    }
    if (maximumTimeToLock != null) {
      _json["maximumTimeToLock"] = maximumTimeToLock;
    }
    if (minimumApiLevel != null) {
      _json["minimumApiLevel"] = minimumApiLevel;
    }
    if (mobileNetworksConfigDisabled != null) {
      _json["mobileNetworksConfigDisabled"] = mobileNetworksConfigDisabled;
    }
    if (modifyAccountsDisabled != null) {
      _json["modifyAccountsDisabled"] = modifyAccountsDisabled;
    }
    if (mountPhysicalMediaDisabled != null) {
      _json["mountPhysicalMediaDisabled"] = mountPhysicalMediaDisabled;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (networkEscapeHatchEnabled != null) {
      _json["networkEscapeHatchEnabled"] = networkEscapeHatchEnabled;
    }
    if (networkResetDisabled != null) {
      _json["networkResetDisabled"] = networkResetDisabled;
    }
    if (openNetworkConfiguration != null) {
      _json["openNetworkConfiguration"] = openNetworkConfiguration;
    }
    if (outgoingBeamDisabled != null) {
      _json["outgoingBeamDisabled"] = outgoingBeamDisabled;
    }
    if (outgoingCallsDisabled != null) {
      _json["outgoingCallsDisabled"] = outgoingCallsDisabled;
    }
    if (passwordPolicies != null) {
      _json["passwordPolicies"] =
          passwordPolicies.map((value) => (value).toJson()).toList();
    }
    if (passwordRequirements != null) {
      _json["passwordRequirements"] = (passwordRequirements).toJson();
    }
    if (permissionGrants != null) {
      _json["permissionGrants"] =
          permissionGrants.map((value) => (value).toJson()).toList();
    }
    if (permittedInputMethods != null) {
      _json["permittedInputMethods"] = (permittedInputMethods).toJson();
    }
    if (persistentPreferredActivities != null) {
      _json["persistentPreferredActivities"] = persistentPreferredActivities
          .map((value) => (value).toJson())
          .toList();
    }
    if (playStoreMode != null) {
      _json["playStoreMode"] = playStoreMode;
    }
    if (policyEnforcementRules != null) {
      _json["policyEnforcementRules"] =
          policyEnforcementRules.map((value) => (value).toJson()).toList();
    }
    if (privateKeySelectionEnabled != null) {
      _json["privateKeySelectionEnabled"] = privateKeySelectionEnabled;
    }
    if (recommendedGlobalProxy != null) {
      _json["recommendedGlobalProxy"] = (recommendedGlobalProxy).toJson();
    }
    if (removeUserDisabled != null) {
      _json["removeUserDisabled"] = removeUserDisabled;
    }
    if (safeBootDisabled != null) {
      _json["safeBootDisabled"] = safeBootDisabled;
    }
    if (screenCaptureDisabled != null) {
      _json["screenCaptureDisabled"] = screenCaptureDisabled;
    }
    if (setUserIconDisabled != null) {
      _json["setUserIconDisabled"] = setUserIconDisabled;
    }
    if (setWallpaperDisabled != null) {
      _json["setWallpaperDisabled"] = setWallpaperDisabled;
    }
    if (setupActions != null) {
      _json["setupActions"] =
          setupActions.map((value) => (value).toJson()).toList();
    }
    if (shareLocationDisabled != null) {
      _json["shareLocationDisabled"] = shareLocationDisabled;
    }
    if (shortSupportMessage != null) {
      _json["shortSupportMessage"] = (shortSupportMessage).toJson();
    }
    if (skipFirstUseHintsEnabled != null) {
      _json["skipFirstUseHintsEnabled"] = skipFirstUseHintsEnabled;
    }
    if (smsDisabled != null) {
      _json["smsDisabled"] = smsDisabled;
    }
    if (statusBarDisabled != null) {
      _json["statusBarDisabled"] = statusBarDisabled;
    }
    if (statusReportingSettings != null) {
      _json["statusReportingSettings"] = (statusReportingSettings).toJson();
    }
    if (stayOnPluggedModes != null) {
      _json["stayOnPluggedModes"] = stayOnPluggedModes;
    }
    if (systemUpdate != null) {
      _json["systemUpdate"] = (systemUpdate).toJson();
    }
    if (tetheringConfigDisabled != null) {
      _json["tetheringConfigDisabled"] = tetheringConfigDisabled;
    }
    if (uninstallAppsDisabled != null) {
      _json["uninstallAppsDisabled"] = uninstallAppsDisabled;
    }
    if (unmuteMicrophoneDisabled != null) {
      _json["unmuteMicrophoneDisabled"] = unmuteMicrophoneDisabled;
    }
    if (usbFileTransferDisabled != null) {
      _json["usbFileTransferDisabled"] = usbFileTransferDisabled;
    }
    if (usbMassStorageEnabled != null) {
      _json["usbMassStorageEnabled"] = usbMassStorageEnabled;
    }
    if (version != null) {
      _json["version"] = version;
    }
    if (vpnConfigDisabled != null) {
      _json["vpnConfigDisabled"] = vpnConfigDisabled;
    }
    if (wifiConfigDisabled != null) {
      _json["wifiConfigDisabled"] = wifiConfigDisabled;
    }
    if (wifiConfigsLockdownEnabled != null) {
      _json["wifiConfigsLockdownEnabled"] = wifiConfigsLockdownEnabled;
    }
    return _json;
  }
}

/// A rule that defines the actions to take if a device or work profile is not
/// compliant with the policy specified in settingName.
class PolicyEnforcementRule {
  /// An action to block access to apps and data on a fully managed device or in
  /// a work profile. This action also triggers a user-facing notification with
  /// information (where possible) on how to correct the compliance issue. Note:
  /// wipeAction must also be specified.
  BlockAction blockAction;

  /// The top-level policy to enforce. For example, applications or
  /// passwordPolicies.
  core.String settingName;

  /// An action to reset a fully managed device or delete a work profile. Note:
  /// blockAction must also be specified.
  WipeAction wipeAction;

  PolicyEnforcementRule();

  PolicyEnforcementRule.fromJson(core.Map _json) {
    if (_json.containsKey("blockAction")) {
      blockAction = new BlockAction.fromJson(_json["blockAction"]);
    }
    if (_json.containsKey("settingName")) {
      settingName = _json["settingName"];
    }
    if (_json.containsKey("wipeAction")) {
      wipeAction = new WipeAction.fromJson(_json["wipeAction"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (blockAction != null) {
      _json["blockAction"] = (blockAction).toJson();
    }
    if (settingName != null) {
      _json["settingName"] = settingName;
    }
    if (wipeAction != null) {
      _json["wipeAction"] = (wipeAction).toJson();
    }
    return _json;
  }
}

/// A power management event.
class PowerManagementEvent {
  /// For BATTERY_LEVEL_COLLECTED events, the battery level as a percentage.
  core.double batteryLevel;

  /// The creation time of the event.
  core.String createTime;

  /// Event type.
  /// Possible string values are:
  /// - "POWER_MANAGEMENT_EVENT_TYPE_UNSPECIFIED" : Unspecified. No events have
  /// this type.
  /// - "BATTERY_LEVEL_COLLECTED" : Battery level was measured.
  /// - "POWER_CONNECTED" : The device started charging.
  /// - "POWER_DISCONNECTED" : The device stopped charging.
  /// - "BATTERY_LOW" : The device entered low-power mode.
  /// - "BATTERY_OKAY" : The device exited low-power mode.
  /// - "BOOT_COMPLETED" : The device booted.
  /// - "SHUTDOWN" : The device shut down.
  core.String eventType;

  PowerManagementEvent();

  PowerManagementEvent.fromJson(core.Map _json) {
    if (_json.containsKey("batteryLevel")) {
      batteryLevel = _json["batteryLevel"].toDouble();
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("eventType")) {
      eventType = _json["eventType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (batteryLevel != null) {
      _json["batteryLevel"] = batteryLevel;
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (eventType != null) {
      _json["eventType"] = eventType;
    }
    return _json;
  }
}

/// Configuration info for an HTTP proxy. For a direct proxy, set the host,
/// port, and excluded_hosts fields. For a PAC script proxy, set the pac_uri
/// field.
class ProxyInfo {
  /// For a direct proxy, the hosts for which the proxy is bypassed. The host
  /// names may contain wildcards such as *.example.com.
  core.List<core.String> excludedHosts;

  /// The host of the direct proxy.
  core.String host;

  /// The URI of the PAC script used to configure the proxy.
  core.String pacUri;

  /// The port of the direct proxy.
  core.int port;

  ProxyInfo();

  ProxyInfo.fromJson(core.Map _json) {
    if (_json.containsKey("excludedHosts")) {
      excludedHosts = (_json["excludedHosts"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("host")) {
      host = _json["host"];
    }
    if (_json.containsKey("pacUri")) {
      pacUri = _json["pacUri"];
    }
    if (_json.containsKey("port")) {
      port = _json["port"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (excludedHosts != null) {
      _json["excludedHosts"] = excludedHosts;
    }
    if (host != null) {
      _json["host"] = host;
    }
    if (pacUri != null) {
      _json["pacUri"] = pacUri;
    }
    if (port != null) {
      _json["port"] = port;
    }
    return _json;
  }
}

/// An action executed during setup.
class SetupAction {
  /// Description of this action.
  UserFacingMessage description;

  /// An action to launch an app.
  LaunchAppAction launchApp;

  /// Title of this action.
  UserFacingMessage title;

  SetupAction();

  SetupAction.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = new UserFacingMessage.fromJson(_json["description"]);
    }
    if (_json.containsKey("launchApp")) {
      launchApp = new LaunchAppAction.fromJson(_json["launchApp"]);
    }
    if (_json.containsKey("title")) {
      title = new UserFacingMessage.fromJson(_json["title"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = (description).toJson();
    }
    if (launchApp != null) {
      _json["launchApp"] = (launchApp).toJson();
    }
    if (title != null) {
      _json["title"] = (title).toJson();
    }
    return _json;
  }
}

/// A resource containing sign in details for an enterprise.
class SigninDetail {
  /// A JSON string whose UTF-8 representation can be used to generate a QR code
  /// to enroll a device with this enrollment token. To enroll a device using
  /// NFC, the NFC record must contain a serialized java.util.Properties
  /// representation of the properties in the JSON. This is a read-only field
  /// generated by the server.
  core.String qrCode;

  /// An enterprise wide enrollment token used to trigger custom sign-in flow.
  /// This is a read-only field generated by the server.
  core.String signinEnrollmentToken;

  /// Sign-in URL for authentication when device is provisioned with a sign-in
  /// enrollment token. The sign-in endpoint should finish authentication flow
  /// with a URL in the form of
  /// https://enterprise.google.com/android/enroll?et=<token> for a successful
  /// login, or https://enterprise.google.com/android/enroll/invalid for a
  /// failed login.
  core.String signinUrl;

  SigninDetail();

  SigninDetail.fromJson(core.Map _json) {
    if (_json.containsKey("qrCode")) {
      qrCode = _json["qrCode"];
    }
    if (_json.containsKey("signinEnrollmentToken")) {
      signinEnrollmentToken = _json["signinEnrollmentToken"];
    }
    if (_json.containsKey("signinUrl")) {
      signinUrl = _json["signinUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (qrCode != null) {
      _json["qrCode"] = qrCode;
    }
    if (signinEnrollmentToken != null) {
      _json["signinEnrollmentToken"] = signinEnrollmentToken;
    }
    if (signinUrl != null) {
      _json["signinUrl"] = signinUrl;
    }
    return _json;
  }
}

/// An enterprise signup URL.
class SignupUrl {
  /// The name of the resource. Use this value in the signupUrl field when
  /// calling enterprises.create to complete the enterprise signup flow.
  core.String name;

  /// A URL where an enterprise admin can register their enterprise. The page
  /// can't be rendered in an iframe.
  core.String url;

  SignupUrl();

  SignupUrl.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// Information about device software.
class SoftwareInfo {
  /// Android build ID string meant for displaying to the user. For example,
  /// shamu-userdebug 6.0.1 MOB30I 2756745 dev-keys.
  core.String androidBuildNumber;

  /// Build time.
  core.String androidBuildTime;

  /// The Android Device Policy app version code.
  core.int androidDevicePolicyVersionCode;

  /// The Android Device Policy app version as displayed to the user.
  core.String androidDevicePolicyVersionName;

  /// The user-visible Android version string. For example, 6.0.1.
  core.String androidVersion;

  /// The system bootloader version number, e.g. 0.6.7.
  core.String bootloaderVersion;

  /// SHA-256 hash of android.content.pm.Signature
  /// (https://developer.android.com/reference/android/content/pm/Signature.html)
  /// associated with the system package, which can be used to verify that the
  /// system build hasn't been modified.
  core.String deviceBuildSignature;

  /// Kernel version, for example, 2.6.32.9-g103d848.
  core.String deviceKernelVersion;

  /// An IETF BCP 47 language code for the primary locale on the device.
  core.String primaryLanguageCode;

  /// Security patch level, e.g. 2016-05-01.
  core.String securityPatchLevel;

  SoftwareInfo();

  SoftwareInfo.fromJson(core.Map _json) {
    if (_json.containsKey("androidBuildNumber")) {
      androidBuildNumber = _json["androidBuildNumber"];
    }
    if (_json.containsKey("androidBuildTime")) {
      androidBuildTime = _json["androidBuildTime"];
    }
    if (_json.containsKey("androidDevicePolicyVersionCode")) {
      androidDevicePolicyVersionCode = _json["androidDevicePolicyVersionCode"];
    }
    if (_json.containsKey("androidDevicePolicyVersionName")) {
      androidDevicePolicyVersionName = _json["androidDevicePolicyVersionName"];
    }
    if (_json.containsKey("androidVersion")) {
      androidVersion = _json["androidVersion"];
    }
    if (_json.containsKey("bootloaderVersion")) {
      bootloaderVersion = _json["bootloaderVersion"];
    }
    if (_json.containsKey("deviceBuildSignature")) {
      deviceBuildSignature = _json["deviceBuildSignature"];
    }
    if (_json.containsKey("deviceKernelVersion")) {
      deviceKernelVersion = _json["deviceKernelVersion"];
    }
    if (_json.containsKey("primaryLanguageCode")) {
      primaryLanguageCode = _json["primaryLanguageCode"];
    }
    if (_json.containsKey("securityPatchLevel")) {
      securityPatchLevel = _json["securityPatchLevel"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (androidBuildNumber != null) {
      _json["androidBuildNumber"] = androidBuildNumber;
    }
    if (androidBuildTime != null) {
      _json["androidBuildTime"] = androidBuildTime;
    }
    if (androidDevicePolicyVersionCode != null) {
      _json["androidDevicePolicyVersionCode"] = androidDevicePolicyVersionCode;
    }
    if (androidDevicePolicyVersionName != null) {
      _json["androidDevicePolicyVersionName"] = androidDevicePolicyVersionName;
    }
    if (androidVersion != null) {
      _json["androidVersion"] = androidVersion;
    }
    if (bootloaderVersion != null) {
      _json["bootloaderVersion"] = bootloaderVersion;
    }
    if (deviceBuildSignature != null) {
      _json["deviceBuildSignature"] = deviceBuildSignature;
    }
    if (deviceKernelVersion != null) {
      _json["deviceKernelVersion"] = deviceKernelVersion;
    }
    if (primaryLanguageCode != null) {
      _json["primaryLanguageCode"] = primaryLanguageCode;
    }
    if (securityPatchLevel != null) {
      _json["securityPatchLevel"] = securityPatchLevel;
    }
    return _json;
  }
}

/// The Status type defines a logical error model that is suitable for different
/// programming environments, including REST APIs and RPC APIs. It is used by
/// gRPC (https://github.com/grpc). Each Status message contains three pieces of
/// data: error code, error message, and error details.You can find out more
/// about this error model and how to work with it in the API Design Guide
/// (https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details. There is a common set of
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

/// Settings controlling the behavior of status reports.
class StatusReportingSettings {
  /// Application reporting settings. Only applicable if
  /// application_reports_enabled is true.
  ApplicationReportingSettings applicationReportingSettings;

  /// Whether app reports are enabled.
  core.bool applicationReportsEnabled;

  /// Whether device settings reporting is enabled.
  core.bool deviceSettingsEnabled;

  /// Whether displays reporting is enabled.
  core.bool displayInfoEnabled;

  /// Whether hardware status reporting is enabled.
  core.bool hardwareStatusEnabled;

  /// Whether memory reporting is enabled.
  core.bool memoryInfoEnabled;

  /// Whether network info reporting is enabled.
  core.bool networkInfoEnabled;

  /// Whether power management event reporting is enabled.
  core.bool powerManagementEventsEnabled;

  /// Whether software info reporting is enabled.
  core.bool softwareInfoEnabled;

  StatusReportingSettings();

  StatusReportingSettings.fromJson(core.Map _json) {
    if (_json.containsKey("applicationReportingSettings")) {
      applicationReportingSettings = new ApplicationReportingSettings.fromJson(
          _json["applicationReportingSettings"]);
    }
    if (_json.containsKey("applicationReportsEnabled")) {
      applicationReportsEnabled = _json["applicationReportsEnabled"];
    }
    if (_json.containsKey("deviceSettingsEnabled")) {
      deviceSettingsEnabled = _json["deviceSettingsEnabled"];
    }
    if (_json.containsKey("displayInfoEnabled")) {
      displayInfoEnabled = _json["displayInfoEnabled"];
    }
    if (_json.containsKey("hardwareStatusEnabled")) {
      hardwareStatusEnabled = _json["hardwareStatusEnabled"];
    }
    if (_json.containsKey("memoryInfoEnabled")) {
      memoryInfoEnabled = _json["memoryInfoEnabled"];
    }
    if (_json.containsKey("networkInfoEnabled")) {
      networkInfoEnabled = _json["networkInfoEnabled"];
    }
    if (_json.containsKey("powerManagementEventsEnabled")) {
      powerManagementEventsEnabled = _json["powerManagementEventsEnabled"];
    }
    if (_json.containsKey("softwareInfoEnabled")) {
      softwareInfoEnabled = _json["softwareInfoEnabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (applicationReportingSettings != null) {
      _json["applicationReportingSettings"] =
          (applicationReportingSettings).toJson();
    }
    if (applicationReportsEnabled != null) {
      _json["applicationReportsEnabled"] = applicationReportsEnabled;
    }
    if (deviceSettingsEnabled != null) {
      _json["deviceSettingsEnabled"] = deviceSettingsEnabled;
    }
    if (displayInfoEnabled != null) {
      _json["displayInfoEnabled"] = displayInfoEnabled;
    }
    if (hardwareStatusEnabled != null) {
      _json["hardwareStatusEnabled"] = hardwareStatusEnabled;
    }
    if (memoryInfoEnabled != null) {
      _json["memoryInfoEnabled"] = memoryInfoEnabled;
    }
    if (networkInfoEnabled != null) {
      _json["networkInfoEnabled"] = networkInfoEnabled;
    }
    if (powerManagementEventsEnabled != null) {
      _json["powerManagementEventsEnabled"] = powerManagementEventsEnabled;
    }
    if (softwareInfoEnabled != null) {
      _json["softwareInfoEnabled"] = softwareInfoEnabled;
    }
    return _json;
  }
}

/// Configuration for managing system updates
class SystemUpdate {
  /// If the type is WINDOWED, the end of the maintenance window, measured as
  /// the number of minutes after midnight in device's local time. This value
  /// must be between 0 and 1439, inclusive. If this value is less than
  /// start_minutes, then the maintenance window spans midnight. If the
  /// maintenance window specified is smaller than 30 minutes, the actual window
  /// is extended to 30 minutes beyond the start time.
  core.int endMinutes;

  /// If the type is WINDOWED, the start of the maintenance window, measured as
  /// the number of minutes after midnight in the device's local time. This
  /// value must be between 0 and 1439, inclusive.
  core.int startMinutes;

  /// The type of system update to configure.
  /// Possible string values are:
  /// - "SYSTEM_UPDATE_TYPE_UNSPECIFIED" : Follow the default update behavior
  /// for the device, which typically requires the user to accept system
  /// updates.
  /// - "AUTOMATIC" : Install automatically as soon as an update is available.
  /// - "WINDOWED" : Install automatically within a daily maintenance window.
  /// This also configures Play apps to be updated within the window. This is
  /// strongly recommended for kiosk devices because this is the only way apps
  /// persistently pinned to the foreground can be updated by Play.
  /// - "POSTPONE" : Postpone automatic install up to a maximum of 30 days.
  core.String type;

  SystemUpdate();

  SystemUpdate.fromJson(core.Map _json) {
    if (_json.containsKey("endMinutes")) {
      endMinutes = _json["endMinutes"];
    }
    if (_json.containsKey("startMinutes")) {
      startMinutes = _json["startMinutes"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endMinutes != null) {
      _json["endMinutes"] = endMinutes;
    }
    if (startMinutes != null) {
      _json["startMinutes"] = startMinutes;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// A terms and conditions page to be accepted during provisioning.
class TermsAndConditions {
  /// A well-formatted HTML string. It will be parsed on the client with
  /// android.text.Html#fromHtml.
  UserFacingMessage content;

  /// A short header which appears above the HTML content.
  UserFacingMessage header;

  TermsAndConditions();

  TermsAndConditions.fromJson(core.Map _json) {
    if (_json.containsKey("content")) {
      content = new UserFacingMessage.fromJson(_json["content"]);
    }
    if (_json.containsKey("header")) {
      header = new UserFacingMessage.fromJson(_json["header"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (content != null) {
      _json["content"] = (content).toJson();
    }
    if (header != null) {
      _json["header"] = (header).toJson();
    }
    return _json;
  }
}

/// A user belonging to an enterprise.
class User {
  /// A unique identifier you create for this user, such as user342 or
  /// asset#44418. This field must be set when the user is created and can't be
  /// updated. This field must not contain personally identifiable information
  /// (PII). This identifier must be 1024 characters or less; otherwise, the
  /// update policy request will fail.
  core.String accountIdentifier;

  User();

  User.fromJson(core.Map _json) {
    if (_json.containsKey("accountIdentifier")) {
      accountIdentifier = _json["accountIdentifier"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountIdentifier != null) {
      _json["accountIdentifier"] = accountIdentifier;
    }
    return _json;
  }
}

/// Provides a user-facing message with locale info. The maximum message length
/// is 4096 characters.
class UserFacingMessage {
  /// The default message displayed if no localized message is specified or the
  /// user's locale doesn't match with any of the localized messages. A default
  /// message must be provided if any localized messages are provided.
  core.String defaultMessage;

  /// A map containing <locale, message> pairs, where locale is a well-formed
  /// BCP 47 language (https://www.w3.org/International/articles/language-tags/)
  /// code, such as en-US, es-ES, or fr.
  core.Map<core.String, core.String> localizedMessages;

  UserFacingMessage();

  UserFacingMessage.fromJson(core.Map _json) {
    if (_json.containsKey("defaultMessage")) {
      defaultMessage = _json["defaultMessage"];
    }
    if (_json.containsKey("localizedMessages")) {
      localizedMessages = (_json["localizedMessages"] as core.Map)
          .cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (defaultMessage != null) {
      _json["defaultMessage"] = defaultMessage;
    }
    if (localizedMessages != null) {
      _json["localizedMessages"] = localizedMessages;
    }
    return _json;
  }
}

/// A web app.
class WebApp {
  /// The display mode of the web app.
  /// Possible string values are:
  /// - "DISPLAY_MODE_UNSPECIFIED" : Not used.
  /// - "MINIMAL_UI" : Opens the web app with a minimal set of browser UI
  /// elements for controlling navigation and viewing the page URL.
  /// - "STANDALONE" : Opens the web app to look and feel like a standalone
  /// native application. The browser UI elements and page URL are not visible,
  /// however the system status bar and back button are visible.
  /// - "FULL_SCREEN" : Opens the web app in full screen without any visible
  /// controls. The browser UI elements, page URL, system status bar and back
  /// button are not visible, and the web app takes up the entirety of the
  /// available display area.
  core.String displayMode;

  /// A list of icons for the web app. Must have at least one element.
  core.List<WebAppIcon> icons;

  /// The name of the web app, which is generated by the server during creation
  /// in the form enterprises/{enterpriseId}/webApps/{packageName}.
  core.String name;

  /// The start URL, i.e. the URL that should load when the user opens the
  /// application.
  core.String startUrl;

  /// The title of the web app as displayed to the user (e.g., amongst a list of
  /// other applications, or as a label for an icon).
  core.String title;

  /// The current version of the app.<p>Note that the version can automatically
  /// increase during the lifetime of the web app, while Google does internal
  /// housekeeping to keep the web app up-to-date.
  core.String versionCode;

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
    if (_json.containsKey("name")) {
      name = _json["name"];
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
    if (name != null) {
      _json["name"] = name;
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
    return _json;
  }
}

/// An icon for a web app. Supported formats are: png, jpg and webp.
class WebAppIcon {
  /// The actual bytes of the image in a base64url encoded string (c.f. RFC4648,
  /// section 5 "Base 64 Encoding with URL and Filename Safe Alphabet"). <ul>
  /// <li>The image type can be png or jpg. <li>The image should ideally be
  /// square. <li>The image should ideally have a size of 512x512. </ul>
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

/// A web token used to access the managed Google Play iframe.
class WebToken {
  /// The name of the web token, which is generated by the server during
  /// creation in the form enterprises/{enterpriseId}/webTokens/{webTokenId}.
  core.String name;

  /// The URL of the parent frame hosting the iframe with the embedded UI. To
  /// prevent XSS, the iframe may not be hosted at other URLs. The URL must use
  /// the https scheme.
  core.String parentFrameUrl;

  /// Permissions available to an admin in the embedded UI. An admin must have
  /// all of these permissions in order to view the UI.
  core.List<core.String> permissions;

  /// The token value which is used in the hosting page to generate the iframe
  /// with the embedded UI. This is a read-only field generated by the server.
  core.String value;

  WebToken();

  WebToken.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parentFrameUrl")) {
      parentFrameUrl = _json["parentFrameUrl"];
    }
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (parentFrameUrl != null) {
      _json["parentFrameUrl"] = parentFrameUrl;
    }
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// An action to reset a fully managed device or delete a work profile. Note:
/// blockAction must also be specified.
class WipeAction {
  /// Whether the factory-reset protection data is preserved on the device. This
  /// setting doesn’t apply to work profiles.
  core.bool preserveFrp;

  /// Number of days the policy is non-compliant before the device or work
  /// profile is wiped. wipeAfterDays must be greater than blockAfterDays.
  core.int wipeAfterDays;

  WipeAction();

  WipeAction.fromJson(core.Map _json) {
    if (_json.containsKey("preserveFrp")) {
      preserveFrp = _json["preserveFrp"];
    }
    if (_json.containsKey("wipeAfterDays")) {
      wipeAfterDays = _json["wipeAfterDays"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (preserveFrp != null) {
      _json["preserveFrp"] = preserveFrp;
    }
    if (wipeAfterDays != null) {
      _json["wipeAfterDays"] = wipeAfterDays;
    }
    return _json;
  }
}
