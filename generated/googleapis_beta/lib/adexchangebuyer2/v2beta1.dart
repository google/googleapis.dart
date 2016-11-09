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
 * Accesses the latest features for managing Ad Exchange accounts, Real-Time
 * Bidding configurations and auction metrics, and Marketplace programmatic
 * deals.
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
   * `CLIENT_DEAL_NEGOTIATOR` or `CLIENT_DEAL_APPROVER`.
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
 * An invitation for a new client user to get access to the Ad Exchange
 * Buyer UI.
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
