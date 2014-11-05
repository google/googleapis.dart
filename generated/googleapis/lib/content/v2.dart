library googleapis.content.v2;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import "package:crypto/crypto.dart" as crypto;
import 'package:http/http.dart' as http;
import '../src/common_internal.dart' as common_internal;
import '../common/common.dart' as common;

export '../common/common.dart' show ApiRequestError;
export '../common/common.dart' show DetailedApiRequestError;

/**
 * Manage product items, inventory, and Merchant Center accounts for Google
 * Shopping.
 */
class ContentApi {
  /** Manage your product listings and accounts for Google Shopping */
  static const ContentScope = "https://www.googleapis.com/auth/content";


  final common_internal.ApiRequester _requester;

  AccountsResourceApi get accounts => new AccountsResourceApi(_requester);
  AccountstatusesResourceApi get accountstatuses => new AccountstatusesResourceApi(_requester);
  DatafeedsResourceApi get datafeeds => new DatafeedsResourceApi(_requester);
  DatafeedstatusesResourceApi get datafeedstatuses => new DatafeedstatusesResourceApi(_requester);
  InventoryResourceApi get inventory => new InventoryResourceApi(_requester);
  ProductsResourceApi get products => new ProductsResourceApi(_requester);
  ProductstatusesResourceApi get productstatuses => new ProductstatusesResourceApi(_requester);

  ContentApi(http.Client client) : 
      _requester = new common_internal.ApiRequester(client, "https://www.googleapis.com/", "content/v2/");
}


/** Not documented yet. */
class AccountsResourceApi {
  final common_internal.ApiRequester _requester;

  AccountsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves, inserts, updates, and deletes multiple Merchant Center
   * (sub-)accounts in a single request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [AccountsCustomBatchResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<AccountsCustomBatchResponse> custombatch(AccountsCustomBatchRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'accounts/batch';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AccountsCustomBatchResponse.fromJson(data));
  }

  /**
   * Deletes a Merchant Center sub-account.
   *
   * Request parameters:
   *
   * [merchantId] - The ID of the managing account.
   *
   * [accountId] - The ID of the account.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String merchantId, core.String accountId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/accounts/' + common_internal.Escaper.ecapeVariable('$accountId');

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
   * Retrieves a Merchant Center account.
   *
   * Request parameters:
   *
   * [merchantId] - The ID of the managing account.
   *
   * [accountId] - The ID of the account.
   *
   * Completes with a [Account].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Account> get(core.String merchantId, core.String accountId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/accounts/' + common_internal.Escaper.ecapeVariable('$accountId');

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
   * Creates a Merchant Center sub-account.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [merchantId] - The ID of the managing account.
   *
   * Completes with a [Account].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Account> insert(Account request, core.String merchantId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/accounts';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Account.fromJson(data));
  }

  /**
   * Lists the sub-accounts in your Merchant Center account.
   *
   * Request parameters:
   *
   * [merchantId] - The ID of the managing account.
   *
   * [maxResults] - The maximum number of accounts to return in the response,
   * used for paging.
   *
   * [pageToken] - The token returned by the previous request.
   *
   * Completes with a [AccountsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<AccountsListResponse> list(core.String merchantId, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/accounts';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AccountsListResponse.fromJson(data));
  }

  /**
   * Updates a Merchant Center account. This method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [merchantId] - The ID of the managing account.
   *
   * [accountId] - The ID of the account.
   *
   * Completes with a [Account].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Account> patch(Account request, core.String merchantId, core.String accountId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/accounts/' + common_internal.Escaper.ecapeVariable('$accountId');

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
   * Updates a Merchant Center account.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [merchantId] - The ID of the managing account.
   *
   * [accountId] - The ID of the account.
   *
   * Completes with a [Account].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Account> update(Account request, core.String merchantId, core.String accountId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/accounts/' + common_internal.Escaper.ecapeVariable('$accountId');

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


/** Not documented yet. */
class AccountstatusesResourceApi {
  final common_internal.ApiRequester _requester;

  AccountstatusesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Not documented yet.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [AccountstatusesCustomBatchResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<AccountstatusesCustomBatchResponse> custombatch(AccountstatusesCustomBatchRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'accountstatuses/batch';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AccountstatusesCustomBatchResponse.fromJson(data));
  }

  /**
   * Retrieves the status of a Merchant Center account.
   *
   * Request parameters:
   *
   * [merchantId] - The ID of the managing account.
   *
   * [accountId] - The ID of the account.
   *
   * Completes with a [AccountStatus].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<AccountStatus> get(core.String merchantId, core.String accountId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/accountstatuses/' + common_internal.Escaper.ecapeVariable('$accountId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AccountStatus.fromJson(data));
  }

  /**
   * Lists the statuses of the sub-accounts in your Merchant Center account.
   *
   * Request parameters:
   *
   * [merchantId] - The ID of the managing account.
   *
   * [maxResults] - The maximum number of account statuses to return in the
   * response, used for paging.
   *
   * [pageToken] - The token returned by the previous request.
   *
   * Completes with a [AccountstatusesListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<AccountstatusesListResponse> list(core.String merchantId, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/accountstatuses';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AccountstatusesListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class DatafeedsResourceApi {
  final common_internal.ApiRequester _requester;

  DatafeedsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Not documented yet.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [DatafeedsCustomBatchResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<DatafeedsCustomBatchResponse> custombatch(DatafeedsCustomBatchRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'datafeeds/batch';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DatafeedsCustomBatchResponse.fromJson(data));
  }

  /**
   * Deletes a datafeed from your Merchant Center account.
   *
   * Request parameters:
   *
   * [merchantId] - null
   *
   * [datafeedId] - null
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String merchantId, core.String datafeedId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }
    if (datafeedId == null) {
      throw new core.ArgumentError("Parameter datafeedId is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/datafeeds/' + common_internal.Escaper.ecapeVariable('$datafeedId');

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
   * Retrieves a datafeed from your Merchant Center account.
   *
   * Request parameters:
   *
   * [merchantId] - null
   *
   * [datafeedId] - null
   *
   * Completes with a [Datafeed].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Datafeed> get(core.String merchantId, core.String datafeedId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }
    if (datafeedId == null) {
      throw new core.ArgumentError("Parameter datafeedId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/datafeeds/' + common_internal.Escaper.ecapeVariable('$datafeedId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Datafeed.fromJson(data));
  }

  /**
   * Registers a datafeed with your Merchant Center account.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [merchantId] - null
   *
   * Completes with a [Datafeed].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Datafeed> insert(Datafeed request, core.String merchantId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/datafeeds';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Datafeed.fromJson(data));
  }

  /**
   * Lists the datafeeds in your Merchant Center account.
   *
   * Request parameters:
   *
   * [merchantId] - The ID of the managing account.
   *
   * [maxResults] - The maximum number of products to return in the response,
   * used for paging.
   *
   * [pageToken] - The token returned by the previous request.
   *
   * Completes with a [DatafeedsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<DatafeedsListResponse> list(core.String merchantId, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/datafeeds';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DatafeedsListResponse.fromJson(data));
  }

  /**
   * Updates a datafeed of your Merchant Center account. This method supports
   * patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [merchantId] - null
   *
   * [datafeedId] - null
   *
   * Completes with a [Datafeed].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Datafeed> patch(Datafeed request, core.String merchantId, core.String datafeedId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }
    if (datafeedId == null) {
      throw new core.ArgumentError("Parameter datafeedId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/datafeeds/' + common_internal.Escaper.ecapeVariable('$datafeedId');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Datafeed.fromJson(data));
  }

  /**
   * Updates a datafeed of your Merchant Center account.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [merchantId] - null
   *
   * [datafeedId] - null
   *
   * Completes with a [Datafeed].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Datafeed> update(Datafeed request, core.String merchantId, core.String datafeedId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }
    if (datafeedId == null) {
      throw new core.ArgumentError("Parameter datafeedId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/datafeeds/' + common_internal.Escaper.ecapeVariable('$datafeedId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Datafeed.fromJson(data));
  }

}


/** Not documented yet. */
class DatafeedstatusesResourceApi {
  final common_internal.ApiRequester _requester;

  DatafeedstatusesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Not documented yet.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [DatafeedstatusesCustomBatchResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<DatafeedstatusesCustomBatchResponse> custombatch(DatafeedstatusesCustomBatchRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'datafeedstatuses/batch';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DatafeedstatusesCustomBatchResponse.fromJson(data));
  }

  /**
   * Retrieves the status of a datafeed from your Merchant Center account.
   *
   * Request parameters:
   *
   * [merchantId] - null
   *
   * [datafeedId] - null
   *
   * Completes with a [DatafeedStatus].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<DatafeedStatus> get(core.String merchantId, core.String datafeedId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }
    if (datafeedId == null) {
      throw new core.ArgumentError("Parameter datafeedId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/datafeedstatuses/' + common_internal.Escaper.ecapeVariable('$datafeedId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DatafeedStatus.fromJson(data));
  }

  /**
   * Lists the statuses of the datafeeds in your Merchant Center account.
   *
   * Request parameters:
   *
   * [merchantId] - The ID of the managing account.
   *
   * [maxResults] - The maximum number of products to return in the response,
   * used for paging.
   *
   * [pageToken] - The token returned by the previous request.
   *
   * Completes with a [DatafeedstatusesListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<DatafeedstatusesListResponse> list(core.String merchantId, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/datafeedstatuses';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DatafeedstatusesListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class InventoryResourceApi {
  final common_internal.ApiRequester _requester;

  InventoryResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Updates price and availability for multiple products or stores in a single
   * request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [InventoryCustomBatchResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<InventoryCustomBatchResponse> custombatch(InventoryCustomBatchRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'inventory/batch';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InventoryCustomBatchResponse.fromJson(data));
  }

  /**
   * Updates price and availability of a product in your Merchant Center
   * account.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [merchantId] - The ID of the managing account.
   *
   * [storeCode] - The code of the store for which to update price and
   * availability. Use online to update price and availability of an online
   * product.
   *
   * [productId] - The ID of the product for which to update price and
   * availability.
   *
   * Completes with a [InventorySetResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<InventorySetResponse> set(InventorySetRequest request, core.String merchantId, core.String storeCode, core.String productId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }
    if (storeCode == null) {
      throw new core.ArgumentError("Parameter storeCode is required.");
    }
    if (productId == null) {
      throw new core.ArgumentError("Parameter productId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/inventory/' + common_internal.Escaper.ecapeVariable('$storeCode') + '/products/' + common_internal.Escaper.ecapeVariable('$productId');

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InventorySetResponse.fromJson(data));
  }

}


/** Not documented yet. */
class ProductsResourceApi {
  final common_internal.ApiRequester _requester;

  ProductsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves, inserts, and deletes multiple products in a single request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [dryRun] - Flag to run the request in dry-run mode.
   *
   * Completes with a [ProductsCustomBatchResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ProductsCustomBatchResponse> custombatch(ProductsCustomBatchRequest request, {core.bool dryRun}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (dryRun != null) {
      _queryParams["dryRun"] = ["${dryRun}"];
    }


    _url = 'products/batch';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ProductsCustomBatchResponse.fromJson(data));
  }

  /**
   * Deletes a product from your Merchant Center account.
   *
   * Request parameters:
   *
   * [merchantId] - The ID of the managing account.
   *
   * [productId] - The ID of the product.
   *
   * [dryRun] - Flag to run the request in dry-run mode.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String merchantId, core.String productId, {core.bool dryRun}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }
    if (productId == null) {
      throw new core.ArgumentError("Parameter productId is required.");
    }
    if (dryRun != null) {
      _queryParams["dryRun"] = ["${dryRun}"];
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/products/' + common_internal.Escaper.ecapeVariable('$productId');

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
   * Retrieves a product from your Merchant Center account.
   *
   * Request parameters:
   *
   * [merchantId] - The ID of the managing account.
   *
   * [productId] - The ID of the product.
   *
   * Completes with a [Product].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Product> get(core.String merchantId, core.String productId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }
    if (productId == null) {
      throw new core.ArgumentError("Parameter productId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/products/' + common_internal.Escaper.ecapeVariable('$productId');

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
   * Uploads a product to your Merchant Center account.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [merchantId] - The ID of the managing account.
   *
   * [dryRun] - Flag to run the request in dry-run mode.
   *
   * Completes with a [Product].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Product> insert(Product request, core.String merchantId, {core.bool dryRun}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }
    if (dryRun != null) {
      _queryParams["dryRun"] = ["${dryRun}"];
    }


    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/products';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Product.fromJson(data));
  }

  /**
   * Lists the products in your Merchant Center account.
   *
   * Request parameters:
   *
   * [merchantId] - The ID of the managing account.
   *
   * [maxResults] - The maximum number of products to return in the response,
   * used for paging.
   *
   * [pageToken] - The token returned by the previous request.
   *
   * Completes with a [ProductsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ProductsListResponse> list(core.String merchantId, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/products';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ProductsListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class ProductstatusesResourceApi {
  final common_internal.ApiRequester _requester;

  ProductstatusesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Gets the statuses of multiple products in a single request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [ProductstatusesCustomBatchResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ProductstatusesCustomBatchResponse> custombatch(ProductstatusesCustomBatchRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'productstatuses/batch';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ProductstatusesCustomBatchResponse.fromJson(data));
  }

  /**
   * Gets the status of a product from your Merchant Center account.
   *
   * Request parameters:
   *
   * [merchantId] - The ID of the managing account.
   *
   * [productId] - The ID of the product.
   *
   * Completes with a [ProductStatus].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ProductStatus> get(core.String merchantId, core.String productId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }
    if (productId == null) {
      throw new core.ArgumentError("Parameter productId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/productstatuses/' + common_internal.Escaper.ecapeVariable('$productId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ProductStatus.fromJson(data));
  }

  /**
   * Lists the statuses of the products in your Merchant Center account.
   *
   * Request parameters:
   *
   * [merchantId] - The ID of the managing account.
   *
   * [maxResults] - The maximum number of product statuses to return in the
   * response, used for paging.
   *
   * [pageToken] - The token returned by the previous request.
   *
   * Completes with a [ProductstatusesListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ProductstatusesListResponse> list(core.String merchantId, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (merchantId == null) {
      throw new core.ArgumentError("Parameter merchantId is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$merchantId') + '/productstatuses';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ProductstatusesListResponse.fromJson(data));
  }

}



/** Account data. */
class Account {
  /** Indicates whether the merchant sells adult content. */
  core.bool adultContent;

  /** List of linked AdWords accounts. */
  core.List<AccountAdwordsLink> adwordsLinks;

  /** Merchant Center account ID. */
  core.String id;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#account".
   */
  core.String kind;

  /** Display name for the account. */
  core.String name;

  /**
   * URL for individual seller reviews, i.e., reviews for each child account.
   */
  core.String reviewsUrl;

  /** Client-specific, locally-unique, internal ID for the child account. */
  core.String sellerId;

  /**
   * Users with access to the account. Every account (except for subaccounts)
   * must have at least one admin user.
   */
  core.List<AccountUser> users;

  /** The merchant's website. */
  core.String websiteUrl;


  Account();

