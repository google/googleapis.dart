// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

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
      {core.String rootUrl = "https://vault.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class MattersResourceApi {
  final commons.ApiRequester _requester;

  MattersExportsResourceApi get exports =>
      new MattersExportsResourceApi(_requester);
  MattersHoldsResourceApi get holds => new MattersHoldsResourceApi(_requester);
  MattersSavedQueriesResourceApi get savedQueries =>
      new MattersSavedQueriesResourceApi(_requester);

  MattersResourceApi(commons.ApiRequester client) : _requester = client;

  /// Adds an account as a matter collaborator.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MatterPermission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MatterPermission> addPermissions(
      AddMatterPermissionsRequest request, core.String matterId,
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
    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CloseMatterResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CloseMatterResponse> close(
      CloseMatterRequest request, core.String matterId,
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
    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Matter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Matter> create(Matter request, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Matter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Matter> delete(core.String matterId, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Matter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Matter> get(core.String matterId,
      {core.String view, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
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
  /// [state] - If set, list only matters with that specific state. The default
  /// is listing
  /// matters of all states.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : A STATE_UNSPECIFIED.
  /// - "OPEN" : A OPEN.
  /// - "CLOSED" : A CLOSED.
  /// - "DELETED" : A DELETED.
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMattersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMattersResponse> list(
      {core.String state,
      core.String pageToken,
      core.int pageSize,
      core.String view,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (state != null) {
      _queryParams["state"] = [state];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
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
  async.Future<Empty> removePermissions(
      RemoveMatterPermissionsRequest request, core.String matterId,
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
    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReopenMatterResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReopenMatterResponse> reopen(
      ReopenMatterRequest request, core.String matterId,
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
    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Matter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Matter> undelete(
      UndeleteMatterRequest request, core.String matterId,
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
    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Matter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Matter> update(Matter request, core.String matterId,
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
    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
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

class MattersExportsResourceApi {
  final commons.ApiRequester _requester;

  MattersExportsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates an Export.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Export].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Export> create(Export request, core.String matterId,
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
    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/matters/' + commons.Escaper.ecapeVariable('$matterId') + '/exports';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Export.fromJson(data));
  }

  /// Deletes an Export.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [exportId] - The export ID.
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
  async.Future<Empty> delete(core.String matterId, core.String exportId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if (exportId == null) {
      throw new core.ArgumentError("Parameter exportId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/matters/' +
        commons.Escaper.ecapeVariable('$matterId') +
        '/exports/' +
        commons.Escaper.ecapeVariable('$exportId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets an Export.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [exportId] - The export ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Export].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Export> get(core.String matterId, core.String exportId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if (exportId == null) {
      throw new core.ArgumentError("Parameter exportId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/matters/' +
        commons.Escaper.ecapeVariable('$matterId') +
        '/exports/' +
        commons.Escaper.ecapeVariable('$exportId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Export.fromJson(data));
  }

  /// Lists Exports.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [pageToken] - The pagination token as returned in the response.
  ///
  /// [pageSize] - The number of exports to return in the response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListExportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListExportsResponse> list(core.String matterId,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
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
        'v1/matters/' + commons.Escaper.ecapeVariable('$matterId') + '/exports';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListExportsResponse.fromJson(data));
  }
}

class MattersHoldsResourceApi {
  final commons.ApiRequester _requester;

  MattersHoldsAccountsResourceApi get accounts =>
      new MattersHoldsAccountsResourceApi(_requester);

  MattersHoldsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Adds HeldAccounts to a hold. Returns a list of accounts that have been
  /// successfully added. Accounts can only be added to an existing
  /// account-based
  /// hold.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [holdId] - The hold ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AddHeldAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AddHeldAccountsResponse> addHeldAccounts(
      AddHeldAccountsRequest request, core.String matterId, core.String holdId,
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
    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if (holdId == null) {
      throw new core.ArgumentError("Parameter holdId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/matters/' +
        commons.Escaper.ecapeVariable('$matterId') +
        '/holds/' +
        commons.Escaper.ecapeVariable('$holdId') +
        ':addHeldAccounts';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AddHeldAccountsResponse.fromJson(data));
  }

  /// Creates a hold in the given matter.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Hold].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Hold> create(Hold request, core.String matterId,
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
    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
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
  async.Future<Empty> delete(core.String matterId, core.String holdId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if (holdId == null) {
      throw new core.ArgumentError("Parameter holdId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
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
  /// [view] - Specifies which parts of the Hold to return.
  /// Possible string values are:
  /// - "HOLD_VIEW_UNSPECIFIED" : A HOLD_VIEW_UNSPECIFIED.
  /// - "BASIC_HOLD" : A BASIC_HOLD.
  /// - "FULL_HOLD" : A FULL_HOLD.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Hold].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Hold> get(core.String matterId, core.String holdId,
      {core.String view, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if (holdId == null) {
      throw new core.ArgumentError("Parameter holdId is required.");
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
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
  /// [view] - Specifies which parts of the Hold to return.
  /// Possible string values are:
  /// - "HOLD_VIEW_UNSPECIFIED" : A HOLD_VIEW_UNSPECIFIED.
  /// - "BASIC_HOLD" : A BASIC_HOLD.
  /// - "FULL_HOLD" : A FULL_HOLD.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListHoldsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListHoldsResponse> list(core.String matterId,
      {core.String pageToken,
      core.int pageSize,
      core.String view,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
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

  /// Removes HeldAccounts from a hold. Returns a list of statuses in the same
  /// order as the request. If this request leaves the hold with no held
  /// accounts, the hold will not apply to any accounts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [holdId] - The hold ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemoveHeldAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemoveHeldAccountsResponse> removeHeldAccounts(
      RemoveHeldAccountsRequest request,
      core.String matterId,
      core.String holdId,
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
    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if (holdId == null) {
      throw new core.ArgumentError("Parameter holdId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/matters/' +
        commons.Escaper.ecapeVariable('$matterId') +
        '/holds/' +
        commons.Escaper.ecapeVariable('$holdId') +
        ':removeHeldAccounts';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new RemoveHeldAccountsResponse.fromJson(data));
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Hold].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Hold> update(
      Hold request, core.String matterId, core.String holdId,
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
    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if (holdId == null) {
      throw new core.ArgumentError("Parameter holdId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HeldAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HeldAccount> create(
      HeldAccount request, core.String matterId, core.String holdId,
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
    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if (holdId == null) {
      throw new core.ArgumentError("Parameter holdId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
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
  async.Future<Empty> delete(
      core.String matterId, core.String holdId, core.String accountId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if (holdId == null) {
      throw new core.ArgumentError("Parameter holdId is required.");
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListHeldAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListHeldAccountsResponse> list(
      core.String matterId, core.String holdId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if (holdId == null) {
      throw new core.ArgumentError("Parameter holdId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
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

class MattersSavedQueriesResourceApi {
  final commons.ApiRequester _requester;

  MattersSavedQueriesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a saved query.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter id of the parent matter for which the saved query
  /// is to be
  /// created.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SavedQuery].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SavedQuery> create(SavedQuery request, core.String matterId,
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
    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/matters/' +
        commons.Escaper.ecapeVariable('$matterId') +
        '/savedQueries';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SavedQuery.fromJson(data));
  }

  /// Deletes a saved query by Id.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter id of the parent matter for which the saved query
  /// is to be
  /// deleted.
  ///
  /// [savedQueryId] - Id of the saved query to be deleted.
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
  async.Future<Empty> delete(core.String matterId, core.String savedQueryId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if (savedQueryId == null) {
      throw new core.ArgumentError("Parameter savedQueryId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/matters/' +
        commons.Escaper.ecapeVariable('$matterId') +
        '/savedQueries/' +
        commons.Escaper.ecapeVariable('$savedQueryId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Retrieves a saved query by Id.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter id of the parent matter for which the saved query
  /// is to be
  /// retrieved.
  ///
  /// [savedQueryId] - Id of the saved query to be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SavedQuery].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SavedQuery> get(core.String matterId, core.String savedQueryId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
    }
    if (savedQueryId == null) {
      throw new core.ArgumentError("Parameter savedQueryId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/matters/' +
        commons.Escaper.ecapeVariable('$matterId') +
        '/savedQueries/' +
        commons.Escaper.ecapeVariable('$savedQueryId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SavedQuery.fromJson(data));
  }

  /// Lists saved queries within a matter. An empty page token in
  /// ListSavedQueriesResponse denotes no more saved queries to list.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter id of the parent matter for which the saved
  /// queries are to be
  /// retrieved.
  ///
  /// [pageToken] - The pagination token as returned in the previous response.
  /// An empty token means start from the beginning.
  ///
  /// [pageSize] - The maximum number of saved queries to return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSavedQueriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSavedQueriesResponse> list(core.String matterId,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (matterId == null) {
      throw new core.ArgumentError("Parameter matterId is required.");
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

    _url = 'v1/matters/' +
        commons.Escaper.ecapeVariable('$matterId') +
        '/savedQueries';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListSavedQueriesResponse.fromJson(data));
  }
}

/// Accounts to search
class AccountInfo {
  /// A set of accounts to search.
  core.List<core.String> emails;

  AccountInfo();

  AccountInfo.fromJson(core.Map _json) {
    if (_json.containsKey("emails")) {
      emails = (_json["emails"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (emails != null) {
      _json["emails"] = emails;
    }
    return _json;
  }
}

/// A status detailing the status of each account creation, and the
/// HeldAccount, if successful.
class AddHeldAccountResult {
  /// If present, this account was successfully created.
  HeldAccount account;

  /// This represents the success status. If failed, check message.
  Status status;

  AddHeldAccountResult();

  AddHeldAccountResult.fromJson(core.Map _json) {
    if (_json.containsKey("account")) {
      account = new HeldAccount.fromJson(_json["account"]);
    }
    if (_json.containsKey("status")) {
      status = new Status.fromJson(_json["status"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (account != null) {
      _json["account"] = (account).toJson();
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    return _json;
  }
}

/// Add a list of accounts to a hold.
class AddHeldAccountsRequest {
  /// Account ids to identify which accounts to add. Only account_ids or only
  /// emails should be specified, but not both.
  core.List<core.String> accountIds;

  /// Emails to identify which accounts to add. Only emails or only account_ids
  /// should be specified, but not both.
  core.List<core.String> emails;

  AddHeldAccountsRequest();

  AddHeldAccountsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("accountIds")) {
      accountIds = (_json["accountIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("emails")) {
      emails = (_json["emails"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountIds != null) {
      _json["accountIds"] = accountIds;
    }
    if (emails != null) {
      _json["emails"] = emails;
    }
    return _json;
  }
}

/// Response for batch create held accounts.
class AddHeldAccountsResponse {
  /// The list of responses, in the same order as the batch request.
  core.List<AddHeldAccountResult> responses;

  AddHeldAccountsResponse();

  AddHeldAccountsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("responses")) {
      responses = (_json["responses"] as core.List)
          .map<AddHeldAccountResult>(
              (value) => new AddHeldAccountResult.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (responses != null) {
      _json["responses"] = responses.map((value) => (value).toJson()).toList();
    }
    return _json;
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

/// An export file on cloud storage
class CloudStorageFile {
  /// The cloud storage bucket name of this export file.
  /// Can be used in cloud storage JSON/XML API.
  core.String bucketName;

  /// The md5 hash of the file.
  core.String md5Hash;

  /// The cloud storage object name of this export file.
  /// Can be used in cloud storage JSON/XML API.
  core.String objectName;

  /// The size of the export file.
  core.String size;

  CloudStorageFile();

  CloudStorageFile.fromJson(core.Map _json) {
    if (_json.containsKey("bucketName")) {
      bucketName = _json["bucketName"];
    }
    if (_json.containsKey("md5Hash")) {
      md5Hash = _json["md5Hash"];
    }
    if (_json.containsKey("objectName")) {
      objectName = _json["objectName"];
    }
    if (_json.containsKey("size")) {
      size = _json["size"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bucketName != null) {
      _json["bucketName"] = bucketName;
    }
    if (md5Hash != null) {
      _json["md5Hash"] = md5Hash;
    }
    if (objectName != null) {
      _json["objectName"] = objectName;
    }
    if (size != null) {
      _json["size"] = size;
    }
    return _json;
  }
}

/// Export sink for cloud storage files.
class CloudStorageSink {
  /// Output only. The exported files on cloud storage.
  core.List<CloudStorageFile> files;

  CloudStorageSink();

  CloudStorageSink.fromJson(core.Map _json) {
    if (_json.containsKey("files")) {
      files = (_json["files"] as core.List)
          .map<CloudStorageFile>(
              (value) => new CloudStorageFile.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (files != null) {
      _json["files"] = files.map((value) => (value).toJson()).toList();
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

  /// Details pertaining to Hangouts Chat holds. If set, corpus must be
  /// Hangouts Chat.
  HeldHangoutsChatQuery hangoutsChatQuery;

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
    if (_json.containsKey("hangoutsChatQuery")) {
      hangoutsChatQuery =
          new HeldHangoutsChatQuery.fromJson(_json["hangoutsChatQuery"]);
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
    if (hangoutsChatQuery != null) {
      _json["hangoutsChatQuery"] = (hangoutsChatQuery).toJson();
    }
    if (mailQuery != null) {
      _json["mailQuery"] = (mailQuery).toJson();
    }
    return _json;
  }
}

/// The options for Drive export.
class DriveExportOptions {
  /// Set to true to include access level information for users
  /// with <a
  /// href="https://support.google.com/vault/answer/6099459#metadata">indirect
  /// access</a> to files.
  core.bool includeAccessInfo;

  DriveExportOptions();

  DriveExportOptions.fromJson(core.Map _json) {
    if (_json.containsKey("includeAccessInfo")) {
      includeAccessInfo = _json["includeAccessInfo"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (includeAccessInfo != null) {
      _json["includeAccessInfo"] = includeAccessInfo;
    }
    return _json;
  }
}

/// Drive search advanced options
class DriveOptions {
  /// Set to true to include shared drive.
  core.bool includeSharedDrives;

  /// Set to true to include Team Drive.
  core.bool includeTeamDrives;

  /// Search the versions of the Drive file
  /// as of the reference date. These timestamps are in GMT and
  /// rounded down to the given date.
  core.String versionDate;

  DriveOptions();

  DriveOptions.fromJson(core.Map _json) {
    if (_json.containsKey("includeSharedDrives")) {
      includeSharedDrives = _json["includeSharedDrives"];
    }
    if (_json.containsKey("includeTeamDrives")) {
      includeTeamDrives = _json["includeTeamDrives"];
    }
    if (_json.containsKey("versionDate")) {
      versionDate = _json["versionDate"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (includeSharedDrives != null) {
      _json["includeSharedDrives"] = includeSharedDrives;
    }
    if (includeTeamDrives != null) {
      _json["includeTeamDrives"] = includeTeamDrives;
    }
    if (versionDate != null) {
      _json["versionDate"] = versionDate;
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

/// An export
class Export {
  /// Output only. Export sink for cloud storage files.
  CloudStorageSink cloudStorageSink;

  /// Output only. The time when the export was created.
  core.String createTime;

  /// Advanced options of the export.
  ExportOptions exportOptions;

  /// Output only. The generated export ID.
  core.String id;

  /// Output only. The matter ID.
  core.String matterId;

  /// The export name.
  core.String name;

  /// The search query being exported.
  Query query;

  /// Output only. The requester of the export.
  UserInfo requester;

  /// Output only. Export statistics.
  ExportStats stats;

  /// Output only. The export status.
  /// Possible string values are:
  /// - "EXPORT_STATUS_UNSPECIFIED" : The status is unspecified.
  /// - "COMPLETED" : The export completed.
  /// - "FAILED" : The export failed.
  /// - "IN_PROGRESS" : The export is still being executed.
  core.String status;

  Export();

  Export.fromJson(core.Map _json) {
    if (_json.containsKey("cloudStorageSink")) {
      cloudStorageSink =
          new CloudStorageSink.fromJson(_json["cloudStorageSink"]);
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("exportOptions")) {
      exportOptions = new ExportOptions.fromJson(_json["exportOptions"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("matterId")) {
      matterId = _json["matterId"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("query")) {
      query = new Query.fromJson(_json["query"]);
    }
    if (_json.containsKey("requester")) {
      requester = new UserInfo.fromJson(_json["requester"]);
    }
    if (_json.containsKey("stats")) {
      stats = new ExportStats.fromJson(_json["stats"]);
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cloudStorageSink != null) {
      _json["cloudStorageSink"] = (cloudStorageSink).toJson();
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (exportOptions != null) {
      _json["exportOptions"] = (exportOptions).toJson();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (matterId != null) {
      _json["matterId"] = matterId;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (query != null) {
      _json["query"] = (query).toJson();
    }
    if (requester != null) {
      _json["requester"] = (requester).toJson();
    }
    if (stats != null) {
      _json["stats"] = (stats).toJson();
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}

/// Export advanced options
class ExportOptions {
  /// Option available for Drive export.
  DriveExportOptions driveOptions;

  /// Option available for groups export.
  GroupsExportOptions groupsOptions;

  /// Option available for hangouts chat export.
  HangoutsChatExportOptions hangoutsChatOptions;

  /// Option available for mail export.
  MailExportOptions mailOptions;

  /// The requested export location.
  /// Possible string values are:
  /// - "EXPORT_REGION_UNSPECIFIED" : The region is unspecified. Will be treated
  /// the same as ANY.
  /// - "ANY" : Any region.
  /// - "US" : US region.
  /// - "EUROPE" : Europe region.
  core.String region;

  ExportOptions();

  ExportOptions.fromJson(core.Map _json) {
    if (_json.containsKey("driveOptions")) {
      driveOptions = new DriveExportOptions.fromJson(_json["driveOptions"]);
    }
    if (_json.containsKey("groupsOptions")) {
      groupsOptions = new GroupsExportOptions.fromJson(_json["groupsOptions"]);
    }
    if (_json.containsKey("hangoutsChatOptions")) {
      hangoutsChatOptions =
          new HangoutsChatExportOptions.fromJson(_json["hangoutsChatOptions"]);
    }
    if (_json.containsKey("mailOptions")) {
      mailOptions = new MailExportOptions.fromJson(_json["mailOptions"]);
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (driveOptions != null) {
      _json["driveOptions"] = (driveOptions).toJson();
    }
    if (groupsOptions != null) {
      _json["groupsOptions"] = (groupsOptions).toJson();
    }
    if (hangoutsChatOptions != null) {
      _json["hangoutsChatOptions"] = (hangoutsChatOptions).toJson();
    }
    if (mailOptions != null) {
      _json["mailOptions"] = (mailOptions).toJson();
    }
    if (region != null) {
      _json["region"] = region;
    }
    return _json;
  }
}

/// Stats of an export.
class ExportStats {
  /// The number of documents already processed by the export.
  core.String exportedArtifactCount;

  /// The size of export in bytes.
  core.String sizeInBytes;

  /// The number of documents to be exported.
  core.String totalArtifactCount;

  ExportStats();

  ExportStats.fromJson(core.Map _json) {
    if (_json.containsKey("exportedArtifactCount")) {
      exportedArtifactCount = _json["exportedArtifactCount"];
    }
    if (_json.containsKey("sizeInBytes")) {
      sizeInBytes = _json["sizeInBytes"];
    }
    if (_json.containsKey("totalArtifactCount")) {
      totalArtifactCount = _json["totalArtifactCount"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exportedArtifactCount != null) {
      _json["exportedArtifactCount"] = exportedArtifactCount;
    }
    if (sizeInBytes != null) {
      _json["sizeInBytes"] = sizeInBytes;
    }
    if (totalArtifactCount != null) {
      _json["totalArtifactCount"] = totalArtifactCount;
    }
    return _json;
  }
}

/// The options for groups export.
class GroupsExportOptions {
  /// The export format for groups export.
  /// Possible string values are:
  /// - "EXPORT_FORMAT_UNSPECIFIED" : No export format specified.
  /// - "MBOX" : MBOX as export format.
  /// - "PST" : PST as export format
  core.String exportFormat;

  GroupsExportOptions();

  GroupsExportOptions.fromJson(core.Map _json) {
    if (_json.containsKey("exportFormat")) {
      exportFormat = _json["exportFormat"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exportFormat != null) {
      _json["exportFormat"] = exportFormat;
    }
    return _json;
  }
}

/// The options for hangouts chat export.
class HangoutsChatExportOptions {
  /// The export format for hangouts chat export.
  /// Possible string values are:
  /// - "EXPORT_FORMAT_UNSPECIFIED" : No export format specified.
  /// - "MBOX" : MBOX as export format.
  /// - "PST" : PST as export format
  core.String exportFormat;

  HangoutsChatExportOptions();

  HangoutsChatExportOptions.fromJson(core.Map _json) {
    if (_json.containsKey("exportFormat")) {
      exportFormat = _json["exportFormat"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exportFormat != null) {
      _json["exportFormat"] = exportFormat;
    }
    return _json;
  }
}

/// Accounts to search
class HangoutsChatInfo {
  /// A set of rooms to search.
  core.List<core.String> roomId;

  HangoutsChatInfo();

  HangoutsChatInfo.fromJson(core.Map _json) {
    if (_json.containsKey("roomId")) {
      roomId = (_json["roomId"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (roomId != null) {
      _json["roomId"] = roomId;
    }
    return _json;
  }
}

/// Hangouts chat search advanced options
class HangoutsChatOptions {
  /// Set to true to include rooms.
  core.bool includeRooms;

  HangoutsChatOptions();

  HangoutsChatOptions.fromJson(core.Map _json) {
    if (_json.containsKey("includeRooms")) {
      includeRooms = _json["includeRooms"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (includeRooms != null) {
      _json["includeRooms"] = includeRooms;
    }
    return _json;
  }
}

/// An account being held in a particular hold. This structure is immutable.
/// This can be either a single user or a google group, depending on the corpus.
class HeldAccount {
  /// The account's ID as provided by the
  /// <a href="https://developers.google.com/admin-sdk/">Admin SDK</a>.
  core.String accountId;

  /// The primary email address of the account. If used as an input, this takes
  /// precedence over account ID.
  core.String email;

  /// Output only. The first name of the account holder.
  core.String firstName;

  /// Output only. When the account was put on hold.
  core.String holdTime;

  /// Output only. The last name of the account holder.
  core.String lastName;

  HeldAccount();

  HeldAccount.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("firstName")) {
      firstName = _json["firstName"];
    }
    if (_json.containsKey("holdTime")) {
      holdTime = _json["holdTime"];
    }
    if (_json.containsKey("lastName")) {
      lastName = _json["lastName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (firstName != null) {
      _json["firstName"] = firstName;
    }
    if (holdTime != null) {
      _json["holdTime"] = holdTime;
    }
    if (lastName != null) {
      _json["lastName"] = lastName;
    }
    return _json;
  }
}

/// Query options for Drive holds.
class HeldDriveQuery {
  /// If true, include files in shared drives in the hold.
  core.bool includeSharedDriveFiles;

  /// If true, include files in Team Drives in the hold.
  core.bool includeTeamDriveFiles;

  HeldDriveQuery();

  HeldDriveQuery.fromJson(core.Map _json) {
    if (_json.containsKey("includeSharedDriveFiles")) {
      includeSharedDriveFiles = _json["includeSharedDriveFiles"];
    }
    if (_json.containsKey("includeTeamDriveFiles")) {
      includeTeamDriveFiles = _json["includeTeamDriveFiles"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (includeSharedDriveFiles != null) {
      _json["includeSharedDriveFiles"] = includeSharedDriveFiles;
    }
    if (includeTeamDriveFiles != null) {
      _json["includeTeamDriveFiles"] = includeTeamDriveFiles;
    }
    return _json;
  }
}

/// Query options for group holds.
class HeldGroupsQuery {
  /// The end time range for the search query. These timestamps are in GMT and
  /// rounded down to the start of the given date.
  core.String endTime;

  /// The start time range for the search query. These timestamps are in GMT and
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

/// Query options for hangouts chat holds.
class HeldHangoutsChatQuery {
  /// If true, include rooms the user has participated in.
  core.bool includeRooms;

  HeldHangoutsChatQuery();

  HeldHangoutsChatQuery.fromJson(core.Map _json) {
    if (_json.containsKey("includeRooms")) {
      includeRooms = _json["includeRooms"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (includeRooms != null) {
      _json["includeRooms"] = includeRooms;
    }
    return _json;
  }
}

/// Query options for mail holds.
class HeldMailQuery {
  /// The end time range for the search query. These timestamps are in GMT and
  /// rounded down to the start of the given date.
  core.String endTime;

  /// The start time range for the search query. These timestamps are in GMT and
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

  /// The org unit's immutable ID as provided by the Admin SDK.
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
  /// - "HANGOUTS_CHAT" : Hangouts Chat.
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
      accounts = (_json["accounts"] as core.List)
          .map<HeldAccount>((value) => new HeldAccount.fromJson(value))
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

/// The holds for a matter.
class ListExportsResponse {
  /// The list of exports.
  core.List<Export> exports;

  /// Page token to retrieve the next page of results in the list.
  core.String nextPageToken;

  ListExportsResponse();

  ListExportsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("exports")) {
      exports = (_json["exports"] as core.List)
          .map<Export>((value) => new Export.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exports != null) {
      _json["exports"] = exports.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
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
      accounts = (_json["accounts"] as core.List)
          .map<HeldAccount>((value) => new HeldAccount.fromJson(value))
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
      holds = (_json["holds"] as core.List)
          .map<Hold>((value) => new Hold.fromJson(value))
          .toList();
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
      matters = (_json["matters"] as core.List)
          .map<Matter>((value) => new Matter.fromJson(value))
          .toList();
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

/// Definition of the response for method ListSaveQuery.
class ListSavedQueriesResponse {
  /// Page token to retrieve the next page of results in the list.
  /// If this is empty, then there are no more saved queries to list.
  core.String nextPageToken;

  /// List of output saved queries.
  core.List<SavedQuery> savedQueries;

  ListSavedQueriesResponse();

  ListSavedQueriesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("savedQueries")) {
      savedQueries = (_json["savedQueries"] as core.List)
          .map<SavedQuery>((value) => new SavedQuery.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (savedQueries != null) {
      _json["savedQueries"] =
          savedQueries.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The options for mail export.
class MailExportOptions {
  /// The export file format.
  /// Possible string values are:
  /// - "EXPORT_FORMAT_UNSPECIFIED" : No export format specified.
  /// - "MBOX" : MBOX as export format.
  /// - "PST" : PST as export format
  core.String exportFormat;

  /// Set to true to export confidential mode content.
  core.bool showConfidentialModeContent;

  MailExportOptions();

  MailExportOptions.fromJson(core.Map _json) {
    if (_json.containsKey("exportFormat")) {
      exportFormat = _json["exportFormat"];
    }
    if (_json.containsKey("showConfidentialModeContent")) {
      showConfidentialModeContent = _json["showConfidentialModeContent"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exportFormat != null) {
      _json["exportFormat"] = exportFormat;
    }
    if (showConfidentialModeContent != null) {
      _json["showConfidentialModeContent"] = showConfidentialModeContent;
    }
    return _json;
  }
}

/// Mail search advanced options
class MailOptions {
  /// Set to true to exclude drafts.
  core.bool excludeDrafts;

  MailOptions();

  MailOptions.fromJson(core.Map _json) {
    if (_json.containsKey("excludeDrafts")) {
      excludeDrafts = _json["excludeDrafts"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (excludeDrafts != null) {
      _json["excludeDrafts"] = excludeDrafts;
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
      matterPermissions = (_json["matterPermissions"] as core.List)
          .map<MatterPermission>(
              (value) => new MatterPermission.fromJson(value))
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

/// Org Unit to search
class OrgUnitInfo {
  /// Org unit to search, as provided by the
  /// <a href="https://developers.google.com/admin-sdk/directory/">Admin SDK
  /// Directory API</a>.
  core.String orgUnitId;

  OrgUnitInfo();

  OrgUnitInfo.fromJson(core.Map _json) {
    if (_json.containsKey("orgUnitId")) {
      orgUnitId = _json["orgUnitId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (orgUnitId != null) {
      _json["orgUnitId"] = orgUnitId;
    }
    return _json;
  }
}

/// A query definition relevant for search & export.
class Query {
  /// When 'ACCOUNT' is chosen as search method,
  /// account_info needs to be specified.
  AccountInfo accountInfo;

  /// The corpus to search.
  /// Possible string values are:
  /// - "CORPUS_TYPE_UNSPECIFIED" : No corpus specified.
  /// - "DRIVE" : Drive.
  /// - "MAIL" : Mail.
  /// - "GROUPS" : Groups.
  /// - "HANGOUTS_CHAT" : Hangouts Chat.
  core.String corpus;

  /// The data source to search from.
  /// Possible string values are:
  /// - "DATA_SCOPE_UNSPECIFIED" : No data scope specified.
  /// - "ALL_DATA" : All available data.
  /// - "HELD_DATA" : Data on hold.
  /// - "UNPROCESSED_DATA" : Data not processed.
  core.String dataScope;

  /// For Drive search, specify more options in this field.
  DriveOptions driveOptions;

  /// The end time range for the search query. These timestamps are in GMT and
  /// rounded down to the start of the given date.
  core.String endTime;

  /// When 'ROOM' is chosen as search method, hangout_chats_info needs to be
  /// specified. (read-only)
  HangoutsChatInfo hangoutsChatInfo;

  /// For hangouts chat search, specify more options in this field. (read-only)
  HangoutsChatOptions hangoutsChatOptions;

  /// For mail search, specify more options in this field.
  MailOptions mailOptions;

  /// The search method to use. This field is similar to the search_method field
  /// but is introduced to support shared drives. It supports all
  /// search method types. In case the search_method is TEAM_DRIVE the response
  /// of this field will be SHARED_DRIVE only.
  /// Possible string values are:
  /// - "SEARCH_METHOD_UNSPECIFIED" : A search method must be specified. If a
  /// request does not specify a
  /// search method, it will be rejected.
  /// - "ACCOUNT" : Will search all accounts provided in account_info.
  /// - "ORG_UNIT" : Will search all accounts in the OU specified in
  /// org_unit_info.
  /// - "TEAM_DRIVE" : Will search for all accounts in the Team Drive specified
  /// in
  /// team_drive_info.
  /// - "ENTIRE_ORG" : Will search for all accounts in the organization.
  /// No need to set account_info or org_unit_info.
  /// - "ROOM" : Will search in the Room specified in
  /// hangout_chats_info. (read-only)
  /// - "SHARED_DRIVE" : Will search for all accounts in the shared drive
  /// specified in
  /// shared_drive_info.
  core.String method;

  /// When 'ORG_UNIT' is chosen as as search method, org_unit_info needs
  /// to be specified.
  OrgUnitInfo orgUnitInfo;

  /// The search method to use.
  /// Possible string values are:
  /// - "SEARCH_METHOD_UNSPECIFIED" : A search method must be specified. If a
  /// request does not specify a
  /// search method, it will be rejected.
  /// - "ACCOUNT" : Will search all accounts provided in account_info.
  /// - "ORG_UNIT" : Will search all accounts in the OU specified in
  /// org_unit_info.
  /// - "TEAM_DRIVE" : Will search for all accounts in the Team Drive specified
  /// in
  /// team_drive_info.
  /// - "ENTIRE_ORG" : Will search for all accounts in the organization.
  /// No need to set account_info or org_unit_info.
  /// - "ROOM" : Will search in the Room specified in
  /// hangout_chats_info. (read-only)
  /// - "SHARED_DRIVE" : Will search for all accounts in the shared drive
  /// specified in
  /// shared_drive_info.
  core.String searchMethod;

  /// When 'SHARED_DRIVE' is chosen as search method, shared_drive_info needs
  /// to be specified.
  SharedDriveInfo sharedDriveInfo;

  /// The start time range for the search query. These timestamps are in GMT and
  /// rounded down to the start of the given date.
  core.String startTime;

  /// When 'TEAM_DRIVE' is chosen as search method, team_drive_info needs to be
  /// specified.
  TeamDriveInfo teamDriveInfo;

  /// The corpus-specific
  /// <a href="https://support.google.com/vault/answer/2474474">search
  /// operators</a> used to generate search results.
  core.String terms;

  /// The time zone name.
  /// It should be an IANA TZ name, such as "America/Los_Angeles".
  /// For more information, see
  /// <a
  /// href="https://en.wikipedia.org/wiki/List_of_tz_database_time_zones">Time
  /// Zone</a>.
  core.String timeZone;

  Query();

  Query.fromJson(core.Map _json) {
    if (_json.containsKey("accountInfo")) {
      accountInfo = new AccountInfo.fromJson(_json["accountInfo"]);
    }
    if (_json.containsKey("corpus")) {
      corpus = _json["corpus"];
    }
    if (_json.containsKey("dataScope")) {
      dataScope = _json["dataScope"];
    }
    if (_json.containsKey("driveOptions")) {
      driveOptions = new DriveOptions.fromJson(_json["driveOptions"]);
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("hangoutsChatInfo")) {
      hangoutsChatInfo =
          new HangoutsChatInfo.fromJson(_json["hangoutsChatInfo"]);
    }
    if (_json.containsKey("hangoutsChatOptions")) {
      hangoutsChatOptions =
          new HangoutsChatOptions.fromJson(_json["hangoutsChatOptions"]);
    }
    if (_json.containsKey("mailOptions")) {
      mailOptions = new MailOptions.fromJson(_json["mailOptions"]);
    }
    if (_json.containsKey("method")) {
      method = _json["method"];
    }
    if (_json.containsKey("orgUnitInfo")) {
      orgUnitInfo = new OrgUnitInfo.fromJson(_json["orgUnitInfo"]);
    }
    if (_json.containsKey("searchMethod")) {
      searchMethod = _json["searchMethod"];
    }
    if (_json.containsKey("sharedDriveInfo")) {
      sharedDriveInfo = new SharedDriveInfo.fromJson(_json["sharedDriveInfo"]);
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("teamDriveInfo")) {
      teamDriveInfo = new TeamDriveInfo.fromJson(_json["teamDriveInfo"]);
    }
    if (_json.containsKey("terms")) {
      terms = _json["terms"];
    }
    if (_json.containsKey("timeZone")) {
      timeZone = _json["timeZone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountInfo != null) {
      _json["accountInfo"] = (accountInfo).toJson();
    }
    if (corpus != null) {
      _json["corpus"] = corpus;
    }
    if (dataScope != null) {
      _json["dataScope"] = dataScope;
    }
    if (driveOptions != null) {
      _json["driveOptions"] = (driveOptions).toJson();
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (hangoutsChatInfo != null) {
      _json["hangoutsChatInfo"] = (hangoutsChatInfo).toJson();
    }
    if (hangoutsChatOptions != null) {
      _json["hangoutsChatOptions"] = (hangoutsChatOptions).toJson();
    }
    if (mailOptions != null) {
      _json["mailOptions"] = (mailOptions).toJson();
    }
    if (method != null) {
      _json["method"] = method;
    }
    if (orgUnitInfo != null) {
      _json["orgUnitInfo"] = (orgUnitInfo).toJson();
    }
    if (searchMethod != null) {
      _json["searchMethod"] = searchMethod;
    }
    if (sharedDriveInfo != null) {
      _json["sharedDriveInfo"] = (sharedDriveInfo).toJson();
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (teamDriveInfo != null) {
      _json["teamDriveInfo"] = (teamDriveInfo).toJson();
    }
    if (terms != null) {
      _json["terms"] = terms;
    }
    if (timeZone != null) {
      _json["timeZone"] = timeZone;
    }
    return _json;
  }
}

/// Remove a list of accounts from a hold.
class RemoveHeldAccountsRequest {
  /// Account ids to identify HeldAccounts to remove.
  core.List<core.String> accountIds;

  RemoveHeldAccountsRequest();

  RemoveHeldAccountsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("accountIds")) {
      accountIds = (_json["accountIds"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountIds != null) {
      _json["accountIds"] = accountIds;
    }
    return _json;
  }
}

/// Response for batch delete held accounts.
class RemoveHeldAccountsResponse {
  /// A list of statuses for deleted accounts. Results have the
  /// same order as the request.
  core.List<Status> statuses;

  RemoveHeldAccountsResponse();

  RemoveHeldAccountsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("statuses")) {
      statuses = (_json["statuses"] as core.List)
          .map<Status>((value) => new Status.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (statuses != null) {
      _json["statuses"] = statuses.map((value) => (value).toJson()).toList();
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

/// Definition of the saved query.
class SavedQuery {
  /// Output only. The server generated timestamp at which saved query was
  /// created.
  core.String createTime;

  /// Name of the saved query.
  core.String displayName;

  /// Output only. The matter id of the associated matter.
  /// The server does not look at this field during create and always uses
  /// matter
  /// id in the URL.
  core.String matterId;

  /// The underlying Query object which contains all the information of the
  /// saved
  /// query.
  Query query;

  /// A unique identifier for the saved query.
  core.String savedQueryId;

  SavedQuery();

  SavedQuery.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("matterId")) {
      matterId = _json["matterId"];
    }
    if (_json.containsKey("query")) {
      query = new Query.fromJson(_json["query"]);
    }
    if (_json.containsKey("savedQueryId")) {
      savedQueryId = _json["savedQueryId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (matterId != null) {
      _json["matterId"] = matterId;
    }
    if (query != null) {
      _json["query"] = (query).toJson();
    }
    if (savedQueryId != null) {
      _json["savedQueryId"] = savedQueryId;
    }
    return _json;
  }
}

/// Shared drives to search
class SharedDriveInfo {
  /// List of Shared drive ids, as provided by <a
  /// href="https://developers.google.com/drive">Drive API</a>.
  core.List<core.String> sharedDriveIds;

  SharedDriveInfo();

  SharedDriveInfo.fromJson(core.Map _json) {
    if (_json.containsKey("sharedDriveIds")) {
      sharedDriveIds =
          (_json["sharedDriveIds"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (sharedDriveIds != null) {
      _json["sharedDriveIds"] = sharedDriveIds;
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details.
///
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
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

/// Team Drives to search
class TeamDriveInfo {
  /// List of Team Drive ids, as provided by <a
  /// href="https://developers.google.com/drive">Drive API</a>.
  core.List<core.String> teamDriveIds;

  TeamDriveInfo();

  TeamDriveInfo.fromJson(core.Map _json) {
    if (_json.containsKey("teamDriveIds")) {
      teamDriveIds = (_json["teamDriveIds"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (teamDriveIds != null) {
      _json["teamDriveIds"] = teamDriveIds;
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

/// User's information.
class UserInfo {
  /// The displayed name of the user.
  core.String displayName;

  /// The email address of the user.
  core.String email;

  UserInfo();

  UserInfo.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (email != null) {
      _json["email"] = email;
    }
    return _json;
  }
}
