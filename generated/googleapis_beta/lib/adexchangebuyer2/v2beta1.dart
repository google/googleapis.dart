// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis_beta.adexchangebuyer2.v2beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client adexchangebuyer2/v2beta1';

/// Accesses the latest features for managing Authorized Buyers accounts,
/// Real-Time Bidding configurations and auction metrics, and Marketplace
/// programmatic deals.
class Adexchangebuyer2Api {
  /// Manage your Ad Exchange buyer account configuration
  static const AdexchangeBuyerScope =
      "https://www.googleapis.com/auth/adexchange.buyer";

  final commons.ApiRequester _requester;

  AccountsResourceApi get accounts => new AccountsResourceApi(_requester);
  BiddersResourceApi get bidders => new BiddersResourceApi(_requester);

  Adexchangebuyer2Api(http.Client client,
      {core.String rootUrl = "https://adexchangebuyer.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class AccountsResourceApi {
  final commons.ApiRequester _requester;

  AccountsClientsResourceApi get clients =>
      new AccountsClientsResourceApi(_requester);
  AccountsCreativesResourceApi get creatives =>
      new AccountsCreativesResourceApi(_requester);
  AccountsFinalizedProposalsResourceApi get finalizedProposals =>
      new AccountsFinalizedProposalsResourceApi(_requester);
  AccountsProductsResourceApi get products =>
      new AccountsProductsResourceApi(_requester);
  AccountsProposalsResourceApi get proposals =>
      new AccountsProposalsResourceApi(_requester);
  AccountsPublisherProfilesResourceApi get publisherProfiles =>
      new AccountsPublisherProfilesResourceApi(_requester);

  AccountsResourceApi(commons.ApiRequester client) : _requester = client;
}

class AccountsClientsResourceApi {
  final commons.ApiRequester _requester;

  AccountsClientsInvitationsResourceApi get invitations =>
      new AccountsClientsInvitationsResourceApi(_requester);
  AccountsClientsUsersResourceApi get users =>
      new AccountsClientsUsersResourceApi(_requester);

  AccountsClientsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a new client buyer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Unique numerical account ID for the buyer of which the
  /// client buyer
  /// is a customer; the sponsor buyer to create a client for. (required)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Client].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Client> create(Client request, core.String accountId,
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
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/clients';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Client.fromJson(data));
  }

  /// Gets a client buyer with a given client account ID.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Numerical account ID of the client's sponsor buyer.
  /// (required)
  ///
  /// [clientAccountId] - Numerical account ID of the client buyer to retrieve.
  /// (required)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Client].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Client> get(core.String accountId, core.String clientAccountId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (clientAccountId == null) {
      throw new core.ArgumentError("Parameter clientAccountId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/clients/' +
        commons.Escaper.ecapeVariable('$clientAccountId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Client.fromJson(data));
  }

  /// Lists all the clients for the current sponsor buyer.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Unique numerical account ID of the sponsor buyer to list the
  /// clients for.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListClientsResponse.nextPageToken
  /// returned from the previous call to the
  /// accounts.clients.list
  /// method.
  ///
  /// [partnerClientId] - Optional unique identifier (from the standpoint of an
  /// Ad Exchange sponsor
  /// buyer partner) of the client to return.
  /// If specified, at most one client will be returned in the response.
  ///
  /// [pageSize] - Requested page size. The server may return fewer clients than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListClientsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListClientsResponse> list(core.String accountId,
      {core.String pageToken,
      core.String partnerClientId,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (partnerClientId != null) {
      _queryParams["partnerClientId"] = [partnerClientId];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/clients';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListClientsResponse.fromJson(data));
  }

  /// Updates an existing client buyer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Unique numerical account ID for the buyer of which the
  /// client buyer
  /// is a customer; the sponsor buyer to update a client for. (required)
  ///
  /// [clientAccountId] - Unique numerical account ID of the client to update.
  /// (required)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Client].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Client> update(
      Client request, core.String accountId, core.String clientAccountId,
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
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (clientAccountId == null) {
      throw new core.ArgumentError("Parameter clientAccountId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/clients/' +
        commons.Escaper.ecapeVariable('$clientAccountId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Client.fromJson(data));
  }
}

class AccountsClientsInvitationsResourceApi {
  final commons.ApiRequester _requester;

  AccountsClientsInvitationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates and sends out an email invitation to access
  /// an Ad Exchange client buyer account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Numerical account ID of the client's sponsor buyer.
  /// (required)
  ///
  /// [clientAccountId] - Numerical account ID of the client buyer that the user
  /// should be associated with. (required)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ClientUserInvitation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ClientUserInvitation> create(ClientUserInvitation request,
      core.String accountId, core.String clientAccountId,
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
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (clientAccountId == null) {
      throw new core.ArgumentError("Parameter clientAccountId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/clients/' +
        commons.Escaper.ecapeVariable('$clientAccountId') +
        '/invitations';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ClientUserInvitation.fromJson(data));
  }

  /// Retrieves an existing client user invitation.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Numerical account ID of the client's sponsor buyer.
  /// (required)
  ///
  /// [clientAccountId] - Numerical account ID of the client buyer that the user
  /// invitation
  /// to be retrieved is associated with. (required)
  ///
  /// [invitationId] - Numerical identifier of the user invitation to retrieve.
  /// (required)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ClientUserInvitation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ClientUserInvitation> get(core.String accountId,
      core.String clientAccountId, core.String invitationId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (clientAccountId == null) {
      throw new core.ArgumentError("Parameter clientAccountId is required.");
    }
    if (invitationId == null) {
      throw new core.ArgumentError("Parameter invitationId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/clients/' +
        commons.Escaper.ecapeVariable('$clientAccountId') +
        '/invitations/' +
        commons.Escaper.ecapeVariable('$invitationId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ClientUserInvitation.fromJson(data));
  }

  /// Lists all the client users invitations for a client
  /// with a given account ID.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Numerical account ID of the client's sponsor buyer.
  /// (required)
  ///
  /// [clientAccountId] - Numerical account ID of the client buyer to list
  /// invitations for.
  /// (required)
  /// You must either specify a string representation of a
  /// numerical account identifier or the `-` character
  /// to list all the invitations for all the clients
  /// of a given sponsor buyer.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListClientUserInvitationsResponse.nextPageToken
  /// returned from the previous call to the
  /// clients.invitations.list
  /// method.
  ///
  /// [pageSize] - Requested page size. Server may return fewer clients than
  /// requested.
  /// If unspecified, server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListClientUserInvitationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListClientUserInvitationsResponse> list(
      core.String accountId, core.String clientAccountId,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (clientAccountId == null) {
      throw new core.ArgumentError("Parameter clientAccountId is required.");
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

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/clients/' +
        commons.Escaper.ecapeVariable('$clientAccountId') +
        '/invitations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListClientUserInvitationsResponse.fromJson(data));
  }
}

class AccountsClientsUsersResourceApi {
  final commons.ApiRequester _requester;

  AccountsClientsUsersResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Retrieves an existing client user.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Numerical account ID of the client's sponsor buyer.
  /// (required)
  ///
  /// [clientAccountId] - Numerical account ID of the client buyer
  /// that the user to be retrieved is associated with. (required)
  ///
  /// [userId] - Numerical identifier of the user to retrieve. (required)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ClientUser].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ClientUser> get(
      core.String accountId, core.String clientAccountId, core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (clientAccountId == null) {
      throw new core.ArgumentError("Parameter clientAccountId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/clients/' +
        commons.Escaper.ecapeVariable('$clientAccountId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ClientUser.fromJson(data));
  }

  /// Lists all the known client users for a specified
  /// sponsor buyer account ID.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Numerical account ID of the sponsor buyer of the client to
  /// list users for.
  /// (required)
  ///
  /// [clientAccountId] - The account ID of the client buyer to list users for.
  /// (required)
  /// You must specify either a string representation of a
  /// numerical account identifier or the `-` character
  /// to list all the client users for all the clients
  /// of a given sponsor buyer.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListClientUsersResponse.nextPageToken
  /// returned from the previous call to the
  /// accounts.clients.users.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer clients than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListClientUsersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListClientUsersResponse> list(
      core.String accountId, core.String clientAccountId,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (clientAccountId == null) {
      throw new core.ArgumentError("Parameter clientAccountId is required.");
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

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/clients/' +
        commons.Escaper.ecapeVariable('$clientAccountId') +
        '/users';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListClientUsersResponse.fromJson(data));
  }

  /// Updates an existing client user.
  /// Only the user status can be changed on update.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Numerical account ID of the client's sponsor buyer.
  /// (required)
  ///
  /// [clientAccountId] - Numerical account ID of the client buyer that the user
  /// to be retrieved
  /// is associated with. (required)
  ///
  /// [userId] - Numerical identifier of the user to retrieve. (required)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ClientUser].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ClientUser> update(ClientUser request, core.String accountId,
      core.String clientAccountId, core.String userId,
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
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (clientAccountId == null) {
      throw new core.ArgumentError("Parameter clientAccountId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/clients/' +
        commons.Escaper.ecapeVariable('$clientAccountId') +
        '/users/' +
        commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ClientUser.fromJson(data));
  }
}

class AccountsCreativesResourceApi {
  final commons.ApiRequester _requester;

  AccountsCreativesDealAssociationsResourceApi get dealAssociations =>
      new AccountsCreativesDealAssociationsResourceApi(_requester);

  AccountsCreativesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a creative.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account that this creative belongs to.
  /// Can be used to filter the response of the
  /// creatives.list
  /// method.
  ///
  /// [duplicateIdMode] - Indicates if multiple creatives can share an ID or
  /// not. Default is
  /// NO_DUPLICATES (one ID per creative).
  /// Possible string values are:
  /// - "NO_DUPLICATES" : A NO_DUPLICATES.
  /// - "FORCE_ENABLE_DUPLICATE_IDS" : A FORCE_ENABLE_DUPLICATE_IDS.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Creative].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Creative> create(Creative request, core.String accountId,
      {core.String duplicateIdMode, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (duplicateIdMode != null) {
      _queryParams["duplicateIdMode"] = [duplicateIdMode];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/creatives';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Creative.fromJson(data));
  }

  /// Gets a creative.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account the creative belongs to.
  ///
  /// [creativeId] - The ID of the creative to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Creative].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Creative> get(core.String accountId, core.String creativeId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (creativeId == null) {
      throw new core.ArgumentError("Parameter creativeId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/creatives/' +
        commons.Escaper.ecapeVariable('$creativeId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Creative.fromJson(data));
  }

  /// Lists creatives.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account to list the creatives from.
  /// Specify "-" to list all creatives the current user has access to.
  ///
  /// [query] - An optional query string to filter creatives. If no filter is
  /// specified,
  /// all active creatives will be returned.
  /// <p>Supported queries are:
  /// <ul>
  /// <li>accountId=<i>account_id_string</i>
  /// <li>creativeId=<i>creative_id_string</i>
  /// <li>dealsStatus: {approved, conditionally_approved, disapproved,
  ///                    not_checked}
  /// <li>openAuctionStatus: {approved, conditionally_approved, disapproved,
  ///                           not_checked}
  /// <li>attribute: {a numeric attribute from the list of attributes}
  /// <li>disapprovalReason: {a reason from
  /// DisapprovalReason}
  /// </ul>
  /// Example: 'accountId=12345 AND (dealsStatus:disapproved AND
  /// disapprovalReason:unacceptable_content) OR attribute:47'
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListCreativesResponse.next_page_token
  /// returned from the previous call to 'ListCreatives' method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer creatives
  /// than requested
  /// (due to timeout constraint) even if more are available via another call.
  /// If unspecified, server will pick an appropriate default.
  /// Acceptable values are 1 to 1000, inclusive.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCreativesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCreativesResponse> list(core.String accountId,
      {core.String query,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (query != null) {
      _queryParams["query"] = [query];
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

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/creatives';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListCreativesResponse.fromJson(data));
  }

  /// Stops watching a creative. Will stop push notifications being sent to the
  /// topics when the creative changes status.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account of the creative to stop notifications for.
  ///
  /// [creativeId] - The creative ID of the creative to stop notifications for.
  /// Specify "-" to specify stopping account level notifications.
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
  async.Future<Empty> stopWatching(StopWatchingCreativeRequest request,
      core.String accountId, core.String creativeId,
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
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (creativeId == null) {
      throw new core.ArgumentError("Parameter creativeId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/creatives/' +
        commons.Escaper.ecapeVariable('$creativeId') +
        ':stopWatching';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Updates a creative.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account that this creative belongs to.
  /// Can be used to filter the response of the
  /// creatives.list
  /// method.
  ///
  /// [creativeId] - The buyer-defined creative ID of this creative.
  /// Can be used to filter the response of the
  /// creatives.list
  /// method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Creative].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Creative> update(
      Creative request, core.String accountId, core.String creativeId,
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
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (creativeId == null) {
      throw new core.ArgumentError("Parameter creativeId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/creatives/' +
        commons.Escaper.ecapeVariable('$creativeId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Creative.fromJson(data));
  }

  /// Watches a creative. Will result in push notifications being sent to the
  /// topic when the creative changes status.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account of the creative to watch.
  ///
  /// [creativeId] - The creative ID to watch for status changes.
  /// Specify "-" to watch all creatives under the above account.
  /// If both creative-level and account-level notifications are
  /// sent, only a single notification will be sent to the
  /// creative-level notification topic.
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
  async.Future<Empty> watch(WatchCreativeRequest request, core.String accountId,
      core.String creativeId,
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
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (creativeId == null) {
      throw new core.ArgumentError("Parameter creativeId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/creatives/' +
        commons.Escaper.ecapeVariable('$creativeId') +
        ':watch';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }
}

class AccountsCreativesDealAssociationsResourceApi {
  final commons.ApiRequester _requester;

  AccountsCreativesDealAssociationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Associate an existing deal with a creative.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account the creative belongs to.
  ///
  /// [creativeId] - The ID of the creative associated with the deal.
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
  async.Future<Empty> add(AddDealAssociationRequest request,
      core.String accountId, core.String creativeId,
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
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (creativeId == null) {
      throw new core.ArgumentError("Parameter creativeId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/creatives/' +
        commons.Escaper.ecapeVariable('$creativeId') +
        '/dealAssociations:add';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// List all creative-deal associations.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account to list the associations from.
  /// Specify "-" to list all creatives the current user has access to.
  ///
  /// [creativeId] - The creative ID to list the associations from.
  /// Specify "-" to list all creatives under the above account.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListDealAssociationsResponse.next_page_token
  /// returned from the previous call to 'ListDealAssociations' method.
  ///
  /// [pageSize] - Requested page size. Server may return fewer associations
  /// than requested.
  /// If unspecified, server will pick an appropriate default.
  ///
  /// [query] - An optional query string to filter deal associations. If no
  /// filter is
  /// specified, all associations will be returned.
  /// Supported queries are:
  /// <ul>
  /// <li>accountId=<i>account_id_string</i>
  /// <li>creativeId=<i>creative_id_string</i>
  /// <li>dealsId=<i>deals_id_string</i>
  /// <li>dealsStatus:{approved, conditionally_approved, disapproved,
  ///                   not_checked}
  /// <li>openAuctionStatus:{approved, conditionally_approved, disapproved,
  ///                          not_checked}
  /// </ul>
  /// Example: 'dealsId=12345 AND dealsStatus:disapproved'
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDealAssociationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDealAssociationsResponse> list(
      core.String accountId, core.String creativeId,
      {core.String pageToken,
      core.int pageSize,
      core.String query,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (creativeId == null) {
      throw new core.ArgumentError("Parameter creativeId is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (query != null) {
      _queryParams["query"] = [query];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/creatives/' +
        commons.Escaper.ecapeVariable('$creativeId') +
        '/dealAssociations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListDealAssociationsResponse.fromJson(data));
  }

  /// Remove the association between a deal and a creative.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account the creative belongs to.
  ///
  /// [creativeId] - The ID of the creative associated with the deal.
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
  async.Future<Empty> remove(RemoveDealAssociationRequest request,
      core.String accountId, core.String creativeId,
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
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (creativeId == null) {
      throw new core.ArgumentError("Parameter creativeId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/creatives/' +
        commons.Escaper.ecapeVariable('$creativeId') +
        '/dealAssociations:remove';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }
}

class AccountsFinalizedProposalsResourceApi {
  final commons.ApiRequester _requester;

  AccountsFinalizedProposalsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// List finalized proposals, regardless if a proposal is being renegotiated.
  /// A filter expression (PQL query) may be specified to filter the results.
  /// The notes will not be returned.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [pageToken] - The page token as returned from ListProposalsResponse.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [filterSyntax] - Syntax the filter is written in. Current implementation
  /// defaults to PQL
  /// but in the future it will be LIST_FILTER.
  /// Possible string values are:
  /// - "FILTER_SYNTAX_UNSPECIFIED" : A FILTER_SYNTAX_UNSPECIFIED.
  /// - "PQL" : A PQL.
  /// - "LIST_FILTER" : A LIST_FILTER.
  ///
  /// [filter] - An optional PQL filter query used to query for proposals.
  ///
  /// Nested repeated fields, such as proposal.deals.targetingCriterion,
  /// cannot be filtered.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProposalsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProposalsResponse> list(core.String accountId,
      {core.String pageToken,
      core.int pageSize,
      core.String filterSyntax,
      core.String filter,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filterSyntax != null) {
      _queryParams["filterSyntax"] = [filterSyntax];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/finalizedProposals';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListProposalsResponse.fromJson(data));
  }
}

class AccountsProductsResourceApi {
  final commons.ApiRequester _requester;

  AccountsProductsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the requested product by ID.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [productId] - The ID for the product to get the head revision for.
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
  async.Future<Product> get(core.String accountId, core.String productId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (productId == null) {
      throw new core.ArgumentError("Parameter productId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
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

  /// List all products visible to the buyer (optionally filtered by the
  /// specified PQL query).
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [filter] - An optional PQL query used to query for products. See
  /// https://developers.google.com/ad-manager/docs/pqlreference
  /// for documentation about PQL and examples.
  ///
  /// Nested repeated fields, such as product.targetingCriterion.inclusions,
  /// cannot be filtered.
  ///
  /// [pageToken] - The page token as returned from ListProductsResponse.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProductsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProductsResponse> list(core.String accountId,
      {core.String filter,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
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

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/products';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListProductsResponse.fromJson(data));
  }
}

class AccountsProposalsResourceApi {
  final commons.ApiRequester _requester;

  AccountsProposalsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Mark the proposal as accepted at the given revision number. If the number
  /// does not match the server's revision number an `ABORTED` error message
  /// will
  /// be returned. This call updates the proposal_state from `PROPOSED` to
  /// `BUYER_ACCEPTED`, or from `SELLER_ACCEPTED` to `FINALIZED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [proposalId] - The ID of the proposal to accept.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Proposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Proposal> accept(AcceptProposalRequest request,
      core.String accountId, core.String proposalId,
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
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (proposalId == null) {
      throw new core.ArgumentError("Parameter proposalId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/proposals/' +
        commons.Escaper.ecapeVariable('$proposalId') +
        ':accept';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Proposal.fromJson(data));
  }

  /// Create a new note and attach it to the proposal. The note is assigned
  /// a unique ID by the server.
  /// The proposal revision number will not increase when associated with a
  /// new note.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [proposalId] - The ID of the proposal to attach the note to.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Note].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Note> addNote(
      AddNoteRequest request, core.String accountId, core.String proposalId,
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
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (proposalId == null) {
      throw new core.ArgumentError("Parameter proposalId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/proposals/' +
        commons.Escaper.ecapeVariable('$proposalId') +
        ':addNote';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Note.fromJson(data));
  }

  /// Cancel an ongoing negotiation on a proposal. This does not cancel or end
  /// serving for the deals if the proposal has been finalized, but only cancels
  /// a negotiation unilaterally.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [proposalId] - The ID of the proposal to cancel negotiation for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Proposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Proposal> cancelNegotiation(CancelNegotiationRequest request,
      core.String accountId, core.String proposalId,
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
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (proposalId == null) {
      throw new core.ArgumentError("Parameter proposalId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/proposals/' +
        commons.Escaper.ecapeVariable('$proposalId') +
        ':cancelNegotiation';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Proposal.fromJson(data));
  }

  /// Update the given proposal to indicate that setup has been completed.
  /// This method is called by the buyer when the line items have been created
  /// on their end for a finalized proposal and all the required creatives
  /// have been uploaded using the creatives API. This call updates the
  /// `is_setup_completed` bit on the proposal and also notifies the seller.
  /// The server will advance the revision number of the most recent proposal.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [proposalId] - The ID of the proposal to mark as setup completed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Proposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Proposal> completeSetup(CompleteSetupRequest request,
      core.String accountId, core.String proposalId,
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
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (proposalId == null) {
      throw new core.ArgumentError("Parameter proposalId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/proposals/' +
        commons.Escaper.ecapeVariable('$proposalId') +
        ':completeSetup';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Proposal.fromJson(data));
  }

  /// Create the given proposal. Each created proposal and any deals it contains
  /// are assigned a unique ID by the server.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Proposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Proposal> create(Proposal request, core.String accountId,
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
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/proposals';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Proposal.fromJson(data));
  }

  /// Gets a proposal given its ID. The proposal is returned at its head
  /// revision.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [proposalId] - The unique ID of the proposal
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Proposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Proposal> get(core.String accountId, core.String proposalId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (proposalId == null) {
      throw new core.ArgumentError("Parameter proposalId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/proposals/' +
        commons.Escaper.ecapeVariable('$proposalId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Proposal.fromJson(data));
  }

  /// List proposals. A filter expression (PQL query) may be specified to
  /// filter the results. To retrieve all finalized proposals, regardless if a
  /// proposal is being renegotiated, see the FinalizedProposals resource.
  /// Note that Bidder/ChildSeat relationships differ from the usual behavior.
  /// A Bidder account can only see its child seats' proposals by specifying
  /// the ChildSeat's accountId in the request path.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [pageToken] - The page token as returned from ListProposalsResponse.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [filterSyntax] - Syntax the filter is written in. Current implementation
  /// defaults to PQL
  /// but in the future it will be LIST_FILTER.
  /// Possible string values are:
  /// - "FILTER_SYNTAX_UNSPECIFIED" : A FILTER_SYNTAX_UNSPECIFIED.
  /// - "PQL" : A PQL.
  /// - "LIST_FILTER" : A LIST_FILTER.
  ///
  /// [filter] - An optional PQL filter query used to query for proposals.
  ///
  /// Nested repeated fields, such as proposal.deals.targetingCriterion,
  /// cannot be filtered.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProposalsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProposalsResponse> list(core.String accountId,
      {core.String pageToken,
      core.int pageSize,
      core.String filterSyntax,
      core.String filter,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filterSyntax != null) {
      _queryParams["filterSyntax"] = [filterSyntax];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/proposals';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListProposalsResponse.fromJson(data));
  }

  /// Update the given proposal to pause serving.
  /// This method will set the
  /// `DealServingMetadata.DealPauseStatus.has_buyer_paused` bit to true for all
  /// deals in the proposal.
  ///
  /// It is a no-op to pause an already-paused proposal.
  /// It is an error to call PauseProposal for a proposal that is not
  /// finalized or renegotiating.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [proposalId] - The ID of the proposal to pause.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Proposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Proposal> pause(PauseProposalRequest request,
      core.String accountId, core.String proposalId,
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
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (proposalId == null) {
      throw new core.ArgumentError("Parameter proposalId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/proposals/' +
        commons.Escaper.ecapeVariable('$proposalId') +
        ':pause';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Proposal.fromJson(data));
  }

  /// Update the given proposal to resume serving.
  /// This method will set the
  /// `DealServingMetadata.DealPauseStatus.has_buyer_paused` bit to false for
  /// all
  /// deals in the proposal.
  ///
  /// Note that if the `has_seller_paused` bit is also set, serving will not
  /// resume until the seller also resumes.
  ///
  /// It is a no-op to resume an already-running proposal.
  /// It is an error to call ResumeProposal for a proposal that is not
  /// finalized or renegotiating.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [proposalId] - The ID of the proposal to resume.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Proposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Proposal> resume(ResumeProposalRequest request,
      core.String accountId, core.String proposalId,
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
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (proposalId == null) {
      throw new core.ArgumentError("Parameter proposalId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/proposals/' +
        commons.Escaper.ecapeVariable('$proposalId') +
        ':resume';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Proposal.fromJson(data));
  }

  /// Update the given proposal at the client known revision number. If the
  /// server revision has advanced since the passed-in
  /// `proposal.proposal_revision`, an `ABORTED` error message will be returned.
  /// Only the buyer-modifiable fields of the proposal will be updated.
  ///
  /// Note that the deals in the proposal will be updated to match the passed-in
  /// copy.
  /// If a passed-in deal does not have a `deal_id`, the server will assign a
  /// new
  /// unique ID and create the deal.
  /// If passed-in deal has a `deal_id`, it will be updated to match the
  /// passed-in copy.
  /// Any existing deals not present in the passed-in proposal will be deleted.
  /// It is an error to pass in a deal with a `deal_id` not present at head.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [proposalId] - The unique ID of the proposal.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Proposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Proposal> update(
      Proposal request, core.String accountId, core.String proposalId,
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
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (proposalId == null) {
      throw new core.ArgumentError("Parameter proposalId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/proposals/' +
        commons.Escaper.ecapeVariable('$proposalId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Proposal.fromJson(data));
  }
}

class AccountsPublisherProfilesResourceApi {
  final commons.ApiRequester _requester;

  AccountsPublisherProfilesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the requested publisher profile by id.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [publisherProfileId] - The id for the publisher profile to get.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PublisherProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PublisherProfile> get(
      core.String accountId, core.String publisherProfileId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (publisherProfileId == null) {
      throw new core.ArgumentError("Parameter publisherProfileId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/publisherProfiles/' +
        commons.Escaper.ecapeVariable('$publisherProfileId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new PublisherProfile.fromJson(data));
  }

  /// List all publisher profiles visible to the buyer
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [pageToken] - The page token as return from ListPublisherProfilesResponse.
  ///
  /// [pageSize] - Specify the number of results to include per page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPublisherProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPublisherProfilesResponse> list(core.String accountId,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
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

    _url = 'v2beta1/accounts/' +
        commons.Escaper.ecapeVariable('$accountId') +
        '/publisherProfiles';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListPublisherProfilesResponse.fromJson(data));
  }
}

class BiddersResourceApi {
  final commons.ApiRequester _requester;

  BiddersAccountsResourceApi get accounts =>
      new BiddersAccountsResourceApi(_requester);
  BiddersFilterSetsResourceApi get filterSets =>
      new BiddersFilterSetsResourceApi(_requester);

  BiddersResourceApi(commons.ApiRequester client) : _requester = client;
}

class BiddersAccountsResourceApi {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsResourceApi get filterSets =>
      new BiddersAccountsFilterSetsResourceApi(_requester);

  BiddersAccountsResourceApi(commons.ApiRequester client) : _requester = client;
}

class BiddersAccountsFilterSetsResourceApi {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsBidMetricsResourceApi get bidMetrics =>
      new BiddersAccountsFilterSetsBidMetricsResourceApi(_requester);
  BiddersAccountsFilterSetsBidResponseErrorsResourceApi get bidResponseErrors =>
      new BiddersAccountsFilterSetsBidResponseErrorsResourceApi(_requester);
  BiddersAccountsFilterSetsBidResponsesWithoutBidsResourceApi
      get bidResponsesWithoutBids =>
          new BiddersAccountsFilterSetsBidResponsesWithoutBidsResourceApi(
              _requester);
  BiddersAccountsFilterSetsFilteredBidRequestsResourceApi
      get filteredBidRequests =>
          new BiddersAccountsFilterSetsFilteredBidRequestsResourceApi(
              _requester);
  BiddersAccountsFilterSetsFilteredBidsResourceApi get filteredBids =>
      new BiddersAccountsFilterSetsFilteredBidsResourceApi(_requester);
  BiddersAccountsFilterSetsImpressionMetricsResourceApi get impressionMetrics =>
      new BiddersAccountsFilterSetsImpressionMetricsResourceApi(_requester);
  BiddersAccountsFilterSetsLosingBidsResourceApi get losingBids =>
      new BiddersAccountsFilterSetsLosingBidsResourceApi(_requester);
  BiddersAccountsFilterSetsNonBillableWinningBidsResourceApi
      get nonBillableWinningBids =>
          new BiddersAccountsFilterSetsNonBillableWinningBidsResourceApi(
              _requester);

  BiddersAccountsFilterSetsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates the specified filter set for the account with the given account
  /// ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [ownerName] - Name of the owner (bidder or account) of the filter set to
  /// be created.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123: `bidders/123`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456`
  /// Value must have pattern "^bidders/[^/]+/accounts/[^/]+$".
  ///
  /// [isTransient] - Whether the filter set is transient, or should be
  /// persisted indefinitely.
  /// By default, filter sets are not transient.
  /// If transient, it will be available for at least 1 hour after creation.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FilterSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FilterSet> create(FilterSet request, core.String ownerName,
      {core.bool isTransient, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (ownerName == null) {
      throw new core.ArgumentError("Parameter ownerName is required.");
    }
    if (isTransient != null) {
      _queryParams["isTransient"] = ["${isTransient}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$ownerName') +
        '/filterSets';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new FilterSet.fromJson(data));
  }

  /// Deletes the requested filter set from the account with the given account
  /// ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Full name of the resource to delete.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/accounts/[^/]+/filterSets/[^/]+$".
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

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Retrieves the requested filter set for the account with the given account
  /// ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Full name of the resource being requested.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/accounts/[^/]+/filterSets/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FilterSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FilterSet> get(core.String name, {core.String $fields}) {
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

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new FilterSet.fromJson(data));
  }

  /// Lists all filter sets for the account with the given account ID.
  ///
  /// Request parameters:
  ///
  /// [ownerName] - Name of the owner (bidder or account) of the filter sets to
  /// be listed.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123: `bidders/123`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456`
  /// Value must have pattern "^bidders/[^/]+/accounts/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListFilterSetsResponse.nextPageToken
  /// returned from the previous call to the
  /// accounts.filterSets.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFilterSetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFilterSetsResponse> list(core.String ownerName,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (ownerName == null) {
      throw new core.ArgumentError("Parameter ownerName is required.");
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$ownerName') +
        '/filterSets';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListFilterSetsResponse.fromJson(data));
  }
}

class BiddersAccountsFilterSetsBidMetricsResourceApi {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsBidMetricsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists all metrics that are measured in terms of number of bids.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/accounts/[^/]+/filterSets/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListBidMetricsResponse.nextPageToken
  /// returned from the previous call to the bidMetrics.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBidMetricsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBidMetricsResponse> list(core.String filterSetName,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filterSetName == null) {
      throw new core.ArgumentError("Parameter filterSetName is required.");
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$filterSetName') +
        '/bidMetrics';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListBidMetricsResponse.fromJson(data));
  }
}

class BiddersAccountsFilterSetsBidResponseErrorsResourceApi {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsBidResponseErrorsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// List all errors that occurred in bid responses, with the number of bid
  /// responses affected for each reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/accounts/[^/]+/filterSets/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListBidResponseErrorsResponse.nextPageToken
  /// returned from the previous call to the bidResponseErrors.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBidResponseErrorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBidResponseErrorsResponse> list(core.String filterSetName,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filterSetName == null) {
      throw new core.ArgumentError("Parameter filterSetName is required.");
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$filterSetName') +
        '/bidResponseErrors';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListBidResponseErrorsResponse.fromJson(data));
  }
}

class BiddersAccountsFilterSetsBidResponsesWithoutBidsResourceApi {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsBidResponsesWithoutBidsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// List all reasons for which bid responses were considered to have no
  /// applicable bids, with the number of bid responses affected for each
  /// reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/accounts/[^/]+/filterSets/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListBidResponsesWithoutBidsResponse.nextPageToken
  /// returned from the previous call to the bidResponsesWithoutBids.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBidResponsesWithoutBidsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBidResponsesWithoutBidsResponse> list(
      core.String filterSetName,
      {core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filterSetName == null) {
      throw new core.ArgumentError("Parameter filterSetName is required.");
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$filterSetName') +
        '/bidResponsesWithoutBids';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListBidResponsesWithoutBidsResponse.fromJson(data));
  }
}

class BiddersAccountsFilterSetsFilteredBidRequestsResourceApi {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsFilteredBidRequestsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// List all reasons that caused a bid request not to be sent for an
  /// impression, with the number of bid requests not sent for each reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/accounts/[^/]+/filterSets/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListFilteredBidRequestsResponse.nextPageToken
  /// returned from the previous call to the filteredBidRequests.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFilteredBidRequestsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFilteredBidRequestsResponse> list(core.String filterSetName,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filterSetName == null) {
      throw new core.ArgumentError("Parameter filterSetName is required.");
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$filterSetName') +
        '/filteredBidRequests';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListFilteredBidRequestsResponse.fromJson(data));
  }
}

class BiddersAccountsFilterSetsFilteredBidsResourceApi {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsFilteredBidsCreativesResourceApi get creatives =>
      new BiddersAccountsFilterSetsFilteredBidsCreativesResourceApi(_requester);
  BiddersAccountsFilterSetsFilteredBidsDetailsResourceApi get details =>
      new BiddersAccountsFilterSetsFilteredBidsDetailsResourceApi(_requester);

  BiddersAccountsFilterSetsFilteredBidsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// List all reasons for which bids were filtered, with the number of bids
  /// filtered for each reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/accounts/[^/]+/filterSets/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListFilteredBidsResponse.nextPageToken
  /// returned from the previous call to the filteredBids.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFilteredBidsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFilteredBidsResponse> list(core.String filterSetName,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filterSetName == null) {
      throw new core.ArgumentError("Parameter filterSetName is required.");
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$filterSetName') +
        '/filteredBids';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListFilteredBidsResponse.fromJson(data));
  }
}

class BiddersAccountsFilterSetsFilteredBidsCreativesResourceApi {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsFilteredBidsCreativesResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// List all creatives associated with a specific reason for which bids were
  /// filtered, with the number of bids filtered for each creative.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/accounts/[^/]+/filterSets/[^/]+$".
  ///
  /// [creativeStatusId] - The ID of the creative status for which to retrieve a
  /// breakdown by
  /// creative.
  /// See
  /// [creative-status-codes](https://developers.google.com/authorized-buyers/rtb/downloads/creative-status-codes).
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListCreativeStatusBreakdownByCreativeResponse.nextPageToken
  /// returned from the previous call to the filteredBids.creatives.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCreativeStatusBreakdownByCreativeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCreativeStatusBreakdownByCreativeResponse> list(
      core.String filterSetName, core.int creativeStatusId,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filterSetName == null) {
      throw new core.ArgumentError("Parameter filterSetName is required.");
    }
    if (creativeStatusId == null) {
      throw new core.ArgumentError("Parameter creativeStatusId is required.");
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$filterSetName') +
        '/filteredBids/' +
        commons.Escaper.ecapeVariable('$creativeStatusId') +
        '/creatives';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new ListCreativeStatusBreakdownByCreativeResponse.fromJson(data));
  }
}

class BiddersAccountsFilterSetsFilteredBidsDetailsResourceApi {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsFilteredBidsDetailsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// List all details associated with a specific reason for which bids were
  /// filtered, with the number of bids filtered for each detail.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/accounts/[^/]+/filterSets/[^/]+$".
  ///
  /// [creativeStatusId] - The ID of the creative status for which to retrieve a
  /// breakdown by detail.
  /// See
  /// [creative-status-codes](https://developers.google.com/authorized-buyers/rtb/downloads/creative-status-codes).
  /// Details are only available for statuses 10, 14, 15, 17, 18, 19, 86, and
  /// 87.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListCreativeStatusBreakdownByDetailResponse.nextPageToken
  /// returned from the previous call to the filteredBids.details.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCreativeStatusBreakdownByDetailResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCreativeStatusBreakdownByDetailResponse> list(
      core.String filterSetName, core.int creativeStatusId,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filterSetName == null) {
      throw new core.ArgumentError("Parameter filterSetName is required.");
    }
    if (creativeStatusId == null) {
      throw new core.ArgumentError("Parameter creativeStatusId is required.");
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$filterSetName') +
        '/filteredBids/' +
        commons.Escaper.ecapeVariable('$creativeStatusId') +
        '/details';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new ListCreativeStatusBreakdownByDetailResponse.fromJson(data));
  }
}

class BiddersAccountsFilterSetsImpressionMetricsResourceApi {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsImpressionMetricsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Lists all metrics that are measured in terms of number of impressions.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/accounts/[^/]+/filterSets/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListImpressionMetricsResponse.nextPageToken
  /// returned from the previous call to the impressionMetrics.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListImpressionMetricsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListImpressionMetricsResponse> list(core.String filterSetName,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filterSetName == null) {
      throw new core.ArgumentError("Parameter filterSetName is required.");
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$filterSetName') +
        '/impressionMetrics';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListImpressionMetricsResponse.fromJson(data));
  }
}

class BiddersAccountsFilterSetsLosingBidsResourceApi {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsLosingBidsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// List all reasons for which bids lost in the auction, with the number of
  /// bids that lost for each reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/accounts/[^/]+/filterSets/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListLosingBidsResponse.nextPageToken
  /// returned from the previous call to the losingBids.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLosingBidsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLosingBidsResponse> list(core.String filterSetName,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filterSetName == null) {
      throw new core.ArgumentError("Parameter filterSetName is required.");
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$filterSetName') +
        '/losingBids';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLosingBidsResponse.fromJson(data));
  }
}

class BiddersAccountsFilterSetsNonBillableWinningBidsResourceApi {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsNonBillableWinningBidsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// List all reasons for which winning bids were not billable, with the number
  /// of bids not billed for each reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/accounts/[^/]+/filterSets/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListNonBillableWinningBidsResponse.nextPageToken
  /// returned from the previous call to the nonBillableWinningBids.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNonBillableWinningBidsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNonBillableWinningBidsResponse> list(
      core.String filterSetName,
      {core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filterSetName == null) {
      throw new core.ArgumentError("Parameter filterSetName is required.");
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$filterSetName') +
        '/nonBillableWinningBids';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListNonBillableWinningBidsResponse.fromJson(data));
  }
}

class BiddersFilterSetsResourceApi {
  final commons.ApiRequester _requester;

  BiddersFilterSetsBidMetricsResourceApi get bidMetrics =>
      new BiddersFilterSetsBidMetricsResourceApi(_requester);
  BiddersFilterSetsBidResponseErrorsResourceApi get bidResponseErrors =>
      new BiddersFilterSetsBidResponseErrorsResourceApi(_requester);
  BiddersFilterSetsBidResponsesWithoutBidsResourceApi
      get bidResponsesWithoutBids =>
          new BiddersFilterSetsBidResponsesWithoutBidsResourceApi(_requester);
  BiddersFilterSetsFilteredBidRequestsResourceApi get filteredBidRequests =>
      new BiddersFilterSetsFilteredBidRequestsResourceApi(_requester);
  BiddersFilterSetsFilteredBidsResourceApi get filteredBids =>
      new BiddersFilterSetsFilteredBidsResourceApi(_requester);
  BiddersFilterSetsImpressionMetricsResourceApi get impressionMetrics =>
      new BiddersFilterSetsImpressionMetricsResourceApi(_requester);
  BiddersFilterSetsLosingBidsResourceApi get losingBids =>
      new BiddersFilterSetsLosingBidsResourceApi(_requester);
  BiddersFilterSetsNonBillableWinningBidsResourceApi
      get nonBillableWinningBids =>
          new BiddersFilterSetsNonBillableWinningBidsResourceApi(_requester);

  BiddersFilterSetsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates the specified filter set for the account with the given account
  /// ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [ownerName] - Name of the owner (bidder or account) of the filter set to
  /// be created.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123: `bidders/123`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456`
  /// Value must have pattern "^bidders/[^/]+$".
  ///
  /// [isTransient] - Whether the filter set is transient, or should be
  /// persisted indefinitely.
  /// By default, filter sets are not transient.
  /// If transient, it will be available for at least 1 hour after creation.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FilterSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FilterSet> create(FilterSet request, core.String ownerName,
      {core.bool isTransient, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (ownerName == null) {
      throw new core.ArgumentError("Parameter ownerName is required.");
    }
    if (isTransient != null) {
      _queryParams["isTransient"] = ["${isTransient}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$ownerName') +
        '/filterSets';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new FilterSet.fromJson(data));
  }

  /// Deletes the requested filter set from the account with the given account
  /// ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Full name of the resource to delete.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/filterSets/[^/]+$".
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

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Retrieves the requested filter set for the account with the given account
  /// ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Full name of the resource being requested.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/filterSets/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FilterSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FilterSet> get(core.String name, {core.String $fields}) {
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

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new FilterSet.fromJson(data));
  }

  /// Lists all filter sets for the account with the given account ID.
  ///
  /// Request parameters:
  ///
  /// [ownerName] - Name of the owner (bidder or account) of the filter sets to
  /// be listed.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123: `bidders/123`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456`
  /// Value must have pattern "^bidders/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListFilterSetsResponse.nextPageToken
  /// returned from the previous call to the
  /// accounts.filterSets.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFilterSetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFilterSetsResponse> list(core.String ownerName,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (ownerName == null) {
      throw new core.ArgumentError("Parameter ownerName is required.");
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$ownerName') +
        '/filterSets';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListFilterSetsResponse.fromJson(data));
  }
}

class BiddersFilterSetsBidMetricsResourceApi {
  final commons.ApiRequester _requester;

  BiddersFilterSetsBidMetricsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists all metrics that are measured in terms of number of bids.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/filterSets/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListBidMetricsResponse.nextPageToken
  /// returned from the previous call to the bidMetrics.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBidMetricsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBidMetricsResponse> list(core.String filterSetName,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filterSetName == null) {
      throw new core.ArgumentError("Parameter filterSetName is required.");
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$filterSetName') +
        '/bidMetrics';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListBidMetricsResponse.fromJson(data));
  }
}

class BiddersFilterSetsBidResponseErrorsResourceApi {
  final commons.ApiRequester _requester;

  BiddersFilterSetsBidResponseErrorsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// List all errors that occurred in bid responses, with the number of bid
  /// responses affected for each reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/filterSets/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListBidResponseErrorsResponse.nextPageToken
  /// returned from the previous call to the bidResponseErrors.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBidResponseErrorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBidResponseErrorsResponse> list(core.String filterSetName,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filterSetName == null) {
      throw new core.ArgumentError("Parameter filterSetName is required.");
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$filterSetName') +
        '/bidResponseErrors';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListBidResponseErrorsResponse.fromJson(data));
  }
}

class BiddersFilterSetsBidResponsesWithoutBidsResourceApi {
  final commons.ApiRequester _requester;

  BiddersFilterSetsBidResponsesWithoutBidsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// List all reasons for which bid responses were considered to have no
  /// applicable bids, with the number of bid responses affected for each
  /// reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/filterSets/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListBidResponsesWithoutBidsResponse.nextPageToken
  /// returned from the previous call to the bidResponsesWithoutBids.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBidResponsesWithoutBidsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBidResponsesWithoutBidsResponse> list(
      core.String filterSetName,
      {core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filterSetName == null) {
      throw new core.ArgumentError("Parameter filterSetName is required.");
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$filterSetName') +
        '/bidResponsesWithoutBids';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListBidResponsesWithoutBidsResponse.fromJson(data));
  }
}

class BiddersFilterSetsFilteredBidRequestsResourceApi {
  final commons.ApiRequester _requester;

  BiddersFilterSetsFilteredBidRequestsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// List all reasons that caused a bid request not to be sent for an
  /// impression, with the number of bid requests not sent for each reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/filterSets/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListFilteredBidRequestsResponse.nextPageToken
  /// returned from the previous call to the filteredBidRequests.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFilteredBidRequestsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFilteredBidRequestsResponse> list(core.String filterSetName,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filterSetName == null) {
      throw new core.ArgumentError("Parameter filterSetName is required.");
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$filterSetName') +
        '/filteredBidRequests';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListFilteredBidRequestsResponse.fromJson(data));
  }
}

class BiddersFilterSetsFilteredBidsResourceApi {
  final commons.ApiRequester _requester;

  BiddersFilterSetsFilteredBidsCreativesResourceApi get creatives =>
      new BiddersFilterSetsFilteredBidsCreativesResourceApi(_requester);
  BiddersFilterSetsFilteredBidsDetailsResourceApi get details =>
      new BiddersFilterSetsFilteredBidsDetailsResourceApi(_requester);

  BiddersFilterSetsFilteredBidsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// List all reasons for which bids were filtered, with the number of bids
  /// filtered for each reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/filterSets/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListFilteredBidsResponse.nextPageToken
  /// returned from the previous call to the filteredBids.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFilteredBidsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFilteredBidsResponse> list(core.String filterSetName,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filterSetName == null) {
      throw new core.ArgumentError("Parameter filterSetName is required.");
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$filterSetName') +
        '/filteredBids';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListFilteredBidsResponse.fromJson(data));
  }
}

class BiddersFilterSetsFilteredBidsCreativesResourceApi {
  final commons.ApiRequester _requester;

