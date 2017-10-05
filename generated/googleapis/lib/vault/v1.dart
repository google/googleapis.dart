// This is a generated file (see the discoveryapis_generator project).

library googleapis.vault.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client vault/v1';

/// Archiving and eDiscovery for G Suite.
class VaultApi {
  /// Manage your eDiscovery data
  static const EdiscoveryScope = "https://www.googleapis.com/auth/ediscovery";

  /// View your eDiscovery data
  static const EdiscoveryReadonlyScope =
      "https://www.googleapis.com/auth/ediscovery.readonly";

  final commons.ApiRequester _requester;

  MattersResourceApi get matters => new MattersResourceApi(_requester);

  VaultApi(http.Client client,
      {core.String rootUrl: "https://vault.googleapis.com/",
      core.String servicePath: ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class MattersResourceApi {
  final commons.ApiRequester _requester;

  MattersHoldsResourceApi get holds => new MattersHoldsResourceApi(_requester);

  MattersResourceApi(commons.ApiRequester client) : _requester = client;

  /// Adds an account as a matter collaborator.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// Completes with a [MatterPermission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MatterPermission> addPermissions(
      AddMatterPermissionsRequest request, core.String matterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }

    _url = 'v1/matters/' +
        commons.Escaper.ecapeVariable('$matterId') +
        ':addPermissions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new MatterPermission.fromJson(data));
  }

  /// Closes the specified matter. Returns matter with updated state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// Completes with a [CloseMatterResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CloseMatterResponse> close(
      CloseMatterRequest request, core.String matterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }

    _url =
        'v1/matters/' + commons.Escaper.ecapeVariable('$matterId') + ':close';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CloseMatterResponse.fromJson(data));
  }

  /// Creates a new matter with the given name and description. The initial
  /// state
  /// is open, and the owner is the method caller. Returns the created matter
  /// with default view.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// Completes with a [Matter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Matter> create(Matter request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v1/matters';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Matter.fromJson(data));
  }

  /// Deletes the specified matter. Returns matter with updated state.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID
  ///
  /// Completes with a [Matter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Matter> delete(core.String matterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }

    _url = 'v1/matters/' + commons.Escaper.ecapeVariable('$matterId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Matter.fromJson(data));
  }

  /// Gets the specified matter.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [view] - Specifies which parts of the Matter to return in the response.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : A VIEW_UNSPECIFIED.
  /// - "BASIC" : A BASIC.
  /// - "FULL" : A FULL.
  ///
  /// Completes with a [Matter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Matter> get(core.String matterId, {core.String view}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }

    _url = 'v1/matters/' + commons.Escaper.ecapeVariable('$matterId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Matter.fromJson(data));
  }

  /// Lists matters the user has access to.
  ///
  /// Request parameters:
  ///
  /// [pageToken] - The pagination token as returned in the response.
  ///
  /// [pageSize] - The number of matters to return in the response.
  /// Default and maximum are 100.
  ///
  /// [view] - Specifies which parts of the matter to return in response.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : A VIEW_UNSPECIFIED.
  /// - "BASIC" : A BASIC.
  /// - "FULL" : A FULL.
  ///
  /// [state] - If set, list only matters with that specific state. The default
  /// is listing
  /// matters of all states.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : A STATE_UNSPECIFIED.
  /// - "OPEN" : A OPEN.
  /// - "CLOSED" : A CLOSED.
  /// - "DELETED" : A DELETED.
  ///
  /// Completes with a [ListMattersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMattersResponse> list(
      {core.String pageToken,
      core.int pageSize,
      core.String view,
      core.String state}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }
    if (state != null) {
      _queryParams["state"] = [state];
    }

    _url = 'v1/matters';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListMattersResponse.fromJson(data));
  }

  /// Removes an account as a matter collaborator.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> removePermissions(
      RemoveMatterPermissionsRequest request, core.String matterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }

    _url = 'v1/matters/' +
        commons.Escaper.ecapeVariable('$matterId') +
        ':removePermissions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Reopens the specified matter. Returns matter with updated state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// Completes with a [ReopenMatterResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReopenMatterResponse> reopen(
      ReopenMatterRequest request, core.String matterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }

    _url =
        'v1/matters/' + commons.Escaper.ecapeVariable('$matterId') + ':reopen';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ReopenMatterResponse.fromJson(data));
  }

  /// Undeletes the specified matter. Returns matter with updated state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// Completes with a [Matter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Matter> undelete(
      UndeleteMatterRequest request, core.String matterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }

    _url = 'v1/matters/' +
        commons.Escaper.ecapeVariable('$matterId') +
        ':undelete';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Matter.fromJson(data));
  }

  /// Updates the specified matter.
  /// This updates only the name and description of the matter, identified by
  /// matter id. Changes to any other fields are ignored.
  /// Returns the default view of the matter.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// Completes with a [Matter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Matter> update(Matter request, core.String matterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }

    _url = 'v1/matters/' + commons.Escaper.ecapeVariable('$matterId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Matter.fromJson(data));
  }
}