  Account.fromJson(core.Map _json) {
    if (_json.containsKey("adultContent")) {
      adultContent = _json["adultContent"];
    }
    if (_json.containsKey("adwordsLinks")) {
      adwordsLinks = _json["adwordsLinks"].map((value) => new AccountAdwordsLink.fromJson(value)).toList();
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
    if (_json.containsKey("reviewsUrl")) {
      reviewsUrl = _json["reviewsUrl"];
    }
    if (_json.containsKey("sellerId")) {
      sellerId = _json["sellerId"];
    }
    if (_json.containsKey("users")) {
      users = _json["users"].map((value) => new AccountUser.fromJson(value)).toList();
    }
    if (_json.containsKey("websiteUrl")) {
      websiteUrl = _json["websiteUrl"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (adultContent != null) {
      _json["adultContent"] = adultContent;
    }
    if (adwordsLinks != null) {
      _json["adwordsLinks"] = adwordsLinks.map((value) => (value).toJson()).toList();
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
    if (reviewsUrl != null) {
      _json["reviewsUrl"] = reviewsUrl;
    }
    if (sellerId != null) {
      _json["sellerId"] = sellerId;
    }
    if (users != null) {
      _json["users"] = users.map((value) => (value).toJson()).toList();
    }
    if (websiteUrl != null) {
      _json["websiteUrl"] = websiteUrl;
    }
    return _json;
  }
}


/** Not documented yet. */
class AccountAdwordsLink {
  /** Customer ID of the AdWords account. */
  core.String adwordsId;

  /**
   * Status of the link between this Merchant Center account and the AdWords
   * account.
   */
  core.String status;


  AccountAdwordsLink();

  AccountAdwordsLink.fromJson(core.Map _json) {
    if (_json.containsKey("adwordsId")) {
      adwordsId = _json["adwordsId"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (adwordsId != null) {
      _json["adwordsId"] = adwordsId;
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}


/**
 * The status of an account, i.e., information about its products, which is
 * computed offline and not returned immediately at insertion time.
 */
class AccountStatus {
  /** The ID of the account for which the status is reported. */
  core.String accountId;

  /** A list of data quality issues. */
  core.List<AccountStatusDataQualityIssue> dataQualityIssues;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#accountStatus".
   */
  core.String kind;


  AccountStatus();

  AccountStatus.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("dataQualityIssues")) {
      dataQualityIssues = _json["dataQualityIssues"].map((value) => new AccountStatusDataQualityIssue.fromJson(value)).toList();
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
    if (dataQualityIssues != null) {
      _json["dataQualityIssues"] = dataQualityIssues.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** Not documented yet. */
class AccountStatusDataQualityIssue {
  /** Country for which this issue is reported. */
  core.String country;

  /** Actual value displayed on the landing page. */
  core.String displayedValue;

  /** Example items featuring the issue. */
  core.List<AccountStatusExampleItem> exampleItems;

  /** Issue identifier. */
  core.String id;

  /** Last time the account was checked for this issue. */
  core.String lastChecked;

  /** Number of items in the account found to have the said issue. */
  core.int numItems;

  /** Severity of the problem. */
  core.String severity;

  /** Submitted value that causes the issue. */
  core.String submittedValue;


  AccountStatusDataQualityIssue();

  AccountStatusDataQualityIssue.fromJson(core.Map _json) {
    if (_json.containsKey("country")) {
      country = _json["country"];
    }
    if (_json.containsKey("displayedValue")) {
      displayedValue = _json["displayedValue"];
    }
    if (_json.containsKey("exampleItems")) {
      exampleItems = _json["exampleItems"].map((value) => new AccountStatusExampleItem.fromJson(value)).toList();
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("lastChecked")) {
      lastChecked = _json["lastChecked"];
    }
    if (_json.containsKey("numItems")) {
      numItems = _json["numItems"];
    }
    if (_json.containsKey("severity")) {
      severity = _json["severity"];
    }
    if (_json.containsKey("submittedValue")) {
      submittedValue = _json["submittedValue"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (country != null) {
      _json["country"] = country;
    }
    if (displayedValue != null) {
      _json["displayedValue"] = displayedValue;
    }
    if (exampleItems != null) {
      _json["exampleItems"] = exampleItems.map((value) => (value).toJson()).toList();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (lastChecked != null) {
      _json["lastChecked"] = lastChecked;
    }
    if (numItems != null) {
      _json["numItems"] = numItems;
    }
    if (severity != null) {
      _json["severity"] = severity;
    }
    if (submittedValue != null) {
      _json["submittedValue"] = submittedValue;
    }
    return _json;
  }
}


/**
 * An example of an item that has poor data quality. An item value on the
 * landing page differs from what is submitted, or conflicts with a policy.
 */
class AccountStatusExampleItem {
  /** Unique item ID as specified in the uploaded product data. */
  core.String itemId;

  /** Landing page of the item. */
  core.String link;

  /** The item value that was submitted. */
  core.String submittedValue;

  /** Title of the item. */
  core.String title;

  /** The actual value on the landing page. */
  core.String valueOnLandingPage;


  AccountStatusExampleItem();

  AccountStatusExampleItem.fromJson(core.Map _json) {
    if (_json.containsKey("itemId")) {
      itemId = _json["itemId"];
    }
    if (_json.containsKey("link")) {
      link = _json["link"];
    }
    if (_json.containsKey("submittedValue")) {
      submittedValue = _json["submittedValue"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("valueOnLandingPage")) {
      valueOnLandingPage = _json["valueOnLandingPage"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (itemId != null) {
      _json["itemId"] = itemId;
    }
    if (link != null) {
      _json["link"] = link;
    }
    if (submittedValue != null) {
      _json["submittedValue"] = submittedValue;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (valueOnLandingPage != null) {
      _json["valueOnLandingPage"] = valueOnLandingPage;
    }
    return _json;
  }
}


/** Not documented yet. */
class AccountUser {
  /** Whether user is an admin. */
  core.bool admin;

  /** User's email address. */
  core.String emailAddress;


  AccountUser();

  AccountUser.fromJson(core.Map _json) {
    if (_json.containsKey("admin")) {
      admin = _json["admin"];
    }
    if (_json.containsKey("emailAddress")) {
      emailAddress = _json["emailAddress"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (admin != null) {
      _json["admin"] = admin;
    }
    if (emailAddress != null) {
      _json["emailAddress"] = emailAddress;
    }
    return _json;
  }
}


/** Not documented yet. */
class AccountsCustomBatchRequest {
  /** The request entries to be processed in the batch. */
  core.List<AccountsCustomBatchRequestEntry> entries;


  AccountsCustomBatchRequest();

  AccountsCustomBatchRequest.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = _json["entries"].map((value) => new AccountsCustomBatchRequestEntry.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/**
 * A batch entry encoding a single non-batch request to the accounts service of
 * the Content API for Shopping.
 */
class AccountsCustomBatchRequestEntry {
  /**
   * The account to create or update. Only defined if the method is insert or
   * update.
   */
  Account account;

  /**
   * The ID of the account to get or delete. Only defined if the method is get
   * or delete.
   */
  core.String accountId;

  /** An entry ID, unique within the batch request. */
  core.int batchId;

  /** The ID of the managing account. */
  core.String merchantId;

  /** Not documented yet. */
  core.String method;


  AccountsCustomBatchRequestEntry();

  AccountsCustomBatchRequestEntry.fromJson(core.Map _json) {
    if (_json.containsKey("account")) {
      account = new Account.fromJson(_json["account"]);
    }
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("batchId")) {
      batchId = _json["batchId"];
    }
    if (_json.containsKey("merchantId")) {
      merchantId = _json["merchantId"];
    }
    if (_json.containsKey("method")) {
      method = _json["method"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (account != null) {
      _json["account"] = (account).toJson();
    }
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (batchId != null) {
      _json["batchId"] = batchId;
    }
    if (merchantId != null) {
      _json["merchantId"] = merchantId;
    }
    if (method != null) {
      _json["method"] = method;
    }
    return _json;
  }
}


/** Not documented yet. */
class AccountsCustomBatchResponse {
  /** The result of the execution of the batch requests. */
  core.List<AccountsCustomBatchResponseEntry> entries;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#accountsCustomBatchResponse".
   */
  core.String kind;


  AccountsCustomBatchResponse();

  AccountsCustomBatchResponse.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = _json["entries"].map((value) => new AccountsCustomBatchResponseEntry.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/**
 * A batch entry encoding a single non-batch response from the accounts service
 * of the Content API for Shopping.
 */
class AccountsCustomBatchResponseEntry {
  /**
   * The retrieved, created, or updated account. Not defined if the method was
   * delete.
   */
  Account account;

  /** The ID of the request entry this entry responds to. */
  core.int batchId;

  /** A list of errors defined if and only if the request failed. */
  Errors errors;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#accountsCustomBatchResponseEntry".
   */
  core.String kind;


  AccountsCustomBatchResponseEntry();

  AccountsCustomBatchResponseEntry.fromJson(core.Map _json) {
    if (_json.containsKey("account")) {
      account = new Account.fromJson(_json["account"]);
    }
    if (_json.containsKey("batchId")) {
      batchId = _json["batchId"];
    }
    if (_json.containsKey("errors")) {
      errors = new Errors.fromJson(_json["errors"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (account != null) {
      _json["account"] = (account).toJson();
    }
    if (batchId != null) {
      _json["batchId"] = batchId;
    }
    if (errors != null) {
      _json["errors"] = (errors).toJson();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** Not documented yet. */
class AccountsListResponse {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#accountsListResponse".
   */
  core.String kind;

  /** The token for the retrieval of the next page of accounts. */
  core.String nextPageToken;

  /** Not documented yet. */
  core.List<Account> resources;


  AccountsListResponse();

  AccountsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("resources")) {
      resources = _json["resources"].map((value) => new Account.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (resources != null) {
      _json["resources"] = resources.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class AccountstatusesCustomBatchRequest {
  /** The request entries to be processed in the batch. */
  core.List<AccountstatusesCustomBatchRequestEntry> entries;


  AccountstatusesCustomBatchRequest();

  AccountstatusesCustomBatchRequest.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = _json["entries"].map((value) => new AccountstatusesCustomBatchRequestEntry.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/**
 * A batch entry encoding a single non-batch request to the accountstatuses
 * service of the Content API for Shopping.
 */
class AccountstatusesCustomBatchRequestEntry {
  /** The ID of the (sub-)account whose status to get. */
  core.String accountId;

  /** An entry ID, unique within the batch request. */
  core.int batchId;

  /** The ID of the managing account. */
  core.String merchantId;

  /** The method (get). */
  core.String method;


  AccountstatusesCustomBatchRequestEntry();

  AccountstatusesCustomBatchRequestEntry.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("batchId")) {
      batchId = _json["batchId"];
    }
    if (_json.containsKey("merchantId")) {
      merchantId = _json["merchantId"];
    }
    if (_json.containsKey("method")) {
      method = _json["method"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (batchId != null) {
      _json["batchId"] = batchId;
    }
    if (merchantId != null) {
      _json["merchantId"] = merchantId;
    }
    if (method != null) {
      _json["method"] = method;
    }
    return _json;
  }
}


/** Not documented yet. */
class AccountstatusesCustomBatchResponse {
  /** The result of the execution of the batch requests. */
  core.List<AccountstatusesCustomBatchResponseEntry> entries;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#accountstatusesCustomBatchResponse".
   */
  core.String kind;


  AccountstatusesCustomBatchResponse();

  AccountstatusesCustomBatchResponse.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = _json["entries"].map((value) => new AccountstatusesCustomBatchResponseEntry.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/**
 * A batch entry encoding a single non-batch response from the accountstatuses
 * service of the Content API for Shopping.
 */
class AccountstatusesCustomBatchResponseEntry {
  /**
   * The requested account status. Defined if and only if the request was
   * successful.
   */
  AccountStatus accountStatus;

  /** The ID of the request entry this entry responds to. */
  core.int batchId;

  /** A list of errors defined if and only if the request failed. */
  Errors errors;


  AccountstatusesCustomBatchResponseEntry();

  AccountstatusesCustomBatchResponseEntry.fromJson(core.Map _json) {
    if (_json.containsKey("accountStatus")) {
      accountStatus = new AccountStatus.fromJson(_json["accountStatus"]);
    }
    if (_json.containsKey("batchId")) {
      batchId = _json["batchId"];
    }
    if (_json.containsKey("errors")) {
      errors = new Errors.fromJson(_json["errors"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accountStatus != null) {
      _json["accountStatus"] = (accountStatus).toJson();
    }
    if (batchId != null) {
      _json["batchId"] = batchId;
    }
    if (errors != null) {
      _json["errors"] = (errors).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class AccountstatusesListResponse {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#accountstatusesListResponse".
   */
  core.String kind;

  /** The token for the retrieval of the next page of account statuses. */
  core.String nextPageToken;

  /** Not documented yet. */
  core.List<AccountStatus> resources;


  AccountstatusesListResponse();

  AccountstatusesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("resources")) {
      resources = _json["resources"].map((value) => new AccountStatus.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (resources != null) {
      _json["resources"] = resources.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Datafeed data. */
class Datafeed {
  /**
   * The two-letter ISO 639-1 language in which the attributes are defined in
   * the data feed.
   */
  core.String attributeLanguage;

  /** The two-letter ISO 639-1 language of the items in the feed. */
  core.String contentLanguage;

  /** The type of data feed. */
  core.String contentType;

  /** Fetch schedule for the feed file. */
  DatafeedFetchSchedule fetchSchedule;

  /** The filename of the feed. All feeds must have a unique file name. */
  core.String fileName;

  /** Format of the feed file. */
  DatafeedFormat format;

  /** The ID of the data feed. */
  core.String id;

  /**
   * The list of intended destinations (corresponds to checked check boxes in
   * Merchant Center).
   */
  core.List<core.String> intendedDestinations;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#datafeed".
   */
  core.String kind;

  /** A descriptive name of the data feed. */
  core.String name;

  /**
   * The two-letter ISO 3166 country where the items in the feed will be
   * included in the search index.
   */
  core.String targetCountry;


  Datafeed();

  Datafeed.fromJson(core.Map _json) {
    if (_json.containsKey("attributeLanguage")) {
      attributeLanguage = _json["attributeLanguage"];
    }
    if (_json.containsKey("contentLanguage")) {
      contentLanguage = _json["contentLanguage"];
    }
    if (_json.containsKey("contentType")) {
      contentType = _json["contentType"];
    }
    if (_json.containsKey("fetchSchedule")) {
      fetchSchedule = new DatafeedFetchSchedule.fromJson(_json["fetchSchedule"]);
    }
    if (_json.containsKey("fileName")) {
      fileName = _json["fileName"];
    }
    if (_json.containsKey("format")) {
      format = new DatafeedFormat.fromJson(_json["format"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("intendedDestinations")) {
      intendedDestinations = _json["intendedDestinations"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("targetCountry")) {
      targetCountry = _json["targetCountry"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (attributeLanguage != null) {
      _json["attributeLanguage"] = attributeLanguage;
    }
    if (contentLanguage != null) {
      _json["contentLanguage"] = contentLanguage;
    }
    if (contentType != null) {
      _json["contentType"] = contentType;
    }
    if (fetchSchedule != null) {
      _json["fetchSchedule"] = (fetchSchedule).toJson();
    }
    if (fileName != null) {
      _json["fileName"] = fileName;
    }
    if (format != null) {
      _json["format"] = (format).toJson();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (intendedDestinations != null) {
      _json["intendedDestinations"] = intendedDestinations;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (targetCountry != null) {
      _json["targetCountry"] = targetCountry;
    }
    return _json;
  }
}


/**
 * The required fields vary based on the frequency of fetching. For a monthly
 * fetch schedule, day_of_month and hour are required. For a weekly fetch
 * schedule, weekday and hour are required. For a daily fetch schedule, only
 * hour is required.
 */
class DatafeedFetchSchedule {
  /** The day of the month the feed file should be fetched (1-31). */
  core.int dayOfMonth;

  /**
   * The URL where the feed file can be fetched. Google Merchant Center will
   * support automatic scheduled uploads using the HTTP, HTTPS, FTP, or SFTP
   * protocols, so the value will need to be a valid link using one of those
   * four protocols.
   */
  core.String fetchUrl;

  /** The hour of the day the feed file should be fetched (0-24). */
  core.int hour;

  /** An optional password for fetch_url. */
  core.String password;

  /**
   * Time zone used for schedule. UTC by default. E.g., "America/Los_Angeles".
   */
  core.String timeZone;

  /** An optional user name for fetch_url. */
  core.String username;

  /** The day of the week the feed file should be fetched. */
  core.String weekday;


  DatafeedFetchSchedule();

  DatafeedFetchSchedule.fromJson(core.Map _json) {
    if (_json.containsKey("dayOfMonth")) {
      dayOfMonth = _json["dayOfMonth"];
    }
    if (_json.containsKey("fetchUrl")) {
      fetchUrl = _json["fetchUrl"];
    }
    if (_json.containsKey("hour")) {
      hour = _json["hour"];
    }
    if (_json.containsKey("password")) {
      password = _json["password"];
    }
    if (_json.containsKey("timeZone")) {
      timeZone = _json["timeZone"];
    }
    if (_json.containsKey("username")) {
      username = _json["username"];
    }
    if (_json.containsKey("weekday")) {
      weekday = _json["weekday"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (dayOfMonth != null) {
      _json["dayOfMonth"] = dayOfMonth;
    }
    if (fetchUrl != null) {
      _json["fetchUrl"] = fetchUrl;
    }
    if (hour != null) {
      _json["hour"] = hour;
    }
    if (password != null) {
      _json["password"] = password;
    }
    if (timeZone != null) {
      _json["timeZone"] = timeZone;
    }
    if (username != null) {
      _json["username"] = username;
    }
    if (weekday != null) {
      _json["weekday"] = weekday;
    }
    return _json;
  }
}


/** Not documented yet. */
class DatafeedFormat {
  /**
   * Delimiter for the separation of values in a delimiter-separated values
   * feed. If not specified, the delimiter will be auto-detected. Ignored for
   * non-DSV data feeds.
   */
  core.String columnDelimiter;

  /**
   * Character encoding scheme of the data feed. If not specified, the encoding
   * will be auto-detected.
   */
  core.String fileEncoding;

  /**
   * Specifies how double quotes are interpreted. If not specified, the mode
   * will be auto-detected. Ignored for non-DSV data feeds.
   */
  core.String quotingMode;


  DatafeedFormat();

  DatafeedFormat.fromJson(core.Map _json) {
    if (_json.containsKey("columnDelimiter")) {
      columnDelimiter = _json["columnDelimiter"];
    }
    if (_json.containsKey("fileEncoding")) {
      fileEncoding = _json["fileEncoding"];
    }
    if (_json.containsKey("quotingMode")) {
      quotingMode = _json["quotingMode"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (columnDelimiter != null) {
      _json["columnDelimiter"] = columnDelimiter;
    }
    if (fileEncoding != null) {
      _json["fileEncoding"] = fileEncoding;
    }
    if (quotingMode != null) {
      _json["quotingMode"] = quotingMode;
    }
    return _json;
  }
}


/**
 * The status of a datafeed, i.e., the result of the last retrieval of the
 * datafeed computed asynchronously when the feed processing is finished.
 */
class DatafeedStatus {
  /** The ID of the feed for which the status is reported. */
  core.String datafeedId;

  /** The list of errors occurring in the feed. */
  core.List<DatafeedStatusError> errors;

  /** The number of items in the feed that were processed. */
  core.String itemsTotal;

  /** The number of items in the feed that were valid. */
  core.String itemsValid;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#datafeedStatus".
   */
  core.String kind;

  /** The processing status of the feed. */
  core.String processingStatus;

  /** The list of errors occurring in the feed. */
  core.List<DatafeedStatusError> warnings;


  DatafeedStatus();

  DatafeedStatus.fromJson(core.Map _json) {
    if (_json.containsKey("datafeedId")) {
      datafeedId = _json["datafeedId"];
    }
    if (_json.containsKey("errors")) {
      errors = _json["errors"].map((value) => new DatafeedStatusError.fromJson(value)).toList();
    }
    if (_json.containsKey("itemsTotal")) {
      itemsTotal = _json["itemsTotal"];
    }
    if (_json.containsKey("itemsValid")) {
      itemsValid = _json["itemsValid"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("processingStatus")) {
      processingStatus = _json["processingStatus"];
    }
    if (_json.containsKey("warnings")) {
      warnings = _json["warnings"].map((value) => new DatafeedStatusError.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (datafeedId != null) {
      _json["datafeedId"] = datafeedId;
    }
    if (errors != null) {
      _json["errors"] = errors.map((value) => (value).toJson()).toList();
    }
    if (itemsTotal != null) {
      _json["itemsTotal"] = itemsTotal;
    }
    if (itemsValid != null) {
      _json["itemsValid"] = itemsValid;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (processingStatus != null) {
      _json["processingStatus"] = processingStatus;
    }
    if (warnings != null) {
      _json["warnings"] = warnings.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** An error occurring in the feed, like "invalid price". */
class DatafeedStatusError {
  /** The code of the error, e.g., "validation/invalid_value". */
  core.String code;

  /** The number of occurrences of the error in the feed. */
  core.String count;

  /** A list of example occurrences of the error, grouped by product. */
  core.List<DatafeedStatusExample> examples;

  /** The error message, e.g., "Invalid price". */
  core.String message;


  DatafeedStatusError();

  DatafeedStatusError.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("count")) {
      count = _json["count"];
    }
    if (_json.containsKey("examples")) {
      examples = _json["examples"].map((value) => new DatafeedStatusExample.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (count != null) {
      _json["count"] = count;
    }
    if (examples != null) {
      _json["examples"] = examples.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}


/** An example occurrence for a particular error. */
class DatafeedStatusExample {
  /** The ID of the example item. */
  core.String itemId;

  /** Line number in the data feed where the example is found. */
  core.String lineNumber;

  /** The problematic value. */
  core.String value;


  DatafeedStatusExample();

  DatafeedStatusExample.fromJson(core.Map _json) {
    if (_json.containsKey("itemId")) {
      itemId = _json["itemId"];
    }
    if (_json.containsKey("lineNumber")) {
      lineNumber = _json["lineNumber"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (itemId != null) {
      _json["itemId"] = itemId;
    }
    if (lineNumber != null) {
      _json["lineNumber"] = lineNumber;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/** Not documented yet. */
class DatafeedsCustomBatchRequest {
  /** The request entries to be processed in the batch. */
  core.List<DatafeedsCustomBatchRequestEntry> entries;


  DatafeedsCustomBatchRequest();

  DatafeedsCustomBatchRequest.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = _json["entries"].map((value) => new DatafeedsCustomBatchRequestEntry.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/**
 * A batch entry encoding a single non-batch request to the datafeeds service of
 * the Content API for Shopping.
 */
class DatafeedsCustomBatchRequestEntry {
  /** An entry ID, unique within the batch request. */
  core.int batchId;

  /** The data feed to insert. */
  Datafeed datafeed;

  /** The ID of the data feed to get or delete. */
  core.String datafeedId;

  /** The ID of the managing account. */
  core.String merchantId;

  /** Not documented yet. */
  core.String method;


  DatafeedsCustomBatchRequestEntry();

  DatafeedsCustomBatchRequestEntry.fromJson(core.Map _json) {
    if (_json.containsKey("batchId")) {
      batchId = _json["batchId"];
    }
    if (_json.containsKey("datafeed")) {
      datafeed = new Datafeed.fromJson(_json["datafeed"]);
    }
    if (_json.containsKey("datafeedId")) {
      datafeedId = _json["datafeedId"];
    }
    if (_json.containsKey("merchantId")) {
      merchantId = _json["merchantId"];
    }
    if (_json.containsKey("method")) {
      method = _json["method"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (batchId != null) {
      _json["batchId"] = batchId;
    }
    if (datafeed != null) {
      _json["datafeed"] = (datafeed).toJson();
    }
    if (datafeedId != null) {
      _json["datafeedId"] = datafeedId;
    }
    if (merchantId != null) {
      _json["merchantId"] = merchantId;
    }
    if (method != null) {
      _json["method"] = method;
    }
    return _json;
  }
}


/** Not documented yet. */
class DatafeedsCustomBatchResponse {
  /** The result of the execution of the batch requests. */
  core.List<DatafeedsCustomBatchResponseEntry> entries;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#datafeedsCustomBatchResponse".
   */
  core.String kind;


  DatafeedsCustomBatchResponse();

  DatafeedsCustomBatchResponse.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = _json["entries"].map((value) => new DatafeedsCustomBatchResponseEntry.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/**
 * A batch entry encoding a single non-batch response from the datafeeds service
 * of the Content API for Shopping.
 */
class DatafeedsCustomBatchResponseEntry {
  /** The ID of the request entry this entry responds to. */
  core.int batchId;

  /**
   * The requested data feed. Defined if and only if the request was successful.
   */
  Datafeed datafeed;

  /** A list of errors defined if and only if the request failed. */
  Errors errors;


  DatafeedsCustomBatchResponseEntry();

  DatafeedsCustomBatchResponseEntry.fromJson(core.Map _json) {
    if (_json.containsKey("batchId")) {
      batchId = _json["batchId"];
    }
    if (_json.containsKey("datafeed")) {
      datafeed = new Datafeed.fromJson(_json["datafeed"]);
    }
    if (_json.containsKey("errors")) {
      errors = new Errors.fromJson(_json["errors"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (batchId != null) {
      _json["batchId"] = batchId;
    }
    if (datafeed != null) {
      _json["datafeed"] = (datafeed).toJson();
    }
    if (errors != null) {
      _json["errors"] = (errors).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class DatafeedsListResponse {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#datafeedsListResponse".
   */
  core.String kind;

  /** The token for the retrieval of the next page of datafeeds. */
  core.String nextPageToken;

  /** Not documented yet. */
  core.List<Datafeed> resources;


  DatafeedsListResponse();

  DatafeedsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("resources")) {
      resources = _json["resources"].map((value) => new Datafeed.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (resources != null) {
      _json["resources"] = resources.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class DatafeedstatusesCustomBatchRequest {
  /** The request entries to be processed in the batch. */
  core.List<DatafeedstatusesCustomBatchRequestEntry> entries;


  DatafeedstatusesCustomBatchRequest();

  DatafeedstatusesCustomBatchRequest.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = _json["entries"].map((value) => new DatafeedstatusesCustomBatchRequestEntry.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/**
 * A batch entry encoding a single non-batch request to the datafeedstatuses
 * service of the Content API for Shopping.
 */
class DatafeedstatusesCustomBatchRequestEntry {
  /** An entry ID, unique within the batch request. */
  core.int batchId;

  /** The ID of the data feed to get or delete. */
  core.String datafeedId;

  /** The ID of the managing account. */
  core.String merchantId;

  /** Not documented yet. */
  core.String method;


  DatafeedstatusesCustomBatchRequestEntry();

  DatafeedstatusesCustomBatchRequestEntry.fromJson(core.Map _json) {
    if (_json.containsKey("batchId")) {
      batchId = _json["batchId"];
    }
    if (_json.containsKey("datafeedId")) {
      datafeedId = _json["datafeedId"];
    }
    if (_json.containsKey("merchantId")) {
      merchantId = _json["merchantId"];
    }
    if (_json.containsKey("method")) {
      method = _json["method"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (batchId != null) {
      _json["batchId"] = batchId;
    }
    if (datafeedId != null) {
      _json["datafeedId"] = datafeedId;
    }
    if (merchantId != null) {
      _json["merchantId"] = merchantId;
    }
    if (method != null) {
      _json["method"] = method;
    }
    return _json;
  }
}


/** Not documented yet. */
class DatafeedstatusesCustomBatchResponse {
  /** The result of the execution of the batch requests. */
  core.List<DatafeedstatusesCustomBatchResponseEntry> entries;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#datafeedstatusesCustomBatchResponse".
   */
  core.String kind;


  DatafeedstatusesCustomBatchResponse();

  DatafeedstatusesCustomBatchResponse.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = _json["entries"].map((value) => new DatafeedstatusesCustomBatchResponseEntry.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/**
 * A batch entry encoding a single non-batch response from the datafeedstatuses
 * service of the Content API for Shopping.
 */
class DatafeedstatusesCustomBatchResponseEntry {
  /** The ID of the request entry this entry responds to. */
  core.int batchId;

  /**
   * The requested data feed status. Defined if and only if the request was
   * successful.
   */
  DatafeedStatus datafeedStatus;

  /** A list of errors defined if and only if the request failed. */
  Errors errors;


  DatafeedstatusesCustomBatchResponseEntry();

  DatafeedstatusesCustomBatchResponseEntry.fromJson(core.Map _json) {
    if (_json.containsKey("batchId")) {
      batchId = _json["batchId"];
    }
    if (_json.containsKey("datafeedStatus")) {
      datafeedStatus = new DatafeedStatus.fromJson(_json["datafeedStatus"]);
    }
    if (_json.containsKey("errors")) {
      errors = new Errors.fromJson(_json["errors"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (batchId != null) {
      _json["batchId"] = batchId;
    }
    if (datafeedStatus != null) {
      _json["datafeedStatus"] = (datafeedStatus).toJson();
    }
    if (errors != null) {
      _json["errors"] = (errors).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class DatafeedstatusesListResponse {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#datafeedstatusesListResponse".
   */
  core.String kind;

  /** The token for the retrieval of the next page of datafeed statuses. */
  core.String nextPageToken;

  /** Not documented yet. */
  core.List<DatafeedStatus> resources;


  DatafeedstatusesListResponse();

  DatafeedstatusesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("resources")) {
      resources = _json["resources"].map((value) => new DatafeedStatus.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (resources != null) {
      _json["resources"] = resources.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** An error returned by the API. */
class Error {
  /** The domain of the error. */
  core.String domain;

  /** A description of the error. */
  core.String message;

  /** The error code. */
  core.String reason;


  Error();

  Error.fromJson(core.Map _json) {
    if (_json.containsKey("domain")) {
      domain = _json["domain"];
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
    if (_json.containsKey("reason")) {
      reason = _json["reason"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (domain != null) {
      _json["domain"] = domain;
    }
    if (message != null) {
      _json["message"] = message;
    }
    if (reason != null) {
      _json["reason"] = reason;
    }
    return _json;
  }
}


/** A list of errors returned by a failed batch entry. */
class Errors {
  /** The HTTP status of the first error in errors. */
  core.int code;

  /** A list of errors. */
  core.List<Error> errors;

  /** The message of the first error in errors. */
  core.String message;


  Errors();

  Errors.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("errors")) {
      errors = _json["errors"].map((value) => new Error.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (errors != null) {
      _json["errors"] = errors.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}


/** Not documented yet. */
class Inventory {
  /** The availability of the product. */
  core.String availability;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#inventory".
   */
  core.String kind;

  /** The price of the product. */
  Price price;

  /**
   * The quantity of the product. Must be equal to or greater than zero.
   * Supported only for local products.
   */
  core.int quantity;

  /**
   * The sale price of the product. Mandatory if sale_price_effective_date is
   * defined.
   */
  Price salePrice;

  /**
   * A date range represented by a pair of ISO 8601 dates separated by a space,
   * comma, or slash. Both dates might be specified as 'null' if undecided.
   */
  core.String salePriceEffectiveDate;


  Inventory();

  Inventory.fromJson(core.Map _json) {
    if (_json.containsKey("availability")) {
      availability = _json["availability"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("price")) {
      price = new Price.fromJson(_json["price"]);
    }
    if (_json.containsKey("quantity")) {
      quantity = _json["quantity"];
    }
    if (_json.containsKey("salePrice")) {
      salePrice = new Price.fromJson(_json["salePrice"]);
    }
    if (_json.containsKey("salePriceEffectiveDate")) {
      salePriceEffectiveDate = _json["salePriceEffectiveDate"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (availability != null) {
      _json["availability"] = availability;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (price != null) {
      _json["price"] = (price).toJson();
    }
    if (quantity != null) {
      _json["quantity"] = quantity;
    }
    if (salePrice != null) {
      _json["salePrice"] = (salePrice).toJson();
    }
    if (salePriceEffectiveDate != null) {
      _json["salePriceEffectiveDate"] = salePriceEffectiveDate;
    }
    return _json;
  }
}


/** Not documented yet. */
class InventoryCustomBatchRequest {
  /** The request entries to be processed in the batch. */
  core.List<InventoryCustomBatchRequestEntry> entries;


  InventoryCustomBatchRequest();

  InventoryCustomBatchRequest.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = _json["entries"].map((value) => new InventoryCustomBatchRequestEntry.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/**
 * A batch entry encoding a single non-batch request to the inventory service of
 * the Content API for Shopping.
 */
class InventoryCustomBatchRequestEntry {
  /** An entry ID, unique within the batch request. */
  core.int batchId;

  /** Price and availability of the product. */
  Inventory inventory;

  /** The ID of the managing account. */
  core.String merchantId;

  /** The ID of the product for which to update price and availability. */
  core.String productId;

  /**
   * The code of the store for which to update price and availability. Use
   * online to update price and availability of an online product.
   */
  core.String storeCode;


  InventoryCustomBatchRequestEntry();

  InventoryCustomBatchRequestEntry.fromJson(core.Map _json) {
    if (_json.containsKey("batchId")) {
      batchId = _json["batchId"];
    }
    if (_json.containsKey("inventory")) {
      inventory = new Inventory.fromJson(_json["inventory"]);
    }
    if (_json.containsKey("merchantId")) {
      merchantId = _json["merchantId"];
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
    if (_json.containsKey("storeCode")) {
      storeCode = _json["storeCode"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (batchId != null) {
      _json["batchId"] = batchId;
    }
    if (inventory != null) {
      _json["inventory"] = (inventory).toJson();
    }
    if (merchantId != null) {
      _json["merchantId"] = merchantId;
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    if (storeCode != null) {
      _json["storeCode"] = storeCode;
    }
    return _json;
  }
}


/** Not documented yet. */
class InventoryCustomBatchResponse {
  /** The result of the execution of the batch requests. */
  core.List<InventoryCustomBatchResponseEntry> entries;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#inventoryCustomBatchResponse".
   */
  core.String kind;


  InventoryCustomBatchResponse();

  InventoryCustomBatchResponse.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = _json["entries"].map((value) => new InventoryCustomBatchResponseEntry.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/**
 * A batch entry encoding a single non-batch response from the inventory service
 * of the Content API for Shopping.
 */
class InventoryCustomBatchResponseEntry {
  /** The ID of the request entry this entry responds to. */
  core.int batchId;

  /** A list of errors defined if and only if the request failed. */
  Errors errors;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#inventoryCustomBatchResponseEntry".
   */
  core.String kind;


  InventoryCustomBatchResponseEntry();

  InventoryCustomBatchResponseEntry.fromJson(core.Map _json) {
    if (_json.containsKey("batchId")) {
      batchId = _json["batchId"];
    }
    if (_json.containsKey("errors")) {
      errors = new Errors.fromJson(_json["errors"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (batchId != null) {
      _json["batchId"] = batchId;
    }
    if (errors != null) {
      _json["errors"] = (errors).toJson();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** Not documented yet. */
class InventorySetRequest {
  /** The availability of the product. */
  core.String availability;

  /** The price of the product. */
  Price price;

  /**
   * The quantity of the product. Must be equal to or greater than zero.
   * Supported only for local products.
   */
  core.int quantity;

  /**
   * The sale price of the product. Mandatory if sale_price_effective_date is
   * defined.
   */
  Price salePrice;

  /**
   * A date range represented by a pair of ISO 8601 dates separated by a space,
   * comma, or slash. Both dates might be specified as 'null' if undecided.
   */
  core.String salePriceEffectiveDate;


  InventorySetRequest();

  InventorySetRequest.fromJson(core.Map _json) {
    if (_json.containsKey("availability")) {
      availability = _json["availability"];
    }
    if (_json.containsKey("price")) {
      price = new Price.fromJson(_json["price"]);
    }
    if (_json.containsKey("quantity")) {
      quantity = _json["quantity"];
    }
    if (_json.containsKey("salePrice")) {
      salePrice = new Price.fromJson(_json["salePrice"]);
    }
    if (_json.containsKey("salePriceEffectiveDate")) {
      salePriceEffectiveDate = _json["salePriceEffectiveDate"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (availability != null) {
      _json["availability"] = availability;
    }
    if (price != null) {
      _json["price"] = (price).toJson();
    }
    if (quantity != null) {
      _json["quantity"] = quantity;
    }
    if (salePrice != null) {
      _json["salePrice"] = (salePrice).toJson();
    }
    if (salePriceEffectiveDate != null) {
      _json["salePriceEffectiveDate"] = salePriceEffectiveDate;
    }
    return _json;
  }
}


/** Not documented yet. */
class InventorySetResponse {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#inventorySetResponse".
   */
  core.String kind;


  InventorySetResponse();

  InventorySetResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** Not documented yet. */
class LoyaltyPoints {
  /**
   * Name of loyalty points program. It is recommended to limit the name to 12
   * full-width characters or 24 Roman characters.
   */
  core.String name;

  /** The retailer's loyalty points in absolute value. */
  core.String pointsValue;

  /**
   * The ratio of a point when converted to currency. Google assumes currency
   * based on Merchant Center settings. If ratio is left out, it defaults to
   * 1.0.
   */
  core.double ratio;


  LoyaltyPoints();

  LoyaltyPoints.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("pointsValue")) {
      pointsValue = _json["pointsValue"];
    }
    if (_json.containsKey("ratio")) {
      ratio = _json["ratio"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (name != null) {
      _json["name"] = name;
    }
    if (pointsValue != null) {
      _json["pointsValue"] = pointsValue;
    }
    if (ratio != null) {
      _json["ratio"] = ratio;
    }
    return _json;
  }
}


/** Not documented yet. */
class Price {
  /** The currency of the price. */
  core.String currency;

  /** The price represented as a number. */
  core.String value;


  Price();

  Price.fromJson(core.Map _json) {
    if (_json.containsKey("currency")) {
      currency = _json["currency"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (currency != null) {
      _json["currency"] = currency;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/** Product data. */
class Product {
  /** Additional URLs of images of the item. */
  core.List<core.String> additionalImageLinks;

  /** Set to true if the item is targeted towards adults. */
  core.bool adult;

  /**
   * Used to group items in an arbitrary way. Only for CPA%, discouraged
   * otherwise.
   */
  core.String adwordsGrouping;

  /** Similar to adwords_grouping, but only works on CPC. */
  core.List<core.String> adwordsLabels;

  /**
   * Allows advertisers to override the item URL when the product is shown
   * within the context of Product Ads.
   */
  core.String adwordsRedirect;

  /** Target age group of the item. */
  core.String ageGroup;

  /** Availability status of the item. */
  core.String availability;

  /** The day a pre-ordered product becomes available for delivery. */
  core.String availabilityDate;

  /** Brand of the item. */
  core.String brand;

  /** The item's channel (online or local). */
  core.String channel;

  /** Color of the item. */
  core.String color;

  /** Condition or state of the item. */
  core.String condition;

  /** The two-letter ISO 639-1 language code for the item. */
  core.String contentLanguage;

  /** A list of custom (merchant-provided) attributes. */
  core.List<ProductCustomAttribute> customAttributes;

  /** A list of custom (merchant-provided) custom attribute groups. */
  core.List<ProductCustomGroup> customGroups;

  /** Custom label 0 for custom grouping of items in a Shopping campaign. */
  core.String customLabel0;

  /** Custom label 1 for custom grouping of items in a Shopping campaign. */
  core.String customLabel1;

  /** Custom label 2 for custom grouping of items in a Shopping campaign. */
  core.String customLabel2;

  /** Custom label 3 for custom grouping of items in a Shopping campaign. */
  core.String customLabel3;

  /** Custom label 4 for custom grouping of items in a Shopping campaign. */
  core.String customLabel4;

  /** Description of the item. */
  core.String description;

  /** Specifies the intended destinations for the product. */
  core.List<ProductDestination> destinations;

  /** The energy efficiency class as defined in EU directive 2010/30/EU. */
  core.String energyEfficiencyClass;

  /** Date that an item will expire. */
  core.String expirationDate;

  /** Target gender of the item. */
  core.String gender;

  /** Google's category of the item. */
  core.String googleProductCategory;

  /** Global Trade Item Number (GTIN) of the item. */
  core.String gtin;

  /** The REST id of the product. */
  core.String id;

  /**
   * False when the item does not have unique product identifiers appropriate to
   * its category, such as GTIN, MPN, and brand. Required according to the
   * Unique Product Identifier Rules for all target countries except for Canada.
   */
  core.bool identifierExists;

  /** URL of an image of the item. */
  core.String imageLink;

  /** Number and amount of installments to pay for an item. Brazil only. */
  ProductInstallment installment;

  /**
   * Whether the item is a merchant-defined bundle. A bundle is a custom
   * grouping of different products sold by a merchant for a single price.
   */
  core.bool isBundle;

  /** Shared identifier for all variants of the same product. */
  core.String itemGroupId;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#product".
   */
  core.String kind;

  /** URL directly linking to your item's page on your website. */
  core.String link;

  /**
   * Loyalty points that users receive after purchasing the item. Japan only.
   */
  LoyaltyPoints loyaltyPoints;

  /** The material of which the item is made. */
  core.String material;

  /** Link to a mobile-optimized version of the landing page. */
  core.String mobileLink;

  /** Manufacturer Part Number (MPN) of the item. */
  core.String mpn;

  /** The number of identical products in a merchant-defined multipack. */
  core.String multipack;

  /** An identifier of the item. */
  core.String offerId;

  /** Whether an item is available for purchase only online. */
  core.bool onlineOnly;

  /** The item's pattern (e.g. polka dots). */
  core.String pattern;

  /** Price of the item. */
  Price price;

  /** Your category of the item. */
  core.String productType;

  /** Advertised sale price of the item. */
  Price salePrice;

  /** Date range during which the item is on sale. */
  core.String salePriceEffectiveDate;

  /** Shipping rules. */
  core.List<ProductShipping> shipping;

  /**
   * The shipping label of the product, used to group product in account-level
   * shipping rules.
   */
  core.String shippingLabel;

  /** Weight of the item for shipping. */
  ProductShippingWeight shippingWeight;

  /** System in which the size is specified. Recommended for apparel items. */
  core.String sizeSystem;

  /** The cut of the item. Recommended for apparel items. */
  core.String sizeType;

  /** Size of the item. */
  core.List<core.String> sizes;

  /** The two-letter ISO 3166 country code for the item. */
  core.String targetCountry;

  /** Tax information. */
  core.List<ProductTax> taxes;

  /** Title of the item. */
  core.String title;

  /** The preference of the denominator of the unit price. */
  ProductUnitPricingBaseMeasure unitPricingBaseMeasure;

  /** The measure and dimension of an item. */
  ProductUnitPricingMeasure unitPricingMeasure;

  /** The read-only list of intended destinations which passed validation. */
  core.List<core.String> validatedDestinations;

  /** Read-only warnings. */
  core.List<Error> warnings;


  Product();

  Product.fromJson(core.Map _json) {
    if (_json.containsKey("additionalImageLinks")) {
      additionalImageLinks = _json["additionalImageLinks"];
    }
    if (_json.containsKey("adult")) {
      adult = _json["adult"];
    }
    if (_json.containsKey("adwordsGrouping")) {
      adwordsGrouping = _json["adwordsGrouping"];
    }
    if (_json.containsKey("adwordsLabels")) {
      adwordsLabels = _json["adwordsLabels"];
    }
    if (_json.containsKey("adwordsRedirect")) {
      adwordsRedirect = _json["adwordsRedirect"];
    }
    if (_json.containsKey("ageGroup")) {
      ageGroup = _json["ageGroup"];
    }
    if (_json.containsKey("availability")) {
      availability = _json["availability"];
    }
    if (_json.containsKey("availabilityDate")) {
      availabilityDate = _json["availabilityDate"];
    }
    if (_json.containsKey("brand")) {
      brand = _json["brand"];
    }
    if (_json.containsKey("channel")) {
      channel = _json["channel"];
    }
    if (_json.containsKey("color")) {
      color = _json["color"];
    }
    if (_json.containsKey("condition")) {
      condition = _json["condition"];
    }
    if (_json.containsKey("contentLanguage")) {
      contentLanguage = _json["contentLanguage"];
    }
    if (_json.containsKey("customAttributes")) {
      customAttributes = _json["customAttributes"].map((value) => new ProductCustomAttribute.fromJson(value)).toList();
    }
    if (_json.containsKey("customGroups")) {
      customGroups = _json["customGroups"].map((value) => new ProductCustomGroup.fromJson(value)).toList();
    }
    if (_json.containsKey("customLabel0")) {
      customLabel0 = _json["customLabel0"];
    }
    if (_json.containsKey("customLabel1")) {
      customLabel1 = _json["customLabel1"];
    }
    if (_json.containsKey("customLabel2")) {
      customLabel2 = _json["customLabel2"];
    }
    if (_json.containsKey("customLabel3")) {
      customLabel3 = _json["customLabel3"];
    }
    if (_json.containsKey("customLabel4")) {
      customLabel4 = _json["customLabel4"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("destinations")) {
      destinations = _json["destinations"].map((value) => new ProductDestination.fromJson(value)).toList();
    }
    if (_json.containsKey("energyEfficiencyClass")) {
      energyEfficiencyClass = _json["energyEfficiencyClass"];
    }
    if (_json.containsKey("expirationDate")) {
      expirationDate = _json["expirationDate"];
    }
    if (_json.containsKey("gender")) {
      gender = _json["gender"];
    }
    if (_json.containsKey("googleProductCategory")) {
      googleProductCategory = _json["googleProductCategory"];
    }
    if (_json.containsKey("gtin")) {
      gtin = _json["gtin"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("identifierExists")) {
      identifierExists = _json["identifierExists"];
    }
    if (_json.containsKey("imageLink")) {
      imageLink = _json["imageLink"];
    }
    if (_json.containsKey("installment")) {
      installment = new ProductInstallment.fromJson(_json["installment"]);
    }
    if (_json.containsKey("isBundle")) {
      isBundle = _json["isBundle"];
    }
    if (_json.containsKey("itemGroupId")) {
      itemGroupId = _json["itemGroupId"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("link")) {
      link = _json["link"];
    }
    if (_json.containsKey("loyaltyPoints")) {
      loyaltyPoints = new LoyaltyPoints.fromJson(_json["loyaltyPoints"]);
    }
    if (_json.containsKey("material")) {
      material = _json["material"];
    }
    if (_json.containsKey("mobileLink")) {
      mobileLink = _json["mobileLink"];
    }
    if (_json.containsKey("mpn")) {
      mpn = _json["mpn"];
    }
    if (_json.containsKey("multipack")) {
      multipack = _json["multipack"];
    }
    if (_json.containsKey("offerId")) {
      offerId = _json["offerId"];
    }
    if (_json.containsKey("onlineOnly")) {
      onlineOnly = _json["onlineOnly"];
    }
    if (_json.containsKey("pattern")) {
      pattern = _json["pattern"];
    }
    if (_json.containsKey("price")) {
      price = new Price.fromJson(_json["price"]);
    }
    if (_json.containsKey("productType")) {
      productType = _json["productType"];
    }
    if (_json.containsKey("salePrice")) {
      salePrice = new Price.fromJson(_json["salePrice"]);
    }
    if (_json.containsKey("salePriceEffectiveDate")) {
      salePriceEffectiveDate = _json["salePriceEffectiveDate"];
    }
    if (_json.containsKey("shipping")) {
      shipping = _json["shipping"].map((value) => new ProductShipping.fromJson(value)).toList();
    }
    if (_json.containsKey("shippingLabel")) {
      shippingLabel = _json["shippingLabel"];
    }
    if (_json.containsKey("shippingWeight")) {
      shippingWeight = new ProductShippingWeight.fromJson(_json["shippingWeight"]);
    }
    if (_json.containsKey("sizeSystem")) {
      sizeSystem = _json["sizeSystem"];
    }
    if (_json.containsKey("sizeType")) {
      sizeType = _json["sizeType"];
    }
    if (_json.containsKey("sizes")) {
      sizes = _json["sizes"];
    }
    if (_json.containsKey("targetCountry")) {
      targetCountry = _json["targetCountry"];
    }
    if (_json.containsKey("taxes")) {
      taxes = _json["taxes"].map((value) => new ProductTax.fromJson(value)).toList();
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("unitPricingBaseMeasure")) {
      unitPricingBaseMeasure = new ProductUnitPricingBaseMeasure.fromJson(_json["unitPricingBaseMeasure"]);
    }
    if (_json.containsKey("unitPricingMeasure")) {
      unitPricingMeasure = new ProductUnitPricingMeasure.fromJson(_json["unitPricingMeasure"]);
    }
    if (_json.containsKey("validatedDestinations")) {
      validatedDestinations = _json["validatedDestinations"];
    }
    if (_json.containsKey("warnings")) {
      warnings = _json["warnings"].map((value) => new Error.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (additionalImageLinks != null) {
      _json["additionalImageLinks"] = additionalImageLinks;
    }
    if (adult != null) {
      _json["adult"] = adult;
    }
    if (adwordsGrouping != null) {
      _json["adwordsGrouping"] = adwordsGrouping;
    }
    if (adwordsLabels != null) {
      _json["adwordsLabels"] = adwordsLabels;
    }
    if (adwordsRedirect != null) {
      _json["adwordsRedirect"] = adwordsRedirect;
    }
    if (ageGroup != null) {
      _json["ageGroup"] = ageGroup;
    }
    if (availability != null) {
      _json["availability"] = availability;
    }
    if (availabilityDate != null) {
      _json["availabilityDate"] = availabilityDate;
    }
    if (brand != null) {
      _json["brand"] = brand;
    }
    if (channel != null) {
      _json["channel"] = channel;
    }
    if (color != null) {
      _json["color"] = color;
    }
    if (condition != null) {
      _json["condition"] = condition;
    }
    if (contentLanguage != null) {
      _json["contentLanguage"] = contentLanguage;
    }
    if (customAttributes != null) {
      _json["customAttributes"] = customAttributes.map((value) => (value).toJson()).toList();
    }
    if (customGroups != null) {
      _json["customGroups"] = customGroups.map((value) => (value).toJson()).toList();
    }
    if (customLabel0 != null) {
      _json["customLabel0"] = customLabel0;
    }
    if (customLabel1 != null) {
      _json["customLabel1"] = customLabel1;
    }
    if (customLabel2 != null) {
      _json["customLabel2"] = customLabel2;
    }
    if (customLabel3 != null) {
      _json["customLabel3"] = customLabel3;
    }
    if (customLabel4 != null) {
      _json["customLabel4"] = customLabel4;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (destinations != null) {
      _json["destinations"] = destinations.map((value) => (value).toJson()).toList();
    }
    if (energyEfficiencyClass != null) {
      _json["energyEfficiencyClass"] = energyEfficiencyClass;
    }
    if (expirationDate != null) {
      _json["expirationDate"] = expirationDate;
    }
    if (gender != null) {
      _json["gender"] = gender;
    }
    if (googleProductCategory != null) {
      _json["googleProductCategory"] = googleProductCategory;
    }
    if (gtin != null) {
      _json["gtin"] = gtin;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (identifierExists != null) {
      _json["identifierExists"] = identifierExists;
    }
    if (imageLink != null) {
      _json["imageLink"] = imageLink;
    }
    if (installment != null) {
      _json["installment"] = (installment).toJson();
    }
    if (isBundle != null) {
      _json["isBundle"] = isBundle;
    }
    if (itemGroupId != null) {
      _json["itemGroupId"] = itemGroupId;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (link != null) {
      _json["link"] = link;
    }
    if (loyaltyPoints != null) {
      _json["loyaltyPoints"] = (loyaltyPoints).toJson();
    }
    if (material != null) {
      _json["material"] = material;
    }
    if (mobileLink != null) {
      _json["mobileLink"] = mobileLink;
    }
    if (mpn != null) {
      _json["mpn"] = mpn;
    }
    if (multipack != null) {
      _json["multipack"] = multipack;
    }
    if (offerId != null) {
      _json["offerId"] = offerId;
    }
    if (onlineOnly != null) {
      _json["onlineOnly"] = onlineOnly;
    }
    if (pattern != null) {
      _json["pattern"] = pattern;
    }
    if (price != null) {
      _json["price"] = (price).toJson();
    }
    if (productType != null) {
      _json["productType"] = productType;
    }
    if (salePrice != null) {
      _json["salePrice"] = (salePrice).toJson();
    }
    if (salePriceEffectiveDate != null) {
      _json["salePriceEffectiveDate"] = salePriceEffectiveDate;
    }
    if (shipping != null) {
      _json["shipping"] = shipping.map((value) => (value).toJson()).toList();
    }
    if (shippingLabel != null) {
      _json["shippingLabel"] = shippingLabel;
    }
    if (shippingWeight != null) {
      _json["shippingWeight"] = (shippingWeight).toJson();
    }
    if (sizeSystem != null) {
      _json["sizeSystem"] = sizeSystem;
    }
    if (sizeType != null) {
      _json["sizeType"] = sizeType;
    }
    if (sizes != null) {
      _json["sizes"] = sizes;
    }
    if (targetCountry != null) {
      _json["targetCountry"] = targetCountry;
    }
    if (taxes != null) {
      _json["taxes"] = taxes.map((value) => (value).toJson()).toList();
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (unitPricingBaseMeasure != null) {
      _json["unitPricingBaseMeasure"] = (unitPricingBaseMeasure).toJson();
    }
    if (unitPricingMeasure != null) {
      _json["unitPricingMeasure"] = (unitPricingMeasure).toJson();
    }
    if (validatedDestinations != null) {
      _json["validatedDestinations"] = validatedDestinations;
    }
    if (warnings != null) {
      _json["warnings"] = warnings.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class ProductCustomAttribute {
  /** The name of the attribute. */
  core.String name;

  /** The type of the attribute. */
  core.String type;

  /**
   * Free-form unit of the attribute. Unit can only be used for values of type
   * INT or FLOAT.
   */
  core.String unit;

  /** The value of the attribute. */
  core.String value;


  ProductCustomAttribute();

  ProductCustomAttribute.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("unit")) {
      unit = _json["unit"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (name != null) {
      _json["name"] = name;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (unit != null) {
      _json["unit"] = unit;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/** Not documented yet. */
class ProductCustomGroup {
  /** The sub-attributes. */
  core.List<ProductCustomAttribute> attributes;

  /** The name of the group. */
  core.String name;


  ProductCustomGroup();

  ProductCustomGroup.fromJson(core.Map _json) {
    if (_json.containsKey("attributes")) {
      attributes = _json["attributes"].map((value) => new ProductCustomAttribute.fromJson(value)).toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (attributes != null) {
      _json["attributes"] = attributes.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}


/** Not documented yet. */
class ProductDestination {
  /** The name of the destination. */
  core.String destinationName;

  /** Whether the destination is required, excluded or should be validated. */
  core.String intention;


  ProductDestination();

  ProductDestination.fromJson(core.Map _json) {
    if (_json.containsKey("destinationName")) {
      destinationName = _json["destinationName"];
    }
    if (_json.containsKey("intention")) {
      intention = _json["intention"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (destinationName != null) {
      _json["destinationName"] = destinationName;
    }
    if (intention != null) {
      _json["intention"] = intention;
    }
    return _json;
  }
}


/** Not documented yet. */
class ProductInstallment {
  /** The amount the buyer has to pay per month. */
  Price amount;

  /** The number of installments the buyer has to pay. */
  core.String months;


  ProductInstallment();

  ProductInstallment.fromJson(core.Map _json) {
    if (_json.containsKey("amount")) {
      amount = new Price.fromJson(_json["amount"]);
    }
    if (_json.containsKey("months")) {
      months = _json["months"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (amount != null) {
      _json["amount"] = (amount).toJson();
    }
    if (months != null) {
      _json["months"] = months;
    }
    return _json;
  }
}


/** Not documented yet. */
class ProductShipping {
  /**
   * The two-letter ISO 3166 country code for the country to which an item will
   * ship.
   */
  core.String country;

  /**
   * The location where the shipping is applicable, represented by a location
   * group name.
   */
  core.String locationGroupName;

  /**
   * The numeric id of a location that the shipping rate applies to as defined
   * in the AdWords API.
   */
  core.String locationId;

  /**
   * The postal code range that the shipping rate applies to, represented by a
   * postal code, a postal code prefix using * wildcard, a range between two
   * postal codes or two postal code prefixes of equal length.
   */
  core.String postalCode;

  /** Fixed shipping price, represented as a number. */
  Price price;

  /**
   * The geographic region to which a shipping rate applies (e.g. zip code).
   */
  core.String region;

  /** A free-form description of the service class or delivery speed. */
  core.String service;


  ProductShipping();

  ProductShipping.fromJson(core.Map _json) {
    if (_json.containsKey("country")) {
      country = _json["country"];
    }
    if (_json.containsKey("locationGroupName")) {
      locationGroupName = _json["locationGroupName"];
    }
    if (_json.containsKey("locationId")) {
      locationId = _json["locationId"];
    }
    if (_json.containsKey("postalCode")) {
      postalCode = _json["postalCode"];
    }
    if (_json.containsKey("price")) {
      price = new Price.fromJson(_json["price"]);
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("service")) {
      service = _json["service"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (country != null) {
      _json["country"] = country;
    }
    if (locationGroupName != null) {
      _json["locationGroupName"] = locationGroupName;
    }
    if (locationId != null) {
      _json["locationId"] = locationId;
    }
    if (postalCode != null) {
      _json["postalCode"] = postalCode;
    }
    if (price != null) {
      _json["price"] = (price).toJson();
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (service != null) {
      _json["service"] = service;
    }
    return _json;
  }
}


/** Not documented yet. */
class ProductShippingWeight {
  /** The unit of value. */
  core.String unit;

  /**
   * The weight of the product used to calculate the shipping cost of the item.
   */
  core.double value;


  ProductShippingWeight();

  ProductShippingWeight.fromJson(core.Map _json) {
    if (_json.containsKey("unit")) {
      unit = _json["unit"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (unit != null) {
      _json["unit"] = unit;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/**
 * The status of a product, i.e., information about a product computed
 * asynchronously by the data quality analysis.
 */
class ProductStatus {
  /** A list of data quality issues associated with the product. */
  core.List<ProductStatusDataQualityIssue> dataQualityIssues;

  /** The intended destinations for the product. */
  core.List<ProductStatusDestinationStatus> destinationStatuses;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#productStatus".
   */
  core.String kind;

  /** The link to the product. */
  core.String link;

  /** The id of the product for which status is reported. */
  core.String productId;

  /** The title of the product. */
  core.String title;


  ProductStatus();

  ProductStatus.fromJson(core.Map _json) {
    if (_json.containsKey("dataQualityIssues")) {
      dataQualityIssues = _json["dataQualityIssues"].map((value) => new ProductStatusDataQualityIssue.fromJson(value)).toList();
    }
    if (_json.containsKey("destinationStatuses")) {
      destinationStatuses = _json["destinationStatuses"].map((value) => new ProductStatusDestinationStatus.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("link")) {
      link = _json["link"];
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (dataQualityIssues != null) {
      _json["dataQualityIssues"] = dataQualityIssues.map((value) => (value).toJson()).toList();
    }
    if (destinationStatuses != null) {
      _json["destinationStatuses"] = destinationStatuses.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (link != null) {
      _json["link"] = link;
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}


/** Not documented yet. */
class ProductStatusDataQualityIssue {
  /** A more detailed error string. */
  core.String detail;

  /** The fetch status for landing_page_errors. */
  core.String fetchStatus;

  /** The id of the data quality issue. */
  core.String id;

  /** The attribute name that is relevant for the issue. */
  core.String location;

  /** The time stamp of the data quality issue. */
  core.String timestamp;

  /** The value of that attribute that was found on the landing page */
  core.String valueOnLandingPage;

  /** The value the attribute had at time of evaluation. */
  core.String valueProvided;


  ProductStatusDataQualityIssue();

  ProductStatusDataQualityIssue.fromJson(core.Map _json) {
    if (_json.containsKey("detail")) {
      detail = _json["detail"];
    }
    if (_json.containsKey("fetchStatus")) {
      fetchStatus = _json["fetchStatus"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("timestamp")) {
      timestamp = _json["timestamp"];
    }
    if (_json.containsKey("valueOnLandingPage")) {
      valueOnLandingPage = _json["valueOnLandingPage"];
    }
    if (_json.containsKey("valueProvided")) {
      valueProvided = _json["valueProvided"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (detail != null) {
      _json["detail"] = detail;
    }
    if (fetchStatus != null) {
      _json["fetchStatus"] = fetchStatus;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (timestamp != null) {
      _json["timestamp"] = timestamp;
    }
    if (valueOnLandingPage != null) {
      _json["valueOnLandingPage"] = valueOnLandingPage;
    }
    if (valueProvided != null) {
      _json["valueProvided"] = valueProvided;
    }
    return _json;
  }
}


/** Not documented yet. */
class ProductStatusDestinationStatus {
  /** The destination's approval status. */
  core.String approvalStatus;

  /** The name of the destination */
  core.String destination;

  /**
   * Whether the destination is required, excluded, selected by default or
   * should be validated.
   */
  core.String intention;


  ProductStatusDestinationStatus();

  ProductStatusDestinationStatus.fromJson(core.Map _json) {
    if (_json.containsKey("approvalStatus")) {
      approvalStatus = _json["approvalStatus"];
    }
    if (_json.containsKey("destination")) {
      destination = _json["destination"];
    }
    if (_json.containsKey("intention")) {
      intention = _json["intention"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (approvalStatus != null) {
      _json["approvalStatus"] = approvalStatus;
    }
    if (destination != null) {
      _json["destination"] = destination;
    }
    if (intention != null) {
      _json["intention"] = intention;
    }
    return _json;
  }
}


/** Not documented yet. */
class ProductTax {
  /**
   * The country within which the item is taxed, specified with a two-letter ISO
   * 3166 country code.
   */
  core.String country;

  /**
   * The numeric id of a location that the tax rate applies to as defined in the
   * Adwords API
   * (https://developers.google.com/adwords/api/docs/appendix/geotargeting).
   */
  core.String locationId;

  /**
   * The postal code range that the tax rate applies to, represented by a ZIP
   * code, a ZIP code prefix using * wildcard, a range between two ZIP codes or
   * two ZIP code prefixes of equal length. Examples: 94114, 94*, 94002-95460,
   * 94*-95*.
   */
  core.String postalCode;

  /** The percentage of tax rate that applies to the item price. */
  core.double rate;

  /** The geographic region to which the tax rate applies. */
  core.String region;

  /** Set to true if tax is charged on shipping. */
  core.bool taxShip;


  ProductTax();

  ProductTax.fromJson(core.Map _json) {
    if (_json.containsKey("country")) {
      country = _json["country"];
    }
    if (_json.containsKey("locationId")) {
      locationId = _json["locationId"];
    }
    if (_json.containsKey("postalCode")) {
      postalCode = _json["postalCode"];
    }
    if (_json.containsKey("rate")) {
      rate = _json["rate"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("taxShip")) {
      taxShip = _json["taxShip"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (country != null) {
      _json["country"] = country;
    }
    if (locationId != null) {
      _json["locationId"] = locationId;
    }
    if (postalCode != null) {
      _json["postalCode"] = postalCode;
    }
    if (rate != null) {
      _json["rate"] = rate;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (taxShip != null) {
      _json["taxShip"] = taxShip;
    }
    return _json;
  }
}


/** Not documented yet. */
class ProductUnitPricingBaseMeasure {
  /** The unit of the denominator. */
  core.String unit;

  /** The denominator of the unit price. */
  core.String value;


  ProductUnitPricingBaseMeasure();

  ProductUnitPricingBaseMeasure.fromJson(core.Map _json) {
    if (_json.containsKey("unit")) {
      unit = _json["unit"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (unit != null) {
      _json["unit"] = unit;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/** Not documented yet. */
class ProductUnitPricingMeasure {
  /** The unit of the measure. */
  core.String unit;

  /** The measure of an item. */
  core.double value;


  ProductUnitPricingMeasure();

  ProductUnitPricingMeasure.fromJson(core.Map _json) {
    if (_json.containsKey("unit")) {
      unit = _json["unit"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (unit != null) {
      _json["unit"] = unit;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/** Not documented yet. */
class ProductsCustomBatchRequest {
  /** The request entries to be processed in the batch. */
  core.List<ProductsCustomBatchRequestEntry> entries;


  ProductsCustomBatchRequest();

  ProductsCustomBatchRequest.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = _json["entries"].map((value) => new ProductsCustomBatchRequestEntry.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/**
 * A batch entry encoding a single non-batch request to the products service of
 * the Content API for Shopping.
 */
class ProductsCustomBatchRequestEntry {
  /** An entry ID, unique within the batch request. */
  core.int batchId;

  /** The ID of the managing account. */
  core.String merchantId;

  /** Not documented yet. */
  core.String method;

  /** The product to insert. Only required if the method is insert. */
  Product product;

  /**
   * The ID of the product to get or delete. Only defined if the method is get
   * or delete.
   */
  core.String productId;


  ProductsCustomBatchRequestEntry();

  ProductsCustomBatchRequestEntry.fromJson(core.Map _json) {
    if (_json.containsKey("batchId")) {
      batchId = _json["batchId"];
    }
    if (_json.containsKey("merchantId")) {
      merchantId = _json["merchantId"];
    }
    if (_json.containsKey("method")) {
      method = _json["method"];
    }
    if (_json.containsKey("product")) {
      product = new Product.fromJson(_json["product"]);
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (batchId != null) {
      _json["batchId"] = batchId;
    }
    if (merchantId != null) {
      _json["merchantId"] = merchantId;
    }
    if (method != null) {
      _json["method"] = method;
    }
    if (product != null) {
      _json["product"] = (product).toJson();
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    return _json;
  }
}


/** Not documented yet. */
class ProductsCustomBatchResponse {
  /** The result of the execution of the batch requests. */
  core.List<ProductsCustomBatchResponseEntry> entries;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#productsCustomBatchResponse".
   */
  core.String kind;


  ProductsCustomBatchResponse();

  ProductsCustomBatchResponse.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = _json["entries"].map((value) => new ProductsCustomBatchResponseEntry.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/**
 * A batch entry encoding a single non-batch response from the products service
 * of the Content API for Shopping.
 */
class ProductsCustomBatchResponseEntry {
  /** The ID of the request entry this entry responds to. */
  core.int batchId;

  /** A list of errors defined if and only if the request failed. */
  Errors errors;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#productsCustomBatchResponseEntry".
   */
  core.String kind;

  /**
   * The inserted product. Only defined if the method is insert and if the
   * request was successful.
   */
  Product product;


  ProductsCustomBatchResponseEntry();

  ProductsCustomBatchResponseEntry.fromJson(core.Map _json) {
    if (_json.containsKey("batchId")) {
      batchId = _json["batchId"];
    }
    if (_json.containsKey("errors")) {
      errors = new Errors.fromJson(_json["errors"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("product")) {
      product = new Product.fromJson(_json["product"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (batchId != null) {
      _json["batchId"] = batchId;
    }
    if (errors != null) {
      _json["errors"] = (errors).toJson();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (product != null) {
      _json["product"] = (product).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class ProductsListResponse {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#productsListResponse".
   */
  core.String kind;

  /** The token for the retrieval of the next page of products. */
  core.String nextPageToken;

  /** Not documented yet. */
  core.List<Product> resources;


  ProductsListResponse();

  ProductsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("resources")) {
      resources = _json["resources"].map((value) => new Product.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (resources != null) {
      _json["resources"] = resources.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class ProductstatusesCustomBatchRequest {
  /** The request entries to be processed in the batch. */
  core.List<ProductstatusesCustomBatchRequestEntry> entries;


  ProductstatusesCustomBatchRequest();

  ProductstatusesCustomBatchRequest.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = _json["entries"].map((value) => new ProductstatusesCustomBatchRequestEntry.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/**
 * A batch entry encoding a single non-batch request to the productstatuses
 * service of the Content API for Shopping.
 */
class ProductstatusesCustomBatchRequestEntry {
  /** An entry ID, unique within the batch request. */
  core.int batchId;

  /** The ID of the managing account. */
  core.String merchantId;

  /** Not documented yet. */
  core.String method;

  /** The ID of the product whose status to get. */
  core.String productId;


  ProductstatusesCustomBatchRequestEntry();

  ProductstatusesCustomBatchRequestEntry.fromJson(core.Map _json) {
    if (_json.containsKey("batchId")) {
      batchId = _json["batchId"];
    }
    if (_json.containsKey("merchantId")) {
      merchantId = _json["merchantId"];
    }
    if (_json.containsKey("method")) {
      method = _json["method"];
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (batchId != null) {
      _json["batchId"] = batchId;
    }
    if (merchantId != null) {
      _json["merchantId"] = merchantId;
    }
    if (method != null) {
      _json["method"] = method;
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    return _json;
  }
}


/** Not documented yet. */
class ProductstatusesCustomBatchResponse {
  /** The result of the execution of the batch requests. */
  core.List<ProductstatusesCustomBatchResponseEntry> entries;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#productstatusesCustomBatchResponse".
   */
  core.String kind;


  ProductstatusesCustomBatchResponse();

  ProductstatusesCustomBatchResponse.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = _json["entries"].map((value) => new ProductstatusesCustomBatchResponseEntry.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/**
 * A batch entry encoding a single non-batch response from the productstatuses
 * service of the Content API for Shopping.
 */
class ProductstatusesCustomBatchResponseEntry {
  /** The ID of the request entry this entry responds to. */
  core.int batchId;

  /** A list of errors, if the request failed. */
  Errors errors;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#productstatusesCustomBatchResponseEntry".
   */
  core.String kind;

  /**
   * The requested product status. Only defined if the request was successful.
   */
  ProductStatus productStatus;


  ProductstatusesCustomBatchResponseEntry();

  ProductstatusesCustomBatchResponseEntry.fromJson(core.Map _json) {
    if (_json.containsKey("batchId")) {
      batchId = _json["batchId"];
    }
    if (_json.containsKey("errors")) {
      errors = new Errors.fromJson(_json["errors"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("productStatus")) {
      productStatus = new ProductStatus.fromJson(_json["productStatus"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (batchId != null) {
      _json["batchId"] = batchId;
    }
    if (errors != null) {
      _json["errors"] = (errors).toJson();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (productStatus != null) {
      _json["productStatus"] = (productStatus).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class ProductstatusesListResponse {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "content#productstatusesListResponse".
   */
  core.String kind;

  /** The token for the retrieval of the next page of products statuses. */
  core.String nextPageToken;

  /** Not documented yet. */
  core.List<ProductStatus> resources;


  ProductstatusesListResponse();

  ProductstatusesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("resources")) {
      resources = _json["resources"].map((value) => new ProductStatus.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (resources != null) {
      _json["resources"] = resources.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


