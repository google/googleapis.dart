// This is a generated file (see the discoveryapis_generator project).

library googleapis.androidenterprise.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client androidenterprise/v1';

/**
 * Allows MDMs/EMMs and enterprises to manage the deployment of apps to Android
 * for Work users.
 */
class AndroidenterpriseApi {
  /** Manage corporate Android devices */
  static const AndroidenterpriseScope = "https://www.googleapis.com/auth/androidenterprise";


  final commons.ApiRequester _requester;

  CollectionsResourceApi get collections => new CollectionsResourceApi(_requester);
  CollectionviewersResourceApi get collectionviewers => new CollectionviewersResourceApi(_requester);
  DevicesResourceApi get devices => new DevicesResourceApi(_requester);
  EnterprisesResourceApi get enterprises => new EnterprisesResourceApi(_requester);
  EntitlementsResourceApi get entitlements => new EntitlementsResourceApi(_requester);
  GrouplicensesResourceApi get grouplicenses => new GrouplicensesResourceApi(_requester);
  GrouplicenseusersResourceApi get grouplicenseusers => new GrouplicenseusersResourceApi(_requester);
  InstallsResourceApi get installs => new InstallsResourceApi(_requester);
  PermissionsResourceApi get permissions => new PermissionsResourceApi(_requester);
  ProductsResourceApi get products => new ProductsResourceApi(_requester);
  UsersResourceApi get users => new UsersResourceApi(_requester);

