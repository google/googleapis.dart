// This is a generated file (see the discoveryapis_generator project).

library googleapis_beta.adexchangebuyer2.v2beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client adexchangebuyer2/v2beta1';

/**
 * Accesses the latest features for managing Ad Exchange accounts and Real-Time
 * Bidding configurations and auction metrics.
 */
class Adexchangebuyer2Api {
  /** Manage your Ad Exchange buyer account configuration */
  static const AdexchangeBuyerScope = "https://www.googleapis.com/auth/adexchange.buyer";


  final commons.ApiRequester _requester;

  AccountsResourceApi get accounts => new AccountsResourceApi(_requester);

  Adexchangebuyer2Api(http.Client client, {core.String rootUrl: "https://adexchangebuyer.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class AccountsResourceApi {
  final commons.ApiRequester _requester;

  AccountsClientsResourceApi get clients => new AccountsClientsResourceApi(_requester);
  AccountsFilterSetsResourceApi get filterSets => new AccountsFilterSetsResourceApi(_requester);

  AccountsResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class AccountsClientsResourceApi {
  final commons.ApiRequester _requester;

  AccountsClientsInvitationsResourceApi get invitations => new AccountsClientsInvitationsResourceApi(_requester);
  AccountsClientsUsersResourceApi get users => new AccountsClientsUsersResourceApi(_requester);

  AccountsClientsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a new client buyer.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - Unique numerical account ID for the buyer of which the client
   * buyer
   * is a customer; the sponsor buyer to create a client for. (required)
   *
   * Completes with a [Client].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Client> create(Client request, core.String accountId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/clients';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Client.fromJson(data));
  }

  /**
   * Gets a client buyer with a given client account ID.
   *
   * Request parameters:
   *
   * [accountId] - Numerical account ID of the client's sponsor buyer.
   * (required)
   *
   * [clientAccountId] - Numerical account ID of the client buyer to retrieve.
   * (required)
   *
   * Completes with a [Client].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Client> get(core.String accountId, core.String clientAccountId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (clientAccountId == null) {
      throw new core.ArgumentError("Parameter clientAccountId is required.");
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/clients/' + commons.Escaper.ecapeVariable('$clientAccountId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Client.fromJson(data));
  }

  /**
   * Lists all the clients for the current sponsor buyer.
   *
   * Request parameters:
   *
   * [accountId] - Unique numerical account ID of the sponsor buyer to list the
   * clients for.
   *
   * [pageSize] - Requested page size. The server may return fewer clients than
   * requested.
   * If unspecified, the server will pick an appropriate default.
   *
   * [pageToken] - A token identifying a page of results the server should
   * return.
   * Typically, this is the value of
   * ListClientsResponse.nextPageToken
   * returned from the previous call to the
   * accounts.clients.list method.
   *
   * Completes with a [ListClientsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListClientsResponse> list(core.String accountId, {core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/clients';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListClientsResponse.fromJson(data));
  }

  /**
   * Updates an existing client buyer.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - Unique numerical account ID for the buyer of which the client
   * buyer
   * is a customer; the sponsor buyer to update a client for. (required)
   *
   * [clientAccountId] - Unique numerical account ID of the client to update.
   * (required)
   *
   * Completes with a [Client].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Client> update(Client request, core.String accountId, core.String clientAccountId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (clientAccountId == null) {
      throw new core.ArgumentError("Parameter clientAccountId is required.");
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/clients/' + commons.Escaper.ecapeVariable('$clientAccountId');

    var _response = _requester.request(_url,
                                       "PUT",
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

  AccountsClientsInvitationsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates and sends out an email invitation to access
   * an Ad Exchange client buyer account.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - Numerical account ID of the client's sponsor buyer.
   * (required)
   *
   * [clientAccountId] - Numerical account ID of the client buyer that the user
   * should be associated with. (required)
   *
   * Completes with a [ClientUserInvitation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ClientUserInvitation> create(ClientUserInvitation request, core.String accountId, core.String clientAccountId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (clientAccountId == null) {
      throw new core.ArgumentError("Parameter clientAccountId is required.");
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/clients/' + commons.Escaper.ecapeVariable('$clientAccountId') + '/invitations';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ClientUserInvitation.fromJson(data));
  }

  /**
   * Retrieves an existing client user invitation.
   *
   * Request parameters:
   *
   * [accountId] - Numerical account ID of the client's sponsor buyer.
   * (required)
   *
   * [clientAccountId] - Numerical account ID of the client buyer that the user
   * invitation
   * to be retrieved is associated with. (required)
   *
   * [invitationId] - Numerical identifier of the user invitation to retrieve.
   * (required)
   *
   * Completes with a [ClientUserInvitation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ClientUserInvitation> get(core.String accountId, core.String clientAccountId, core.String invitationId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (clientAccountId == null) {
      throw new core.ArgumentError("Parameter clientAccountId is required.");
    }
    if (invitationId == null) {
      throw new core.ArgumentError("Parameter invitationId is required.");
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/clients/' + commons.Escaper.ecapeVariable('$clientAccountId') + '/invitations/' + commons.Escaper.ecapeVariable('$invitationId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ClientUserInvitation.fromJson(data));
  }

  /**
   * Lists all the client users invitations for a client
   * with a given account ID.
   *
   * Request parameters:
   *
   * [accountId] - Numerical account ID of the client's sponsor buyer.
   * (required)
   *
   * [clientAccountId] - Numerical account ID of the client buyer to list
   * invitations for.
   * (required)
   * You must either specify a string representation of a
   * numerical account identifier or the `-` character
   * to list all the invitations for all the clients
   * of a given sponsor buyer.
   *
   * [pageSize] - Requested page size. Server may return fewer clients than
   * requested.
   * If unspecified, server will pick an appropriate default.
   *
   * [pageToken] - A token identifying a page of results the server should
   * return.
   * Typically, this is the value of
   * ListClientUserInvitationsResponse.nextPageToken
   * returned from the previous call to the
   * clients.invitations.list
   * method.
   *
   * Completes with a [ListClientUserInvitationsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListClientUserInvitationsResponse> list(core.String accountId, core.String clientAccountId, {core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (clientAccountId == null) {
      throw new core.ArgumentError("Parameter clientAccountId is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/clients/' + commons.Escaper.ecapeVariable('$clientAccountId') + '/invitations';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListClientUserInvitationsResponse.fromJson(data));
  }

}


class AccountsClientsUsersResourceApi {
  final commons.ApiRequester _requester;

  AccountsClientsUsersResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves an existing client user.
   *
   * Request parameters:
   *
   * [accountId] - Numerical account ID of the client's sponsor buyer.
   * (required)
   *
   * [clientAccountId] - Numerical account ID of the client buyer
   * that the user to be retrieved is associated with. (required)
   *
   * [userId] - Numerical identifier of the user to retrieve. (required)
   *
   * Completes with a [ClientUser].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ClientUser> get(core.String accountId, core.String clientAccountId, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (clientAccountId == null) {
      throw new core.ArgumentError("Parameter clientAccountId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/clients/' + commons.Escaper.ecapeVariable('$clientAccountId') + '/users/' + commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ClientUser.fromJson(data));
  }

  /**
   * Lists all the known client users for a specified
   * sponsor buyer account ID.
   *
   * Request parameters:
   *
   * [accountId] - Numerical account ID of the sponsor buyer of the client to
   * list users for.
   * (required)
   *
   * [clientAccountId] - The account ID of the client buyer to list users for.
   * (required)
   * You must specify either a string representation of a
   * numerical account identifier or the `-` character
   * to list all the client users for all the clients
   * of a given sponsor buyer.
   *
   * [pageSize] - Requested page size. The server may return fewer clients than
   * requested.
   * If unspecified, the server will pick an appropriate default.
   *
   * [pageToken] - A token identifying a page of results the server should
   * return.
   * Typically, this is the value of
   * ListClientUsersResponse.nextPageToken
   * returned from the previous call to the
   * accounts.clients.users.list method.
   *
   * Completes with a [ListClientUsersResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListClientUsersResponse> list(core.String accountId, core.String clientAccountId, {core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (clientAccountId == null) {
      throw new core.ArgumentError("Parameter clientAccountId is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/clients/' + commons.Escaper.ecapeVariable('$clientAccountId') + '/users';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListClientUsersResponse.fromJson(data));
  }

  /**
   * Updates an existing client user.
   * Only the user status can be changed on update.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - Numerical account ID of the client's sponsor buyer.
   * (required)
   *
   * [clientAccountId] - Numerical account ID of the client buyer that the user
   * to be retrieved
   * is associated with. (required)
   *
   * [userId] - Numerical identifier of the user to retrieve. (required)
   *
   * Completes with a [ClientUser].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ClientUser> update(ClientUser request, core.String accountId, core.String clientAccountId, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
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

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/clients/' + commons.Escaper.ecapeVariable('$clientAccountId') + '/users/' + commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ClientUser.fromJson(data));
  }

}


class AccountsFilterSetsResourceApi {
  final commons.ApiRequester _requester;

  AccountsFilterSetsFilteredBidsResourceApi get filteredBids => new AccountsFilterSetsFilteredBidsResourceApi(_requester);
  AccountsFilterSetsFilteredImpressionsResourceApi get filteredImpressions => new AccountsFilterSetsFilteredImpressionsResourceApi(_requester);
  AccountsFilterSetsFilteredRequestsResourceApi get filteredRequests => new AccountsFilterSetsFilteredRequestsResourceApi(_requester);
  AccountsFilterSetsLosingBidsResourceApi get losingBids => new AccountsFilterSetsLosingBidsResourceApi(_requester);
  AccountsFilterSetsResponseErrorsResourceApi get responseErrors => new AccountsFilterSetsResponseErrorsResourceApi(_requester);
  AccountsFilterSetsResponsesWithoutBidsResourceApi get responsesWithoutBids => new AccountsFilterSetsResponsesWithoutBidsResourceApi(_requester);

  AccountsFilterSetsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates the specified filter set for the account with the given account ID.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - Account ID of the buyer.
   *
   * [isTransient] - Whether the filter set is transient, or should be persisted
   * indefinitely.
   * By default, filter sets are not transient.
   * If transient, it will be available for at least 1 hour after creation.
   *
   * Completes with a [FilterSet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<FilterSet> create(FilterSet request, core.String accountId, {core.bool isTransient}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (isTransient != null) {
      _queryParams["isTransient"] = ["${isTransient}"];
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/filterSets';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new FilterSet.fromJson(data));
  }

  /**
   * Deletes the requested filter set from the account with the given account
   * ID.
   *
   * Request parameters:
   *
   * [accountId] - Account ID of the buyer.
   *
   * [filterSetId] - The ID of the filter set to delete.
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String accountId, core.int filterSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (filterSetId == null) {
      throw new core.ArgumentError("Parameter filterSetId is required.");
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/filterSets/' + commons.Escaper.ecapeVariable('$filterSetId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Retrieves the requested filter set for the account with the given account
   * ID.
   *
   * Request parameters:
   *
   * [accountId] - Account ID of the buyer.
   *
   * [filterSetId] - The ID of the filter set to get.
   *
   * Completes with a [FilterSet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<FilterSet> get(core.String accountId, core.int filterSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (filterSetId == null) {
      throw new core.ArgumentError("Parameter filterSetId is required.");
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/filterSets/' + commons.Escaper.ecapeVariable('$filterSetId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new FilterSet.fromJson(data));
  }

  /**
   * Gets all metrics that are measured in terms of number of bids.
   *
   * Request parameters:
   *
   * [accountId] - Account ID of the buyer.
   *
   * [filterSetId] - The ID of the filter set to apply.
   *
   * Completes with a [BidMetrics].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<BidMetrics> getBidMetrics(core.String accountId, core.int filterSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (filterSetId == null) {
      throw new core.ArgumentError("Parameter filterSetId is required.");
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/filterSets/' + commons.Escaper.ecapeVariable('$filterSetId') + '/bidMetrics';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new BidMetrics.fromJson(data));
  }

  /**
   * Gets all metrics that are measured in terms of number of impressions.
   *
   * Request parameters:
   *
   * [accountId] - Account ID of the buyer.
   *
   * [filterSetId] - The ID of the filter set to apply.
   *
   * Completes with a [ImpressionMetrics].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ImpressionMetrics> getImpressionMetrics(core.String accountId, core.int filterSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (filterSetId == null) {
      throw new core.ArgumentError("Parameter filterSetId is required.");
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/filterSets/' + commons.Escaper.ecapeVariable('$filterSetId') + '/impressionMetrics';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ImpressionMetrics.fromJson(data));
  }

  /**
   * Lists all filter sets for the account with the given account ID.
   *
   * Request parameters:
   *
   * [accountId] - Account ID of the buyer.
   *
   * [pageSize] - Requested page size. The server may return fewer than
   * requested.
   * If unspecified, the server will pick an appropriate default.
   *
   * [pageToken] - A token identifying a page of results the server should
   * return.
   * Typically, this is the value of
   * ListFilterSetsResponse.nextPageToken
   * returned from the previous call to the
   * accounts.rtbBreakout.filterSets.list method.
   *
   * Completes with a [ListFilterSetsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListFilterSetsResponse> list(core.String accountId, {core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/filterSets';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListFilterSetsResponse.fromJson(data));
  }

}


class AccountsFilterSetsFilteredBidsResourceApi {
  final commons.ApiRequester _requester;

  AccountsFilterSetsFilteredBidsCreativesResourceApi get creatives => new AccountsFilterSetsFilteredBidsCreativesResourceApi(_requester);
  AccountsFilterSetsFilteredBidsDetailsResourceApi get details => new AccountsFilterSetsFilteredBidsDetailsResourceApi(_requester);

  AccountsFilterSetsFilteredBidsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * List all reasons for which bids were filtered, with the number of bids
   * filtered for each reason.
   *
   * Request parameters:
   *
   * [accountId] - Account ID of the buyer.
   *
   * [filterSetId] - The ID of the filter set to apply.
   *
   * Completes with a [ListFilteredBidsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListFilteredBidsResponse> list(core.String accountId, core.int filterSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (filterSetId == null) {
      throw new core.ArgumentError("Parameter filterSetId is required.");
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/filterSets/' + commons.Escaper.ecapeVariable('$filterSetId') + '/filteredBids';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListFilteredBidsResponse.fromJson(data));
  }

}


class AccountsFilterSetsFilteredBidsCreativesResourceApi {
  final commons.ApiRequester _requester;

  AccountsFilterSetsFilteredBidsCreativesDetailsResourceApi get details => new AccountsFilterSetsFilteredBidsCreativesDetailsResourceApi(_requester);

  AccountsFilterSetsFilteredBidsCreativesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * List all creatives associated with a specific reason for which bids were
   * filtered, with the number of bids filtered for each creative.
   *
   * Request parameters:
   *
   * [accountId] - Account ID of the buyer.
   *
   * [filterSetId] - The ID of the filter set to apply.
   *
   * [creativeStatusId] - The ID of the creative status for which to retrieve a
   * breakdown by
   * creative.
   * See creative-status-codes.
   *
   * [pageSize] - Requested page size. The server may return fewer than
   * requested.
   * If unspecified, the server will pick an appropriate default.
   *
   * [pageToken] - A token identifying a page of results the server should
   * return.
   * Typically, this is the value of
   * ListCreativeStatusBreakdownByCreativeResponse.nextPageToken
   * returned from the previous call to the
   * accounts.filterSets.filteredBids.creatives.list method.
   *
   * Completes with a [ListCreativeStatusBreakdownByCreativeResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListCreativeStatusBreakdownByCreativeResponse> list(core.String accountId, core.int filterSetId, core.int creativeStatusId, {core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (filterSetId == null) {
      throw new core.ArgumentError("Parameter filterSetId is required.");
    }
    if (creativeStatusId == null) {
      throw new core.ArgumentError("Parameter creativeStatusId is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/filterSets/' + commons.Escaper.ecapeVariable('$filterSetId') + '/filteredBids/' + commons.Escaper.ecapeVariable('$creativeStatusId') + '/creatives';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListCreativeStatusBreakdownByCreativeResponse.fromJson(data));
  }

}


class AccountsFilterSetsFilteredBidsCreativesDetailsResourceApi {
  final commons.ApiRequester _requester;

  AccountsFilterSetsFilteredBidsCreativesDetailsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * List all details associated with a specific reason for which bids were
   * filtered and a specific creative that was filtered for that reason, with
   * the number of bids filtered for each detail.
   *
   * Request parameters:
   *
   * [accountId] - Account ID of the buyer.
   *
   * [filterSetId] - The ID of the filter set to apply.
   *
   * [creativeStatusId] - The ID of the creative status for which to retrieve a
   * breakdown by detail.
   * See creative-status-codes.
   *
   * [creativeId] - The creative ID for which to retrieve a breakdown by detail.
   *
   * Completes with a [ListCreativeStatusAndCreativeBreakdownByDetailResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListCreativeStatusAndCreativeBreakdownByDetailResponse> list(core.String accountId, core.int filterSetId, core.int creativeStatusId, core.String creativeId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (filterSetId == null) {
      throw new core.ArgumentError("Parameter filterSetId is required.");
    }
    if (creativeStatusId == null) {
      throw new core.ArgumentError("Parameter creativeStatusId is required.");
    }
    if (creativeId == null) {
      throw new core.ArgumentError("Parameter creativeId is required.");
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/filterSets/' + commons.Escaper.ecapeVariable('$filterSetId') + '/filteredBids/' + commons.Escaper.ecapeVariable('$creativeStatusId') + '/creatives/' + commons.Escaper.ecapeVariable('$creativeId') + '/details';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListCreativeStatusAndCreativeBreakdownByDetailResponse.fromJson(data));
  }

}


class AccountsFilterSetsFilteredBidsDetailsResourceApi {
  final commons.ApiRequester _requester;

  AccountsFilterSetsFilteredBidsDetailsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * List all details associated with a specific reason for which bids were
   * filtered, with the number of bids filtered for each detail.
   *
   * Request parameters:
   *
   * [accountId] - Account ID of the buyer.
   *
   * [filterSetId] - The ID of the filter set to apply.
   *
   * [creativeStatusId] - The ID of the creative status for which to retrieve a
   * breakdown by detail.
   * See creative-status-codes.
   *
   * Completes with a [ListCreativeStatusBreakdownByDetailResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListCreativeStatusBreakdownByDetailResponse> list(core.String accountId, core.int filterSetId, core.int creativeStatusId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (filterSetId == null) {
      throw new core.ArgumentError("Parameter filterSetId is required.");
    }
    if (creativeStatusId == null) {
      throw new core.ArgumentError("Parameter creativeStatusId is required.");
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/filterSets/' + commons.Escaper.ecapeVariable('$filterSetId') + '/filteredBids/' + commons.Escaper.ecapeVariable('$creativeStatusId') + '/details';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListCreativeStatusBreakdownByDetailResponse.fromJson(data));
  }

}


class AccountsFilterSetsFilteredImpressionsResourceApi {
  final commons.ApiRequester _requester;

  AccountsFilterSetsFilteredImpressionsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * List all reasons that caused an impression to be filtered (i.e. not
   * considered as an inventory match), with the number of impressions that were
   * filtered for each reason.
   *
   * Request parameters:
   *
   * [accountId] - Account ID of the buyer.
   *
   * [filterSetId] - The ID of the filter set to apply.
   *
   * Completes with a [ListFilteredImpressionsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListFilteredImpressionsResponse> list(core.String accountId, core.int filterSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (filterSetId == null) {
      throw new core.ArgumentError("Parameter filterSetId is required.");
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/filterSets/' + commons.Escaper.ecapeVariable('$filterSetId') + '/filteredImpressions';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListFilteredImpressionsResponse.fromJson(data));
  }

}


class AccountsFilterSetsFilteredRequestsResourceApi {
  final commons.ApiRequester _requester;

  AccountsFilterSetsFilteredRequestsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * List all reasons that caused a bid request not to be sent for an
   * impression, with the number of bid requests not sent for each reason.
   *
   * Request parameters:
   *
   * [accountId] - Account ID of the buyer.
   *
   * [filterSetId] - The ID of the filter set to apply.
   *
   * Completes with a [ListFilteredRequestsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListFilteredRequestsResponse> list(core.String accountId, core.int filterSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (filterSetId == null) {
      throw new core.ArgumentError("Parameter filterSetId is required.");
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/filterSets/' + commons.Escaper.ecapeVariable('$filterSetId') + '/filteredRequests';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListFilteredRequestsResponse.fromJson(data));
  }

}


class AccountsFilterSetsLosingBidsResourceApi {
  final commons.ApiRequester _requester;

  AccountsFilterSetsLosingBidsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * List all reasons for which bids lost in the auction, with the number of
   * bids that lost for each reason.
   *
   * Request parameters:
   *
   * [accountId] - Account ID of the buyer.
   *
   * [filterSetId] - The ID of the filter set to apply.
   *
   * Completes with a [ListLosingBidsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListLosingBidsResponse> list(core.String accountId, core.int filterSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (filterSetId == null) {
      throw new core.ArgumentError("Parameter filterSetId is required.");
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/filterSets/' + commons.Escaper.ecapeVariable('$filterSetId') + '/losingBids';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLosingBidsResponse.fromJson(data));
  }

}


class AccountsFilterSetsResponseErrorsResourceApi {
  final commons.ApiRequester _requester;

  AccountsFilterSetsResponseErrorsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * List all errors that occurred in bid responses, with the number of bid
   * responses affected for each reason.
   *
   * Request parameters:
   *
   * [accountId] - Account ID of the buyer.
   *
   * [filterSetId] - The ID of the filter set to apply.
   *
   * Completes with a [ListResponseErrorsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListResponseErrorsResponse> list(core.String accountId, core.int filterSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (filterSetId == null) {
      throw new core.ArgumentError("Parameter filterSetId is required.");
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/filterSets/' + commons.Escaper.ecapeVariable('$filterSetId') + '/responseErrors';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListResponseErrorsResponse.fromJson(data));
  }

}


class AccountsFilterSetsResponsesWithoutBidsResourceApi {
  final commons.ApiRequester _requester;

  AccountsFilterSetsResponsesWithoutBidsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * List all reasons for which bid responses were considered to have no
   * applicable bids, with the number of bid responses affected for each reason.
   *
   * Request parameters:
   *
   * [accountId] - Account ID of the buyer.
   *
   * [filterSetId] - The ID of the filter set to apply.
   *
   * Completes with a [ListResponsesWithoutBidsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListResponsesWithoutBidsResponse> list(core.String accountId, core.int filterSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (filterSetId == null) {
      throw new core.ArgumentError("Parameter filterSetId is required.");
    }

    _url = 'v2beta1/accounts/' + commons.Escaper.ecapeVariable('$accountId') + '/filterSets/' + commons.Escaper.ecapeVariable('$filterSetId') + '/responsesWithoutBids';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListResponsesWithoutBidsResponse.fromJson(data));
  }

}



/**
 * An absolute date range, specified by its start date and end date.
 * The supported range of dates begins 30 days before today and ends today.
 * Validity checked upon filter set creation. If a filter set with an absolute
 * date range is run at a later date more than 30 days after start_date, it will
 * fail.
 */
class AbsoluteDateRange {
  /**
   * The end date of the range (inclusive).
   * Must be within the 30 days leading up to current date, and must be equal to
   * or after start_date.
   */
  Date endDate;
  /**
   * The start date of the range (inclusive).
   * Must be within the 30 days leading up to current date, and must be equal to
   * or before end_date.
   */
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

  core.Map toJson() {
    var _json = new core.Map();
    if (endDate != null) {
      _json["endDate"] = (endDate).toJson();
    }
    if (startDate != null) {
      _json["startDate"] = (startDate).toJson();
    }
    return _json;
  }
}

/**
 * The set of metrics that are measured in numbers of bids, representing how
 * many bids were considered eligible at each stage of the bidding funnel.
 */
class BidMetrics {
  /** The number of bids that Ad Exchange received from the buyer. */
  core.String bids;
  /** The number of bids that were permitted to compete in the auction. */
  core.String bidsInAuction;
  /**
   * The timestamp marking the end of the range (exclusive) for which data is
   * included.
   */
  core.String endTime;
  /** The number of bids that won an impression. */
  core.String impressionsWon;
  /**
   * The timestamp marking the start of the range (inclusive) for which data is
   * included.
   */
  core.String startTime;

  BidMetrics();

  BidMetrics.fromJson(core.Map _json) {
    if (_json.containsKey("bids")) {
      bids = _json["bids"];
    }
    if (_json.containsKey("bidsInAuction")) {
      bidsInAuction = _json["bidsInAuction"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("impressionsWon")) {
      impressionsWon = _json["impressionsWon"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bids != null) {
      _json["bids"] = bids;
    }
    if (bidsInAuction != null) {
      _json["bidsInAuction"] = bidsInAuction;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (impressionsWon != null) {
      _json["impressionsWon"] = impressionsWon;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/**
 * The number of impressions for which the corresponding callouts had the
 * specified status.
 */
class CalloutStatusFrequency {
  /**
   * The ID of the callout status.
   * See callout-status-codes.
   */
  core.int calloutStatusId;
  /** The number of impressions associated with the specified status. */
  core.String impressionCount;

  CalloutStatusFrequency();

  CalloutStatusFrequency.fromJson(core.Map _json) {
    if (_json.containsKey("calloutStatusId")) {
      calloutStatusId = _json["calloutStatusId"];
    }
    if (_json.containsKey("impressionCount")) {
      impressionCount = _json["impressionCount"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (calloutStatusId != null) {
      _json["calloutStatusId"] = calloutStatusId;
    }
    if (impressionCount != null) {
      _json["impressionCount"] = impressionCount;
    }
    return _json;
  }
}

/**
 * A client resource represents a client buyer&mdash;an agency,
 * a brand, or an advertiser customer of the sponsor buyer.
 * Users associated with the client buyer have restricted access to
 * the Ad Exchange Marketplace and certain other sections
 * of the Ad Exchange Buyer UI based on the role
 * granted to the client buyer.
 * All fields are required unless otherwise specified.
 */
class Client {
  /**
   * The globally-unique numerical ID of the client.
   * The value of this field is ignored in create and update operations.
   */
  core.String clientAccountId;
  /**
   * Name used to represent this client to publishers.
   * You may have multiple clients that map to the same entity,
   * but for each client the combination of `clientName` and entity
   * must be unique.
   * You can specify this field as empty.
   */
  core.String clientName;
  /**
   * Numerical identifier of the client entity.
   * The entity can be an advertiser, a brand, or an agency.
   * This identifier is unique among all the entities with the same type.
   *
   * A list of all known advertisers with their identifiers is available in the
   * [advertisers.txt](https://storage.googleapis.com/adx-rtb-dictionaries/advertisers.txt)
   * file.
   *
   * A list of all known brands with their identifiers is available in the
   * [brands.txt](https://storage.googleapis.com/adx-rtb-dictionaries/brands.txt)
   * file.
   *
   * A list of all known agencies with their identifiers is available in the
   * [agencies.txt](https://storage.googleapis.com/adx-rtb-dictionaries/agencies.txt)
   * file.
   */
  core.String entityId;
  /**
   * The name of the entity. This field is automatically fetched based on
   * the type and ID.
   * The value of this field is ignored in create and update operations.
   */
  core.String entityName;
  /**
   * The type of the client entity: `ADVERTISER`, `BRAND`, or `AGENCY`.
   * Possible string values are:
   * - "ENTITY_TYPE_UNSPECIFIED" : A placeholder for an undefined client entity
   * type. Should not be used.
   * - "ADVERTISER" : An advertiser.
   * - "BRAND" : A brand.
   * - "AGENCY" : An advertising agency.
   */
  core.String entityType;
  /**
   * The role which is assigned to the client buyer. Each role implies a set of
   * permissions granted to the client. Must be one of `CLIENT_DEAL_VIEWER`,
   * `CLIENT_DEAL_NEGOTIATOR`, or `CLIENT_DEAL_APPROVER`.
   * Possible string values are:
   * - "CLIENT_ROLE_UNSPECIFIED" : A placeholder for an undefined client role.
   * - "CLIENT_DEAL_VIEWER" : Users associated with this client can see
   * publisher deal offers
   * in the Marketplace.
   * They can neither negotiate proposals nor approve deals.
   * If this client is visible to publishers, they can send deal proposals
   * to this client.
   * - "CLIENT_DEAL_NEGOTIATOR" : Users associated with this client can respond
   * to deal proposals
   * sent to them by publishers. They can also initiate deal proposals
   * of their own.
   * - "CLIENT_DEAL_APPROVER" : Users associated with this client can approve
   * eligible deals
   * on your behalf. Some deals may still explicitly require publisher
   * finalization. If this role is not selected, the sponsor buyer
   * will need to manually approve each of their deals.
   */
  core.String role;
  /**
   * The status of the client buyer.
   * Possible string values are:
   * - "CLIENT_STATUS_UNSPECIFIED" : A placeholder for an undefined client
   * status.
   * - "DISABLED" : A client that is currently disabled.
   * - "ACTIVE" : A client that is currently active.
   */
  core.String status;
  /** Whether the client buyer will be visible to sellers. */
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

  core.Map toJson() {
    var _json = new core.Map();
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

/**
 * A client user is created under a client buyer and has restricted access to
 * the Ad Exchange Marketplace and certain other sections
 * of the Ad Exchange Buyer UI based on the role
 * granted to the associated client buyer.
 *
 * The only way a new client user can be created is via accepting an
 * email invitation
 * (see the
 * accounts.clients.invitations.create
 * method).
 *
 * All fields are required unless otherwise specified.
 */
class ClientUser {
  /**
   * Numerical account ID of the client buyer
   * with which the user is associated; the
   * buyer must be a client of the current sponsor buyer.
   * The value of this field is ignored in an update operation.
   */
  core.String clientAccountId;
  /**
   * User's email address. The value of this field
   * is ignored in an update operation.
   */
  core.String email;
  /**
   * The status of the client user.
   * Possible string values are:
   * - "USER_STATUS_UNSPECIFIED" : A placeholder for an undefined user status.
   * - "PENDING" : A user who was already created but hasn't accepted the
   * invitation yet.
   * - "ACTIVE" : A user that is currently active.
   * - "DISABLED" : A user that is currently disabled.
   */
  core.String status;
  /**
   * The unique numerical ID of the client user
   * that has accepted an invitation.
   * The value of this field is ignored in an update operation.
   */
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

  core.Map toJson() {
    var _json = new core.Map();
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

/**
 * An invitation for a new client user to get access to the AdExchange Buyer UI.
 *
 * All fields are required unless otherwise specified.
 */
class ClientUserInvitation {
  /**
   * Numerical account ID of the client buyer
   * that the invited user is associated with.
   * The value of this field is ignored in create operations.
   */
  core.String clientAccountId;
  /**
   * The email address to which the invitation is sent. Email
   * addresses should be unique among all client users under each sponsor
   * buyer.
   */
  core.String email;
  /**
   * The unique numerical ID of the invitation that is sent to the user.
   * The value of this field is ignored in create operations.
   */
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

  core.Map toJson() {
    var _json = new core.Map();
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

/** The number of bids for a given creative. */
class CreativeFrequency {
  /** The number of bids associated with the specified creative. */
  core.String bidCount;
  /** The ID of the creative. */
  core.String creativeId;

  CreativeFrequency();

  CreativeFrequency.fromJson(core.Map _json) {
    if (_json.containsKey("bidCount")) {
      bidCount = _json["bidCount"];
    }
    if (_json.containsKey("creativeId")) {
      creativeId = _json["creativeId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bidCount != null) {
      _json["bidCount"] = bidCount;
    }
    if (creativeId != null) {
      _json["creativeId"] = creativeId;
    }
    return _json;
  }
}

/** The number of bids with the specified creative status. */
class CreativeStatusFrequency {
  /** The number of bids associated with the specified status. */
  core.String bidCount;
  /**
   * The ID of the creative status.
   * See creative-status-codes.
   */
  core.int creativeStatusId;

  CreativeStatusFrequency();

  CreativeStatusFrequency.fromJson(core.Map _json) {
    if (_json.containsKey("bidCount")) {
      bidCount = _json["bidCount"];
    }
    if (_json.containsKey("creativeStatusId")) {
      creativeStatusId = _json["creativeStatusId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bidCount != null) {
      _json["bidCount"] = bidCount;
    }
    if (creativeStatusId != null) {
      _json["creativeStatusId"] = creativeStatusId;
    }
    return _json;
  }
}

/**
 * Represents a whole calendar date, e.g. date of birth. The time of day and
 * time zone are either specified elsewhere or are not significant. The date
 * is relative to the Proleptic Gregorian Calendar. The day may be 0 to
 * represent a year and month where the day is not significant, e.g. credit card
 * expiration date. The year may be 0 to represent a month and day independent
 * of year, e.g. anniversary date. Related types are google.type.TimeOfDay
 * and `google.protobuf.Timestamp`.
 */
class Date {
  /**
   * Day of month. Must be from 1 to 31 and valid for the year and month, or 0
   * if specifying a year/month where the day is not significant.
   */
  core.int day;
  /** Month of year. Must be from 1 to 12. */
  core.int month;
  /**
   * Year of date. Must be from 1 to 9999, or 0 if specifying a date without
   * a year.
   */
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

  core.Map toJson() {
    var _json = new core.Map();
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

/**
 * The number of bids, among those with a given creative status, that had the
 * specified detail.
 */
class DetailFrequency {
  /** The number of bids associated with the specified detail. */
  core.String bidCount;
  /**
   * The ID of the detail. The associated value can be looked up in the
   * dictionary file corresponding to the DetailType in the response message.
   */
  core.int detailId;

  DetailFrequency();

  DetailFrequency.fromJson(core.Map _json) {
    if (_json.containsKey("bidCount")) {
      bidCount = _json["bidCount"];
    }
    if (_json.containsKey("detailId")) {
      detailId = _json["detailId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bidCount != null) {
      _json["bidCount"] = bidCount;
    }
    if (detailId != null) {
      _json["detailId"] = detailId;
    }
    return _json;
  }
}

/**
 * A generic empty message that you can re-use to avoid defining duplicated
 * empty messages in your APIs. A typical example is to use it as the request
 * or the response type of an API method. For instance:
 *
 *     service Foo {
 *       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
 *     }
 *
 * The JSON representation for `Empty` is empty JSON object `{}`.
 */
class Empty {

  Empty();

  Empty.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/**
 * A set of filters that is applied to a request for data from the
 * RtbTroubleshootingService. Within a filter set, an AND operation is performed
 * across the filters represented by each field. An OR operation is performed
 * across the filters represented by the multiple values of a repeated field.
 * E.g.
 * "format=VIDEO AND deal_id=12 AND (web_property_id=34 OR web_property_id=56)"
 */
class FilterSet {
  /** An absolute date range, defined by a start date and an end date. */
  AbsoluteDateRange absoluteDateRange;
  /** The ID of the buyer account on which to filter; optional. */
  core.String buyerAccountId;
  /** The ID of the creative on which to filter; optional. */
  core.String creativeId;
  /** The ID of the deal on which to filter; optional. */
  core.String dealId;
  /**
   * The ID of the filter set; unique within the account of the filter set
   * owner.
   * The value of this field is ignored in create operations.
   */
  core.int filterSetId;
  /**
   * The account ID of the buyer who owns this filter set.
   * The value of this field is ignored in create operations.
   */
  core.String filterSetOwnerAccountId;
  /**
   * The format on which to filter; optional.
   * Possible string values are:
   * - "FORMAT_UNSPECIFIED" : A placeholder for an undefined format; indicates
   * that no format filter
   * will be applied.
   * - "DISPLAY" : The ad impression is display format (i.e. an image).
   * - "VIDEO" : The ad impression is video format.
   */
  core.String format;
  /**
   * The platform on which to filter; optional.
   * Possible string values are:
   * - "PLATFORM_UNSPECIFIED" : A placeholder for an undefined platform;
   * indicates that no platform
   * filter will be applied.
   * - "DESKTOP" : The ad impression appears on a desktop.
   * - "TABLET_WEB" : The ad impression appears on a tablet, on the web.
   * - "TABLET_APP" : The ad impression appears on a tablet, in an app.
   * - "MOBILE_WEB" : The ad impression appears on a mobile device, on the web.
   * - "MOBILE_APP" : The ad impression appears on a mobile device, in an app.
   */
  core.String platform;
  /** A relative date range, defined by an offset from today and a duration. */
  RelativeDateRange relativeDateRange;
  /**
   * The list of IDs of web properties on which to filter; may be empty.
   * The filters represented by multiple web property IDs are ORed together
   * (i.e. if non-empty, results must match any one of the web properties).
   */
  core.List<core.String> webPropertyIds;

  FilterSet();

  FilterSet.fromJson(core.Map _json) {
    if (_json.containsKey("absoluteDateRange")) {
      absoluteDateRange = new AbsoluteDateRange.fromJson(_json["absoluteDateRange"]);
    }
    if (_json.containsKey("buyerAccountId")) {
      buyerAccountId = _json["buyerAccountId"];
    }
    if (_json.containsKey("creativeId")) {
      creativeId = _json["creativeId"];
    }
    if (_json.containsKey("dealId")) {
      dealId = _json["dealId"];
    }
    if (_json.containsKey("filterSetId")) {
      filterSetId = _json["filterSetId"];
    }
    if (_json.containsKey("filterSetOwnerAccountId")) {
      filterSetOwnerAccountId = _json["filterSetOwnerAccountId"];
    }
    if (_json.containsKey("format")) {
      format = _json["format"];
    }
    if (_json.containsKey("platform")) {
      platform = _json["platform"];
    }
    if (_json.containsKey("relativeDateRange")) {
      relativeDateRange = new RelativeDateRange.fromJson(_json["relativeDateRange"]);
    }
    if (_json.containsKey("webPropertyIds")) {
      webPropertyIds = _json["webPropertyIds"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (absoluteDateRange != null) {
      _json["absoluteDateRange"] = (absoluteDateRange).toJson();
    }
    if (buyerAccountId != null) {
      _json["buyerAccountId"] = buyerAccountId;
    }
    if (creativeId != null) {
      _json["creativeId"] = creativeId;
    }
    if (dealId != null) {
      _json["dealId"] = dealId;
    }
    if (filterSetId != null) {
      _json["filterSetId"] = filterSetId;
    }
    if (filterSetOwnerAccountId != null) {
      _json["filterSetOwnerAccountId"] = filterSetOwnerAccountId;
    }
    if (format != null) {
      _json["format"] = format;
    }
    if (platform != null) {
      _json["platform"] = platform;
    }
    if (relativeDateRange != null) {
      _json["relativeDateRange"] = (relativeDateRange).toJson();
    }
    if (webPropertyIds != null) {
      _json["webPropertyIds"] = webPropertyIds;
    }
    return _json;
  }
}

/** The number of impressions filtered due to the specified status. */
class FilteredImpressionStatusFrequency {
  /** The number of impressions associated with the specified status. */
  core.String impressionCount;
  /**
   * The status for which impressions were filtered.
   * Possible string values are:
   * - "STATUS_UNSPECIFIED" : A placeholder for an undefined status.
   * This value will never be returned in responses.
   * - "PRETARGETING_CONFIGURATIONS" : The impression was filtered because it
   * did not match the buyer's
   * pretargeting configurations.
   */
  core.String status;

  FilteredImpressionStatusFrequency();

  FilteredImpressionStatusFrequency.fromJson(core.Map _json) {
    if (_json.containsKey("impressionCount")) {
      impressionCount = _json["impressionCount"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (impressionCount != null) {
      _json["impressionCount"] = impressionCount;
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}

/**
 * The set of metrics that are measured in numbers of impressions, representing
 * how many impressions were considered eligible at each stage of the bidding
 * funnel.
 */
class ImpressionMetrics {
  /**
   * The number of impressions available to the buyer on Ad Exchange.
   * In some cases this value may be unavailable.
   */
  core.String availableImpressions;
  /**
   * The number of impressions for which Ad Exchange sent the buyer a bid
   * request.
   */
  core.String bidRequests;
  /**
   * The timestamp marking the end of the range (exclusive) for which data is
   * included.
   */
  core.String endTime;
  /**
   * The number of impressions that match the buyer's inventory pretargeting.
   */
  core.String inventoryMatches;
  /**
   * The number of impressions for which Ad Exchange received a response from
   * the buyer that contained at least one applicable bid.
   */
  core.String responsesWithBids;
  /**
   * The timestamp marking the start of the range (inclusive) for which data is
   * included.
   */
  core.String startTime;
  /**
   * The number of impressions for which the buyer successfully sent a response
   * to Ad Exchange.
   */
  core.String successfulResponses;

  ImpressionMetrics();

  ImpressionMetrics.fromJson(core.Map _json) {
    if (_json.containsKey("availableImpressions")) {
      availableImpressions = _json["availableImpressions"];
    }
    if (_json.containsKey("bidRequests")) {
      bidRequests = _json["bidRequests"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("inventoryMatches")) {
      inventoryMatches = _json["inventoryMatches"];
    }
    if (_json.containsKey("responsesWithBids")) {
      responsesWithBids = _json["responsesWithBids"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("successfulResponses")) {
      successfulResponses = _json["successfulResponses"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (availableImpressions != null) {
      _json["availableImpressions"] = availableImpressions;
    }
    if (bidRequests != null) {
      _json["bidRequests"] = bidRequests;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (inventoryMatches != null) {
      _json["inventoryMatches"] = inventoryMatches;
    }
    if (responsesWithBids != null) {
      _json["responsesWithBids"] = responsesWithBids;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (successfulResponses != null) {
      _json["successfulResponses"] = successfulResponses;
    }
    return _json;
  }
}

class ListClientUserInvitationsResponse {
  /** The returned list of client users. */
  core.List<ClientUserInvitation> invitations;
  /**
   * A token to retrieve the next page of results.
   * Pass this value in the
   * ListClientUserInvitationsRequest.pageToken
   * field in the subsequent call to the
   * clients.invitations.list
   * method to retrieve the next
   * page of results.
   */
  core.String nextPageToken;

  ListClientUserInvitationsResponse();

  ListClientUserInvitationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("invitations")) {
      invitations = _json["invitations"].map((value) => new ClientUserInvitation.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (invitations != null) {
      _json["invitations"] = invitations.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

class ListClientUsersResponse {
  /**
   * A token to retrieve the next page of results.
   * Pass this value in the
   * ListClientUsersRequest.pageToken
   * field in the subsequent call to the
   * clients.invitations.list
   * method to retrieve the next
   * page of results.
   */
  core.String nextPageToken;
  /** The returned list of client users. */
  core.List<ClientUser> users;

  ListClientUsersResponse();

  ListClientUsersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("users")) {
      users = _json["users"].map((value) => new ClientUser.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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
  /** The returned list of clients. */
  core.List<Client> clients;
  /**
   * A token to retrieve the next page of results.
   * Pass this value in the
   * ListClientsRequest.pageToken
   * field in the subsequent call to the
   * accounts.clients.list method
   * to retrieve the next page of results.
   */
  core.String nextPageToken;

  ListClientsResponse();

  ListClientsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("clients")) {
      clients = _json["clients"].map((value) => new Client.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (clients != null) {
      _json["clients"] = clients.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/**
 * Response message for listing all details associated with a given filtered bid
 * reason and a given creative.
 */
class ListCreativeStatusAndCreativeBreakdownByDetailResponse {
  /**
   * The ID of the creative associated with a bid filtered from the auction.
   */
  core.String creativeId;
  /**
   * The ID of the creative status that identifies the reason the bid was
   * filtered before the auction.
   * See creative-status-codes.
   */
  core.int creativeStatusId;
  /**
   * The type of detail that the detail IDs represent.
   * Possible string values are:
   * - "TYPE_UNSPECIFIED" : A placeholder for an undefined status.
   * This value will never be returned in responses.
   * - "CREATIVE_ATTRIBUTE" : Indicates that the detail ID refers to a creative
   * attribute; see
   * publisher-excludable-creative-attributes.
   * - "VENDOR" : Indicates that the detail ID refers to a vendor; see
   * vendors.
   * - "SENSITIVE_CATEGORY" : Indicates that the detail ID refers to a sensitive
   * category; see
   * ad-sensitive-categories.
   * - "PRODUCT_CATEGORY" : Indicates that the detail ID refers to a product
   * category; see
   * ad-product-categories.
   */
  core.String detailType;
  /**
   * The timestamp marking the end of the range (exclusive) for which data is
   * included.
   */
  core.String endTime;
  /**
   * List of all detail IDs with their associated bid counts.
   * There is a fixed set of details, hence results are not paged.
   */
  core.List<DetailFrequency> frequencies;
  /**
   * The timestamp marking the start of the range (inclusive) for which data is
   * included.
   */
  core.String startTime;

  ListCreativeStatusAndCreativeBreakdownByDetailResponse();

  ListCreativeStatusAndCreativeBreakdownByDetailResponse.fromJson(core.Map _json) {
    if (_json.containsKey("creativeId")) {
      creativeId = _json["creativeId"];
    }
    if (_json.containsKey("creativeStatusId")) {
      creativeStatusId = _json["creativeStatusId"];
    }
    if (_json.containsKey("detailType")) {
      detailType = _json["detailType"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("frequencies")) {
      frequencies = _json["frequencies"].map((value) => new DetailFrequency.fromJson(value)).toList();
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creativeId != null) {
      _json["creativeId"] = creativeId;
    }
    if (creativeStatusId != null) {
      _json["creativeStatusId"] = creativeStatusId;
    }
    if (detailType != null) {
      _json["detailType"] = detailType;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (frequencies != null) {
      _json["frequencies"] = frequencies.map((value) => (value).toJson()).toList();
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/**
 * Response message for listing all creatives associated with a given filtered
 * bid reason.
 */
class ListCreativeStatusBreakdownByCreativeResponse {
  /**
   * The ID of the creative status that identifies the reason the bid was
   * filtered before the auction.
   * See creative-status-codes.
   */
  core.int creativeStatusId;
  /**
   * The timestamp marking the end of the range (exclusive) for which data is
   * included.
   */
  core.String endTime;
  /** List of creative IDs with their associated bid counts. */
  core.List<CreativeFrequency> frequencies;
  /**
   * A token to retrieve the next page of results.
   * Pass this value in the
   * ListCreativeStatusBreakdownByCreativeRequest.pageToken
   * field in the subsequent call to the
   * accounts.filterSets.filteredBids.creatives.list
   * method to retrieve the next page of results.
   */
  core.String nextPageToken;
  /**
   * The timestamp marking the start of the range (inclusive) for which data is
   * included.
   */
  core.String startTime;

  ListCreativeStatusBreakdownByCreativeResponse();

  ListCreativeStatusBreakdownByCreativeResponse.fromJson(core.Map _json) {
    if (_json.containsKey("creativeStatusId")) {
      creativeStatusId = _json["creativeStatusId"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("frequencies")) {
      frequencies = _json["frequencies"].map((value) => new CreativeFrequency.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creativeStatusId != null) {
      _json["creativeStatusId"] = creativeStatusId;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (frequencies != null) {
      _json["frequencies"] = frequencies.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/**
 * Response message for listing all details associated with a given filtered bid
 * reason.
 */
class ListCreativeStatusBreakdownByDetailResponse {
  /**
   * The ID of the creative status that identifies the reason the bid was
   * filtered before the auction.
   * See creative-status-codes.
   */
  core.int creativeStatusId;
  /**
   * The type of detail that the detail IDs represent.
   * Possible string values are:
   * - "TYPE_UNSPECIFIED" : A placeholder for an undefined status.
   * This value will never be returned in responses.
   * - "CREATIVE_ATTRIBUTE" : Indicates that the detail ID refers to a creative
   * attribute; see
   * publisher-excludable-creative-attributes.
   * - "VENDOR" : Indicates that the detail ID refers to a vendor; see
   * vendors.
   * - "SENSITIVE_CATEGORY" : Indicates that the detail ID refers to a sensitive
   * category; see
   * ad-sensitive-categories.
   * - "PRODUCT_CATEGORY" : Indicates that the detail ID refers to a product
   * category; see
   * ad-product-categories.
   */
  core.String detailType;
  /**
   * The timestamp marking the end of the range (exclusive) for which data is
   * included.
   */
  core.String endTime;
  /**
   * List of all detail IDs with their associated bid counts.
   * There is a fixed set of details, hence results are not paged.
   */
  core.List<DetailFrequency> frequencies;
  /**
   * The timestamp marking the start of the range (inclusive) for which data is
   * included.
   */
  core.String startTime;

  ListCreativeStatusBreakdownByDetailResponse();

  ListCreativeStatusBreakdownByDetailResponse.fromJson(core.Map _json) {
    if (_json.containsKey("creativeStatusId")) {
      creativeStatusId = _json["creativeStatusId"];
    }
    if (_json.containsKey("detailType")) {
      detailType = _json["detailType"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("frequencies")) {
      frequencies = _json["frequencies"].map((value) => new DetailFrequency.fromJson(value)).toList();
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creativeStatusId != null) {
      _json["creativeStatusId"] = creativeStatusId;
    }
    if (detailType != null) {
      _json["detailType"] = detailType;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (frequencies != null) {
      _json["frequencies"] = frequencies.map((value) => (value).toJson()).toList();
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/** Response message for listing filter sets. */
class ListFilterSetsResponse {
  /** The filter sets belonging to the buyer. */
  core.List<FilterSet> filterSets;
  /**
   * A token to retrieve the next page of results.
   * Pass this value in the
   * ListFilterSetsRequest.pageToken
   * field in the subsequent call to the
   * accounts.filterSets.list
   * method to retrieve the next page of results.
   */
  core.String nextPageToken;

  ListFilterSetsResponse();

  ListFilterSetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("filterSets")) {
      filterSets = _json["filterSets"].map((value) => new FilterSet.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (filterSets != null) {
      _json["filterSets"] = filterSets.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/**
 * Response message for listing all reasons that bids were filtered from the
 * auction.
 */
class ListFilteredBidsResponse {
  /**
   * The timestamp marking the end of the range (exclusive) for which data is
   * included.
   */
  core.String endTime;
  /**
   * List of all creative status IDs, identifying the reason the bids were
   * filtered from the auction, with their associated bid counts.
   * See creative-status-codes.
   * There is a fixed set of statuses, hence results are not paged.
   */
  core.List<CreativeStatusFrequency> frequencies;
  /**
   * The timestamp marking the start of the range (inclusive) for which data is
   * included.
   */
  core.String startTime;

  ListFilteredBidsResponse();

  ListFilteredBidsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("frequencies")) {
      frequencies = _json["frequencies"].map((value) => new CreativeStatusFrequency.fromJson(value)).toList();
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (frequencies != null) {
      _json["frequencies"] = frequencies.map((value) => (value).toJson()).toList();
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/**
 * Response message for listing all reasons that impressions were filtered (i.e.
 * not considered as an inventory match) for the buyer.
 */
class ListFilteredImpressionsResponse {
  /**
   * The timestamp marking the end of the range (exclusive) for which data is
   * included.
   */
  core.String endTime;
  /**
   * List of all statuses identifying the reason the bid request was filtered,
   * with their associated impression counts.
   * There is a fixed set of statuses, hence results are not paged.
   */
  core.List<FilteredImpressionStatusFrequency> frequencies;
  /**
   * The timestamp marking the start of the range (inclusive) for which data is
   * included.
   */
  core.String startTime;

  ListFilteredImpressionsResponse();

  ListFilteredImpressionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("frequencies")) {
      frequencies = _json["frequencies"].map((value) => new FilteredImpressionStatusFrequency.fromJson(value)).toList();
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (frequencies != null) {
      _json["frequencies"] = frequencies.map((value) => (value).toJson()).toList();
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/**
 * Response message for listing all reasons that bid requests were filtered and
 * not sent to the buyer.
 */
class ListFilteredRequestsResponse {
  /**
   * The timestamp marking the end of the range (exclusive) for which data is
   * included.
   */
  core.String endTime;
  /**
   * List of all callout status IDs, identifying the reason the bid request was
   * filtered, with their associated impression counts.
   * See callout-status-codes.
   * There is a fixed set of statuses, hence results are not paged.
   */
  core.List<CalloutStatusFrequency> frequencies;
  /**
   * The timestamp marking the start of the range (inclusive) for which data is
   * included.
   */
  core.String startTime;

  ListFilteredRequestsResponse();

  ListFilteredRequestsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("frequencies")) {
      frequencies = _json["frequencies"].map((value) => new CalloutStatusFrequency.fromJson(value)).toList();
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (frequencies != null) {
      _json["frequencies"] = frequencies.map((value) => (value).toJson()).toList();
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/** Response message for listing all reasons that bids lost in the auction. */
class ListLosingBidsResponse {
  /**
   * The timestamp marking the end of the range (exclusive) for which data is
   * included.
   */
  core.String endTime;
  /**
   * List of all creative status IDs with their associated bid counts.
   * See creative-status-codes.
   * There is a fixed set of statuses, hence results are not paged.
   */
  core.List<CreativeStatusFrequency> frequencies;
  /**
   * The timestamp marking the start of the range (inclusive) for which data is
   * included.
   */
  core.String startTime;

  ListLosingBidsResponse();

  ListLosingBidsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("frequencies")) {
      frequencies = _json["frequencies"].map((value) => new CreativeStatusFrequency.fromJson(value)).toList();
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (frequencies != null) {
      _json["frequencies"] = frequencies.map((value) => (value).toJson()).toList();
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/**
 * Response message for listing all reasons that bid responses resulted in an
 * error.
 */
class ListResponseErrorsResponse {
  /**
   * The timestamp marking the end of the range (exclusive) for which data is
   * included.
   */
  core.String endTime;
  /**
   * List of all callout status IDs, identifying the error in the bid responses,
   * with their associated impression counts.
   * See callout-status-codes.
   * There is a fixed set of statuses, hence results are not paged.
   */
  core.List<CalloutStatusFrequency> frequencies;
  /**
   * The timestamp marking the start of the range (inclusive) for which data is
   * included.
   */
  core.String startTime;

  ListResponseErrorsResponse();

  ListResponseErrorsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("frequencies")) {
      frequencies = _json["frequencies"].map((value) => new CalloutStatusFrequency.fromJson(value)).toList();
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (frequencies != null) {
      _json["frequencies"] = frequencies.map((value) => (value).toJson()).toList();
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/**
 * Response message for listing all reasons that bid responses were considered
 * to have no applicable bids.
 */
class ListResponsesWithoutBidsResponse {
  /**
   * The timestamp marking the end of the range (exclusive) for which data is
   * included.
   */
  core.String endTime;
  /**
   * List of all statuses with their associated impression counts.
   * There is a fixed set of statuses, hence results are not paged.
   */
  core.List<ResponsesWithoutBidsStatusFrequency> frequencies;
  /**
   * The timestamp marking the start of the range (inclusive) for which data is
   * included.
   */
  core.String startTime;

  ListResponsesWithoutBidsResponse();

  ListResponsesWithoutBidsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("frequencies")) {
      frequencies = _json["frequencies"].map((value) => new ResponsesWithoutBidsStatusFrequency.fromJson(value)).toList();
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (frequencies != null) {
      _json["frequencies"] = frequencies.map((value) => (value).toJson()).toList();
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/**
 * A relative date range, specified by an offset and a duration.
 * The supported range of dates begins 30 days before today and ends today.
 * I.e. the limits for these values are:
 * offset_days >= 0
 * duration_days >= 1
 * offset_days + duration_days <= 30
 */
class RelativeDateRange {
  /**
   * The number of days in the requested date range. E.g. for a range spanning
   * today, 1. For a range spanning the last 7 days, 7.
   */
  core.int durationDays;
  /**
   * The end date of the filter set, specified as the number of days before
   * today. E.g. for a range where the last date is today, 0.
   */
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

  core.Map toJson() {
    var _json = new core.Map();
    if (durationDays != null) {
      _json["durationDays"] = durationDays;
    }
    if (offsetDays != null) {
      _json["offsetDays"] = offsetDays;
    }
    return _json;
  }
}

/**
 * The number of impressions for which the corresponding response had no
 * applicable bids, as described by the specified status.
 */
class ResponsesWithoutBidsStatusFrequency {
  /** The number of impressions associated with the specified status. */
  core.String impressionCount;
  /**
   * The status that caused the bid response to be considered to have no
   * applicable bids.
   * Possible string values are:
   * - "STATUS_UNSPECIFIED" : A placeholder for an undefined status.
   * This value will never be returned in responses.
   * - "RESPONSES_WITHOUT_BIDS" : The response had no bids.
   * - "RESPONSES_WITHOUT_BIDS_FOR_ACCOUNT" : The response had no bids for the
   * specified account, though it may have
   * included bids on behalf of other accounts.
   * - "RESPONSES_WITHOUT_BIDS_FOR_DEAL" : The response had no bids for the
   * specified deal, though it may have
   * included bids on other deals on behalf of the account to which the deal
   * belongs.
   */
  core.String status;

  ResponsesWithoutBidsStatusFrequency();

  ResponsesWithoutBidsStatusFrequency.fromJson(core.Map _json) {
    if (_json.containsKey("impressionCount")) {
      impressionCount = _json["impressionCount"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (impressionCount != null) {
      _json["impressionCount"] = impressionCount;
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}
