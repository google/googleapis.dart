// This is a generated file (see the discoveryapis_generator project).

library googleapis.reseller.v1sandbox;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client reseller/v1sandbox';

/** Lets you create and manage your customers and their subscriptions. */
class ResellerApi {
  /** Manage users on your domain */
  static const AppsOrderScope = "https://www.googleapis.com/auth/apps.order";

  /** Manage users on your domain */
  static const AppsOrderReadonlyScope = "https://www.googleapis.com/auth/apps.order.readonly";


  final commons.ApiRequester _requester;

  CustomersResourceApi get customers => new CustomersResourceApi(_requester);
  SubscriptionsResourceApi get subscriptions => new SubscriptionsResourceApi(_requester);

  ResellerApi(http.Client client, {core.String rootUrl: "https://www.googleapis.com/", core.String servicePath: "apps/reseller/v1sandbox/"}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class CustomersResourceApi {
  final commons.ApiRequester _requester;

  CustomersResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Gets a customer resource if one exists and is owned by the reseller.
   *
   * Request parameters:
   *
   * [customerId] - Id of the Customer
   *
   * Completes with a [Customer].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Customer> get(core.String customerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }

    _url = 'customers/' + commons.Escaper.ecapeVariable('$customerId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Customer.fromJson(data));
  }

  /**
   * Creates a customer resource if one does not already exist.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [customerAuthToken] - An auth token needed for inserting a customer for
   * which domain already exists. Can be generated at
   * https://www.google.com/a/cpanel//TransferToken. Optional.
   *
   * Completes with a [Customer].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Customer> insert(Customer request, {core.String customerAuthToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (customerAuthToken != null) {
      _queryParams["customerAuthToken"] = [customerAuthToken];
    }

    _url = 'customers';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Customer.fromJson(data));
  }

  /**
   * Update a customer resource if one it exists and is owned by the reseller.
   * This method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [customerId] - Id of the Customer
   *
   * Completes with a [Customer].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Customer> patch(Customer request, core.String customerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }

    _url = 'customers/' + commons.Escaper.ecapeVariable('$customerId');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Customer.fromJson(data));
  }

  /**
   * Update a customer resource if one it exists and is owned by the reseller.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [customerId] - Id of the Customer
   *
   * Completes with a [Customer].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Customer> update(Customer request, core.String customerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }

    _url = 'customers/' + commons.Escaper.ecapeVariable('$customerId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Customer.fromJson(data));
  }

}


class SubscriptionsResourceApi {
  final commons.ApiRequester _requester;

  SubscriptionsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Activates a subscription previously suspended by the reseller
   *
   * Request parameters:
   *
   * [customerId] - Id of the Customer
   *
   * [subscriptionId] - Id of the subscription, which is unique for a customer
   *
   * Completes with a [Subscription].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Subscription> activate(core.String customerId, core.String subscriptionId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (subscriptionId == null) {
      throw new core.ArgumentError("Parameter subscriptionId is required.");
    }

    _url = 'customers/' + commons.Escaper.ecapeVariable('$customerId') + '/subscriptions/' + commons.Escaper.ecapeVariable('$subscriptionId') + '/activate';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Subscription.fromJson(data));
  }

  /**
   * Changes the plan of a subscription
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [customerId] - Id of the Customer
   *
   * [subscriptionId] - Id of the subscription, which is unique for a customer
   *
   * Completes with a [Subscription].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Subscription> changePlan(ChangePlanRequest request, core.String customerId, core.String subscriptionId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (subscriptionId == null) {
      throw new core.ArgumentError("Parameter subscriptionId is required.");
    }

    _url = 'customers/' + commons.Escaper.ecapeVariable('$customerId') + '/subscriptions/' + commons.Escaper.ecapeVariable('$subscriptionId') + '/changePlan';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Subscription.fromJson(data));
  }

  /**
   * Changes the renewal settings of a subscription
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [customerId] - Id of the Customer
   *
   * [subscriptionId] - Id of the subscription, which is unique for a customer
   *
   * Completes with a [Subscription].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Subscription> changeRenewalSettings(RenewalSettings request, core.String customerId, core.String subscriptionId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (subscriptionId == null) {
      throw new core.ArgumentError("Parameter subscriptionId is required.");
    }

    _url = 'customers/' + commons.Escaper.ecapeVariable('$customerId') + '/subscriptions/' + commons.Escaper.ecapeVariable('$subscriptionId') + '/changeRenewalSettings';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Subscription.fromJson(data));
  }

  /**
   * Changes the seats configuration of a subscription
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [customerId] - Id of the Customer
   *
   * [subscriptionId] - Id of the subscription, which is unique for a customer
   *
   * Completes with a [Subscription].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Subscription> changeSeats(Seats request, core.String customerId, core.String subscriptionId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (subscriptionId == null) {
      throw new core.ArgumentError("Parameter subscriptionId is required.");
    }

    _url = 'customers/' + commons.Escaper.ecapeVariable('$customerId') + '/subscriptions/' + commons.Escaper.ecapeVariable('$subscriptionId') + '/changeSeats';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Subscription.fromJson(data));
  }

  /**
   * Cancels/Downgrades a subscription.
   *
   * Request parameters:
   *
   * [customerId] - Id of the Customer
   *
   * [subscriptionId] - Id of the subscription, which is unique for a customer
   *
   * [deletionType] - Whether the subscription is to be fully cancelled or
   * downgraded
   * Possible string values are:
   * - "cancel" : Cancels the subscription immediately
   * - "downgrade" : Downgrades a Google Apps for Business subscription to
   * Google Apps
   * - "suspend" : Suspends the subscriptions for 4 days before cancelling it
   * - "transfer_to_direct" : Transfers a subscription directly to Google
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future delete(core.String customerId, core.String subscriptionId, core.String deletionType) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (subscriptionId == null) {
      throw new core.ArgumentError("Parameter subscriptionId is required.");
    }
    if (deletionType == null) {
      throw new core.ArgumentError("Parameter deletionType is required.");
    }
    _queryParams["deletionType"] = [deletionType];

    _downloadOptions = null;

    _url = 'customers/' + commons.Escaper.ecapeVariable('$customerId') + '/subscriptions/' + commons.Escaper.ecapeVariable('$subscriptionId');

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
   * Gets a subscription of the customer.
   *
   * Request parameters:
   *
   * [customerId] - Id of the Customer
   *
   * [subscriptionId] - Id of the subscription, which is unique for a customer
   *
   * Completes with a [Subscription].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Subscription> get(core.String customerId, core.String subscriptionId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (subscriptionId == null) {
      throw new core.ArgumentError("Parameter subscriptionId is required.");
    }

    _url = 'customers/' + commons.Escaper.ecapeVariable('$customerId') + '/subscriptions/' + commons.Escaper.ecapeVariable('$subscriptionId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Subscription.fromJson(data));
  }

  /**
   * Creates/Transfers a subscription for the customer.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [customerId] - Id of the Customer
   *
   * [customerAuthToken] - An auth token needed for transferring a subscription.
   * Can be generated at
   * https://www.google.com/a/cpanel/customer-domain/TransferToken. Optional.
   *
   * Completes with a [Subscription].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Subscription> insert(Subscription request, core.String customerId, {core.String customerAuthToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (customerAuthToken != null) {
      _queryParams["customerAuthToken"] = [customerAuthToken];
    }

    _url = 'customers/' + commons.Escaper.ecapeVariable('$customerId') + '/subscriptions';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Subscription.fromJson(data));
  }

  /**
   * Lists subscriptions of a reseller, optionally filtered by a customer name
   * prefix.
   *
   * Request parameters:
   *
   * [customerAuthToken] - An auth token needed if the customer is not a resold
   * customer of this reseller. Can be generated at
   * https://www.google.com/a/cpanel/customer-domain/TransferToken.Optional.
   *
   * [customerId] - Id of the Customer
   *
   * [customerNamePrefix] - Prefix of the customer's domain name by which the
   * subscriptions should be filtered. Optional
   *
   * [maxResults] - Maximum number of results to return
   * Value must be between "1" and "100".
   *
   * [pageToken] - Token to specify next page in the list
   *
   * Completes with a [Subscriptions].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Subscriptions> list({core.String customerAuthToken, core.String customerId, core.String customerNamePrefix, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (customerAuthToken != null) {
      _queryParams["customerAuthToken"] = [customerAuthToken];
    }
    if (customerId != null) {
      _queryParams["customerId"] = [customerId];
    }
    if (customerNamePrefix != null) {
      _queryParams["customerNamePrefix"] = [customerNamePrefix];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'subscriptions';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Subscriptions.fromJson(data));
  }

  /**
   * Starts paid service of a trial subscription
   *
   * Request parameters:
   *
   * [customerId] - Id of the Customer
   *
   * [subscriptionId] - Id of the subscription, which is unique for a customer
   *
   * Completes with a [Subscription].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Subscription> startPaidService(core.String customerId, core.String subscriptionId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (subscriptionId == null) {
      throw new core.ArgumentError("Parameter subscriptionId is required.");
    }

    _url = 'customers/' + commons.Escaper.ecapeVariable('$customerId') + '/subscriptions/' + commons.Escaper.ecapeVariable('$subscriptionId') + '/startPaidService';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Subscription.fromJson(data));
  }

  /**
   * Suspends an active subscription
   *
   * Request parameters:
   *
   * [customerId] - Id of the Customer
   *
   * [subscriptionId] - Id of the subscription, which is unique for a customer
   *
   * Completes with a [Subscription].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Subscription> suspend(core.String customerId, core.String subscriptionId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (subscriptionId == null) {
      throw new core.ArgumentError("Parameter subscriptionId is required.");
    }

    _url = 'customers/' + commons.Escaper.ecapeVariable('$customerId') + '/subscriptions/' + commons.Escaper.ecapeVariable('$subscriptionId') + '/suspend';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Subscription.fromJson(data));
  }

}



/** JSON template for address of a customer. */
class Address {
  /** Address line 1 of the address. */
  core.String addressLine1;
  /** Address line 2 of the address. */
  core.String addressLine2;
  /** Address line 3 of the address. */
  core.String addressLine3;
  /** Name of the contact person. */
  core.String contactName;
  /** ISO 3166 country code. */
  core.String countryCode;
  /** Identifies the resource as a customer address. */
  core.String kind;
  /**
   * Name of the locality. This is in accordance with -
   * http://portablecontacts.net/draft-spec.html#address_element.
   */
  core.String locality;
  /** Name of the organization. */
  core.String organizationName;
  /**
   * The postal code. This is in accordance with -
   * http://portablecontacts.net/draft-spec.html#address_element.
   */
  core.String postalCode;
  /**
   * Name of the region. This is in accordance with -
   * http://portablecontacts.net/draft-spec.html#address_element.
   */
  core.String region;

  Address();

  Address.fromJson(core.Map _json) {
    if (_json.containsKey("addressLine1")) {
      addressLine1 = _json["addressLine1"];
    }
    if (_json.containsKey("addressLine2")) {
      addressLine2 = _json["addressLine2"];
    }
    if (_json.containsKey("addressLine3")) {
      addressLine3 = _json["addressLine3"];
    }
    if (_json.containsKey("contactName")) {
      contactName = _json["contactName"];
    }
    if (_json.containsKey("countryCode")) {
      countryCode = _json["countryCode"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("locality")) {
      locality = _json["locality"];
    }
    if (_json.containsKey("organizationName")) {
      organizationName = _json["organizationName"];
    }
    if (_json.containsKey("postalCode")) {
      postalCode = _json["postalCode"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (addressLine1 != null) {
      _json["addressLine1"] = addressLine1;
    }
    if (addressLine2 != null) {
      _json["addressLine2"] = addressLine2;
    }
    if (addressLine3 != null) {
      _json["addressLine3"] = addressLine3;
    }
    if (contactName != null) {
      _json["contactName"] = contactName;
    }
    if (countryCode != null) {
      _json["countryCode"] = countryCode;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (locality != null) {
      _json["locality"] = locality;
    }
    if (organizationName != null) {
      _json["organizationName"] = organizationName;
    }
    if (postalCode != null) {
      _json["postalCode"] = postalCode;
    }
    if (region != null) {
      _json["region"] = region;
    }
    return _json;
  }
}

/** JSON template for the ChangePlan rpc request. */
class ChangePlanRequest {
  /** Identifies the resource as a subscription change plan request. */
  core.String kind;
  /** Name of the plan to change to. */
  core.String planName;
  /** Purchase order id for your order tracking purposes. */
  core.String purchaseOrderId;
  /** Number/Limit of seats in the new plan. */
  Seats seats;

  ChangePlanRequest();

  ChangePlanRequest.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("planName")) {
      planName = _json["planName"];
    }
    if (_json.containsKey("purchaseOrderId")) {
      purchaseOrderId = _json["purchaseOrderId"];
    }
    if (_json.containsKey("seats")) {
      seats = new Seats.fromJson(_json["seats"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (planName != null) {
      _json["planName"] = planName;
    }
    if (purchaseOrderId != null) {
      _json["purchaseOrderId"] = purchaseOrderId;
    }
    if (seats != null) {
      _json["seats"] = (seats).toJson();
    }
    return _json;
  }
}

/** JSON template for a customer. */
class Customer {
  /** The alternate email of the customer. */
  core.String alternateEmail;
  /** The domain name of the customer. */
  core.String customerDomain;
  /** Whether the customer's primary domain has been verified. */
  core.bool customerDomainVerified;
  /** The id of the customer. */
  core.String customerId;
  /** Identifies the resource as a customer. */
  core.String kind;
  /** The phone number of the customer. */
  core.String phoneNumber;
  /** The postal address of the customer. */
  Address postalAddress;
  /** Ui url for customer resource. */
  core.String resourceUiUrl;

  Customer();

  Customer.fromJson(core.Map _json) {
    if (_json.containsKey("alternateEmail")) {
      alternateEmail = _json["alternateEmail"];
    }
    if (_json.containsKey("customerDomain")) {
      customerDomain = _json["customerDomain"];
    }
    if (_json.containsKey("customerDomainVerified")) {
      customerDomainVerified = _json["customerDomainVerified"];
    }
    if (_json.containsKey("customerId")) {
      customerId = _json["customerId"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("phoneNumber")) {
      phoneNumber = _json["phoneNumber"];
    }
    if (_json.containsKey("postalAddress")) {
      postalAddress = new Address.fromJson(_json["postalAddress"]);
    }
    if (_json.containsKey("resourceUiUrl")) {
      resourceUiUrl = _json["resourceUiUrl"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (alternateEmail != null) {
      _json["alternateEmail"] = alternateEmail;
    }
    if (customerDomain != null) {
      _json["customerDomain"] = customerDomain;
    }
    if (customerDomainVerified != null) {
      _json["customerDomainVerified"] = customerDomainVerified;
    }
    if (customerId != null) {
      _json["customerId"] = customerId;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (phoneNumber != null) {
      _json["phoneNumber"] = phoneNumber;
    }
    if (postalAddress != null) {
      _json["postalAddress"] = (postalAddress).toJson();
    }
    if (resourceUiUrl != null) {
      _json["resourceUiUrl"] = resourceUiUrl;
    }
    return _json;
  }
}

/** JSON template for a subscription renewal settings. */
class RenewalSettings {
  /** Identifies the resource as a subscription renewal setting. */
  core.String kind;
  /** Subscription renewal type. */
  core.String renewalType;

  RenewalSettings();

  RenewalSettings.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("renewalType")) {
      renewalType = _json["renewalType"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (renewalType != null) {
      _json["renewalType"] = renewalType;
    }
    return _json;
  }
}

/** JSON template for subscription seats. */
class Seats {
  /** Identifies the resource as a subscription change plan request. */
  core.String kind;
  /**
   * Read-only field containing the current number of licensed seats for
   * FLEXIBLE Google-Apps subscriptions and secondary subscriptions such as
   * Google-Vault and Drive-storage.
   */
  core.int licensedNumberOfSeats;
  /**
   * Maximum number of seats that can be purchased. This needs to be provided
   * only for a non-commitment plan. For a commitment plan it is decided by the
   * contract.
   */
  core.int maximumNumberOfSeats;
  /**
   * Number of seats to purchase. This is applicable only for a commitment plan.
   */
  core.int numberOfSeats;

  Seats();

  Seats.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("licensedNumberOfSeats")) {
      licensedNumberOfSeats = _json["licensedNumberOfSeats"];
    }
    if (_json.containsKey("maximumNumberOfSeats")) {
      maximumNumberOfSeats = _json["maximumNumberOfSeats"];
    }
    if (_json.containsKey("numberOfSeats")) {
      numberOfSeats = _json["numberOfSeats"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (licensedNumberOfSeats != null) {
      _json["licensedNumberOfSeats"] = licensedNumberOfSeats;
    }
    if (maximumNumberOfSeats != null) {
      _json["maximumNumberOfSeats"] = maximumNumberOfSeats;
    }
    if (numberOfSeats != null) {
      _json["numberOfSeats"] = numberOfSeats;
    }
    return _json;
  }
}

/** Interval of the commitment if it is a commitment plan. */
class SubscriptionPlanCommitmentInterval {
  /** End time of the commitment interval in milliseconds since Unix epoch. */
  core.String endTime;
  /**
   * Start time of the commitment interval in milliseconds since Unix epoch.
   */
  core.String startTime;

  SubscriptionPlanCommitmentInterval();

  SubscriptionPlanCommitmentInterval.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
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
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/** Plan details of the subscription */
class SubscriptionPlan {
  /** Interval of the commitment if it is a commitment plan. */
  SubscriptionPlanCommitmentInterval commitmentInterval;
  /** Whether the plan is a commitment plan or not. */
  core.bool isCommitmentPlan;
  /** The plan name of this subscription's plan. */
  core.String planName;

  SubscriptionPlan();

  SubscriptionPlan.fromJson(core.Map _json) {
    if (_json.containsKey("commitmentInterval")) {
      commitmentInterval = new SubscriptionPlanCommitmentInterval.fromJson(_json["commitmentInterval"]);
    }
    if (_json.containsKey("isCommitmentPlan")) {
      isCommitmentPlan = _json["isCommitmentPlan"];
    }
    if (_json.containsKey("planName")) {
      planName = _json["planName"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (commitmentInterval != null) {
      _json["commitmentInterval"] = (commitmentInterval).toJson();
    }
    if (isCommitmentPlan != null) {
      _json["isCommitmentPlan"] = isCommitmentPlan;
    }
    if (planName != null) {
      _json["planName"] = planName;
    }
    return _json;
  }
}

/** Transfer related information for the subscription. */
class SubscriptionTransferInfo {
  core.int minimumTransferableSeats;
  /** Time when transfer token or intent to transfer will expire. */
  core.String transferabilityExpirationTime;

  SubscriptionTransferInfo();

  SubscriptionTransferInfo.fromJson(core.Map _json) {
    if (_json.containsKey("minimumTransferableSeats")) {
      minimumTransferableSeats = _json["minimumTransferableSeats"];
    }
    if (_json.containsKey("transferabilityExpirationTime")) {
      transferabilityExpirationTime = _json["transferabilityExpirationTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (minimumTransferableSeats != null) {
      _json["minimumTransferableSeats"] = minimumTransferableSeats;
    }
    if (transferabilityExpirationTime != null) {
      _json["transferabilityExpirationTime"] = transferabilityExpirationTime;
    }
    return _json;
  }
}

/** Trial Settings of the subscription. */
class SubscriptionTrialSettings {
  /** Whether the subscription is in trial. */
  core.bool isInTrial;
  /** End time of the trial in milliseconds since Unix epoch. */
  core.String trialEndTime;

  SubscriptionTrialSettings();

  SubscriptionTrialSettings.fromJson(core.Map _json) {
    if (_json.containsKey("isInTrial")) {
      isInTrial = _json["isInTrial"];
    }
    if (_json.containsKey("trialEndTime")) {
      trialEndTime = _json["trialEndTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (isInTrial != null) {
      _json["isInTrial"] = isInTrial;
    }
    if (trialEndTime != null) {
      _json["trialEndTime"] = trialEndTime;
    }
    return _json;
  }
}

/** JSON template for a subscription. */
class Subscription {
  /** Billing method of this subscription. */
  core.String billingMethod;
  /** Creation time of this subscription in milliseconds since Unix epoch. */
  core.String creationTime;
  /** The id of the customer to whom the subscription belongs. */
  core.String customerId;
  /** Identifies the resource as a Subscription. */
  core.String kind;
  /** Plan details of the subscription */
  SubscriptionPlan plan;
  /** Purchase order id for your order tracking purposes. */
  core.String purchaseOrderId;
  /** Renewal settings of the subscription. */
  RenewalSettings renewalSettings;
  /** Ui url for subscription resource. */
  core.String resourceUiUrl;
  /** Number/Limit of seats in the new plan. */
  Seats seats;
  /** Name of the sku for which this subscription is purchased. */
  core.String skuId;
  /** Status of the subscription. */
  core.String status;
  /** The id of the subscription. */
  core.String subscriptionId;
  /**
   * field listing all current reasons the subscription is suspended. It is
   * possible for a subscription to have multiple suspension reasons. A
   * subscription's status is SUSPENDED until all pending suspensions are
   * removed. Possible options include:
   * - PENDING_TOS_ACCEPTANCE — The customer has not logged in and accepted the
   * Google Apps Resold Terms of Services.
   * - RENEWAL_WITH_TYPE_CANCEL — The customer's commitment ended and their
   * service was cancelled at the end of their term.
   * - RESELLER_INITIATED — A manual suspension invoked by a Reseller.
   * - TRIAL_ENDED — The customer's trial expired without a plan selected.
   * - OTHER — The customer is suspended for an internal Google reason (e.g.
   * abuse or otherwise).
   */
  core.List<core.String> suspensionReasons;
  /** Transfer related information for the subscription. */
  SubscriptionTransferInfo transferInfo;
  /** Trial Settings of the subscription. */
  SubscriptionTrialSettings trialSettings;

  Subscription();

  Subscription.fromJson(core.Map _json) {
    if (_json.containsKey("billingMethod")) {
      billingMethod = _json["billingMethod"];
    }
    if (_json.containsKey("creationTime")) {
      creationTime = _json["creationTime"];
    }
    if (_json.containsKey("customerId")) {
      customerId = _json["customerId"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("plan")) {
      plan = new SubscriptionPlan.fromJson(_json["plan"]);
    }
    if (_json.containsKey("purchaseOrderId")) {
      purchaseOrderId = _json["purchaseOrderId"];
    }
    if (_json.containsKey("renewalSettings")) {
      renewalSettings = new RenewalSettings.fromJson(_json["renewalSettings"]);
    }
    if (_json.containsKey("resourceUiUrl")) {
      resourceUiUrl = _json["resourceUiUrl"];
    }
    if (_json.containsKey("seats")) {
      seats = new Seats.fromJson(_json["seats"]);
    }
    if (_json.containsKey("skuId")) {
      skuId = _json["skuId"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("subscriptionId")) {
      subscriptionId = _json["subscriptionId"];
    }
    if (_json.containsKey("suspensionReasons")) {
      suspensionReasons = _json["suspensionReasons"];
    }
    if (_json.containsKey("transferInfo")) {
      transferInfo = new SubscriptionTransferInfo.fromJson(_json["transferInfo"]);
    }
    if (_json.containsKey("trialSettings")) {
      trialSettings = new SubscriptionTrialSettings.fromJson(_json["trialSettings"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (billingMethod != null) {
      _json["billingMethod"] = billingMethod;
    }
    if (creationTime != null) {
      _json["creationTime"] = creationTime;
    }
    if (customerId != null) {
      _json["customerId"] = customerId;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (plan != null) {
      _json["plan"] = (plan).toJson();
    }
    if (purchaseOrderId != null) {
      _json["purchaseOrderId"] = purchaseOrderId;
    }
    if (renewalSettings != null) {
      _json["renewalSettings"] = (renewalSettings).toJson();
    }
    if (resourceUiUrl != null) {
      _json["resourceUiUrl"] = resourceUiUrl;
    }
    if (seats != null) {
      _json["seats"] = (seats).toJson();
    }
    if (skuId != null) {
      _json["skuId"] = skuId;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (subscriptionId != null) {
      _json["subscriptionId"] = subscriptionId;
    }
    if (suspensionReasons != null) {
      _json["suspensionReasons"] = suspensionReasons;
    }
    if (transferInfo != null) {
      _json["transferInfo"] = (transferInfo).toJson();
    }
    if (trialSettings != null) {
      _json["trialSettings"] = (trialSettings).toJson();
    }
    return _json;
  }
}

/** JSON template for a subscription list. */
class Subscriptions {
  /** Identifies the resource as a collection of subscriptions. */
  core.String kind;
  /**
   * The continuation token, used to page through large result sets. Provide
   * this value in a subsequent request to return the next page of results.
   */
  core.String nextPageToken;
  /** The subscriptions in this page of results. */
  core.List<Subscription> subscriptions;

  Subscriptions();

  Subscriptions.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("subscriptions")) {
      subscriptions = _json["subscriptions"].map((value) => new Subscription.fromJson(value)).toList();
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
    if (subscriptions != null) {
      _json["subscriptions"] = subscriptions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}