  AndroidenterpriseApi(http.Client client, {core.String rootUrl: "https://www.googleapis.com/", core.String servicePath: "androidenterprise/v1/"}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class CollectionsResourceApi {
  final commons.ApiRequester _requester;

  CollectionsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes a collection.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [collectionId] - The ID of the collection.
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future delete(core.String enterpriseId, core.String collectionId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (collectionId == null) {
      throw new core.ArgumentError("Parameter collectionId is required.");
    }

    _downloadOptions = null;

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/collections/' + commons.Escaper.ecapeVariable('$collectionId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Retrieves the details of a collection.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [collectionId] - The ID of the collection.
   *
   * Completes with a [Collection].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Collection> get(core.String enterpriseId, core.String collectionId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (collectionId == null) {
      throw new core.ArgumentError("Parameter collectionId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/collections/' + commons.Escaper.ecapeVariable('$collectionId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Collection.fromJson(data));
  }

  /**
   * Creates a new collection.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * Completes with a [Collection].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Collection> insert(Collection request, core.String enterpriseId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/collections';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Collection.fromJson(data));
  }

  /**
   * Retrieves the IDs of all the collections for an enterprise.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * Completes with a [CollectionsListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<CollectionsListResponse> list(core.String enterpriseId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/collections';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CollectionsListResponse.fromJson(data));
  }

  /**
   * Updates a collection. This method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [collectionId] - The ID of the collection.
   *
   * Completes with a [Collection].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Collection> patch(Collection request, core.String enterpriseId, core.String collectionId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (collectionId == null) {
      throw new core.ArgumentError("Parameter collectionId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/collections/' + commons.Escaper.ecapeVariable('$collectionId');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Collection.fromJson(data));
  }

  /**
   * Updates a collection.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [collectionId] - The ID of the collection.
   *
   * Completes with a [Collection].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Collection> update(Collection request, core.String enterpriseId, core.String collectionId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (collectionId == null) {
      throw new core.ArgumentError("Parameter collectionId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/collections/' + commons.Escaper.ecapeVariable('$collectionId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Collection.fromJson(data));
  }

}


class CollectionviewersResourceApi {
  final commons.ApiRequester _requester;

  CollectionviewersResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Removes the user from the list of those specifically allowed to see the
   * collection. If the collection's visibility is set to viewersOnly then only
   * such users will see the collection.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [collectionId] - The ID of the collection.
   *
   * [userId] - The ID of the user.
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future delete(core.String enterpriseId, core.String collectionId, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (collectionId == null) {
      throw new core.ArgumentError("Parameter collectionId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _downloadOptions = null;

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/collections/' + commons.Escaper.ecapeVariable('$collectionId') + '/users/' + commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Retrieves the ID of the user if they have been specifically allowed to see
   * the collection. If the collection's visibility is set to viewersOnly then
   * only these users will see the collection.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [collectionId] - The ID of the collection.
   *
   * [userId] - The ID of the user.
   *
   * Completes with a [User].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<User> get(core.String enterpriseId, core.String collectionId, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (collectionId == null) {
      throw new core.ArgumentError("Parameter collectionId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/collections/' + commons.Escaper.ecapeVariable('$collectionId') + '/users/' + commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new User.fromJson(data));
  }

  /**
   * Retrieves the IDs of the users who have been specifically allowed to see
   * the collection. If the collection's visibility is set to viewersOnly then
   * only these users will see the collection.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [collectionId] - The ID of the collection.
   *
   * Completes with a [CollectionViewersListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<CollectionViewersListResponse> list(core.String enterpriseId, core.String collectionId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (collectionId == null) {
      throw new core.ArgumentError("Parameter collectionId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/collections/' + commons.Escaper.ecapeVariable('$collectionId') + '/users';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CollectionViewersListResponse.fromJson(data));
  }

  /**
   * Adds the user to the list of those specifically allowed to see the
   * collection. If the collection's visibility is set to viewersOnly then only
   * such users will see the collection. This method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [collectionId] - The ID of the collection.
   *
   * [userId] - The ID of the user.
   *
   * Completes with a [User].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<User> patch(User request, core.String enterpriseId, core.String collectionId, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (collectionId == null) {
      throw new core.ArgumentError("Parameter collectionId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/collections/' + commons.Escaper.ecapeVariable('$collectionId') + '/users/' + commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new User.fromJson(data));
  }

  /**
   * Adds the user to the list of those specifically allowed to see the
   * collection. If the collection's visibility is set to viewersOnly then only
   * such users will see the collection.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [collectionId] - The ID of the collection.
   *
   * [userId] - The ID of the user.
   *
   * Completes with a [User].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<User> update(User request, core.String enterpriseId, core.String collectionId, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (collectionId == null) {
      throw new core.ArgumentError("Parameter collectionId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/collections/' + commons.Escaper.ecapeVariable('$collectionId') + '/users/' + commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new User.fromJson(data));
  }

}


class DevicesResourceApi {
  final commons.ApiRequester _requester;

  DevicesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the details of a device.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [userId] - The ID of the user.
   *
   * [deviceId] - The ID of the device.
   *
   * Completes with a [Device].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Device> get(core.String enterpriseId, core.String userId, core.String deviceId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/users/' + commons.Escaper.ecapeVariable('$userId') + '/devices/' + commons.Escaper.ecapeVariable('$deviceId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Device.fromJson(data));
  }

  /**
   * Retrieves whether a device is enabled or disabled for access by the user to
   * Google services. The device state takes effect only if enforcing EMM
   * policies on Android devices is enabled in the Google Admin Console.
   * Otherwise, the device state is ignored and all devices are allowed access
   * to Google services.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [userId] - The ID of the user.
   *
   * [deviceId] - The ID of the device.
   *
   * Completes with a [DeviceState].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<DeviceState> getState(core.String enterpriseId, core.String userId, core.String deviceId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/users/' + commons.Escaper.ecapeVariable('$userId') + '/devices/' + commons.Escaper.ecapeVariable('$deviceId') + '/state';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DeviceState.fromJson(data));
  }

  /**
   * Retrieves the IDs of all of a user's devices.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [userId] - The ID of the user.
   *
   * Completes with a [DevicesListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<DevicesListResponse> list(core.String enterpriseId, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/users/' + commons.Escaper.ecapeVariable('$userId') + '/devices';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DevicesListResponse.fromJson(data));
  }

  /**
   * Sets whether a device is enabled or disabled for access by the user to
   * Google services. The device state takes effect only if enforcing EMM
   * policies on Android devices is enabled in the Google Admin Console.
   * Otherwise, the device state is ignored and all devices are allowed access
   * to Google services.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [userId] - The ID of the user.
   *
   * [deviceId] - The ID of the device.
   *
   * Completes with a [DeviceState].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<DeviceState> setState(DeviceState request, core.String enterpriseId, core.String userId, core.String deviceId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
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

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/users/' + commons.Escaper.ecapeVariable('$userId') + '/devices/' + commons.Escaper.ecapeVariable('$deviceId') + '/state';

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DeviceState.fromJson(data));
  }

}


class EnterprisesResourceApi {
  final commons.ApiRequester _requester;

  EnterprisesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the binding between the MDM and enterprise. This is now deprecated;
   * use this to unenroll customers that were previously enrolled with the
   * 'insert' call, then enroll them again with the 'enroll' call.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future delete(core.String enterpriseId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }

    _downloadOptions = null;

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Enrolls an enterprise with the calling MDM.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [token] - The token provided by the enterprise to register the MDM.
   *
   * Completes with a [Enterprise].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Enterprise> enroll(Enterprise request, core.String token) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (token == null) {
      throw new core.ArgumentError("Parameter token is required.");
    }
    _queryParams["token"] = [token];

    _url = 'enterprises/enroll';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Enterprise.fromJson(data));
  }

  /**
   * Retrieves the name and domain of an enterprise.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * Completes with a [Enterprise].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Enterprise> get(core.String enterpriseId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Enterprise.fromJson(data));
  }

  /**
   * Establishes the binding between the MDM and an enterprise. This is now
   * deprecated; use enroll instead.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [token] - The token provided by the enterprise to register the MDM.
   *
   * Completes with a [Enterprise].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Enterprise> insert(Enterprise request, core.String token) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (token == null) {
      throw new core.ArgumentError("Parameter token is required.");
    }
    _queryParams["token"] = [token];

    _url = 'enterprises';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Enterprise.fromJson(data));
  }

  /**
   * Looks up an enterprise by domain name.
   *
   * Request parameters:
   *
   * [domain] - The exact primary domain name of the enterprise to look up.
   *
   * Completes with a [EnterprisesListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<EnterprisesListResponse> list(core.String domain) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (domain == null) {
      throw new core.ArgumentError("Parameter domain is required.");
    }
    _queryParams["domain"] = [domain];

    _url = 'enterprises';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new EnterprisesListResponse.fromJson(data));
  }

  /**
   * Sends a test push notification to validate the MDM integration with the
   * Google Cloud Pubsub service for this enterprise.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * Completes with a [EnterprisesSendTestPushNotificationResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<EnterprisesSendTestPushNotificationResponse> sendTestPushNotification(core.String enterpriseId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/sendTestPushNotification';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new EnterprisesSendTestPushNotificationResponse.fromJson(data));
  }

  /**
   * Set the account that will be used to authenticate to the API as the
   * enterprise.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * Completes with a [EnterpriseAccount].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<EnterpriseAccount> setAccount(EnterpriseAccount request, core.String enterpriseId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/account';

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new EnterpriseAccount.fromJson(data));
  }

  /**
   * Unenrolls an enterprise from the calling MDM.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future unenroll(core.String enterpriseId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }

    _downloadOptions = null;

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/unenroll';

    var _response = _requester.request(_url,
                                       "POST",
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

  EntitlementsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Removes an entitlement to an app for a user and uninstalls it.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [userId] - The ID of the user.
   *
   * [entitlementId] - The ID of the entitlement, e.g.
   * "app:com.google.android.gm".
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future delete(core.String enterpriseId, core.String userId, core.String entitlementId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (entitlementId == null) {
      throw new core.ArgumentError("Parameter entitlementId is required.");
    }

    _downloadOptions = null;

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/users/' + commons.Escaper.ecapeVariable('$userId') + '/entitlements/' + commons.Escaper.ecapeVariable('$entitlementId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Retrieves details of an entitlement.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [userId] - The ID of the user.
   *
   * [entitlementId] - The ID of the entitlement, e.g.
   * "app:com.google.android.gm".
   *
   * Completes with a [Entitlement].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Entitlement> get(core.String enterpriseId, core.String userId, core.String entitlementId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (entitlementId == null) {
      throw new core.ArgumentError("Parameter entitlementId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/users/' + commons.Escaper.ecapeVariable('$userId') + '/entitlements/' + commons.Escaper.ecapeVariable('$entitlementId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Entitlement.fromJson(data));
  }

  /**
   * List of all entitlements for the specified user. Only the ID is set.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [userId] - The ID of the user.
   *
   * Completes with a [EntitlementsListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<EntitlementsListResponse> list(core.String enterpriseId, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/users/' + commons.Escaper.ecapeVariable('$userId') + '/entitlements';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new EntitlementsListResponse.fromJson(data));
  }

  /**
   * Adds or updates an entitlement to an app for a user. This method supports
   * patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [userId] - The ID of the user.
   *
   * [entitlementId] - The ID of the entitlement, e.g.
   * "app:com.google.android.gm".
   *
   * [install] - Set to true to also install the product on all the user's
   * devices where possible. Failure to install on one or more devices will not
   * prevent this operation from returning successfully, as long as the
   * entitlement was successfully assigned to the user.
   *
   * Completes with a [Entitlement].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Entitlement> patch(Entitlement request, core.String enterpriseId, core.String userId, core.String entitlementId, {core.bool install}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
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

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/users/' + commons.Escaper.ecapeVariable('$userId') + '/entitlements/' + commons.Escaper.ecapeVariable('$entitlementId');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Entitlement.fromJson(data));
  }

  /**
   * Adds or updates an entitlement to an app for a user.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [userId] - The ID of the user.
   *
   * [entitlementId] - The ID of the entitlement, e.g.
   * "app:com.google.android.gm".
   *
   * [install] - Set to true to also install the product on all the user's
   * devices where possible. Failure to install on one or more devices will not
   * prevent this operation from returning successfully, as long as the
   * entitlement was successfully assigned to the user.
   *
   * Completes with a [Entitlement].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Entitlement> update(Entitlement request, core.String enterpriseId, core.String userId, core.String entitlementId, {core.bool install}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
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

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/users/' + commons.Escaper.ecapeVariable('$userId') + '/entitlements/' + commons.Escaper.ecapeVariable('$entitlementId');

    var _response = _requester.request(_url,
                                       "PUT",
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

  GrouplicensesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves details of an enterprise's group license for a product.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [groupLicenseId] - The ID of the product the group license is for, e.g.
   * "app:com.google.android.gm".
   *
   * Completes with a [GroupLicense].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<GroupLicense> get(core.String enterpriseId, core.String groupLicenseId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (groupLicenseId == null) {
      throw new core.ArgumentError("Parameter groupLicenseId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/groupLicenses/' + commons.Escaper.ecapeVariable('$groupLicenseId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new GroupLicense.fromJson(data));
  }

  /**
   * Retrieves IDs of all products for which the enterprise has a group license.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * Completes with a [GroupLicensesListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<GroupLicensesListResponse> list(core.String enterpriseId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/groupLicenses';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new GroupLicensesListResponse.fromJson(data));
  }

}


class GrouplicenseusersResourceApi {
  final commons.ApiRequester _requester;

  GrouplicenseusersResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the IDs of the users who have been granted entitlements under the
   * license.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [groupLicenseId] - The ID of the product the group license is for, e.g.
   * "app:com.google.android.gm".
   *
   * Completes with a [GroupLicenseUsersListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<GroupLicenseUsersListResponse> list(core.String enterpriseId, core.String groupLicenseId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (groupLicenseId == null) {
      throw new core.ArgumentError("Parameter groupLicenseId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/groupLicenses/' + commons.Escaper.ecapeVariable('$groupLicenseId') + '/users';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new GroupLicenseUsersListResponse.fromJson(data));
  }

}


class InstallsResourceApi {
  final commons.ApiRequester _requester;

  InstallsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Requests to remove an app from a device. A call to get or list will still
   * show the app as installed on the device until it is actually removed.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [userId] - The ID of the user.
   *
   * [deviceId] - The Android ID of the device.
   *
   * [installId] - The ID of the product represented by the install, e.g.
   * "app:com.google.android.gm".
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future delete(core.String enterpriseId, core.String userId, core.String deviceId, core.String installId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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

    _downloadOptions = null;

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/users/' + commons.Escaper.ecapeVariable('$userId') + '/devices/' + commons.Escaper.ecapeVariable('$deviceId') + '/installs/' + commons.Escaper.ecapeVariable('$installId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Retrieves details of an installation of an app on a device.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [userId] - The ID of the user.
   *
   * [deviceId] - The Android ID of the device.
   *
   * [installId] - The ID of the product represented by the install, e.g.
   * "app:com.google.android.gm".
   *
   * Completes with a [Install].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Install> get(core.String enterpriseId, core.String userId, core.String deviceId, core.String installId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/users/' + commons.Escaper.ecapeVariable('$userId') + '/devices/' + commons.Escaper.ecapeVariable('$deviceId') + '/installs/' + commons.Escaper.ecapeVariable('$installId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Install.fromJson(data));
  }

  /**
   * Retrieves the details of all apps installed on the specified device.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [userId] - The ID of the user.
   *
   * [deviceId] - The Android ID of the device.
   *
   * Completes with a [InstallsListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<InstallsListResponse> list(core.String enterpriseId, core.String userId, core.String deviceId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/users/' + commons.Escaper.ecapeVariable('$userId') + '/devices/' + commons.Escaper.ecapeVariable('$deviceId') + '/installs';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InstallsListResponse.fromJson(data));
  }

  /**
   * Requests to install the latest version of an app to a device. If the app is
   * already installed then it is updated to the latest version if necessary.
   * This method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [userId] - The ID of the user.
   *
   * [deviceId] - The Android ID of the device.
   *
   * [installId] - The ID of the product represented by the install, e.g.
   * "app:com.google.android.gm".
   *
   * Completes with a [Install].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Install> patch(Install request, core.String enterpriseId, core.String userId, core.String deviceId, core.String installId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
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

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/users/' + commons.Escaper.ecapeVariable('$userId') + '/devices/' + commons.Escaper.ecapeVariable('$deviceId') + '/installs/' + commons.Escaper.ecapeVariable('$installId');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Install.fromJson(data));
  }

  /**
   * Requests to install the latest version of an app to a device. If the app is
   * already installed then it is updated to the latest version if necessary.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [userId] - The ID of the user.
   *
   * [deviceId] - The Android ID of the device.
   *
   * [installId] - The ID of the product represented by the install, e.g.
   * "app:com.google.android.gm".
   *
   * Completes with a [Install].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Install> update(Install request, core.String enterpriseId, core.String userId, core.String deviceId, core.String installId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
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

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/users/' + commons.Escaper.ecapeVariable('$userId') + '/devices/' + commons.Escaper.ecapeVariable('$deviceId') + '/installs/' + commons.Escaper.ecapeVariable('$installId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Install.fromJson(data));
  }

}


class PermissionsResourceApi {
  final commons.ApiRequester _requester;

  PermissionsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves details of an Android app permission for display to an enterprise
   * admin.
   *
   * Request parameters:
   *
   * [permissionId] - The ID of the permission.
   *
   * [language] - The BCP47 tag for the user's preferred language (e.g. "en-US",
   * "de")
   *
   * Completes with a [Permission].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Permission> get(core.String permissionId, {core.String language}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (permissionId == null) {
      throw new core.ArgumentError("Parameter permissionId is required.");
    }
    if (language != null) {
      _queryParams["language"] = [language];
    }

    _url = 'permissions/' + commons.Escaper.ecapeVariable('$permissionId');

    var _response = _requester.request(_url,
                                       "GET",
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

  ProductsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Approves the specified product (and the relevant app permissions, if any).
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [productId] - The ID of the product.
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future approve(ProductsApproveRequest request, core.String enterpriseId, core.String productId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (productId == null) {
      throw new core.ArgumentError("Parameter productId is required.");
    }

    _downloadOptions = null;

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/products/' + commons.Escaper.ecapeVariable('$productId') + '/approve';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Generates a URL that can be rendered in an iframe to display the
   * permissions (if any) of a product. An enterprise admin must view these
   * permissions and accept them on behalf of their organization in order to
   * approve that product.
   *
   * Admins should accept the displayed permissions by interacting with a
   * separate UI element in the EMM console, which in turn should trigger the
   * use of this URL as the approvalUrlInfo.approvalUrl property in a
   * Products.approve call to approve the product. This URL can only be used to
   * display permissions for up to 1 day.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [productId] - The ID of the product.
   *
   * [languageCode] - The BCP 47 language code used for permission names and
   * descriptions in the returned iframe, for instance "en-US".
   *
   * Completes with a [ProductsGenerateApprovalUrlResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ProductsGenerateApprovalUrlResponse> generateApprovalUrl(core.String enterpriseId, core.String productId, {core.String languageCode}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (productId == null) {
      throw new core.ArgumentError("Parameter productId is required.");
    }
    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/products/' + commons.Escaper.ecapeVariable('$productId') + '/generateApprovalUrl';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ProductsGenerateApprovalUrlResponse.fromJson(data));
  }

  /**
   * Retrieves details of a product for display to an enterprise admin.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [productId] - The ID of the product, e.g. "app:com.google.android.gm".
   *
   * [language] - The BCP47 tag for the user's preferred language (e.g. "en-US",
   * "de").
   *
   * Completes with a [Product].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Product> get(core.String enterpriseId, core.String productId, {core.String language}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (productId == null) {
      throw new core.ArgumentError("Parameter productId is required.");
    }
    if (language != null) {
      _queryParams["language"] = [language];
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/products/' + commons.Escaper.ecapeVariable('$productId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Product.fromJson(data));
  }

  /**
   * Retrieves the schema defining app restrictions configurable for this
   * product. All products have a schema, but this may be empty if no app
   * restrictions are defined.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [productId] - The ID of the product.
   *
   * [language] - The BCP47 tag for the user's preferred language (e.g. "en-US",
   * "de").
   *
   * Completes with a [AppRestrictionsSchema].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<AppRestrictionsSchema> getAppRestrictionsSchema(core.String enterpriseId, core.String productId, {core.String language}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (productId == null) {
      throw new core.ArgumentError("Parameter productId is required.");
    }
    if (language != null) {
      _queryParams["language"] = [language];
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/products/' + commons.Escaper.ecapeVariable('$productId') + '/appRestrictionsSchema';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AppRestrictionsSchema.fromJson(data));
  }

  /**
   * Retrieves the Android app permissions required by this app.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [productId] - The ID of the product.
   *
   * Completes with a [ProductPermissions].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ProductPermissions> getPermissions(core.String enterpriseId, core.String productId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (productId == null) {
      throw new core.ArgumentError("Parameter productId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/products/' + commons.Escaper.ecapeVariable('$productId') + '/permissions';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ProductPermissions.fromJson(data));
  }

  /**
   * Updates the set of Android app permissions for this app that have been
   * accepted by the enterprise.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [productId] - The ID of the product.
   *
   * Completes with a [ProductPermissions].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ProductPermissions> updatePermissions(ProductPermissions request, core.String enterpriseId, core.String productId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (productId == null) {
      throw new core.ArgumentError("Parameter productId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/products/' + commons.Escaper.ecapeVariable('$productId') + '/permissions';

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ProductPermissions.fromJson(data));
  }

}


class UsersResourceApi {
  final commons.ApiRequester _requester;

  UsersResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Generates a token (activation code) to allow this user to configure their
   * work account in the Android Setup Wizard. Revokes any previously generated
   * token.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [userId] - The ID of the user.
   *
   * Completes with a [UserToken].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<UserToken> generateToken(core.String enterpriseId, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/users/' + commons.Escaper.ecapeVariable('$userId') + '/token';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new UserToken.fromJson(data));
  }

  /**
   * Retrieves a user's details.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [userId] - The ID of the user.
   *
   * Completes with a [User].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<User> get(core.String enterpriseId, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/users/' + commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new User.fromJson(data));
  }

  /**
   * Retrieves the set of products a user is entitled to access.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [userId] - The ID of the user.
   *
   * Completes with a [ProductSet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ProductSet> getAvailableProductSet(core.String enterpriseId, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/users/' + commons.Escaper.ecapeVariable('$userId') + '/availableProductSet';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ProductSet.fromJson(data));
  }

  /**
   * Looks up a user by email address.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [email] - The exact primary email address of the user to look up.
   *
   * Completes with a [UsersListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<UsersListResponse> list(core.String enterpriseId, core.String email) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (email == null) {
      throw new core.ArgumentError("Parameter email is required.");
    }
    _queryParams["email"] = [email];

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/users';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new UsersListResponse.fromJson(data));
  }

  /**
   * Revokes a previously generated token (activation code) for the user.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [userId] - The ID of the user.
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future revokeToken(core.String enterpriseId, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _downloadOptions = null;

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/users/' + commons.Escaper.ecapeVariable('$userId') + '/token';

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Modifies the set of products a user is entitled to access.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [enterpriseId] - The ID of the enterprise.
   *
   * [userId] - The ID of the user.
   *
   * Completes with a [ProductSet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ProductSet> setAvailableProductSet(ProductSet request, core.String enterpriseId, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (enterpriseId == null) {
      throw new core.ArgumentError("Parameter enterpriseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _url = 'enterprises/' + commons.Escaper.ecapeVariable('$enterpriseId') + '/users/' + commons.Escaper.ecapeVariable('$userId') + '/availableProductSet';

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ProductSet.fromJson(data));
  }

}



/**
 * Represents the list of app restrictions available to be pre-configured for
 * the product.
 */
class AppRestrictionsSchema {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#appRestrictionsSchema".
   */
  core.String kind;
  /** The set of restrictions that make up this schema. */
  core.List<AppRestrictionsSchemaRestriction> restrictions;

  AppRestrictionsSchema();

  AppRestrictionsSchema.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("restrictions")) {
      restrictions = _json["restrictions"].map((value) => new AppRestrictionsSchemaRestriction.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (restrictions != null) {
      _json["restrictions"] = restrictions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/**
 * A restriction in the App Restriction Schema represents a piece of
 * configuration that may be pre-applied.
 */
class AppRestrictionsSchemaRestriction {
  /** The default value of the restriction. */
  AppRestrictionsSchemaRestrictionRestrictionValue defaultValue;
  /**
   * A longer description of the restriction, giving more detail of what it
   * affects.
   */
  core.String description;
  /**
   * For choice or multiselect restrictions, the list of possible entries'
   * human-readable names.
   */
  core.List<core.String> entry;
  /**
   * For choice or multiselect restrictions, the list of possible entries'
   * machine-readable values.
   */
  core.List<core.String> entryValue;
  /**
   * The unique key that the product uses to identify the restriction, e.g.
   * "com.google.android.gm.fieldname".
   */
  core.String key;
  /** The type of the restriction. */
  core.String restrictionType;
  /** The name of the restriction. */
  core.String title;

  AppRestrictionsSchemaRestriction();

  AppRestrictionsSchemaRestriction.fromJson(core.Map _json) {
    if (_json.containsKey("defaultValue")) {
      defaultValue = new AppRestrictionsSchemaRestrictionRestrictionValue.fromJson(_json["defaultValue"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("entry")) {
      entry = _json["entry"];
    }
    if (_json.containsKey("entryValue")) {
      entryValue = _json["entryValue"];
    }
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("restrictionType")) {
      restrictionType = _json["restrictionType"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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
    if (restrictionType != null) {
      _json["restrictionType"] = restrictionType;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/** A typed value for the restriction. */
class AppRestrictionsSchemaRestrictionRestrictionValue {
  /** The type of the value being provided. */
  core.String type;
  /** The boolean value - this will only be present if type is bool. */
  core.bool valueBool;
  /** The integer value - this will only be present if type is integer. */
  core.int valueInteger;
  /**
   * The list of string values - this will only be present if type is
   * multiselect.
   */
  core.List<core.String> valueMultiselect;
  /**
   * The string value - this will be present for types string, choice and
   * hidden.
   */
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
      valueMultiselect = _json["valueMultiselect"];
    }
    if (_json.containsKey("valueString")) {
      valueString = _json["valueString"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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

/** This represents a single version of the app. */
class AppVersion {
  /** Unique increasing identifier for the app version. */
  core.int versionCode;
  /**
   * The string used in the Play Store by the app developer to identify the
   * version. The string is not necessarily unique or localized (for example,
   * the string could be "1.4").
   */
  core.String versionString;

  AppVersion();

  AppVersion.fromJson(core.Map _json) {
    if (_json.containsKey("versionCode")) {
      versionCode = _json["versionCode"];
    }
    if (_json.containsKey("versionString")) {
      versionString = _json["versionString"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (versionCode != null) {
      _json["versionCode"] = versionCode;
    }
    if (versionString != null) {
      _json["versionString"] = versionString;
    }
    return _json;
  }
}

/** Information on an approval URL. */
class ApprovalUrlInfo {
  /**
   * A URL that displays a product's permissions and that can also be used to
   * approve the product with the Products.approve call.
   */
  core.String approvalUrl;
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#approvalUrlInfo".
   */
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

  core.Map toJson() {
    var _json = new core.Map();
    if (approvalUrl != null) {
      _json["approvalUrl"] = approvalUrl;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/**
 * A collection resource defines a named set of apps that is visible to a set of
 * users in the Google Play Store app running on those users' managed devices.
 * Those users can then install any of those apps if they wish (which will
 * trigger creation of install and entitlement resources). A user cannot install
 * an app on a managed device unless the app is listed in at least one
 * collection that is visible to that user.
 *
 * Note that the API can be used to directly install an app regardless of
 * whether it is in any collection - so an enterprise has a choice of either
 * directly pushing apps to users, or allowing users to install apps if they
 * want. Which is appropriate will depend on the enterprise's policies and the
 * purpose of the apps concerned.
 */
class Collection {
  /** Arbitrary unique ID, allocated by the API on creation. */
  core.String collectionId;
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#collection".
   */
  core.String kind;
  /**
   * A user-friendly name for the collection (should be unique), e.g.
   * "Accounting apps".
   */
  core.String name;
  /**
   * The IDs of the products in the collection, in the order in which they
   * should be displayed.
   */
  core.List<core.String> productId;
  /**
   * Whether this collection is visible to all users, or only to the users that
   * have been granted access through the "Collectionviewers" API. With the
   * launch of the "setAvailableProductSet" API, this property should always be
   * set to "viewersOnly", as the "allUsers" option will bypass the
   * "availableProductSet" for all users within a domain.
   *
   * The "allUsers" setting is deprecated, and will be removed.
   */
  core.String visibility;

  Collection();

  Collection.fromJson(core.Map _json) {
    if (_json.containsKey("collectionId")) {
      collectionId = _json["collectionId"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
    if (_json.containsKey("visibility")) {
      visibility = _json["visibility"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (collectionId != null) {
      _json["collectionId"] = collectionId;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    if (visibility != null) {
      _json["visibility"] = visibility;
    }
    return _json;
  }
}

/** The user resources for the collection. */
class CollectionViewersListResponse {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#collectionViewersListResponse".
   */
  core.String kind;
  /** A user of an enterprise. */
  core.List<User> user;

  CollectionViewersListResponse();

  CollectionViewersListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("user")) {
      user = _json["user"].map((value) => new User.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (user != null) {
      _json["user"] = user.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** The collection resources for the enterprise. */
class CollectionsListResponse {
  /**
   * An ordered collection of products which can be made visible on the Google
   * Play Store to a selected group of users.
   */
  core.List<Collection> collection;
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#collectionsListResponse".
   */
  core.String kind;

  CollectionsListResponse();

  CollectionsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("collection")) {
      collection = _json["collection"].map((value) => new Collection.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (collection != null) {
      _json["collection"] = collection.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/**
 * A device resource represents a mobile device managed by the MDM and belonging
 * to a specific enterprise user.
 *
 * This collection cannot be modified via the API; it is automatically populated
 * as devices are set up to be managed.
 */
class Device {
  /**
   * The Google Play Services Android ID for the device encoded as a lowercase
   * hex string, e.g. "123456789abcdef0".
   */
  core.String androidId;
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#device".
   */
  core.String kind;
  /**
   * The mechanism by which this device is managed by the MDM. "managedDevice"
   * means that the MDM's app is a device owner. "managedProfile" means that the
   * MDM's app is the profile owner (and there is a separate personal profile
   * which is not managed). "containerApp" means that the MDM's app is managing
   * the Android for Work container app on the device.
   */
  core.String managementType;

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
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (androidId != null) {
      _json["androidId"] = androidId;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (managementType != null) {
      _json["managementType"] = managementType;
    }
    return _json;
  }
}

/**
 * The state of a user's device, as accessed by the getState and setState
 * methods on device resources.
 */
class DeviceState {
  /**
   * The state of the Google account on the device. "enabled" indicates that the
   * Google account on the device can be used to access Google services
   * (including Google Play), while "disabled" means that it cannot. A new
   * device is initially in the "disabled" state.
   */
  core.String accountState;
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#deviceState".
   */
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

  core.Map toJson() {
    var _json = new core.Map();
    if (accountState != null) {
      _json["accountState"] = accountState;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/** The device resources for the user. */
class DevicesListResponse {
  /** A managed device. */
  core.List<Device> device;
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#devicesListResponse".
   */
  core.String kind;

  DevicesListResponse();

  DevicesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("device")) {
      device = _json["device"].map((value) => new Device.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (device != null) {
      _json["device"] = device.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/**
 * An enterprise resource represents a binding between an organisation and their
 * MDM.
 *
 * To create an enterprise, an admin of the enterprise must first go through a
 * Play for Work sign-up flow. At the end of this the admin will be presented
 * with a token (a short opaque alphanumeric string). They must then present
 * this to the MDM, who then supplies it to the enroll method. Until this is
 * done the MDM will not have any access to the enterprise.
 *
 * After calling enroll the MDM should call setAccount to specify the service
 * account that will be allowed to act on behalf of the enterprise, which will
 * be required for access to the enterprise's data through this API. Only one
 * call of setAccount is allowed for a given enterprise; the only way to change
 * the account later is to unenroll the enterprise and enroll it again
 * (obtaining a new token).
 *
 * The MDM can unenroll an enterprise in order to sever the binding between
 * them. Re-enrolling an enterprise is possible, but requires a new token to be
 * retrieved. Enterprises.unenroll requires the MDM's credentials (as enroll
 * does), not the enterprise's. Enterprises.unenroll can only be used for
 * enterprises that were previously enrolled with the enroll call. Any
 * enterprises that were enrolled using the (deprecated) Enterprises.insert call
 * must be unenrolled with Enterprises.delete and can then be re-enrolled using
 * the Enterprises.enroll call.
 *
 * The ID for an enterprise is an opaque string. It is returned by insert and
 * enroll and can also be retrieved if the enterprise's primary domain is known
 * using the list method.
 */
class Enterprise {
  /** The unique ID for the enterprise. */
  core.String id;
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#enterprise".
   */
  core.String kind;
  /** The name of the enterprise, e.g. "Example Inc". */
  core.String name;
  /** The enterprise's primary domain, e.g. "example.com". */
  core.String primaryDomain;

  Enterprise();

  Enterprise.fromJson(core.Map _json) {
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

  core.Map toJson() {
    var _json = new core.Map();
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

/**
 * A service account that can be used to authenticate as the enterprise to API
 * calls that require such authentication.
 */
class EnterpriseAccount {
  /** The email address of the service account. */
  core.String accountEmail;
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#enterpriseAccount".
   */
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

  core.Map toJson() {
    var _json = new core.Map();
    if (accountEmail != null) {
      _json["accountEmail"] = accountEmail;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/** The matching enterprise resources. */
class EnterprisesListResponse {
  /** An enterprise. */
  core.List<Enterprise> enterprise;
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#enterprisesListResponse".
   */
  core.String kind;

  EnterprisesListResponse();

  EnterprisesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("enterprise")) {
      enterprise = _json["enterprise"].map((value) => new Enterprise.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (enterprise != null) {
      _json["enterprise"] = enterprise.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

class EnterprisesSendTestPushNotificationResponse {
  /** The message ID of the test push notification that was sent. */
  core.String messageId;
  /**
   * The name of the Cloud Pubsub topic to which notifications for this
   * enterprise's enrolled account will be sent.
   */
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

  core.Map toJson() {
    var _json = new core.Map();
    if (messageId != null) {
      _json["messageId"] = messageId;
    }
    if (topicName != null) {
      _json["topicName"] = topicName;
    }
    return _json;
  }
}

/**
 * The existence of an entitlement resource means that a user has the right to
 * use a particular app on any of their devices. This might be because the app
 * is free or because they have been allocated a license to the app from a group
 * license purchased by the enterprise.
 *
 * It should always be true that a user has an app installed on one of their
 * devices only if they have an entitlement to it. So if an entitlement is
 * deleted, the app will be uninstalled from all devices. Similarly if the user
 * installs an app (and is permitted to do so), or the MDM triggers an install
 * of the app, an entitlement to that app is automatically created. If this is
 * impossible - e.g. the enterprise has not purchased sufficient licenses - then
 * installation fails.
 *
 * Note that entitlements are always user specific, not device specific; a user
 * may have an entitlement even though they have not installed the app anywhere.
 * Once they have an entitlement they can install the app on multiple devices.
 *
 * The API can be used to create an entitlement. If the app is a free app, a
 * group license for that app is created. If it's a paid app, creating the
 * entitlement consumes one license; it remains consumed until the entitlement
 * is removed. Optionally an installation of the app on all the user's managed
 * devices can be triggered at the time the entitlement is created. An
 * entitlement cannot be created for an app if the app requires permissions that
 * the enterprise has not yet accepted.
 *
 * Entitlements for paid apps that are due to purchases by the user on a
 * non-managed profile will have "userPurchase" as entitlement reason; those
 * entitlements cannot be removed via the API.
 */
class Entitlement {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#entitlement".
   */
  core.String kind;
  /**
   * The ID of the product that the entitlement is for, e.g.
   * "app:com.google.android.gm".
   */
  core.String productId;
  /**
   * The reason for the entitlement, e.g. "free" for free apps. This is
   * temporary, it will be replaced by the acquisition kind field of group
   * licenses.
   */
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

  core.Map toJson() {
    var _json = new core.Map();
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

/** The entitlement resources for the user. */
class EntitlementsListResponse {
  /**
   * An entitlement of a user to a product (e.g. an app). For example, a free
   * app that they have installed, or a paid app that they have been allocated a
   * license to.
   */
  core.List<Entitlement> entitlement;
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#entitlementsListResponse".
   */
  core.String kind;

  EntitlementsListResponse();

  EntitlementsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("entitlement")) {
      entitlement = _json["entitlement"].map((value) => new Entitlement.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entitlement != null) {
      _json["entitlement"] = entitlement.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/**
 * A group license object indicates a product that an enterprise admin has
 * approved for use in the enterprise. The product may be free or paid. For free
 * products, a group license object is created in these cases: if the enterprise
 * admin approves a product in Google Play, if the product is added to a
 * collection, or if an entitlement for the product is created for a user via
 * the API. For paid products, a group license object is only created as part of
 * the first bulk purchase of that product in Google Play by the enterprise
 * admin.
 *
 * The API can be used to query group licenses; the available information
 * includes the total number of licenses purchased (for paid products) and the
 * total number of licenses that have been provisioned, that is, the total
 * number of user entitlements in existence for the product.
 *
 * Group license objects are never deleted. If, for example, a free app is added
 * to a collection and then removed, the group license will remain, allowing the
 * enterprise admin to keep track of any remaining entitlements. An enterprise
 * admin may indicate they are no longer interested in the group license by
 * marking it as unapproved in Google Play.
 */
class GroupLicense {
  /**
   * How this group license was acquired. "bulkPurchase" means that this group
   * license object was created because the enterprise purchased licenses for
   * this product; this is "free" otherwise (for free products).
   */
  core.String acquisitionKind;
  /**
   * Whether the product to which this group license relates is currently
   * approved by the enterprise, as either "approved" or "unapproved". Products
   * are approved when a group license is first created, but this approval may
   * be revoked by an enterprise admin via Google Play. Unapproved products will
   * not be visible to end users in collections and new entitlements to them
   * should not normally be created.
   */
  core.String approval;
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#groupLicense".
   */
  core.String kind;
  /**
   * The total number of provisioned licenses for this product. Returned by read
   * operations, but ignored in write operations.
   */
  core.int numProvisioned;
  /**
   * The number of purchased licenses (possibly in multiple purchases). If this
   * field is omitted then there is no limit on the number of licenses that can
   * be provisioned (e.g. if the acquisition kind is "free").
   */
  core.int numPurchased;
  /**
   * The ID of the product that the license is for, e.g.
   * "app:com.google.android.gm".
   */
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
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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
    if (productId != null) {
      _json["productId"] = productId;
    }
    return _json;
  }
}

/** The user resources for the group license. */
class GroupLicenseUsersListResponse {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#groupLicenseUsersListResponse".
   */
  core.String kind;
  /** A user of an enterprise. */
  core.List<User> user;

  GroupLicenseUsersListResponse();

  GroupLicenseUsersListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("user")) {
      user = _json["user"].map((value) => new User.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (user != null) {
      _json["user"] = user.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** The grouplicense resources for the enterprise. */
class GroupLicensesListResponse {
  /** A group license for a product approved for use in the enterprise. */
  core.List<GroupLicense> groupLicense;
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#groupLicensesListResponse".
   */
  core.String kind;

  GroupLicensesListResponse();

  GroupLicensesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("groupLicense")) {
      groupLicense = _json["groupLicense"].map((value) => new GroupLicense.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (groupLicense != null) {
      _json["groupLicense"] = groupLicense.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/**
 * The existence of an install resource indicates that an app is installed on a
 * particular device (or that an install is pending).
 *
 * The API can be used to create an install resource using the update method.
 * This triggers the actual install of the app on the device. If the user does
 * not already have an entitlement for the app then an attempt is made to create
 * one. If this fails (e.g. because the app is not free and there is no
 * available license) then the creation of the install fails.
 *
 * The API can also be used to update an installed app. If the update method is
 * used on an existing install then the app will be updated to the latest
 * available version.
 *
 * Note that it is not possible to force the installation of a specific version
 * of an app; the version code is read-only.
 *
 * If a user installs an app themselves (as permitted by the enterprise), then
 * again an install resource and possibly an entitlement resource are
 * automatically created.
 *
 * The API can also be used to delete an install resource, which triggers the
 * removal of the app from the device. Note that deleting an install does not
 * automatically remove the corresponding entitlement, even if there are no
 * remaining installs. The install resource will also be deleted if the user
 * uninstalls the app themselves.
 */
class Install {
  /**
   * Install state. The state "installPending" means that an install request has
   * recently been made and download to the device is in progress. The state
   * "installed" means that the app has been installed. This field is read-only.
   */
  core.String installState;
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#install".
   */
  core.String kind;
  /**
   * The ID of the product that the install is for, e.g.
   * "app:com.google.android.gm".
   */
  core.String productId;
  /**
   * The version of the installed product. Guaranteed to be set only if the
   * install state is "installed".
   */
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

  core.Map toJson() {
    var _json = new core.Map();
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

/** The install resources for the device. */
class InstallsListResponse {
  /**
   * An installation of an app for a user on a specific device. The existence of
   * an install implies that the user must have an entitlement to the app.
   */
  core.List<Install> install;
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#installsListResponse".
   */
  core.String kind;

  InstallsListResponse();

  InstallsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("install")) {
      install = _json["install"].map((value) => new Install.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (install != null) {
      _json["install"] = install.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/**
 * A permission represents some extra capability, to be granted to an Android
 * app, which requires explicit consent. An enterprise admin must consent to
 * these permissions on behalf of their users before an entitlement for the app
 * can be created.
 *
 * The permissions collection is read-only. The information provided for each
 * permission (localized name and description) is intended to be used in the MDM
 * user interface when obtaining consent from the enterprise.
 */
class Permission {
  /**
   * A longer description of the permissions giving more details of what it
   * affects.
   */
  core.String description;
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#permission".
   */
  core.String kind;
  /** The name of the permission. */
  core.String name;
  /** An opaque string uniquely identifying the permission. */
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

  core.Map toJson() {
    var _json = new core.Map();
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

/**
 * A product represents an app in the Google Play Store that is available to at
 * least some users in the enterprise. (Some apps are restricted to a single
 * enterprise, and no information about them is made available outside that
 * enterprise.)
 *
 * The information provided for each product (localized name, icon, link to the
 * full Google Play details page) is intended to allow a basic representation of
 * the product within an MDM user interface.
 */
class Product {
  /**
   * App versions currently available for this product. The returned list
   * contains only public versions. Alpha and beta versions are not included.
   */
  core.List<AppVersion> appVersion;
  /** The name of the author of the product (e.g. the app developer). */
  core.String authorName;
  /** A link to the (consumer) Google Play details page for the product. */
  core.String detailsUrl;
  /**
   * How and to whom the package is made available. The value publicGoogleHosted
   * means that the package is available through the Play Store and not
   * restricted to a specific enterprise. The value privateGoogleHosted means
   * that the package is a private app (restricted to an enterprise) but hosted
   * by Google. The value privateSelfHosted means that the package is a private
   * app (restricted to an enterprise) and is privately hosted.
   */
  core.String distributionChannel;
  /** A link to an image that can be used as an icon for the product. */
  core.String iconUrl;
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#product".
   */
  core.String kind;
  /**
   * A string of the form app:<package name>. For example,
   * app:com.google.android.gm represents the Gmail app.
   */
  core.String productId;
  /**
   * Whether this app can only be installed on devices using the Android for
   * Work container app.
   */
  core.bool requiresContainerApp;
  /** The name of the product. */
  core.String title;
  /**
   * A link to the Google Play for Work details page for the product, for use by
   * an Enterprise administrator.
   */
  core.String workDetailsUrl;

  Product();

  Product.fromJson(core.Map _json) {
    if (_json.containsKey("appVersion")) {
      appVersion = _json["appVersion"].map((value) => new AppVersion.fromJson(value)).toList();
    }
    if (_json.containsKey("authorName")) {
      authorName = _json["authorName"];
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
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
    if (_json.containsKey("requiresContainerApp")) {
      requiresContainerApp = _json["requiresContainerApp"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("workDetailsUrl")) {
      workDetailsUrl = _json["workDetailsUrl"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (appVersion != null) {
      _json["appVersion"] = appVersion.map((value) => (value).toJson()).toList();
    }
    if (authorName != null) {
      _json["authorName"] = authorName;
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
    if (productId != null) {
      _json["productId"] = productId;
    }
    if (requiresContainerApp != null) {
      _json["requiresContainerApp"] = requiresContainerApp;
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

/**
 * A product permissions resource represents the set of permissions required by
 * a specific app and whether or not they have been accepted by an enterprise
 * admin.
 *
 * The API can be used to read the set of permissions, and also to update the
 * set to indicate that permissions have been accepted.
 */
class ProductPermission {
  /** An opaque string uniquely identifying the permission. */
  core.String permissionId;
  /** Whether the permission has been accepted or not. */
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

  core.Map toJson() {
    var _json = new core.Map();
    if (permissionId != null) {
      _json["permissionId"] = permissionId;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/**
 * Information about the permissions required by a specific app and whether they
 * have been accepted by the enterprise.
 */
class ProductPermissions {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#productPermissions".
   */
  core.String kind;
  /** The permissions required by the app. */
  core.List<ProductPermission> permission;
  /**
   * The ID of the app that the permissions relate to, e.g.
   * "app:com.google.android.gm".
   */
  core.String productId;

  ProductPermissions();

  ProductPermissions.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("permission")) {
      permission = _json["permission"].map((value) => new ProductPermission.fromJson(value)).toList();
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (permission != null) {
      _json["permission"] = permission.map((value) => (value).toJson()).toList();
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    return _json;
  }
}

/** A set of products. */
class ProductSet {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#productSet".
   */
  core.String kind;
  /** The list of product IDs making up the set of products. */
  core.List<core.String> productId;

  ProductSet();

  ProductSet.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    return _json;
  }
}

class ProductsApproveRequest {
  /**
   * The approval URL that was shown to the user. Only the permissions shown to
   * the user with that URL will be accepted, which may not be the product's
   * entire set of permissions. For example, the URL may only display new
   * permissions from an update after the product was approved, or not include
   * new permissions if the product was updated since the URL was generated.
   */
  ApprovalUrlInfo approvalUrlInfo;

  ProductsApproveRequest();

  ProductsApproveRequest.fromJson(core.Map _json) {
    if (_json.containsKey("approvalUrlInfo")) {
      approvalUrlInfo = new ApprovalUrlInfo.fromJson(_json["approvalUrlInfo"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (approvalUrlInfo != null) {
      _json["approvalUrlInfo"] = (approvalUrlInfo).toJson();
    }
    return _json;
  }
}

class ProductsGenerateApprovalUrlResponse {
  /**
   * A URL that can be rendered in an iframe to display the permissions (if any)
   * of a product. This URL can be used to approve the product only once and
   * only within 24 hours of being generated, using the Products.approve call.
   * If the product is currently unapproved and has no permissions, this URL
   * will point to an empty page. If the product is currently approved, a URL
   * will only be generated if that product has added permissions since it was
   * last approved, and the URL will only display those new permissions that
   * have not yet been accepted.
   */
  core.String url;

  ProductsGenerateApprovalUrlResponse();

  ProductsGenerateApprovalUrlResponse.fromJson(core.Map _json) {
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/**
 * A user resource represents an individual user within the enterprise's domain.
 *
 * Note that each user is associated with a Google account based on the user's
 * corporate email address (which must be in one of the enterprise's domains).
 * As part of installing an MDM app to manage a device the Google account must
 * be provisioned to the device, and so the user resource must be created before
 * that. This can be done using the Google Admin SDK Directory API.
 *
 * The ID for a user is an opaque string. It can be retrieved using the list
 * method queried by the user's primary email address.
 */
class User {
  /** The unique ID for the user. */
  core.String id;
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#user".
   */
  core.String kind;
  /** The user's primary email, e.g. "jsmith@example.com". */
  core.String primaryEmail;

  User();

  User.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("primaryEmail")) {
      primaryEmail = _json["primaryEmail"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (primaryEmail != null) {
      _json["primaryEmail"] = primaryEmail;
    }
    return _json;
  }
}

/**
 * A UserToken is used by a user when setting up a managed device or profile
 * with their work account on a device. When the user enters their email address
 * and token (activation code) the appropriate MDM app can be automatically
 * downloaded.
 */
class UserToken {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#userToken".
   */
  core.String kind;
  /**
   * The token (activation code) to be entered by the user. This consists of a
   * sequence of decimal digits. Note that the leading digit may be 0.
   */
  core.String token;
  /** The unique ID for the user. */
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

  core.Map toJson() {
    var _json = new core.Map();
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

/** The matching user resources. */
class UsersListResponse {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidenterprise#usersListResponse".
   */
  core.String kind;
  /** A user of an enterprise. */
  core.List<User> user;

  UsersListResponse();

  UsersListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("user")) {
      user = _json["user"].map((value) => new User.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (user != null) {
      _json["user"] = user.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}
