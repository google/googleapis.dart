// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unused_import, unnecessary_cast

library googleapis.androidpublisher.v2;

import 'dart:core' as core;
import 'dart:async' as async;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client androidpublisher/v2';

/// Accesses Android application developers' Google Play accounts.
class AndroidpublisherApi {
  /// View and manage your Google Play Developer account
  static const AndroidpublisherScope =
      "https://www.googleapis.com/auth/androidpublisher";

  final commons.ApiRequester _requester;

  PurchasesResourceApi get purchases => new PurchasesResourceApi(_requester);

  AndroidpublisherApi(http.Client client,
      {core.String rootUrl = "https://www.googleapis.com/",
      core.String servicePath = "androidpublisher/v2/applications/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class PurchasesResourceApi {
  final commons.ApiRequester _requester;

  PurchasesProductsResourceApi get products =>
      new PurchasesProductsResourceApi(_requester);
  PurchasesVoidedpurchasesResourceApi get voidedpurchases =>
      new PurchasesVoidedpurchasesResourceApi(_requester);

  PurchasesResourceApi(commons.ApiRequester client) : _requester = client;
}

class PurchasesProductsResourceApi {
  final commons.ApiRequester _requester;

  PurchasesProductsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Checks the purchase and consumption status of an inapp item.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application the inapp product was
  /// sold in (for example, 'com.some.thing').
  ///
  /// [productId] - The inapp product SKU (for example,
  /// 'com.some.thing.inapp1').
  ///
  /// [token] - The token provided to the user's device when the inapp product
  /// was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductPurchase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductPurchase> get(
      core.String packageName, core.String productId, core.String token,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (productId == null) {
      throw new core.ArgumentError("Parameter productId is required.");
    }
    if (token == null) {
      throw new core.ArgumentError("Parameter token is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$packageName') +
        '/purchases/products/' +
        commons.Escaper.ecapeVariable('$productId') +
        '/tokens/' +
        commons.Escaper.ecapeVariable('$token');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ProductPurchase.fromJson(data));
  }
}

class PurchasesVoidedpurchasesResourceApi {
  final commons.ApiRequester _requester;

  PurchasesVoidedpurchasesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists the purchases that were canceled, refunded or charged-back.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application for which voided
  /// purchases need to be returned (for example, 'com.some.thing').
  ///
  /// [endTime] - The time, in milliseconds since the Epoch, of the newest
  /// voided purchase that you want to see in the response. The value of this
  /// parameter cannot be greater than the current time and is ignored if a
  /// pagination token is set. Default value is current time. Note: This filter
  /// is applied on the time at which the record is seen as voided by our
  /// systems and not the actual voided time returned in the response.
  ///
  /// [maxResults] - null
  ///
  /// [startIndex] - null
  ///
  /// [startTime] - The time, in milliseconds since the Epoch, of the oldest
  /// voided purchase that you want to see in the response. The value of this
  /// parameter cannot be older than 30 days and is ignored if a pagination
  /// token is set. Default value is current time minus 30 days. Note: This
  /// filter is applied on the time at which the record is seen as voided by our
  /// systems and not the actual voided time returned in the response.
  ///
  /// [token] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VoidedPurchasesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VoidedPurchasesListResponse> list(core.String packageName,
      {core.String endTime,
      core.int maxResults,
      core.int startIndex,
      core.String startTime,
      core.String token,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (endTime != null) {
      _queryParams["endTime"] = [endTime];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (startIndex != null) {
      _queryParams["startIndex"] = ["${startIndex}"];
    }
    if (startTime != null) {
      _queryParams["startTime"] = [startTime];
    }
    if (token != null) {
      _queryParams["token"] = [token];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$packageName') +
        '/purchases/voidedpurchases';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new VoidedPurchasesListResponse.fromJson(data));
  }
}

class PageInfo {
  core.int resultPerPage;
  core.int startIndex;
  core.int totalResults;

  PageInfo();

  PageInfo.fromJson(core.Map _json) {
    if (_json.containsKey("resultPerPage")) {
      resultPerPage = _json["resultPerPage"];
    }
    if (_json.containsKey("startIndex")) {
      startIndex = _json["startIndex"];
    }
    if (_json.containsKey("totalResults")) {
      totalResults = _json["totalResults"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (resultPerPage != null) {
      _json["resultPerPage"] = resultPerPage;
    }
    if (startIndex != null) {
      _json["startIndex"] = startIndex;
    }
    if (totalResults != null) {
      _json["totalResults"] = totalResults;
    }
    return _json;
  }
}

/// A ProductPurchase resource indicates the status of a user's inapp product
/// purchase.
class ProductPurchase {
  /// The consumption state of the inapp product. Possible values are:
  /// - Yet to be consumed
  /// - Consumed
  core.int consumptionState;

  /// A developer-specified string that contains supplemental information about
  /// an order.
  core.String developerPayload;

  /// This kind represents an inappPurchase object in the androidpublisher
  /// service.
  core.String kind;

  /// The order id associated with the purchase of the inapp product.
  core.String orderId;

  /// The purchase state of the order. Possible values are:
  /// - Purchased
  /// - Canceled
  /// - Pending
  core.int purchaseState;

  /// The time the product was purchased, in milliseconds since the epoch (Jan
  /// 1, 1970).
  core.String purchaseTimeMillis;

  /// The type of purchase of the inapp product. This field is only set if this
  /// purchase was not made using the standard in-app billing flow. Possible
  /// values are:
  /// - Test (i.e. purchased from a license testing account)
  /// - Promo (i.e. purchased using a promo code)
  /// - Rewarded (i.e. from watching a video ad instead of paying)
  core.int purchaseType;

  ProductPurchase();

  ProductPurchase.fromJson(core.Map _json) {
    if (_json.containsKey("consumptionState")) {
      consumptionState = _json["consumptionState"];
    }
    if (_json.containsKey("developerPayload")) {
      developerPayload = _json["developerPayload"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("orderId")) {
      orderId = _json["orderId"];
    }
    if (_json.containsKey("purchaseState")) {
      purchaseState = _json["purchaseState"];
    }
    if (_json.containsKey("purchaseTimeMillis")) {
      purchaseTimeMillis = _json["purchaseTimeMillis"];
    }
    if (_json.containsKey("purchaseType")) {
      purchaseType = _json["purchaseType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (consumptionState != null) {
      _json["consumptionState"] = consumptionState;
    }
    if (developerPayload != null) {
      _json["developerPayload"] = developerPayload;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (orderId != null) {
      _json["orderId"] = orderId;
    }
    if (purchaseState != null) {
      _json["purchaseState"] = purchaseState;
    }
    if (purchaseTimeMillis != null) {
      _json["purchaseTimeMillis"] = purchaseTimeMillis;
    }
    if (purchaseType != null) {
      _json["purchaseType"] = purchaseType;
    }
    return _json;
  }
}

class TokenPagination {
  core.String nextPageToken;
  core.String previousPageToken;

  TokenPagination();

  TokenPagination.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("previousPageToken")) {
      previousPageToken = _json["previousPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (previousPageToken != null) {
      _json["previousPageToken"] = previousPageToken;
    }
    return _json;
  }
}

/// A VoidedPurchase resource indicates a purchase that was either
/// canceled/refunded/charged-back.
class VoidedPurchase {
  /// This kind represents a voided purchase object in the androidpublisher
  /// service.
  core.String kind;

  /// The time at which the purchase was made, in milliseconds since the epoch
  /// (Jan 1, 1970).
  core.String purchaseTimeMillis;

  /// The token which uniquely identifies a one-time purchase or subscription.
  /// To uniquely identify subscription renewals use order_id (available
  /// starting from version 3 of the API).
  core.String purchaseToken;

  /// The time at which the purchase was canceled/refunded/charged-back, in
  /// milliseconds since the epoch (Jan 1, 1970).
  core.String voidedTimeMillis;

  VoidedPurchase();

  VoidedPurchase.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("purchaseTimeMillis")) {
      purchaseTimeMillis = _json["purchaseTimeMillis"];
    }
    if (_json.containsKey("purchaseToken")) {
      purchaseToken = _json["purchaseToken"];
    }
    if (_json.containsKey("voidedTimeMillis")) {
      voidedTimeMillis = _json["voidedTimeMillis"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (purchaseTimeMillis != null) {
      _json["purchaseTimeMillis"] = purchaseTimeMillis;
    }
    if (purchaseToken != null) {
      _json["purchaseToken"] = purchaseToken;
    }
    if (voidedTimeMillis != null) {
      _json["voidedTimeMillis"] = voidedTimeMillis;
    }
    return _json;
  }
}

class VoidedPurchasesListResponse {
  PageInfo pageInfo;
  TokenPagination tokenPagination;
  core.List<VoidedPurchase> voidedPurchases;

  VoidedPurchasesListResponse();

  VoidedPurchasesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(_json["pageInfo"]);
    }
    if (_json.containsKey("tokenPagination")) {
      tokenPagination = new TokenPagination.fromJson(_json["tokenPagination"]);
    }
    if (_json.containsKey("voidedPurchases")) {
      voidedPurchases = (_json["voidedPurchases"] as core.List)
          .map<VoidedPurchase>((value) => new VoidedPurchase.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pageInfo != null) {
      _json["pageInfo"] = (pageInfo).toJson();
    }
    if (tokenPagination != null) {
      _json["tokenPagination"] = (tokenPagination).toJson();
    }
    if (voidedPurchases != null) {
      _json["voidedPurchases"] =
          voidedPurchases.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}