class MattersHoldsResourceApi {
  final commons.ApiRequester _requester;

  MattersHoldsAccountsResourceApi get accounts =>
      new MattersHoldsAccountsResourceApi(_requester);

  MattersHoldsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a hold in the given matter.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// Completes with a [Hold].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Hold> create(Hold request, core.String matterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }

    _url =
        'v1/matters/' + commons.Escaper.ecapeVariable('$matterId') + '/holds';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Hold.fromJson(data));
  }

  /// Removes a hold by ID. This will release any HeldAccounts on this Hold.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [holdId] - The hold ID.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String matterId, core.String holdId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if (holdId == null) {
      throw new core.ArgumentError("Parameter holdId is required.");
    }

    _url = 'v1/matters/' +
        commons.Escaper.ecapeVariable('$matterId') +
        '/holds/' +
        commons.Escaper.ecapeVariable('$holdId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets a hold by ID.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [holdId] - The hold ID.
  ///
  /// Completes with a [Hold].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Hold> get(core.String matterId, core.String holdId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if (holdId == null) {
      throw new core.ArgumentError("Parameter holdId is required.");
    }

    _url = 'v1/matters/' +
        commons.Escaper.ecapeVariable('$matterId') +
        '/holds/' +
        commons.Escaper.ecapeVariable('$holdId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Hold.fromJson(data));
  }

  /// Lists holds within a matter. An empty page token in ListHoldsResponse
  /// denotes no more holds to list.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [pageToken] - The pagination token as returned in the response.
  /// An empty token means start from the beginning.
  ///
  /// [pageSize] - The number of holds to return in the response, between 0 and
  /// 100 inclusive.
  /// Leaving this empty, or as 0, is the same as page_size = 100.
  ///
  /// Completes with a [ListHoldsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListHoldsResponse> list(core.String matterId,
      {core.String pageToken, core.int pageSize}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }

    _url =
        'v1/matters/' + commons.Escaper.ecapeVariable('$matterId') + '/holds';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListHoldsResponse.fromJson(data));
  }

  /// Updates the OU and/or query parameters of a hold. You cannot add accounts
  /// to a hold that covers an OU, nor can you add OUs to a hold that covers
  /// individual accounts. Accounts listed in the hold will be ignored.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [holdId] - The ID of the hold.
  ///
  /// Completes with a [Hold].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Hold> update(
      Hold request, core.String matterId, core.String holdId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if (holdId == null) {
      throw new core.ArgumentError("Parameter holdId is required.");
    }

    _url = 'v1/matters/' +
        commons.Escaper.ecapeVariable('$matterId') +
        '/holds/' +
        commons.Escaper.ecapeVariable('$holdId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Hold.fromJson(data));
  }
}

class MattersHoldsAccountsResourceApi {
  final commons.ApiRequester _requester;

  MattersHoldsAccountsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Adds a HeldAccount to a hold. Accounts can only be added to a hold that
  /// has no held_org_unit set. Attempting to add an account to an OU-based
  /// hold will result in an error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [holdId] - The hold ID.
  ///
  /// Completes with a [HeldAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HeldAccount> create(
      HeldAccount request, core.String matterId, core.String holdId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if (holdId == null) {
      throw new core.ArgumentError("Parameter holdId is required.");
    }

