// This is a generated file (see the discoveryapis_generator project).

library googleapis.adexchangebuyer.v1_4;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:crypto/crypto.dart' as crypto;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client adexchangebuyer/v1.4';

/**
 * Accesses your bidding-account information, submits creatives for validation,
 * finds available direct deals, and retrieves performance reports.
 */
class AdexchangebuyerApi {
  /** Manage your Ad Exchange buyer account configuration */
  static const AdexchangeBuyerScope = "https://www.googleapis.com/auth/adexchange.buyer";


  final commons.ApiRequester _requester;

  AccountsResourceApi get accounts => new AccountsResourceApi(_requester);
  BillingInfoResourceApi get billingInfo => new BillingInfoResourceApi(_requester);
  BudgetResourceApi get budget => new BudgetResourceApi(_requester);
  ClientaccessResourceApi get clientaccess => new ClientaccessResourceApi(_requester);
  CreativesResourceApi get creatives => new CreativesResourceApi(_requester);
  DealsResourceApi get deals => new DealsResourceApi(_requester);
  MarketplacedealsResourceApi get marketplacedeals => new MarketplacedealsResourceApi(_requester);
  MarketplacenotesResourceApi get marketplacenotes => new MarketplacenotesResourceApi(_requester);
  MarketplaceoffersResourceApi get marketplaceoffers => new MarketplaceoffersResourceApi(_requester);
  MarketplaceordersResourceApi get marketplaceorders => new MarketplaceordersResourceApi(_requester);
  NegotiationroundsResourceApi get negotiationrounds => new NegotiationroundsResourceApi(_requester);
  NegotiationsResourceApi get negotiations => new NegotiationsResourceApi(_requester);
  OffersResourceApi get offers => new OffersResourceApi(_requester);
  PerformanceReportResourceApi get performanceReport => new PerformanceReportResourceApi(_requester);
  PretargetingConfigResourceApi get pretargetingConfig => new PretargetingConfigResourceApi(_requester);