  BiddersFilterSetsFilteredBidsCreativesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// List all creatives associated with a specific reason for which bids were
  /// filtered, with the number of bids filtered for each creative.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/filterSets/[^/]+$".
  ///
  /// [creativeStatusId] - The ID of the creative status for which to retrieve a
  /// breakdown by
  /// creative.
  /// See
  /// [creative-status-codes](https://developers.google.com/authorized-buyers/rtb/downloads/creative-status-codes).
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListCreativeStatusBreakdownByCreativeResponse.nextPageToken
  /// returned from the previous call to the filteredBids.creatives.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCreativeStatusBreakdownByCreativeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCreativeStatusBreakdownByCreativeResponse> list(
      core.String filterSetName, core.int creativeStatusId,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filterSetName == null) {
      throw new core.ArgumentError("Parameter filterSetName is required.");
    }
    if (creativeStatusId == null) {
      throw new core.ArgumentError("Parameter creativeStatusId is required.");
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$filterSetName') +
        '/filteredBids/' +
        commons.Escaper.ecapeVariable('$creativeStatusId') +
        '/creatives';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new ListCreativeStatusBreakdownByCreativeResponse.fromJson(data));
  }
}

class BiddersFilterSetsFilteredBidsDetailsResourceApi {
  final commons.ApiRequester _requester;

  BiddersFilterSetsFilteredBidsDetailsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// List all details associated with a specific reason for which bids were
  /// filtered, with the number of bids filtered for each detail.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/filterSets/[^/]+$".
  ///
  /// [creativeStatusId] - The ID of the creative status for which to retrieve a
  /// breakdown by detail.
  /// See
  /// [creative-status-codes](https://developers.google.com/authorized-buyers/rtb/downloads/creative-status-codes).
  /// Details are only available for statuses 10, 14, 15, 17, 18, 19, 86, and
  /// 87.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListCreativeStatusBreakdownByDetailResponse.nextPageToken
  /// returned from the previous call to the filteredBids.details.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCreativeStatusBreakdownByDetailResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCreativeStatusBreakdownByDetailResponse> list(
      core.String filterSetName, core.int creativeStatusId,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filterSetName == null) {
      throw new core.ArgumentError("Parameter filterSetName is required.");
    }
    if (creativeStatusId == null) {
      throw new core.ArgumentError("Parameter creativeStatusId is required.");
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$filterSetName') +
        '/filteredBids/' +
        commons.Escaper.ecapeVariable('$creativeStatusId') +
        '/details';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new ListCreativeStatusBreakdownByDetailResponse.fromJson(data));
  }
}

class BiddersFilterSetsImpressionMetricsResourceApi {
  final commons.ApiRequester _requester;

  BiddersFilterSetsImpressionMetricsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists all metrics that are measured in terms of number of impressions.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/filterSets/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListImpressionMetricsResponse.nextPageToken
  /// returned from the previous call to the impressionMetrics.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListImpressionMetricsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListImpressionMetricsResponse> list(core.String filterSetName,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filterSetName == null) {
      throw new core.ArgumentError("Parameter filterSetName is required.");
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$filterSetName') +
        '/impressionMetrics';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListImpressionMetricsResponse.fromJson(data));
  }
}

class BiddersFilterSetsLosingBidsResourceApi {
  final commons.ApiRequester _requester;

  BiddersFilterSetsLosingBidsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// List all reasons for which bids lost in the auction, with the number of
  /// bids that lost for each reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/filterSets/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListLosingBidsResponse.nextPageToken
  /// returned from the previous call to the losingBids.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLosingBidsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLosingBidsResponse> list(core.String filterSetName,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filterSetName == null) {
      throw new core.ArgumentError("Parameter filterSetName is required.");
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$filterSetName') +
        '/losingBids';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLosingBidsResponse.fromJson(data));
  }
}

class BiddersFilterSetsNonBillableWinningBidsResourceApi {
  final commons.ApiRequester _requester;

  BiddersFilterSetsNonBillableWinningBidsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// List all reasons for which winning bids were not billable, with the number
  /// of bids not billed for each reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics.
  /// For example:
  ///
  /// - For a bidder-level filter set for bidder 123:
  ///   `bidders/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the buyer account representing
  /// bidder
  ///   123: `bidders/123/accounts/123/filterSets/abc`
  ///
  /// - For an account-level filter set for the child seat buyer account 456
  ///   whose bidder is 123: `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern "^bidders/[^/]+/filterSets/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  /// Typically, this is the value of
  /// ListNonBillableWinningBidsResponse.nextPageToken
  /// returned from the previous call to the nonBillableWinningBids.list
  /// method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNonBillableWinningBidsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNonBillableWinningBidsResponse> list(
      core.String filterSetName,
      {core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filterSetName == null) {
      throw new core.ArgumentError("Parameter filterSetName is required.");
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$filterSetName') +
        '/nonBillableWinningBids';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListNonBillableWinningBidsResponse.fromJson(data));
  }
}

/// An absolute date range, specified by its start date and end date.
/// The supported range of dates begins 30 days before today and ends today.
/// Validity checked upon filter set creation. If a filter set with an absolute
/// date range is run at a later date more than 30 days after start_date, it
/// will
/// fail.
class AbsoluteDateRange {
  /// The end date of the range (inclusive).
  /// Must be within the 30 days leading up to current date, and must be equal
  /// to
  /// or after start_date.
  Date endDate;

  /// The start date of the range (inclusive).
  /// Must be within the 30 days leading up to current date, and must be equal
  /// to
  /// or before end_date.
  Date startDate;

  AbsoluteDateRange();