    _url = 'v1/matters/' +
        commons.Escaper.ecapeVariable('$matterId') +
        '/holds/' +
        commons.Escaper.ecapeVariable('$holdId') +
        '/accounts';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HeldAccount.fromJson(data));
  }

  /// Removes a HeldAccount from a hold. If this request leaves the hold with
  /// no held accounts, the hold will not apply to any accounts.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [holdId] - The hold ID.
  ///
  /// [accountId] - The ID of the account to remove from the hold.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
      core.String matterId, core.String holdId, core.String accountId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if (holdId == null) {
      throw new core.ArgumentError("Parameter holdId is required.");
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }

    _url = 'v1/matters/' +
        commons.Escaper.ecapeVariable('$matterId') +
        '/holds/' +
        commons.Escaper.ecapeVariable('$holdId') +
        '/accounts/' +
        commons.Escaper.ecapeVariable('$accountId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Lists HeldAccounts for a hold. This will only list individually specified
  /// held accounts. If the hold is on an OU, then use
  /// <a href="https://developers.google.com/admin-sdk/">Admin SDK</a>
  /// to enumerate its members.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [holdId] - The hold ID.
  ///
  /// Completes with a [ListHeldAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListHeldAccountsResponse> list(
      core.String matterId, core.String holdId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if (holdId == null) {
      throw new core.ArgumentError("Parameter holdId is required.");
    }

    _url = 'v1/matters/' +
        commons.Escaper.ecapeVariable('$matterId') +
        '/holds/' +
        commons.Escaper.ecapeVariable('$holdId') +
        '/accounts';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListHeldAccountsResponse.fromJson(data));
  }
}

/// Add an account with the permission specified. The role cannot be owner.
/// If an account already has a role in the matter, it will be
/// overwritten.
class AddMatterPermissionsRequest {
  /// Only relevant if send_emails is true.
  /// True to CC requestor in the email message.
  /// False to not CC requestor.
  core.bool ccMe;

  /// The MatterPermission to add.
  MatterPermission matterPermission;

  /// True to send notification email to the added account.
  /// False to not send notification email.
  core.bool sendEmails;

  AddMatterPermissionsRequest();

  AddMatterPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("ccMe")) {
      ccMe = _json["ccMe"];
    }
    if (_json.containsKey("matterPermission")) {
      matterPermission =
          new MatterPermission.fromJson(_json["matterPermission"]);
    }
    if (_json.containsKey("sendEmails")) {
      sendEmails = _json["sendEmails"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ccMe != null) {
      _json["ccMe"] = ccMe;
    }
    if (matterPermission != null) {
      _json["matterPermission"] = (matterPermission).toJson();
    }
    if (sendEmails != null) {
      _json["sendEmails"] = sendEmails;
    }
    return _json;
  }
}

/// Close a matter by ID.
class CloseMatterRequest {
  CloseMatterRequest();

  CloseMatterRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Response to a CloseMatterRequest.
class CloseMatterResponse {
  /// The updated matter, with state CLOSED.
  Matter matter;

  CloseMatterResponse();