  AdexchangebuyerApi(http.Client client, {core.String rootUrl: "https://www.googleapis.com/", core.String servicePath: "adexchangebuyer/v1.4/"}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class AccountsResourceApi {
  final commons.ApiRequester _requester;

  AccountsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Gets one account by ID.
   *
   * Request parameters:
   *
   * [id] - The account id
   *
   * Completes with a [Account].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Account> get(core.int id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _url = 'accounts/' + commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Account.fromJson(data));
  }

  /**
   * Retrieves the authenticated user's list of accounts.
   *
   * Request parameters:
   *
   * Completes with a [AccountsList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<AccountsList> list() {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;


    _url = 'accounts';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AccountsList.fromJson(data));
  }

  /**
   * Updates an existing account. This method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The account id
   *
   * Completes with a [Account].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Account> patch(Account request, core.int id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _url = 'accounts/' + commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Account.fromJson(data));
  }

  /**
   * Updates an existing account.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The account id
   *
   * Completes with a [Account].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Account> update(Account request, core.int id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _url = 'accounts/' + commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Account.fromJson(data));
  }

}


class BillingInfoResourceApi {
  final commons.ApiRequester _requester;

  BillingInfoResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Returns the billing information for one account specified by account ID.
   *
   * Request parameters:
   *
   * [accountId] - The account id.
   *
   * Completes with a [BillingInfo].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<BillingInfo> get(core.int accountId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }

    _url = 'billinginfo/' + commons.Escaper.ecapeVariable('$accountId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new BillingInfo.fromJson(data));
  }

  /**
   * Retrieves a list of billing information for all accounts of the
   * authenticated user.
   *
   * Request parameters:
   *
   * Completes with a [BillingInfoList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<BillingInfoList> list() {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;


    _url = 'billinginfo';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new BillingInfoList.fromJson(data));
  }

}


class BudgetResourceApi {
  final commons.ApiRequester _requester;

  BudgetResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Returns the budget information for the adgroup specified by the accountId
   * and billingId.
   *
   * Request parameters:
   *
   * [accountId] - The account id to get the budget information for.
   *
   * [billingId] - The billing id to get the budget information for.
   *
   * Completes with a [Budget].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Budget> get(core.String accountId, core.String billingId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (billingId == null) {
      throw new core.ArgumentError("Parameter billingId is required.");
    }

    _url = 'billinginfo/' + commons.Escaper.ecapeVariable('$accountId') + '/' + commons.Escaper.ecapeVariable('$billingId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Budget.fromJson(data));
  }

  /**
   * Updates the budget amount for the budget of the adgroup specified by the
   * accountId and billingId, with the budget amount in the request. This method
   * supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - The account id associated with the budget being updated.
   *
   * [billingId] - The billing id associated with the budget being updated.
   *
   * Completes with a [Budget].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Budget> patch(Budget request, core.String accountId, core.String billingId) {
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
    if (billingId == null) {
      throw new core.ArgumentError("Parameter billingId is required.");
    }

    _url = 'billinginfo/' + commons.Escaper.ecapeVariable('$accountId') + '/' + commons.Escaper.ecapeVariable('$billingId');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Budget.fromJson(data));
  }

  /**
   * Updates the budget amount for the budget of the adgroup specified by the
   * accountId and billingId, with the budget amount in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - The account id associated with the budget being updated.
   *
   * [billingId] - The billing id associated with the budget being updated.
   *
   * Completes with a [Budget].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Budget> update(Budget request, core.String accountId, core.String billingId) {
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
    if (billingId == null) {
      throw new core.ArgumentError("Parameter billingId is required.");
    }

    _url = 'billinginfo/' + commons.Escaper.ecapeVariable('$accountId') + '/' + commons.Escaper.ecapeVariable('$billingId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Budget.fromJson(data));
  }

}


class ClientaccessResourceApi {
  final commons.ApiRequester _requester;

  ClientaccessResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Request parameters:
   *
   * [clientAccountId] - null
   *
   * [sponsorAccountId] - null
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future delete(core.String clientAccountId, core.int sponsorAccountId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (clientAccountId == null) {
      throw new core.ArgumentError("Parameter clientAccountId is required.");
    }
    if (sponsorAccountId == null) {
      throw new core.ArgumentError("Parameter sponsorAccountId is required.");
    }
    _queryParams["sponsorAccountId"] = ["${sponsorAccountId}"];

    _downloadOptions = null;

    _url = 'clientAccess/' + commons.Escaper.ecapeVariable('$clientAccountId');

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
   * Request parameters:
   *
   * [clientAccountId] - null
   *
   * [sponsorAccountId] - null
   *
   * Completes with a [ClientAccessCapabilities].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ClientAccessCapabilities> get(core.String clientAccountId, core.int sponsorAccountId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (clientAccountId == null) {
      throw new core.ArgumentError("Parameter clientAccountId is required.");
    }
    if (sponsorAccountId == null) {
      throw new core.ArgumentError("Parameter sponsorAccountId is required.");
    }
    _queryParams["sponsorAccountId"] = ["${sponsorAccountId}"];

    _url = 'clientAccess/' + commons.Escaper.ecapeVariable('$clientAccountId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ClientAccessCapabilities.fromJson(data));
  }

  /**
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [clientAccountId] - null
   *
   * [sponsorAccountId] - null
   *
   * Completes with a [ClientAccessCapabilities].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ClientAccessCapabilities> insert(ClientAccessCapabilities request, {core.String clientAccountId, core.int sponsorAccountId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (clientAccountId != null) {
      _queryParams["clientAccountId"] = [clientAccountId];
    }
    if (sponsorAccountId != null) {
      _queryParams["sponsorAccountId"] = ["${sponsorAccountId}"];
    }

    _url = 'clientAccess';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ClientAccessCapabilities.fromJson(data));
  }

  /**
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [ListClientAccessCapabilitiesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListClientAccessCapabilitiesResponse> list(ListClientAccessCapabilitiesRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'clientAccess';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListClientAccessCapabilitiesResponse.fromJson(data));
  }

  /**
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [clientAccountId] - null
   *
   * [sponsorAccountId] - null
   *
   * Completes with a [ClientAccessCapabilities].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ClientAccessCapabilities> patch(ClientAccessCapabilities request, core.String clientAccountId, core.int sponsorAccountId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (clientAccountId == null) {
      throw new core.ArgumentError("Parameter clientAccountId is required.");
    }
    if (sponsorAccountId == null) {
      throw new core.ArgumentError("Parameter sponsorAccountId is required.");
    }
    _queryParams["sponsorAccountId"] = ["${sponsorAccountId}"];

    _url = 'clientAccess/' + commons.Escaper.ecapeVariable('$clientAccountId');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ClientAccessCapabilities.fromJson(data));
  }

  /**
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [clientAccountId] - null
   *
   * [sponsorAccountId] - null
   *
   * Completes with a [ClientAccessCapabilities].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ClientAccessCapabilities> update(ClientAccessCapabilities request, core.String clientAccountId, core.int sponsorAccountId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (clientAccountId == null) {
      throw new core.ArgumentError("Parameter clientAccountId is required.");
    }
    if (sponsorAccountId == null) {
      throw new core.ArgumentError("Parameter sponsorAccountId is required.");
    }
    _queryParams["sponsorAccountId"] = ["${sponsorAccountId}"];

    _url = 'clientAccess/' + commons.Escaper.ecapeVariable('$clientAccountId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ClientAccessCapabilities.fromJson(data));
  }

}


class CreativesResourceApi {
  final commons.ApiRequester _requester;

  CreativesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Gets the status for a single creative. A creative will be available 30-40
   * minutes after submission.
   *
   * Request parameters:
   *
   * [accountId] - The id for the account that will serve this creative.
   *
   * [buyerCreativeId] - The buyer-specific id for this creative.
   *
   * Completes with a [Creative].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Creative> get(core.int accountId, core.String buyerCreativeId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (buyerCreativeId == null) {
      throw new core.ArgumentError("Parameter buyerCreativeId is required.");
    }

    _url = 'creatives/' + commons.Escaper.ecapeVariable('$accountId') + '/' + commons.Escaper.ecapeVariable('$buyerCreativeId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Creative.fromJson(data));
  }

  /**
   * Submit a new creative.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [Creative].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Creative> insert(Creative request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'creatives';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Creative.fromJson(data));
  }

  /**
   * Retrieves a list of the authenticated user's active creatives. A creative
   * will be available 30-40 minutes after submission.
   *
   * Request parameters:
   *
   * [accountId] - When specified, only creatives for the given account ids are
   * returned.
   *
   * [buyerCreativeId] - When specified, only creatives for the given buyer
   * creative ids are returned.
   *
   * [dealsStatusFilter] - When specified, only creatives having the given
   * direct deals status are returned.
   * Possible string values are:
   * - "approved" : Creatives which have been approved for serving on direct
   * deals.
   * - "conditionally_approved" : Creatives which have been conditionally
   * approved for serving on direct deals.
   * - "disapproved" : Creatives which have been disapproved for serving on
   * direct deals.
   * - "not_checked" : Creatives whose direct deals status is not yet checked.
   *
   * [maxResults] - Maximum number of entries returned on one result page. If
   * not set, the default is 100. Optional.
   * Value must be between "1" and "1000".
   *
   * [openAuctionStatusFilter] - When specified, only creatives having the given
   * open auction status are returned.
   * Possible string values are:
   * - "approved" : Creatives which have been approved for serving on the open
   * auction.
   * - "conditionally_approved" : Creatives which have been conditionally
   * approved for serving on the open auction.
   * - "disapproved" : Creatives which have been disapproved for serving on the
   * open auction.
   * - "not_checked" : Creatives whose open auction status is not yet checked.
   *
   * [pageToken] - A continuation token, used to page through ad clients. To
   * retrieve the next page, set this parameter to the value of "nextPageToken"
   * from the previous response. Optional.
   *
   * Completes with a [CreativesList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<CreativesList> list({core.List<core.int> accountId, core.List<core.String> buyerCreativeId, core.String dealsStatusFilter, core.int maxResults, core.String openAuctionStatusFilter, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId != null) {
      _queryParams["accountId"] = accountId.map((item) => "${item}").toList();
    }
    if (buyerCreativeId != null) {
      _queryParams["buyerCreativeId"] = buyerCreativeId;
    }
    if (dealsStatusFilter != null) {
      _queryParams["dealsStatusFilter"] = [dealsStatusFilter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (openAuctionStatusFilter != null) {
      _queryParams["openAuctionStatusFilter"] = [openAuctionStatusFilter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'creatives';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CreativesList.fromJson(data));
  }

}


class DealsResourceApi {
  final commons.ApiRequester _requester;

  DealsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Gets the requested deal.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [dealId] - null
   *
   * Completes with a [NegotiationDto].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<NegotiationDto> get(GetFinalizedNegotiationByExternalDealIdRequest request, core.String dealId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (dealId == null) {
      throw new core.ArgumentError("Parameter dealId is required.");
    }

    _url = 'deals/' + commons.Escaper.ecapeVariable('$dealId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new NegotiationDto.fromJson(data));
  }

}


class MarketplacedealsResourceApi {
  final commons.ApiRequester _requester;

  MarketplacedealsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Delete the specified deals from the order
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [orderId] - The orderId to delete deals from.
   *
   * Completes with a [DeleteOrderDealsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<DeleteOrderDealsResponse> delete(DeleteOrderDealsRequest request, core.String orderId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (orderId == null) {
      throw new core.ArgumentError("Parameter orderId is required.");
    }

    _url = 'marketplaceOrders/' + commons.Escaper.ecapeVariable('$orderId') + '/deals/delete';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DeleteOrderDealsResponse.fromJson(data));
  }

  /**
   * Add new deals for the specified order
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [orderId] - OrderId for which deals need to be added.
   *
   * Completes with a [AddOrderDealsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<AddOrderDealsResponse> insert(AddOrderDealsRequest request, core.String orderId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (orderId == null) {
      throw new core.ArgumentError("Parameter orderId is required.");
    }

    _url = 'marketplaceOrders/' + commons.Escaper.ecapeVariable('$orderId') + '/deals/insert';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AddOrderDealsResponse.fromJson(data));
  }

  /**
   * List all the deals for a given order
   *
   * Request parameters:
   *
   * [orderId] - The orderId to get deals for.
   *
   * Completes with a [GetOrderDealsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<GetOrderDealsResponse> list(core.String orderId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (orderId == null) {
      throw new core.ArgumentError("Parameter orderId is required.");
    }

    _url = 'marketplaceOrders/' + commons.Escaper.ecapeVariable('$orderId') + '/deals';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new GetOrderDealsResponse.fromJson(data));
  }

  /**
   * Replaces all the deals in the order with the passed in deals
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [orderId] - The orderId to edit deals on.
   *
   * Completes with a [EditAllOrderDealsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<EditAllOrderDealsResponse> update(EditAllOrderDealsRequest request, core.String orderId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (orderId == null) {
      throw new core.ArgumentError("Parameter orderId is required.");
    }

    _url = 'marketplaceOrders/' + commons.Escaper.ecapeVariable('$orderId') + '/deals/update';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new EditAllOrderDealsResponse.fromJson(data));
  }

}


class MarketplacenotesResourceApi {
  final commons.ApiRequester _requester;

  MarketplacenotesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Add notes to the order
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [orderId] - The orderId to add notes for.
   *
   * Completes with a [AddOrderNotesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<AddOrderNotesResponse> insert(AddOrderNotesRequest request, core.String orderId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (orderId == null) {
      throw new core.ArgumentError("Parameter orderId is required.");
    }

    _url = 'marketplaceOrders/' + commons.Escaper.ecapeVariable('$orderId') + '/notes/insert';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AddOrderNotesResponse.fromJson(data));
  }

  /**
   * Get all the notes associated with an order
   *
   * Request parameters:
   *
   * [orderId] - The orderId to get notes for.
   *
   * Completes with a [GetOrderNotesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<GetOrderNotesResponse> list(core.String orderId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (orderId == null) {
      throw new core.ArgumentError("Parameter orderId is required.");
    }

    _url = 'marketplaceOrders/' + commons.Escaper.ecapeVariable('$orderId') + '/notes';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new GetOrderNotesResponse.fromJson(data));
  }

}


class MarketplaceoffersResourceApi {
  final commons.ApiRequester _requester;

  MarketplaceoffersResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Gets the requested negotiation.
   *
   * Request parameters:
   *
   * [offerId] - The offerId for the offer to get the head revision for.
   *
   * Completes with a [MarketplaceOffer].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<MarketplaceOffer> get(core.String offerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (offerId == null) {
      throw new core.ArgumentError("Parameter offerId is required.");
    }

    _url = 'marketplaceOffers/' + commons.Escaper.ecapeVariable('$offerId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new MarketplaceOffer.fromJson(data));
  }

  /**
   * Gets the requested negotiation.
   *
   * Request parameters:
   *
   * [pqlQuery] - The pql query used to query for offers.
   *
   * Completes with a [GetOffersResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<GetOffersResponse> search({core.String pqlQuery}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (pqlQuery != null) {
      _queryParams["pqlQuery"] = [pqlQuery];
    }

    _url = 'marketplaceOffers/search';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new GetOffersResponse.fromJson(data));
  }

}


class MarketplaceordersResourceApi {
  final commons.ApiRequester _requester;

  MarketplaceordersResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Get an order given its id
   *
   * Request parameters:
   *
   * [orderId] - Id of the order to retrieve.
   *
   * Completes with a [MarketplaceOrder].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<MarketplaceOrder> get(core.String orderId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (orderId == null) {
      throw new core.ArgumentError("Parameter orderId is required.");
    }

    _url = 'marketplaceOrders/' + commons.Escaper.ecapeVariable('$orderId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new MarketplaceOrder.fromJson(data));
  }

  /**
   * Create the given list of orders
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [CreateOrdersResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<CreateOrdersResponse> insert(CreateOrdersRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'marketplaceOrders/insert';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CreateOrdersResponse.fromJson(data));
  }

  /**
   * Update the given order. This method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [orderId] - The order id to update.
   *
   * [revisionNumber] - The last known revision number to update. If the head
   * revision in the marketplace database has since changed, an error will be
   * thrown. The caller should then fetch the lastest order at head revision and
   * retry the update at that revision.
   *
   * [updateAction] - The proposed action to take on the order.
   * Possible string values are:
   * - "accept"
   * - "cancel"
   * - "propose"
   * - "unknownAction"
   * - "updateFinalized"
   *
   * Completes with a [MarketplaceOrder].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<MarketplaceOrder> patch(MarketplaceOrder request, core.String orderId, core.String revisionNumber, core.String updateAction) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (orderId == null) {
      throw new core.ArgumentError("Parameter orderId is required.");
    }
    if (revisionNumber == null) {
      throw new core.ArgumentError("Parameter revisionNumber is required.");
    }
    if (updateAction == null) {
      throw new core.ArgumentError("Parameter updateAction is required.");
    }

    _url = 'marketplaceOrders/' + commons.Escaper.ecapeVariable('$orderId') + '/' + commons.Escaper.ecapeVariable('$revisionNumber') + '/' + commons.Escaper.ecapeVariable('$updateAction');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new MarketplaceOrder.fromJson(data));
  }

  /**
   * Search for orders using pql query
   *
   * Request parameters:
   *
   * [pqlQuery] - Query string to retrieve specific orders.
   *
   * Completes with a [GetOrdersResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<GetOrdersResponse> search({core.String pqlQuery}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (pqlQuery != null) {
      _queryParams["pqlQuery"] = [pqlQuery];
    }

    _url = 'marketplaceOrders/search';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new GetOrdersResponse.fromJson(data));
  }

  /**
   * Update the given order
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [orderId] - The order id to update.
   *
   * [revisionNumber] - The last known revision number to update. If the head
   * revision in the marketplace database has since changed, an error will be
   * thrown. The caller should then fetch the lastest order at head revision and
   * retry the update at that revision.
   *
   * [updateAction] - The proposed action to take on the order.
   * Possible string values are:
   * - "accept"
   * - "cancel"
   * - "propose"
   * - "unknownAction"
   * - "updateFinalized"
   *
   * Completes with a [MarketplaceOrder].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<MarketplaceOrder> update(MarketplaceOrder request, core.String orderId, core.String revisionNumber, core.String updateAction) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (orderId == null) {
      throw new core.ArgumentError("Parameter orderId is required.");
    }
    if (revisionNumber == null) {
      throw new core.ArgumentError("Parameter revisionNumber is required.");
    }
    if (updateAction == null) {
      throw new core.ArgumentError("Parameter updateAction is required.");
    }

    _url = 'marketplaceOrders/' + commons.Escaper.ecapeVariable('$orderId') + '/' + commons.Escaper.ecapeVariable('$revisionNumber') + '/' + commons.Escaper.ecapeVariable('$updateAction');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new MarketplaceOrder.fromJson(data));
  }

}


class NegotiationroundsResourceApi {
  final commons.ApiRequester _requester;

  NegotiationroundsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Adds the requested negotiationRound to the requested negotiation.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [negotiationId] - null
   *
   * Completes with a [NegotiationRoundDto].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<NegotiationRoundDto> insert(NegotiationRoundDto request, core.String negotiationId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (negotiationId == null) {
      throw new core.ArgumentError("Parameter negotiationId is required.");
    }

    _url = 'negotiations/' + commons.Escaper.ecapeVariable('$negotiationId') + '/negotiationrounds';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new NegotiationRoundDto.fromJson(data));
  }

}


class NegotiationsResourceApi {
  final commons.ApiRequester _requester;

  NegotiationsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Gets the requested negotiation.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [negotiationId] - null
   *
   * Completes with a [NegotiationDto].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<NegotiationDto> get(GetNegotiationByIdRequest request, core.String negotiationId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (negotiationId == null) {
      throw new core.ArgumentError("Parameter negotiationId is required.");
    }

    _url = 'negotiations/' + commons.Escaper.ecapeVariable('$negotiationId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new NegotiationDto.fromJson(data));
  }

  /**
   * Creates or updates the requested negotiation.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [NegotiationDto].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<NegotiationDto> insert(NegotiationDto request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'negotiations';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new NegotiationDto.fromJson(data));
  }

  /**
   * Lists all negotiations the authenticated user has access to.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [GetNegotiationsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<GetNegotiationsResponse> list(GetNegotiationsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'negotiations';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new GetNegotiationsResponse.fromJson(data));
  }

}


class OffersResourceApi {
  final commons.ApiRequester _requester;

  OffersResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Gets the requested offer.
   *
   * Request parameters:
   *
   * [offerId] - null
   *
   * Completes with a [OfferDto].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<OfferDto> get(core.String offerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (offerId == null) {
      throw new core.ArgumentError("Parameter offerId is required.");
    }

    _url = 'offers/' + commons.Escaper.ecapeVariable('$offerId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new OfferDto.fromJson(data));
  }

  /**
   * Creates or updates the requested offer.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [OfferDto].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<OfferDto> insert(OfferDto request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'offers';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new OfferDto.fromJson(data));
  }

  /**
   * Lists all offers the authenticated user has access to.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [ListOffersResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListOffersResponse> list(ListOffersRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'offers';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOffersResponse.fromJson(data));
  }

}


class PerformanceReportResourceApi {
  final commons.ApiRequester _requester;

  PerformanceReportResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the authenticated user's list of performance metrics.
   *
   * Request parameters:
   *
   * [accountId] - The account id to get the reports.
   *
   * [endDateTime] - The end time of the report in ISO 8601 timestamp format
   * using UTC.
   *
   * [startDateTime] - The start time of the report in ISO 8601 timestamp format
   * using UTC.
   *
   * [maxResults] - Maximum number of entries returned on one result page. If
   * not set, the default is 100. Optional.
   * Value must be between "1" and "1000".
   *
   * [pageToken] - A continuation token, used to page through performance
   * reports. To retrieve the next page, set this parameter to the value of
   * "nextPageToken" from the previous response. Optional.
   *
   * Completes with a [PerformanceReportList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<PerformanceReportList> list(core.String accountId, core.String endDateTime, core.String startDateTime, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    _queryParams["accountId"] = [accountId];
    if (endDateTime == null) {
      throw new core.ArgumentError("Parameter endDateTime is required.");
    }
    _queryParams["endDateTime"] = [endDateTime];
    if (startDateTime == null) {
      throw new core.ArgumentError("Parameter startDateTime is required.");
    }
    _queryParams["startDateTime"] = [startDateTime];
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'performancereport';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PerformanceReportList.fromJson(data));
  }

}


class PretargetingConfigResourceApi {
  final commons.ApiRequester _requester;

  PretargetingConfigResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes an existing pretargeting config.
   *
   * Request parameters:
   *
   * [accountId] - The account id to delete the pretargeting config for.
   *
   * [configId] - The specific id of the configuration to delete.
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future delete(core.String accountId, core.String configId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (configId == null) {
      throw new core.ArgumentError("Parameter configId is required.");
    }

    _downloadOptions = null;

    _url = 'pretargetingconfigs/' + commons.Escaper.ecapeVariable('$accountId') + '/' + commons.Escaper.ecapeVariable('$configId');

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
   * Gets a specific pretargeting configuration
   *
   * Request parameters:
   *
   * [accountId] - The account id to get the pretargeting config for.
   *
   * [configId] - The specific id of the configuration to retrieve.
   *
   * Completes with a [PretargetingConfig].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<PretargetingConfig> get(core.String accountId, core.String configId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (configId == null) {
      throw new core.ArgumentError("Parameter configId is required.");
    }

    _url = 'pretargetingconfigs/' + commons.Escaper.ecapeVariable('$accountId') + '/' + commons.Escaper.ecapeVariable('$configId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PretargetingConfig.fromJson(data));
  }

  /**
   * Inserts a new pretargeting configuration.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - The account id to insert the pretargeting config for.
   *
   * Completes with a [PretargetingConfig].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<PretargetingConfig> insert(PretargetingConfig request, core.String accountId) {
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

    _url = 'pretargetingconfigs/' + commons.Escaper.ecapeVariable('$accountId');

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PretargetingConfig.fromJson(data));
  }

  /**
   * Retrieves a list of the authenticated user's pretargeting configurations.
   *
   * Request parameters:
   *
   * [accountId] - The account id to get the pretargeting configs for.
   *
   * Completes with a [PretargetingConfigList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<PretargetingConfigList> list(core.String accountId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }

    _url = 'pretargetingconfigs/' + commons.Escaper.ecapeVariable('$accountId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PretargetingConfigList.fromJson(data));
  }

  /**
   * Updates an existing pretargeting config. This method supports patch
   * semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - The account id to update the pretargeting config for.
   *
   * [configId] - The specific id of the configuration to update.
   *
   * Completes with a [PretargetingConfig].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<PretargetingConfig> patch(PretargetingConfig request, core.String accountId, core.String configId) {
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
    if (configId == null) {
      throw new core.ArgumentError("Parameter configId is required.");
    }

    _url = 'pretargetingconfigs/' + commons.Escaper.ecapeVariable('$accountId') + '/' + commons.Escaper.ecapeVariable('$configId');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PretargetingConfig.fromJson(data));
  }

  /**
   * Updates an existing pretargeting config.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - The account id to update the pretargeting config for.
   *
   * [configId] - The specific id of the configuration to update.
   *
   * Completes with a [PretargetingConfig].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<PretargetingConfig> update(PretargetingConfig request, core.String accountId, core.String configId) {
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
    if (configId == null) {
      throw new core.ArgumentError("Parameter configId is required.");
    }

    _url = 'pretargetingconfigs/' + commons.Escaper.ecapeVariable('$accountId') + '/' + commons.Escaper.ecapeVariable('$configId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PretargetingConfig.fromJson(data));
  }

}



class AccountBidderLocation {
  /** The maximum queries per second the Ad Exchange will send. */
  core.int maximumQps;
  /**
   * The geographical region the Ad Exchange should send requests from. Only
   * used by some quota systems, but always setting the value is recommended.
   * Allowed values:
   * - ASIA
   * - EUROPE
   * - US_EAST
   * - US_WEST
   */
  core.String region;
  /** The URL to which the Ad Exchange will send bid requests. */
  core.String url;

  AccountBidderLocation();

  AccountBidderLocation.fromJson(core.Map _json) {
    if (_json.containsKey("maximumQps")) {
      maximumQps = _json["maximumQps"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (maximumQps != null) {
      _json["maximumQps"] = maximumQps;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/** Configuration data for an Ad Exchange buyer account. */
class Account {
  /** Your bidder locations that have distinct URLs. */
  core.List<AccountBidderLocation> bidderLocation;
  /**
   * The nid parameter value used in cookie match requests. Please contact your
   * technical account manager if you need to change this.
   */
  core.String cookieMatchingNid;
  /** The base URL used in cookie match requests. */
  core.String cookieMatchingUrl;
  /** Account id. */
  core.int id;
  /** Resource type. */
  core.String kind;
  /**
   * The maximum number of active creatives that an account can have, where a
   * creative is active if it was inserted or bid with in the last 30 days.
   * Please contact your technical account manager if you need to change this.
   */
  core.int maximumActiveCreatives;
  /**
   * The sum of all bidderLocation.maximumQps values cannot exceed this. Please
   * contact your technical account manager if you need to change this.
   */
  core.int maximumTotalQps;
  /**
   * The number of creatives that this account inserted or bid with in the last
   * 30 days.
   */
  core.int numberActiveCreatives;

  Account();

  Account.fromJson(core.Map _json) {
    if (_json.containsKey("bidderLocation")) {
      bidderLocation = _json["bidderLocation"].map((value) => new AccountBidderLocation.fromJson(value)).toList();
    }
    if (_json.containsKey("cookieMatchingNid")) {
      cookieMatchingNid = _json["cookieMatchingNid"];
    }
    if (_json.containsKey("cookieMatchingUrl")) {
      cookieMatchingUrl = _json["cookieMatchingUrl"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("maximumActiveCreatives")) {
      maximumActiveCreatives = _json["maximumActiveCreatives"];
    }
    if (_json.containsKey("maximumTotalQps")) {
      maximumTotalQps = _json["maximumTotalQps"];
    }
    if (_json.containsKey("numberActiveCreatives")) {
      numberActiveCreatives = _json["numberActiveCreatives"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bidderLocation != null) {
      _json["bidderLocation"] = bidderLocation.map((value) => (value).toJson()).toList();
    }
    if (cookieMatchingNid != null) {
      _json["cookieMatchingNid"] = cookieMatchingNid;
    }
    if (cookieMatchingUrl != null) {
      _json["cookieMatchingUrl"] = cookieMatchingUrl;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (maximumActiveCreatives != null) {
      _json["maximumActiveCreatives"] = maximumActiveCreatives;
    }
    if (maximumTotalQps != null) {
      _json["maximumTotalQps"] = maximumTotalQps;
    }
    if (numberActiveCreatives != null) {
      _json["numberActiveCreatives"] = numberActiveCreatives;
    }
    return _json;
  }
}

/**
 * An account feed lists Ad Exchange buyer accounts that the user has access to.
 * Each entry in the feed corresponds to a single buyer account.
 */
class AccountsList {
  /** A list of accounts. */
  core.List<Account> items;
  /** Resource type. */
  core.String kind;

  AccountsList();

  AccountsList.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Account.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

class AdSize {
  core.int height;
  core.int width;

  AdSize();

  AdSize.fromJson(core.Map _json) {
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (height != null) {
      _json["height"] = height;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

class AdSlotDto {
  core.String channelCode;
  core.int channelId;
  core.String description;
  core.String name;
  core.String size;
  core.int webPropertyId;

  AdSlotDto();

  AdSlotDto.fromJson(core.Map _json) {
    if (_json.containsKey("channelCode")) {
      channelCode = _json["channelCode"];
    }
    if (_json.containsKey("channelId")) {
      channelId = _json["channelId"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("size")) {
      size = _json["size"];
    }
    if (_json.containsKey("webPropertyId")) {
      webPropertyId = _json["webPropertyId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (channelCode != null) {
      _json["channelCode"] = channelCode;
    }
    if (channelId != null) {
      _json["channelId"] = channelId;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (size != null) {
      _json["size"] = size;
    }
    if (webPropertyId != null) {
      _json["webPropertyId"] = webPropertyId;
    }
    return _json;
  }
}

class AddOrderDealsRequest {
  /** The list of deals to add */
  core.List<MarketplaceDeal> deals;
  /** The last known order revision number. */
  core.String orderRevisionNumber;
  /** Indicates an optional action to take on the order */
  core.String updateAction;

  AddOrderDealsRequest();

  AddOrderDealsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("deals")) {
      deals = _json["deals"].map((value) => new MarketplaceDeal.fromJson(value)).toList();
    }
    if (_json.containsKey("orderRevisionNumber")) {
      orderRevisionNumber = _json["orderRevisionNumber"];
    }
    if (_json.containsKey("updateAction")) {
      updateAction = _json["updateAction"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (deals != null) {
      _json["deals"] = deals.map((value) => (value).toJson()).toList();
    }
    if (orderRevisionNumber != null) {
      _json["orderRevisionNumber"] = orderRevisionNumber;
    }
    if (updateAction != null) {
      _json["updateAction"] = updateAction;
    }
    return _json;
  }
}

class AddOrderDealsResponse {
  /** List of deals added (in the same order as passed in the request) */
  core.List<MarketplaceDeal> deals;
  /** The updated revision number for the order. */
  core.String orderRevisionNumber;

  AddOrderDealsResponse();

  AddOrderDealsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("deals")) {
      deals = _json["deals"].map((value) => new MarketplaceDeal.fromJson(value)).toList();
    }
    if (_json.containsKey("orderRevisionNumber")) {
      orderRevisionNumber = _json["orderRevisionNumber"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (deals != null) {
      _json["deals"] = deals.map((value) => (value).toJson()).toList();
    }
    if (orderRevisionNumber != null) {
      _json["orderRevisionNumber"] = orderRevisionNumber;
    }
    return _json;
  }
}

class AddOrderNotesRequest {
  /** The list of notes to add. */
  core.List<MarketplaceNote> notes;

  AddOrderNotesRequest();

  AddOrderNotesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("notes")) {
      notes = _json["notes"].map((value) => new MarketplaceNote.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (notes != null) {
      _json["notes"] = notes.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class AddOrderNotesResponse {
  core.List<MarketplaceNote> notes;

  AddOrderNotesResponse();

  AddOrderNotesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("notes")) {
      notes = _json["notes"].map((value) => new MarketplaceNote.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (notes != null) {
      _json["notes"] = notes.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class AdvertiserDto {
  core.List<BrandDto> brands;
  core.String id;
  core.String name;
  core.String status;

  AdvertiserDto();

  AdvertiserDto.fromJson(core.Map _json) {
    if (_json.containsKey("brands")) {
      brands = _json["brands"].map((value) => new BrandDto.fromJson(value)).toList();
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (brands != null) {
      _json["brands"] = brands.map((value) => (value).toJson()).toList();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}

class AudienceSegment {
  core.String description;
  core.String id;
  core.String name;
  core.String numCookies;

  AudienceSegment();

  AudienceSegment.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("numCookies")) {
      numCookies = _json["numCookies"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (numCookies != null) {
      _json["numCookies"] = numCookies;
    }
    return _json;
  }
}

/** The configuration data for an Ad Exchange billing info. */
class BillingInfo {
  /** Account id. */
  core.int accountId;
  /** Account name. */
  core.String accountName;
  /**
   * A list of adgroup IDs associated with this particular account. These IDs
   * may show up as part of a realtime bidding BidRequest, which indicates a bid
   * request for this account.
   */
  core.List<core.String> billingId;
  /** Resource type. */
  core.String kind;

  BillingInfo();

  BillingInfo.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("accountName")) {
      accountName = _json["accountName"];
    }
    if (_json.containsKey("billingId")) {
      billingId = _json["billingId"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (accountName != null) {
      _json["accountName"] = accountName;
    }
    if (billingId != null) {
      _json["billingId"] = billingId;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/**
 * A billing info feed lists Billing Info the Ad Exchange buyer account has
 * access to. Each entry in the feed corresponds to a single billing info.
 */
class BillingInfoList {
  /** A list of billing info relevant for your account. */
  core.List<BillingInfo> items;
  /** Resource type. */
  core.String kind;

  BillingInfoList();

  BillingInfoList.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new BillingInfo.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

class BrandDto {
  core.String advertiserId;
  core.String id;
  core.String name;

  BrandDto();

  BrandDto.fromJson(core.Map _json) {
    if (_json.containsKey("advertiserId")) {
      advertiserId = _json["advertiserId"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (advertiserId != null) {
      _json["advertiserId"] = advertiserId;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/** The configuration data for Ad Exchange RTB - Budget API. */
class Budget {
  /** The id of the account. This is required for get and update requests. */
  core.String accountId;
  /**
   * The billing id to determine which adgroup to provide budget information
   * for. This is required for get and update requests.
   */
  core.String billingId;
  /**
   * The budget amount to apply for the billingId provided. This is required for
   * update requests.
   */
  core.String budgetAmount;
  /** The currency code for the buyer. This cannot be altered here. */
  core.String currencyCode;
  /** The unique id that describes this item. */
  core.String id;
  /** The kind of the resource, i.e. "adexchangebuyer#budget". */
  core.String kind;

  Budget();

  Budget.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("billingId")) {
      billingId = _json["billingId"];
    }
    if (_json.containsKey("budgetAmount")) {
      budgetAmount = _json["budgetAmount"];
    }
    if (_json.containsKey("currencyCode")) {
      currencyCode = _json["currencyCode"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (billingId != null) {
      _json["billingId"] = billingId;
    }
    if (budgetAmount != null) {
      _json["budgetAmount"] = budgetAmount;
    }
    if (currencyCode != null) {
      _json["currencyCode"] = currencyCode;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

class Buyer {
  /** Adx account id of the buyer. */
  core.String accountId;

  Buyer();

  Buyer.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    return _json;
  }
}

class BuyerDto {
  core.int accountId;
  core.int customerId;
  core.String displayName;
  core.bool enabledForInterestTargetingDeals;
  core.bool enabledForPreferredDeals;
  core.int id;
  core.int sponsorAccountId;

  BuyerDto();

  BuyerDto.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("customerId")) {
      customerId = _json["customerId"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("enabledForInterestTargetingDeals")) {
      enabledForInterestTargetingDeals = _json["enabledForInterestTargetingDeals"];
    }
    if (_json.containsKey("enabledForPreferredDeals")) {
      enabledForPreferredDeals = _json["enabledForPreferredDeals"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("sponsorAccountId")) {
      sponsorAccountId = _json["sponsorAccountId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (customerId != null) {
      _json["customerId"] = customerId;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (enabledForInterestTargetingDeals != null) {
      _json["enabledForInterestTargetingDeals"] = enabledForInterestTargetingDeals;
    }
    if (enabledForPreferredDeals != null) {
      _json["enabledForPreferredDeals"] = enabledForPreferredDeals;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (sponsorAccountId != null) {
      _json["sponsorAccountId"] = sponsorAccountId;
    }
    return _json;
  }
}

class ClientAccessCapabilities {
  core.List<core.int> capabilities;
  core.String clientAccountId;

  ClientAccessCapabilities();

  ClientAccessCapabilities.fromJson(core.Map _json) {
    if (_json.containsKey("capabilities")) {
      capabilities = _json["capabilities"];
    }
    if (_json.containsKey("clientAccountId")) {
      clientAccountId = _json["clientAccountId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (capabilities != null) {
      _json["capabilities"] = capabilities;
    }
    if (clientAccountId != null) {
      _json["clientAccountId"] = clientAccountId;
    }
    return _json;
  }
}

class ContactInformation {
  /** Email address of the contact. */
  core.String email;
  /** The name of the contact. */
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

  core.Map toJson() {
    var _json = new core.Map();
    if (email != null) {
      _json["email"] = email;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

class CreateOrdersRequest {
  /** The list of orders to create. */
  core.List<MarketplaceOrder> orders;
  core.String webPropertyCode;

  CreateOrdersRequest();

  CreateOrdersRequest.fromJson(core.Map _json) {
    if (_json.containsKey("orders")) {
      orders = _json["orders"].map((value) => new MarketplaceOrder.fromJson(value)).toList();
    }
    if (_json.containsKey("webPropertyCode")) {
      webPropertyCode = _json["webPropertyCode"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (orders != null) {
      _json["orders"] = orders.map((value) => (value).toJson()).toList();
    }
    if (webPropertyCode != null) {
      _json["webPropertyCode"] = webPropertyCode;
    }
    return _json;
  }
}

class CreateOrdersResponse {
  /** The list of orders successfully created. */
  core.List<MarketplaceOrder> orders;

  CreateOrdersResponse();

  CreateOrdersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("orders")) {
      orders = _json["orders"].map((value) => new MarketplaceOrder.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (orders != null) {
      _json["orders"] = orders.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class CreativeCorrections {
  /** Additional details about the correction. */
  core.List<core.String> details;
  /** The type of correction that was applied to the creative. */
  core.String reason;

  CreativeCorrections();

  CreativeCorrections.fromJson(core.Map _json) {
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("reason")) {
      reason = _json["reason"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (details != null) {
      _json["details"] = details;
    }
    if (reason != null) {
      _json["reason"] = reason;
    }
    return _json;
  }
}

class CreativeFilteringReasonsReasons {
  /**
   * The number of times the creative was filtered for the status. The count is
   * aggregated across all publishers on the exchange.
   */
  core.String filteringCount;
  /**
   * The filtering status code. Please refer to the creative-status-codes.txt
   * file for different statuses.
   */
  core.int filteringStatus;

  CreativeFilteringReasonsReasons();

  CreativeFilteringReasonsReasons.fromJson(core.Map _json) {
    if (_json.containsKey("filteringCount")) {
      filteringCount = _json["filteringCount"];
    }
    if (_json.containsKey("filteringStatus")) {
      filteringStatus = _json["filteringStatus"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (filteringCount != null) {
      _json["filteringCount"] = filteringCount;
    }
    if (filteringStatus != null) {
      _json["filteringStatus"] = filteringStatus;
    }
    return _json;
  }
}

/**
 * The filtering reasons for the creative. Read-only. This field should not be
 * set in requests.
 */
class CreativeFilteringReasons {
  /**
   * The date in ISO 8601 format for the data. The data is collected from
   * 00:00:00 to 23:59:59 in PST.
   */
  core.String date;
  /** The filtering reasons. */
  core.List<CreativeFilteringReasonsReasons> reasons;

  CreativeFilteringReasons();

  CreativeFilteringReasons.fromJson(core.Map _json) {
    if (_json.containsKey("date")) {
      date = _json["date"];
    }
    if (_json.containsKey("reasons")) {
      reasons = _json["reasons"].map((value) => new CreativeFilteringReasonsReasons.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (date != null) {
      _json["date"] = date;
    }
    if (reasons != null) {
      _json["reasons"] = reasons.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** The app icon, for app download ads. */
class CreativeNativeAdAppIcon {
  core.int height;
  core.String url;
  core.int width;

  CreativeNativeAdAppIcon();

  CreativeNativeAdAppIcon.fromJson(core.Map _json) {
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

  core.Map toJson() {
    var _json = new core.Map();
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

/** A large image. */
class CreativeNativeAdImage {
  core.int height;
  core.String url;
  core.int width;

  CreativeNativeAdImage();

  CreativeNativeAdImage.fromJson(core.Map _json) {
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

  core.Map toJson() {
    var _json = new core.Map();
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

/** A smaller image, for the advertiser logo. */
class CreativeNativeAdLogo {
  core.int height;
  core.String url;
  core.int width;

  CreativeNativeAdLogo();

  CreativeNativeAdLogo.fromJson(core.Map _json) {
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

  core.Map toJson() {
    var _json = new core.Map();
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

/** If nativeAd is set, HTMLSnippet and videoURL should not be set. */
class CreativeNativeAd {
  core.String advertiser;
  /** The app icon, for app download ads. */
  CreativeNativeAdAppIcon appIcon;
  /** A long description of the ad. */
  core.String body;
  /** A label for the button that the user is supposed to click. */
  core.String callToAction;
  /** The URL to use for click tracking. */
  core.String clickTrackingUrl;
  /** A short title for the ad. */
  core.String headline;
  /** A large image. */
  CreativeNativeAdImage image;
  /** The URLs are called when the impression is rendered. */
  core.List<core.String> impressionTrackingUrl;
  /** A smaller image, for the advertiser logo. */
  CreativeNativeAdLogo logo;
  /** The price of the promoted app including the currency info. */
  core.String price;
  /** The app rating in the app store. Must be in the range [0-5]. */
  core.double starRating;
  /** The URL to the app store to purchase/download the promoted app. */
  core.String store;

  CreativeNativeAd();

  CreativeNativeAd.fromJson(core.Map _json) {
    if (_json.containsKey("advertiser")) {
      advertiser = _json["advertiser"];
    }
    if (_json.containsKey("appIcon")) {
      appIcon = new CreativeNativeAdAppIcon.fromJson(_json["appIcon"]);
    }
    if (_json.containsKey("body")) {
      body = _json["body"];
    }
    if (_json.containsKey("callToAction")) {
      callToAction = _json["callToAction"];
    }
    if (_json.containsKey("clickTrackingUrl")) {
      clickTrackingUrl = _json["clickTrackingUrl"];
    }
    if (_json.containsKey("headline")) {
      headline = _json["headline"];
    }
    if (_json.containsKey("image")) {
      image = new CreativeNativeAdImage.fromJson(_json["image"]);
    }
    if (_json.containsKey("impressionTrackingUrl")) {
      impressionTrackingUrl = _json["impressionTrackingUrl"];
    }
    if (_json.containsKey("logo")) {
      logo = new CreativeNativeAdLogo.fromJson(_json["logo"]);
    }
    if (_json.containsKey("price")) {
      price = _json["price"];
    }
    if (_json.containsKey("starRating")) {
      starRating = _json["starRating"];
    }
    if (_json.containsKey("store")) {
      store = _json["store"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (advertiser != null) {
      _json["advertiser"] = advertiser;
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
    if (clickTrackingUrl != null) {
      _json["clickTrackingUrl"] = clickTrackingUrl;
    }
    if (headline != null) {
      _json["headline"] = headline;
    }
    if (image != null) {
      _json["image"] = (image).toJson();
    }
    if (impressionTrackingUrl != null) {
      _json["impressionTrackingUrl"] = impressionTrackingUrl;
    }
    if (logo != null) {
      _json["logo"] = (logo).toJson();
    }
    if (price != null) {
      _json["price"] = price;
    }
    if (starRating != null) {
      _json["starRating"] = starRating;
    }
    if (store != null) {
      _json["store"] = store;
    }
    return _json;
  }
}

class CreativeServingRestrictionsContexts {
  /**
   * Only set when contextType=AUCTION_TYPE. Represents the auction types this
   * restriction applies to.
   */
  core.List<core.String> auctionType;
  /**
   * The type of context (e.g., location, platform, auction type, SSL-ness).
   */
  core.String contextType;
  /**
   * Only set when contextType=LOCATION. Represents the geo criterias this
   * restriction applies to.
   */
  core.List<core.int> geoCriteriaId;
  /**
   * Only set when contextType=PLATFORM. Represents the platforms this
   * restriction applies to.
   */
  core.List<core.String> platform;

  CreativeServingRestrictionsContexts();

  CreativeServingRestrictionsContexts.fromJson(core.Map _json) {
    if (_json.containsKey("auctionType")) {
      auctionType = _json["auctionType"];
    }
    if (_json.containsKey("contextType")) {
      contextType = _json["contextType"];
    }
    if (_json.containsKey("geoCriteriaId")) {
      geoCriteriaId = _json["geoCriteriaId"];
    }
    if (_json.containsKey("platform")) {
      platform = _json["platform"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (auctionType != null) {
      _json["auctionType"] = auctionType;
    }
    if (contextType != null) {
      _json["contextType"] = contextType;
    }
    if (geoCriteriaId != null) {
      _json["geoCriteriaId"] = geoCriteriaId;
    }
    if (platform != null) {
      _json["platform"] = platform;
    }
    return _json;
  }
}

class CreativeServingRestrictionsDisapprovalReasons {
  /** Additional details about the reason for disapproval. */
  core.List<core.String> details;
  /** The categorized reason for disapproval. */
  core.String reason;

  CreativeServingRestrictionsDisapprovalReasons();

  CreativeServingRestrictionsDisapprovalReasons.fromJson(core.Map _json) {
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("reason")) {
      reason = _json["reason"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (details != null) {
      _json["details"] = details;
    }
    if (reason != null) {
      _json["reason"] = reason;
    }
    return _json;
  }
}

class CreativeServingRestrictions {
  /** All known contexts/restrictions. */
  core.List<CreativeServingRestrictionsContexts> contexts;
  /**
   * The reasons for disapproval within this restriction, if any. Note that not
   * all disapproval reasons may be categorized, so it is possible for the
   * creative to have a status of DISAPPROVED or CONDITIONALLY_APPROVED with an
   * empty list for disapproval_reasons. In this case, please reach out to your
   * TAM to help debug the issue.
   */
  core.List<CreativeServingRestrictionsDisapprovalReasons> disapprovalReasons;
  /**
   * Why the creative is ineligible to serve in this context (e.g., it has been
   * explicitly disapproved or is pending review).
   */
  core.String reason;

  CreativeServingRestrictions();

  CreativeServingRestrictions.fromJson(core.Map _json) {
    if (_json.containsKey("contexts")) {
      contexts = _json["contexts"].map((value) => new CreativeServingRestrictionsContexts.fromJson(value)).toList();
    }
    if (_json.containsKey("disapprovalReasons")) {
      disapprovalReasons = _json["disapprovalReasons"].map((value) => new CreativeServingRestrictionsDisapprovalReasons.fromJson(value)).toList();
    }
    if (_json.containsKey("reason")) {
      reason = _json["reason"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (contexts != null) {
      _json["contexts"] = contexts.map((value) => (value).toJson()).toList();
    }
    if (disapprovalReasons != null) {
      _json["disapprovalReasons"] = disapprovalReasons.map((value) => (value).toJson()).toList();
    }
    if (reason != null) {
      _json["reason"] = reason;
    }
    return _json;
  }
}

/** A creative and its classification data. */
class Creative {
  /**
   * The HTML snippet that displays the ad when inserted in the web page. If
   * set, videoURL should not be set.
   */
  core.String HTMLSnippet;
  /** Account id. */
  core.int accountId;
  /**
   * Detected advertiser id, if any. Read-only. This field should not be set in
   * requests.
   */
  core.List<core.String> advertiserId;
  /** The name of the company being advertised in the creative. */
  core.String advertiserName;
  /** The agency id for this creative. */
  core.String agencyId;
  /**
   * The last upload timestamp of this creative if it was uploaded via API.
   * Read-only. The value of this field is generated, and will be ignored for
   * uploads. (formatted RFC 3339 timestamp).
   */
  core.DateTime apiUploadTimestamp;
  /** All attributes for the ads that may be shown from this snippet. */
  core.List<core.int> attribute;
  /** A buyer-specific id identifying the creative in this ad. */
  core.String buyerCreativeId;
  /** The set of destination urls for the snippet. */
  core.List<core.String> clickThroughUrl;
  /**
   * Shows any corrections that were applied to this creative. Read-only. This
   * field should not be set in requests.
   */
  core.List<CreativeCorrections> corrections;
  /**
   * Top-level deals status. Read-only. This field should not be set in
   * requests. If disapproved, an entry for auctionType=DIRECT_DEALS (or ALL) in
   * servingRestrictions will also exist. Note that this may be nuanced with
   * other contextual restrictions, in which case it may be preferable to read
   * from servingRestrictions directly.
   */
  core.String dealsStatus;
  /**
   * The filtering reasons for the creative. Read-only. This field should not be
   * set in requests.
   */
  CreativeFilteringReasons filteringReasons;
  /** Ad height. */
  core.int height;
  /** The set of urls to be called to record an impression. */
  core.List<core.String> impressionTrackingUrl;
  /** Resource type. */
  core.String kind;
  /** If nativeAd is set, HTMLSnippet and videoURL should not be set. */
  CreativeNativeAd nativeAd;
  /**
   * Top-level open auction status. Read-only. This field should not be set in
   * requests. If disapproved, an entry for auctionType=OPEN_AUCTION (or ALL) in
   * servingRestrictions will also exist. Note that this may be nuanced with
   * other contextual restrictions, in which case it may be preferable to read
   * from ServingRestrictions directly.
   */
  core.String openAuctionStatus;
  /**
   * Detected product categories, if any. Read-only. This field should not be
   * set in requests.
   */
  core.List<core.int> productCategories;
  /**
   * All restricted categories for the ads that may be shown from this snippet.
   */
  core.List<core.int> restrictedCategories;
  /**
   * Detected sensitive categories, if any. Read-only. This field should not be
   * set in requests.
   */
  core.List<core.int> sensitiveCategories;
  /**
   * The granular status of this ad in specific contexts. A context here relates
   * to where something ultimately serves (for example, a physical location, a
   * platform, an HTTPS vs HTTP request, or the type of auction). Read-only.
   * This field should not be set in requests.
   */
  core.List<CreativeServingRestrictions> servingRestrictions;
  /** All vendor types for the ads that may be shown from this snippet. */
  core.List<core.int> vendorType;
  /**
   * The version for this creative. Read-only. This field should not be set in
   * requests.
   */
  core.int version;
  /** The url to fetch a video ad. If set, HTMLSnippet should not be set. */
  core.String videoURL;
  /** Ad width. */
  core.int width;

  Creative();

  Creative.fromJson(core.Map _json) {
    if (_json.containsKey("HTMLSnippet")) {
      HTMLSnippet = _json["HTMLSnippet"];
    }
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("advertiserId")) {
      advertiserId = _json["advertiserId"];
    }
    if (_json.containsKey("advertiserName")) {
      advertiserName = _json["advertiserName"];
    }
    if (_json.containsKey("agencyId")) {
      agencyId = _json["agencyId"];
    }
    if (_json.containsKey("api_upload_timestamp")) {
      apiUploadTimestamp = core.DateTime.parse(_json["api_upload_timestamp"]);
    }
    if (_json.containsKey("attribute")) {
      attribute = _json["attribute"];
    }
    if (_json.containsKey("buyerCreativeId")) {
      buyerCreativeId = _json["buyerCreativeId"];
    }
    if (_json.containsKey("clickThroughUrl")) {
      clickThroughUrl = _json["clickThroughUrl"];
    }
    if (_json.containsKey("corrections")) {
      corrections = _json["corrections"].map((value) => new CreativeCorrections.fromJson(value)).toList();
    }
    if (_json.containsKey("dealsStatus")) {
      dealsStatus = _json["dealsStatus"];
    }
    if (_json.containsKey("filteringReasons")) {
      filteringReasons = new CreativeFilteringReasons.fromJson(_json["filteringReasons"]);
    }
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("impressionTrackingUrl")) {
      impressionTrackingUrl = _json["impressionTrackingUrl"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nativeAd")) {
      nativeAd = new CreativeNativeAd.fromJson(_json["nativeAd"]);
    }
    if (_json.containsKey("openAuctionStatus")) {
      openAuctionStatus = _json["openAuctionStatus"];
    }
    if (_json.containsKey("productCategories")) {
      productCategories = _json["productCategories"];
    }
    if (_json.containsKey("restrictedCategories")) {
      restrictedCategories = _json["restrictedCategories"];
    }
    if (_json.containsKey("sensitiveCategories")) {
      sensitiveCategories = _json["sensitiveCategories"];
    }
    if (_json.containsKey("servingRestrictions")) {
      servingRestrictions = _json["servingRestrictions"].map((value) => new CreativeServingRestrictions.fromJson(value)).toList();
    }
    if (_json.containsKey("vendorType")) {
      vendorType = _json["vendorType"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
    if (_json.containsKey("videoURL")) {
      videoURL = _json["videoURL"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (HTMLSnippet != null) {
      _json["HTMLSnippet"] = HTMLSnippet;
    }
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (advertiserId != null) {
      _json["advertiserId"] = advertiserId;
    }
    if (advertiserName != null) {
      _json["advertiserName"] = advertiserName;
    }
    if (agencyId != null) {
      _json["agencyId"] = agencyId;
    }
    if (apiUploadTimestamp != null) {
      _json["api_upload_timestamp"] = (apiUploadTimestamp).toIso8601String();
    }
    if (attribute != null) {
      _json["attribute"] = attribute;
    }
    if (buyerCreativeId != null) {
      _json["buyerCreativeId"] = buyerCreativeId;
    }
    if (clickThroughUrl != null) {
      _json["clickThroughUrl"] = clickThroughUrl;
    }
    if (corrections != null) {
      _json["corrections"] = corrections.map((value) => (value).toJson()).toList();
    }
    if (dealsStatus != null) {
      _json["dealsStatus"] = dealsStatus;
    }
    if (filteringReasons != null) {
      _json["filteringReasons"] = (filteringReasons).toJson();
    }
    if (height != null) {
      _json["height"] = height;
    }
    if (impressionTrackingUrl != null) {
      _json["impressionTrackingUrl"] = impressionTrackingUrl;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nativeAd != null) {
      _json["nativeAd"] = (nativeAd).toJson();
    }
    if (openAuctionStatus != null) {
      _json["openAuctionStatus"] = openAuctionStatus;
    }
    if (productCategories != null) {
      _json["productCategories"] = productCategories;
    }
    if (restrictedCategories != null) {
      _json["restrictedCategories"] = restrictedCategories;
    }
    if (sensitiveCategories != null) {
      _json["sensitiveCategories"] = sensitiveCategories;
    }
    if (servingRestrictions != null) {
      _json["servingRestrictions"] = servingRestrictions.map((value) => (value).toJson()).toList();
    }
    if (vendorType != null) {
      _json["vendorType"] = vendorType;
    }
    if (version != null) {
      _json["version"] = version;
    }
    if (videoURL != null) {
      _json["videoURL"] = videoURL;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

/**
 * The creatives feed lists the active creatives for the Ad Exchange buyer
 * accounts that the user has access to. Each entry in the feed corresponds to a
 * single creative.
 */
class CreativesList {
  /** A list of creatives. */
  core.List<Creative> items;
  /** Resource type. */
  core.String kind;
  /**
   * Continuation token used to page through creatives. To retrieve the next
   * page of results, set the next request's "pageToken" value to this.
   */
  core.String nextPageToken;

  CreativesList();

  CreativesList.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Creative.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

class DateTime {
  core.int day;
  core.int hour;
  core.int minute;
  core.int month;
  core.int second;
  core.String timeZoneId;
  core.int year;

  DateTime();

  DateTime.fromJson(core.Map _json) {
    if (_json.containsKey("day")) {
      day = _json["day"];
    }
    if (_json.containsKey("hour")) {
      hour = _json["hour"];
    }
    if (_json.containsKey("minute")) {
      minute = _json["minute"];
    }
    if (_json.containsKey("month")) {
      month = _json["month"];
    }
    if (_json.containsKey("second")) {
      second = _json["second"];
    }
    if (_json.containsKey("timeZoneId")) {
      timeZoneId = _json["timeZoneId"];
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
    if (hour != null) {
      _json["hour"] = hour;
    }
    if (minute != null) {
      _json["minute"] = minute;
    }
    if (month != null) {
      _json["month"] = month;
    }
    if (second != null) {
      _json["second"] = second;
    }
    if (timeZoneId != null) {
      _json["timeZoneId"] = timeZoneId;
    }
    if (year != null) {
      _json["year"] = year;
    }
    return _json;
  }
}

class DealPartyDto {
  BuyerDto buyer;
  core.String buyerSellerRole;
  core.int customerId;
  core.String name;
  WebPropertyDto webProperty;

  DealPartyDto();

  DealPartyDto.fromJson(core.Map _json) {
    if (_json.containsKey("buyer")) {
      buyer = new BuyerDto.fromJson(_json["buyer"]);
    }
    if (_json.containsKey("buyerSellerRole")) {
      buyerSellerRole = _json["buyerSellerRole"];
    }
    if (_json.containsKey("customerId")) {
      customerId = _json["customerId"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("webProperty")) {
      webProperty = new WebPropertyDto.fromJson(_json["webProperty"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (buyer != null) {
      _json["buyer"] = (buyer).toJson();
    }
    if (buyerSellerRole != null) {
      _json["buyerSellerRole"] = buyerSellerRole;
    }
    if (customerId != null) {
      _json["customerId"] = customerId;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (webProperty != null) {
      _json["webProperty"] = (webProperty).toJson();
    }
    return _json;
  }
}

class DealTerms {
  /** Description for the proposed terms of the deal. */
  core.String description;
  /** The terms for guaranteed fixed price deals. */
  DealTermsGuaranteedFixedPriceTerms guaranteedFixedPriceTerms;
  /** The terms for non-guaranteed auction deals. */
  DealTermsNonGuaranteedAuctionTerms nonGuaranteedAuctionTerms;
  /** The terms for non-guaranteed fixed price deals. */
  DealTermsNonGuaranteedFixedPriceTerms nonGuaranteedFixedPriceTerms;

  DealTerms();

  DealTerms.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("guaranteedFixedPriceTerms")) {
      guaranteedFixedPriceTerms = new DealTermsGuaranteedFixedPriceTerms.fromJson(_json["guaranteedFixedPriceTerms"]);
    }
    if (_json.containsKey("nonGuaranteedAuctionTerms")) {
      nonGuaranteedAuctionTerms = new DealTermsNonGuaranteedAuctionTerms.fromJson(_json["nonGuaranteedAuctionTerms"]);
    }
    if (_json.containsKey("nonGuaranteedFixedPriceTerms")) {
      nonGuaranteedFixedPriceTerms = new DealTermsNonGuaranteedFixedPriceTerms.fromJson(_json["nonGuaranteedFixedPriceTerms"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = description;
    }
    if (guaranteedFixedPriceTerms != null) {
      _json["guaranteedFixedPriceTerms"] = (guaranteedFixedPriceTerms).toJson();
    }
    if (nonGuaranteedAuctionTerms != null) {
      _json["nonGuaranteedAuctionTerms"] = (nonGuaranteedAuctionTerms).toJson();
    }
    if (nonGuaranteedFixedPriceTerms != null) {
      _json["nonGuaranteedFixedPriceTerms"] = (nonGuaranteedFixedPriceTerms).toJson();
    }
    return _json;
  }
}

class DealTermsGuaranteedFixedPriceTerms {
  /** Fixed price for the specified buyer. */
  core.List<PricePerBuyer> fixedPrices;
  /**
   * Guaranteed impressions as a percentage. This is the percentage of
   * guaranteed looks that the buyer is guaranteeing to buy.
   */
  core.String guaranteedImpressions;
  /** Count of guaranteed looks. Required for deal, optional for offer. */
  core.String guaranteedLooks;

  DealTermsGuaranteedFixedPriceTerms();

  DealTermsGuaranteedFixedPriceTerms.fromJson(core.Map _json) {
    if (_json.containsKey("fixedPrices")) {
      fixedPrices = _json["fixedPrices"].map((value) => new PricePerBuyer.fromJson(value)).toList();
    }
    if (_json.containsKey("guaranteedImpressions")) {
      guaranteedImpressions = _json["guaranteedImpressions"];
    }
    if (_json.containsKey("guaranteedLooks")) {
      guaranteedLooks = _json["guaranteedLooks"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (fixedPrices != null) {
      _json["fixedPrices"] = fixedPrices.map((value) => (value).toJson()).toList();
    }
    if (guaranteedImpressions != null) {
      _json["guaranteedImpressions"] = guaranteedImpressions;
    }
    if (guaranteedLooks != null) {
      _json["guaranteedLooks"] = guaranteedLooks;
    }
    return _json;
  }
}

class DealTermsNonGuaranteedAuctionTerms {
  /** Id of the corresponding private auction. */
  core.String privateAuctionId;
  /** Reserve price for the specified buyer. */
  core.List<PricePerBuyer> reservePricePerBuyers;

  DealTermsNonGuaranteedAuctionTerms();

  DealTermsNonGuaranteedAuctionTerms.fromJson(core.Map _json) {
    if (_json.containsKey("privateAuctionId")) {
      privateAuctionId = _json["privateAuctionId"];
    }
    if (_json.containsKey("reservePricePerBuyers")) {
      reservePricePerBuyers = _json["reservePricePerBuyers"].map((value) => new PricePerBuyer.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (privateAuctionId != null) {
      _json["privateAuctionId"] = privateAuctionId;
    }
    if (reservePricePerBuyers != null) {
      _json["reservePricePerBuyers"] = reservePricePerBuyers.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class DealTermsNonGuaranteedFixedPriceTerms {
  /** Fixed price for the specified buyer. */
  core.List<PricePerBuyer> fixedPrices;

  DealTermsNonGuaranteedFixedPriceTerms();

  DealTermsNonGuaranteedFixedPriceTerms.fromJson(core.Map _json) {
    if (_json.containsKey("fixedPrices")) {
      fixedPrices = _json["fixedPrices"].map((value) => new PricePerBuyer.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (fixedPrices != null) {
      _json["fixedPrices"] = fixedPrices.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class DeleteOrderDealsRequest {
  /** List of deals to delete for a given order */
  core.List<core.String> dealIds;
  /** The last known order revision number. */
  core.String orderRevisionNumber;
  core.String updateAction;

  DeleteOrderDealsRequest();

  DeleteOrderDealsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("dealIds")) {
      dealIds = _json["dealIds"];
    }
    if (_json.containsKey("orderRevisionNumber")) {
      orderRevisionNumber = _json["orderRevisionNumber"];
    }
    if (_json.containsKey("updateAction")) {
      updateAction = _json["updateAction"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (dealIds != null) {
      _json["dealIds"] = dealIds;
    }
    if (orderRevisionNumber != null) {
      _json["orderRevisionNumber"] = orderRevisionNumber;
    }
    if (updateAction != null) {
      _json["updateAction"] = updateAction;
    }
    return _json;
  }
}

class DeleteOrderDealsResponse {
  /** List of deals deleted (in the same order as passed in the request) */
  core.List<MarketplaceDeal> deals;
  /** The updated revision number for the order. */
  core.String orderRevisionNumber;

  DeleteOrderDealsResponse();

  DeleteOrderDealsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("deals")) {
      deals = _json["deals"].map((value) => new MarketplaceDeal.fromJson(value)).toList();
    }
    if (_json.containsKey("orderRevisionNumber")) {
      orderRevisionNumber = _json["orderRevisionNumber"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (deals != null) {
      _json["deals"] = deals.map((value) => (value).toJson()).toList();
    }
    if (orderRevisionNumber != null) {
      _json["orderRevisionNumber"] = orderRevisionNumber;
    }
    return _json;
  }
}

class DeliveryControl {
  core.String deliveryRateType;
  core.List<DeliveryControlFrequencyCap> frequencyCaps;

  DeliveryControl();

  DeliveryControl.fromJson(core.Map _json) {
    if (_json.containsKey("deliveryRateType")) {
      deliveryRateType = _json["deliveryRateType"];
    }
    if (_json.containsKey("frequencyCaps")) {
      frequencyCaps = _json["frequencyCaps"].map((value) => new DeliveryControlFrequencyCap.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (deliveryRateType != null) {
      _json["deliveryRateType"] = deliveryRateType;
    }
    if (frequencyCaps != null) {
      _json["frequencyCaps"] = frequencyCaps.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class DeliveryControlFrequencyCap {
  core.int maxImpressions;
  core.int numTimeUnits;
  core.String timeUnitType;

  DeliveryControlFrequencyCap();

  DeliveryControlFrequencyCap.fromJson(core.Map _json) {
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

  core.Map toJson() {
    var _json = new core.Map();
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

class EditAllOrderDealsRequest {
  /**
   * List of deals to edit. Service may perform 3 different operations based on
   * comparison of deals in this list vs deals already persisted in database: 1.
   * Add new deal to order If a deal in this list does not exist in the order,
   * the service will create a new deal and add it to the order. Validation will
   * follow AddOrderDealsRequest. 2. Update existing deal in the order If a deal
   * in this list already exist in the order, the service will update that
   * existing deal to this new deal in the request. Validation will follow
   * UpdateOrderDealsRequest. 3. Delete deals from the order (just need the id)
   * If a existing deal in the order is not present in this list, the service
   * will delete that deal from the order. Validation will follow
   * DeleteOrderDealsRequest.
   */
  core.List<MarketplaceDeal> deals;
  /**
   * If specified, also updates the order in the batch transaction. This is
   * useful when the order and the deals need to be updated in one transaction.
   */
  MarketplaceOrder order;
  /** The last known revision number for the order. */
  core.String orderRevisionNumber;
  /** Indicates an optional action to take on the order */
  core.String updateAction;

  EditAllOrderDealsRequest();

  EditAllOrderDealsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("deals")) {
      deals = _json["deals"].map((value) => new MarketplaceDeal.fromJson(value)).toList();
    }
    if (_json.containsKey("order")) {
      order = new MarketplaceOrder.fromJson(_json["order"]);
    }
    if (_json.containsKey("orderRevisionNumber")) {
      orderRevisionNumber = _json["orderRevisionNumber"];
    }
    if (_json.containsKey("updateAction")) {
      updateAction = _json["updateAction"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (deals != null) {
      _json["deals"] = deals.map((value) => (value).toJson()).toList();
    }
    if (order != null) {
      _json["order"] = (order).toJson();
    }
    if (orderRevisionNumber != null) {
      _json["orderRevisionNumber"] = orderRevisionNumber;
    }
    if (updateAction != null) {
      _json["updateAction"] = updateAction;
    }
    return _json;
  }
}

class EditAllOrderDealsResponse {
  /** List of all deals in the order after edit. */
  core.List<MarketplaceDeal> deals;

  EditAllOrderDealsResponse();

  EditAllOrderDealsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("deals")) {
      deals = _json["deals"].map((value) => new MarketplaceDeal.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (deals != null) {
      _json["deals"] = deals.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class EditHistoryDto {
  core.String createdByLoginName;
  core.String createdTimeStamp;
  core.String lastUpdateTimeStamp;
  core.String lastUpdatedByLoginName;

  EditHistoryDto();

  EditHistoryDto.fromJson(core.Map _json) {
    if (_json.containsKey("createdByLoginName")) {
      createdByLoginName = _json["createdByLoginName"];
    }
    if (_json.containsKey("createdTimeStamp")) {
      createdTimeStamp = _json["createdTimeStamp"];
    }
    if (_json.containsKey("lastUpdateTimeStamp")) {
      lastUpdateTimeStamp = _json["lastUpdateTimeStamp"];
    }
    if (_json.containsKey("lastUpdatedByLoginName")) {
      lastUpdatedByLoginName = _json["lastUpdatedByLoginName"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (createdByLoginName != null) {
      _json["createdByLoginName"] = createdByLoginName;
    }
    if (createdTimeStamp != null) {
      _json["createdTimeStamp"] = createdTimeStamp;
    }
    if (lastUpdateTimeStamp != null) {
      _json["lastUpdateTimeStamp"] = lastUpdateTimeStamp;
    }
    if (lastUpdatedByLoginName != null) {
      _json["lastUpdatedByLoginName"] = lastUpdatedByLoginName;
    }
    return _json;
  }
}

class GetFinalizedNegotiationByExternalDealIdRequest {
  core.bool includePrivateAuctions;

  GetFinalizedNegotiationByExternalDealIdRequest();

  GetFinalizedNegotiationByExternalDealIdRequest.fromJson(core.Map _json) {
    if (_json.containsKey("includePrivateAuctions")) {
      includePrivateAuctions = _json["includePrivateAuctions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (includePrivateAuctions != null) {
      _json["includePrivateAuctions"] = includePrivateAuctions;
    }
    return _json;
  }
}

class GetNegotiationByIdRequest {
  core.bool includePrivateAuctions;

  GetNegotiationByIdRequest();

  GetNegotiationByIdRequest.fromJson(core.Map _json) {
    if (_json.containsKey("includePrivateAuctions")) {
      includePrivateAuctions = _json["includePrivateAuctions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (includePrivateAuctions != null) {
      _json["includePrivateAuctions"] = includePrivateAuctions;
    }
    return _json;
  }
}

class GetNegotiationsRequest {
  core.bool finalized;
  core.bool includePrivateAuctions;
  core.String sinceTimestampMillis;

  GetNegotiationsRequest();

  GetNegotiationsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("finalized")) {
      finalized = _json["finalized"];
    }
    if (_json.containsKey("includePrivateAuctions")) {
      includePrivateAuctions = _json["includePrivateAuctions"];
    }
    if (_json.containsKey("sinceTimestampMillis")) {
      sinceTimestampMillis = _json["sinceTimestampMillis"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (finalized != null) {
      _json["finalized"] = finalized;
    }
    if (includePrivateAuctions != null) {
      _json["includePrivateAuctions"] = includePrivateAuctions;
    }
    if (sinceTimestampMillis != null) {
      _json["sinceTimestampMillis"] = sinceTimestampMillis;
    }
    return _json;
  }
}

class GetNegotiationsResponse {
  core.String kind;
  core.List<NegotiationDto> negotiations;

  GetNegotiationsResponse();

  GetNegotiationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("negotiations")) {
      negotiations = _json["negotiations"].map((value) => new NegotiationDto.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (negotiations != null) {
      _json["negotiations"] = negotiations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class GetOffersResponse {
  /** The returned list of offers. */
  core.List<MarketplaceOffer> offers;

  GetOffersResponse();

  GetOffersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("offers")) {
      offers = _json["offers"].map((value) => new MarketplaceOffer.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (offers != null) {
      _json["offers"] = offers.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class GetOrderDealsResponse {
  /** List of deals for the order */
  core.List<MarketplaceDeal> deals;

  GetOrderDealsResponse();

  GetOrderDealsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("deals")) {
      deals = _json["deals"].map((value) => new MarketplaceDeal.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (deals != null) {
      _json["deals"] = deals.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class GetOrderNotesResponse {
  /** The list of matching notes. */
  core.List<MarketplaceNote> notes;

  GetOrderNotesResponse();

  GetOrderNotesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("notes")) {
      notes = _json["notes"].map((value) => new MarketplaceNote.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (notes != null) {
      _json["notes"] = notes.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class GetOrdersResponse {
  /** The list of matching orders. */
  core.List<MarketplaceOrder> orders;

  GetOrdersResponse();

  GetOrdersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("orders")) {
      orders = _json["orders"].map((value) => new MarketplaceOrder.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (orders != null) {
      _json["orders"] = orders.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class InventorySegmentTargeting {
  core.List<AdSize> negativeAdSizes;
  core.List<core.String> negativeAdTypeSegments;
  core.List<core.String> negativeAudienceSegments;
  core.List<core.String> negativeDeviceCategories;
  core.List<core.String> negativeIcmBrands;
  core.List<core.String> negativeIcmInterests;
  core.List<core.String> negativeInventorySlots;
  core.List<RuleKeyValuePair> negativeKeyValues;
  core.List<core.String> negativeLocations;
  core.List<core.String> negativeMobileApps;
  core.List<core.String> negativeOperatingSystemVersions;
  core.List<core.String> negativeOperatingSystems;
  core.List<core.String> negativeSiteUrls;
  core.List<core.String> negativeSizes;
  core.List<core.String> negativeVideoAdPositionSegments;
  core.List<core.String> negativeVideoDurationSegments;
  core.List<core.String> negativeXfpAdSlots;
  core.List<core.String> negativeXfpPlacements;
  core.List<AdSize> positiveAdSizes;
  core.List<core.String> positiveAdTypeSegments;
  core.List<core.String> positiveAudienceSegments;
  core.List<core.String> positiveDeviceCategories;
  core.List<core.String> positiveIcmBrands;
  core.List<core.String> positiveIcmInterests;
  core.List<core.String> positiveInventorySlots;
  core.List<RuleKeyValuePair> positiveKeyValues;
  core.List<core.String> positiveLocations;
  core.List<core.String> positiveMobileApps;
  core.List<core.String> positiveOperatingSystemVersions;
  core.List<core.String> positiveOperatingSystems;
  core.List<core.String> positiveSiteUrls;
  core.List<core.String> positiveSizes;
  core.List<core.String> positiveVideoAdPositionSegments;
  core.List<core.String> positiveVideoDurationSegments;
  core.List<core.String> positiveXfpAdSlots;
  core.List<core.String> positiveXfpPlacements;

  InventorySegmentTargeting();

  InventorySegmentTargeting.fromJson(core.Map _json) {
    if (_json.containsKey("negativeAdSizes")) {
      negativeAdSizes = _json["negativeAdSizes"].map((value) => new AdSize.fromJson(value)).toList();
    }
    if (_json.containsKey("negativeAdTypeSegments")) {
      negativeAdTypeSegments = _json["negativeAdTypeSegments"];
    }
    if (_json.containsKey("negativeAudienceSegments")) {
      negativeAudienceSegments = _json["negativeAudienceSegments"];
    }
    if (_json.containsKey("negativeDeviceCategories")) {
      negativeDeviceCategories = _json["negativeDeviceCategories"];
    }
    if (_json.containsKey("negativeIcmBrands")) {
      negativeIcmBrands = _json["negativeIcmBrands"];
    }
    if (_json.containsKey("negativeIcmInterests")) {
      negativeIcmInterests = _json["negativeIcmInterests"];
    }
    if (_json.containsKey("negativeInventorySlots")) {
      negativeInventorySlots = _json["negativeInventorySlots"];
    }
    if (_json.containsKey("negativeKeyValues")) {
      negativeKeyValues = _json["negativeKeyValues"].map((value) => new RuleKeyValuePair.fromJson(value)).toList();
    }
    if (_json.containsKey("negativeLocations")) {
      negativeLocations = _json["negativeLocations"];
    }
    if (_json.containsKey("negativeMobileApps")) {
      negativeMobileApps = _json["negativeMobileApps"];
    }
    if (_json.containsKey("negativeOperatingSystemVersions")) {
      negativeOperatingSystemVersions = _json["negativeOperatingSystemVersions"];
    }
    if (_json.containsKey("negativeOperatingSystems")) {
      negativeOperatingSystems = _json["negativeOperatingSystems"];
    }
    if (_json.containsKey("negativeSiteUrls")) {
      negativeSiteUrls = _json["negativeSiteUrls"];
    }
    if (_json.containsKey("negativeSizes")) {
      negativeSizes = _json["negativeSizes"];
    }
    if (_json.containsKey("negativeVideoAdPositionSegments")) {
      negativeVideoAdPositionSegments = _json["negativeVideoAdPositionSegments"];
    }
    if (_json.containsKey("negativeVideoDurationSegments")) {
      negativeVideoDurationSegments = _json["negativeVideoDurationSegments"];
    }
    if (_json.containsKey("negativeXfpAdSlots")) {
      negativeXfpAdSlots = _json["negativeXfpAdSlots"];
    }
    if (_json.containsKey("negativeXfpPlacements")) {
      negativeXfpPlacements = _json["negativeXfpPlacements"];
    }
    if (_json.containsKey("positiveAdSizes")) {
      positiveAdSizes = _json["positiveAdSizes"].map((value) => new AdSize.fromJson(value)).toList();
    }
    if (_json.containsKey("positiveAdTypeSegments")) {
      positiveAdTypeSegments = _json["positiveAdTypeSegments"];
    }
    if (_json.containsKey("positiveAudienceSegments")) {
      positiveAudienceSegments = _json["positiveAudienceSegments"];
    }
    if (_json.containsKey("positiveDeviceCategories")) {
      positiveDeviceCategories = _json["positiveDeviceCategories"];
    }
    if (_json.containsKey("positiveIcmBrands")) {
      positiveIcmBrands = _json["positiveIcmBrands"];
    }
    if (_json.containsKey("positiveIcmInterests")) {
      positiveIcmInterests = _json["positiveIcmInterests"];
    }
    if (_json.containsKey("positiveInventorySlots")) {
      positiveInventorySlots = _json["positiveInventorySlots"];
    }
    if (_json.containsKey("positiveKeyValues")) {
      positiveKeyValues = _json["positiveKeyValues"].map((value) => new RuleKeyValuePair.fromJson(value)).toList();
    }
    if (_json.containsKey("positiveLocations")) {
      positiveLocations = _json["positiveLocations"];
    }
    if (_json.containsKey("positiveMobileApps")) {
      positiveMobileApps = _json["positiveMobileApps"];
    }
    if (_json.containsKey("positiveOperatingSystemVersions")) {
      positiveOperatingSystemVersions = _json["positiveOperatingSystemVersions"];
    }
    if (_json.containsKey("positiveOperatingSystems")) {
      positiveOperatingSystems = _json["positiveOperatingSystems"];
    }
    if (_json.containsKey("positiveSiteUrls")) {
      positiveSiteUrls = _json["positiveSiteUrls"];
    }
    if (_json.containsKey("positiveSizes")) {
      positiveSizes = _json["positiveSizes"];
    }
    if (_json.containsKey("positiveVideoAdPositionSegments")) {
      positiveVideoAdPositionSegments = _json["positiveVideoAdPositionSegments"];
    }
    if (_json.containsKey("positiveVideoDurationSegments")) {
      positiveVideoDurationSegments = _json["positiveVideoDurationSegments"];
    }
    if (_json.containsKey("positiveXfpAdSlots")) {
      positiveXfpAdSlots = _json["positiveXfpAdSlots"];
    }
    if (_json.containsKey("positiveXfpPlacements")) {
      positiveXfpPlacements = _json["positiveXfpPlacements"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (negativeAdSizes != null) {
      _json["negativeAdSizes"] = negativeAdSizes.map((value) => (value).toJson()).toList();
    }
    if (negativeAdTypeSegments != null) {
      _json["negativeAdTypeSegments"] = negativeAdTypeSegments;
    }
    if (negativeAudienceSegments != null) {
      _json["negativeAudienceSegments"] = negativeAudienceSegments;
    }
    if (negativeDeviceCategories != null) {
      _json["negativeDeviceCategories"] = negativeDeviceCategories;
    }
    if (negativeIcmBrands != null) {
      _json["negativeIcmBrands"] = negativeIcmBrands;
    }
    if (negativeIcmInterests != null) {
      _json["negativeIcmInterests"] = negativeIcmInterests;
    }
    if (negativeInventorySlots != null) {
      _json["negativeInventorySlots"] = negativeInventorySlots;
    }
    if (negativeKeyValues != null) {
      _json["negativeKeyValues"] = negativeKeyValues.map((value) => (value).toJson()).toList();
    }
    if (negativeLocations != null) {
      _json["negativeLocations"] = negativeLocations;
    }
    if (negativeMobileApps != null) {
      _json["negativeMobileApps"] = negativeMobileApps;
    }
    if (negativeOperatingSystemVersions != null) {
      _json["negativeOperatingSystemVersions"] = negativeOperatingSystemVersions;
    }
    if (negativeOperatingSystems != null) {
      _json["negativeOperatingSystems"] = negativeOperatingSystems;
    }
    if (negativeSiteUrls != null) {
      _json["negativeSiteUrls"] = negativeSiteUrls;
    }
    if (negativeSizes != null) {
      _json["negativeSizes"] = negativeSizes;
    }
    if (negativeVideoAdPositionSegments != null) {
      _json["negativeVideoAdPositionSegments"] = negativeVideoAdPositionSegments;
    }
    if (negativeVideoDurationSegments != null) {
      _json["negativeVideoDurationSegments"] = negativeVideoDurationSegments;
    }
    if (negativeXfpAdSlots != null) {
      _json["negativeXfpAdSlots"] = negativeXfpAdSlots;
    }
    if (negativeXfpPlacements != null) {
      _json["negativeXfpPlacements"] = negativeXfpPlacements;
    }
    if (positiveAdSizes != null) {
      _json["positiveAdSizes"] = positiveAdSizes.map((value) => (value).toJson()).toList();
    }
    if (positiveAdTypeSegments != null) {
      _json["positiveAdTypeSegments"] = positiveAdTypeSegments;
    }
    if (positiveAudienceSegments != null) {
      _json["positiveAudienceSegments"] = positiveAudienceSegments;
    }
    if (positiveDeviceCategories != null) {
      _json["positiveDeviceCategories"] = positiveDeviceCategories;
    }
    if (positiveIcmBrands != null) {
      _json["positiveIcmBrands"] = positiveIcmBrands;
    }
    if (positiveIcmInterests != null) {
      _json["positiveIcmInterests"] = positiveIcmInterests;
    }
    if (positiveInventorySlots != null) {
      _json["positiveInventorySlots"] = positiveInventorySlots;
    }
    if (positiveKeyValues != null) {
      _json["positiveKeyValues"] = positiveKeyValues.map((value) => (value).toJson()).toList();
    }
    if (positiveLocations != null) {
      _json["positiveLocations"] = positiveLocations;
    }
    if (positiveMobileApps != null) {
      _json["positiveMobileApps"] = positiveMobileApps;
    }
    if (positiveOperatingSystemVersions != null) {
      _json["positiveOperatingSystemVersions"] = positiveOperatingSystemVersions;
    }
    if (positiveOperatingSystems != null) {
      _json["positiveOperatingSystems"] = positiveOperatingSystems;
    }
    if (positiveSiteUrls != null) {
      _json["positiveSiteUrls"] = positiveSiteUrls;
    }
    if (positiveSizes != null) {
      _json["positiveSizes"] = positiveSizes;
    }
    if (positiveVideoAdPositionSegments != null) {
      _json["positiveVideoAdPositionSegments"] = positiveVideoAdPositionSegments;
    }
    if (positiveVideoDurationSegments != null) {
      _json["positiveVideoDurationSegments"] = positiveVideoDurationSegments;
    }
    if (positiveXfpAdSlots != null) {
      _json["positiveXfpAdSlots"] = positiveXfpAdSlots;
    }
    if (positiveXfpPlacements != null) {
      _json["positiveXfpPlacements"] = positiveXfpPlacements;
    }
    return _json;
  }
}

class ListClientAccessCapabilitiesRequest {
  core.String sponsorAccountId;

  ListClientAccessCapabilitiesRequest();

  ListClientAccessCapabilitiesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("sponsorAccountId")) {
      sponsorAccountId = _json["sponsorAccountId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (sponsorAccountId != null) {
      _json["sponsorAccountId"] = sponsorAccountId;
    }
    return _json;
  }
}

class ListClientAccessCapabilitiesResponse {
  core.List<ClientAccessCapabilities> clientAccessPermissions;

  ListClientAccessCapabilitiesResponse();

  ListClientAccessCapabilitiesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("clientAccessPermissions")) {
      clientAccessPermissions = _json["clientAccessPermissions"].map((value) => new ClientAccessCapabilities.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (clientAccessPermissions != null) {
      _json["clientAccessPermissions"] = clientAccessPermissions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ListOffersRequest {
  core.String sinceTimestampMillis;

  ListOffersRequest();

  ListOffersRequest.fromJson(core.Map _json) {
    if (_json.containsKey("sinceTimestampMillis")) {
      sinceTimestampMillis = _json["sinceTimestampMillis"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (sinceTimestampMillis != null) {
      _json["sinceTimestampMillis"] = sinceTimestampMillis;
    }
    return _json;
  }
}

class ListOffersResponse {
  core.String kind;
  core.List<OfferDto> offers;

  ListOffersResponse();

  ListOffersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("offers")) {
      offers = _json["offers"].map((value) => new OfferDto.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (offers != null) {
      _json["offers"] = offers.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/**
 * An order can contain multiple deals. A deal contains the terms and targeting
 * information that is used for serving.
 */
class MarketplaceDeal {
  /** Buyer private data (hidden from seller). */
  PrivateData buyerPrivateData;
  /** The time (ms since epoch) of the deal creation. (readonly) */
  core.String creationTimeMs;
  /** A unique deal=id for the deal (readonly). */
  core.String dealId;
  /**
   * The set of fields around delivery control that are interesting for a buyer
   * to see but are non-negotiable. These are set by the publisher. This message
   * is assigned an id of 100 since some day we would want to model this as a
   * protobuf extension.
   */
  DeliveryControl deliveryControl;
  /**
   * The external deal id assigned to this deal once the deal is finalized. This
   * is the deal-id that shows up in serving/reporting etc. (readonly)
   */
  core.String externalDealId;
  /**
   * Proposed flight end time of the deal (ms since epoch) This will generally
   * be stored in a granularity of a second. (updatable)
   */
  core.String flightEndTimeMs;
  /**
   * Proposed flight start time of the deal (ms since epoch) This will generally
   * be stored in a granularity of a second. (updatable)
   */
  core.String flightStartTimeMs;
  /** Description for the deal terms. (updatable) */
  core.String inventoryDescription;
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "adexchangebuyer#marketplaceDeal".
   */
  core.String kind;
  /** The time (ms since epoch) when the deal was last updated. (readonly) */
  core.String lastUpdateTimeMs;
  /** The name of the deal. (updatable) */
  core.String name;
  /**
   * The offer-id from which this deal was created. (readonly, except on create)
   */
  core.String offerId;
  /**
   * The revision number of the offer that the deal was created from (readonly,
   * except on create)
   */
  core.String offerRevisionNumber;
  core.String orderId;
  /** Optional Seller contact information for the deal (buyer-readonly) */
  core.List<ContactInformation> sellerContacts;
  /** The shared targeting visible to buyers and sellers. (updatable) */
  core.List<SharedTargeting> sharedTargetings;
  /**
   * The syndication product associated with the deal. (readonly, except on
   * create)
   */
  core.String syndicationProduct;
  /** The negotiable terms of the deal. (updatable) */
  DealTerms terms;
  core.String webPropertyCode;

  MarketplaceDeal();

  MarketplaceDeal.fromJson(core.Map _json) {
    if (_json.containsKey("buyerPrivateData")) {
      buyerPrivateData = new PrivateData.fromJson(_json["buyerPrivateData"]);
    }
    if (_json.containsKey("creationTimeMs")) {
      creationTimeMs = _json["creationTimeMs"];
    }
    if (_json.containsKey("dealId")) {
      dealId = _json["dealId"];
    }
    if (_json.containsKey("deliveryControl")) {
      deliveryControl = new DeliveryControl.fromJson(_json["deliveryControl"]);
    }
    if (_json.containsKey("externalDealId")) {
      externalDealId = _json["externalDealId"];
    }
    if (_json.containsKey("flightEndTimeMs")) {
      flightEndTimeMs = _json["flightEndTimeMs"];
    }
    if (_json.containsKey("flightStartTimeMs")) {
      flightStartTimeMs = _json["flightStartTimeMs"];
    }
    if (_json.containsKey("inventoryDescription")) {
      inventoryDescription = _json["inventoryDescription"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("lastUpdateTimeMs")) {
      lastUpdateTimeMs = _json["lastUpdateTimeMs"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("offerId")) {
      offerId = _json["offerId"];
    }
    if (_json.containsKey("offerRevisionNumber")) {
      offerRevisionNumber = _json["offerRevisionNumber"];
    }
    if (_json.containsKey("orderId")) {
      orderId = _json["orderId"];
    }
    if (_json.containsKey("sellerContacts")) {
      sellerContacts = _json["sellerContacts"].map((value) => new ContactInformation.fromJson(value)).toList();
    }
    if (_json.containsKey("sharedTargetings")) {
      sharedTargetings = _json["sharedTargetings"].map((value) => new SharedTargeting.fromJson(value)).toList();
    }
    if (_json.containsKey("syndicationProduct")) {
      syndicationProduct = _json["syndicationProduct"];
    }
    if (_json.containsKey("terms")) {
      terms = new DealTerms.fromJson(_json["terms"]);
    }
    if (_json.containsKey("webPropertyCode")) {
      webPropertyCode = _json["webPropertyCode"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (buyerPrivateData != null) {
      _json["buyerPrivateData"] = (buyerPrivateData).toJson();
    }
    if (creationTimeMs != null) {
      _json["creationTimeMs"] = creationTimeMs;
    }
    if (dealId != null) {
      _json["dealId"] = dealId;
    }
    if (deliveryControl != null) {
      _json["deliveryControl"] = (deliveryControl).toJson();
    }
    if (externalDealId != null) {
      _json["externalDealId"] = externalDealId;
    }
    if (flightEndTimeMs != null) {
      _json["flightEndTimeMs"] = flightEndTimeMs;
    }
    if (flightStartTimeMs != null) {
      _json["flightStartTimeMs"] = flightStartTimeMs;
    }
    if (inventoryDescription != null) {
      _json["inventoryDescription"] = inventoryDescription;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (lastUpdateTimeMs != null) {
      _json["lastUpdateTimeMs"] = lastUpdateTimeMs;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (offerId != null) {
      _json["offerId"] = offerId;
    }
    if (offerRevisionNumber != null) {
      _json["offerRevisionNumber"] = offerRevisionNumber;
    }
    if (orderId != null) {
      _json["orderId"] = orderId;
    }
    if (sellerContacts != null) {
      _json["sellerContacts"] = sellerContacts.map((value) => (value).toJson()).toList();
    }
    if (sharedTargetings != null) {
      _json["sharedTargetings"] = sharedTargetings.map((value) => (value).toJson()).toList();
    }
    if (syndicationProduct != null) {
      _json["syndicationProduct"] = syndicationProduct;
    }
    if (terms != null) {
      _json["terms"] = (terms).toJson();
    }
    if (webPropertyCode != null) {
      _json["webPropertyCode"] = webPropertyCode;
    }
    return _json;
  }
}

class MarketplaceDealParty {
  /**
   * The buyer/seller associated with the deal. One of buyer/seller is specified
   * for a deal-party.
   */
  Buyer buyer;
  /**
   * The buyer/seller associated with the deal. One of buyer/seller is specified
   * for a deal party.
   */
  Seller seller;

  MarketplaceDealParty();

  MarketplaceDealParty.fromJson(core.Map _json) {
    if (_json.containsKey("buyer")) {
      buyer = new Buyer.fromJson(_json["buyer"]);
    }
    if (_json.containsKey("seller")) {
      seller = new Seller.fromJson(_json["seller"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (buyer != null) {
      _json["buyer"] = (buyer).toJson();
    }
    if (seller != null) {
      _json["seller"] = (seller).toJson();
    }
    return _json;
  }
}

class MarketplaceLabel {
  /** The accountId of the party that created the label. */
  core.String accountId;
  /** The creation time (in ms since epoch) for the label. */
  core.String createTimeMs;
  /** Information about the party that created the label. */
  MarketplaceDealParty deprecatedMarketplaceDealParty;
  /** The label to use. */
  core.String label;

  MarketplaceLabel();

  MarketplaceLabel.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("createTimeMs")) {
      createTimeMs = _json["createTimeMs"];
    }
    if (_json.containsKey("deprecatedMarketplaceDealParty")) {
      deprecatedMarketplaceDealParty = new MarketplaceDealParty.fromJson(_json["deprecatedMarketplaceDealParty"]);
    }
    if (_json.containsKey("label")) {
      label = _json["label"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (createTimeMs != null) {
      _json["createTimeMs"] = createTimeMs;
    }
    if (deprecatedMarketplaceDealParty != null) {
      _json["deprecatedMarketplaceDealParty"] = (deprecatedMarketplaceDealParty).toJson();
    }
    if (label != null) {
      _json["label"] = label;
    }
    return _json;
  }
}

/**
 * An order is associated with a bunch of notes which may optionally be
 * associated with a deal and/or revision number.
 */
class MarketplaceNote {
  /** The role of the person (buyer/seller) creating the note. (readonly) */
  core.String creatorRole;
  /**
   * Notes can optionally be associated with a deal. (readonly, except on
   * create)
   */
  core.String dealId;
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "adexchangebuyer#marketplaceNote".
   */
  core.String kind;
  /** The actual note to attach. (readonly, except on create) */
  core.String note;
  /** The unique id for the note. (readonly) */
  core.String noteId;
  /** The order_id that a note is attached to. (readonly) */
  core.String orderId;
  /**
   * If the note is associated with an order revision number, then store that
   * here. (readonly, except on create)
   */
  core.String orderRevisionNumber;
  /** The timestamp (ms since epoch) that this note was created. (readonly) */
  core.String timestampMs;

  MarketplaceNote();

  MarketplaceNote.fromJson(core.Map _json) {
    if (_json.containsKey("creatorRole")) {
      creatorRole = _json["creatorRole"];
    }
    if (_json.containsKey("dealId")) {
      dealId = _json["dealId"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("note")) {
      note = _json["note"];
    }
    if (_json.containsKey("noteId")) {
      noteId = _json["noteId"];
    }
    if (_json.containsKey("orderId")) {
      orderId = _json["orderId"];
    }
    if (_json.containsKey("orderRevisionNumber")) {
      orderRevisionNumber = _json["orderRevisionNumber"];
    }
    if (_json.containsKey("timestampMs")) {
      timestampMs = _json["timestampMs"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creatorRole != null) {
      _json["creatorRole"] = creatorRole;
    }
    if (dealId != null) {
      _json["dealId"] = dealId;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (note != null) {
      _json["note"] = note;
    }
    if (noteId != null) {
      _json["noteId"] = noteId;
    }
    if (orderId != null) {
      _json["orderId"] = orderId;
    }
    if (orderRevisionNumber != null) {
      _json["orderRevisionNumber"] = orderRevisionNumber;
    }
    if (timestampMs != null) {
      _json["timestampMs"] = timestampMs;
    }
    return _json;
  }
}

/**
 * An offer is segment of inventory that a seller wishes to sell. It is
 * associated with certain terms and targeting information which helps buyer
 * know more about the inventory. Each field in an order can have one of the
 * following setting:
 *
 * (readonly) - It is an error to try and set this field. (buyer-readonly) -
 * Only the seller can set this field. (seller-readonly) - Only the buyer can
 * set this field. (updatable) - The field is updatable at all times by either
 * buyer or the seller.
 */
class MarketplaceOffer {
  /** Creation time in ms. since epoch (readonly) */
  core.String creationTimeMs;
  /**
   * Optional contact information for the creator of this offer.
   * (buyer-readonly)
   */
  core.List<ContactInformation> creatorContacts;
  /** The proposed end time for the deal (ms since epoch) (buyer-readonly) */
  core.String flightEndTimeMs;
  /**
   * Inventory availability dates. (times are in ms since epoch) The granularity
   * is generally in the order of seconds. (buyer-readonly)
   */
  core.String flightStartTimeMs;
  /**
   * If the creator has already signed off on the offer, then the buyer can
   * finalize the deal by accepting the offer as is. When copying to an order,
   * if any of the terms are changed, then auto_finalize is automatically set to
   * false.
   */
  core.bool hasCreatorSignedOff;
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "adexchangebuyer#marketplaceOffer".
   */
  core.String kind;
  /** Optional List of labels for the offer (optional, buyer-readonly). */
  core.List<MarketplaceLabel> labels;
  /** Time of last update in ms. since epoch (readonly) */
  core.String lastUpdateTimeMs;
  /** The name for this offer as set by the seller. (buyer-readonly) */
  core.String name;
  /** The unique id for the offer (readonly) */
  core.String offerId;
  /** The revision number of the offer. (readonly) */
  core.String revisionNumber;
  /**
   * Information about the seller that created this offer (readonly, except on
   * create)
   */
  Seller seller;
  /**
   * Targeting that is shared between the buyer and the seller. Each targeting
   * criteria has a specified key and for each key there is a list of inclusion
   * value or exclusion values. (buyer-readonly)
   */
  core.List<SharedTargeting> sharedTargetings;
  /** The state of the offer. (buyer-readonly) */
  core.String state;
  /**
   * The syndication product associated with the deal. (readonly, except on
   * create)
   */
  core.String syndicationProduct;
  /** The negotiable terms of the deal (buyer-readonly) */
  DealTerms terms;
  core.String webPropertyCode;

  MarketplaceOffer();

  MarketplaceOffer.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimeMs")) {
      creationTimeMs = _json["creationTimeMs"];
    }
    if (_json.containsKey("creatorContacts")) {
      creatorContacts = _json["creatorContacts"].map((value) => new ContactInformation.fromJson(value)).toList();
    }
    if (_json.containsKey("flightEndTimeMs")) {
      flightEndTimeMs = _json["flightEndTimeMs"];
    }
    if (_json.containsKey("flightStartTimeMs")) {
      flightStartTimeMs = _json["flightStartTimeMs"];
    }
    if (_json.containsKey("hasCreatorSignedOff")) {
      hasCreatorSignedOff = _json["hasCreatorSignedOff"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("labels")) {
      labels = _json["labels"].map((value) => new MarketplaceLabel.fromJson(value)).toList();
    }
    if (_json.containsKey("lastUpdateTimeMs")) {
      lastUpdateTimeMs = _json["lastUpdateTimeMs"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("offerId")) {
      offerId = _json["offerId"];
    }
    if (_json.containsKey("revisionNumber")) {
      revisionNumber = _json["revisionNumber"];
    }
    if (_json.containsKey("seller")) {
      seller = new Seller.fromJson(_json["seller"]);
    }
    if (_json.containsKey("sharedTargetings")) {
      sharedTargetings = _json["sharedTargetings"].map((value) => new SharedTargeting.fromJson(value)).toList();
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("syndicationProduct")) {
      syndicationProduct = _json["syndicationProduct"];
    }
    if (_json.containsKey("terms")) {
      terms = new DealTerms.fromJson(_json["terms"]);
    }
    if (_json.containsKey("webPropertyCode")) {
      webPropertyCode = _json["webPropertyCode"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimeMs != null) {
      _json["creationTimeMs"] = creationTimeMs;
    }
    if (creatorContacts != null) {
      _json["creatorContacts"] = creatorContacts.map((value) => (value).toJson()).toList();
    }
    if (flightEndTimeMs != null) {
      _json["flightEndTimeMs"] = flightEndTimeMs;
    }
    if (flightStartTimeMs != null) {
      _json["flightStartTimeMs"] = flightStartTimeMs;
    }
    if (hasCreatorSignedOff != null) {
      _json["hasCreatorSignedOff"] = hasCreatorSignedOff;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (labels != null) {
      _json["labels"] = labels.map((value) => (value).toJson()).toList();
    }
    if (lastUpdateTimeMs != null) {
      _json["lastUpdateTimeMs"] = lastUpdateTimeMs;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (offerId != null) {
      _json["offerId"] = offerId;
    }
    if (revisionNumber != null) {
      _json["revisionNumber"] = revisionNumber;
    }
    if (seller != null) {
      _json["seller"] = (seller).toJson();
    }
    if (sharedTargetings != null) {
      _json["sharedTargetings"] = sharedTargetings.map((value) => (value).toJson()).toList();
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (syndicationProduct != null) {
      _json["syndicationProduct"] = syndicationProduct;
    }
    if (terms != null) {
      _json["terms"] = (terms).toJson();
    }
    if (webPropertyCode != null) {
      _json["webPropertyCode"] = webPropertyCode;
    }
    return _json;
  }
}

/**
 * Represents an order in the marketplace. An order is the unit of negotiation
 * between a seller and a buyer and contains deals which are served. Each field
 * in an order can have one of the following setting:
 *
 * (readonly) - It is an error to try and set this field. (buyer-readonly) -
 * Only the seller can set this field. (seller-readonly) - Only the buyer can
 * set this field. (updatable) - The field is updatable at all times by either
 * buyer or the seller.
 */
class MarketplaceOrder {
  /** Reference to the buyer that will get billed for this order. (readonly) */
  Buyer billedBuyer;
  /** Reference to the buyer on the order. (readonly, except on create) */
  Buyer buyer;
  /** Optional contact information fort the buyer. (seller-readonly) */
  core.List<ContactInformation> buyerContacts;
  /** Private data for buyer. (hidden from seller). */
  PrivateData buyerPrivateData;
  /**
   * When an order is in an accepted state, indicates whether the buyer has
   * signed off Once both sides have signed off on a deal, the order can be
   * finalized by the seller. (seller-readonly)
   */
  core.bool hasBuyerSignedOff;
  /**
   * When an order is in an accepted state, indicates whether the buyer has
   * signed off Once both sides have signed off on a deal, the order can be
   * finalized by the seller. (buyer-readonly)
   */
  core.bool hasSellerSignedOff;
  /** True if the order is being renegotiated (readonly). */
  core.bool isRenegotiating;
  /**
   * True, if the buyside inventory setup is complete for this order. (readonly)
   */
  core.bool isSetupComplete;
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "adexchangebuyer#marketplaceOrder".
   */
  core.String kind;
  /** List of labels associated with the order. (readonly) */
  core.List<MarketplaceLabel> labels;
  /**
   * The role of the last user that either updated the order or left a comment.
   * (readonly)
   */
  core.String lastUpdaterOrCommentorRole;
  core.String lastUpdaterRole;
  /** The name for the order (updatable) */
  core.String name;
  /** The unique id of the order. (readonly). */
  core.String orderId;
  /** The current state of the order. (readonly) */
  core.String orderState;
  /** Indicates whether the buyer/seller created the offer.(readonly) */
  core.String originatorRole;
  /** The revision number for the order (readonly). */
  core.String revisionNumber;
  /** The time (ms since epoch) when the order was last revised (readonly). */
  core.String revisionTimeMs;
  /** Reference to the seller on the order. (readonly, except on create) */
  Seller seller;
  /** Optional contact information for the seller (buyer-readonly). */
  core.List<ContactInformation> sellerContacts;

  MarketplaceOrder();

  MarketplaceOrder.fromJson(core.Map _json) {
    if (_json.containsKey("billedBuyer")) {
      billedBuyer = new Buyer.fromJson(_json["billedBuyer"]);
    }
    if (_json.containsKey("buyer")) {
      buyer = new Buyer.fromJson(_json["buyer"]);
    }
    if (_json.containsKey("buyerContacts")) {
      buyerContacts = _json["buyerContacts"].map((value) => new ContactInformation.fromJson(value)).toList();
    }
    if (_json.containsKey("buyerPrivateData")) {
      buyerPrivateData = new PrivateData.fromJson(_json["buyerPrivateData"]);
    }
    if (_json.containsKey("hasBuyerSignedOff")) {
      hasBuyerSignedOff = _json["hasBuyerSignedOff"];
    }
    if (_json.containsKey("hasSellerSignedOff")) {
      hasSellerSignedOff = _json["hasSellerSignedOff"];
    }
    if (_json.containsKey("isRenegotiating")) {
      isRenegotiating = _json["isRenegotiating"];
    }
    if (_json.containsKey("isSetupComplete")) {
      isSetupComplete = _json["isSetupComplete"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("labels")) {
      labels = _json["labels"].map((value) => new MarketplaceLabel.fromJson(value)).toList();
    }
    if (_json.containsKey("lastUpdaterOrCommentorRole")) {
      lastUpdaterOrCommentorRole = _json["lastUpdaterOrCommentorRole"];
    }
    if (_json.containsKey("lastUpdaterRole")) {
      lastUpdaterRole = _json["lastUpdaterRole"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("orderId")) {
      orderId = _json["orderId"];
    }
    if (_json.containsKey("orderState")) {
      orderState = _json["orderState"];
    }
    if (_json.containsKey("originatorRole")) {
      originatorRole = _json["originatorRole"];
    }
    if (_json.containsKey("revisionNumber")) {
      revisionNumber = _json["revisionNumber"];
    }
    if (_json.containsKey("revisionTimeMs")) {
      revisionTimeMs = _json["revisionTimeMs"];
    }
    if (_json.containsKey("seller")) {
      seller = new Seller.fromJson(_json["seller"]);
    }
    if (_json.containsKey("sellerContacts")) {
      sellerContacts = _json["sellerContacts"].map((value) => new ContactInformation.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (billedBuyer != null) {
      _json["billedBuyer"] = (billedBuyer).toJson();
    }
    if (buyer != null) {
      _json["buyer"] = (buyer).toJson();
    }
    if (buyerContacts != null) {
      _json["buyerContacts"] = buyerContacts.map((value) => (value).toJson()).toList();
    }
    if (buyerPrivateData != null) {
      _json["buyerPrivateData"] = (buyerPrivateData).toJson();
    }
    if (hasBuyerSignedOff != null) {
      _json["hasBuyerSignedOff"] = hasBuyerSignedOff;
    }
    if (hasSellerSignedOff != null) {
      _json["hasSellerSignedOff"] = hasSellerSignedOff;
    }
    if (isRenegotiating != null) {
      _json["isRenegotiating"] = isRenegotiating;
    }
    if (isSetupComplete != null) {
      _json["isSetupComplete"] = isSetupComplete;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (labels != null) {
      _json["labels"] = labels.map((value) => (value).toJson()).toList();
    }
    if (lastUpdaterOrCommentorRole != null) {
      _json["lastUpdaterOrCommentorRole"] = lastUpdaterOrCommentorRole;
    }
    if (lastUpdaterRole != null) {
      _json["lastUpdaterRole"] = lastUpdaterRole;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (orderId != null) {
      _json["orderId"] = orderId;
    }
    if (orderState != null) {
      _json["orderState"] = orderState;
    }
    if (originatorRole != null) {
      _json["originatorRole"] = originatorRole;
    }
    if (revisionNumber != null) {
      _json["revisionNumber"] = revisionNumber;
    }
    if (revisionTimeMs != null) {
      _json["revisionTimeMs"] = revisionTimeMs;
    }
    if (seller != null) {
      _json["seller"] = (seller).toJson();
    }
    if (sellerContacts != null) {
      _json["sellerContacts"] = sellerContacts.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class MoneyDto {
  core.String currencyCode;
  core.String micros;

  MoneyDto();

  MoneyDto.fromJson(core.Map _json) {
    if (_json.containsKey("currencyCode")) {
      currencyCode = _json["currencyCode"];
    }
    if (_json.containsKey("micros")) {
      micros = _json["micros"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (currencyCode != null) {
      _json["currencyCode"] = currencyCode;
    }
    if (micros != null) {
      _json["micros"] = micros;
    }
    return _json;
  }
}

class NegotiationDto {
  /** The billed buyer; Specified by a buyer buying through an intermediary. */
  DealPartyDto billedBuyer;
  /** Details of the buyer party in this negotiation. */
  DealPartyDto buyer;
  /** The buyer party's contact email. */
  core.List<core.String> buyerEmailContacts;
  /** The type of this deal. */
  core.String dealType;
  /** For finalized negotiations, the ID of the finalized deal. */
  core.String externalDealId;
  core.String kind;
  /** A list of label names applicable to this negotiation. */
  core.List<core.String> labelNames;
  /** The unique ID of this negotiation. */
  core.String negotiationId;
  /** The series of negotiation rounds for this negotiation. */
  core.List<NegotiationRoundDto> negotiationRounds;
  /** The state of this negotiation. */
  core.String negotiationState;
  /** The ID of this negotiation's original offer. */
  core.String offerId;
  /** Details of the seller party in this negotiation. */
  DealPartyDto seller;
  /** The seller party's contact email. */
  core.List<core.String> sellerEmailContacts;
  /** The stats for this negotiation. */
  StatsDto stats;
  /** The status of this negotiation. */
  core.String status;

  NegotiationDto();

  NegotiationDto.fromJson(core.Map _json) {
    if (_json.containsKey("billedBuyer")) {
      billedBuyer = new DealPartyDto.fromJson(_json["billedBuyer"]);
    }
    if (_json.containsKey("buyer")) {
      buyer = new DealPartyDto.fromJson(_json["buyer"]);
    }
    if (_json.containsKey("buyerEmailContacts")) {
      buyerEmailContacts = _json["buyerEmailContacts"];
    }
    if (_json.containsKey("dealType")) {
      dealType = _json["dealType"];
    }
    if (_json.containsKey("externalDealId")) {
      externalDealId = _json["externalDealId"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("labelNames")) {
      labelNames = _json["labelNames"];
    }
    if (_json.containsKey("negotiationId")) {
      negotiationId = _json["negotiationId"];
    }
    if (_json.containsKey("negotiationRounds")) {
      negotiationRounds = _json["negotiationRounds"].map((value) => new NegotiationRoundDto.fromJson(value)).toList();
    }
    if (_json.containsKey("negotiationState")) {
      negotiationState = _json["negotiationState"];
    }
    if (_json.containsKey("offerId")) {
      offerId = _json["offerId"];
    }
    if (_json.containsKey("seller")) {
      seller = new DealPartyDto.fromJson(_json["seller"]);
    }
    if (_json.containsKey("sellerEmailContacts")) {
      sellerEmailContacts = _json["sellerEmailContacts"];
    }
    if (_json.containsKey("stats")) {
      stats = new StatsDto.fromJson(_json["stats"]);
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (billedBuyer != null) {
      _json["billedBuyer"] = (billedBuyer).toJson();
    }
    if (buyer != null) {
      _json["buyer"] = (buyer).toJson();
    }
    if (buyerEmailContacts != null) {
      _json["buyerEmailContacts"] = buyerEmailContacts;
    }
    if (dealType != null) {
      _json["dealType"] = dealType;
    }
    if (externalDealId != null) {
      _json["externalDealId"] = externalDealId;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (labelNames != null) {
      _json["labelNames"] = labelNames;
    }
    if (negotiationId != null) {
      _json["negotiationId"] = negotiationId;
    }
    if (negotiationRounds != null) {
      _json["negotiationRounds"] = negotiationRounds.map((value) => (value).toJson()).toList();
    }
    if (negotiationState != null) {
      _json["negotiationState"] = negotiationState;
    }
    if (offerId != null) {
      _json["offerId"] = offerId;
    }
    if (seller != null) {
      _json["seller"] = (seller).toJson();
    }
    if (sellerEmailContacts != null) {
      _json["sellerEmailContacts"] = sellerEmailContacts;
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

class NegotiationRoundDto {
  /** The action performed by this negotiation round. */
  core.String action;
  /** Stores DBM partner ID for use by DBM */
  core.String dbmPartnerId;
  /** The edit history of this negotiation round. */
  EditHistoryDto editHistory;
  core.String kind;
  /** The ID of the negotiation to which this negotiation round applies. */
  core.String negotiationId;
  /** Notes regarding this negotiation round. */
  core.String notes;
  /** The role, either buyer or seller, initiating this negotiation round. */
  core.String originatorRole;
  /** The number of this negotiation round, in sequence. */
  core.String roundNumber;
  /** The detailed terms proposed in this negotiation round. */
  TermsDto terms;

  NegotiationRoundDto();

  NegotiationRoundDto.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
    if (_json.containsKey("dbmPartnerId")) {
      dbmPartnerId = _json["dbmPartnerId"];
    }
    if (_json.containsKey("editHistory")) {
      editHistory = new EditHistoryDto.fromJson(_json["editHistory"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("negotiationId")) {
      negotiationId = _json["negotiationId"];
    }
    if (_json.containsKey("notes")) {
      notes = _json["notes"];
    }
    if (_json.containsKey("originatorRole")) {
      originatorRole = _json["originatorRole"];
    }
    if (_json.containsKey("roundNumber")) {
      roundNumber = _json["roundNumber"];
    }
    if (_json.containsKey("terms")) {
      terms = new TermsDto.fromJson(_json["terms"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (action != null) {
      _json["action"] = action;
    }
    if (dbmPartnerId != null) {
      _json["dbmPartnerId"] = dbmPartnerId;
    }
    if (editHistory != null) {
      _json["editHistory"] = (editHistory).toJson();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (negotiationId != null) {
      _json["negotiationId"] = negotiationId;
    }
    if (notes != null) {
      _json["notes"] = notes;
    }
    if (originatorRole != null) {
      _json["originatorRole"] = originatorRole;
    }
    if (roundNumber != null) {
      _json["roundNumber"] = roundNumber;
    }
    if (terms != null) {
      _json["terms"] = (terms).toJson();
    }
    return _json;
  }
}

class OfferDto {
  /** Whether this offer is anonymous. */
  core.bool anonymous;
  /**
   * The billed buyer; For buyer initiated offers, buying through an
   * intermediary.
   */
  DealPartyDto billedBuyer;
  /** The list of buyer or seller parties this offer is closed to. */
  core.List<DealPartyDto> closedToDealParties;
  /** The creator of this offer. */
  DealPartyDto creator;
  /** The list of email contacts for this offer. */
  core.List<core.String> emailContacts;
  /** Whether this offer is open. */
  core.bool isOpen;
  core.String kind;
  /** The list of label names applicable to this offer. */
  core.List<core.String> labelNames;
  /** The unique ID of this offer. */
  core.String offerId;
  /** The state of this offer. */
  core.String offerState;
  /** The list of buyer or seller parties this offer is open to. */
  core.List<DealPartyDto> openToDealParties;
  /** The point of contact for this offer. */
  core.String pointOfContact;
  /** The status of this offer. */
  core.String status;
  /** The terms of this offer. */
  TermsDto terms;

  OfferDto();

  OfferDto.fromJson(core.Map _json) {
    if (_json.containsKey("anonymous")) {
      anonymous = _json["anonymous"];
    }
    if (_json.containsKey("billedBuyer")) {
      billedBuyer = new DealPartyDto.fromJson(_json["billedBuyer"]);
    }
    if (_json.containsKey("closedToDealParties")) {
      closedToDealParties = _json["closedToDealParties"].map((value) => new DealPartyDto.fromJson(value)).toList();
    }
    if (_json.containsKey("creator")) {
      creator = new DealPartyDto.fromJson(_json["creator"]);
    }
    if (_json.containsKey("emailContacts")) {
      emailContacts = _json["emailContacts"];
    }
    if (_json.containsKey("isOpen")) {
      isOpen = _json["isOpen"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("labelNames")) {
      labelNames = _json["labelNames"];
    }
    if (_json.containsKey("offerId")) {
      offerId = _json["offerId"];
    }
    if (_json.containsKey("offerState")) {
      offerState = _json["offerState"];
    }
    if (_json.containsKey("openToDealParties")) {
      openToDealParties = _json["openToDealParties"].map((value) => new DealPartyDto.fromJson(value)).toList();
    }
    if (_json.containsKey("pointOfContact")) {
      pointOfContact = _json["pointOfContact"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("terms")) {
      terms = new TermsDto.fromJson(_json["terms"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (anonymous != null) {
      _json["anonymous"] = anonymous;
    }
    if (billedBuyer != null) {
      _json["billedBuyer"] = (billedBuyer).toJson();
    }
    if (closedToDealParties != null) {
      _json["closedToDealParties"] = closedToDealParties.map((value) => (value).toJson()).toList();
    }
    if (creator != null) {
      _json["creator"] = (creator).toJson();
    }
    if (emailContacts != null) {
      _json["emailContacts"] = emailContacts;
    }
    if (isOpen != null) {
      _json["isOpen"] = isOpen;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (labelNames != null) {
      _json["labelNames"] = labelNames;
    }
    if (offerId != null) {
      _json["offerId"] = offerId;
    }
    if (offerState != null) {
      _json["offerState"] = offerState;
    }
    if (openToDealParties != null) {
      _json["openToDealParties"] = openToDealParties.map((value) => (value).toJson()).toList();
    }
    if (pointOfContact != null) {
      _json["pointOfContact"] = pointOfContact;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (terms != null) {
      _json["terms"] = (terms).toJson();
    }
    return _json;
  }
}

/** The configuration data for an Ad Exchange performance report list. */
class PerformanceReport {
  /** The number of bid responses with an ad. */
  core.double bidRate;
  /** The number of bid requests sent to your bidder. */
  core.double bidRequestRate;
  /**
   * Rate of various prefiltering statuses per match. Please refer to the
   * callout-status-codes.txt file for different statuses.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.List<core.Object> calloutStatusRate;
  /**
   * Average QPS for cookie matcher operations.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.List<core.Object> cookieMatcherStatusRate;
  /**
   * Rate of ads with a given status. Please refer to the
   * creative-status-codes.txt file for different statuses.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.List<core.Object> creativeStatusRate;
  /**
   * The number of bid responses that were filtered due to a policy violation or
   * other errors.
   */
  core.double filteredBidRate;
  /**
   * Average QPS for hosted match operations.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.List<core.Object> hostedMatchStatusRate;
  /** The number of potential queries based on your pretargeting settings. */
  core.double inventoryMatchRate;
  /** Resource type. */
  core.String kind;
  /**
   * The 50th percentile round trip latency(ms) as perceived from Google servers
   * for the duration period covered by the report.
   */
  core.double latency50thPercentile;
  /**
   * The 85th percentile round trip latency(ms) as perceived from Google servers
   * for the duration period covered by the report.
   */
  core.double latency85thPercentile;
  /**
   * The 95th percentile round trip latency(ms) as perceived from Google servers
   * for the duration period covered by the report.
   */
  core.double latency95thPercentile;
  /** Rate of various quota account statuses per quota check. */
  core.double noQuotaInRegion;
  /** Rate of various quota account statuses per quota check. */
  core.double outOfQuota;
  /** Average QPS for pixel match requests from clients. */
  core.double pixelMatchRequests;
  /** Average QPS for pixel match responses from clients. */
  core.double pixelMatchResponses;
  /** The configured quota limits for this account. */
  core.double quotaConfiguredLimit;
  /** The throttled quota limits for this account. */
  core.double quotaThrottledLimit;
  /** The trading location of this data. */
  core.String region;
  /**
   * The number of properly formed bid responses received by our servers within
   * the deadline.
   */
  core.double successfulRequestRate;
  /** The unix timestamp of the starting time of this performance data. */
  core.String timestamp;
  /**
   * The number of bid responses that were unsuccessful due to timeouts,
   * incorrect formatting, etc.
   */
  core.double unsuccessfulRequestRate;

  PerformanceReport();

  PerformanceReport.fromJson(core.Map _json) {
    if (_json.containsKey("bidRate")) {
      bidRate = _json["bidRate"];
    }
    if (_json.containsKey("bidRequestRate")) {
      bidRequestRate = _json["bidRequestRate"];
    }
    if (_json.containsKey("calloutStatusRate")) {
      calloutStatusRate = _json["calloutStatusRate"];
    }
    if (_json.containsKey("cookieMatcherStatusRate")) {
      cookieMatcherStatusRate = _json["cookieMatcherStatusRate"];
    }
    if (_json.containsKey("creativeStatusRate")) {
      creativeStatusRate = _json["creativeStatusRate"];
    }
    if (_json.containsKey("filteredBidRate")) {
      filteredBidRate = _json["filteredBidRate"];
    }
    if (_json.containsKey("hostedMatchStatusRate")) {
      hostedMatchStatusRate = _json["hostedMatchStatusRate"];
    }
    if (_json.containsKey("inventoryMatchRate")) {
      inventoryMatchRate = _json["inventoryMatchRate"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("latency50thPercentile")) {
      latency50thPercentile = _json["latency50thPercentile"];
    }
    if (_json.containsKey("latency85thPercentile")) {
      latency85thPercentile = _json["latency85thPercentile"];
    }
    if (_json.containsKey("latency95thPercentile")) {
      latency95thPercentile = _json["latency95thPercentile"];
    }
    if (_json.containsKey("noQuotaInRegion")) {
      noQuotaInRegion = _json["noQuotaInRegion"];
    }
    if (_json.containsKey("outOfQuota")) {
      outOfQuota = _json["outOfQuota"];
    }
    if (_json.containsKey("pixelMatchRequests")) {
      pixelMatchRequests = _json["pixelMatchRequests"];
    }
    if (_json.containsKey("pixelMatchResponses")) {
      pixelMatchResponses = _json["pixelMatchResponses"];
    }
    if (_json.containsKey("quotaConfiguredLimit")) {
      quotaConfiguredLimit = _json["quotaConfiguredLimit"];
    }
    if (_json.containsKey("quotaThrottledLimit")) {
      quotaThrottledLimit = _json["quotaThrottledLimit"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("successfulRequestRate")) {
      successfulRequestRate = _json["successfulRequestRate"];
    }
    if (_json.containsKey("timestamp")) {
      timestamp = _json["timestamp"];
    }
    if (_json.containsKey("unsuccessfulRequestRate")) {
      unsuccessfulRequestRate = _json["unsuccessfulRequestRate"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bidRate != null) {
      _json["bidRate"] = bidRate;
    }
    if (bidRequestRate != null) {
      _json["bidRequestRate"] = bidRequestRate;
    }
    if (calloutStatusRate != null) {
      _json["calloutStatusRate"] = calloutStatusRate;
    }
    if (cookieMatcherStatusRate != null) {
      _json["cookieMatcherStatusRate"] = cookieMatcherStatusRate;
    }
    if (creativeStatusRate != null) {
      _json["creativeStatusRate"] = creativeStatusRate;
    }
    if (filteredBidRate != null) {
      _json["filteredBidRate"] = filteredBidRate;
    }
    if (hostedMatchStatusRate != null) {
      _json["hostedMatchStatusRate"] = hostedMatchStatusRate;
    }
    if (inventoryMatchRate != null) {
      _json["inventoryMatchRate"] = inventoryMatchRate;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (latency50thPercentile != null) {
      _json["latency50thPercentile"] = latency50thPercentile;
    }
    if (latency85thPercentile != null) {
      _json["latency85thPercentile"] = latency85thPercentile;
    }
    if (latency95thPercentile != null) {
      _json["latency95thPercentile"] = latency95thPercentile;
    }
    if (noQuotaInRegion != null) {
      _json["noQuotaInRegion"] = noQuotaInRegion;
    }
    if (outOfQuota != null) {
      _json["outOfQuota"] = outOfQuota;
    }
    if (pixelMatchRequests != null) {
      _json["pixelMatchRequests"] = pixelMatchRequests;
    }
    if (pixelMatchResponses != null) {
      _json["pixelMatchResponses"] = pixelMatchResponses;
    }
    if (quotaConfiguredLimit != null) {
      _json["quotaConfiguredLimit"] = quotaConfiguredLimit;
    }
    if (quotaThrottledLimit != null) {
      _json["quotaThrottledLimit"] = quotaThrottledLimit;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (successfulRequestRate != null) {
      _json["successfulRequestRate"] = successfulRequestRate;
    }
    if (timestamp != null) {
      _json["timestamp"] = timestamp;
    }
    if (unsuccessfulRequestRate != null) {
      _json["unsuccessfulRequestRate"] = unsuccessfulRequestRate;
    }
    return _json;
  }
}

/**
 * The configuration data for an Ad Exchange performance report list.
 * https://sites.google.com/a/google.com/adx-integration/Home/engineering/binary-releases/rtb-api-release
 * https://cs.corp.google.com/#piper///depot/google3/contentads/adx/tools/rtb_api/adxrtb.py
 */
class PerformanceReportList {
  /** Resource type. */
  core.String kind;
  /** A list of performance reports relevant for the account. */
  core.List<PerformanceReport> performanceReport;

  PerformanceReportList();

  PerformanceReportList.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("performanceReport")) {
      performanceReport = _json["performanceReport"].map((value) => new PerformanceReport.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (performanceReport != null) {
      _json["performanceReport"] = performanceReport.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class PretargetingConfigDimensions {
  /** Height in pixels. */
  core.String height;
  /** Width in pixels. */
  core.String width;

  PretargetingConfigDimensions();

  PretargetingConfigDimensions.fromJson(core.Map _json) {
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (height != null) {
      _json["height"] = height;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

class PretargetingConfigExcludedPlacements {
  /**
   * The value of the placement. Interpretation depends on the placement type,
   * e.g. URL for a site placement, channel name for a channel placement, app id
   * for a mobile app placement.
   */
  core.String token;
  /** The type of the placement. */
  core.String type;

  PretargetingConfigExcludedPlacements();

  PretargetingConfigExcludedPlacements.fromJson(core.Map _json) {
    if (_json.containsKey("token")) {
      token = _json["token"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (token != null) {
      _json["token"] = token;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

class PretargetingConfigPlacements {
  /**
   * The value of the placement. Interpretation depends on the placement type,
   * e.g. URL for a site placement, channel name for a channel placement, app id
   * for a mobile app placement.
   */
  core.String token;
  /** The type of the placement. */
  core.String type;

  PretargetingConfigPlacements();

  PretargetingConfigPlacements.fromJson(core.Map _json) {
    if (_json.containsKey("token")) {
      token = _json["token"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (token != null) {
      _json["token"] = token;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

class PretargetingConfig {
  /**
   * The id for billing purposes, provided for reference. Leave this field blank
   * for insert requests; the id will be generated automatically.
   */
  core.String billingId;
  /**
   * The config id; generated automatically. Leave this field blank for insert
   * requests.
   */
  core.String configId;
  /** The name of the config. Must be unique. Required for all requests. */
  core.String configName;
  /**
   * List must contain exactly one of PRETARGETING_CREATIVE_TYPE_HTML or
   * PRETARGETING_CREATIVE_TYPE_VIDEO.
   */
  core.List<core.String> creativeType;
  /**
   * Requests which allow one of these (width, height) pairs will match. All
   * pairs must be supported ad dimensions.
   */
  core.List<PretargetingConfigDimensions> dimensions;
  /**
   * Requests with any of these content labels will not match. Values are from
   * content-labels.txt in the downloadable files section.
   */
  core.List<core.String> excludedContentLabels;
  /** Requests containing any of these geo criteria ids will not match. */
  core.List<core.String> excludedGeoCriteriaIds;
  /** Requests containing any of these placements will not match. */
  core.List<PretargetingConfigExcludedPlacements> excludedPlacements;
  /** Requests containing any of these users list ids will not match. */
  core.List<core.String> excludedUserLists;
  /**
   * Requests containing any of these vertical ids will not match. Values are
   * from the publisher-verticals.txt file in the downloadable files section.
   */
  core.List<core.String> excludedVerticals;
  /** Requests containing any of these geo criteria ids will match. */
  core.List<core.String> geoCriteriaIds;
  /** Whether this config is active. Required for all requests. */
  core.bool isActive;
  /** The kind of the resource, i.e. "adexchangebuyer#pretargetingConfig". */
  core.String kind;
  /** Request containing any of these language codes will match. */
  core.List<core.String> languages;
  /**
   * Requests containing any of these mobile carrier ids will match. Values are
   * from mobile-carriers.csv in the downloadable files section.
   */
  core.List<core.String> mobileCarriers;
  /**
   * Requests containing any of these mobile device ids will match. Values are
   * from mobile-devices.csv in the downloadable files section.
   */
  core.List<core.String> mobileDevices;
  /**
   * Requests containing any of these mobile operating system version ids will
   * match. Values are from mobile-os.csv in the downloadable files section.
   */
  core.List<core.String> mobileOperatingSystemVersions;
  /** Requests containing any of these placements will match. */
  core.List<PretargetingConfigPlacements> placements;
  /**
   * Requests matching any of these platforms will match. Possible values are
   * PRETARGETING_PLATFORM_MOBILE, PRETARGETING_PLATFORM_DESKTOP, and
   * PRETARGETING_PLATFORM_TABLET.
   */
  core.List<core.String> platforms;
  /**
   * Creative attributes should be declared here if all creatives corresponding
   * to this pretargeting configuration have that creative attribute. Values are
   * from pretargetable-creative-attributes.txt in the downloadable files
   * section.
   */
  core.List<core.String> supportedCreativeAttributes;
  /** Requests containing any of these user list ids will match. */
  core.List<core.String> userLists;
  /**
   * Requests that allow any of these vendor ids will match. Values are from
   * vendors.txt in the downloadable files section.
   */
  core.List<core.String> vendorTypes;
  /** Requests containing any of these vertical ids will match. */
  core.List<core.String> verticals;

  PretargetingConfig();

  PretargetingConfig.fromJson(core.Map _json) {
    if (_json.containsKey("billingId")) {
      billingId = _json["billingId"];
    }
    if (_json.containsKey("configId")) {
      configId = _json["configId"];
    }
    if (_json.containsKey("configName")) {
      configName = _json["configName"];
    }
    if (_json.containsKey("creativeType")) {
      creativeType = _json["creativeType"];
    }
    if (_json.containsKey("dimensions")) {
      dimensions = _json["dimensions"].map((value) => new PretargetingConfigDimensions.fromJson(value)).toList();
    }
    if (_json.containsKey("excludedContentLabels")) {
      excludedContentLabels = _json["excludedContentLabels"];
    }
    if (_json.containsKey("excludedGeoCriteriaIds")) {
      excludedGeoCriteriaIds = _json["excludedGeoCriteriaIds"];
    }
    if (_json.containsKey("excludedPlacements")) {
      excludedPlacements = _json["excludedPlacements"].map((value) => new PretargetingConfigExcludedPlacements.fromJson(value)).toList();
    }
    if (_json.containsKey("excludedUserLists")) {
      excludedUserLists = _json["excludedUserLists"];
    }
    if (_json.containsKey("excludedVerticals")) {
      excludedVerticals = _json["excludedVerticals"];
    }
    if (_json.containsKey("geoCriteriaIds")) {
      geoCriteriaIds = _json["geoCriteriaIds"];
    }
    if (_json.containsKey("isActive")) {
      isActive = _json["isActive"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("languages")) {
      languages = _json["languages"];
    }
    if (_json.containsKey("mobileCarriers")) {
      mobileCarriers = _json["mobileCarriers"];
    }
    if (_json.containsKey("mobileDevices")) {
      mobileDevices = _json["mobileDevices"];
    }
    if (_json.containsKey("mobileOperatingSystemVersions")) {
      mobileOperatingSystemVersions = _json["mobileOperatingSystemVersions"];
    }
    if (_json.containsKey("placements")) {
      placements = _json["placements"].map((value) => new PretargetingConfigPlacements.fromJson(value)).toList();
    }
    if (_json.containsKey("platforms")) {
      platforms = _json["platforms"];
    }
    if (_json.containsKey("supportedCreativeAttributes")) {
      supportedCreativeAttributes = _json["supportedCreativeAttributes"];
    }
    if (_json.containsKey("userLists")) {
      userLists = _json["userLists"];
    }
    if (_json.containsKey("vendorTypes")) {
      vendorTypes = _json["vendorTypes"];
    }
    if (_json.containsKey("verticals")) {
      verticals = _json["verticals"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (billingId != null) {
      _json["billingId"] = billingId;
    }
    if (configId != null) {
      _json["configId"] = configId;
    }
    if (configName != null) {
      _json["configName"] = configName;
    }
    if (creativeType != null) {
      _json["creativeType"] = creativeType;
    }
    if (dimensions != null) {
      _json["dimensions"] = dimensions.map((value) => (value).toJson()).toList();
    }
    if (excludedContentLabels != null) {
      _json["excludedContentLabels"] = excludedContentLabels;
    }
    if (excludedGeoCriteriaIds != null) {
      _json["excludedGeoCriteriaIds"] = excludedGeoCriteriaIds;
    }
    if (excludedPlacements != null) {
      _json["excludedPlacements"] = excludedPlacements.map((value) => (value).toJson()).toList();
    }
    if (excludedUserLists != null) {
      _json["excludedUserLists"] = excludedUserLists;
    }
    if (excludedVerticals != null) {
      _json["excludedVerticals"] = excludedVerticals;
    }
    if (geoCriteriaIds != null) {
      _json["geoCriteriaIds"] = geoCriteriaIds;
    }
    if (isActive != null) {
      _json["isActive"] = isActive;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (languages != null) {
      _json["languages"] = languages;
    }
    if (mobileCarriers != null) {
      _json["mobileCarriers"] = mobileCarriers;
    }
    if (mobileDevices != null) {
      _json["mobileDevices"] = mobileDevices;
    }
    if (mobileOperatingSystemVersions != null) {
      _json["mobileOperatingSystemVersions"] = mobileOperatingSystemVersions;
    }
    if (placements != null) {
      _json["placements"] = placements.map((value) => (value).toJson()).toList();
    }
    if (platforms != null) {
      _json["platforms"] = platforms;
    }
    if (supportedCreativeAttributes != null) {
      _json["supportedCreativeAttributes"] = supportedCreativeAttributes;
    }
    if (userLists != null) {
      _json["userLists"] = userLists;
    }
    if (vendorTypes != null) {
      _json["vendorTypes"] = vendorTypes;
    }
    if (verticals != null) {
      _json["verticals"] = verticals;
    }
    return _json;
  }
}

class PretargetingConfigList {
  /** A list of pretargeting configs */
  core.List<PretargetingConfig> items;
  /** Resource type. */
  core.String kind;

  PretargetingConfigList();

  PretargetingConfigList.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new PretargetingConfig.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

class Price {
  /** The CPM value in micros. */
  core.double amountMicros;
  /** The currency code for the price. */
  core.String currencyCode;

  Price();

  Price.fromJson(core.Map _json) {
    if (_json.containsKey("amountMicros")) {
      amountMicros = _json["amountMicros"];
    }
    if (_json.containsKey("currencyCode")) {
      currencyCode = _json["currencyCode"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (amountMicros != null) {
      _json["amountMicros"] = amountMicros;
    }
    if (currencyCode != null) {
      _json["currencyCode"] = currencyCode;
    }
    return _json;
  }
}

/**
 * Used to specify pricing rules for buyers/advertisers. Each PricePerBuyer in
 * an offer can become [0,1] deals. To check if there is a PricePerBuyer for a
 * particular buyer or buyer/advertiser pair, we look for the most specific
 * matching rule - we first look for a rule matching the buyer and advertiser,
 * next a rule with the buyer but an empty advertiser list, and otherwise look
 * for a matching rule where no buyer is set.
 */
class PricePerBuyer {
  /**
   * The buyer who will pay this price. If unset, all buyers can pay this price
   * (if the advertisers match, and there's no more specific rule matching the
   * buyer).
   */
  Buyer buyer;
  /** The specified price */
  Price price;

  PricePerBuyer();

  PricePerBuyer.fromJson(core.Map _json) {
    if (_json.containsKey("buyer")) {
      buyer = new Buyer.fromJson(_json["buyer"]);
    }
    if (_json.containsKey("price")) {
      price = new Price.fromJson(_json["price"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (buyer != null) {
      _json["buyer"] = (buyer).toJson();
    }
    if (price != null) {
      _json["price"] = (price).toJson();
    }
    return _json;
  }
}

class PrivateData {
  core.String referenceId;
  core.String referencePayload;
  core.List<core.int> get referencePayloadAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(referencePayload);
  }

  void set referencePayloadAsBytes(core.List<core.int> _bytes) {
    referencePayload = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }

  PrivateData();

  PrivateData.fromJson(core.Map _json) {
    if (_json.containsKey("referenceId")) {
      referenceId = _json["referenceId"];
    }
    if (_json.containsKey("referencePayload")) {
      referencePayload = _json["referencePayload"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (referenceId != null) {
      _json["referenceId"] = referenceId;
    }
    if (referencePayload != null) {
      _json["referencePayload"] = referencePayload;
    }
    return _json;
  }
}

class RuleKeyValuePair {
  core.String keyName;
  core.String value;

  RuleKeyValuePair();

  RuleKeyValuePair.fromJson(core.Map _json) {
    if (_json.containsKey("keyName")) {
      keyName = _json["keyName"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (keyName != null) {
      _json["keyName"] = keyName;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

class Seller {
  /**
   * The unique id for the seller. The seller fills in this field. The seller
   * account id is then available to buyer in the offer.
   */
  core.String accountId;
  /** Optional sub-account id for the seller. */
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

  core.Map toJson() {
    var _json = new core.Map();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (subAccountId != null) {
      _json["subAccountId"] = subAccountId;
    }
    return _json;
  }
}

class SharedTargeting {
  /** The list of values to exclude from targeting. */
  core.List<TargetingValue> exclusions;
  /** The list of value to include as part of the targeting. */
  core.List<TargetingValue> inclusions;
  /** The key representing the shared targeting criterion. */
  core.String key;

  SharedTargeting();

  SharedTargeting.fromJson(core.Map _json) {
    if (_json.containsKey("exclusions")) {
      exclusions = _json["exclusions"].map((value) => new TargetingValue.fromJson(value)).toList();
    }
    if (_json.containsKey("inclusions")) {
      inclusions = _json["inclusions"].map((value) => new TargetingValue.fromJson(value)).toList();
    }
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (exclusions != null) {
      _json["exclusions"] = exclusions.map((value) => (value).toJson()).toList();
    }
    if (inclusions != null) {
      _json["inclusions"] = inclusions.map((value) => (value).toJson()).toList();
    }
    if (key != null) {
      _json["key"] = key;
    }
    return _json;
  }
}

class StatsDto {
  core.String bids;
  core.String goodBids;
  core.String impressions;
  core.String requests;
  MoneyDto revenue;
  MoneyDto spend;

  StatsDto();

  StatsDto.fromJson(core.Map _json) {
    if (_json.containsKey("bids")) {
      bids = _json["bids"];
    }
    if (_json.containsKey("goodBids")) {
      goodBids = _json["goodBids"];
    }
    if (_json.containsKey("impressions")) {
      impressions = _json["impressions"];
    }
    if (_json.containsKey("requests")) {
      requests = _json["requests"];
    }
    if (_json.containsKey("revenue")) {
      revenue = new MoneyDto.fromJson(_json["revenue"]);
    }
    if (_json.containsKey("spend")) {
      spend = new MoneyDto.fromJson(_json["spend"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bids != null) {
      _json["bids"] = bids;
    }
    if (goodBids != null) {
      _json["goodBids"] = goodBids;
    }
    if (impressions != null) {
      _json["impressions"] = impressions;
    }
    if (requests != null) {
      _json["requests"] = requests;
    }
    if (revenue != null) {
      _json["revenue"] = (revenue).toJson();
    }
    if (spend != null) {
      _json["spend"] = (spend).toJson();
    }
    return _json;
  }
}

class TargetingValue {
  /** The creative size value to exclude/include. */
  TargetingValueCreativeSize creativeSizeValue;
  /**
   * The daypart targeting to include / exclude. Filled in when the key is
   * GOOG_DAYPART_TARGETING.
   */
  TargetingValueDayPartTargeting dayPartTargetingValue;
  /** The long value to exclude/include. */
  core.String longValue;
  /** The string value to exclude/include. */
  core.String stringValue;

  TargetingValue();

  TargetingValue.fromJson(core.Map _json) {
    if (_json.containsKey("creativeSizeValue")) {
      creativeSizeValue = new TargetingValueCreativeSize.fromJson(_json["creativeSizeValue"]);
    }
    if (_json.containsKey("dayPartTargetingValue")) {
      dayPartTargetingValue = new TargetingValueDayPartTargeting.fromJson(_json["dayPartTargetingValue"]);
    }
    if (_json.containsKey("longValue")) {
      longValue = _json["longValue"];
    }
    if (_json.containsKey("stringValue")) {
      stringValue = _json["stringValue"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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

class TargetingValueCreativeSize {
  /** For video size type, the list of companion sizes. */
  core.List<TargetingValueSize> companionSizes;
  /** The Creative size type. */
  core.String creativeSizeType;
  /** For regular creative size type, specifies the size of the creative. */
  TargetingValueSize size;

  TargetingValueCreativeSize();

  TargetingValueCreativeSize.fromJson(core.Map _json) {
    if (_json.containsKey("companionSizes")) {
      companionSizes = _json["companionSizes"].map((value) => new TargetingValueSize.fromJson(value)).toList();
    }
    if (_json.containsKey("creativeSizeType")) {
      creativeSizeType = _json["creativeSizeType"];
    }
    if (_json.containsKey("size")) {
      size = new TargetingValueSize.fromJson(_json["size"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (companionSizes != null) {
      _json["companionSizes"] = companionSizes.map((value) => (value).toJson()).toList();
    }
    if (creativeSizeType != null) {
      _json["creativeSizeType"] = creativeSizeType;
    }
    if (size != null) {
      _json["size"] = (size).toJson();
    }
    return _json;
  }
}

class TargetingValueDayPartTargeting {
  core.List<TargetingValueDayPartTargetingDayPart> dayParts;
  core.String timeZoneType;

  TargetingValueDayPartTargeting();

  TargetingValueDayPartTargeting.fromJson(core.Map _json) {
    if (_json.containsKey("dayParts")) {
      dayParts = _json["dayParts"].map((value) => new TargetingValueDayPartTargetingDayPart.fromJson(value)).toList();
    }
    if (_json.containsKey("timeZoneType")) {
      timeZoneType = _json["timeZoneType"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (dayParts != null) {
      _json["dayParts"] = dayParts.map((value) => (value).toJson()).toList();
    }
    if (timeZoneType != null) {
      _json["timeZoneType"] = timeZoneType;
    }
    return _json;
  }
}

class TargetingValueDayPartTargetingDayPart {
  core.String dayOfWeek;
  core.int endHour;
  core.int endMinute;
  core.int startHour;
  core.int startMinute;

  TargetingValueDayPartTargetingDayPart();

  TargetingValueDayPartTargetingDayPart.fromJson(core.Map _json) {
    if (_json.containsKey("dayOfWeek")) {
      dayOfWeek = _json["dayOfWeek"];
    }
    if (_json.containsKey("endHour")) {
      endHour = _json["endHour"];
    }
    if (_json.containsKey("endMinute")) {
      endMinute = _json["endMinute"];
    }
    if (_json.containsKey("startHour")) {
      startHour = _json["startHour"];
    }
    if (_json.containsKey("startMinute")) {
      startMinute = _json["startMinute"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (dayOfWeek != null) {
      _json["dayOfWeek"] = dayOfWeek;
    }
    if (endHour != null) {
      _json["endHour"] = endHour;
    }
    if (endMinute != null) {
      _json["endMinute"] = endMinute;
    }
    if (startHour != null) {
      _json["startHour"] = startHour;
    }
    if (startMinute != null) {
      _json["startMinute"] = startMinute;
    }
    return _json;
  }
}

class TargetingValueSize {
  /** The height of the creative. */
  core.int height;
  /** The width of the creative. */
  core.int width;

  TargetingValueSize();

  TargetingValueSize.fromJson(core.Map _json) {
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (height != null) {
      _json["height"] = height;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

class TermsDto {
  /** The particular ad slots targeted by the offer. */
  core.List<AdSlotDto> adSlots;
  /** A list of advertisers for this offer. */
  core.List<AdvertiserDto> advertisers;
  /** The audience segment for the offer. */
  AudienceSegment audienceSegment;
  /** A description of the audience segment for the offer. */
  core.String audienceSegmentDescription;
  /** The billing terms. */
  core.String billingTerms;
  /** The buyer billing type. */
  core.String buyerBillingType;
  /** The cpm terms. */
  MoneyDto cpm;
  /** Whether to use or ignore publisher blocking rules. */
  core.String creativeBlockingLevel;
  /** Whether to use publisher review policy or AdX review policy. */
  core.String creativeReviewPolicy;
  /** The premium terms. */
  MoneyDto dealPremium;
  /** A description for these terms. */
  core.String description;
  /** A descriptive name for these terms. */
  core.String descriptiveName;
  /** The end date for the offer. */
  DateTime endDate;
  /** The estimated daily impressions for the offer. */
  core.String estimatedImpressionsPerDay;
  /** The estimated spend for the offer. */
  MoneyDto estimatedSpend;
  /** If true, the offer will finalize automatically when accepted. */
  core.bool finalizeAutomatically;
  /** The inventory segment targeting for the offer. */
  InventorySegmentTargeting inventorySegmentTargeting;
  /** Whether the offer is a reservation. */
  core.bool isReservation;
  /** The minimum spend for the offer. */
  core.String minimumSpendMicros;
  /** The minimum true looks for the offer. */
  core.String minimumTrueLooks;
  /** The monetizer type. */
  core.String monetizerType;
  /** Whether this offer is semi-transparent. */
  core.bool semiTransparent;
  /** The start date for the offer. */
  DateTime startDate;
  /** Whether to target by deal id. */
  core.bool targetByDealId;
  /** If true, the offer targets all ad slots. */
  core.bool targetingAllAdSlots;
  /** A list of terms attributes. */
  core.List<core.String> termsAttributes;
  /** The urls applicable to the offer. */
  core.List<core.String> urls;

  TermsDto();

  TermsDto.fromJson(core.Map _json) {
    if (_json.containsKey("adSlots")) {
      adSlots = _json["adSlots"].map((value) => new AdSlotDto.fromJson(value)).toList();
    }
    if (_json.containsKey("advertisers")) {
      advertisers = _json["advertisers"].map((value) => new AdvertiserDto.fromJson(value)).toList();
    }
    if (_json.containsKey("audienceSegment")) {
      audienceSegment = new AudienceSegment.fromJson(_json["audienceSegment"]);
    }
    if (_json.containsKey("audienceSegmentDescription")) {
      audienceSegmentDescription = _json["audienceSegmentDescription"];
    }
    if (_json.containsKey("billingTerms")) {
      billingTerms = _json["billingTerms"];
    }
    if (_json.containsKey("buyerBillingType")) {
      buyerBillingType = _json["buyerBillingType"];
    }
    if (_json.containsKey("cpm")) {
      cpm = new MoneyDto.fromJson(_json["cpm"]);
    }
    if (_json.containsKey("creativeBlockingLevel")) {
      creativeBlockingLevel = _json["creativeBlockingLevel"];
    }
    if (_json.containsKey("creativeReviewPolicy")) {
      creativeReviewPolicy = _json["creativeReviewPolicy"];
    }
    if (_json.containsKey("dealPremium")) {
      dealPremium = new MoneyDto.fromJson(_json["dealPremium"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("descriptiveName")) {
      descriptiveName = _json["descriptiveName"];
    }
    if (_json.containsKey("endDate")) {
      endDate = new DateTime.fromJson(_json["endDate"]);
    }
    if (_json.containsKey("estimatedImpressionsPerDay")) {
      estimatedImpressionsPerDay = _json["estimatedImpressionsPerDay"];
    }
    if (_json.containsKey("estimatedSpend")) {
      estimatedSpend = new MoneyDto.fromJson(_json["estimatedSpend"]);
    }
    if (_json.containsKey("finalizeAutomatically")) {
      finalizeAutomatically = _json["finalizeAutomatically"];
    }
    if (_json.containsKey("inventorySegmentTargeting")) {
      inventorySegmentTargeting = new InventorySegmentTargeting.fromJson(_json["inventorySegmentTargeting"]);
    }
    if (_json.containsKey("isReservation")) {
      isReservation = _json["isReservation"];
    }
    if (_json.containsKey("minimumSpendMicros")) {
      minimumSpendMicros = _json["minimumSpendMicros"];
    }
    if (_json.containsKey("minimumTrueLooks")) {
      minimumTrueLooks = _json["minimumTrueLooks"];
    }
    if (_json.containsKey("monetizerType")) {
      monetizerType = _json["monetizerType"];
    }
    if (_json.containsKey("semiTransparent")) {
      semiTransparent = _json["semiTransparent"];
    }
    if (_json.containsKey("startDate")) {
      startDate = new DateTime.fromJson(_json["startDate"]);
    }
    if (_json.containsKey("targetByDealId")) {
      targetByDealId = _json["targetByDealId"];
    }
    if (_json.containsKey("targetingAllAdSlots")) {
      targetingAllAdSlots = _json["targetingAllAdSlots"];
    }
    if (_json.containsKey("termsAttributes")) {
      termsAttributes = _json["termsAttributes"];
    }
    if (_json.containsKey("urls")) {
      urls = _json["urls"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (adSlots != null) {
      _json["adSlots"] = adSlots.map((value) => (value).toJson()).toList();
    }
    if (advertisers != null) {
      _json["advertisers"] = advertisers.map((value) => (value).toJson()).toList();
    }
    if (audienceSegment != null) {
      _json["audienceSegment"] = (audienceSegment).toJson();
    }
    if (audienceSegmentDescription != null) {
      _json["audienceSegmentDescription"] = audienceSegmentDescription;
    }
    if (billingTerms != null) {
      _json["billingTerms"] = billingTerms;
    }
    if (buyerBillingType != null) {
      _json["buyerBillingType"] = buyerBillingType;
    }
    if (cpm != null) {
      _json["cpm"] = (cpm).toJson();
    }
    if (creativeBlockingLevel != null) {
      _json["creativeBlockingLevel"] = creativeBlockingLevel;
    }
    if (creativeReviewPolicy != null) {
      _json["creativeReviewPolicy"] = creativeReviewPolicy;
    }
    if (dealPremium != null) {
      _json["dealPremium"] = (dealPremium).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (descriptiveName != null) {
      _json["descriptiveName"] = descriptiveName;
    }
    if (endDate != null) {
      _json["endDate"] = (endDate).toJson();
    }
    if (estimatedImpressionsPerDay != null) {
      _json["estimatedImpressionsPerDay"] = estimatedImpressionsPerDay;
    }
    if (estimatedSpend != null) {
      _json["estimatedSpend"] = (estimatedSpend).toJson();
    }
    if (finalizeAutomatically != null) {
      _json["finalizeAutomatically"] = finalizeAutomatically;
    }
    if (inventorySegmentTargeting != null) {
      _json["inventorySegmentTargeting"] = (inventorySegmentTargeting).toJson();
    }
    if (isReservation != null) {
      _json["isReservation"] = isReservation;
    }
    if (minimumSpendMicros != null) {
      _json["minimumSpendMicros"] = minimumSpendMicros;
    }
    if (minimumTrueLooks != null) {
      _json["minimumTrueLooks"] = minimumTrueLooks;
    }
    if (monetizerType != null) {
      _json["monetizerType"] = monetizerType;
    }
    if (semiTransparent != null) {
      _json["semiTransparent"] = semiTransparent;
    }
    if (startDate != null) {
      _json["startDate"] = (startDate).toJson();
    }
    if (targetByDealId != null) {
      _json["targetByDealId"] = targetByDealId;
    }
    if (targetingAllAdSlots != null) {
      _json["targetingAllAdSlots"] = targetingAllAdSlots;
    }
    if (termsAttributes != null) {
      _json["termsAttributes"] = termsAttributes;
    }
    if (urls != null) {
      _json["urls"] = urls;
    }
    return _json;
  }
}

class WebPropertyDto {
  core.bool allowInterestTargetedAds;
  core.bool enabledForPreferredDeals;
  core.int id;
  core.String name;
  core.String propertyCode;
  core.List<core.String> siteUrls;
  core.String syndicationProduct;

  WebPropertyDto();

  WebPropertyDto.fromJson(core.Map _json) {
    if (_json.containsKey("allowInterestTargetedAds")) {
      allowInterestTargetedAds = _json["allowInterestTargetedAds"];
    }
    if (_json.containsKey("enabledForPreferredDeals")) {
      enabledForPreferredDeals = _json["enabledForPreferredDeals"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("propertyCode")) {
      propertyCode = _json["propertyCode"];
    }
    if (_json.containsKey("siteUrls")) {
      siteUrls = _json["siteUrls"];
    }
    if (_json.containsKey("syndicationProduct")) {
      syndicationProduct = _json["syndicationProduct"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (allowInterestTargetedAds != null) {
      _json["allowInterestTargetedAds"] = allowInterestTargetedAds;
    }
    if (enabledForPreferredDeals != null) {
      _json["enabledForPreferredDeals"] = enabledForPreferredDeals;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (propertyCode != null) {
      _json["propertyCode"] = propertyCode;
    }
    if (siteUrls != null) {
      _json["siteUrls"] = siteUrls;
    }
    if (syndicationProduct != null) {
      _json["syndicationProduct"] = syndicationProduct;
    }
    return _json;
  }
}