  AbsoluteDateRange.fromJson(core.Map _json) {
    if (_json.containsKey("endDate")) {
      endDate = new Date.fromJson(_json["endDate"]);
    }
    if (_json.containsKey("startDate")) {
      startDate = new Date.fromJson(_json["startDate"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endDate != null) {
      _json["endDate"] = (endDate).toJson();
    }
    if (startDate != null) {
      _json["startDate"] = (startDate).toJson();
    }
    return _json;
  }
}

/// Request to accept a proposal.
class AcceptProposalRequest {
  /// The last known client revision number of the proposal.
  core.String proposalRevision;

  AcceptProposalRequest();

  AcceptProposalRequest.fromJson(core.Map _json) {
    if (_json.containsKey("proposalRevision")) {
      proposalRevision = _json["proposalRevision"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (proposalRevision != null) {
      _json["proposalRevision"] = proposalRevision;
    }
    return _json;
  }
}

/// Represents size of a single ad slot, or a creative.
class AdSize {
  /// The height of the ad slot in pixels.
  /// This field will be present only when size type is `PIXEL`.
  core.String height;

  /// The size type of the ad slot.
  /// Possible string values are:
  /// - "SIZE_TYPE_UNSPECIFIED" : A placeholder for an undefined size type.
  /// - "PIXEL" : Ad slot with size specified by height and width in pixels.
  /// - "INTERSTITIAL" : Special size to describe an interstitial ad slot.
  /// - "NATIVE" : Native (mobile) ads rendered by the publisher.
  /// - "FLUID" : Fluid size (i.e., responsive size) can be resized
  /// automatically with the
  /// change of outside environment.
  core.String sizeType;

  /// The width of the ad slot in pixels.
  /// This field will be present only when size type is `PIXEL`.
  core.String width;

  AdSize();

  AdSize.fromJson(core.Map _json) {
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("sizeType")) {
      sizeType = _json["sizeType"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (height != null) {
      _json["height"] = height;
    }
    if (sizeType != null) {
      _json["sizeType"] = sizeType;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

/// Detected ad technology provider information.
class AdTechnologyProviders {
  /// The detected ad technology provider IDs for this creative.
  /// See https://storage.googleapis.com/adx-rtb-dictionaries/providers.csv for
  /// mapping of provider ID to provided name, a privacy policy URL, and a list
  /// of domains which can be attributed to the provider.
  ///
  /// If the creative contains provider IDs that are outside of those listed in
  /// the `BidRequest.adslot.consented_providers_settings.consented_providers`
  /// field on the (Google bid
  /// protocol)[https://developers.google.com/authorized-buyers/rtb/downloads/realtime-bidding-proto]
  /// and the
  /// `BidRequest.user.ext.consented_providers_settings.consented_providers`
  /// field on the (OpenRTB
  /// protocol)[https://developers.google.com/authorized-buyers/rtb/downloads/openrtb-adx-proto],
  /// and a bid is submitted with that creative for an impression that will
  /// serve to an EEA user, the bid will be filtered before the auction.
  core.List<core.String> detectedProviderIds;

  /// Whether the creative contains an unidentified ad technology provider.
  ///
  /// If true for a given creative, any bid submitted with that creative for an
  /// impression that will serve to an EEA user will be filtered before the
  /// auction.
  core.bool hasUnidentifiedProvider;

  AdTechnologyProviders();

  AdTechnologyProviders.fromJson(core.Map _json) {
    if (_json.containsKey("detectedProviderIds")) {
      detectedProviderIds =
          (_json["detectedProviderIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("hasUnidentifiedProvider")) {
      hasUnidentifiedProvider = _json["hasUnidentifiedProvider"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (detectedProviderIds != null) {
      _json["detectedProviderIds"] = detectedProviderIds;
    }
    if (hasUnidentifiedProvider != null) {
      _json["hasUnidentifiedProvider"] = hasUnidentifiedProvider;
    }
    return _json;
  }
}

/// A request for associating a deal and a creative.
class AddDealAssociationRequest {
  /// The association between a creative and a deal that should be added.
  CreativeDealAssociation association;

  AddDealAssociationRequest();

  AddDealAssociationRequest.fromJson(core.Map _json) {
    if (_json.containsKey("association")) {
      association = new CreativeDealAssociation.fromJson(_json["association"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (association != null) {
      _json["association"] = (association).toJson();
    }
    return _json;
  }
}

/// Request message for adding a note to a given proposal.
class AddNoteRequest {
  /// Details of the note to add.
  Note note;

  AddNoteRequest();

  AddNoteRequest.fromJson(core.Map _json) {
    if (_json.containsKey("note")) {
      note = new Note.fromJson(_json["note"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (note != null) {
      _json["note"] = (note).toJson();
    }
    return _json;
  }
}

/// Output only. The app type the restriction applies to for mobile device.
class AppContext {
  /// The app types this restriction applies to.
  core.List<core.String> appTypes;

  AppContext();

  AppContext.fromJson(core.Map _json) {
    if (_json.containsKey("appTypes")) {
      appTypes = (_json["appTypes"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appTypes != null) {
      _json["appTypes"] = appTypes;
    }
    return _json;
  }
}

/// Output only. The auction type the restriction applies to.
class AuctionContext {
  /// The auction types this restriction applies to.
  core.List<core.String> auctionTypes;

  AuctionContext();

  AuctionContext.fromJson(core.Map _json) {
    if (_json.containsKey("auctionTypes")) {
      auctionTypes = (_json["auctionTypes"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (auctionTypes != null) {
      _json["auctionTypes"] = auctionTypes;
    }
    return _json;
  }
}

/// The set of metrics that are measured in numbers of bids, representing how
/// many bids with the specified dimension values were considered eligible at
/// each stage of the bidding funnel;
class BidMetricsRow {
  /// The number of bids that Ad Exchange received from the buyer.
  MetricValue bids;

  /// The number of bids that were permitted to compete in the auction.
  MetricValue bidsInAuction;

  /// The number of bids for which the buyer was billed.
  MetricValue billedImpressions;

  /// The number of bids that won an impression.
  MetricValue impressionsWon;

  /// The number of bids for which the corresponding impression was measurable
  /// for viewability (as defined by Active View).
  MetricValue measurableImpressions;

  /// The values of all dimensions associated with metric values in this row.
  RowDimensions rowDimensions;

  /// The number of bids for which the corresponding impression was viewable (as
  /// defined by Active View).
  MetricValue viewableImpressions;

  BidMetricsRow();

  BidMetricsRow.fromJson(core.Map _json) {
    if (_json.containsKey("bids")) {
      bids = new MetricValue.fromJson(_json["bids"]);
    }
    if (_json.containsKey("bidsInAuction")) {
      bidsInAuction = new MetricValue.fromJson(_json["bidsInAuction"]);
    }
    if (_json.containsKey("billedImpressions")) {
      billedImpressions = new MetricValue.fromJson(_json["billedImpressions"]);
    }
    if (_json.containsKey("impressionsWon")) {
      impressionsWon = new MetricValue.fromJson(_json["impressionsWon"]);
    }
    if (_json.containsKey("measurableImpressions")) {
      measurableImpressions =
          new MetricValue.fromJson(_json["measurableImpressions"]);
    }
    if (_json.containsKey("rowDimensions")) {
      rowDimensions = new RowDimensions.fromJson(_json["rowDimensions"]);
    }
    if (_json.containsKey("viewableImpressions")) {
      viewableImpressions =
          new MetricValue.fromJson(_json["viewableImpressions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bids != null) {
      _json["bids"] = (bids).toJson();
    }
    if (bidsInAuction != null) {
      _json["bidsInAuction"] = (bidsInAuction).toJson();
    }
    if (billedImpressions != null) {
      _json["billedImpressions"] = (billedImpressions).toJson();
    }
    if (impressionsWon != null) {
      _json["impressionsWon"] = (impressionsWon).toJson();
    }
    if (measurableImpressions != null) {
      _json["measurableImpressions"] = (measurableImpressions).toJson();
    }
    if (rowDimensions != null) {
      _json["rowDimensions"] = (rowDimensions).toJson();
    }
    if (viewableImpressions != null) {
      _json["viewableImpressions"] = (viewableImpressions).toJson();
    }
    return _json;
  }
}

/// The number of impressions with the specified dimension values that were
/// considered to have no applicable bids, as described by the specified status.
class BidResponseWithoutBidsStatusRow {
  /// The number of impressions for which there was a bid response with the
  /// specified status.
  MetricValue impressionCount;

  /// The values of all dimensions associated with metric values in this row.
  RowDimensions rowDimensions;

  /// The status specifying why the bid responses were considered to have no
  /// applicable bids.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : A placeholder for an undefined status.
  /// This value will never be returned in responses.
  /// - "RESPONSES_WITHOUT_BIDS" : The response had no bids.
  /// - "RESPONSES_WITHOUT_BIDS_FOR_ACCOUNT" : The response had no bids for the
  /// specified account, though it may have
  /// included bids on behalf of other accounts.
  /// - "RESPONSES_WITHOUT_BIDS_FOR_DEAL" : The response had no bids for the
  /// specified deal, though it may have
  /// included bids on other deals on behalf of the account to which the deal
  /// belongs.
  core.String status;

  BidResponseWithoutBidsStatusRow();

  BidResponseWithoutBidsStatusRow.fromJson(core.Map _json) {
    if (_json.containsKey("impressionCount")) {
      impressionCount = new MetricValue.fromJson(_json["impressionCount"]);
    }
    if (_json.containsKey("rowDimensions")) {
      rowDimensions = new RowDimensions.fromJson(_json["rowDimensions"]);
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (impressionCount != null) {
      _json["impressionCount"] = (impressionCount).toJson();
    }
    if (rowDimensions != null) {
      _json["rowDimensions"] = (rowDimensions).toJson();
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}

/// Represents a buyer of inventory. Each buyer is identified by a unique
/// Authorized Buyers account ID.
class Buyer {
  /// Authorized Buyers account ID of the buyer.
  core.String accountId;

  Buyer();

  Buyer.fromJson(core.Map _json) {
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

/// The number of impressions with the specified dimension values where the
/// corresponding bid request or bid response was not successful, as described
/// by
/// the specified callout status.
class CalloutStatusRow {
  /// The ID of the callout status.
  /// See
  /// [callout-status-codes](https://developers.google.com/authorized-buyers/rtb/downloads/callout-status-codes).
  core.int calloutStatusId;

  /// The number of impressions for which there was a bid request or bid
  /// response
  /// with the specified callout status.
  MetricValue impressionCount;

  /// The values of all dimensions associated with metric values in this row.
  RowDimensions rowDimensions;

  CalloutStatusRow();

  CalloutStatusRow.fromJson(core.Map _json) {
    if (_json.containsKey("calloutStatusId")) {
      calloutStatusId = _json["calloutStatusId"];
    }
    if (_json.containsKey("impressionCount")) {
      impressionCount = new MetricValue.fromJson(_json["impressionCount"]);
    }
    if (_json.containsKey("rowDimensions")) {
      rowDimensions = new RowDimensions.fromJson(_json["rowDimensions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (calloutStatusId != null) {
      _json["calloutStatusId"] = calloutStatusId;
    }
    if (impressionCount != null) {
      _json["impressionCount"] = (impressionCount).toJson();
    }
    if (rowDimensions != null) {
      _json["rowDimensions"] = (rowDimensions).toJson();
    }
    return _json;
  }
}

/// Request to cancel an ongoing negotiation.
class CancelNegotiationRequest {
  CancelNegotiationRequest();

  CancelNegotiationRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// A client resource represents a client buyer&mdash;an agency, a brand, or an
/// advertiser customer of the sponsor buyer. Users associated with the client
/// buyer have restricted access to the Marketplace and certain other sections
/// of
/// the Authorized Buyers UI based on the role granted to the client buyer. All
/// fields are required unless otherwise specified.
class Client {
  /// The globally-unique numerical ID of the client.
  /// The value of this field is ignored in create and update operations.
  core.String clientAccountId;

  /// Name used to represent this client to publishers.
  /// You may have multiple clients that map to the same entity,
  /// but for each client the combination of `clientName` and entity
  /// must be unique.
  /// You can specify this field as empty.
  core.String clientName;

  /// Numerical identifier of the client entity.
  /// The entity can be an advertiser, a brand, or an agency.
  /// This identifier is unique among all the entities with the same type.
  ///
  /// A list of all known advertisers with their identifiers is available in the
  /// [advertisers.txt](https://storage.googleapis.com/adx-rtb-dictionaries/advertisers.txt)
  /// file.
  ///
  /// A list of all known brands with their identifiers is available in the
  /// [brands.txt](https://storage.googleapis.com/adx-rtb-dictionaries/brands.txt)
  /// file.
  ///
  /// A list of all known agencies with their identifiers is available in the
  /// [agencies.txt](https://storage.googleapis.com/adx-rtb-dictionaries/agencies.txt)
  /// file.
  core.String entityId;

  /// The name of the entity. This field is automatically fetched based on
  /// the type and ID.
  /// The value of this field is ignored in create and update operations.
  core.String entityName;

  /// The type of the client entity: `ADVERTISER`, `BRAND`, or `AGENCY`.
  /// Possible string values are:
  /// - "ENTITY_TYPE_UNSPECIFIED" : A placeholder for an undefined client entity
  /// type. Should not be used.
  /// - "ADVERTISER" : An advertiser.
  /// - "BRAND" : A brand.
  /// - "AGENCY" : An advertising agency.
  /// - "ENTITY_TYPE_UNCLASSIFIED" : An explicit value for a client that was not
  /// yet classified
  /// as any particular entity.
  core.String entityType;

  /// Optional arbitrary unique identifier of this client buyer from the
  /// standpoint of its Ad Exchange sponsor buyer.
  ///
  /// This field can be used to associate a client buyer with the identifier
  /// in the namespace of its sponsor buyer, lookup client buyers by that
  /// identifier and verify whether an Ad Exchange counterpart of a given client
  /// buyer already exists.
  ///
  /// If present, must be unique among all the client buyers for its
  /// Ad Exchange sponsor buyer.
  core.String partnerClientId;

  /// The role which is assigned to the client buyer. Each role implies a set of
  /// permissions granted to the client. Must be one of `CLIENT_DEAL_VIEWER`,
  /// `CLIENT_DEAL_NEGOTIATOR` or `CLIENT_DEAL_APPROVER`.
  /// Possible string values are:
  /// - "CLIENT_ROLE_UNSPECIFIED" : A placeholder for an undefined client role.
  /// - "CLIENT_DEAL_VIEWER" : Users associated with this client can see
  /// publisher deal offers
  /// in the Marketplace.
  /// They can neither negotiate proposals nor approve deals.
  /// If this client is visible to publishers, they can send deal proposals
  /// to this client.
  /// - "CLIENT_DEAL_NEGOTIATOR" : Users associated with this client can respond
  /// to deal proposals
  /// sent to them by publishers. They can also initiate deal proposals
  /// of their own.
  /// - "CLIENT_DEAL_APPROVER" : Users associated with this client can approve
  /// eligible deals
  /// on your behalf. Some deals may still explicitly require publisher
  /// finalization. If this role is not selected, the sponsor buyer
  /// will need to manually approve each of their deals.
  core.String role;

  /// The status of the client buyer.
  /// Possible string values are:
  /// - "CLIENT_STATUS_UNSPECIFIED" : A placeholder for an undefined client
  /// status.
  /// - "DISABLED" : A client that is currently disabled.
  /// - "ACTIVE" : A client that is currently active.
  core.String status;

  /// Whether the client buyer will be visible to sellers.
  core.bool visibleToSeller;

  Client();

  Client.fromJson(core.Map _json) {
    if (_json.containsKey("clientAccountId")) {
      clientAccountId = _json["clientAccountId"];
    }
    if (_json.containsKey("clientName")) {
      clientName = _json["clientName"];
    }
    if (_json.containsKey("entityId")) {
      entityId = _json["entityId"];
    }
    if (_json.containsKey("entityName")) {
      entityName = _json["entityName"];
    }
    if (_json.containsKey("entityType")) {
      entityType = _json["entityType"];
    }
    if (_json.containsKey("partnerClientId")) {
      partnerClientId = _json["partnerClientId"];
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("visibleToSeller")) {
      visibleToSeller = _json["visibleToSeller"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clientAccountId != null) {
      _json["clientAccountId"] = clientAccountId;
    }
    if (clientName != null) {
      _json["clientName"] = clientName;
    }
    if (entityId != null) {
      _json["entityId"] = entityId;
    }
    if (entityName != null) {
      _json["entityName"] = entityName;
    }
    if (entityType != null) {
      _json["entityType"] = entityType;
    }
    if (partnerClientId != null) {
      _json["partnerClientId"] = partnerClientId;
    }
    if (role != null) {
      _json["role"] = role;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (visibleToSeller != null) {
      _json["visibleToSeller"] = visibleToSeller;
    }
    return _json;
  }
}

/// A client user is created under a client buyer and has restricted access to
/// the Marketplace and certain other sections of the Authorized Buyers UI based
/// on the role granted to the associated client buyer.
///
/// The only way a new client user can be created is via accepting an
/// email invitation
/// (see the
/// accounts.clients.invitations.create
/// method).
///
/// All fields are required unless otherwise specified.
class ClientUser {
  /// Numerical account ID of the client buyer
  /// with which the user is associated; the
  /// buyer must be a client of the current sponsor buyer.
  /// The value of this field is ignored in an update operation.
  core.String clientAccountId;

  /// User's email address. The value of this field
  /// is ignored in an update operation.
  core.String email;

  /// The status of the client user.
  /// Possible string values are:
  /// - "USER_STATUS_UNSPECIFIED" : A placeholder for an undefined user status.
  /// - "PENDING" : A user who was already created but hasn't accepted the
  /// invitation yet.
  /// - "ACTIVE" : A user that is currently active.
  /// - "DISABLED" : A user that is currently disabled.
  core.String status;

  /// The unique numerical ID of the client user
  /// that has accepted an invitation.
  /// The value of this field is ignored in an update operation.
  core.String userId;

  ClientUser();

  ClientUser.fromJson(core.Map _json) {
    if (_json.containsKey("clientAccountId")) {
      clientAccountId = _json["clientAccountId"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("userId")) {
      userId = _json["userId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clientAccountId != null) {
      _json["clientAccountId"] = clientAccountId;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (userId != null) {
      _json["userId"] = userId;
    }
    return _json;
  }
}

/// An invitation for a new client user to get access to the Authorized Buyers
/// UI. All fields are required unless otherwise specified.
class ClientUserInvitation {
  /// Numerical account ID of the client buyer
  /// that the invited user is associated with.
  /// The value of this field is ignored in create operations.
  core.String clientAccountId;

  /// The email address to which the invitation is sent. Email
  /// addresses should be unique among all client users under each sponsor
  /// buyer.
  core.String email;

  /// The unique numerical ID of the invitation that is sent to the user.
  /// The value of this field is ignored in create operations.
  core.String invitationId;

  ClientUserInvitation();

  ClientUserInvitation.fromJson(core.Map _json) {
    if (_json.containsKey("clientAccountId")) {
      clientAccountId = _json["clientAccountId"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("invitationId")) {
      invitationId = _json["invitationId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clientAccountId != null) {
      _json["clientAccountId"] = clientAccountId;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (invitationId != null) {
      _json["invitationId"] = invitationId;
    }
    return _json;
  }
}

/// Request message for indicating that the proposal's setup step is complete.
class CompleteSetupRequest {
  CompleteSetupRequest();

  CompleteSetupRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Contains information on how a buyer or seller can be reached.
class ContactInformation {
  /// Email address for the contact.
  core.String email;

  /// The name of the contact.
  core.String name;

  ContactInformation();

  ContactInformation.fromJson(core.Map _json) {
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (email != null) {
      _json["email"] = email;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Output only. Shows any corrections that were applied to this creative.
class Correction {
  /// The contexts for the correction.
  core.List<ServingContext> contexts;

  /// Additional details about what was corrected.
  core.List<core.String> details;

  /// The type of correction that was applied to the creative.
  /// Possible string values are:
  /// - "CORRECTION_TYPE_UNSPECIFIED" : The correction type is unknown. Refer to
  /// the details for more information.
  /// - "VENDOR_IDS_ADDED" : The ad's declared vendors did not match the vendors
  /// that were detected.
  /// The detected vendors were added.
  /// - "SSL_ATTRIBUTE_REMOVED" : The ad had the SSL attribute declared but was
  /// not SSL-compliant.
  /// The SSL attribute was removed.
  /// - "FLASH_FREE_ATTRIBUTE_REMOVED" : The ad was declared as Flash-free but
  /// contained Flash, so the Flash-free
  /// attribute was removed.
  /// - "FLASH_FREE_ATTRIBUTE_ADDED" : The ad was not declared as Flash-free but
  /// it did not reference any flash
  /// content, so the Flash-free attribute was added.
  /// - "REQUIRED_ATTRIBUTE_ADDED" : The ad did not declare a required creative
  /// attribute.
  /// The attribute was added.
  /// - "REQUIRED_VENDOR_ADDED" : The ad did not declare a required technology
  /// vendor.
  /// The technology vendor was added.
  /// - "SSL_ATTRIBUTE_ADDED" : The ad did not declare the SSL attribute but was
  /// SSL-compliant, so the
  /// SSL attribute was added.
  /// - "IN_BANNER_VIDEO_ATTRIBUTE_ADDED" : Properties consistent with In-banner
  /// video were found, so an
  /// In-Banner Video attribute was added.
  /// - "MRAID_ATTRIBUTE_ADDED" : The ad makes calls to the MRAID API so the
  /// MRAID attribute was added.
  /// - "FLASH_ATTRIBUTE_REMOVED" : The ad unnecessarily declared the Flash
  /// attribute, so the Flash attribute
  /// was removed.
  /// - "VIDEO_IN_SNIPPET_ATTRIBUTE_ADDED" : The ad contains video content.
  core.String type;

  Correction();

  Correction.fromJson(core.Map _json) {
    if (_json.containsKey("contexts")) {
      contexts = (_json["contexts"] as core.List)
          .map<ServingContext>((value) => new ServingContext.fromJson(value))
          .toList();
    }
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (contexts != null) {
      _json["contexts"] = contexts.map((value) => (value).toJson()).toList();
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// A creative and its classification data.
class Creative {
  /// The account that this creative belongs to.
  /// Can be used to filter the response of the
  /// creatives.list
  /// method.
  core.String accountId;

  /// The link to AdChoices destination page.
  core.String adChoicesDestinationUrl;

  /// Output only. The detected ad technology providers.
  AdTechnologyProviders adTechnologyProviders;

  /// The name of the company being advertised in the creative.
  core.String advertiserName;

  /// The agency ID for this creative.
  core.String agencyId;

  /// Output only. The last update timestamp of the creative via API.
  core.String apiUpdateTime;

  /// All attributes for the ads that may be shown from this creative.
  /// Can be used to filter the response of the
  /// creatives.list
  /// method.
  core.List<core.String> attributes;

  /// The set of destination URLs for the creative.
  core.List<core.String> clickThroughUrls;

  /// Output only. Shows any corrections that were applied to this creative.
  core.List<Correction> corrections;

  /// The buyer-defined creative ID of this creative.
  /// Can be used to filter the response of the
  /// creatives.list
  /// method.
  core.String creativeId;

  /// Output only. The top-level deals status of this creative.
  /// If disapproved, an entry for 'auctionType=DIRECT_DEALS' (or 'ALL') in
  /// serving_restrictions will also exist. Note
  /// that this may be nuanced with other contextual restrictions, in which
  /// case,
  /// it may be preferable to read from serving_restrictions directly.
  /// Can be used to filter the response of the
  /// creatives.list
  /// method.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : The status is unknown.
  /// - "NOT_CHECKED" : The creative has not been checked.
  /// - "CONDITIONALLY_APPROVED" : The creative has been conditionally approved.
  /// See serving_restrictions for details.
  /// - "APPROVED" : The creative has been approved.
  /// - "DISAPPROVED" : The creative has been disapproved.
  core.String dealsStatus;

  /// The set of declared destination URLs for the creative.
  core.List<core.String> declaredClickThroughUrls;

  /// Output only. Detected advertiser IDs, if any.
  core.List<core.String> detectedAdvertiserIds;

  /// Output only. The detected domains for this creative.
  core.List<core.String> detectedDomains;

  /// Output only. The detected languages for this creative. The order is
  /// arbitrary. The codes are 2 or 5 characters and are documented at
  /// https://developers.google.com/adwords/api/docs/appendix/languagecodes.
  core.List<core.String> detectedLanguages;

  /// Output only. Detected product categories, if any.
  /// See the ad-product-categories.txt file in the technical documentation
  /// for a list of IDs.
  core.List<core.int> detectedProductCategories;

  /// Output only. Detected sensitive categories, if any.
  /// See the ad-sensitive-categories.txt file in the technical documentation
  /// for
  /// a list of IDs. You should use these IDs along with the
  /// excluded-sensitive-category field in the bid request to filter your bids.
  core.List<core.int> detectedSensitiveCategories;

  /// An HTML creative.
  HtmlContent html;

  /// The set of URLs to be called to record an impression.
  core.List<core.String> impressionTrackingUrls;

  /// A native creative.
  NativeContent native;

  /// Output only. The top-level open auction status of this creative.
  /// If disapproved, an entry for 'auctionType = OPEN_AUCTION' (or 'ALL') in
  /// serving_restrictions will also exist. Note
  /// that this may be nuanced with other contextual restrictions, in which
  /// case,
  /// it may be preferable to read from serving_restrictions directly.
  /// Can be used to filter the response of the
  /// creatives.list
  /// method.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : The status is unknown.
  /// - "NOT_CHECKED" : The creative has not been checked.
  /// - "CONDITIONALLY_APPROVED" : The creative has been conditionally approved.
  /// See serving_restrictions for details.
  /// - "APPROVED" : The creative has been approved.
  /// - "DISAPPROVED" : The creative has been disapproved.
  core.String openAuctionStatus;

  /// All restricted categories for the ads that may be shown from this
  /// creative.
  core.List<core.String> restrictedCategories;

  /// Output only. The granular status of this ad in specific contexts.
  /// A context here relates to where something ultimately serves (for example,
  /// a physical location, a platform, an HTTPS vs HTTP request, or the type
  /// of auction).
  core.List<ServingRestriction> servingRestrictions;

  /// All vendor IDs for the ads that may be shown from this creative.
  /// See https://storage.googleapis.com/adx-rtb-dictionaries/vendors.txt
  /// for possible values.
  core.List<core.int> vendorIds;

  /// Output only. The version of this creative.
  core.int version;

  /// A video creative.
  VideoContent video;

  Creative();

  Creative.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("adChoicesDestinationUrl")) {
      adChoicesDestinationUrl = _json["adChoicesDestinationUrl"];
    }
    if (_json.containsKey("adTechnologyProviders")) {
      adTechnologyProviders =
          new AdTechnologyProviders.fromJson(_json["adTechnologyProviders"]);
    }
    if (_json.containsKey("advertiserName")) {
      advertiserName = _json["advertiserName"];
    }
    if (_json.containsKey("agencyId")) {
      agencyId = _json["agencyId"];
    }
    if (_json.containsKey("apiUpdateTime")) {
      apiUpdateTime = _json["apiUpdateTime"];
    }
    if (_json.containsKey("attributes")) {
      attributes = (_json["attributes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("clickThroughUrls")) {
      clickThroughUrls =
          (_json["clickThroughUrls"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("corrections")) {
      corrections = (_json["corrections"] as core.List)
          .map<Correction>((value) => new Correction.fromJson(value))
          .toList();
    }
    if (_json.containsKey("creativeId")) {
      creativeId = _json["creativeId"];
    }
    if (_json.containsKey("dealsStatus")) {
      dealsStatus = _json["dealsStatus"];
    }
    if (_json.containsKey("declaredClickThroughUrls")) {
      declaredClickThroughUrls =
          (_json["declaredClickThroughUrls"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("detectedAdvertiserIds")) {
      detectedAdvertiserIds =
          (_json["detectedAdvertiserIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("detectedDomains")) {
      detectedDomains =
          (_json["detectedDomains"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("detectedLanguages")) {
      detectedLanguages =
          (_json["detectedLanguages"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("detectedProductCategories")) {
      detectedProductCategories =
          (_json["detectedProductCategories"] as core.List).cast<core.int>();
    }
    if (_json.containsKey("detectedSensitiveCategories")) {
      detectedSensitiveCategories =
          (_json["detectedSensitiveCategories"] as core.List).cast<core.int>();
    }
    if (_json.containsKey("html")) {
      html = new HtmlContent.fromJson(_json["html"]);
    }
    if (_json.containsKey("impressionTrackingUrls")) {
      impressionTrackingUrls =
          (_json["impressionTrackingUrls"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("native")) {
      native = new NativeContent.fromJson(_json["native"]);
    }
    if (_json.containsKey("openAuctionStatus")) {
      openAuctionStatus = _json["openAuctionStatus"];
    }
    if (_json.containsKey("restrictedCategories")) {
      restrictedCategories =
          (_json["restrictedCategories"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("servingRestrictions")) {
      servingRestrictions = (_json["servingRestrictions"] as core.List)
          .map<ServingRestriction>(
              (value) => new ServingRestriction.fromJson(value))
          .toList();
    }
    if (_json.containsKey("vendorIds")) {
      vendorIds = (_json["vendorIds"] as core.List).cast<core.int>();
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
    if (_json.containsKey("video")) {
      video = new VideoContent.fromJson(_json["video"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (adChoicesDestinationUrl != null) {
      _json["adChoicesDestinationUrl"] = adChoicesDestinationUrl;
    }
    if (adTechnologyProviders != null) {
      _json["adTechnologyProviders"] = (adTechnologyProviders).toJson();
    }
    if (advertiserName != null) {
      _json["advertiserName"] = advertiserName;
    }
    if (agencyId != null) {
      _json["agencyId"] = agencyId;
    }
    if (apiUpdateTime != null) {
      _json["apiUpdateTime"] = apiUpdateTime;
    }
    if (attributes != null) {
      _json["attributes"] = attributes;
    }
    if (clickThroughUrls != null) {
      _json["clickThroughUrls"] = clickThroughUrls;
    }
    if (corrections != null) {
      _json["corrections"] =
          corrections.map((value) => (value).toJson()).toList();
    }
    if (creativeId != null) {
      _json["creativeId"] = creativeId;
    }
    if (dealsStatus != null) {
      _json["dealsStatus"] = dealsStatus;
    }
    if (declaredClickThroughUrls != null) {
      _json["declaredClickThroughUrls"] = declaredClickThroughUrls;
    }
    if (detectedAdvertiserIds != null) {
      _json["detectedAdvertiserIds"] = detectedAdvertiserIds;
    }
    if (detectedDomains != null) {
      _json["detectedDomains"] = detectedDomains;
    }
    if (detectedLanguages != null) {
      _json["detectedLanguages"] = detectedLanguages;
    }
    if (detectedProductCategories != null) {
      _json["detectedProductCategories"] = detectedProductCategories;
    }
    if (detectedSensitiveCategories != null) {
      _json["detectedSensitiveCategories"] = detectedSensitiveCategories;
    }
    if (html != null) {
      _json["html"] = (html).toJson();
    }
    if (impressionTrackingUrls != null) {
      _json["impressionTrackingUrls"] = impressionTrackingUrls;
    }
    if (native != null) {
      _json["native"] = (native).toJson();
    }
    if (openAuctionStatus != null) {
      _json["openAuctionStatus"] = openAuctionStatus;
    }
    if (restrictedCategories != null) {
      _json["restrictedCategories"] = restrictedCategories;
    }
    if (servingRestrictions != null) {
      _json["servingRestrictions"] =
          servingRestrictions.map((value) => (value).toJson()).toList();
    }
    if (vendorIds != null) {
      _json["vendorIds"] = vendorIds;
    }
    if (version != null) {
      _json["version"] = version;
    }
    if (video != null) {
      _json["video"] = (video).toJson();
    }
    return _json;
  }
}

/// The association between a creative and a deal.
class CreativeDealAssociation {
  /// The account the creative belongs to.
  core.String accountId;

  /// The ID of the creative associated with the deal.
  core.String creativeId;

  /// The externalDealId for the deal associated with the creative.
  core.String dealsId;

  CreativeDealAssociation();

  CreativeDealAssociation.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("creativeId")) {
      creativeId = _json["creativeId"];
    }
    if (_json.containsKey("dealsId")) {
      dealsId = _json["dealsId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (creativeId != null) {
      _json["creativeId"] = creativeId;
    }
    if (dealsId != null) {
      _json["dealsId"] = dealsId;
    }
    return _json;
  }
}

/// Represents creative restrictions associated to Programmatic Guaranteed/
/// Preferred Deal in Ad Manager.
/// This doesn't apply to Private Auction and AdX Preferred Deals.
class CreativeRestrictions {
  /// The format of the environment that the creatives will be displayed in.
  /// Possible string values are:
  /// - "CREATIVE_FORMAT_UNSPECIFIED" : A placeholder for an undefined creative
  /// format.
  /// - "DISPLAY" : A creative that will be displayed in environments such as a
  /// browser.
  /// - "VIDEO" : A video creative that will be displayed in environments such
  /// as a video
  /// player.
  core.String creativeFormat;
  core.List<CreativeSpecification> creativeSpecifications;

  /// Skippable video ads allow viewers to skip ads after 5 seconds.
  /// Possible string values are:
  /// - "SKIPPABLE_AD_TYPE_UNSPECIFIED" : A placeholder for an undefined
  /// skippable ad type.
  /// - "SKIPPABLE" : This video ad can be skipped after 5 seconds.
  /// - "INSTREAM_SELECT" : This video ad can be skipped after 5 seconds, and is
  /// counted as
  /// engaged view after 30 seconds. The creative is hosted on
  /// YouTube only, and viewcount of the YouTube video increments
  /// after the engaged view.
  /// - "NOT_SKIPPABLE" : This video ad is not skippable.
  core.String skippableAdType;

  CreativeRestrictions();

  CreativeRestrictions.fromJson(core.Map _json) {
    if (_json.containsKey("creativeFormat")) {
      creativeFormat = _json["creativeFormat"];
    }
    if (_json.containsKey("creativeSpecifications")) {
      creativeSpecifications = (_json["creativeSpecifications"] as core.List)
          .map<CreativeSpecification>(
              (value) => new CreativeSpecification.fromJson(value))
          .toList();
    }
    if (_json.containsKey("skippableAdType")) {
      skippableAdType = _json["skippableAdType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (creativeFormat != null) {
      _json["creativeFormat"] = creativeFormat;
    }
    if (creativeSpecifications != null) {
      _json["creativeSpecifications"] =
          creativeSpecifications.map((value) => (value).toJson()).toList();
    }
    if (skippableAdType != null) {
      _json["skippableAdType"] = skippableAdType;
    }
    return _json;
  }
}

/// Specifies the size of the creative.
class CreativeSize {
  /// What formats are allowed by the publisher.
  /// If this repeated field is empty then all formats are allowed.
  /// For example, if this field contains AllowedFormatType.AUDIO then the
  /// publisher only allows an audio ad (without any video).
  core.List<core.String> allowedFormats;

  /// For video creatives specifies the sizes of companion ads (if present).
  /// Companion sizes may be filled in only when creative_size_type = VIDEO
  core.List<Size> companionSizes;

  /// The creative size type.
  /// Possible string values are:
  /// - "CREATIVE_SIZE_TYPE_UNSPECIFIED" : A placeholder for an undefined
  /// creative size type.
  /// - "REGULAR" : The creative is a regular desktop creative.
  /// - "INTERSTITIAL" : The creative is an interstitial creative.
  /// - "VIDEO" : The creative is a video creative.
  /// - "NATIVE" : The creative is a native (mobile) creative.
  core.String creativeSizeType;

  /// Output only. The native template for this creative. It will have a value
  /// only if creative_size_type = CreativeSizeType.NATIVE.
  /// Possible string values are:
  /// - "UNKNOWN_NATIVE_TEMPLATE" : A placeholder for an undefined native
  /// template.
  /// - "NATIVE_CONTENT_AD" : The creative is linked to native content ad.
  /// - "NATIVE_APP_INSTALL_AD" : The creative is linked to native app install
  /// ad.
  /// - "NATIVE_VIDEO_CONTENT_AD" : The creative is linked to native video
  /// content ad.
  /// - "NATIVE_VIDEO_APP_INSTALL_AD" : The creative is linked to native video
  /// app install ad.
  core.String nativeTemplate;

  /// For regular or video creative size type, specifies the size
  /// of the creative
  Size size;

  /// The type of skippable ad for this creative. It will have a value only if
  /// creative_size_type = CreativeSizeType.VIDEO.
  /// Possible string values are:
  /// - "SKIPPABLE_AD_TYPE_UNSPECIFIED" : A placeholder for an undefined
  /// skippable ad type.
  /// - "GENERIC" : This video ad can be skipped after 5 seconds.
  /// - "INSTREAM_SELECT" : This video ad can be skipped after 5 seconds, and
  /// count as
  /// engaged view after 30 seconds. The creative is hosted on
  /// YouTube only, and viewcount of the YouTube video increments
  /// after the engaged view.
  /// - "NOT_SKIPPABLE" : This video ad is not skippable.
  core.String skippableAdType;

  CreativeSize();

  CreativeSize.fromJson(core.Map _json) {
    if (_json.containsKey("allowedFormats")) {
      allowedFormats =
          (_json["allowedFormats"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("companionSizes")) {
      companionSizes = (_json["companionSizes"] as core.List)
          .map<Size>((value) => new Size.fromJson(value))
          .toList();
    }
    if (_json.containsKey("creativeSizeType")) {
      creativeSizeType = _json["creativeSizeType"];
    }
    if (_json.containsKey("nativeTemplate")) {
      nativeTemplate = _json["nativeTemplate"];
    }
    if (_json.containsKey("size")) {
      size = new Size.fromJson(_json["size"]);
    }
    if (_json.containsKey("skippableAdType")) {
      skippableAdType = _json["skippableAdType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allowedFormats != null) {
      _json["allowedFormats"] = allowedFormats;
    }
    if (companionSizes != null) {
      _json["companionSizes"] =
          companionSizes.map((value) => (value).toJson()).toList();
    }
    if (creativeSizeType != null) {
      _json["creativeSizeType"] = creativeSizeType;
    }
    if (nativeTemplate != null) {
      _json["nativeTemplate"] = nativeTemplate;
    }
    if (size != null) {
      _json["size"] = (size).toJson();
    }
    if (skippableAdType != null) {
      _json["skippableAdType"] = skippableAdType;
    }
    return _json;
  }
}

/// Represents information for a creative that is associated with a Programmatic
/// Guaranteed/Preferred Deal in Ad Manager.
class CreativeSpecification {
  /// Companion sizes may be filled in only when this is a video creative.
  core.List<AdSize> creativeCompanionSizes;

  /// The size of the creative.
  AdSize creativeSize;

  CreativeSpecification();

  CreativeSpecification.fromJson(core.Map _json) {
    if (_json.containsKey("creativeCompanionSizes")) {
      creativeCompanionSizes = (_json["creativeCompanionSizes"] as core.List)
          .map<AdSize>((value) => new AdSize.fromJson(value))
          .toList();
    }
    if (_json.containsKey("creativeSize")) {
      creativeSize = new AdSize.fromJson(_json["creativeSize"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (creativeCompanionSizes != null) {
      _json["creativeCompanionSizes"] =
          creativeCompanionSizes.map((value) => (value).toJson()).toList();
    }
    if (creativeSize != null) {
      _json["creativeSize"] = (creativeSize).toJson();
    }
    return _json;
  }
}

/// The number of bids with the specified dimension values that did not win the
/// auction (either were filtered pre-auction or lost the auction), as described
/// by the specified creative status.
class CreativeStatusRow {
  /// The number of bids with the specified status.
  MetricValue bidCount;

  /// The ID of the creative status.
  /// See
  /// [creative-status-codes](https://developers.google.com/authorized-buyers/rtb/downloads/creative-status-codes).
  core.int creativeStatusId;

  /// The values of all dimensions associated with metric values in this row.
  RowDimensions rowDimensions;

  CreativeStatusRow();

  CreativeStatusRow.fromJson(core.Map _json) {
    if (_json.containsKey("bidCount")) {
      bidCount = new MetricValue.fromJson(_json["bidCount"]);
    }
    if (_json.containsKey("creativeStatusId")) {
      creativeStatusId = _json["creativeStatusId"];
    }
    if (_json.containsKey("rowDimensions")) {
      rowDimensions = new RowDimensions.fromJson(_json["rowDimensions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bidCount != null) {
      _json["bidCount"] = (bidCount).toJson();
    }
    if (creativeStatusId != null) {
      _json["creativeStatusId"] = creativeStatusId;
    }
    if (rowDimensions != null) {
      _json["rowDimensions"] = (rowDimensions).toJson();
    }
    return _json;
  }
}

/// Generic targeting used for targeting dimensions that contains a list of
/// included and excluded numeric IDs.
class CriteriaTargeting {
  /// A list of numeric IDs to be excluded.
  core.List<core.String> excludedCriteriaIds;

  /// A list of numeric IDs to be included.
  core.List<core.String> targetedCriteriaIds;

  CriteriaTargeting();

  CriteriaTargeting.fromJson(core.Map _json) {
    if (_json.containsKey("excludedCriteriaIds")) {
      excludedCriteriaIds =
          (_json["excludedCriteriaIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("targetedCriteriaIds")) {
      targetedCriteriaIds =
          (_json["targetedCriteriaIds"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (excludedCriteriaIds != null) {
      _json["excludedCriteriaIds"] = excludedCriteriaIds;
    }
    if (targetedCriteriaIds != null) {
      _json["targetedCriteriaIds"] = targetedCriteriaIds;
    }
    return _json;
  }
}

/// Represents a whole or partial calendar date, e.g. a birthday. The time of
/// day
/// and time zone are either specified elsewhere or are not significant. The
/// date
/// is relative to the Proleptic Gregorian Calendar. This can represent:
///
/// * A full date, with non-zero year, month and day values
/// * A month and day value, with a zero year, e.g. an anniversary
/// * A year on its own, with zero month and day values
/// * A year and month value, with a zero day, e.g. a credit card expiration
/// date
///
/// Related types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
class Date {
  /// Day of month. Must be from 1 to 31 and valid for the year and month, or 0
  /// if specifying a year by itself or a year and month where the day is not
  /// significant.
  core.int day;

  /// Month of year. Must be from 1 to 12, or 0 if specifying a year without a
  /// month and day.
  core.int month;

  /// Year of date. Must be from 1 to 9999, or 0 if specifying a date without
  /// a year.
  core.int year;

  Date();

  Date.fromJson(core.Map _json) {
    if (_json.containsKey("day")) {
      day = _json["day"];
    }
    if (_json.containsKey("month")) {
      month = _json["month"];
    }
    if (_json.containsKey("year")) {
      year = _json["year"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (day != null) {
      _json["day"] = day;
    }
    if (month != null) {
      _json["month"] = month;
    }
    if (year != null) {
      _json["year"] = year;
    }
    return _json;
  }
}

/// Daypart targeting message that specifies if the ad can be shown
/// only during certain parts of a day/week.
class DayPart {
  /// The day of the week to target. If unspecified, applicable to all days.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : A placeholder for when the day of the week
  /// is not specified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String dayOfWeek;

  /// The ending time of the day for the ad to show (minute level
  /// granularity). The end time is exclusive. This field is not available
  /// for filtering in PQL queries.
  TimeOfDay endTime;

  /// The starting time of day for the ad to show (minute level granularity).
  /// The start time is inclusive.
  /// This field is not available for filtering in PQL queries.
  TimeOfDay startTime;

  DayPart();

  DayPart.fromJson(core.Map _json) {
    if (_json.containsKey("dayOfWeek")) {
      dayOfWeek = _json["dayOfWeek"];
    }
    if (_json.containsKey("endTime")) {
      endTime = new TimeOfDay.fromJson(_json["endTime"]);
    }
    if (_json.containsKey("startTime")) {
      startTime = new TimeOfDay.fromJson(_json["startTime"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dayOfWeek != null) {
      _json["dayOfWeek"] = dayOfWeek;
    }
    if (endTime != null) {
      _json["endTime"] = (endTime).toJson();
    }
    if (startTime != null) {
      _json["startTime"] = (startTime).toJson();
    }
    return _json;
  }
}

/// Specifies the day part targeting criteria.
class DayPartTargeting {
  /// A list of day part targeting criterion.
  core.List<DayPart> dayParts;

  /// The timezone to use for interpreting the day part targeting.
  /// Possible string values are:
  /// - "TIME_ZONE_SOURCE_UNSPECIFIED" : A placeholder for an undefined time
  /// zone source.
  /// - "PUBLISHER" : Use publisher's time zone setting.
  /// - "USER" : Use the user's time zone setting.
  core.String timeZoneType;

  DayPartTargeting();

  DayPartTargeting.fromJson(core.Map _json) {
    if (_json.containsKey("dayParts")) {
      dayParts = (_json["dayParts"] as core.List)
          .map<DayPart>((value) => new DayPart.fromJson(value))
          .toList();
    }
    if (_json.containsKey("timeZoneType")) {
      timeZoneType = _json["timeZoneType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dayParts != null) {
      _json["dayParts"] = dayParts.map((value) => (value).toJson()).toList();
    }
    if (timeZoneType != null) {
      _json["timeZoneType"] = timeZoneType;
    }
    return _json;
  }
}

/// A deal represents a segment of inventory for displaying ads on.
/// A proposal can contain multiple deals. A deal contains the terms and
/// targeting information that is used for serving.
class Deal {
  /// Proposed flight end time of the deal.
  /// This will generally be stored in a granularity of a second.
  /// A value is not required for Private Auction deals or Preferred Deals.
  core.String availableEndTime;

  /// Optional proposed flight start time of the deal.
  /// This will generally be stored in the granularity of one second since deal
  /// serving starts at seconds boundary. Any time specified with more
  /// granularity (e.g., in milliseconds) will be truncated towards the start of
  /// time in seconds.
  core.String availableStartTime;

  /// Buyer private data (hidden from seller).
  PrivateData buyerPrivateData;

  /// The product ID from which this deal was created.
  ///
  /// Note: This field may be set only when creating the resource. Modifying
  /// this field while updating the resource will result in an error.
  core.String createProductId;

  /// Optional revision number of the product that the deal was created from.
  /// If present on create, and the server `product_revision` has advanced
  /// sinced
  /// the passed-in `create_product_revision`, an `ABORTED` error will be
  /// returned.
  ///
  /// Note: This field may be set only when creating the resource. Modifying
  /// this field while updating the resource will result in an error.
  core.String createProductRevision;

  /// Output only. The time of the deal creation.
  core.String createTime;

  /// Output only. Specifies the creative pre-approval policy.
  /// Possible string values are:
  /// - "CREATIVE_PRE_APPROVAL_POLICY_UNSPECIFIED" : A placeholder for an
  /// undefined creative pre-approval policy.
  /// - "SELLER_PRE_APPROVAL_REQUIRED" : The seller needs to approve each
  /// creative before it can serve.
  /// - "SELLER_PRE_APPROVAL_NOT_REQUIRED" : The seller does not need to approve
  /// each creative before it can serve.
  core.String creativePreApprovalPolicy;

  /// Output only. Restricitions about the creatives associated with the deal
  /// (i.e., size) This is available for Programmatic Guaranteed/Preferred Deals
  /// in Ad Manager.
  CreativeRestrictions creativeRestrictions;

  /// Output only. Specifies whether the creative is safeFrame compatible.
  /// Possible string values are:
  /// - "CREATIVE_SAFE_FRAME_COMPATIBILITY_UNSPECIFIED" : A placeholder for an
  /// undefined creative safe-frame compatibility.
  /// - "COMPATIBLE" : The creatives need to be compatible with the safe frame
  /// option.
  /// - "INCOMPATIBLE" : The creatives can be incompatible with the safe frame
  /// option.
  core.String creativeSafeFrameCompatibility;

  /// Output only. A unique deal ID for the deal (server-assigned).
  core.String dealId;

  /// Output only. Metadata about the serving status of this deal.
  DealServingMetadata dealServingMetadata;

  /// The negotiable terms of the deal.
  DealTerms dealTerms;

  /// The set of fields around delivery control that are interesting for a buyer
  /// to see but are non-negotiable. These are set by the publisher.
  DeliveryControl deliveryControl;

  /// Description for the deal terms.
  core.String description;

  /// The name of the deal.
  core.String displayName;

  /// Output only. The external deal ID assigned to this deal once the deal is
  /// finalized. This is the deal ID that shows up in serving/reporting etc.
  core.String externalDealId;

  /// Output only. True, if the buyside inventory setup is complete for this
  /// deal.
  core.bool isSetupComplete;

  /// Output only. Specifies the creative source for programmatic deals.
  /// PUBLISHER means creative is provided by seller and ADVERTISER means
  /// creative is provided by buyer.
  /// Possible string values are:
  /// - "PROGRAMMATIC_CREATIVE_SOURCE_UNSPECIFIED" : A placeholder for an
  /// undefined programmatic creative source.
  /// - "ADVERTISER" : The advertiser provides the creatives.
  /// - "PUBLISHER" : The publisher provides the creatives to be served.
  core.String programmaticCreativeSource;

  /// Output only. ID of the proposal that this deal is part of.
  core.String proposalId;

  /// Output only. Seller contact information for the deal.
  core.List<ContactInformation> sellerContacts;

  /// The syndication product associated with the deal.
  ///
  /// Note: This field may be set only when creating the resource. Modifying
  /// this field while updating the resource will result in an error.
  /// Possible string values are:
  /// - "SYNDICATION_PRODUCT_UNSPECIFIED" : A placeholder for an undefined
  /// syndication product.
  /// - "CONTENT" : This typically represents a web page.
  /// - "MOBILE" : This represents a mobile property.
  /// - "VIDEO" : This represents video ad formats.
  /// - "GAMES" : This represents ads shown within games.
  core.String syndicationProduct;

  /// Output only. Specifies the subset of inventory targeted by the deal.
  MarketplaceTargeting targeting;

  /// The shared targeting visible to buyers and sellers. Each shared
  /// targeting entity is AND'd together.
  core.List<TargetingCriteria> targetingCriterion;

  /// Output only. The time when the deal was last updated.
  core.String updateTime;

  /// The web property code for the seller copied over from the product.
  core.String webPropertyCode;

  Deal();

  Deal.fromJson(core.Map _json) {
    if (_json.containsKey("availableEndTime")) {
      availableEndTime = _json["availableEndTime"];
    }
    if (_json.containsKey("availableStartTime")) {
      availableStartTime = _json["availableStartTime"];
    }
    if (_json.containsKey("buyerPrivateData")) {
      buyerPrivateData = new PrivateData.fromJson(_json["buyerPrivateData"]);
    }
    if (_json.containsKey("createProductId")) {
      createProductId = _json["createProductId"];
    }
    if (_json.containsKey("createProductRevision")) {
      createProductRevision = _json["createProductRevision"];
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("creativePreApprovalPolicy")) {
      creativePreApprovalPolicy = _json["creativePreApprovalPolicy"];
    }
    if (_json.containsKey("creativeRestrictions")) {
      creativeRestrictions =
          new CreativeRestrictions.fromJson(_json["creativeRestrictions"]);
    }
    if (_json.containsKey("creativeSafeFrameCompatibility")) {
      creativeSafeFrameCompatibility = _json["creativeSafeFrameCompatibility"];
    }
    if (_json.containsKey("dealId")) {
      dealId = _json["dealId"];
    }
    if (_json.containsKey("dealServingMetadata")) {
      dealServingMetadata =
          new DealServingMetadata.fromJson(_json["dealServingMetadata"]);
    }
    if (_json.containsKey("dealTerms")) {
      dealTerms = new DealTerms.fromJson(_json["dealTerms"]);
    }
    if (_json.containsKey("deliveryControl")) {
      deliveryControl = new DeliveryControl.fromJson(_json["deliveryControl"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("externalDealId")) {
      externalDealId = _json["externalDealId"];
    }
    if (_json.containsKey("isSetupComplete")) {
      isSetupComplete = _json["isSetupComplete"];
    }
    if (_json.containsKey("programmaticCreativeSource")) {
      programmaticCreativeSource = _json["programmaticCreativeSource"];
    }
    if (_json.containsKey("proposalId")) {
      proposalId = _json["proposalId"];
    }
    if (_json.containsKey("sellerContacts")) {
      sellerContacts = (_json["sellerContacts"] as core.List)
          .map<ContactInformation>(
              (value) => new ContactInformation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("syndicationProduct")) {
      syndicationProduct = _json["syndicationProduct"];
    }
    if (_json.containsKey("targeting")) {
      targeting = new MarketplaceTargeting.fromJson(_json["targeting"]);
    }
    if (_json.containsKey("targetingCriterion")) {
      targetingCriterion = (_json["targetingCriterion"] as core.List)
          .map<TargetingCriteria>(
              (value) => new TargetingCriteria.fromJson(value))
          .toList();
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
    if (_json.containsKey("webPropertyCode")) {
      webPropertyCode = _json["webPropertyCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (availableEndTime != null) {
      _json["availableEndTime"] = availableEndTime;
    }
    if (availableStartTime != null) {
      _json["availableStartTime"] = availableStartTime;
    }
    if (buyerPrivateData != null) {
      _json["buyerPrivateData"] = (buyerPrivateData).toJson();
    }
    if (createProductId != null) {
      _json["createProductId"] = createProductId;
    }
    if (createProductRevision != null) {
      _json["createProductRevision"] = createProductRevision;
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (creativePreApprovalPolicy != null) {
      _json["creativePreApprovalPolicy"] = creativePreApprovalPolicy;
    }
    if (creativeRestrictions != null) {
      _json["creativeRestrictions"] = (creativeRestrictions).toJson();
    }
    if (creativeSafeFrameCompatibility != null) {
      _json["creativeSafeFrameCompatibility"] = creativeSafeFrameCompatibility;
    }
    if (dealId != null) {
      _json["dealId"] = dealId;
    }
    if (dealServingMetadata != null) {
      _json["dealServingMetadata"] = (dealServingMetadata).toJson();
    }
    if (dealTerms != null) {
      _json["dealTerms"] = (dealTerms).toJson();
    }
    if (deliveryControl != null) {
      _json["deliveryControl"] = (deliveryControl).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (externalDealId != null) {
      _json["externalDealId"] = externalDealId;
    }
    if (isSetupComplete != null) {
      _json["isSetupComplete"] = isSetupComplete;
    }
    if (programmaticCreativeSource != null) {
      _json["programmaticCreativeSource"] = programmaticCreativeSource;
    }
    if (proposalId != null) {
      _json["proposalId"] = proposalId;
    }
    if (sellerContacts != null) {
      _json["sellerContacts"] =
          sellerContacts.map((value) => (value).toJson()).toList();
    }
    if (syndicationProduct != null) {
      _json["syndicationProduct"] = syndicationProduct;
    }
    if (targeting != null) {
      _json["targeting"] = (targeting).toJson();
    }
    if (targetingCriterion != null) {
      _json["targetingCriterion"] =
          targetingCriterion.map((value) => (value).toJson()).toList();
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    if (webPropertyCode != null) {
      _json["webPropertyCode"] = webPropertyCode;
    }
    return _json;
  }
}

/// Tracks which parties (if any) have paused a deal.
/// The deal is considered paused if either hasBuyerPaused or
/// hasSellPaused is true.
class DealPauseStatus {
  /// The buyer's reason for pausing, if the buyer paused the deal.
  core.String buyerPauseReason;

  /// The role of the person who first paused this deal.
  /// Possible string values are:
  /// - "BUYER_SELLER_ROLE_UNSPECIFIED" : A placeholder for an undefined
  /// buyer/seller role.
  /// - "BUYER" : Specifies the role as buyer.
  /// - "SELLER" : Specifies the role as seller.
  core.String firstPausedBy;

  /// True, if the buyer has paused the deal unilaterally.
  core.bool hasBuyerPaused;

  /// True, if the seller has paused the deal unilaterally.
  core.bool hasSellerPaused;

  /// The seller's reason for pausing, if the seller paused the deal.
  core.String sellerPauseReason;

  DealPauseStatus();

  DealPauseStatus.fromJson(core.Map _json) {
    if (_json.containsKey("buyerPauseReason")) {
      buyerPauseReason = _json["buyerPauseReason"];
    }
    if (_json.containsKey("firstPausedBy")) {
      firstPausedBy = _json["firstPausedBy"];
    }
    if (_json.containsKey("hasBuyerPaused")) {
      hasBuyerPaused = _json["hasBuyerPaused"];
    }
    if (_json.containsKey("hasSellerPaused")) {
      hasSellerPaused = _json["hasSellerPaused"];
    }
    if (_json.containsKey("sellerPauseReason")) {
      sellerPauseReason = _json["sellerPauseReason"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (buyerPauseReason != null) {
      _json["buyerPauseReason"] = buyerPauseReason;
    }
    if (firstPausedBy != null) {
      _json["firstPausedBy"] = firstPausedBy;
    }
    if (hasBuyerPaused != null) {
      _json["hasBuyerPaused"] = hasBuyerPaused;
    }
    if (hasSellerPaused != null) {
      _json["hasSellerPaused"] = hasSellerPaused;
    }
    if (sellerPauseReason != null) {
      _json["sellerPauseReason"] = sellerPauseReason;
    }
    return _json;
  }
}

/// Message captures metadata about the serving status of a deal.
class DealServingMetadata {
  /// Output only. Tracks which parties (if any) have paused a deal.
  DealPauseStatus dealPauseStatus;

  DealServingMetadata();

  DealServingMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("dealPauseStatus")) {
      dealPauseStatus = new DealPauseStatus.fromJson(_json["dealPauseStatus"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dealPauseStatus != null) {
      _json["dealPauseStatus"] = (dealPauseStatus).toJson();
    }
    return _json;
  }
}

/// The deal terms specify the details of a Product/deal. They specify things
/// like price per buyer, the type of pricing model (e.g., fixed price, auction)
/// and expected impressions from the publisher.
class DealTerms {
  /// Visibility of the URL in bid requests. (default: BRANDED)
  /// Possible string values are:
  /// - "BRANDING_TYPE_UNSPECIFIED" : A placeholder for an undefined branding
  /// type.
  /// - "BRANDED" : Full URL is included in bid requests.
  /// - "SEMI_TRANSPARENT" : A TopLevelDomain or masked URL is sent in bid
  /// requests
  /// rather than the full one.
  core.String brandingType;

  /// Publisher provided description for the terms.
  core.String description;

  /// Non-binding estimate of the estimated gross spend for this deal.
  /// Can be set by buyer or seller.
  Price estimatedGrossSpend;

  /// Non-binding estimate of the impressions served per day.
  /// Can be set by buyer or seller.
  core.String estimatedImpressionsPerDay;

  /// The terms for guaranteed fixed price deals.
  GuaranteedFixedPriceTerms guaranteedFixedPriceTerms;

  /// The terms for non-guaranteed auction deals.
  NonGuaranteedAuctionTerms nonGuaranteedAuctionTerms;

  /// The terms for non-guaranteed fixed price deals.
  NonGuaranteedFixedPriceTerms nonGuaranteedFixedPriceTerms;

  /// The time zone name. For deals with Cost Per Day billing, defines the
  /// time zone used to mark the boundaries of a day. It should be an
  /// IANA TZ name, such as "America/Los_Angeles". For more information,
  /// see https://en.wikipedia.org/wiki/List_of_tz_database_time_zones.
  core.String sellerTimeZone;

  DealTerms();

  DealTerms.fromJson(core.Map _json) {
    if (_json.containsKey("brandingType")) {
      brandingType = _json["brandingType"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("estimatedGrossSpend")) {
      estimatedGrossSpend = new Price.fromJson(_json["estimatedGrossSpend"]);
    }
    if (_json.containsKey("estimatedImpressionsPerDay")) {
      estimatedImpressionsPerDay = _json["estimatedImpressionsPerDay"];
    }
    if (_json.containsKey("guaranteedFixedPriceTerms")) {
      guaranteedFixedPriceTerms = new GuaranteedFixedPriceTerms.fromJson(
          _json["guaranteedFixedPriceTerms"]);
    }
    if (_json.containsKey("nonGuaranteedAuctionTerms")) {
      nonGuaranteedAuctionTerms = new NonGuaranteedAuctionTerms.fromJson(
          _json["nonGuaranteedAuctionTerms"]);
    }
    if (_json.containsKey("nonGuaranteedFixedPriceTerms")) {
      nonGuaranteedFixedPriceTerms = new NonGuaranteedFixedPriceTerms.fromJson(
          _json["nonGuaranteedFixedPriceTerms"]);
    }
    if (_json.containsKey("sellerTimeZone")) {
      sellerTimeZone = _json["sellerTimeZone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (brandingType != null) {
      _json["brandingType"] = brandingType;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (estimatedGrossSpend != null) {
      _json["estimatedGrossSpend"] = (estimatedGrossSpend).toJson();
    }
    if (estimatedImpressionsPerDay != null) {
      _json["estimatedImpressionsPerDay"] = estimatedImpressionsPerDay;
    }
    if (guaranteedFixedPriceTerms != null) {
      _json["guaranteedFixedPriceTerms"] = (guaranteedFixedPriceTerms).toJson();
    }
    if (nonGuaranteedAuctionTerms != null) {
      _json["nonGuaranteedAuctionTerms"] = (nonGuaranteedAuctionTerms).toJson();
    }
    if (nonGuaranteedFixedPriceTerms != null) {
      _json["nonGuaranteedFixedPriceTerms"] =
          (nonGuaranteedFixedPriceTerms).toJson();
    }
    if (sellerTimeZone != null) {
      _json["sellerTimeZone"] = sellerTimeZone;
    }
    return _json;
  }
}

/// Message contains details about how the deals will be paced.
class DeliveryControl {
  /// Output only. Specified the creative blocking levels to be applied.
  /// Possible string values are:
  /// - "CREATIVE_BLOCKING_LEVEL_UNSPECIFIED" : A placeholder for an undefined
  /// creative blocking level.
  /// - "PUBLISHER_BLOCKING_RULES" : Publisher blocking rules will be applied.
  /// - "ADX_POLICY_BLOCKING_ONLY" : The Ad Exchange policy blocking rules will
  /// be applied.
  core.String creativeBlockingLevel;

  /// Output only. Specifies how the impression delivery will be paced.
  /// Possible string values are:
  /// - "DELIVERY_RATE_TYPE_UNSPECIFIED" : A placeholder for an undefined
  /// delivery rate type.
  /// - "EVENLY" : Impressions are served uniformly over the life of the deal.
  /// - "FRONT_LOADED" : Impressions are served front-loaded.
  /// - "AS_FAST_AS_POSSIBLE" : Impressions are served as fast as possible.
  core.String deliveryRateType;

  /// Output only. Specifies any frequency caps.
  core.List<FrequencyCap> frequencyCaps;

  DeliveryControl();

  DeliveryControl.fromJson(core.Map _json) {
    if (_json.containsKey("creativeBlockingLevel")) {
      creativeBlockingLevel = _json["creativeBlockingLevel"];
    }
    if (_json.containsKey("deliveryRateType")) {
      deliveryRateType = _json["deliveryRateType"];
    }
    if (_json.containsKey("frequencyCaps")) {
      frequencyCaps = (_json["frequencyCaps"] as core.List)
          .map<FrequencyCap>((value) => new FrequencyCap.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (creativeBlockingLevel != null) {
      _json["creativeBlockingLevel"] = creativeBlockingLevel;
    }
    if (deliveryRateType != null) {
      _json["deliveryRateType"] = deliveryRateType;
    }
    if (frequencyCaps != null) {
      _json["frequencyCaps"] =
          frequencyCaps.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Output only. The reason and details for a disapproval.
class Disapproval {
  /// Additional details about the reason for disapproval.
  core.List<core.String> details;

  /// The categorized reason for disapproval.
  /// Possible string values are:
  /// - "LENGTH_OF_IMAGE_ANIMATION" : The length of the image animation is
  /// longer than allowed.
  /// - "BROKEN_URL" : The click through URL doesn't work properly.
  /// - "MEDIA_NOT_FUNCTIONAL" : Something is wrong with the creative itself.
  /// - "INVALID_FOURTH_PARTY_CALL" : The ad makes a fourth party call to an
  /// unapproved vendor.
  /// - "INCORRECT_REMARKETING_DECLARATION" : The ad targets consumers using
  /// remarketing lists and/or collects
  /// data for subsequent use in retargeting, but does not correctly declare
  /// that use.
  /// - "LANDING_PAGE_ERROR" : Clicking on the ad leads to an error page.
  /// - "AD_SIZE_DOES_NOT_MATCH_AD_SLOT" : The ad size when rendered does not
  /// match the declaration.
  /// - "NO_BORDER" : Ads with a white background require a border, which was
  /// missing.
  /// - "FOURTH_PARTY_BROWSER_COOKIES" : The creative attempts to set cookies
  /// from a fourth party that is not
  /// certified.
  /// - "LSO_OBJECTS" : The creative sets an LSO object.
  /// - "BLANK_CREATIVE" : The ad serves a blank.
  /// - "DESTINATION_URLS_UNDECLARED" : The ad uses rotation, but not all
  /// destination URLs were declared.
  /// - "PROBLEM_WITH_CLICK_MACRO" : There is a problem with the way the click
  /// macro is used.
  /// - "INCORRECT_AD_TECHNOLOGY_DECLARATION" : The ad technology declaration is
  /// not accurate.
  /// - "INCORRECT_DESTINATION_URL_DECLARATION" : The actual destination URL
  /// does not match the declared destination URL.
  /// - "EXPANDABLE_INCORRECT_DIRECTION" : The declared expanding direction does
  /// not match the actual direction.
  /// - "EXPANDABLE_DIRECTION_NOT_SUPPORTED" : The ad does not expand in a
  /// supported direction.
  /// - "EXPANDABLE_INVALID_VENDOR" : The ad uses an expandable vendor that is
  /// not supported.
  /// - "EXPANDABLE_FUNCTIONALITY" : There was an issue with the expandable ad.
  /// - "VIDEO_INVALID_VENDOR" : The ad uses a video vendor that is not
  /// supported.
  /// - "VIDEO_UNSUPPORTED_LENGTH" : The length of the video ad is not
  /// supported.
  /// - "VIDEO_UNSUPPORTED_FORMAT" : The format of the video ad is not
  /// supported.
  /// - "VIDEO_FUNCTIONALITY" : There was an issue with the video ad.
  /// - "LANDING_PAGE_DISABLED" : The landing page does not conform to Ad
  /// Exchange policy.
  /// - "MALWARE_SUSPECTED" : The ad or the landing page may contain malware.
  /// - "ADULT_IMAGE_OR_VIDEO" : The ad contains adult images or video content.
  /// - "INACCURATE_AD_TEXT" : The ad contains text that is unclear or
  /// inaccurate.
  /// - "COUNTERFEIT_DESIGNER_GOODS" : The ad promotes counterfeit designer
  /// goods.
  /// - "POP_UP" : The ad causes a popup window to appear.
  /// - "INVALID_RTB_PROTOCOL_USAGE" : The creative does not follow policies set
  /// for the RTB protocol.
  /// - "RAW_IP_ADDRESS_IN_SNIPPET" : The ad contains a URL that uses a numeric
  /// IP address for the domain.
  /// - "UNACCEPTABLE_CONTENT_SOFTWARE" : The ad or landing page contains
  /// unacceptable content because it initiated
  /// a software or executable download.
  /// - "UNAUTHORIZED_COOKIE_ON_GOOGLE_DOMAIN" : The ad set an unauthorized
  /// cookie on a Google domain.
  /// - "UNDECLARED_FLASH_OBJECTS" : Flash content found when no flash was
  /// declared.
  /// - "INVALID_SSL_DECLARATION" : SSL support declared but not working
  /// correctly.
  /// - "DIRECT_DOWNLOAD_IN_AD" : Rich Media - Direct Download in Ad (ex. PDF
  /// download).
  /// - "MAXIMUM_DOWNLOAD_SIZE_EXCEEDED" : Maximum download size exceeded.
  /// - "DESTINATION_URL_SITE_NOT_CRAWLABLE" : Bad Destination URL: Site Not
  /// Crawlable.
  /// - "BAD_URL_LEGAL_DISAPPROVAL" : Bad URL: Legal disapproval.
  /// - "PHARMA_GAMBLING_ALCOHOL_NOT_ALLOWED" : Pharmaceuticals, Gambling,
  /// Alcohol not allowed and at least one was
  /// detected.
  /// - "DYNAMIC_DNS_AT_DESTINATION_URL" : Dynamic DNS at Destination URL.
  /// - "POOR_IMAGE_OR_VIDEO_QUALITY" : Poor Image / Video Quality.
  /// - "UNACCEPTABLE_IMAGE_CONTENT" : For example, Image Trick to Click.
  /// - "INCORRECT_IMAGE_LAYOUT" : Incorrect Image Layout.
  /// - "IRRELEVANT_IMAGE_OR_VIDEO" : Irrelevant Image / Video.
  /// - "DESTINATION_SITE_DOES_NOT_ALLOW_GOING_BACK" : Broken back button.
  /// - "MISLEADING_CLAIMS_IN_AD" : Misleading/Inaccurate claims in ads.
  /// - "RESTRICTED_PRODUCTS" : Restricted Products.
  /// - "UNACCEPTABLE_CONTENT" : Unacceptable content. For example, malware.
  /// - "AUTOMATED_AD_CLICKING" : The ad automatically redirects to the
  /// destination site without a click,
  /// or reports a click when none were made.
  /// - "INVALID_URL_PROTOCOL" : The ad uses URL protocols that do not exist or
  /// are not allowed on AdX.
  /// - "UNDECLARED_RESTRICTED_CONTENT" : Restricted content (for example,
  /// alcohol) was found in the ad but not
  /// declared.
  /// - "INVALID_REMARKETING_LIST_USAGE" : Violation of the remarketing list
  /// policy.
  /// - "DESTINATION_SITE_NOT_CRAWLABLE_ROBOTS_TXT" : The destination site's
  /// robot.txt file prevents it from being crawled.
  /// - "CLICK_TO_DOWNLOAD_NOT_AN_APP" : Click to download must link to an app.
  /// - "INACCURATE_REVIEW_EXTENSION" : A review extension must be an accurate
  /// review.
  /// - "SEXUALLY_EXPLICIT_CONTENT" : Sexually explicit content.
  /// - "GAINING_AN_UNFAIR_ADVANTAGE" : The ad tries to gain an unfair traffic
  /// advantage.
  /// - "GAMING_THE_GOOGLE_NETWORK" : The ad tries to circumvent Google's
  /// advertising systems.
  /// - "DANGEROUS_PRODUCTS_KNIVES" : The ad promotes dangerous knives.
  /// - "DANGEROUS_PRODUCTS_EXPLOSIVES" : The ad promotes explosives.
  /// - "DANGEROUS_PRODUCTS_GUNS" : The ad promotes guns & parts.
  /// - "DANGEROUS_PRODUCTS_DRUGS" : The ad promotes recreational drugs/services
  /// & related equipment.
  /// - "DANGEROUS_PRODUCTS_TOBACCO" : The ad promotes tobacco products/services
  /// & related equipment.
  /// - "DANGEROUS_PRODUCTS_WEAPONS" : The ad promotes weapons.
  /// - "UNCLEAR_OR_IRRELEVANT_AD" : The ad is unclear or irrelevant to the
  /// destination site.
  /// - "PROFESSIONAL_STANDARDS" : The ad does not meet professional standards.
  /// - "DYSFUNCTIONAL_PROMOTION" : The promotion is unnecessarily difficult to
  /// navigate.
  /// - "INVALID_INTEREST_BASED_AD" : Violation of Google's policy for
  /// interest-based ads.
  /// - "MISUSE_OF_PERSONAL_INFORMATION" : Misuse of personal information.
  /// - "OMISSION_OF_RELEVANT_INFORMATION" : Omission of relevant information.
  /// - "UNAVAILABLE_PROMOTIONS" : Unavailable promotions.
  /// - "MISLEADING_PROMOTIONS" : Misleading or unrealistic promotions.
  /// - "INAPPROPRIATE_CONTENT" : Offensive or inappropriate content.
  /// - "SENSITIVE_EVENTS" : Capitalizing on sensitive events.
  /// - "SHOCKING_CONTENT" : Shocking content.
  /// - "ENABLING_DISHONEST_BEHAVIOR" : Products & Services that enable
  /// dishonest behavior.
  /// - "TECHNICAL_REQUIREMENTS" : The ad does not meet technical requirements.
  /// - "RESTRICTED_POLITICAL_CONTENT" : Restricted political content.
  /// - "UNSUPPORTED_CONTENT" : Unsupported content.
  /// - "INVALID_BIDDING_METHOD" : Invalid bidding method.
  /// - "VIDEO_TOO_LONG" : Video length exceeds limits.
  /// - "VIOLATES_JAPANESE_PHARMACY_LAW" : Unacceptable content: Japanese
  /// healthcare.
  /// - "UNACCREDITED_PET_PHARMACY" : Online pharmacy ID required.
  /// - "ABORTION" : Unacceptable content: Abortion.
  /// - "CONTRACEPTIVES" : Unacceptable content: Birth control.
  /// - "NEED_CERTIFICATES_TO_ADVERTISE_IN_CHINA" : Restricted in China.
  /// - "KCDSP_REGISTRATION" : Unacceptable content: Korean healthcare.
  /// - "NOT_FAMILY_SAFE" : Non-family safe or adult content.
  /// - "CLINICAL_TRIAL_RECRUITMENT" : Clinical trial recruitment.
  /// - "MAXIMUM_NUMBER_OF_HTTP_CALLS_EXCEEDED" : Maximum number of HTTP calls
  /// exceeded.
  /// - "MAXIMUM_NUMBER_OF_COOKIES_EXCEEDED" : Maximum number of cookies
  /// exceeded.
  /// - "PERSONAL_LOANS" : Financial service ad does not adhere to
  /// specifications.
  /// - "UNSUPPORTED_FLASH_CONTENT" : Flash content was found in an unsupported
  /// context.
  /// - "MISUSE_BY_OMID_SCRIPT" : Misuse by an Open Measurement SDK script.
  /// - "NON_WHITELISTED_OMID_VENDOR" : Use of an Open Measurement SDK vendor
  /// not on approved whitelist.
  /// - "DESTINATION_EXPERIENCE" : Unacceptable landing page.
  /// - "UNSUPPORTED_LANGUAGE" : Unsupported language.
  /// - "NON_SSL_COMPLIANT" : Non-SSL compliant.
  /// - "TEMPORARY_PAUSE" : Temporary pausing of creative.
  /// - "BAIL_BONDS" : Promotes services related to bail bonds.
  core.String reason;

  Disapproval();

  Disapproval.fromJson(core.Map _json) {
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("reason")) {
      reason = _json["reason"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (details != null) {
      _json["details"] = details;
    }
    if (reason != null) {
      _json["reason"] = reason;
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

/// A set of filters that is applied to a request for data.
/// Within a filter set, an AND operation is performed across the filters
/// represented by each field. An OR operation is performed across the filters
/// represented by the multiple values of a repeated field, e.g.,
/// "format=VIDEO AND deal_id=12 AND (seller_network_id=34 OR
/// seller_network_id=56)".
class FilterSet {
  /// An absolute date range, defined by a start date and an end date.
  /// Interpreted relative to Pacific time zone.
  AbsoluteDateRange absoluteDateRange;

  /// The set of dimensions along which to break down the response; may be
  /// empty.
  /// If multiple dimensions are requested, the breakdown is along the Cartesian
  /// product of the requested dimensions.
  core.List<core.String> breakdownDimensions;

  /// The ID of the creative on which to filter; optional. This field may be set
  /// only for a filter set that accesses account-level troubleshooting data,
  /// i.e., one whose name matches the `bidders / * /accounts / * /filterSets /
  /// * `
  /// pattern.
  core.String creativeId;

  /// The ID of the deal on which to filter; optional. This field may be set
  /// only for a filter set that accesses account-level troubleshooting data,
  /// i.e., one whose name matches the `bidders / * /accounts / * /filterSets /
  /// * `
  /// pattern.
  core.String dealId;

  /// The environment on which to filter; optional.
  /// Possible string values are:
  /// - "ENVIRONMENT_UNSPECIFIED" : A placeholder for an undefined environment;
  /// indicates that no environment
  /// filter will be applied.
  /// - "WEB" : The ad impression appears on the web.
  /// - "APP" : The ad impression appears in an app.
  core.String environment;

  /// The list of formats on which to filter; may be empty. The filters
  /// represented by multiple formats are ORed together (i.e., if non-empty,
  /// results must match any one of the formats).
  core.List<core.String> formats;

  /// A user-defined name of the filter set. Filter set names must be unique
  /// globally and match one of the patterns:
  ///
  /// - `bidders / * /filterSets / * ` (for accessing bidder-level
  /// troubleshooting
  /// data)
  /// - `bidders / * /accounts / * /filterSets / * ` (for accessing
  /// account-level
  /// troubleshooting data)
  ///
  /// This field is required in create operations.
  core.String name;

  /// The list of platforms on which to filter; may be empty. The filters
  /// represented by multiple platforms are ORed together (i.e., if non-empty,
  /// results must match any one of the platforms).
  core.List<core.String> platforms;

  /// For Open Bidding partners only.
  /// The list of publisher identifiers on which to filter; may be empty.
  /// The filters represented by multiple publisher identifiers are ORed
  /// together.
  core.List<core.String> publisherIdentifiers;

  /// An open-ended realtime time range, defined by the aggregation start
  /// timestamp.
  RealtimeTimeRange realtimeTimeRange;

  /// A relative date range, defined by an offset from today and a duration.
  /// Interpreted relative to Pacific time zone.
  RelativeDateRange relativeDateRange;

  /// For Authorized Buyers only.
  /// The list of IDs of the seller (publisher) networks on which to filter;
  /// may be empty. The filters represented by multiple seller network IDs are
  /// ORed together (i.e., if non-empty, results must match any one of the
  /// publisher networks). See
  /// [seller-network-ids](https://developers.google.com/authorized-buyers/rtb/downloads/seller-network-ids)
  /// file for the set of existing seller network IDs.
  core.List<core.int> sellerNetworkIds;

  /// The granularity of time intervals if a time series breakdown is desired;
  /// optional.
  /// Possible string values are:
  /// - "TIME_SERIES_GRANULARITY_UNSPECIFIED" : A placeholder for an unspecified
  /// interval; no time series is applied.
  /// All rows in response will contain data for the entire requested time
  /// range.
  /// - "HOURLY" : Indicates that data will be broken down by the hour.
  /// - "DAILY" : Indicates that data will be broken down by the day.
  core.String timeSeriesGranularity;

  FilterSet();

  FilterSet.fromJson(core.Map _json) {
    if (_json.containsKey("absoluteDateRange")) {
      absoluteDateRange =
          new AbsoluteDateRange.fromJson(_json["absoluteDateRange"]);
    }
    if (_json.containsKey("breakdownDimensions")) {
      breakdownDimensions =
          (_json["breakdownDimensions"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("creativeId")) {
      creativeId = _json["creativeId"];
    }
    if (_json.containsKey("dealId")) {
      dealId = _json["dealId"];
    }
    if (_json.containsKey("environment")) {
      environment = _json["environment"];
    }
    if (_json.containsKey("formats")) {
      formats = (_json["formats"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("platforms")) {
      platforms = (_json["platforms"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("publisherIdentifiers")) {
      publisherIdentifiers =
          (_json["publisherIdentifiers"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("realtimeTimeRange")) {
      realtimeTimeRange =
          new RealtimeTimeRange.fromJson(_json["realtimeTimeRange"]);
    }
    if (_json.containsKey("relativeDateRange")) {
      relativeDateRange =
          new RelativeDateRange.fromJson(_json["relativeDateRange"]);
    }
    if (_json.containsKey("sellerNetworkIds")) {
      sellerNetworkIds =
          (_json["sellerNetworkIds"] as core.List).cast<core.int>();
    }
    if (_json.containsKey("timeSeriesGranularity")) {
      timeSeriesGranularity = _json["timeSeriesGranularity"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (absoluteDateRange != null) {
      _json["absoluteDateRange"] = (absoluteDateRange).toJson();
    }
    if (breakdownDimensions != null) {
      _json["breakdownDimensions"] = breakdownDimensions;
    }
    if (creativeId != null) {
      _json["creativeId"] = creativeId;
    }
    if (dealId != null) {
      _json["dealId"] = dealId;
    }
    if (environment != null) {
      _json["environment"] = environment;
    }
    if (formats != null) {
      _json["formats"] = formats;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (platforms != null) {
      _json["platforms"] = platforms;
    }
    if (publisherIdentifiers != null) {
      _json["publisherIdentifiers"] = publisherIdentifiers;
    }
    if (realtimeTimeRange != null) {
      _json["realtimeTimeRange"] = (realtimeTimeRange).toJson();
    }
    if (relativeDateRange != null) {
      _json["relativeDateRange"] = (relativeDateRange).toJson();
    }
    if (sellerNetworkIds != null) {
      _json["sellerNetworkIds"] = sellerNetworkIds;
    }
    if (timeSeriesGranularity != null) {
      _json["timeSeriesGranularity"] = timeSeriesGranularity;
    }
    return _json;
  }
}

/// The number of filtered bids with the specified dimension values that have
/// the
/// specified creative.
class FilteredBidCreativeRow {
  /// The number of bids with the specified creative.
  MetricValue bidCount;

  /// The ID of the creative.
  core.String creativeId;

  /// The values of all dimensions associated with metric values in this row.
  RowDimensions rowDimensions;

  FilteredBidCreativeRow();

  FilteredBidCreativeRow.fromJson(core.Map _json) {
    if (_json.containsKey("bidCount")) {
      bidCount = new MetricValue.fromJson(_json["bidCount"]);
    }
    if (_json.containsKey("creativeId")) {
      creativeId = _json["creativeId"];
    }
    if (_json.containsKey("rowDimensions")) {
      rowDimensions = new RowDimensions.fromJson(_json["rowDimensions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bidCount != null) {
      _json["bidCount"] = (bidCount).toJson();
    }
    if (creativeId != null) {
      _json["creativeId"] = creativeId;
    }
    if (rowDimensions != null) {
      _json["rowDimensions"] = (rowDimensions).toJson();
    }
    return _json;
  }
}

/// The number of filtered bids with the specified dimension values, among those
/// filtered due to the requested filtering reason (i.e. creative status), that
/// have the specified detail.
class FilteredBidDetailRow {
  /// The number of bids with the specified detail.
  MetricValue bidCount;

  /// The ID of the detail. The associated value can be looked up in the
  /// dictionary file corresponding to the DetailType in the response message.
  core.int detailId;

  /// The values of all dimensions associated with metric values in this row.
  RowDimensions rowDimensions;

  FilteredBidDetailRow();

  FilteredBidDetailRow.fromJson(core.Map _json) {
    if (_json.containsKey("bidCount")) {
      bidCount = new MetricValue.fromJson(_json["bidCount"]);
    }
    if (_json.containsKey("detailId")) {
      detailId = _json["detailId"];
    }
    if (_json.containsKey("rowDimensions")) {
      rowDimensions = new RowDimensions.fromJson(_json["rowDimensions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bidCount != null) {
      _json["bidCount"] = (bidCount).toJson();
    }
    if (detailId != null) {
      _json["detailId"] = detailId;
    }
    if (rowDimensions != null) {
      _json["rowDimensions"] = (rowDimensions).toJson();
    }
    return _json;
  }
}

/// Represents a list of targeted and excluded mobile application IDs that
/// publishers own.
/// Mobile application IDs are from App Store and Google Play Store.
/// Android App ID, for example, com.google.android.apps.maps, can be found in
/// Google Play Store URL.
/// iOS App ID (which is a number) can be found at the end of iTunes store URL.
/// First party mobile applications is either included or excluded.
class FirstPartyMobileApplicationTargeting {
  /// A list of application IDs to be excluded.
  core.List<core.String> excludedAppIds;

  /// A list of application IDs to be included.
  core.List<core.String> targetedAppIds;

  FirstPartyMobileApplicationTargeting();

  FirstPartyMobileApplicationTargeting.fromJson(core.Map _json) {
    if (_json.containsKey("excludedAppIds")) {
      excludedAppIds =
          (_json["excludedAppIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("targetedAppIds")) {
      targetedAppIds =
          (_json["targetedAppIds"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (excludedAppIds != null) {
      _json["excludedAppIds"] = excludedAppIds;
    }
    if (targetedAppIds != null) {
      _json["targetedAppIds"] = targetedAppIds;
    }
    return _json;
  }
}

/// Frequency cap.
class FrequencyCap {
  /// The maximum number of impressions that can be served to a user within the
  /// specified time period.
  core.int maxImpressions;

  /// The amount of time, in the units specified by time_unit_type. Defines the
  /// amount of time over which impressions per user are counted and capped.
  core.int numTimeUnits;

  /// The time unit. Along with num_time_units defines the amount of time over
  /// which impressions per user are counted and capped.
  /// Possible string values are:
  /// - "TIME_UNIT_TYPE_UNSPECIFIED" : A placeholder for an undefined time unit
  /// type. This just indicates the
  /// variable with this value hasn't been initialized.
  /// - "MINUTE" : Minute
  /// - "HOUR" : Hour
  /// - "DAY" : Day
  /// - "WEEK" : Week
  /// - "MONTH" : Month
  /// - "LIFETIME" : Lifetime
  core.String timeUnitType;

  FrequencyCap();

  FrequencyCap.fromJson(core.Map _json) {
    if (_json.containsKey("maxImpressions")) {
      maxImpressions = _json["maxImpressions"];
    }
    if (_json.containsKey("numTimeUnits")) {
      numTimeUnits = _json["numTimeUnits"];
    }
    if (_json.containsKey("timeUnitType")) {
      timeUnitType = _json["timeUnitType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (maxImpressions != null) {
      _json["maxImpressions"] = maxImpressions;
    }
    if (numTimeUnits != null) {
      _json["numTimeUnits"] = numTimeUnits;
    }
    if (timeUnitType != null) {
      _json["timeUnitType"] = timeUnitType;
    }
    return _json;
  }
}

/// Terms for Programmatic Guaranteed Deals.
class GuaranteedFixedPriceTerms {
  /// Fixed price for the specified buyer.
  core.List<PricePerBuyer> fixedPrices;

  /// Guaranteed impressions as a percentage. This is the percentage
  /// of guaranteed looks that the buyer is guaranteeing to buy.
  core.String guaranteedImpressions;

  /// Count of guaranteed looks. Required for deal, optional for product.
  core.String guaranteedLooks;

  /// Daily minimum looks for CPD deal types.
  core.String minimumDailyLooks;

  GuaranteedFixedPriceTerms();

  GuaranteedFixedPriceTerms.fromJson(core.Map _json) {
    if (_json.containsKey("fixedPrices")) {
      fixedPrices = (_json["fixedPrices"] as core.List)
          .map<PricePerBuyer>((value) => new PricePerBuyer.fromJson(value))
          .toList();
    }
    if (_json.containsKey("guaranteedImpressions")) {
      guaranteedImpressions = _json["guaranteedImpressions"];
    }
    if (_json.containsKey("guaranteedLooks")) {
      guaranteedLooks = _json["guaranteedLooks"];
    }
    if (_json.containsKey("minimumDailyLooks")) {
      minimumDailyLooks = _json["minimumDailyLooks"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fixedPrices != null) {
      _json["fixedPrices"] =
          fixedPrices.map((value) => (value).toJson()).toList();
    }
    if (guaranteedImpressions != null) {
      _json["guaranteedImpressions"] = guaranteedImpressions;
    }
    if (guaranteedLooks != null) {
      _json["guaranteedLooks"] = guaranteedLooks;
    }
    if (minimumDailyLooks != null) {
      _json["minimumDailyLooks"] = minimumDailyLooks;
    }
    return _json;
  }
}

/// HTML content for a creative.
class HtmlContent {
  /// The height of the HTML snippet in pixels.
  core.int height;

  /// The HTML snippet that displays the ad when inserted in the web page.
  core.String snippet;

  /// The width of the HTML snippet in pixels.
  core.int width;

  HtmlContent();

  HtmlContent.fromJson(core.Map _json) {
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("snippet")) {
      snippet = _json["snippet"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (height != null) {
      _json["height"] = height;
    }
    if (snippet != null) {
      _json["snippet"] = snippet;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

/// An image resource. You may provide a larger image than was requested,
/// so long as the aspect ratio is preserved.
class Image {
  /// Image height in pixels.
  core.int height;

  /// The URL of the image.
  core.String url;

  /// Image width in pixels.
  core.int width;

  Image();

  Image.fromJson(core.Map _json) {
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (height != null) {
      _json["height"] = height;
    }
    if (url != null) {
      _json["url"] = url;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

/// The set of metrics that are measured in numbers of impressions, representing
/// how many impressions with the specified dimension values were considered
/// eligible at each stage of the bidding funnel.
class ImpressionMetricsRow {
  /// The number of impressions available to the buyer on Ad Exchange.
  /// In some cases this value may be unavailable.
  MetricValue availableImpressions;

  /// The number of impressions for which Ad Exchange sent the buyer a bid
  /// request.
  MetricValue bidRequests;

  /// The number of impressions that match the buyer's inventory pretargeting.
  MetricValue inventoryMatches;

  /// The number of impressions for which Ad Exchange received a response from
  /// the buyer that contained at least one applicable bid.
  MetricValue responsesWithBids;

  /// The values of all dimensions associated with metric values in this row.
  RowDimensions rowDimensions;

  /// The number of impressions for which the buyer successfully sent a response
  /// to Ad Exchange.
  MetricValue successfulResponses;

  ImpressionMetricsRow();

  ImpressionMetricsRow.fromJson(core.Map _json) {
    if (_json.containsKey("availableImpressions")) {
      availableImpressions =
          new MetricValue.fromJson(_json["availableImpressions"]);
    }
    if (_json.containsKey("bidRequests")) {
      bidRequests = new MetricValue.fromJson(_json["bidRequests"]);
    }
    if (_json.containsKey("inventoryMatches")) {
      inventoryMatches = new MetricValue.fromJson(_json["inventoryMatches"]);
    }
    if (_json.containsKey("responsesWithBids")) {
      responsesWithBids = new MetricValue.fromJson(_json["responsesWithBids"]);
    }
    if (_json.containsKey("rowDimensions")) {
      rowDimensions = new RowDimensions.fromJson(_json["rowDimensions"]);
    }
    if (_json.containsKey("successfulResponses")) {
      successfulResponses =
          new MetricValue.fromJson(_json["successfulResponses"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (availableImpressions != null) {
      _json["availableImpressions"] = (availableImpressions).toJson();
    }
    if (bidRequests != null) {
      _json["bidRequests"] = (bidRequests).toJson();
    }
    if (inventoryMatches != null) {
      _json["inventoryMatches"] = (inventoryMatches).toJson();
    }
    if (responsesWithBids != null) {
      _json["responsesWithBids"] = (responsesWithBids).toJson();
    }
    if (rowDimensions != null) {
      _json["rowDimensions"] = (rowDimensions).toJson();
    }
    if (successfulResponses != null) {
      _json["successfulResponses"] = (successfulResponses).toJson();
    }
    return _json;
  }
}

/// Represents the size of an ad unit that can be targeted on an ad
/// request. It only applies to Private Auction, AdX Preferred Deals and
/// Auction Packages. This targeting does not apply to Programmatic Guaranteed
/// and Preferred Deals in Ad Manager.
class InventorySizeTargeting {
  /// A list of inventory sizes to be excluded.
  core.List<AdSize> excludedInventorySizes;

  /// A list of inventory sizes to be included.
  core.List<AdSize> targetedInventorySizes;

  InventorySizeTargeting();

  InventorySizeTargeting.fromJson(core.Map _json) {
    if (_json.containsKey("excludedInventorySizes")) {
      excludedInventorySizes = (_json["excludedInventorySizes"] as core.List)
          .map<AdSize>((value) => new AdSize.fromJson(value))
          .toList();
    }
    if (_json.containsKey("targetedInventorySizes")) {
      targetedInventorySizes = (_json["targetedInventorySizes"] as core.List)
          .map<AdSize>((value) => new AdSize.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (excludedInventorySizes != null) {
      _json["excludedInventorySizes"] =
          excludedInventorySizes.map((value) => (value).toJson()).toList();
    }
    if (targetedInventorySizes != null) {
      _json["targetedInventorySizes"] =
          targetedInventorySizes.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response message for listing the metrics that are measured in number of
/// bids.
class ListBidMetricsResponse {
  /// List of rows, each containing a set of bid metrics.
  core.List<BidMetricsRow> bidMetricsRows;

  /// A token to retrieve the next page of results.
  /// Pass this value in the
  /// ListBidMetricsRequest.pageToken
  /// field in the subsequent call to the bidMetrics.list
  /// method to retrieve the next page of results.
  core.String nextPageToken;

  ListBidMetricsResponse();

  ListBidMetricsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("bidMetricsRows")) {
      bidMetricsRows = (_json["bidMetricsRows"] as core.List)
          .map<BidMetricsRow>((value) => new BidMetricsRow.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bidMetricsRows != null) {
      _json["bidMetricsRows"] =
          bidMetricsRows.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for listing all reasons that bid responses resulted in an
/// error.
class ListBidResponseErrorsResponse {
  /// List of rows, with counts of bid responses aggregated by callout status.
  core.List<CalloutStatusRow> calloutStatusRows;

  /// A token to retrieve the next page of results.
  /// Pass this value in the
  /// ListBidResponseErrorsRequest.pageToken
  /// field in the subsequent call to the bidResponseErrors.list
  /// method to retrieve the next page of results.
  core.String nextPageToken;

  ListBidResponseErrorsResponse();

  ListBidResponseErrorsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("calloutStatusRows")) {
      calloutStatusRows = (_json["calloutStatusRows"] as core.List)
          .map<CalloutStatusRow>(
              (value) => new CalloutStatusRow.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (calloutStatusRows != null) {
      _json["calloutStatusRows"] =
          calloutStatusRows.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for listing all reasons that bid responses were considered
/// to have no applicable bids.
class ListBidResponsesWithoutBidsResponse {
  /// List of rows, with counts of bid responses without bids aggregated by
  /// status.
  core.List<BidResponseWithoutBidsStatusRow> bidResponseWithoutBidsStatusRows;

  /// A token to retrieve the next page of results.
  /// Pass this value in the
  /// ListBidResponsesWithoutBidsRequest.pageToken
  /// field in the subsequent call to the bidResponsesWithoutBids.list
  /// method to retrieve the next page of results.
  core.String nextPageToken;

  ListBidResponsesWithoutBidsResponse();

  ListBidResponsesWithoutBidsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("bidResponseWithoutBidsStatusRows")) {
      bidResponseWithoutBidsStatusRows =
          (_json["bidResponseWithoutBidsStatusRows"] as core.List)
              .map<BidResponseWithoutBidsStatusRow>((value) =>
                  new BidResponseWithoutBidsStatusRow.fromJson(value))
              .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bidResponseWithoutBidsStatusRows != null) {
      _json["bidResponseWithoutBidsStatusRows"] =
          bidResponseWithoutBidsStatusRows
              .map((value) => (value).toJson())
              .toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

class ListClientUserInvitationsResponse {
  /// The returned list of client users.
  core.List<ClientUserInvitation> invitations;

  /// A token to retrieve the next page of results.
  /// Pass this value in the
  /// ListClientUserInvitationsRequest.pageToken
  /// field in the subsequent call to the
  /// clients.invitations.list
  /// method to retrieve the next
  /// page of results.
  core.String nextPageToken;

  ListClientUserInvitationsResponse();

  ListClientUserInvitationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("invitations")) {
      invitations = (_json["invitations"] as core.List)
          .map<ClientUserInvitation>(
              (value) => new ClientUserInvitation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (invitations != null) {
      _json["invitations"] =
          invitations.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

class ListClientUsersResponse {
  /// A token to retrieve the next page of results.
  /// Pass this value in the
  /// ListClientUsersRequest.pageToken
  /// field in the subsequent call to the
  /// clients.invitations.list
  /// method to retrieve the next
  /// page of results.
  core.String nextPageToken;

  /// The returned list of client users.
  core.List<ClientUser> users;

  ListClientUsersResponse();

  ListClientUsersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("users")) {
      users = (_json["users"] as core.List)
          .map<ClientUser>((value) => new ClientUser.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (users != null) {
      _json["users"] = users.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ListClientsResponse {
  /// The returned list of clients.
  core.List<Client> clients;

  /// A token to retrieve the next page of results.
  /// Pass this value in the
  /// ListClientsRequest.pageToken
  /// field in the subsequent call to the
  /// accounts.clients.list
  /// method to retrieve the next page of results.
  core.String nextPageToken;

  ListClientsResponse();

  ListClientsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("clients")) {
      clients = (_json["clients"] as core.List)
          .map<Client>((value) => new Client.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clients != null) {
      _json["clients"] = clients.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for listing all creatives associated with a given filtered
/// bid reason.
class ListCreativeStatusBreakdownByCreativeResponse {
  /// List of rows, with counts of bids with a given creative status aggregated
  /// by creative.
  core.List<FilteredBidCreativeRow> filteredBidCreativeRows;

  /// A token to retrieve the next page of results.
  /// Pass this value in the
  /// ListCreativeStatusBreakdownByCreativeRequest.pageToken
  /// field in the subsequent call to the filteredBids.creatives.list
  /// method to retrieve the next page of results.
  core.String nextPageToken;

  ListCreativeStatusBreakdownByCreativeResponse();

  ListCreativeStatusBreakdownByCreativeResponse.fromJson(core.Map _json) {
    if (_json.containsKey("filteredBidCreativeRows")) {
      filteredBidCreativeRows = (_json["filteredBidCreativeRows"] as core.List)
          .map<FilteredBidCreativeRow>(
              (value) => new FilteredBidCreativeRow.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (filteredBidCreativeRows != null) {
      _json["filteredBidCreativeRows"] =
          filteredBidCreativeRows.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for listing all details associated with a given filtered
/// bid
/// reason.
class ListCreativeStatusBreakdownByDetailResponse {
  /// The type of detail that the detail IDs represent.
  /// Possible string values are:
  /// - "DETAIL_TYPE_UNSPECIFIED" : A placeholder for an undefined status.
  /// This value will never be returned in responses.
  /// - "CREATIVE_ATTRIBUTE" : Indicates that the detail ID refers to a creative
  /// attribute; see
  /// [publisher-excludable-creative-attributes](https://developers.google.com/authorized-buyers/rtb/downloads/publisher-excludable-creative-attributes).
  /// - "VENDOR" : Indicates that the detail ID refers to a vendor; see
  /// [vendors](https://developers.google.com/authorized-buyers/rtb/downloads/vendors).
  /// - "SENSITIVE_CATEGORY" : Indicates that the detail ID refers to a
  /// sensitive category; see
  /// [ad-sensitive-categories](https://developers.google.com/authorized-buyers/rtb/downloads/ad-sensitive-categories).
  /// - "PRODUCT_CATEGORY" : Indicates that the detail ID refers to a product
  /// category; see
  /// [ad-product-categories](https://developers.google.com/authorized-buyers/rtb/downloads/ad-product-categories).
  /// - "DISAPPROVAL_REASON" : Indicates that the detail ID refers to a
  /// disapproval reason; see
  /// DisapprovalReason enum in
  /// [snippet-status-report-proto](https://developers.google.com/authorized-buyers/rtb/downloads/snippet-status-report-proto).
  core.String detailType;

  /// List of rows, with counts of bids with a given creative status aggregated
  /// by detail.
  core.List<FilteredBidDetailRow> filteredBidDetailRows;

  /// A token to retrieve the next page of results.
  /// Pass this value in the
  /// ListCreativeStatusBreakdownByDetailRequest.pageToken
  /// field in the subsequent call to the filteredBids.details.list
  /// method to retrieve the next page of results.
  core.String nextPageToken;

  ListCreativeStatusBreakdownByDetailResponse();

  ListCreativeStatusBreakdownByDetailResponse.fromJson(core.Map _json) {
    if (_json.containsKey("detailType")) {
      detailType = _json["detailType"];
    }
    if (_json.containsKey("filteredBidDetailRows")) {
      filteredBidDetailRows = (_json["filteredBidDetailRows"] as core.List)
          .map<FilteredBidDetailRow>(
              (value) => new FilteredBidDetailRow.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (detailType != null) {
      _json["detailType"] = detailType;
    }
    if (filteredBidDetailRows != null) {
      _json["filteredBidDetailRows"] =
          filteredBidDetailRows.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// A response for listing creatives.
class ListCreativesResponse {
  /// The list of creatives.
  core.List<Creative> creatives;

  /// A token to retrieve the next page of results.
  /// Pass this value in the
  /// ListCreativesRequest.page_token
  /// field in the subsequent call to `ListCreatives` method to retrieve the
  /// next
  /// page of results.
  core.String nextPageToken;

  ListCreativesResponse();

  ListCreativesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("creatives")) {
      creatives = (_json["creatives"] as core.List)
          .map<Creative>((value) => new Creative.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (creatives != null) {
      _json["creatives"] = creatives.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// A response for listing creative and deal associations
class ListDealAssociationsResponse {
  /// The list of associations.
  core.List<CreativeDealAssociation> associations;

  /// A token to retrieve the next page of results.
  /// Pass this value in the
  /// ListDealAssociationsRequest.page_token
  /// field in the subsequent call to 'ListDealAssociation' method to retrieve
  /// the next page of results.
  core.String nextPageToken;

  ListDealAssociationsResponse();

  ListDealAssociationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("associations")) {
      associations = (_json["associations"] as core.List)
          .map<CreativeDealAssociation>(
              (value) => new CreativeDealAssociation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (associations != null) {
      _json["associations"] =
          associations.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for listing filter sets.
class ListFilterSetsResponse {
  /// The filter sets belonging to the buyer.
  core.List<FilterSet> filterSets;

  /// A token to retrieve the next page of results.
  /// Pass this value in the
  /// ListFilterSetsRequest.pageToken
  /// field in the subsequent call to the
  /// accounts.filterSets.list
  /// method to retrieve the next page of results.
  core.String nextPageToken;

  ListFilterSetsResponse();

  ListFilterSetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("filterSets")) {
      filterSets = (_json["filterSets"] as core.List)
          .map<FilterSet>((value) => new FilterSet.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (filterSets != null) {
      _json["filterSets"] =
          filterSets.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for listing all reasons that bid requests were filtered and
/// not sent to the buyer.
class ListFilteredBidRequestsResponse {
  /// List of rows, with counts of filtered bid requests aggregated by callout
  /// status.
  core.List<CalloutStatusRow> calloutStatusRows;

  /// A token to retrieve the next page of results.
  /// Pass this value in the
  /// ListFilteredBidRequestsRequest.pageToken
  /// field in the subsequent call to the filteredBidRequests.list
  /// method to retrieve the next page of results.
  core.String nextPageToken;

  ListFilteredBidRequestsResponse();

  ListFilteredBidRequestsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("calloutStatusRows")) {
      calloutStatusRows = (_json["calloutStatusRows"] as core.List)
          .map<CalloutStatusRow>(
              (value) => new CalloutStatusRow.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (calloutStatusRows != null) {
      _json["calloutStatusRows"] =
          calloutStatusRows.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for listing all reasons that bids were filtered from the
/// auction.
class ListFilteredBidsResponse {
  /// List of rows, with counts of filtered bids aggregated by filtering reason
  /// (i.e. creative status).
  core.List<CreativeStatusRow> creativeStatusRows;

  /// A token to retrieve the next page of results.
  /// Pass this value in the
  /// ListFilteredBidsRequest.pageToken
  /// field in the subsequent call to the filteredBids.list
  /// method to retrieve the next page of results.
  core.String nextPageToken;

  ListFilteredBidsResponse();

  ListFilteredBidsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("creativeStatusRows")) {
      creativeStatusRows = (_json["creativeStatusRows"] as core.List)
          .map<CreativeStatusRow>(
              (value) => new CreativeStatusRow.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (creativeStatusRows != null) {
      _json["creativeStatusRows"] =
          creativeStatusRows.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for listing the metrics that are measured in number of
/// impressions.
class ListImpressionMetricsResponse {
  /// List of rows, each containing a set of impression metrics.
  core.List<ImpressionMetricsRow> impressionMetricsRows;

  /// A token to retrieve the next page of results.
  /// Pass this value in the
  /// ListImpressionMetricsRequest.pageToken
  /// field in the subsequent call to the impressionMetrics.list
  /// method to retrieve the next page of results.
  core.String nextPageToken;

  ListImpressionMetricsResponse();

  ListImpressionMetricsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("impressionMetricsRows")) {
      impressionMetricsRows = (_json["impressionMetricsRows"] as core.List)
          .map<ImpressionMetricsRow>(
              (value) => new ImpressionMetricsRow.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (impressionMetricsRows != null) {
      _json["impressionMetricsRows"] =
          impressionMetricsRows.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for listing all reasons that bids lost in the auction.
class ListLosingBidsResponse {
  /// List of rows, with counts of losing bids aggregated by loss reason (i.e.
  /// creative status).
  core.List<CreativeStatusRow> creativeStatusRows;

  /// A token to retrieve the next page of results.
  /// Pass this value in the
  /// ListLosingBidsRequest.pageToken
  /// field in the subsequent call to the losingBids.list
  /// method to retrieve the next page of results.
  core.String nextPageToken;

  ListLosingBidsResponse();

  ListLosingBidsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("creativeStatusRows")) {
      creativeStatusRows = (_json["creativeStatusRows"] as core.List)
          .map<CreativeStatusRow>(
              (value) => new CreativeStatusRow.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (creativeStatusRows != null) {
      _json["creativeStatusRows"] =
          creativeStatusRows.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for listing all reasons for which a buyer was not billed
/// for
/// a winning bid.
class ListNonBillableWinningBidsResponse {
  /// A token to retrieve the next page of results.
  /// Pass this value in the
  /// ListNonBillableWinningBidsRequest.pageToken
  /// field in the subsequent call to the nonBillableWinningBids.list
  /// method to retrieve the next page of results.
  core.String nextPageToken;

  /// List of rows, with counts of bids not billed aggregated by reason.
  core.List<NonBillableWinningBidStatusRow> nonBillableWinningBidStatusRows;

  ListNonBillableWinningBidsResponse();

  ListNonBillableWinningBidsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("nonBillableWinningBidStatusRows")) {
      nonBillableWinningBidStatusRows =
          (_json["nonBillableWinningBidStatusRows"] as core.List)
              .map<NonBillableWinningBidStatusRow>(
                  (value) => new NonBillableWinningBidStatusRow.fromJson(value))
              .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (nonBillableWinningBidStatusRows != null) {
      _json["nonBillableWinningBidStatusRows"] = nonBillableWinningBidStatusRows
          .map((value) => (value).toJson())
          .toList();
    }
    return _json;
  }
}

/// Response message for listing products visible to the buyer.
class ListProductsResponse {
  /// List pagination support.
  core.String nextPageToken;

  /// The list of matching products at their head revision number.
  core.List<Product> products;

  ListProductsResponse();

  ListProductsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("products")) {
      products = (_json["products"] as core.List)
          .map<Product>((value) => new Product.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (products != null) {
      _json["products"] = products.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response message for listing proposals.
class ListProposalsResponse {
  /// Continuation token for fetching the next page of results.
  core.String nextPageToken;

  /// The list of proposals.
  core.List<Proposal> proposals;

  ListProposalsResponse();

  ListProposalsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("proposals")) {
      proposals = (_json["proposals"] as core.List)
          .map<Proposal>((value) => new Proposal.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (proposals != null) {
      _json["proposals"] = proposals.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response message for profiles visible to the buyer.
class ListPublisherProfilesResponse {
  /// List pagination support
  core.String nextPageToken;

  /// The list of matching publisher profiles.
  core.List<PublisherProfile> publisherProfiles;

  ListPublisherProfilesResponse();

  ListPublisherProfilesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("publisherProfiles")) {
      publisherProfiles = (_json["publisherProfiles"] as core.List)
          .map<PublisherProfile>(
              (value) => new PublisherProfile.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (publisherProfiles != null) {
      _json["publisherProfiles"] =
          publisherProfiles.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Output only. The Geo criteria the restriction applies to.
class LocationContext {
  /// IDs representing the geo location for this context.
  /// Please refer to the
  /// [geo-table.csv](https://storage.googleapis.com/adx-rtb-dictionaries/geo-table.csv)
  /// file for different geo criteria IDs.
  core.List<core.int> geoCriteriaIds;

  LocationContext();

  LocationContext.fromJson(core.Map _json) {
    if (_json.containsKey("geoCriteriaIds")) {
      geoCriteriaIds = (_json["geoCriteriaIds"] as core.List).cast<core.int>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (geoCriteriaIds != null) {
      _json["geoCriteriaIds"] = geoCriteriaIds;
    }
    return _json;
  }
}

/// Targeting represents different criteria that can be used by advertisers to
/// target ad inventory. For example, they can choose to target ad requests only
/// if the user is in the US.
/// Multiple types of targeting are always applied as a logical AND, unless
/// noted
/// otherwise.
class MarketplaceTargeting {
  /// Geo criteria IDs to be included/excluded.
  CriteriaTargeting geoTargeting;

  /// Inventory sizes to be included/excluded.
  InventorySizeTargeting inventorySizeTargeting;

  /// Placement targeting information, e.g., URL, mobile applications.
  PlacementTargeting placementTargeting;

  /// Technology targeting information, e.g., operating system, device category.
  TechnologyTargeting technologyTargeting;

  /// Video targeting information.
  VideoTargeting videoTargeting;

  MarketplaceTargeting();

  MarketplaceTargeting.fromJson(core.Map _json) {
    if (_json.containsKey("geoTargeting")) {
      geoTargeting = new CriteriaTargeting.fromJson(_json["geoTargeting"]);
    }
    if (_json.containsKey("inventorySizeTargeting")) {
      inventorySizeTargeting =
          new InventorySizeTargeting.fromJson(_json["inventorySizeTargeting"]);
    }
    if (_json.containsKey("placementTargeting")) {
      placementTargeting =
          new PlacementTargeting.fromJson(_json["placementTargeting"]);
    }
    if (_json.containsKey("technologyTargeting")) {
      technologyTargeting =
          new TechnologyTargeting.fromJson(_json["technologyTargeting"]);
    }
    if (_json.containsKey("videoTargeting")) {
      videoTargeting = new VideoTargeting.fromJson(_json["videoTargeting"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (geoTargeting != null) {
      _json["geoTargeting"] = (geoTargeting).toJson();
    }
    if (inventorySizeTargeting != null) {
      _json["inventorySizeTargeting"] = (inventorySizeTargeting).toJson();
    }
    if (placementTargeting != null) {
      _json["placementTargeting"] = (placementTargeting).toJson();
    }
    if (technologyTargeting != null) {
      _json["technologyTargeting"] = (technologyTargeting).toJson();
    }
    if (videoTargeting != null) {
      _json["videoTargeting"] = (videoTargeting).toJson();
    }
    return _json;
  }
}

/// A metric value, with an expected value and a variance; represents a count
/// that may be either exact or estimated (i.e. when sampled).
class MetricValue {
  /// The expected value of the metric.
  core.String value;

  /// The variance (i.e. square of the standard deviation) of the metric value.
  /// If value is exact, variance is 0.
  /// Can be used to calculate margin of error as a percentage of value, using
  /// the following formula, where Z is the standard constant that depends on
  /// the
  /// desired size of the confidence interval (e.g. for 90% confidence interval,
  /// use Z = 1.645):
  ///
  ///   marginOfError = 100 * Z * sqrt(variance) / value
  core.String variance;

  MetricValue();

  MetricValue.fromJson(core.Map _json) {
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
    if (_json.containsKey("variance")) {
      variance = _json["variance"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (value != null) {
      _json["value"] = value;
    }
    if (variance != null) {
      _json["variance"] = variance;
    }
    return _json;
  }
}

/// Mobile application targeting settings.
class MobileApplicationTargeting {
  /// Publisher owned apps to be targeted or excluded by the publisher to
  /// display the ads in.
  FirstPartyMobileApplicationTargeting firstPartyTargeting;

  MobileApplicationTargeting();

  MobileApplicationTargeting.fromJson(core.Map _json) {
    if (_json.containsKey("firstPartyTargeting")) {
      firstPartyTargeting = new FirstPartyMobileApplicationTargeting.fromJson(
          _json["firstPartyTargeting"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (firstPartyTargeting != null) {
      _json["firstPartyTargeting"] = (firstPartyTargeting).toJson();
    }
    return _json;
  }
}

/// Represents an amount of money with its currency type.
class Money {
  /// The 3-letter currency code defined in ISO 4217.
  core.String currencyCode;

  /// Number of nano (10^-9) units of the amount.
  /// The value must be between -999,999,999 and +999,999,999 inclusive.
  /// If `units` is positive, `nanos` must be positive or zero.
  /// If `units` is zero, `nanos` can be positive, zero, or negative.
  /// If `units` is negative, `nanos` must be negative or zero.
  /// For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
  core.int nanos;

  /// The whole units of the amount.
  /// For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
  core.String units;

  Money();

  Money.fromJson(core.Map _json) {
    if (_json.containsKey("currencyCode")) {
      currencyCode = _json["currencyCode"];
    }
    if (_json.containsKey("nanos")) {
      nanos = _json["nanos"];
    }
    if (_json.containsKey("units")) {
      units = _json["units"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (currencyCode != null) {
      _json["currencyCode"] = currencyCode;
    }
    if (nanos != null) {
      _json["nanos"] = nanos;
    }
    if (units != null) {
      _json["units"] = units;
    }
    return _json;
  }
}

/// Native content for a creative.
class NativeContent {
  /// The name of the advertiser or sponsor, to be displayed in the ad creative.
  core.String advertiserName;

  /// The app icon, for app download ads.
  Image appIcon;

  /// A long description of the ad.
  core.String body;

  /// A label for the button that the user is supposed to click.
  core.String callToAction;

  /// The URL that the browser/SDK will load when the user clicks the ad.
  core.String clickLinkUrl;

  /// The URL to use for click tracking.
  core.String clickTrackingUrl;

  /// A short title for the ad.
  core.String headline;

  /// A large image.
  Image image;

  /// A smaller image, for the advertiser's logo.
  Image logo;

  /// The price of the promoted app including currency info.
  core.String priceDisplayText;

  /// The app rating in the app store. Must be in the range [0-5].
  core.double starRating;

  /// The URL to the app store to purchase/download the promoted app.
  core.String storeUrl;

  /// The URL to fetch a native video ad.
  core.String videoUrl;

  NativeContent();

  NativeContent.fromJson(core.Map _json) {
    if (_json.containsKey("advertiserName")) {
      advertiserName = _json["advertiserName"];
    }
    if (_json.containsKey("appIcon")) {
      appIcon = new Image.fromJson(_json["appIcon"]);
    }
    if (_json.containsKey("body")) {
      body = _json["body"];
    }
    if (_json.containsKey("callToAction")) {
      callToAction = _json["callToAction"];
    }
    if (_json.containsKey("clickLinkUrl")) {
      clickLinkUrl = _json["clickLinkUrl"];
    }
    if (_json.containsKey("clickTrackingUrl")) {
      clickTrackingUrl = _json["clickTrackingUrl"];
    }
    if (_json.containsKey("headline")) {
      headline = _json["headline"];
    }
    if (_json.containsKey("image")) {
      image = new Image.fromJson(_json["image"]);
    }
    if (_json.containsKey("logo")) {
      logo = new Image.fromJson(_json["logo"]);
    }
    if (_json.containsKey("priceDisplayText")) {
      priceDisplayText = _json["priceDisplayText"];
    }
    if (_json.containsKey("starRating")) {
      starRating = _json["starRating"].toDouble();
    }
    if (_json.containsKey("storeUrl")) {
      storeUrl = _json["storeUrl"];
    }
    if (_json.containsKey("videoUrl")) {
      videoUrl = _json["videoUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (advertiserName != null) {
      _json["advertiserName"] = advertiserName;
    }
    if (appIcon != null) {
      _json["appIcon"] = (appIcon).toJson();
    }
    if (body != null) {
      _json["body"] = body;
    }
    if (callToAction != null) {
      _json["callToAction"] = callToAction;
    }
    if (clickLinkUrl != null) {
      _json["clickLinkUrl"] = clickLinkUrl;
    }
    if (clickTrackingUrl != null) {
      _json["clickTrackingUrl"] = clickTrackingUrl;
    }
    if (headline != null) {
      _json["headline"] = headline;
    }
    if (image != null) {
      _json["image"] = (image).toJson();
    }
    if (logo != null) {
      _json["logo"] = (logo).toJson();
    }
    if (priceDisplayText != null) {
      _json["priceDisplayText"] = priceDisplayText;
    }
    if (starRating != null) {
      _json["starRating"] = starRating;
    }
    if (storeUrl != null) {
      _json["storeUrl"] = storeUrl;
    }
    if (videoUrl != null) {
      _json["videoUrl"] = videoUrl;
    }
    return _json;
  }
}

/// The number of winning bids with the specified dimension values for which the
/// buyer was not billed, as described by the specified status.
class NonBillableWinningBidStatusRow {
  /// The number of bids with the specified status.
  MetricValue bidCount;

  /// The values of all dimensions associated with metric values in this row.
  RowDimensions rowDimensions;

  /// The status specifying why the winning bids were not billed.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : A placeholder for an undefined status.
  /// This value will never be returned in responses.
  /// - "AD_NOT_RENDERED" : The buyer was not billed because the ad was not
  /// rendered by the
  /// publisher.
  /// - "INVALID_IMPRESSION" : The buyer was not billed because the impression
  /// won by the bid was
  /// determined to be invalid.
  core.String status;

  NonBillableWinningBidStatusRow();

  NonBillableWinningBidStatusRow.fromJson(core.Map _json) {
    if (_json.containsKey("bidCount")) {
      bidCount = new MetricValue.fromJson(_json["bidCount"]);
    }
    if (_json.containsKey("rowDimensions")) {
      rowDimensions = new RowDimensions.fromJson(_json["rowDimensions"]);
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bidCount != null) {
      _json["bidCount"] = (bidCount).toJson();
    }
    if (rowDimensions != null) {
      _json["rowDimensions"] = (rowDimensions).toJson();
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}

/// Terms for Private Auctions. Note that Private Auctions can be created only
/// by the seller, but they can be returned in a get or list request.
class NonGuaranteedAuctionTerms {
  /// True if open auction buyers are allowed to compete with invited buyers
  /// in this private auction.
  core.bool autoOptimizePrivateAuction;

  /// Reserve price for the specified buyer.
  core.List<PricePerBuyer> reservePricesPerBuyer;

  NonGuaranteedAuctionTerms();

  NonGuaranteedAuctionTerms.fromJson(core.Map _json) {
    if (_json.containsKey("autoOptimizePrivateAuction")) {
      autoOptimizePrivateAuction = _json["autoOptimizePrivateAuction"];
    }
    if (_json.containsKey("reservePricesPerBuyer")) {
      reservePricesPerBuyer = (_json["reservePricesPerBuyer"] as core.List)
          .map<PricePerBuyer>((value) => new PricePerBuyer.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (autoOptimizePrivateAuction != null) {
      _json["autoOptimizePrivateAuction"] = autoOptimizePrivateAuction;
    }
    if (reservePricesPerBuyer != null) {
      _json["reservePricesPerBuyer"] =
          reservePricesPerBuyer.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Terms for Preferred Deals. Note that Preferred Deals cannot be created via
/// the API at this time, but can be returned in a get or list request.
class NonGuaranteedFixedPriceTerms {
  /// Fixed price for the specified buyer.
  core.List<PricePerBuyer> fixedPrices;

  NonGuaranteedFixedPriceTerms();

  NonGuaranteedFixedPriceTerms.fromJson(core.Map _json) {
    if (_json.containsKey("fixedPrices")) {
      fixedPrices = (_json["fixedPrices"] as core.List)
          .map<PricePerBuyer>((value) => new PricePerBuyer.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fixedPrices != null) {
      _json["fixedPrices"] =
          fixedPrices.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A proposal may be associated to several notes.
class Note {
  /// Output only. The timestamp for when this note was created.
  core.String createTime;

  /// Output only. The role of the person (buyer/seller) creating the note.
  /// Possible string values are:
  /// - "BUYER_SELLER_ROLE_UNSPECIFIED" : A placeholder for an undefined
  /// buyer/seller role.
  /// - "BUYER" : Specifies the role as buyer.
  /// - "SELLER" : Specifies the role as seller.
  core.String creatorRole;

  /// The actual note to attach.
  /// (max-length: 1024 unicode code units)
  ///
  /// Note: This field may be set only when creating the resource. Modifying
  /// this field while updating the resource will result in an error.
  core.String note;

  /// Output only. The unique ID for the note.
  core.String noteId;

  /// Output only. The revision number of the proposal when the note is created.
  core.String proposalRevision;

  Note();

  Note.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("creatorRole")) {
      creatorRole = _json["creatorRole"];
    }
    if (_json.containsKey("note")) {
      note = _json["note"];
    }
    if (_json.containsKey("noteId")) {
      noteId = _json["noteId"];
    }
    if (_json.containsKey("proposalRevision")) {
      proposalRevision = _json["proposalRevision"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (creatorRole != null) {
      _json["creatorRole"] = creatorRole;
    }
    if (note != null) {
      _json["note"] = note;
    }
    if (noteId != null) {
      _json["noteId"] = noteId;
    }
    if (proposalRevision != null) {
      _json["proposalRevision"] = proposalRevision;
    }
    return _json;
  }
}

/// Represents targeting information for operating systems.
class OperatingSystemTargeting {
  /// IDs of operating systems to be included/excluded.
  CriteriaTargeting operatingSystemCriteria;

  /// IDs of operating system versions to be included/excluded.
  CriteriaTargeting operatingSystemVersionCriteria;

  OperatingSystemTargeting();

  OperatingSystemTargeting.fromJson(core.Map _json) {
    if (_json.containsKey("operatingSystemCriteria")) {
      operatingSystemCriteria =
          new CriteriaTargeting.fromJson(_json["operatingSystemCriteria"]);
    }
    if (_json.containsKey("operatingSystemVersionCriteria")) {
      operatingSystemVersionCriteria = new CriteriaTargeting.fromJson(
          _json["operatingSystemVersionCriteria"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (operatingSystemCriteria != null) {
      _json["operatingSystemCriteria"] = (operatingSystemCriteria).toJson();
    }
    if (operatingSystemVersionCriteria != null) {
      _json["operatingSystemVersionCriteria"] =
          (operatingSystemVersionCriteria).toJson();
    }
    return _json;
  }
}

/// Request message to pause serving for an already-finalized proposal.
class PauseProposalRequest {
  /// The reason why the proposal is being paused.
  /// This human readable message will be displayed in the seller's UI.
  /// (Max length: 1000 unicode code units.)
  core.String reason;

  PauseProposalRequest();

  PauseProposalRequest.fromJson(core.Map _json) {
    if (_json.containsKey("reason")) {
      reason = _json["reason"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (reason != null) {
      _json["reason"] = reason;
    }
    return _json;
  }
}

/// Represents targeting about where the ads can appear, e.g., certain sites or
/// mobile applications.
/// Different placement targeting types will be logically OR'ed.
class PlacementTargeting {
  /// Mobile application targeting information in a deal.
  /// This doesn't apply to Auction Packages.
  MobileApplicationTargeting mobileApplicationTargeting;

  /// URLs to be included/excluded.
  UrlTargeting urlTargeting;

  PlacementTargeting();

  PlacementTargeting.fromJson(core.Map _json) {
    if (_json.containsKey("mobileApplicationTargeting")) {
      mobileApplicationTargeting = new MobileApplicationTargeting.fromJson(
          _json["mobileApplicationTargeting"]);
    }
    if (_json.containsKey("urlTargeting")) {
      urlTargeting = new UrlTargeting.fromJson(_json["urlTargeting"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (mobileApplicationTargeting != null) {
      _json["mobileApplicationTargeting"] =
          (mobileApplicationTargeting).toJson();
    }
    if (urlTargeting != null) {
      _json["urlTargeting"] = (urlTargeting).toJson();
    }
    return _json;
  }
}

/// Output only. The type of platform the restriction applies to.
class PlatformContext {
  /// The platforms this restriction applies to.
  core.List<core.String> platforms;

  PlatformContext();

  PlatformContext.fromJson(core.Map _json) {
    if (_json.containsKey("platforms")) {
      platforms = (_json["platforms"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (platforms != null) {
      _json["platforms"] = platforms;
    }
    return _json;
  }
}

/// Represents a price and a pricing type for a product / deal.
class Price {
  /// The actual price with currency specified.
  Money amount;

  /// The pricing type for the deal/product. (default: CPM)
  /// Possible string values are:
  /// - "PRICING_TYPE_UNSPECIFIED" : A placeholder for an undefined pricing
  /// type. If the pricing type is
  /// unpsecified, `COST_PER_MILLE` will be used instead.
  /// - "COST_PER_MILLE" : Cost per thousand impressions.
  /// - "COST_PER_DAY" : Cost per day
  core.String pricingType;

  Price();

  Price.fromJson(core.Map _json) {
    if (_json.containsKey("amount")) {
      amount = new Money.fromJson(_json["amount"]);
    }
    if (_json.containsKey("pricingType")) {
      pricingType = _json["pricingType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (amount != null) {
      _json["amount"] = (amount).toJson();
    }
    if (pricingType != null) {
      _json["pricingType"] = pricingType;
    }
    return _json;
  }
}

/// Used to specify pricing rules for buyers/advertisers. Each PricePerBuyer in
/// a product can become 0 or 1 deals. To check if there is a PricePerBuyer for
/// a particular buyer or buyer/advertiser pair, we look for the most specific
/// matching rule - we first look for a rule matching the buyer and advertiser,
/// next a rule with the buyer but an empty advertiser list, and otherwise look
/// for a matching rule where no buyer is set.
class PricePerBuyer {
  /// The list of advertisers for this price when associated with this buyer.
  /// If empty, all advertisers with this buyer pay this price.
  core.List<core.String> advertiserIds;

  /// The buyer who will pay this price. If unset, all buyers can pay this price
  /// (if the
  /// advertisers match, and there's no more specific rule matching the buyer).
  Buyer buyer;

  /// The specified price.
  Price price;

  PricePerBuyer();

  PricePerBuyer.fromJson(core.Map _json) {
    if (_json.containsKey("advertiserIds")) {
      advertiserIds = (_json["advertiserIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("buyer")) {
      buyer = new Buyer.fromJson(_json["buyer"]);
    }
    if (_json.containsKey("price")) {
      price = new Price.fromJson(_json["price"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (advertiserIds != null) {
      _json["advertiserIds"] = advertiserIds;
    }
    if (buyer != null) {
      _json["buyer"] = (buyer).toJson();
    }
    if (price != null) {
      _json["price"] = (price).toJson();
    }
    return _json;
  }
}

/// Buyers are allowed to store certain types of private data in a
/// proposal/deal.
class PrivateData {
  /// A buyer or seller specified reference ID. This can be queried in the list
  /// operations (max-length: 1024 unicode code units).
  core.String referenceId;

  PrivateData();

  PrivateData.fromJson(core.Map _json) {
    if (_json.containsKey("referenceId")) {
      referenceId = _json["referenceId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (referenceId != null) {
      _json["referenceId"] = referenceId;
    }
    return _json;
  }
}

/// Note: this resource requires whitelisting for access. Please contact your
/// account manager for access to Marketplace resources.
///
/// A product is a segment of inventory that a seller wishes to sell. It is
/// associated with certain terms and targeting information which helps the
/// buyer
/// know more about the inventory.
class Product {
  /// The proposed end time for the deal. The field will be truncated to the
  /// order of seconds during serving.
  core.String availableEndTime;

  /// Inventory availability dates. The start time will be truncated to seconds
  /// during serving. Thus, a field specified as 3:23:34.456 (HH:mm:ss.SSS) will
  /// be truncated to 3:23:34 when serving.
  core.String availableStartTime;

  /// Creation time.
  core.String createTime;

  /// Optional contact information for the creator of this product.
  core.List<ContactInformation> creatorContacts;

  /// The display name for this product as set by the seller.
  core.String displayName;

  /// If the creator has already signed off on the product, then the buyer can
  /// finalize the deal by accepting the product as is. When copying to a
  /// proposal, if any of the terms are changed, then auto_finalize is
  /// automatically set to false.
  core.bool hasCreatorSignedOff;

  /// The unique ID for the product.
  core.String productId;

  /// The revision number of the product (auto-assigned by Marketplace).
  core.String productRevision;

  /// An ID which can be used by the Publisher Profile API to get more
  /// information about the seller that created this product.
  core.String publisherProfileId;

  /// Information about the seller that created this product.
  Seller seller;

  /// The syndication product associated with the deal.
  /// Possible string values are:
  /// - "SYNDICATION_PRODUCT_UNSPECIFIED" : A placeholder for an undefined
  /// syndication product.
  /// - "CONTENT" : This typically represents a web page.
  /// - "MOBILE" : This represents a mobile property.
  /// - "VIDEO" : This represents video ad formats.
  /// - "GAMES" : This represents ads shown within games.
  core.String syndicationProduct;

  /// Targeting that is shared between the buyer and the seller. Each targeting
  /// criterion has a specified key and for each key there is a list of
  /// inclusion
  /// value or exclusion values.
  core.List<TargetingCriteria> targetingCriterion;

  /// The negotiable terms of the deal.
  DealTerms terms;

  /// Time of last update.
  core.String updateTime;

  /// The web-property code for the seller. This needs to be copied as is when
  /// adding a new deal to a proposal.
  core.String webPropertyCode;

  Product();

  Product.fromJson(core.Map _json) {
    if (_json.containsKey("availableEndTime")) {
      availableEndTime = _json["availableEndTime"];
    }
    if (_json.containsKey("availableStartTime")) {
      availableStartTime = _json["availableStartTime"];
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("creatorContacts")) {
      creatorContacts = (_json["creatorContacts"] as core.List)
          .map<ContactInformation>(
              (value) => new ContactInformation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("hasCreatorSignedOff")) {
      hasCreatorSignedOff = _json["hasCreatorSignedOff"];
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
    if (_json.containsKey("productRevision")) {
      productRevision = _json["productRevision"];
    }
    if (_json.containsKey("publisherProfileId")) {
      publisherProfileId = _json["publisherProfileId"];
    }
    if (_json.containsKey("seller")) {
      seller = new Seller.fromJson(_json["seller"]);
    }
    if (_json.containsKey("syndicationProduct")) {
      syndicationProduct = _json["syndicationProduct"];
    }
    if (_json.containsKey("targetingCriterion")) {
      targetingCriterion = (_json["targetingCriterion"] as core.List)
          .map<TargetingCriteria>(
              (value) => new TargetingCriteria.fromJson(value))
          .toList();
    }
    if (_json.containsKey("terms")) {
      terms = new DealTerms.fromJson(_json["terms"]);
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
    if (_json.containsKey("webPropertyCode")) {
      webPropertyCode = _json["webPropertyCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (availableEndTime != null) {
      _json["availableEndTime"] = availableEndTime;
    }
    if (availableStartTime != null) {
      _json["availableStartTime"] = availableStartTime;
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (creatorContacts != null) {
      _json["creatorContacts"] =
          creatorContacts.map((value) => (value).toJson()).toList();
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (hasCreatorSignedOff != null) {
      _json["hasCreatorSignedOff"] = hasCreatorSignedOff;
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    if (productRevision != null) {
      _json["productRevision"] = productRevision;
    }
    if (publisherProfileId != null) {
      _json["publisherProfileId"] = publisherProfileId;
    }
    if (seller != null) {
      _json["seller"] = (seller).toJson();
    }
    if (syndicationProduct != null) {
      _json["syndicationProduct"] = syndicationProduct;
    }
    if (targetingCriterion != null) {
      _json["targetingCriterion"] =
          targetingCriterion.map((value) => (value).toJson()).toList();
    }
    if (terms != null) {
      _json["terms"] = (terms).toJson();
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    if (webPropertyCode != null) {
      _json["webPropertyCode"] = webPropertyCode;
    }
    return _json;
  }
}

/// Note: this resource requires whitelisting for access. Please contact your
/// account manager for access to Marketplace resources.
///
/// Represents a proposal in the Marketplace. A proposal is the unit of
/// negotiation between a seller and a buyer and contains deals which
/// are served.
///
/// Note: you can not update, create, or otherwise modify Private
/// Auction or Preferred Deals deals through the API.
///
/// Fields are updatable unless noted otherwise.
class Proposal {
  /// Output only. Reference to the buyer that will get billed for this
  /// proposal.
  Buyer billedBuyer;

  /// Reference to the buyer on the proposal.
  ///
  /// Note: This field may be set only when creating the resource. Modifying
  /// this field while updating the resource will result in an error.
  Buyer buyer;

  /// Contact information for the buyer.
  core.List<ContactInformation> buyerContacts;

  /// Private data for buyer. (hidden from seller).
  PrivateData buyerPrivateData;

  /// The deals associated with this proposal. For Private Auction proposals
  /// (whose deals have NonGuaranteedAuctionTerms), there will only be one deal.
  core.List<Deal> deals;

  /// The name for the proposal.
  core.String displayName;

  /// Output only. True if the proposal is being renegotiated.
  core.bool isRenegotiating;

  /// Output only. True, if the buyside inventory setup is complete for this
  /// proposal.
  core.bool isSetupComplete;

  /// Output only. The role of the last user that either updated the proposal or
  /// left a comment.
  /// Possible string values are:
  /// - "BUYER_SELLER_ROLE_UNSPECIFIED" : A placeholder for an undefined
  /// buyer/seller role.
  /// - "BUYER" : Specifies the role as buyer.
  /// - "SELLER" : Specifies the role as seller.
  core.String lastUpdaterOrCommentorRole;

  /// Output only. The notes associated with this proposal.
  core.List<Note> notes;

  /// Output only. Indicates whether the buyer/seller created the proposal.
  /// Possible string values are:
  /// - "BUYER_SELLER_ROLE_UNSPECIFIED" : A placeholder for an undefined
  /// buyer/seller role.
  /// - "BUYER" : Specifies the role as buyer.
  /// - "SELLER" : Specifies the role as seller.
  core.String originatorRole;

  /// Output only. Private auction ID if this proposal is a private auction
  /// proposal.
  core.String privateAuctionId;

  /// Output only. The unique ID of the proposal.
  core.String proposalId;

  /// Output only. The revision number for the proposal.
  /// Each update to the proposal or the deal causes the proposal revision
  /// number
  /// to auto-increment. The buyer keeps track of the last revision number they
  /// know of and pass it in when making an update. If the head revision number
  /// on the server has since incremented, then an ABORTED error is returned
  /// during the update operation to let the buyer know that a subsequent update
  /// was made.
  core.String proposalRevision;

  /// Output only. The current state of the proposal.
  /// Possible string values are:
  /// - "PROPOSAL_STATE_UNSPECIFIED" : A placeholder for an undefined proposal
  /// state.
  /// - "PROPOSED" : The proposal is under negotiation or renegotiation.
  /// - "BUYER_ACCEPTED" : The proposal has been accepted by the buyer.
  /// - "SELLER_ACCEPTED" : The proposal has been accepted by the seller.
  /// - "CANCELED" : The negotiations on the proposal were canceled and the
  /// proposal was never
  /// finalized.
  /// - "FINALIZED" : The proposal is finalized. During renegotiation, the
  /// proposal may
  /// not be in this state.
  core.String proposalState;

  /// Reference to the seller on the proposal.
  ///
  /// Note: This field may be set only when creating the resource. Modifying
  /// this field while updating the resource will result in an error.
  Seller seller;

  /// Output only. Contact information for the seller.
  core.List<ContactInformation> sellerContacts;

  /// Output only. The time when the proposal was last revised.
  core.String updateTime;

  Proposal();

  Proposal.fromJson(core.Map _json) {
    if (_json.containsKey("billedBuyer")) {
      billedBuyer = new Buyer.fromJson(_json["billedBuyer"]);
    }
    if (_json.containsKey("buyer")) {
      buyer = new Buyer.fromJson(_json["buyer"]);
    }
    if (_json.containsKey("buyerContacts")) {
      buyerContacts = (_json["buyerContacts"] as core.List)
          .map<ContactInformation>(
              (value) => new ContactInformation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("buyerPrivateData")) {
      buyerPrivateData = new PrivateData.fromJson(_json["buyerPrivateData"]);
    }
    if (_json.containsKey("deals")) {
      deals = (_json["deals"] as core.List)
          .map<Deal>((value) => new Deal.fromJson(value))
          .toList();
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("isRenegotiating")) {
      isRenegotiating = _json["isRenegotiating"];
    }
    if (_json.containsKey("isSetupComplete")) {
      isSetupComplete = _json["isSetupComplete"];
    }
    if (_json.containsKey("lastUpdaterOrCommentorRole")) {
      lastUpdaterOrCommentorRole = _json["lastUpdaterOrCommentorRole"];
    }
    if (_json.containsKey("notes")) {
      notes = (_json["notes"] as core.List)
          .map<Note>((value) => new Note.fromJson(value))
          .toList();
    }
    if (_json.containsKey("originatorRole")) {
      originatorRole = _json["originatorRole"];
    }
    if (_json.containsKey("privateAuctionId")) {
      privateAuctionId = _json["privateAuctionId"];
    }
    if (_json.containsKey("proposalId")) {
      proposalId = _json["proposalId"];
    }
    if (_json.containsKey("proposalRevision")) {
      proposalRevision = _json["proposalRevision"];
    }
    if (_json.containsKey("proposalState")) {
      proposalState = _json["proposalState"];
    }
    if (_json.containsKey("seller")) {
      seller = new Seller.fromJson(_json["seller"]);
    }
    if (_json.containsKey("sellerContacts")) {
      sellerContacts = (_json["sellerContacts"] as core.List)
          .map<ContactInformation>(
              (value) => new ContactInformation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (billedBuyer != null) {
      _json["billedBuyer"] = (billedBuyer).toJson();
    }
    if (buyer != null) {
      _json["buyer"] = (buyer).toJson();
    }
    if (buyerContacts != null) {
      _json["buyerContacts"] =
          buyerContacts.map((value) => (value).toJson()).toList();
    }
    if (buyerPrivateData != null) {
      _json["buyerPrivateData"] = (buyerPrivateData).toJson();
    }
    if (deals != null) {
      _json["deals"] = deals.map((value) => (value).toJson()).toList();
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (isRenegotiating != null) {
      _json["isRenegotiating"] = isRenegotiating;
    }
    if (isSetupComplete != null) {
      _json["isSetupComplete"] = isSetupComplete;
    }
    if (lastUpdaterOrCommentorRole != null) {
      _json["lastUpdaterOrCommentorRole"] = lastUpdaterOrCommentorRole;
    }
    if (notes != null) {
      _json["notes"] = notes.map((value) => (value).toJson()).toList();
    }
    if (originatorRole != null) {
      _json["originatorRole"] = originatorRole;
    }
    if (privateAuctionId != null) {
      _json["privateAuctionId"] = privateAuctionId;
    }
    if (proposalId != null) {
      _json["proposalId"] = proposalId;
    }
    if (proposalRevision != null) {
      _json["proposalRevision"] = proposalRevision;
    }
    if (proposalState != null) {
      _json["proposalState"] = proposalState;
    }
    if (seller != null) {
      _json["seller"] = (seller).toJson();
    }
    if (sellerContacts != null) {
      _json["sellerContacts"] =
          sellerContacts.map((value) => (value).toJson()).toList();
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// Note: this resource requires whitelisting for access. Please contact your
/// account manager for access to Marketplace resources.
///
/// Represents a publisher profile in Marketplace.
///
/// All fields are read only. All string fields are free-form text entered by
/// the
/// publisher unless noted otherwise.
class PublisherProfile {
  /// Description on the publisher's audience.
  core.String audienceDescription;

  /// Statement explaining what's unique about publisher's business, and why
  /// buyers should partner with the publisher.
  core.String buyerPitchStatement;

  /// Contact information for direct reservation deals. This is free text
  /// entered
  /// by the publisher and may include information like names, phone numbers and
  /// email addresses.
  core.String directDealsContact;

  /// Name of the publisher profile.
  core.String displayName;

  /// The list of domains represented in this publisher profile. Empty if this
  /// is
  /// a parent profile. These are top private domains, meaning that these will
  /// not contain a string like "photos.google.co.uk/123", but will instead
  /// contain "google.co.uk".
  core.List<core.String> domains;

  /// URL to publisher's Google+ page.
  core.String googlePlusUrl;

  /// A Google public URL to the logo for this publisher profile. The logo is
  /// stored as a PNG, JPG, or GIF image.
  core.String logoUrl;

  /// URL to additional marketing and sales materials.
  core.String mediaKitUrl;

  /// Overview of the publisher.
  core.String overview;

  /// Contact information for programmatic deals. This is free text entered by
  /// the publisher and may include information like names, phone numbers and
  /// email addresses.
  core.String programmaticDealsContact;

  /// Unique ID for publisher profile.
  core.String publisherProfileId;

  /// URL to a publisher rate card.
  core.String rateCardInfoUrl;

  /// URL to a sample content page.
  core.String samplePageUrl;

  /// Seller of the publisher profile.
  Seller seller;

  /// Up to three key metrics and rankings. Max 100 characters each.
  /// For example "#1 Mobile News Site for 20 Straight Months".
  core.List<core.String> topHeadlines;

  PublisherProfile();

  PublisherProfile.fromJson(core.Map _json) {
    if (_json.containsKey("audienceDescription")) {
      audienceDescription = _json["audienceDescription"];
    }
    if (_json.containsKey("buyerPitchStatement")) {
      buyerPitchStatement = _json["buyerPitchStatement"];
    }
    if (_json.containsKey("directDealsContact")) {
      directDealsContact = _json["directDealsContact"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("domains")) {
      domains = (_json["domains"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("googlePlusUrl")) {
      googlePlusUrl = _json["googlePlusUrl"];
    }
    if (_json.containsKey("logoUrl")) {
      logoUrl = _json["logoUrl"];
    }
    if (_json.containsKey("mediaKitUrl")) {
      mediaKitUrl = _json["mediaKitUrl"];
    }
    if (_json.containsKey("overview")) {
      overview = _json["overview"];
    }
    if (_json.containsKey("programmaticDealsContact")) {
      programmaticDealsContact = _json["programmaticDealsContact"];
    }
    if (_json.containsKey("publisherProfileId")) {
      publisherProfileId = _json["publisherProfileId"];
    }
    if (_json.containsKey("rateCardInfoUrl")) {
      rateCardInfoUrl = _json["rateCardInfoUrl"];
    }
    if (_json.containsKey("samplePageUrl")) {
      samplePageUrl = _json["samplePageUrl"];
    }
    if (_json.containsKey("seller")) {
      seller = new Seller.fromJson(_json["seller"]);
    }
    if (_json.containsKey("topHeadlines")) {
      topHeadlines = (_json["topHeadlines"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (audienceDescription != null) {
      _json["audienceDescription"] = audienceDescription;
    }
    if (buyerPitchStatement != null) {
      _json["buyerPitchStatement"] = buyerPitchStatement;
    }
    if (directDealsContact != null) {
      _json["directDealsContact"] = directDealsContact;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (domains != null) {
      _json["domains"] = domains;
    }
    if (googlePlusUrl != null) {
      _json["googlePlusUrl"] = googlePlusUrl;
    }
    if (logoUrl != null) {
      _json["logoUrl"] = logoUrl;
    }
    if (mediaKitUrl != null) {
      _json["mediaKitUrl"] = mediaKitUrl;
    }
    if (overview != null) {
      _json["overview"] = overview;
    }
    if (programmaticDealsContact != null) {
      _json["programmaticDealsContact"] = programmaticDealsContact;
    }
    if (publisherProfileId != null) {
      _json["publisherProfileId"] = publisherProfileId;
    }
    if (rateCardInfoUrl != null) {
      _json["rateCardInfoUrl"] = rateCardInfoUrl;
    }
    if (samplePageUrl != null) {
      _json["samplePageUrl"] = samplePageUrl;
    }
    if (seller != null) {
      _json["seller"] = (seller).toJson();
    }
    if (topHeadlines != null) {
      _json["topHeadlines"] = topHeadlines;
    }
    return _json;
  }
}

/// An open-ended realtime time range specified by the start timestamp.
/// For filter sets that specify a realtime time range RTB metrics continue to
/// be aggregated throughout the lifetime of the filter set.
class RealtimeTimeRange {
  /// The start timestamp of the real-time RTB metrics aggregation.
  core.String startTimestamp;

  RealtimeTimeRange();

  RealtimeTimeRange.fromJson(core.Map _json) {
    if (_json.containsKey("startTimestamp")) {
      startTimestamp = _json["startTimestamp"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (startTimestamp != null) {
      _json["startTimestamp"] = startTimestamp;
    }
    return _json;
  }
}

/// A relative date range, specified by an offset and a duration.
/// The supported range of dates begins 30 days before today and ends today,
/// i.e., the limits for these values are:
/// offset_days >= 0
/// duration_days >= 1
/// offset_days + duration_days <= 30
class RelativeDateRange {
  /// The number of days in the requested date range, e.g., for a range spanning
  /// today: 1. For a range spanning the last 7 days: 7.
  core.int durationDays;

  /// The end date of the filter set, specified as the number of days before
  /// today, e.g., for a range where the last date is today: 0.
  core.int offsetDays;

  RelativeDateRange();

  RelativeDateRange.fromJson(core.Map _json) {
    if (_json.containsKey("durationDays")) {
      durationDays = _json["durationDays"];
    }
    if (_json.containsKey("offsetDays")) {
      offsetDays = _json["offsetDays"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (durationDays != null) {
      _json["durationDays"] = durationDays;
    }
    if (offsetDays != null) {
      _json["offsetDays"] = offsetDays;
    }
    return _json;
  }
}

/// A request for removing the association between a deal and a creative.
class RemoveDealAssociationRequest {
  /// The association between a creative and a deal that should be removed.
  CreativeDealAssociation association;

  RemoveDealAssociationRequest();

  RemoveDealAssociationRequest.fromJson(core.Map _json) {
    if (_json.containsKey("association")) {
      association = new CreativeDealAssociation.fromJson(_json["association"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (association != null) {
      _json["association"] = (association).toJson();
    }
    return _json;
  }
}

/// Request message to resume (unpause) serving for an already-finalized
/// proposal.
class ResumeProposalRequest {
  ResumeProposalRequest();

  ResumeProposalRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// A response may include multiple rows, breaking down along various
/// dimensions.
/// Encapsulates the values of all dimensions for a given row.
class RowDimensions {
  /// The publisher identifier for this row, if a breakdown by
  /// [BreakdownDimension.PUBLISHER_IDENTIFIER](https://developers.google.com/authorized-buyers/apis/reference/rest/v2beta1/bidders.accounts.filterSets#FilterSet.BreakdownDimension)
  /// was requested.
  core.String publisherIdentifier;

  /// The time interval that this row represents.
  TimeInterval timeInterval;

  RowDimensions();

  RowDimensions.fromJson(core.Map _json) {
    if (_json.containsKey("publisherIdentifier")) {
      publisherIdentifier = _json["publisherIdentifier"];
    }
    if (_json.containsKey("timeInterval")) {
      timeInterval = new TimeInterval.fromJson(_json["timeInterval"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (publisherIdentifier != null) {
      _json["publisherIdentifier"] = publisherIdentifier;
    }
    if (timeInterval != null) {
      _json["timeInterval"] = (timeInterval).toJson();
    }
    return _json;
  }
}

/// Output only. A security context.
class SecurityContext {
  /// The security types in this context.
  core.List<core.String> securities;

  SecurityContext();

  SecurityContext.fromJson(core.Map _json) {
    if (_json.containsKey("securities")) {
      securities = (_json["securities"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (securities != null) {
      _json["securities"] = securities;
    }
    return _json;
  }
}

/// Represents a seller of inventory. Each seller is identified by a unique
/// Ad Manager account ID.
class Seller {
  /// The unique ID for the seller. The seller fills in this field.
  /// The seller account ID is then available to buyer in the product.
  core.String accountId;

  /// Optional sub-account ID for the seller.
  core.String subAccountId;

  Seller();

  Seller.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("subAccountId")) {
      subAccountId = _json["subAccountId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (subAccountId != null) {
      _json["subAccountId"] = subAccountId;
    }
    return _json;
  }
}

/// The serving context for this restriction.
class ServingContext {
  /// Matches all contexts.
  /// Possible string values are:
  /// - "SIMPLE_CONTEXT" : A simple context.
  core.String all;

  /// Matches impressions for a particular app type.
  AppContext appType;

  /// Matches impressions for a particular auction type.
  AuctionContext auctionType;

  /// Matches impressions coming from users *or* publishers in a specific
  /// location.
  LocationContext location;

  /// Matches impressions coming from a particular platform.
  PlatformContext platform;

  /// Matches impressions for a particular security type.
  SecurityContext securityType;

  ServingContext();

  ServingContext.fromJson(core.Map _json) {
    if (_json.containsKey("all")) {
      all = _json["all"];
    }
    if (_json.containsKey("appType")) {
      appType = new AppContext.fromJson(_json["appType"]);
    }
    if (_json.containsKey("auctionType")) {
      auctionType = new AuctionContext.fromJson(_json["auctionType"]);
    }
    if (_json.containsKey("location")) {
      location = new LocationContext.fromJson(_json["location"]);
    }
    if (_json.containsKey("platform")) {
      platform = new PlatformContext.fromJson(_json["platform"]);
    }
    if (_json.containsKey("securityType")) {
      securityType = new SecurityContext.fromJson(_json["securityType"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (all != null) {
      _json["all"] = all;
    }
    if (appType != null) {
      _json["appType"] = (appType).toJson();
    }
    if (auctionType != null) {
      _json["auctionType"] = (auctionType).toJson();
    }
    if (location != null) {
      _json["location"] = (location).toJson();
    }
    if (platform != null) {
      _json["platform"] = (platform).toJson();
    }
    if (securityType != null) {
      _json["securityType"] = (securityType).toJson();
    }
    return _json;
  }
}

/// Output only. A representation of the status of an ad in a
/// specific context. A context here relates to where something ultimately
/// serves
/// (for example, a user or publisher geo, a platform, an HTTPS vs HTTP request,
/// or the type of auction).
class ServingRestriction {
  /// The contexts for the restriction.
  core.List<ServingContext> contexts;

  /// Disapproval bound to this restriction.
  /// Only present if status=DISAPPROVED.
  /// Can be used to filter the response of the
  /// creatives.list
  /// method.
  Disapproval disapproval;

  /// Any disapprovals bound to this restriction.
  /// Only present if status=DISAPPROVED.
  /// Can be used to filter the response of the
  /// creatives.list
  /// method.
  /// Deprecated; please use
  /// disapproval
  /// field instead.
  core.List<Disapproval> disapprovalReasons;

  /// The status of the creative in this context (for example, it has been
  /// explicitly disapproved or is pending review).
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : The status is not known.
  /// - "DISAPPROVAL" : The ad was disapproved in this context.
  /// - "PENDING_REVIEW" : The ad is pending review in this context.
  core.String status;

  ServingRestriction();

  ServingRestriction.fromJson(core.Map _json) {
    if (_json.containsKey("contexts")) {
      contexts = (_json["contexts"] as core.List)
          .map<ServingContext>((value) => new ServingContext.fromJson(value))
          .toList();
    }
    if (_json.containsKey("disapproval")) {
      disapproval = new Disapproval.fromJson(_json["disapproval"]);
    }
    if (_json.containsKey("disapprovalReasons")) {
      disapprovalReasons = (_json["disapprovalReasons"] as core.List)
          .map<Disapproval>((value) => new Disapproval.fromJson(value))
          .toList();
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (contexts != null) {
      _json["contexts"] = contexts.map((value) => (value).toJson()).toList();
    }
    if (disapproval != null) {
      _json["disapproval"] = (disapproval).toJson();
    }
    if (disapprovalReasons != null) {
      _json["disapprovalReasons"] =
          disapprovalReasons.map((value) => (value).toJson()).toList();
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}

/// Message depicting the size of the creative. The units of width and
/// height depend on the type of the targeting.
class Size {
  /// The height of the creative.
  core.int height;

  /// The width of the creative
  core.int width;

  Size();

  Size.fromJson(core.Map _json) {
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (height != null) {
      _json["height"] = height;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

/// A request for stopping notifications for changes to creative Status.
class StopWatchingCreativeRequest {
  StopWatchingCreativeRequest();

  StopWatchingCreativeRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Advertisers can target different attributes of an ad slot. For example,
/// they can choose to show ads only if the user is in the U.S. Such
/// targeting criteria can be specified as part of Shared Targeting.
class TargetingCriteria {
  /// The list of values to exclude from targeting. Each value is AND'd
  /// together.
  core.List<TargetingValue> exclusions;

  /// The list of value to include as part of the targeting. Each value is OR'd
  /// together.
  core.List<TargetingValue> inclusions;

  /// The key representing the shared targeting criterion.
  /// Targeting criteria defined by Google ad servers will begin with GOOG_.
  /// Third parties may define their own keys.
  /// A list of permissible keys along with the acceptable values will be
  /// provided as part of the external documentation.
  core.String key;

  TargetingCriteria();

  TargetingCriteria.fromJson(core.Map _json) {
    if (_json.containsKey("exclusions")) {
      exclusions = (_json["exclusions"] as core.List)
          .map<TargetingValue>((value) => new TargetingValue.fromJson(value))
          .toList();
    }
    if (_json.containsKey("inclusions")) {
      inclusions = (_json["inclusions"] as core.List)
          .map<TargetingValue>((value) => new TargetingValue.fromJson(value))
          .toList();
    }
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exclusions != null) {
      _json["exclusions"] =
          exclusions.map((value) => (value).toJson()).toList();
    }
    if (inclusions != null) {
      _json["inclusions"] =
          inclusions.map((value) => (value).toJson()).toList();
    }
    if (key != null) {
      _json["key"] = key;
    }
    return _json;
  }
}

/// A polymorphic targeting value used as part of Shared Targeting.
class TargetingValue {
  /// The creative size value to include/exclude.
  /// Filled in when key = GOOG_CREATIVE_SIZE
  CreativeSize creativeSizeValue;

  /// The daypart targeting to include / exclude.
  /// Filled in when the key is GOOG_DAYPART_TARGETING.
  /// The definition of this targeting is derived from the structure
  /// used by Ad Manager.
  DayPartTargeting dayPartTargetingValue;

  /// The long value to include/exclude.
  core.String longValue;

  /// The string value to include/exclude.
  core.String stringValue;

  TargetingValue();

  TargetingValue.fromJson(core.Map _json) {
    if (_json.containsKey("creativeSizeValue")) {
      creativeSizeValue = new CreativeSize.fromJson(_json["creativeSizeValue"]);
    }
    if (_json.containsKey("dayPartTargetingValue")) {
      dayPartTargetingValue =
          new DayPartTargeting.fromJson(_json["dayPartTargetingValue"]);
    }
    if (_json.containsKey("longValue")) {
      longValue = _json["longValue"];
    }
    if (_json.containsKey("stringValue")) {
      stringValue = _json["stringValue"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (creativeSizeValue != null) {
      _json["creativeSizeValue"] = (creativeSizeValue).toJson();
    }
    if (dayPartTargetingValue != null) {
      _json["dayPartTargetingValue"] = (dayPartTargetingValue).toJson();
    }
    if (longValue != null) {
      _json["longValue"] = longValue;
    }
    if (stringValue != null) {
      _json["stringValue"] = stringValue;
    }
    return _json;
  }
}

/// Represents targeting about various types of technology.
class TechnologyTargeting {
  /// IDs of device capabilities to be included/excluded.
  CriteriaTargeting deviceCapabilityTargeting;

  /// IDs of device categories to be included/excluded.
  CriteriaTargeting deviceCategoryTargeting;

  /// Operating system related targeting information.
  OperatingSystemTargeting operatingSystemTargeting;

  TechnologyTargeting();

  TechnologyTargeting.fromJson(core.Map _json) {
    if (_json.containsKey("deviceCapabilityTargeting")) {
      deviceCapabilityTargeting =
          new CriteriaTargeting.fromJson(_json["deviceCapabilityTargeting"]);
    }
    if (_json.containsKey("deviceCategoryTargeting")) {
      deviceCategoryTargeting =
          new CriteriaTargeting.fromJson(_json["deviceCategoryTargeting"]);
    }
    if (_json.containsKey("operatingSystemTargeting")) {
      operatingSystemTargeting = new OperatingSystemTargeting.fromJson(
          _json["operatingSystemTargeting"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deviceCapabilityTargeting != null) {
      _json["deviceCapabilityTargeting"] = (deviceCapabilityTargeting).toJson();
    }
    if (deviceCategoryTargeting != null) {
      _json["deviceCategoryTargeting"] = (deviceCategoryTargeting).toJson();
    }
    if (operatingSystemTargeting != null) {
      _json["operatingSystemTargeting"] = (operatingSystemTargeting).toJson();
    }
    return _json;
  }
}

/// An interval of time, with an absolute start and end.
class TimeInterval {
  /// The timestamp marking the end of the range (exclusive) for which data is
  /// included.
  core.String endTime;

  /// The timestamp marking the start of the range (inclusive) for which data is
  /// included.
  core.String startTime;

  TimeInterval();

  TimeInterval.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
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
    return _json;
  }
}

/// Represents a time of day. The date and time zone are either not significant
/// or are specified elsewhere. An API may choose to allow leap seconds. Related
/// types are google.type.Date and `google.protobuf.Timestamp`.
class TimeOfDay {
  /// Hours of day in 24 hour format. Should be from 0 to 23. An API may choose
  /// to allow the value "24:00:00" for scenarios like business closing time.
  core.int hours;

  /// Minutes of hour of day. Must be from 0 to 59.
  core.int minutes;

  /// Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  core.int nanos;

  /// Seconds of minutes of the time. Must normally be from 0 to 59. An API may
  /// allow the value 60 if it allows leap-seconds.
  core.int seconds;

  TimeOfDay();

  TimeOfDay.fromJson(core.Map _json) {
    if (_json.containsKey("hours")) {
      hours = _json["hours"];
    }
    if (_json.containsKey("minutes")) {
      minutes = _json["minutes"];
    }
    if (_json.containsKey("nanos")) {
      nanos = _json["nanos"];
    }
    if (_json.containsKey("seconds")) {
      seconds = _json["seconds"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (hours != null) {
      _json["hours"] = hours;
    }
    if (minutes != null) {
      _json["minutes"] = minutes;
    }
    if (nanos != null) {
      _json["nanos"] = nanos;
    }
    if (seconds != null) {
      _json["seconds"] = seconds;
    }
    return _json;
  }
}

/// Represents a list of targeted and excluded URLs (e.g., google.com).
/// For Private Auction and AdX Preferred Deals, URLs are either included or
/// excluded.
/// For Programmatic Guaranteed and Preferred Deals, this doesn't
/// apply.
class UrlTargeting {
  /// A list of URLs to be excluded.
  core.List<core.String> excludedUrls;

  /// A list of URLs to be included.
  core.List<core.String> targetedUrls;

  UrlTargeting();

  UrlTargeting.fromJson(core.Map _json) {
    if (_json.containsKey("excludedUrls")) {
      excludedUrls = (_json["excludedUrls"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("targetedUrls")) {
      targetedUrls = (_json["targetedUrls"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (excludedUrls != null) {
      _json["excludedUrls"] = excludedUrls;
    }
    if (targetedUrls != null) {
      _json["targetedUrls"] = targetedUrls;
    }
    return _json;
  }
}

/// Video content for a creative.
class VideoContent {
  /// The URL to fetch a video ad.
  core.String videoUrl;

  /// The contents of a VAST document for a video ad.
  /// This document should conform to the VAST 2.0 or 3.0 standard.
  core.String videoVastXml;

  VideoContent();

  VideoContent.fromJson(core.Map _json) {
    if (_json.containsKey("videoUrl")) {
      videoUrl = _json["videoUrl"];
    }
    if (_json.containsKey("videoVastXml")) {
      videoVastXml = _json["videoVastXml"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (videoUrl != null) {
      _json["videoUrl"] = videoUrl;
    }
    if (videoVastXml != null) {
      _json["videoVastXml"] = videoVastXml;
    }
    return _json;
  }
}

/// Represents targeting information about video.
class VideoTargeting {
  /// A list of video positions to be excluded.
  /// Position types can either be included or excluded (XOR).
  core.List<core.String> excludedPositionTypes;

  /// A list of video positions to be included.
  /// When the included list is present, the excluded list must be empty.
  /// When the excluded list is present, the included list must be empty.
  core.List<core.String> targetedPositionTypes;

  VideoTargeting();

  VideoTargeting.fromJson(core.Map _json) {
    if (_json.containsKey("excludedPositionTypes")) {
      excludedPositionTypes =
          (_json["excludedPositionTypes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("targetedPositionTypes")) {
      targetedPositionTypes =
          (_json["targetedPositionTypes"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (excludedPositionTypes != null) {
      _json["excludedPositionTypes"] = excludedPositionTypes;
    }
    if (targetedPositionTypes != null) {
      _json["targetedPositionTypes"] = targetedPositionTypes;
    }
    return _json;
  }
}

/// A request for watching changes to creative Status.
class WatchCreativeRequest {
  /// The Pub/Sub topic to publish notifications to.
  /// This topic must already exist and must give permission to
  /// ad-exchange-buyside-reports@google.com to write to the topic.
  /// This should be the full resource name in
  /// "projects/{project_id}/topics/{topic_id}" format.
  core.String topic;

  WatchCreativeRequest();

  WatchCreativeRequest.fromJson(core.Map _json) {
    if (_json.containsKey("topic")) {
      topic = _json["topic"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (topic != null) {
      _json["topic"] = topic;
    }
    return _json;
  }
}