  CloseMatterResponse.fromJson(core.Map _json) {
    if (_json.containsKey("matter")) {
      matter = new Matter.fromJson(_json["matter"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (matter != null) {
      _json["matter"] = (matter).toJson();
    }
    return _json;
  }
}

/// Corpus specific queries.
class CorpusQuery {
  /// Details pertaining to Drive holds. If set, corpus must be Drive.
  HeldDriveQuery driveQuery;

  /// Details pertaining to Groups holds. If set, corpus must be Groups.
  HeldGroupsQuery groupsQuery;

  /// Details pertaining to mail holds. If set, corpus must be mail.
  HeldMailQuery mailQuery;

  CorpusQuery();

  CorpusQuery.fromJson(core.Map _json) {
    if (_json.containsKey("driveQuery")) {
      driveQuery = new HeldDriveQuery.fromJson(_json["driveQuery"]);
    }
    if (_json.containsKey("groupsQuery")) {
      groupsQuery = new HeldGroupsQuery.fromJson(_json["groupsQuery"]);
    }
    if (_json.containsKey("mailQuery")) {
      mailQuery = new HeldMailQuery.fromJson(_json["mailQuery"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (driveQuery != null) {
      _json["driveQuery"] = (driveQuery).toJson();
    }
    if (groupsQuery != null) {
      _json["groupsQuery"] = (groupsQuery).toJson();
    }
    if (mailQuery != null) {
      _json["mailQuery"] = (mailQuery).toJson();
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

/// An account being held in a particular hold. This structure is immutable.
/// This can be either a single user or a google group, depending on the corpus.
class HeldAccount {
  /// The account's ID as provided by the
  /// <a href="https://developers.google.com/admin-sdk/">Admin SDK</a>.
  core.String accountId;

  /// When the account was put on hold.
  core.String holdTime;

  HeldAccount();

  HeldAccount.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("holdTime")) {
      holdTime = _json["holdTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (holdTime != null) {
      _json["holdTime"] = holdTime;
    }
    return _json;
  }
}

/// Query options for drive holds.
class HeldDriveQuery {
  /// If true, include files in Team Drives in the hold.
  core.bool includeTeamDriveFiles;

  HeldDriveQuery();

  HeldDriveQuery.fromJson(core.Map _json) {
    if (_json.containsKey("includeTeamDriveFiles")) {
      includeTeamDriveFiles = _json["includeTeamDriveFiles"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (includeTeamDriveFiles != null) {
      _json["includeTeamDriveFiles"] = includeTeamDriveFiles;
    }
    return _json;
  }
}

/// Query options for group holds.
class HeldGroupsQuery {
  /// The end date range for the search query. These timestamps are in GMT and
  /// rounded down to the start of the given date.
  core.String endTime;

  /// The start date range for the search query. These timestamps are in GMT and
  /// rounded down to the start of the given date.
  core.String startTime;

  /// The search terms for the hold.
  core.String terms;

  HeldGroupsQuery();

  HeldGroupsQuery.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("terms")) {
      terms = _json["terms"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (terms != null) {
      _json["terms"] = terms;
    }
    return _json;
  }
}

/// Query options for mail holds.
class HeldMailQuery {
  /// The end date range for the search query. These timestamps are in GMT and
  /// rounded down to the start of the given date.
  core.String endTime;

  /// The start date range for the search query. These timestamps are in GMT and
  /// rounded down to the start of the given date.
  core.String startTime;

  /// The search terms for the hold.
  core.String terms;

  HeldMailQuery();

  HeldMailQuery.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("terms")) {
      terms = _json["terms"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (terms != null) {
      _json["terms"] = terms;
    }
    return _json;
  }
}

/// A organizational unit being held in a particular hold.
/// This structure is immutable.
class HeldOrgUnit {
  /// When the org unit was put on hold. This property is immutable.
  core.String holdTime;

  /// The org unit's immutable ID as provided by the admin SDK.
  core.String orgUnitId;

  HeldOrgUnit();

  HeldOrgUnit.fromJson(core.Map _json) {
    if (_json.containsKey("holdTime")) {
      holdTime = _json["holdTime"];
    }
    if (_json.containsKey("orgUnitId")) {
      orgUnitId = _json["orgUnitId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (holdTime != null) {
      _json["holdTime"] = holdTime;
    }
    if (orgUnitId != null) {
      _json["orgUnitId"] = orgUnitId;
    }
    return _json;
  }
}

/// Represents a hold within Vault. A hold restricts purging of
/// artifacts based on the combination of the query and accounts restrictions.
/// A hold can be configured to either apply to an explicitly configured set
/// of accounts, or can be applied to all members of an organizational unit.
class Hold {
  /// If set, the hold applies to the enumerated accounts and org_unit must be
  /// empty.
  core.List<HeldAccount> accounts;

  /// The corpus to be searched.
  /// Possible string values are:
  /// - "CORPUS_TYPE_UNSPECIFIED" : No corpus specified.
  /// - "DRIVE" : Drive.
  /// - "MAIL" : Mail.
  /// - "GROUPS" : Groups.
  core.String corpus;

  /// The unique immutable ID of the hold. Assigned during creation.
  core.String holdId;

  /// The name of the hold.
  core.String name;

  /// If set, the hold applies to all members of the organizational unit and
  /// accounts must be empty. This property is mutable. For groups holds,
  /// set the accounts field.
  HeldOrgUnit orgUnit;

  /// The corpus-specific query. If set, the corpusQuery must match corpus
  /// type.
  CorpusQuery query;

  /// The last time this hold was modified.
  core.String updateTime;

  Hold();

  Hold.fromJson(core.Map _json) {
    if (_json.containsKey("accounts")) {
      accounts = _json["accounts"]
          .map((value) => new HeldAccount.fromJson(value))
          .toList();
    }
    if (_json.containsKey("corpus")) {
      corpus = _json["corpus"];
    }
    if (_json.containsKey("holdId")) {
      holdId = _json["holdId"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("orgUnit")) {
      orgUnit = new HeldOrgUnit.fromJson(_json["orgUnit"]);
    }
    if (_json.containsKey("query")) {
      query = new CorpusQuery.fromJson(_json["query"]);
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accounts != null) {
      _json["accounts"] = accounts.map((value) => (value).toJson()).toList();
    }
    if (corpus != null) {
      _json["corpus"] = corpus;
    }
    if (holdId != null) {
      _json["holdId"] = holdId;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (orgUnit != null) {
      _json["orgUnit"] = (orgUnit).toJson();
    }
    if (query != null) {
      _json["query"] = (query).toJson();
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// Returns a list of held accounts for a hold.
class ListHeldAccountsResponse {
  /// The held accounts on a hold.
  core.List<HeldAccount> accounts;

  ListHeldAccountsResponse();

  ListHeldAccountsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("accounts")) {
      accounts = _json["accounts"]
          .map((value) => new HeldAccount.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accounts != null) {
      _json["accounts"] = accounts.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The holds for a matter.
class ListHoldsResponse {
  /// The list of holds.
  core.List<Hold> holds;

  /// Page token to retrieve the next page of results in the list.
  /// If this is empty, then there are no more holds to list.
  core.String nextPageToken;

  ListHoldsResponse();

  ListHoldsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("holds")) {
      holds = _json["holds"].map((value) => new Hold.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (holds != null) {
      _json["holds"] = holds.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Provides the list of matters.
class ListMattersResponse {
  /// List of matters.
  core.List<Matter> matters;

  /// Page token to retrieve the next page of results in the list.
  core.String nextPageToken;

  ListMattersResponse();

  ListMattersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("matters")) {
      matters =
          _json["matters"].map((value) => new Matter.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (matters != null) {
      _json["matters"] = matters.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Represents a matter.
class Matter {
  /// The description of the matter.
  core.String description;

  /// The matter ID which is generated by the server.
  /// Should be blank when creating a new matter.
  core.String matterId;

  /// List of users and access to the matter. Currently there is no programmer
  /// defined limit on the number of permissions a matter can have.
  core.List<MatterPermission> matterPermissions;

  /// The name of the matter.
  core.String name;

  /// The state of the matter.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The matter has no specified state.
  /// - "OPEN" : This matter is open.
  /// - "CLOSED" : This matter is closed.
  /// - "DELETED" : This matter is deleted.
  core.String state;

  Matter();

  Matter.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("matterId")) {
      matterId = _json["matterId"];
    }
    if (_json.containsKey("matterPermissions")) {
      matterPermissions = _json["matterPermissions"]
          .map((value) => new MatterPermission.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (matterId != null) {
      _json["matterId"] = matterId;
    }
    if (matterPermissions != null) {
      _json["matterPermissions"] =
          matterPermissions.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/// Currently each matter only has one owner, and all others are collaborators.
/// When an account is purged, its corresponding MatterPermission resources
/// cease to exist.
class MatterPermission {
  /// The account id, as provided by <a
  /// href="https://developers.google.com/admin-sdk/">Admin SDK</a>.
  core.String accountId;

  /// The user's role in this matter.
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED" : No role assigned.
  /// - "COLLABORATOR" : A collaborator to the matter.
  /// - "OWNER" : The owner of the matter.
  core.String role;

  MatterPermission();

  MatterPermission.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (role != null) {
      _json["role"] = role;
    }
    return _json;
  }
}

/// Remove an account as a matter collaborator.
class RemoveMatterPermissionsRequest {
  /// The account ID.
  core.String accountId;

  RemoveMatterPermissionsRequest();

  RemoveMatterPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    return _json;
  }
}

/// Reopen a matter by ID.
class ReopenMatterRequest {
  ReopenMatterRequest();

  ReopenMatterRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Response to a ReopenMatterRequest.
class ReopenMatterResponse {
  /// The updated matter, with state OPEN.
  Matter matter;

  ReopenMatterResponse();

  ReopenMatterResponse.fromJson(core.Map _json) {
    if (_json.containsKey("matter")) {
      matter = new Matter.fromJson(_json["matter"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (matter != null) {
      _json["matter"] = (matter).toJson();
    }
    return _json;
  }
}

/// Undelete a matter by ID.
class UndeleteMatterRequest {
  UndeleteMatterRequest();

  UndeleteMatterRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}
