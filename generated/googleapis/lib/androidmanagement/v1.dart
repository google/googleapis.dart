// This is a generated file (see the discoveryapis_generator project).

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
      {core.String rootUrl: "https://androidmanagement.googleapis.com/",
      core.String servicePath: ""})
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
  EnterprisesWebTokensResourceApi get webTokens =>
      new EnterprisesWebTokensResourceApi(_requester);

  EnterprisesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates an enterprise by completing the enterprise signup flow.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [signupUrlName] - The name of the SignupUrl used to sign up for the
  /// enterprise.
  ///
  /// [enterpriseToken] - The enterprise token appended to the callback URL.
  ///
  /// [projectId] - The id of the Google Cloud Platform project which will own
  /// the enterprise.
  ///
  /// Completes with a [Enterprise].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Enterprise> create(Enterprise request,
      {core.String signupUrlName,
      core.String enterpriseToken,
      core.String projectId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (signupUrlName != null) {
      _queryParams["signupUrlName"] = [signupUrlName];
    }
    if (enterpriseToken != null) {
      _queryParams["enterpriseToken"] = [enterpriseToken];
    }
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
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
  /// [name] - The name of the enterprise in the form enterprises/{enterpriseId}
  /// Value must have pattern "^enterprises/[^/]+$".
  ///
  /// Completes with a [Enterprise].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Enterprise> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
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
  /// [name] - The name of the enterprise in the form enterprises/{enterpriseId}
  /// Value must have pattern "^enterprises/[^/]+$".
  ///
  /// [updateMask] - The field mask indicating the fields to update. If not set,
  /// all modifiable fields will be modified.
  ///
  /// Completes with a [Enterprise].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Enterprise> patch(Enterprise request, core.String name,
      {core.String updateMask}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
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
  /// enterprises/{enterpriseId}/applications/{package_name}
  /// Value must have pattern "^enterprises/[^/]+/applications/[^/]+$".
  ///
  /// [languageCode] - The preferred language for localized application info, as
  /// a BCP47 tag (e.g. "en-US", "de"). If not specified the default language of
  /// the application will be used.
  ///
  /// Completes with a [Application].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Application> get(core.String name, {core.String languageCode}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
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

  /// Deletes a device, which causes the device to be wiped.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the device in the form
  /// enterprises/{enterpriseId}/devices/{deviceId}
  /// Value must have pattern "^enterprises/[^/]+/devices/[^/]+$".
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
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
  /// enterprises/{enterpriseId}/devices/{deviceId}
  /// Value must have pattern "^enterprises/[^/]+/devices/[^/]+$".
  ///
  /// Completes with a [Device].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Device> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
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
  /// enterprises/{enterpriseId}/devices/{deviceId}
  /// Value must have pattern "^enterprises/[^/]+/devices/[^/]+$".
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> issueCommand(Command request, core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
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
  /// enterprises/{enterpriseId}
  /// Value must have pattern "^enterprises/[^/]+$".
  ///
  /// [pageSize] - The requested page size. The actual page size may be fixed to
  /// a min or max value.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// Completes with a [ListDevicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDevicesResponse> list(core.String parent,
      {core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
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
  /// enterprises/{enterpriseId}/devices/{deviceId}
  /// Value must have pattern "^enterprises/[^/]+/devices/[^/]+$".
  ///
  /// [updateMask] - The field mask indicating the fields to update. If not set,
  /// all modifiable fields will be modified.
  ///
  /// Completes with a [Device].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Device> patch(Device request, core.String name,
      {core.String updateMask}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
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
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> cancel(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
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
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
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
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(core.String name,
      {core.int pageSize, core.String filter, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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
  /// enterprises/{enterpriseId}
  /// Value must have pattern "^enterprises/[^/]+$".
  ///
  /// Completes with a [EnrollmentToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EnrollmentToken> create(
      EnrollmentToken request, core.String parent) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
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

  /// Deletes an enrollment token, which prevents future use of the token.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the enrollment token in the form
  /// enterprises/{enterpriseId}/enrollmentTokens/{enrollmentTokenId}
  /// Value must have pattern "^enterprises/[^/]+/enrollmentTokens/[^/]+$".
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
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
  /// enterprises/{enterpriseId}/policies/{policyId}
  /// Value must have pattern "^enterprises/[^/]+/policies/[^/]+$".
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
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
  /// enterprises/{enterpriseId}/policies/{policyId}
  /// Value must have pattern "^enterprises/[^/]+/policies/[^/]+$".
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
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
  /// enterprises/{enterpriseId}
  /// Value must have pattern "^enterprises/[^/]+$".
  ///
  /// [pageSize] - The requested page size. The actual page size may be fixed to
  /// a min or max value.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// Completes with a [ListPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPoliciesResponse> list(core.String parent,
      {core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
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
  /// enterprises/{enterpriseId}/policies/{policyId}
  /// Value must have pattern "^enterprises/[^/]+/policies/[^/]+$".
  ///
  /// [updateMask] - The field mask indicating the fields to update. If not set,
  /// all modifiable fields will be modified.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> patch(Policy request, core.String name,
      {core.String updateMask}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
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
  /// enterprises/{enterpriseId}
  /// Value must have pattern "^enterprises/[^/]+$".
  ///
  /// Completes with a [WebToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebToken> create(WebToken request, core.String parent) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
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
  /// [callbackUrl] - The callback URL to which the admin will be redirected
  /// after successfully creating an enterprise. Before redirecting there the
  /// system will add a query parameter to this URL named enterpriseToken which
  /// will contain an opaque token to be used for the create enterprise request.
  /// The URL will be parsed then reformatted in order to add the
  /// enterpriseToken parameter, so there may be some minor formatting changes.
  ///
  /// [projectId] - The id of the Google Cloud Platform project which will own
  /// the enterprise.
  ///
  /// Completes with a [SignupUrl].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SignupUrl> create(
      {core.String callbackUrl, core.String projectId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (callbackUrl != null) {
      _queryParams["callbackUrl"] = [callbackUrl];
    }
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
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

/// A compliance rule condition which is satisfied if the Android Framework API
/// level on the device does not meet a minimum requirement. There can only be
/// one rule with this type of condition per policy.
class ApiLevelCondition {
  /// The minimum desired Android Framework API level. If the device does not
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

/// Application information.
class Application {
  /// The set of managed properties available to be pre-configured for the
  /// application.
  core.List<ManagedProperty> managedProperties;

  /// The name of the application in the form
  /// enterprises/{enterpriseId}/applications/{package_name}
  core.String name;

  /// The permissions required by the app.
  core.List<ApplicationPermission> permissions;

  /// The title of the application. Localized.
  core.String title;

  Application();

  Application.fromJson(core.Map _json) {
    if (_json.containsKey("managedProperties")) {
      managedProperties = _json["managedProperties"]
          .map((value) => new ManagedProperty.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("permissions")) {
      permissions = _json["permissions"]
          .map((value) => new ApplicationPermission.fromJson(value))
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

/// Application permission.
class ApplicationPermission {
  /// A longer description of the permission, giving more details of what it
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
  /// all apps.
  /// Possible string values are:
  /// - "PERMISSION_POLICY_UNSPECIFIED" : Policy not specified. If no policy is
  /// specified for a permission at any level, then the PROMPT behavior is used
  /// by default.
  /// - "PROMPT" : Prompt the user to grant a permission.
  /// - "GRANT" : Automatically grant a permission.
  /// - "DENY" : Automatically deny a permission.
  core.String defaultPermissionPolicy;

  /// The type of installation to perform.
  /// Possible string values are:
  /// - "INSTALL_TYPE_UNSPECIFIED" : No automatic installation is performed. Any
  /// other app policies will be applied if the user installs the app.
  /// - "PREINSTALLED" : The application is automatically installed and can be
  /// removed by the user.
  /// - "FORCE_INSTALLED" : The application is automatically installed and
  /// cannot be removed by the user.
  core.String installType;

  /// Whether the application is allowed to lock itself in full-screen mode.
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

  /// The package name of the app, e.g. com.google.android.youtube for the
  /// YouTube app.
  core.String packageName;

  /// Explicit permission grants or denials for the app. These values override
  /// the default_permission_policy.
  core.List<PermissionGrant> permissionGrants;

  ApplicationPolicy();

  ApplicationPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("defaultPermissionPolicy")) {
      defaultPermissionPolicy = _json["defaultPermissionPolicy"];
    }
    if (_json.containsKey("installType")) {
      installType = _json["installType"];
    }
    if (_json.containsKey("lockTaskAllowed")) {
      lockTaskAllowed = _json["lockTaskAllowed"];
    }
    if (_json.containsKey("managedConfiguration")) {
      managedConfiguration = _json["managedConfiguration"];
    }
    if (_json.containsKey("packageName")) {
      packageName = _json["packageName"];
    }
    if (_json.containsKey("permissionGrants")) {
      permissionGrants = _json["permissionGrants"]
          .map((value) => new PermissionGrant.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (defaultPermissionPolicy != null) {
      _json["defaultPermissionPolicy"] = defaultPermissionPolicy;
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

/// A command.
class Command {
  /// The timestamp at which the command was created. The timestamp is
  /// automatically generated by the server.
  core.String createTime;

  /// The duration for which the command is valid. The command will expire if
  /// not executed by the device during this time. The default duration if
  /// unspecified is ten minutes. There is no maximum duration.
  core.String duration;

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

  Command();

  Command.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("duration")) {
      duration = _json["duration"];
    }
    if (_json.containsKey("newPassword")) {
      newPassword = _json["newPassword"];
    }
    if (_json.containsKey("resetPasswordFlags")) {
      resetPasswordFlags = _json["resetPasswordFlags"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
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
    if (newPassword != null) {
      _json["newPassword"] = newPassword;
    }
    if (resetPasswordFlags != null) {
      _json["resetPasswordFlags"] = resetPasswordFlags;
    }
    if (type != null) {
      _json["type"] = type;
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
  /// device does not meet a minimum requirement.
  ApiLevelCondition apiLevelCondition;

  /// If set to true, the rule includes a mitigating action to disable
  /// applications so that the device is effectively disabled, but application
  /// data is preserved. If the device is running an app in locked task mode,
  /// the app will be closed and a UI showing the reason for non-compliance will
  /// be displayed.
  core.bool disableApps;

  /// A condition which is satisfied if there exists any matching
  /// NonComplianceDetail for the device.
  NonComplianceDetailCondition nonComplianceDetailCondition;

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
    return _json;
  }
}

/// A device owned by an enterprise. Unless otherwise noted, all fields are
/// read-only and cannot be modified by an update device request.
class Device {
  /// The API level of the Android platform version running on the device.
  core.int apiLevel;

  /// The name of the policy that is currently applied by the device.
  core.String appliedPolicyName;

  /// The version of the policy that is currently applied by the device.
  core.String appliedPolicyVersion;

  /// The state that is currently applied by the device.
  /// Possible string values are:
  /// - "DEVICE_STATE_UNSPECIFIED" : This value is disallowed.
  /// - "ACTIVE" : The device is active.
  /// - "DISABLED" : The device is disabled.
  /// - "DELETED" : The device was deleted. This state will never be returned by
  /// an API call, but will be used in the final policy compliance report
  /// published to Cloud Pub/Sub when the device acknowledges the deletion.
  /// - "PROVISIONING" : The device is being provisioned. Newly enrolled devices
  /// will be in this state until they have applied policy.
  core.String appliedState;

  /// If the device state is DISABLED, an optional message that is displayed on
  /// the device indicating the reason the device is disabled. This field may be
  /// modified by an update request.
  UserFacingMessage disabledReason;

  /// Displays on the device. This information is only available when
  /// displayInfoEnabled is true in the device's policy.
  core.List<Display> displays;

  /// The time of device enrollment.
  core.String enrollmentTime;

  /// If this device was enrolled with an enrollment token with additional data
  /// provided, this field contains that data.
  core.String enrollmentTokenData;

  /// If this device was enrolled with an enrollment token, this field contains
  /// the name of the token.
  core.String enrollmentTokenName;

  /// Detailed information about the device hardware.
  HardwareInfo hardwareInfo;

  /// Hardware status samples in chronological order. This information is only
  /// available when hardwareStatusEnabled is true in the device's policy.
  core.List<HardwareStatus> hardwareStatusSamples;

  /// The last time the device sent a policy compliance report.
  core.String lastPolicyComplianceReportTime;

  /// The last time the device fetched its policy.
  core.String lastPolicySyncTime;

  /// The last time the device sent a status report.
  core.String lastStatusReportTime;

  /// Events related to memory and storage measurements in chronological order.
  /// This information is only available when memoryInfoEnabled is true in the
  /// device's policy.
  core.List<MemoryEvent> memoryEvents;

  /// Memory information. This information is only available when
  /// memoryInfoEnabled is true in the device's policy.
  MemoryInfo memoryInfo;

  /// The name of the device in the form
  /// enterprises/{enterpriseId}/devices/{deviceId}
  core.String name;

  /// Device network information. This information is only available when
  /// networkInfoEnabled is true in the device's policy.
  NetworkInfo networkInfo;

  /// Details about policy settings for which the device is not in compliance.
  core.List<NonComplianceDetail> nonComplianceDetails;

  /// Whether the device is compliant with its policy.
  core.bool policyCompliant;

  /// The name of the policy that is intended to be applied to the device. If
  /// empty, the policy with id default is applied. This field may be modified
  /// by an update request. The name of the policy is in the form
  /// enterprises/{enterpriseId}/policies/{policyId}. It is also permissible to
  /// only specify the policyId when updating this field as long as the policyId
  /// contains no slashes since the rest of the policy name can be inferred from
  /// context.
  core.String policyName;

  /// Power management events on the device in chronological order. This
  /// information is only available when powerManagementEventsEnabled is true in
  /// the device's policy.
  core.List<PowerManagementEvent> powerManagementEvents;

  /// The previous device names used for the same physical device when it has
  /// been enrolled multiple times. The serial number is used as the unique
  /// identifier to determine if the same physical device has enrolled
  /// previously. The names are in chronological order.
  core.List<core.String> previousDeviceNames;

  /// Detailed information about the device software. This information is only
  /// available when softwareInfoEnabled is true in the device's policy.
  SoftwareInfo softwareInfo;

  /// The state that is intended to be applied to the device. This field may be
  /// modified by an update request. Note that UpdateDevice only handles
  /// toggling between ACTIVE and DISABLED states. Use the delete device method
  /// to cause the device to enter the DELETED state.
  /// Possible string values are:
  /// - "DEVICE_STATE_UNSPECIFIED" : This value is disallowed.
  /// - "ACTIVE" : The device is active.
  /// - "DISABLED" : The device is disabled.
  /// - "DELETED" : The device was deleted. This state will never be returned by
  /// an API call, but will be used in the final policy compliance report
  /// published to Cloud Pub/Sub when the device acknowledges the deletion.
  /// - "PROVISIONING" : The device is being provisioned. Newly enrolled devices
  /// will be in this state until they have applied policy.
  core.String state;

  /// The resource name of the user of the device in the form
  /// enterprises/{enterpriseId}/users/{userId}. This is the name of the device
  /// account automatically created for this device.
  core.String userName;

  Device();

  Device.fromJson(core.Map _json) {
    if (_json.containsKey("apiLevel")) {
      apiLevel = _json["apiLevel"];
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
    if (_json.containsKey("disabledReason")) {
      disabledReason = new UserFacingMessage.fromJson(_json["disabledReason"]);
    }
    if (_json.containsKey("displays")) {
      displays = _json["displays"]
          .map((value) => new Display.fromJson(value))
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
      hardwareStatusSamples = _json["hardwareStatusSamples"]
          .map((value) => new HardwareStatus.fromJson(value))
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
    if (_json.containsKey("memoryEvents")) {
      memoryEvents = _json["memoryEvents"]
          .map((value) => new MemoryEvent.fromJson(value))
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
      nonComplianceDetails = _json["nonComplianceDetails"]
          .map((value) => new NonComplianceDetail.fromJson(value))
          .toList();
    }
    if (_json.containsKey("policyCompliant")) {
      policyCompliant = _json["policyCompliant"];
    }
    if (_json.containsKey("policyName")) {
      policyName = _json["policyName"];
    }
    if (_json.containsKey("powerManagementEvents")) {
      powerManagementEvents = _json["powerManagementEvents"]
          .map((value) => new PowerManagementEvent.fromJson(value))
          .toList();
    }
    if (_json.containsKey("previousDeviceNames")) {
      previousDeviceNames = _json["previousDeviceNames"];
    }
    if (_json.containsKey("softwareInfo")) {
      softwareInfo = new SoftwareInfo.fromJson(_json["softwareInfo"]);
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
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
    if (appliedPolicyName != null) {
      _json["appliedPolicyName"] = appliedPolicyName;
    }
    if (appliedPolicyVersion != null) {
      _json["appliedPolicyVersion"] = appliedPolicyVersion;
    }
    if (appliedState != null) {
      _json["appliedState"] = appliedState;
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
    if (userName != null) {
      _json["userName"] = userName;
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
  /// contain, for example, the id of an org unit to which the device is
  /// assigned after enrollment. After a device enrolls with the token, this
  /// data will be exposed in the enrollment_token_data field of the Device
  /// resource. The data must be 1024 characters or less; otherwise, the
  /// creation request will fail.
  core.String additionalData;

  /// The duration of the token. If not specified, the duration will be 1 hour.
  /// The allowed range is 1 minute to 30 days.
  core.String duration;

  /// The expiration time of the token. This is a read-only field generated by
  /// the server.
  core.String expirationTimestamp;

  /// The name of the enrollment token, which is generated by the server during
  /// creation, in the form
  /// enterprises/{enterpriseId}/enrollmentTokens/{enrollmentTokenId}
  core.String name;

  /// The name of the policy that will be initially applied to the enrolled
  /// device in the form enterprises/{enterpriseId}/policies/{policyId}. If not
  /// specified, the policy with id default is applied. It is permissible to
  /// only specify the policyId when updating this field as long as the policyId
  /// contains no slashes since the rest of the policy name can be inferred from
  /// context.
  core.String policyName;

  /// A JSON string whose UTF-8 representation can be used to generate a QR code
  /// to enroll a device with this enrollment token. To enroll a device using
  /// NFC, the NFC record must contain a serialized java.util.Properties
  /// representation of the properties in the JSON.
  core.String qrCode;

  /// The token value which is passed to the device and authorizes the device to
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
    if (_json.containsKey("policyName")) {
      policyName = _json["policyName"];
    }
    if (_json.containsKey("qrCode")) {
      qrCode = _json["qrCode"];
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
    if (policyName != null) {
      _json["policyName"] = policyName;
    }
    if (qrCode != null) {
      _json["qrCode"] = qrCode;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// The configuration applied to an enterprise.
class Enterprise {
  /// Whether app auto-approval is enabled. When enabled, apps installed via
  /// policy for this enterprise have all permissions automatically approved.
  /// When enabled, it is the caller's responsibility to display the permissions
  /// required by an app to the enterprise admin before setting the app to be
  /// installed in a policy.
  core.bool appAutoApprovalEnabled;

  /// The notification types to enable via Google Cloud Pub/Sub.
  core.List<core.String> enabledNotificationTypes;

  /// The name of the enterprise as it will appear to users.
  core.String enterpriseDisplayName;

  /// An image displayed as a logo during device provisioning. Supported types
  /// are: image/bmp, image/gif, image/x-ico, image/jpeg, image/png, image/webp,
  /// image/vnd.wap.wbmp, image/x-adobe-dng.
  ExternalData logo;

  /// The name of the enterprise which is generated by the server during
  /// creation, in the form enterprises/{enterpriseId}
  core.String name;

  /// A color in RGB format indicating the predominant color to display in the
  /// device management app UI. The color components are stored as follows: (red
  /// << 16) | (green << 8) | blue, where each component may take a value
  /// between 0 and 255 inclusive.
  core.int primaryColor;

  /// When Cloud Pub/Sub notifications are enabled, this field is required to
  /// indicate the topic to which the notifications will be published. The
  /// format of this field is projects/{project}/topics/{topic}. You must have
  /// granted the publish permission on this topic to
  /// android-cloud-policy@system.gserviceaccount.com
  core.String pubsubTopic;

  Enterprise();

  Enterprise.fromJson(core.Map _json) {
    if (_json.containsKey("appAutoApprovalEnabled")) {
      appAutoApprovalEnabled = _json["appAutoApprovalEnabled"];
    }
    if (_json.containsKey("enabledNotificationTypes")) {
      enabledNotificationTypes = _json["enabledNotificationTypes"];
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
    return _json;
  }
}

/// Data hosted at an external location. The data is to be downloaded by Android
/// Device Policy and verified against the hash.
class ExternalData {
  /// The base-64 encoded SHA-256 hash of the content hosted at url. If the
  /// content does not match this hash, Android Device Policy will not use the
  /// data.
  core.String sha256Hash;

  /// The absolute URL to the data, which must use either the http or https
  /// scheme. Android Device Policy does not provide any credentials in the GET
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
/// thresholds are only available when hardwareStatusEnabled is true in the
/// device's policy.
class HardwareInfo {
  /// Battery shutdown temperature thresholds in Celsius for each battery on the
  /// device.
  core.List<core.double> batteryShutdownTemperatures;

  /// Battery throttling temperature thresholds in Celsius for each battery on
  /// the device.
  core.List<core.double> batteryThrottlingTemperatures;

  /// Brand of the device, e.g. Google.
  core.String brand;

  /// CPU shutdown temperature thresholds in Celsius for each CPU on the device.
  core.List<core.double> cpuShutdownTemperatures;

  /// CPU throttling temperature thresholds in Celsius for each CPU on the
  /// device.
  core.List<core.double> cpuThrottlingTemperatures;

  /// Baseband version, e.g. MDM9625_104662.22.05.34p.
  core.String deviceBasebandVersion;

  /// GPU shutdown temperature thresholds in Celsius for each GPU on the device.
  core.List<core.double> gpuShutdownTemperatures;

  /// GPU throttling temperature thresholds in Celsius for each GPU on the
  /// device.
  core.List<core.double> gpuThrottlingTemperatures;

  /// Name of the hardware, e.g. Angler.
  core.String hardware;

  /// Manufacturer, e.g. Motorola.
  core.String manufacturer;

  /// The model of the device, e.g. Asus Nexus 7.
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
      batteryShutdownTemperatures = _json["batteryShutdownTemperatures"];
    }
    if (_json.containsKey("batteryThrottlingTemperatures")) {
      batteryThrottlingTemperatures = _json["batteryThrottlingTemperatures"];
    }
    if (_json.containsKey("brand")) {
      brand = _json["brand"];
    }
    if (_json.containsKey("cpuShutdownTemperatures")) {
      cpuShutdownTemperatures = _json["cpuShutdownTemperatures"];
    }
    if (_json.containsKey("cpuThrottlingTemperatures")) {
      cpuThrottlingTemperatures = _json["cpuThrottlingTemperatures"];
    }
    if (_json.containsKey("deviceBasebandVersion")) {
      deviceBasebandVersion = _json["deviceBasebandVersion"];
    }
    if (_json.containsKey("gpuShutdownTemperatures")) {
      gpuShutdownTemperatures = _json["gpuShutdownTemperatures"];
    }
    if (_json.containsKey("gpuThrottlingTemperatures")) {
      gpuThrottlingTemperatures = _json["gpuThrottlingTemperatures"];
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
      skinShutdownTemperatures = _json["skinShutdownTemperatures"];
    }
    if (_json.containsKey("skinThrottlingTemperatures")) {
      skinThrottlingTemperatures = _json["skinThrottlingTemperatures"];
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
      batteryTemperatures = _json["batteryTemperatures"];
    }
    if (_json.containsKey("cpuTemperatures")) {
      cpuTemperatures = _json["cpuTemperatures"];
    }
    if (_json.containsKey("cpuUsages")) {
      cpuUsages = _json["cpuUsages"];
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("fanSpeeds")) {
      fanSpeeds = _json["fanSpeeds"];
    }
    if (_json.containsKey("gpuTemperatures")) {
      gpuTemperatures = _json["gpuTemperatures"];
    }
    if (_json.containsKey("skinTemperatures")) {
      skinTemperatures = _json["skinTemperatures"];
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

/// Response to a request to list devices for a given enterprise.
class ListDevicesResponse {
  /// The list of devices.
  core.List<Device> devices;

  /// If there are more results, a token to retrieve next page of results.
  core.String nextPageToken;

  ListDevicesResponse();

  ListDevicesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("devices")) {
      devices =
          _json["devices"].map((value) => new Device.fromJson(value)).toList();
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
      operations = _json["operations"]
          .map((value) => new Operation.fromJson(value))
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
      policies =
          _json["policies"].map((value) => new Policy.fromJson(value)).toList();
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

/// Managed property.
class ManagedProperty {
  /// The default value of the properties. BUNDLE_ARRAY properties never have a
  /// default value.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object defaultValue;

  /// A longer description of the property, giving more detail of what it
  /// affects. Localized.
  core.String description;

  /// For CHOICE or MULTISELECT properties, the list of possible entries.
  core.List<ManagedPropertyEntry> entries;

  /// The unique key that the application uses to identify the property, e.g.
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
  /// used to pass along information that cannot be modified, such as a version
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
      entries = _json["entries"]
          .map((value) => new ManagedPropertyEntry.fromJson(value))
          .toList();
    }
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("nestedProperties")) {
      nestedProperties = _json["nestedProperties"]
          .map((value) => new ManagedProperty.fromJson(value))
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
  /// IMEI number of the GSM device, e.g. A1000031212.
  core.String imei;

  /// MEID number of the CDMA device, e.g. A00000292788E1.
  core.String meid;

  /// WiFi MAC address of the device, e.g. 7c:11:11:11:11:11.
  core.String wifiMacAddress;

  NetworkInfo();

  NetworkInfo.fromJson(core.Map _json) {
    if (_json.containsKey("imei")) {
      imei = _json["imei"];
    }
    if (_json.containsKey("meid")) {
      meid = _json["meid"];
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

  /// If package_name is set and the non-compliance reason is APP_NOT_INSTALLED,
  /// the detailed reason the app cannot be installed.
  /// Possible string values are:
  /// - "INSTALLATION_FAILURE_REASON_UNSPECIFIED" : This value is disallowed.
  /// - "INSTALLATION_FAILURE_REASON_UNKNOWN" : An unknown condition is
  /// preventing the app from being installed. Some potential reaons are that
  /// the device does not have enough storage, the device network connection is
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
  /// - "NO_LICENSES_REMAINING" : There are no more licenses to assign to the
  /// user.
  /// - "NOT_ENROLLED" : The enterprise is no longer enrolled with Play for Work
  /// or Android Device Policy is not enabled for the enterprise.
  /// - "USER_INVALID" : The user is no longer valid. The user may have been
  /// deleted or disabled.
  core.String installationFailureReason;

  /// The reason the device is not in compliance with the setting.
  /// Possible string values are:
  /// - "NON_COMPLIANCE_REASON_UNSPECIFIED" : This value is disallowed.
  /// - "API_LEVEL" : The setting is not supported in the API level of Android
  /// OS version the device is running.
  /// - "ADMIN_TYPE" : The admin type (profile owner, device owner, etc.) does
  /// not support the setting.
  /// - "USER_ACTION" : The user has not taken required action to comply with
  /// the setting.
  /// - "INVALID_VALUE" : The setting has an invalid value.
  /// - "APP_NOT_INSTALLED" : The application required to implement the policy
  /// is not installed.
  /// - "UNSUPPORTED" : The policy is not supported by the version of Android
  /// Device Policy on the device.
  /// - "APP_INSTALLED" : A blocked application is installed.
  /// - "PENDING" : The setting was not applied yet at the time of the report,
  /// but is expected to be applied shortly.
  /// - "APP_INCOMPATIBLE" : The setting cannot be applied to the application
  /// because its target SDK version is not high enough.
  core.String nonComplianceReason;

  /// The package name indicating which application is out of compliance, if
  /// applicable.
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
  /// - "API_LEVEL" : The setting is not supported in the API level of Android
  /// OS version the device is running.
  /// - "ADMIN_TYPE" : The admin type (profile owner, device owner, etc.) does
  /// not support the setting.
  /// - "USER_ACTION" : The user has not taken required action to comply with
  /// the setting.
  /// - "INVALID_VALUE" : The setting has an invalid value.
  /// - "APP_NOT_INSTALLED" : The application required to implement the policy
  /// is not installed.
  /// - "UNSUPPORTED" : The policy is not supported by the version of Android
  /// Device Policy on the device.
  /// - "APP_INSTALLED" : A blocked application is installed.
  /// - "PENDING" : The setting was not applied yet at the time of the report,
  /// but is expected to be applied shortly.
  /// - "APP_INCOMPATIBLE" : The setting cannot be applied to the application
  /// because its target SDK version is not high enough.
  core.String nonComplianceReason;

  /// The package name indicating which application is out of compliance. If not
  /// set, then this condition matches any package name. If this field is set,
  /// then setting_name must be unset or set to applications; otherwise, the
  /// condition would never be satisfied.
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
  /// should have the format of operations/some/unique/name.
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
      metadata = _json["metadata"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response = _json["response"];
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

/// Requirements for the password used to unlock a device.
class PasswordRequirements {
  /// A device will be wiped after too many incorrect device-unlock passwords
  /// have been entered. A value of 0 means there is no restriction.
  core.int maximumFailedPasswordsForWipe;

  /// Password expiration timeout.
  core.String passwordExpirationTimeout;

  /// The length of the password history. After setting this, the user will not
  /// be able to enter a new password that is the same as any password in the
  /// history. A value of 0 means there is no restriction.
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
  /// - "PASSWORD_QUALITY_UNSPECIFIED" : There are no requirements for the
  /// password.
  /// - "SOMETHING" : There must be a password, but there are no restrictions on
  /// its characters.
  /// - "NUMERIC" : The password must contain numeric characters.
  /// - "NUMERIC_COMPLEX" : The password must contain numeric characters with no
  /// repeating (4444) or ordered (1234, 4321, 2468) sequences.
  /// - "ALPHABETIC" : The password must contain alphabetic (or symbol)
  /// characters.
  /// - "ALPHANUMERIC" : The password must contain at both numeric and
  /// alphabetic (or symbol) characters.
  /// - "COMPLEX" : The password must contain at least a letter, a numerical
  /// digit and a special symbol. Other password constraints, for example,
  /// password_minimum_letters are enforced.
  core.String passwordQuality;

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
    return _json;
  }
}

/// Configuration for an Android permission and its grant state.
class PermissionGrant {
  /// The android permission, e.g. android.permission.READ_CALENDAR.
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
      actions = _json["actions"];
    }
    if (_json.containsKey("categories")) {
      categories = _json["categories"];
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

/// A policy, which governs behavior for a device.
class Policy {
  /// Whether adding new users and profiles is disabled.
  core.bool addUserDisabled;

  /// Whether adjusting the master volume is disabled.
  core.bool adjustVolumeDisabled;

  /// Policy applied to apps.
  core.List<ApplicationPolicy> applications;

  /// Whether applications other than the ones configured in applications are
  /// blocked from being installed. When set, applications that were installed
  /// under a previous policy but no longer appear in the policy are
  /// automatically uninstalled.
  core.bool blockApplicationsEnabled;

  /// Whether all cameras on the device are disabled.
  core.bool cameraDisabled;

  /// Rules declaring which mitigating actions to take when a device is not
  /// compliant with its policy. When the conditions for multiple rules are
  /// satisfied, all of the mitigating actions for the rules are taken. There is
  /// a maximum limit of 100 rules.
  core.List<ComplianceRule> complianceRules;

  /// Whether the user is allowed to enable debugging features.
  core.bool debuggingFeaturesAllowed;

  /// The default permission policy for requests for runtime permissions.
  /// Possible string values are:
  /// - "PERMISSION_POLICY_UNSPECIFIED" : Policy not specified. If no policy is
  /// specified for a permission at any level, then the PROMPT behavior is used
  /// by default.
  /// - "PROMPT" : Prompt the user to grant a permission.
  /// - "GRANT" : Automatically grant a permission.
  /// - "DENY" : Automatically deny a permission.
  core.String defaultPermissionPolicy;

  /// Whether factory resetting from settings is disabled.
  core.bool factoryResetDisabled;

  /// Email addresses of device administrators for factory reset protection.
  /// When the device is factory reset, it will require one of these admins to
  /// log in with the Google account email and password to unlock the device. If
  /// no admins are specified, the device will not provide factory reset
  /// protection.
  core.List<core.String> frpAdminEmails;

  /// Whether the user is allowed to have fun. Controls whether the Easter egg
  /// game in Settings is disabled.
  core.bool funDisabled;

  /// Whether the user is allowed to enable the "Unknown Sources" setting, which
  /// allows installation of apps from unknown sources.
  core.bool installUnknownSourcesAllowed;

  /// Whether the keyguard is disabled.
  core.bool keyguardDisabled;

  /// Maximum time in milliseconds for user activity until the device will lock.
  /// A value of 0 means there is no restriction.
  core.String maximumTimeToLock;

  /// Whether adding or removing accounts is disabled.
  core.bool modifyAccountsDisabled;

  /// The name of the policy in the form
  /// enterprises/{enterpriseId}/policies/{policyId}
  core.String name;

  /// Flag to specify if network escape hatch is enabled. If this flag has been
  /// enabled then upon device boot if device has no network connection, then an
  /// activity will be shown that allows the user to temporarily connect to a
  /// network to fetch the latest policy. The launched activity will time out if
  /// no network has been connected for a given while and will return to the
  /// previous activity that was shown.
  core.bool networkEscapeHatchEnabled;

  /// Network configuration for the device. See configure networks for more
  /// information.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> openNetworkConfiguration;

  /// Password requirements.
  PasswordRequirements passwordRequirements;

  /// Default intent handler activities.
  core.List<PersistentPreferredActivity> persistentPreferredActivities;

  /// Whether removing other users is disabled.
  core.bool removeUserDisabled;

  /// Whether rebooting the device into safe boot is disabled.
  core.bool safeBootDisabled;

  /// Whether screen capture is disabled.
  core.bool screenCaptureDisabled;

  /// Whether the status bar is disabled. This disables notifications, quick
  /// settings and other screen overlays that allow escape from full-screen
  /// mode.
  core.bool statusBarDisabled;

  /// Status reporting settings
  StatusReportingSettings statusReportingSettings;

  /// The battery plugged in modes for which the device stays on. When using
  /// this setting, it is recommended to clear maximum_time_to_lock so that the
  /// device doesn't lock itself while it stays on.
  core.List<core.String> stayOnPluggedModes;

  /// The system update policy, which controls how OS updates are applied. If
  /// the update type is WINDOWED and the device has a device account, the
  /// update window will automatically apply to Play app updates as well.
  SystemUpdate systemUpdate;

  /// Whether the microphone is muted and adjusting microphone volume is
  /// disabled.
  core.bool unmuteMicrophoneDisabled;

  /// The version of the policy. This is a read-only field. The version is
  /// incremented each time the policy is updated.
  core.String version;

  /// Whether configuring WiFi access points is disabled.
  core.bool wifiConfigDisabled;

  /// Whether WiFi networks defined in Open Network Configuration are locked so
  /// they cannot be edited by the user.
  core.bool wifiConfigsLockdownEnabled;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey("addUserDisabled")) {
      addUserDisabled = _json["addUserDisabled"];
    }
    if (_json.containsKey("adjustVolumeDisabled")) {
      adjustVolumeDisabled = _json["adjustVolumeDisabled"];
    }
    if (_json.containsKey("applications")) {
      applications = _json["applications"]
          .map((value) => new ApplicationPolicy.fromJson(value))
          .toList();
    }
    if (_json.containsKey("blockApplicationsEnabled")) {
      blockApplicationsEnabled = _json["blockApplicationsEnabled"];
    }
    if (_json.containsKey("cameraDisabled")) {
      cameraDisabled = _json["cameraDisabled"];
    }
    if (_json.containsKey("complianceRules")) {
      complianceRules = _json["complianceRules"]
          .map((value) => new ComplianceRule.fromJson(value))
          .toList();
    }
    if (_json.containsKey("debuggingFeaturesAllowed")) {
      debuggingFeaturesAllowed = _json["debuggingFeaturesAllowed"];
    }
    if (_json.containsKey("defaultPermissionPolicy")) {
      defaultPermissionPolicy = _json["defaultPermissionPolicy"];
    }
    if (_json.containsKey("factoryResetDisabled")) {
      factoryResetDisabled = _json["factoryResetDisabled"];
    }
    if (_json.containsKey("frpAdminEmails")) {
      frpAdminEmails = _json["frpAdminEmails"];
    }
    if (_json.containsKey("funDisabled")) {
      funDisabled = _json["funDisabled"];
    }
    if (_json.containsKey("installUnknownSourcesAllowed")) {
      installUnknownSourcesAllowed = _json["installUnknownSourcesAllowed"];
    }
    if (_json.containsKey("keyguardDisabled")) {
      keyguardDisabled = _json["keyguardDisabled"];
    }
    if (_json.containsKey("maximumTimeToLock")) {
      maximumTimeToLock = _json["maximumTimeToLock"];
    }
    if (_json.containsKey("modifyAccountsDisabled")) {
      modifyAccountsDisabled = _json["modifyAccountsDisabled"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("networkEscapeHatchEnabled")) {
      networkEscapeHatchEnabled = _json["networkEscapeHatchEnabled"];
    }
    if (_json.containsKey("openNetworkConfiguration")) {
      openNetworkConfiguration = _json["openNetworkConfiguration"];
    }
    if (_json.containsKey("passwordRequirements")) {
      passwordRequirements =
          new PasswordRequirements.fromJson(_json["passwordRequirements"]);
    }
    if (_json.containsKey("persistentPreferredActivities")) {
      persistentPreferredActivities = _json["persistentPreferredActivities"]
          .map((value) => new PersistentPreferredActivity.fromJson(value))
          .toList();
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
    if (_json.containsKey("statusBarDisabled")) {
      statusBarDisabled = _json["statusBarDisabled"];
    }
    if (_json.containsKey("statusReportingSettings")) {
      statusReportingSettings = new StatusReportingSettings.fromJson(
          _json["statusReportingSettings"]);
    }
    if (_json.containsKey("stayOnPluggedModes")) {
      stayOnPluggedModes = _json["stayOnPluggedModes"];
    }
    if (_json.containsKey("systemUpdate")) {
      systemUpdate = new SystemUpdate.fromJson(_json["systemUpdate"]);
    }
    if (_json.containsKey("unmuteMicrophoneDisabled")) {
      unmuteMicrophoneDisabled = _json["unmuteMicrophoneDisabled"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
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
    if (addUserDisabled != null) {
      _json["addUserDisabled"] = addUserDisabled;
    }
    if (adjustVolumeDisabled != null) {
      _json["adjustVolumeDisabled"] = adjustVolumeDisabled;
    }
    if (applications != null) {
      _json["applications"] =
          applications.map((value) => (value).toJson()).toList();
    }
    if (blockApplicationsEnabled != null) {
      _json["blockApplicationsEnabled"] = blockApplicationsEnabled;
    }
    if (cameraDisabled != null) {
      _json["cameraDisabled"] = cameraDisabled;
    }
    if (complianceRules != null) {
      _json["complianceRules"] =
          complianceRules.map((value) => (value).toJson()).toList();
    }
    if (debuggingFeaturesAllowed != null) {
      _json["debuggingFeaturesAllowed"] = debuggingFeaturesAllowed;
    }
    if (defaultPermissionPolicy != null) {
      _json["defaultPermissionPolicy"] = defaultPermissionPolicy;
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
    if (installUnknownSourcesAllowed != null) {
      _json["installUnknownSourcesAllowed"] = installUnknownSourcesAllowed;
    }
    if (keyguardDisabled != null) {
      _json["keyguardDisabled"] = keyguardDisabled;
    }
    if (maximumTimeToLock != null) {
      _json["maximumTimeToLock"] = maximumTimeToLock;
    }
    if (modifyAccountsDisabled != null) {
      _json["modifyAccountsDisabled"] = modifyAccountsDisabled;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (networkEscapeHatchEnabled != null) {
      _json["networkEscapeHatchEnabled"] = networkEscapeHatchEnabled;
    }
    if (openNetworkConfiguration != null) {
      _json["openNetworkConfiguration"] = openNetworkConfiguration;
    }
    if (passwordRequirements != null) {
      _json["passwordRequirements"] = (passwordRequirements).toJson();
    }
    if (persistentPreferredActivities != null) {
      _json["persistentPreferredActivities"] = persistentPreferredActivities
          .map((value) => (value).toJson())
          .toList();
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
    if (unmuteMicrophoneDisabled != null) {
      _json["unmuteMicrophoneDisabled"] = unmuteMicrophoneDisabled;
    }
    if (version != null) {
      _json["version"] = version;
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
      batteryLevel = _json["batteryLevel"];
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

/// An enterprise signup URL.
class SignupUrl {
  /// The name of the resource. This must be included in the create enterprise
  /// request at the end of the signup flow.
  core.String name;

  /// A URL under which the Admin can sign up for an enterprise. The page
  /// pointed to cannot be rendered in an iframe.
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
  /// Android build Id string meant for displaying to the user, e.g.
  /// shamu-userdebug 6.0.1 MOB30I 2756745 dev-keys.
  core.String androidBuildNumber;

  /// Build time.
  core.String androidBuildTime;

  /// The user visible Android version string, e.g. 6.0.1.
  core.String androidVersion;

  /// The system bootloader version number, e.g. 0.6.7.
  core.String bootloaderVersion;

  /// Kernel version, e.g. 2.6.32.9-g103d848.
  core.String deviceKernelVersion;

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
    if (_json.containsKey("androidVersion")) {
      androidVersion = _json["androidVersion"];
    }
    if (_json.containsKey("bootloaderVersion")) {
      bootloaderVersion = _json["bootloaderVersion"];
    }
    if (_json.containsKey("deviceKernelVersion")) {
      deviceKernelVersion = _json["deviceKernelVersion"];
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
    if (androidVersion != null) {
      _json["androidVersion"] = androidVersion;
    }
    if (bootloaderVersion != null) {
      _json["bootloaderVersion"] = bootloaderVersion;
    }
    if (deviceKernelVersion != null) {
      _json["deviceKernelVersion"] = deviceKernelVersion;
    }
    if (securityPatchLevel != null) {
      _json["securityPatchLevel"] = securityPatchLevel;
    }
    return _json;
  }
}

/// The Status type defines a logical error model that is suitable for different
/// programming environments, including REST APIs and RPC APIs. It is used by
/// gRPC (https://github.com/grpc). The error model is designed to be:
/// Simple to use and understand for most users
/// Flexible enough to meet unexpected needsOverviewThe Status message contains
/// three pieces of data: error code, error message, and error details. The
/// error code should be an enum value of google.rpc.Code, but it may accept
/// additional error codes if needed. The error message should be a
/// developer-facing English message that helps developers understand and
/// resolve the error. If a localized user-facing error message is needed, put
/// the localized message in the error details or localize it in the client. The
/// optional error details may contain arbitrary information about the error.
/// There is a predefined set of error detail types in the package google.rpc
/// that can be used for common error conditions.Language mappingThe Status
/// message is the logical representation of the error model, but it is not
/// necessarily the actual wire format. When the Status message is exposed in
/// different client libraries and different wire protocols, it can be mapped
/// differently. For example, it will likely be mapped to some exceptions in
/// Java, but more likely mapped to some error codes in C.Other usesThe error
/// model and the Status message can be used in a variety of environments,
/// either with or without APIs, to provide a consistent developer experience
/// across different environments.Example uses of this error model include:
/// Partial errors. If a service needs to return partial errors to the client,
/// it may embed the Status in the normal response to indicate the partial
/// errors.
/// Workflow errors. A typical workflow has multiple steps. Each step may have a
/// Status message for error reporting.
/// Batch operations. If a client uses batch request and batch response, the
/// Status message should be used directly inside batch response, one for each
/// error sub-response.
/// Asynchronous operations. If an API call embeds asynchronous operation
/// results in its response, the status of those operations should be
/// represented directly using the Status message.
/// Logging. If some API errors are stored in logs, the message Status could be
/// used directly after any stripping needed for security/privacy reasons.
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
      details = _json["details"];
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
  /// Whether displays reporting is enabled.
  core.bool displayInfoEnabled;

  /// Whether hardware status reporting is enabled.
  core.bool hardwareStatusEnabled;

  /// Whether memory info reporting is enabled.
  core.bool memoryInfoEnabled;

  /// Whether network info reporting is enabled.
  core.bool networkInfoEnabled;

  /// Whether power management event reporting is enabled.
  core.bool powerManagementEventsEnabled;

  /// Whether software info reporting is enabled.
  core.bool softwareInfoEnabled;

  StatusReportingSettings();

  StatusReportingSettings.fromJson(core.Map _json) {
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
  /// the number of minutes after midnight in device local time. This value must
  /// be between 0 and 1439, inclusive. If this value is less than
  /// start_minutes, then the maintenance window spans midnight. If the
  /// maintenance window specified is smaller than 30 minutes, the actual window
  /// is extended to 30 minutes beyond the start time.
  core.int endMinutes;

  /// If the type is WINDOWED, the start of the maintenance window, measured as
  /// the number of minutes after midnight in device local time. This value must
  /// be between 0 and 1439, inclusive.
  core.int startMinutes;

  /// The type of system update to configure.
  /// Possible string values are:
  /// - "SYSTEM_UPDATE_TYPE_UNSPECIFIED" : Follow the default update behavior
  /// for the device, which typically requires the user to accept system
  /// updates.
  /// - "AUTOMATIC" : Install automatically as soon as an update is available.
  /// - "WINDOWED" : Install automatically within a daily maintenance window. If
  /// the device has a device account, this also configures Play apps to be
  /// updated within the window. This is strongly recommended for kiosk devices
  /// because this is the only way apps persistently pinned to the foreground
  /// can be updated by Play.
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

/// Provides user facing message with locale info. The maximum message length is
/// 4096 characters.
class UserFacingMessage {
  /// The default message that gets displayed if no localized message is
  /// specified, or the user's locale does not match with any of the localized
  /// messages. A default message must be provided if any localized messages are
  /// provided.
  core.String defaultMessage;

  /// A map which contains <locale, message> pairs. The locale is a BCP 47
  /// language code, e.g. en-US, es-ES, fr.
  core.Map<core.String, core.String> localizedMessages;

  UserFacingMessage();

  UserFacingMessage.fromJson(core.Map _json) {
    if (_json.containsKey("defaultMessage")) {
      defaultMessage = _json["defaultMessage"];
    }
    if (_json.containsKey("localizedMessages")) {
      localizedMessages = _json["localizedMessages"];
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

/// A web token used to access an embeddable managed Google Play web UI.
class WebToken {
  /// The name of the web token, which is generated by the server during
  /// creation, in the form enterprises/{enterpriseId}/webTokens/{webTokenId}.
  core.String name;

  /// The URL of the parent frame hosting the iframe with the embedded UI. To
  /// prevent XSS, the iframe may not be hosted at other URLs. The URL must use
  /// the https scheme.
  core.String parentFrameUrl;

  /// Permissions the admin may exercise in the embedded UI. The admin must have
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
      permissions = _json["permissions"];
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
