// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Content API for Shopping - v2.1
///
/// Manage your product listings and accounts for Google Shopping
///
/// For more information, see
/// <https://developers.google.com/shopping-content/v2/>
///
/// Create an instance of [ShoppingContentApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsCredentialsResource]
///   - [AccountsLabelsResource]
///   - [AccountsReturncarrierResource]
/// - [AccountstatusesResource]
/// - [AccounttaxResource]
/// - [BuyongoogleprogramsResource]
/// - [CollectionsResource]
/// - [CollectionstatusesResource]
/// - [CssesResource]
/// - [DatafeedsResource]
/// - [DatafeedstatusesResource]
/// - [FreelistingsprogramResource]
/// - [LiasettingsResource]
/// - [LocalinventoryResource]
/// - [OrderinvoicesResource]
/// - [OrderreportsResource]
/// - [OrderreturnsResource]
///   - [OrderreturnsLabelsResource]
/// - [OrdersResource]
/// - [OrdertrackingsignalsResource]
/// - [PosResource]
/// - [ProductsResource]
/// - [ProductstatusesResource]
///   - [ProductstatusesRepricingreportsResource]
/// - [PromotionsResource]
/// - [PubsubnotificationsettingsResource]
/// - [RegionalinventoryResource]
/// - [RegionsResource]
/// - [ReportsResource]
/// - [RepricingrulesResource]
///   - [RepricingrulesRepricingreportsResource]
/// - [ReturnaddressResource]
/// - [ReturnpolicyResource]
/// - [ReturnpolicyonlineResource]
/// - [SettlementreportsResource]
/// - [SettlementtransactionsResource]
/// - [ShippingsettingsResource]
/// - [ShoppingadsprogramResource]
library content.v2_1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Manage your product listings and accounts for Google Shopping
class ShoppingContentApi {
  /// Manage your product listings and accounts for Google Shopping
  static const contentScope = 'https://www.googleapis.com/auth/content';

  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);
  AccountstatusesResource get accountstatuses =>
      AccountstatusesResource(_requester);
  AccounttaxResource get accounttax => AccounttaxResource(_requester);
  BuyongoogleprogramsResource get buyongoogleprograms =>
      BuyongoogleprogramsResource(_requester);
  CollectionsResource get collections => CollectionsResource(_requester);
  CollectionstatusesResource get collectionstatuses =>
      CollectionstatusesResource(_requester);
  CssesResource get csses => CssesResource(_requester);
  DatafeedsResource get datafeeds => DatafeedsResource(_requester);
  DatafeedstatusesResource get datafeedstatuses =>
      DatafeedstatusesResource(_requester);
  FreelistingsprogramResource get freelistingsprogram =>
      FreelistingsprogramResource(_requester);
  LiasettingsResource get liasettings => LiasettingsResource(_requester);
  LocalinventoryResource get localinventory =>
      LocalinventoryResource(_requester);
  OrderinvoicesResource get orderinvoices => OrderinvoicesResource(_requester);
  OrderreportsResource get orderreports => OrderreportsResource(_requester);
  OrderreturnsResource get orderreturns => OrderreturnsResource(_requester);
  OrdersResource get orders => OrdersResource(_requester);
  OrdertrackingsignalsResource get ordertrackingsignals =>
      OrdertrackingsignalsResource(_requester);
  PosResource get pos => PosResource(_requester);
  ProductsResource get products => ProductsResource(_requester);
  ProductstatusesResource get productstatuses =>
      ProductstatusesResource(_requester);
  PromotionsResource get promotions => PromotionsResource(_requester);
  PubsubnotificationsettingsResource get pubsubnotificationsettings =>
      PubsubnotificationsettingsResource(_requester);
  RegionalinventoryResource get regionalinventory =>
      RegionalinventoryResource(_requester);
  RegionsResource get regions => RegionsResource(_requester);
  ReportsResource get reports => ReportsResource(_requester);
  RepricingrulesResource get repricingrules =>
      RepricingrulesResource(_requester);
  ReturnaddressResource get returnaddress => ReturnaddressResource(_requester);
  ReturnpolicyResource get returnpolicy => ReturnpolicyResource(_requester);
  ReturnpolicyonlineResource get returnpolicyonline =>
      ReturnpolicyonlineResource(_requester);
  SettlementreportsResource get settlementreports =>
      SettlementreportsResource(_requester);
  SettlementtransactionsResource get settlementtransactions =>
      SettlementtransactionsResource(_requester);
  ShippingsettingsResource get shippingsettings =>
      ShippingsettingsResource(_requester);
  ShoppingadsprogramResource get shoppingadsprogram =>
      ShoppingadsprogramResource(_requester);

  ShoppingContentApi(http.Client client,
      {core.String rootUrl = 'https://shoppingcontent.googleapis.com/',
      core.String servicePath = 'content/v2.1/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsCredentialsResource get credentials =>
      AccountsCredentialsResource(_requester);
  AccountsLabelsResource get labels => AccountsLabelsResource(_requester);
  AccountsReturncarrierResource get returncarrier =>
      AccountsReturncarrierResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;

  /// Returns information about the authenticated user.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountsAuthInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountsAuthInfoResponse> authinfo({
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'accounts/authinfo';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AccountsAuthInfoResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Claims the website of a Merchant Center sub-account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. If this parameter is not
  /// the same as accountId, then this account must be a multi-client account
  /// and `accountId` must be the ID of a sub-account of this account.
  ///
  /// [accountId] - The ID of the account whose website is claimed.
  ///
  /// [overwrite] - Only available to selected merchants. When set to `True`,
  /// this flag removes any existing claim on the requested website by another
  /// account and replaces it with a claim from this account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountsClaimWebsiteResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountsClaimWebsiteResponse> claimwebsite(
    core.String merchantId,
    core.String accountId, {
    core.bool? overwrite,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (overwrite != null) 'overwrite': ['${overwrite}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/accounts/' +
        commons.escapeVariable('$accountId') +
        '/claimwebsite';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return AccountsClaimWebsiteResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves, inserts, updates, and deletes multiple Merchant Center
  /// (sub-)accounts in a single request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountsCustomBatchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountsCustomBatchResponse> custombatch(
    AccountsCustomBatchRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'accounts/batch';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AccountsCustomBatchResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Merchant Center sub-account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. This must be a multi-client
  /// account, and accountId must be the ID of a sub-account of this account.
  ///
  /// [accountId] - The ID of the account.
  ///
  /// [force] - Flag to delete sub-accounts with products. The default value is
  /// false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String merchantId,
    core.String accountId, {
    core.bool? force,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/accounts/' +
        commons.escapeVariable('$accountId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Retrieves a Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. If this parameter is not
  /// the same as accountId, then this account must be a multi-client account
  /// and `accountId` must be the ID of a sub-account of this account.
  ///
  /// [accountId] - The ID of the account.
  ///
  /// [view] - Controls which fields will be populated. Acceptable values are:
  /// "merchant" and "css". The default value is "merchant".
  /// Possible string values are:
  /// - "MERCHANT" : Default. View is populated with Merchant Center fields.
  /// - "CSS" : View is populated with Comparison Shopping Services fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Account].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Account> get(
    core.String merchantId,
    core.String accountId, {
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/accounts/' +
        commons.escapeVariable('$accountId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Account.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a Merchant Center sub-account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. This must be a multi-client
  /// account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Account].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Account> insert(
    Account request,
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/accounts';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Account.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Performs an action on a link between two Merchant Center accounts, namely
  /// accountId and linkedAccountId.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. If this parameter is not
  /// the same as accountId, then this account must be a multi-client account
  /// and `accountId` must be the ID of a sub-account of this account.
  ///
  /// [accountId] - The ID of the account that should be linked.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountsLinkResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountsLinkResponse> link(
    AccountsLinkRequest request,
    core.String merchantId,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/accounts/' +
        commons.escapeVariable('$accountId') +
        '/link';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AccountsLinkResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the sub-accounts in your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. This must be a multi-client
  /// account.
  ///
  /// [label] - If view is set to "css", only return accounts that are assigned
  /// label with given ID.
  ///
  /// [maxResults] - The maximum number of accounts to return in the response,
  /// used for paging.
  ///
  /// [name] - If set, only the accounts with the given name (case sensitive)
  /// will be returned.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [view] - Controls which fields will be populated. Acceptable values are:
  /// "merchant" and "css". The default value is "merchant".
  /// Possible string values are:
  /// - "MERCHANT" : Default. View is populated with Merchant Center fields.
  /// - "CSS" : View is populated with Comparison Shopping Services fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountsListResponse> list(
    core.String merchantId, {
    core.String? label,
    core.int? maxResults,
    core.String? name,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (label != null) 'label': [label],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (name != null) 'name': [name],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/accounts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AccountsListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of accounts linked to your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. If this parameter is not
  /// the same as accountId, then this account must be a multi-client account
  /// and `accountId` must be the ID of a sub-account of this account.
  ///
  /// [accountId] - The ID of the account for which to list links.
  ///
  /// [maxResults] - The maximum number of links to return in the response, used
  /// for pagination. The minimum allowed value is 5 results per page. If
  /// provided value is lower than 5, it will be automatically increased to 5.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountsListLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountsListLinksResponse> listlinks(
    core.String merchantId,
    core.String accountId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/accounts/' +
        commons.escapeVariable('$accountId') +
        '/listlinks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AccountsListLinksResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request verification code to start phone verification.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the managing account. If this parameter
  /// is not the same as accountId, then this account must be a multi-client
  /// account and accountId must be the ID of a sub-account of this account.
  ///
  /// [accountId] - Required. The ID of the account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RequestPhoneVerificationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RequestPhoneVerificationResponse> requestphoneverification(
    RequestPhoneVerificationRequest request,
    core.String merchantId,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/accounts/' +
        commons.escapeVariable('$accountId') +
        '/requestphoneverification';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return RequestPhoneVerificationResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a Merchant Center account.
  ///
  /// Any fields that are not provided are deleted from the resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. If this parameter is not
  /// the same as accountId, then this account must be a multi-client account
  /// and `accountId` must be the ID of a sub-account of this account.
  ///
  /// [accountId] - The ID of the account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Account].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Account> update(
    Account request,
    core.String merchantId,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/accounts/' +
        commons.escapeVariable('$accountId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Account.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates labels that are assigned to the Merchant Center account by CSS
  /// user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account.
  ///
  /// [accountId] - The ID of the account whose labels are updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountsUpdateLabelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountsUpdateLabelsResponse> updatelabels(
    AccountsUpdateLabelsRequest request,
    core.String merchantId,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/accounts/' +
        commons.escapeVariable('$accountId') +
        '/updatelabels';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AccountsUpdateLabelsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Validates verification code to verify phone number for the account.
  ///
  /// If successful this will overwrite the value of
  /// `accounts.businessinformation.phoneNumber`. Only verified phone number
  /// will replace an existing verified phone number.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the managing account. If this parameter
  /// is not the same as accountId, then this account must be a multi-client
  /// account and accountId must be the ID of a sub-account of this account.
  ///
  /// [accountId] - Required. The ID of the account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VerifyPhoneNumberResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VerifyPhoneNumberResponse> verifyphonenumber(
    VerifyPhoneNumberRequest request,
    core.String merchantId,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/accounts/' +
        commons.escapeVariable('$accountId') +
        '/verifyphonenumber';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return VerifyPhoneNumberResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsCredentialsResource {
  final commons.ApiRequester _requester;

  AccountsCredentialsResource(commons.ApiRequester client)
      : _requester = client;

  /// Uploads credentials for the Merchant Center account.
  ///
  /// If credentials already exist for this Merchant Center account and purpose,
  /// this method updates them.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Required. The merchant id of the account these credentials
  /// belong to.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountCredentials].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountCredentials> create(
    AccountCredentials request,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'accounts/' + commons.escapeVariable('$accountId') + '/credentials';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AccountCredentials.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsLabelsResource {
  final commons.ApiRequester _requester;

  AccountsLabelsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new label, not assigned to any account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Required. The id of the account this label belongs to.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountLabel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountLabel> create(
    AccountLabel request,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'accounts/' + commons.escapeVariable('$accountId') + '/labels';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AccountLabel.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a label and removes it from all accounts to which it was assigned.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Required. The id of the account that owns the label.
  ///
  /// [labelId] - Required. The id of the label to delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String accountId,
    core.String labelId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/labels/' +
        commons.escapeVariable('$labelId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Lists the labels assigned to an account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Required. The account id for whose labels are to be listed.
  ///
  /// [pageSize] - The maximum number of labels to return. The service may
  /// return fewer than this value. If unspecified, at most 50 labels will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListAccountLabels`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListAccountLabels` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAccountLabelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAccountLabelsResponse> list(
    core.String accountId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'accounts/' + commons.escapeVariable('$accountId') + '/labels';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAccountLabelsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a label.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Required. The id of the account this label belongs to.
  ///
  /// [labelId] - Required. The id of the label to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountLabel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountLabel> patch(
    AccountLabel request,
    core.String accountId,
    core.String labelId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/labels/' +
        commons.escapeVariable('$labelId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return AccountLabel.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsReturncarrierResource {
  final commons.ApiRequester _requester;

  AccountsReturncarrierResource(commons.ApiRequester client)
      : _requester = client;

  /// Links return carrier to a merchant account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Required. The Merchant Center Account Id under which the
  /// Return Carrier is to be linked.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountReturnCarrier].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountReturnCarrier> create(
    AccountReturnCarrier request,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'accounts/' + commons.escapeVariable('$accountId') + '/returncarrier';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AccountReturnCarrier.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete a return carrier in the merchant account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Required. The Merchant Center Account Id under which the
  /// Return Carrier is to be linked.
  ///
  /// [carrierAccountId] - Required. The Google-provided unique carrier ID, used
  /// to update the resource.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String accountId,
    core.String carrierAccountId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/returncarrier/' +
        commons.escapeVariable('$carrierAccountId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Lists available return carriers in the merchant account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Required. The Merchant Center Account Id under which the
  /// Return Carrier is to be linked.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAccountReturnCarrierResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAccountReturnCarrierResponse> list(
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'accounts/' + commons.escapeVariable('$accountId') + '/returncarrier';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAccountReturnCarrierResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a return carrier in the merchant account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Required. The Merchant Center Account Id under which the
  /// Return Carrier is to be linked.
  ///
  /// [carrierAccountId] - Required. The Google-provided unique carrier ID, used
  /// to update the resource.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountReturnCarrier].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountReturnCarrier> patch(
    AccountReturnCarrier request,
    core.String accountId,
    core.String carrierAccountId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/returncarrier/' +
        commons.escapeVariable('$carrierAccountId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return AccountReturnCarrier.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountstatusesResource {
  final commons.ApiRequester _requester;

  AccountstatusesResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves multiple Merchant Center account statuses in a single request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountstatusesCustomBatchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountstatusesCustomBatchResponse> custombatch(
    AccountstatusesCustomBatchRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'accountstatuses/batch';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AccountstatusesCustomBatchResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the status of a Merchant Center account.
  ///
  /// No itemLevelIssues are returned for multi-client accounts.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. If this parameter is not
  /// the same as accountId, then this account must be a multi-client account
  /// and `accountId` must be the ID of a sub-account of this account.
  ///
  /// [accountId] - The ID of the account.
  ///
  /// [destinations] - If set, only issues for the specified destinations are
  /// returned, otherwise only issues for the Shopping destination.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountStatus].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountStatus> get(
    core.String merchantId,
    core.String accountId, {
    core.List<core.String>? destinations,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (destinations != null) 'destinations': destinations,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/accountstatuses/' +
        commons.escapeVariable('$accountId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AccountStatus.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the statuses of the sub-accounts in your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. This must be a multi-client
  /// account.
  ///
  /// [destinations] - If set, only issues for the specified destinations are
  /// returned, otherwise only issues for the Shopping destination.
  ///
  /// [maxResults] - The maximum number of account statuses to return in the
  /// response, used for paging.
  ///
  /// [name] - If set, only the accounts with the given name (case sensitive)
  /// will be returned.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountstatusesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountstatusesListResponse> list(
    core.String merchantId, {
    core.List<core.String>? destinations,
    core.int? maxResults,
    core.String? name,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (destinations != null) 'destinations': destinations,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (name != null) 'name': [name],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/accountstatuses';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AccountstatusesListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccounttaxResource {
  final commons.ApiRequester _requester;

  AccounttaxResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves and updates tax settings of multiple accounts in a single
  /// request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccounttaxCustomBatchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccounttaxCustomBatchResponse> custombatch(
    AccounttaxCustomBatchRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'accounttax/batch';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AccounttaxCustomBatchResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the tax settings of the account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. If this parameter is not
  /// the same as accountId, then this account must be a multi-client account
  /// and `accountId` must be the ID of a sub-account of this account.
  ///
  /// [accountId] - The ID of the account for which to get/update account tax
  /// settings.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountTax].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountTax> get(
    core.String merchantId,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/accounttax/' +
        commons.escapeVariable('$accountId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AccountTax.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the tax settings of the sub-accounts in your Merchant Center
  /// account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. This must be a multi-client
  /// account.
  ///
  /// [maxResults] - The maximum number of tax settings to return in the
  /// response, used for paging.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccounttaxListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccounttaxListResponse> list(
    core.String merchantId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/accounttax';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AccounttaxListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the tax settings of the account.
  ///
  /// Any fields that are not provided are deleted from the resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. If this parameter is not
  /// the same as accountId, then this account must be a multi-client account
  /// and `accountId` must be the ID of a sub-account of this account.
  ///
  /// [accountId] - The ID of the account for which to get/update account tax
  /// settings.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountTax].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountTax> update(
    AccountTax request,
    core.String merchantId,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/accounttax/' +
        commons.escapeVariable('$accountId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return AccountTax.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BuyongoogleprogramsResource {
  final commons.ApiRequester _requester;

  BuyongoogleprogramsResource(commons.ApiRequester client)
      : _requester = client;

  /// Reactivates the BoG program in your Merchant Center account.
  ///
  /// Moves the program to the active state when allowed, e.g. when paused.
  /// Important: This method is only whitelisted for selected merchants.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account.
  ///
  /// [regionCode] - Required. The program region code \[ISO 3166-1
  /// alpha-2\](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Currently
  /// only US is available.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> activate(
    ActivateBuyOnGoogleProgramRequest request,
    core.String merchantId,
    core.String regionCode, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/buyongoogleprograms/' +
        commons.escapeVariable('$regionCode') +
        '/activate';

    await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Retrieves a status of the BoG program for your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account.
  ///
  /// [regionCode] - Required. The Program region code \[ISO 3166-1
  /// alpha-2\](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Currently
  /// only US is available.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BuyOnGoogleProgramStatus].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BuyOnGoogleProgramStatus> get(
    core.String merchantId,
    core.String regionCode, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/buyongoogleprograms/' +
        commons.escapeVariable('$regionCode');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return BuyOnGoogleProgramStatus.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Onboards the BoG program in your Merchant Center account.
  ///
  /// By using this method, you agree to the
  /// [Terms of Service](https://merchants.google.com/mc/termsofservice/transactions/US/latest).
  /// Calling this method is only possible if the authenticated account is the
  /// same as the merchant id in the request. Calling this method multiple times
  /// will only accept Terms of Service if the latest version is not currently
  /// signed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account.
  ///
  /// [regionCode] - Required. The program region code \[ISO 3166-1
  /// alpha-2\](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Currently
  /// only US is available.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> onboard(
    OnboardBuyOnGoogleProgramRequest request,
    core.String merchantId,
    core.String regionCode, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/buyongoogleprograms/' +
        commons.escapeVariable('$regionCode') +
        '/onboard';

    await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Updates the status of the BoG program for your Merchant Center account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account.
  ///
  /// [regionCode] - Required. The program region code \[ISO 3166-1
  /// alpha-2\](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Currently
  /// only US is available.
  ///
  /// [updateMask] - The list of fields to update. If the update mask is not
  /// provided, then all the fields set in buyOnGoogleProgramStatus will be
  /// updated. Clearing fields is only possible if update mask is provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BuyOnGoogleProgramStatus].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BuyOnGoogleProgramStatus> patch(
    BuyOnGoogleProgramStatus request,
    core.String merchantId,
    core.String regionCode, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/buyongoogleprograms/' +
        commons.escapeVariable('$regionCode');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return BuyOnGoogleProgramStatus.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Pauses the BoG program in your Merchant Center account.
  ///
  /// Important: This method is only whitelisted for selected merchants.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account.
  ///
  /// [regionCode] - Required. The program region code \[ISO 3166-1
  /// alpha-2\](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Currently
  /// only US is available.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> pause(
    PauseBuyOnGoogleProgramRequest request,
    core.String merchantId,
    core.String regionCode, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/buyongoogleprograms/' +
        commons.escapeVariable('$regionCode') +
        '/pause';

    await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Requests review and then activates the BoG program in your Merchant Center
  /// account for the first time.
  ///
  /// Moves the program to the REVIEW_PENDING state. Important: This method is
  /// only whitelisted for selected merchants.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account.
  ///
  /// [regionCode] - Required. The program region code \[ISO 3166-1
  /// alpha-2\](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Currently
  /// only US is available.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> requestreview(
    RequestReviewBuyOnGoogleProgramRequest request,
    core.String merchantId,
    core.String regionCode, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/buyongoogleprograms/' +
        commons.escapeVariable('$regionCode') +
        '/requestreview';

    await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }
}

class CollectionsResource {
  final commons.ApiRequester _requester;

  CollectionsResource(commons.ApiRequester client) : _requester = client;

  /// Uploads a collection to your Merchant Center account.
  ///
  /// If a collection with the same collectionId already exists, this method
  /// updates that entry. In each update, the collection is completely replaced
  /// by the fields in the body of the update request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account that contains the
  /// collection. This account cannot be a multi-client account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Collection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Collection> create(
    Collection request,
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/collections';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Collection.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a collection from your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account that contains the
  /// collection. This account cannot be a multi-client account.
  ///
  /// [collectionId] - Required. The collectionId of the collection.
  /// CollectionId is the same as the REST ID of the collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String merchantId,
    core.String collectionId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/collections/' +
        commons.escapeVariable('$collectionId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Retrieves a collection from your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account that contains the
  /// collection. This account cannot be a multi-client account.
  ///
  /// [collectionId] - Required. The REST ID of the collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Collection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Collection> get(
    core.String merchantId,
    core.String collectionId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/collections/' +
        commons.escapeVariable('$collectionId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Collection.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the collections in your Merchant Center account.
  ///
  /// The response might contain fewer items than specified by page_size. Rely
  /// on next_page_token to determine if there are more items to be requested.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account that contains the
  /// collection. This account cannot be a multi-client account.
  ///
  /// [pageSize] - The maximum number of collections to return in the response,
  /// used for paging. Defaults to 50; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - Token (if provided) to retrieve the subsequent page. All
  /// other parameters must match the original call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCollectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCollectionsResponse> list(
    core.String merchantId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/collections';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListCollectionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class CollectionstatusesResource {
  final commons.ApiRequester _requester;

  CollectionstatusesResource(commons.ApiRequester client) : _requester = client;

  /// Gets the status of a collection from your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account that contains the
  /// collection. This account cannot be a multi-client account.
  ///
  /// [collectionId] - Required. The collectionId of the collection.
  /// CollectionId is the same as the REST ID of the collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CollectionStatus].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CollectionStatus> get(
    core.String merchantId,
    core.String collectionId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/collectionstatuses/' +
        commons.escapeVariable('$collectionId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CollectionStatus.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the statuses of the collections in your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account that contains the
  /// collection. This account cannot be a multi-client account.
  ///
  /// [pageSize] - The maximum number of collection statuses to return in the
  /// response, used for paging. Defaults to 50; values above 1000 will be
  /// coerced to 1000.
  ///
  /// [pageToken] - Token (if provided) to retrieve the subsequent page. All
  /// other parameters must match the original call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCollectionStatusesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCollectionStatusesResponse> list(
    core.String merchantId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/collectionstatuses';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListCollectionStatusesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class CssesResource {
  final commons.ApiRequester _requester;

  CssesResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a single CSS domain by ID.
  ///
  /// Request parameters:
  ///
  /// [cssGroupId] - Required. The ID of the managing account. If this parameter
  /// is not the same as \[cssDomainId\](#cssDomainId), then this ID must be a
  /// CSS group ID and `cssDomainId` must be the ID of a CSS domain affiliated
  /// with this group.
  ///
  /// [cssDomainId] - Required. The ID of the CSS domain to return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Css].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Css> get(
    core.String cssGroupId,
    core.String cssDomainId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$cssGroupId') +
        '/csses/' +
        commons.escapeVariable('$cssDomainId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Css.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists CSS domains affiliated with a CSS group.
  ///
  /// Request parameters:
  ///
  /// [cssGroupId] - Required. The CSS group ID of CSS domains to be listed.
  ///
  /// [pageSize] - The maximum number of CSS domains to return. The service may
  /// return fewer than this value. If unspecified, at most 50 CSS domains will
  /// be returned. The maximum value is 1000; values above 1000 will be coerced
  /// to 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListCsses` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListCsses` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCssesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCssesResponse> list(
    core.String cssGroupId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$cssGroupId') + '/csses';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListCssesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates labels that are assigned to a CSS domain by its CSS group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [cssGroupId] - Required. The CSS group ID of the updated CSS domain.
  ///
  /// [cssDomainId] - Required. The ID of the updated CSS domain.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Css].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Css> updatelabels(
    LabelIds request,
    core.String cssGroupId,
    core.String cssDomainId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$cssGroupId') +
        '/csses/' +
        commons.escapeVariable('$cssDomainId') +
        '/updatelabels';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Css.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class DatafeedsResource {
  final commons.ApiRequester _requester;

  DatafeedsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes, fetches, gets, inserts and updates multiple datafeeds in a single
  /// request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DatafeedsCustomBatchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DatafeedsCustomBatchResponse> custombatch(
    DatafeedsCustomBatchRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'datafeeds/batch';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return DatafeedsCustomBatchResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a datafeed configuration from your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the datafeed. This
  /// account cannot be a multi-client account.
  ///
  /// [datafeedId] - The ID of the datafeed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String merchantId,
    core.String datafeedId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/datafeeds/' +
        commons.escapeVariable('$datafeedId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Invokes a fetch for the datafeed in your Merchant Center account.
  ///
  /// If you need to call this method more than once per day, we recommend you
  /// use the Products service to update your product data.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the datafeed. This
  /// account cannot be a multi-client account.
  ///
  /// [datafeedId] - The ID of the datafeed to be fetched.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DatafeedsFetchNowResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DatafeedsFetchNowResponse> fetchnow(
    core.String merchantId,
    core.String datafeedId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/datafeeds/' +
        commons.escapeVariable('$datafeedId') +
        '/fetchNow';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return DatafeedsFetchNowResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a datafeed configuration from your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the datafeed. This
  /// account cannot be a multi-client account.
  ///
  /// [datafeedId] - The ID of the datafeed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Datafeed].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Datafeed> get(
    core.String merchantId,
    core.String datafeedId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/datafeeds/' +
        commons.escapeVariable('$datafeedId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Datafeed.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Registers a datafeed configuration with your Merchant Center account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the datafeed. This
  /// account cannot be a multi-client account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Datafeed].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Datafeed> insert(
    Datafeed request,
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/datafeeds';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Datafeed.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the configurations for datafeeds in your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the datafeeds. This
  /// account cannot be a multi-client account.
  ///
  /// [maxResults] - The maximum number of products to return in the response,
  /// used for paging.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DatafeedsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DatafeedsListResponse> list(
    core.String merchantId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/datafeeds';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return DatafeedsListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a datafeed configuration of your Merchant Center account.
  ///
  /// Any fields that are not provided are deleted from the resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the datafeed. This
  /// account cannot be a multi-client account.
  ///
  /// [datafeedId] - The ID of the datafeed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Datafeed].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Datafeed> update(
    Datafeed request,
    core.String merchantId,
    core.String datafeedId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/datafeeds/' +
        commons.escapeVariable('$datafeedId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Datafeed.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class DatafeedstatusesResource {
  final commons.ApiRequester _requester;

  DatafeedstatusesResource(commons.ApiRequester client) : _requester = client;

  /// Gets multiple Merchant Center datafeed statuses in a single request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DatafeedstatusesCustomBatchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DatafeedstatusesCustomBatchResponse> custombatch(
    DatafeedstatusesCustomBatchRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'datafeedstatuses/batch';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return DatafeedstatusesCustomBatchResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the status of a datafeed from your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the datafeed. This
  /// account cannot be a multi-client account.
  ///
  /// [datafeedId] - The ID of the datafeed.
  ///
  /// [country] - The country for which to get the datafeed status. If this
  /// parameter is provided then language must also be provided. Note that this
  /// parameter is required for feeds targeting multiple countries and
  /// languages, since a feed may have a different status for each target.
  ///
  /// [language] - The language for which to get the datafeed status. If this
  /// parameter is provided then country must also be provided. Note that this
  /// parameter is required for feeds targeting multiple countries and
  /// languages, since a feed may have a different status for each target.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DatafeedStatus].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DatafeedStatus> get(
    core.String merchantId,
    core.String datafeedId, {
    core.String? country,
    core.String? language,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (country != null) 'country': [country],
      if (language != null) 'language': [language],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/datafeedstatuses/' +
        commons.escapeVariable('$datafeedId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return DatafeedStatus.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the statuses of the datafeeds in your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the datafeeds. This
  /// account cannot be a multi-client account.
  ///
  /// [maxResults] - The maximum number of products to return in the response,
  /// used for paging.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DatafeedstatusesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DatafeedstatusesListResponse> list(
    core.String merchantId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/datafeedstatuses';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return DatafeedstatusesListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class FreelistingsprogramResource {
  final commons.ApiRequester _requester;

  FreelistingsprogramResource(commons.ApiRequester client)
      : _requester = client;

  /// Retrieves the status and review eligibility for the free listing program.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FreeListingsProgramStatus].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FreeListingsProgramStatus> get(
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/freelistingsprogram';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return FreeListingsProgramStatus.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Requests a review for Free Listings program in the provided region.
  ///
  /// Important: This method is only whitelisted for selected merchants.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> requestreview(
    RequestReviewFreeListingsRequest request,
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/freelistingsprogram/requestreview';

    await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }
}

class LiasettingsResource {
  final commons.ApiRequester _requester;

  LiasettingsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves and/or updates the LIA settings of multiple accounts in a single
  /// request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiasettingsCustomBatchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiasettingsCustomBatchResponse> custombatch(
    LiasettingsCustomBatchRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'liasettings/batch';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return LiasettingsCustomBatchResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the LIA settings of the account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. If this parameter is not
  /// the same as accountId, then this account must be a multi-client account
  /// and `accountId` must be the ID of a sub-account of this account.
  ///
  /// [accountId] - The ID of the account for which to get or update LIA
  /// settings.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiaSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiaSettings> get(
    core.String merchantId,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/liasettings/' +
        commons.escapeVariable('$accountId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return LiaSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the list of accessible Google My Business accounts.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. If this parameter is not
  /// the same as accountId, then this account must be a multi-client account
  /// and `accountId` must be the ID of a sub-account of this account.
  ///
  /// [accountId] - The ID of the account for which to retrieve accessible
  /// Google My Business accounts.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiasettingsGetAccessibleGmbAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiasettingsGetAccessibleGmbAccountsResponse>
      getaccessiblegmbaccounts(
    core.String merchantId,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/liasettings/' +
        commons.escapeVariable('$accountId') +
        '/accessiblegmbaccounts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return LiasettingsGetAccessibleGmbAccountsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the LIA settings of the sub-accounts in your Merchant Center
  /// account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. This must be a multi-client
  /// account.
  ///
  /// [maxResults] - The maximum number of LIA settings to return in the
  /// response, used for paging.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiasettingsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiasettingsListResponse> list(
    core.String merchantId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/liasettings';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return LiasettingsListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the list of POS data providers that have active settings for the
  /// all eiligible countries.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiasettingsListPosDataProvidersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiasettingsListPosDataProvidersResponse> listposdataproviders({
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'liasettings/posdataproviders';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return LiasettingsListPosDataProvidersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Requests access to a specified Google My Business account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. If this parameter is not
  /// the same as accountId, then this account must be a multi-client account
  /// and `accountId` must be the ID of a sub-account of this account.
  ///
  /// [accountId] - The ID of the account for which GMB access is requested.
  ///
  /// [gmbEmail] - The email of the Google My Business account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiasettingsRequestGmbAccessResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiasettingsRequestGmbAccessResponse> requestgmbaccess(
    core.String merchantId,
    core.String accountId,
    core.String gmbEmail, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'gmbEmail': [gmbEmail],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/liasettings/' +
        commons.escapeVariable('$accountId') +
        '/requestgmbaccess';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return LiasettingsRequestGmbAccessResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Requests inventory validation for the specified country.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. If this parameter is not
  /// the same as accountId, then this account must be a multi-client account
  /// and `accountId` must be the ID of a sub-account of this account.
  ///
  /// [accountId] - The ID of the account that manages the order. This cannot be
  /// a multi-client account.
  ///
  /// [country] - The country for which inventory validation is requested.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiasettingsRequestInventoryVerificationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiasettingsRequestInventoryVerificationResponse>
      requestinventoryverification(
    core.String merchantId,
    core.String accountId,
    core.String country, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/liasettings/' +
        commons.escapeVariable('$accountId') +
        '/requestinventoryverification/' +
        commons.escapeVariable('$country');

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return LiasettingsRequestInventoryVerificationResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the inventory verification contract for the specified country.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. If this parameter is not
  /// the same as accountId, then this account must be a multi-client account
  /// and `accountId` must be the ID of a sub-account of this account.
  ///
  /// [accountId] - The ID of the account that manages the order. This cannot be
  /// a multi-client account.
  ///
  /// [country] - The country for which inventory verification is requested.
  ///
  /// [language] - The language for which inventory verification is requested.
  ///
  /// [contactName] - The name of the inventory verification contact.
  ///
  /// [contactEmail] - The email of the inventory verification contact.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiasettingsSetInventoryVerificationContactResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiasettingsSetInventoryVerificationContactResponse>
      setinventoryverificationcontact(
    core.String merchantId,
    core.String accountId,
    core.String country,
    core.String language,
    core.String contactName,
    core.String contactEmail, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'country': [country],
      'language': [language],
      'contactName': [contactName],
      'contactEmail': [contactEmail],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/liasettings/' +
        commons.escapeVariable('$accountId') +
        '/setinventoryverificationcontact';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return LiasettingsSetInventoryVerificationContactResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the POS data provider for the specified country.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. If this parameter is not
  /// the same as accountId, then this account must be a multi-client account
  /// and `accountId` must be the ID of a sub-account of this account.
  ///
  /// [accountId] - The ID of the account for which to retrieve accessible
  /// Google My Business accounts.
  ///
  /// [country] - The country for which the POS data provider is selected.
  ///
  /// [posDataProviderId] - The ID of POS data provider.
  ///
  /// [posExternalAccountId] - The account ID by which this merchant is known to
  /// the POS data provider.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiasettingsSetPosDataProviderResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiasettingsSetPosDataProviderResponse> setposdataprovider(
    core.String merchantId,
    core.String accountId,
    core.String country, {
    core.String? posDataProviderId,
    core.String? posExternalAccountId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'country': [country],
      if (posDataProviderId != null) 'posDataProviderId': [posDataProviderId],
      if (posExternalAccountId != null)
        'posExternalAccountId': [posExternalAccountId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/liasettings/' +
        commons.escapeVariable('$accountId') +
        '/setposdataprovider';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return LiasettingsSetPosDataProviderResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the LIA settings of the account.
  ///
  /// Any fields that are not provided are deleted from the resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. If this parameter is not
  /// the same as accountId, then this account must be a multi-client account
  /// and `accountId` must be the ID of a sub-account of this account.
  ///
  /// [accountId] - The ID of the account for which to get or update LIA
  /// settings.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiaSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiaSettings> update(
    LiaSettings request,
    core.String merchantId,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/liasettings/' +
        commons.escapeVariable('$accountId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return LiaSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class LocalinventoryResource {
  final commons.ApiRequester _requester;

  LocalinventoryResource(commons.ApiRequester client) : _requester = client;

  /// Updates local inventory for multiple products or stores in a single
  /// request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LocalinventoryCustomBatchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LocalinventoryCustomBatchResponse> custombatch(
    LocalinventoryCustomBatchRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'localinventory/batch';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return LocalinventoryCustomBatchResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the local inventory of a product in your Merchant Center account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that contains the product. This
  /// account cannot be a multi-client account.
  ///
  /// [productId] - The REST ID of the product for which to update local
  /// inventory.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LocalInventory].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LocalInventory> insert(
    LocalInventory request,
    core.String merchantId,
    core.String productId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/products/' +
        commons.escapeVariable('$productId') +
        '/localinventory';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return LocalInventory.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class OrderinvoicesResource {
  final commons.ApiRequester _requester;

  OrderinvoicesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a charge invoice for a shipment group, and triggers a charge
  /// capture for orderinvoice enabled orders.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [orderId] - The ID of the order.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrderinvoicesCreateChargeInvoiceResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrderinvoicesCreateChargeInvoiceResponse> createchargeinvoice(
    OrderinvoicesCreateChargeInvoiceRequest request,
    core.String merchantId,
    core.String orderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orderinvoices/' +
        commons.escapeVariable('$orderId') +
        '/createChargeInvoice';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return OrderinvoicesCreateChargeInvoiceResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a refund invoice for one or more shipment groups, and triggers a
  /// refund for orderinvoice enabled orders.
  ///
  /// This can only be used for line items that have previously been charged
  /// using `createChargeInvoice`. All amounts (except for the summary) are
  /// incremental with respect to the previous invoice.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [orderId] - The ID of the order.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrderinvoicesCreateRefundInvoiceResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrderinvoicesCreateRefundInvoiceResponse> createrefundinvoice(
    OrderinvoicesCreateRefundInvoiceRequest request,
    core.String merchantId,
    core.String orderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orderinvoices/' +
        commons.escapeVariable('$orderId') +
        '/createRefundInvoice';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return OrderinvoicesCreateRefundInvoiceResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class OrderreportsResource {
  final commons.ApiRequester _requester;

  OrderreportsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a report for disbursements from your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [disbursementEndDate] - The last date which disbursements occurred. In ISO
  /// 8601 format. Default: current date.
  ///
  /// [disbursementStartDate] - The first date which disbursements occurred. In
  /// ISO 8601 format.
  ///
  /// [maxResults] - The maximum number of disbursements to return in the
  /// response, used for paging.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrderreportsListDisbursementsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrderreportsListDisbursementsResponse> listdisbursements(
    core.String merchantId, {
    core.String? disbursementEndDate,
    core.String? disbursementStartDate,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (disbursementEndDate != null)
        'disbursementEndDate': [disbursementEndDate],
      if (disbursementStartDate != null)
        'disbursementStartDate': [disbursementStartDate],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        commons.escapeVariable('$merchantId') + '/orderreports/disbursements';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return OrderreportsListDisbursementsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of transactions for a disbursement from your Merchant
  /// Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [disbursementId] - The Google-provided ID of the disbursement (found in
  /// Wallet).
  ///
  /// [maxResults] - The maximum number of disbursements to return in the
  /// response, used for paging.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [transactionEndDate] - The last date in which transaction occurred. In ISO
  /// 8601 format. Default: current date.
  ///
  /// [transactionStartDate] - The first date in which transaction occurred. In
  /// ISO 8601 format.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrderreportsListTransactionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrderreportsListTransactionsResponse> listtransactions(
    core.String merchantId,
    core.String disbursementId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? transactionEndDate,
    core.String? transactionStartDate,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (transactionEndDate != null)
        'transactionEndDate': [transactionEndDate],
      if (transactionStartDate != null)
        'transactionStartDate': [transactionStartDate],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orderreports/disbursements/' +
        commons.escapeVariable('$disbursementId') +
        '/transactions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return OrderreportsListTransactionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class OrderreturnsResource {
  final commons.ApiRequester _requester;

  OrderreturnsLabelsResource get labels =>
      OrderreturnsLabelsResource(_requester);

  OrderreturnsResource(commons.ApiRequester client) : _requester = client;

  /// Acks an order return in your Merchant Center account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [returnId] - The ID of the return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrderreturnsAcknowledgeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrderreturnsAcknowledgeResponse> acknowledge(
    OrderreturnsAcknowledgeRequest request,
    core.String merchantId,
    core.String returnId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orderreturns/' +
        commons.escapeVariable('$returnId') +
        '/acknowledge';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return OrderreturnsAcknowledgeResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Create return in your Merchant Center account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrderreturnsCreateOrderReturnResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrderreturnsCreateOrderReturnResponse> createorderreturn(
    OrderreturnsCreateOrderReturnRequest request,
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orderreturns/createOrderReturn';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return OrderreturnsCreateOrderReturnResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves an order return from your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [returnId] - Merchant order return ID generated by Google.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MerchantOrderReturn].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MerchantOrderReturn> get(
    core.String merchantId,
    core.String returnId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orderreturns/' +
        commons.escapeVariable('$returnId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return MerchantOrderReturn.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists order returns in your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [acknowledged] - Obtains order returns that match the acknowledgement
  /// status. When set to true, obtains order returns that have been
  /// acknowledged. When false, obtains order returns that have not been
  /// acknowledged. When not provided, obtains order returns regardless of their
  /// acknowledgement status. We recommend using this filter set to `false`, in
  /// conjunction with the `acknowledge` call, such that only un-acknowledged
  /// order returns are returned.
  ///
  /// [createdEndDate] - Obtains order returns created before this date
  /// (inclusively), in ISO 8601 format.
  ///
  /// [createdStartDate] - Obtains order returns created after this date
  /// (inclusively), in ISO 8601 format.
  ///
  /// [googleOrderIds] - Obtains order returns with the specified order ids. If
  /// this parameter is provided, createdStartDate, createdEndDate,
  /// shipmentType, shipmentStatus, shipmentState and acknowledged parameters
  /// must be not set. Note: if googleOrderId and shipmentTrackingNumber
  /// parameters are provided, the obtained results will include all order
  /// returns that either match the specified order id or the specified tracking
  /// number.
  ///
  /// [maxResults] - The maximum number of order returns to return in the
  /// response, used for paging. The default value is 25 returns per page, and
  /// the maximum allowed value is 250 returns per page.
  ///
  /// [orderBy] - Return the results in the specified order.
  /// Possible string values are:
  /// - "RETURN_CREATION_TIME_DESC" : Return results in descending order.
  /// - "RETURN_CREATION_TIME_ASC" : Return results in ascending order.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [shipmentStates] - Obtains order returns that match any shipment state
  /// provided in this parameter. When this parameter is not provided, order
  /// returns are obtained regardless of their shipment states.
  ///
  /// [shipmentStatus] - Obtains order returns that match any shipment status
  /// provided in this parameter. When this parameter is not provided, order
  /// returns are obtained regardless of their shipment statuses.
  ///
  /// [shipmentTrackingNumbers] - Obtains order returns with the specified
  /// tracking numbers. If this parameter is provided, createdStartDate,
  /// createdEndDate, shipmentType, shipmentStatus, shipmentState and
  /// acknowledged parameters must be not set. Note: if googleOrderId and
  /// shipmentTrackingNumber parameters are provided, the obtained results will
  /// include all order returns that either match the specified order id or the
  /// specified tracking number.
  ///
  /// [shipmentTypes] - Obtains order returns that match any shipment type
  /// provided in this parameter. When this parameter is not provided, order
  /// returns are obtained regardless of their shipment types.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrderreturnsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrderreturnsListResponse> list(
    core.String merchantId, {
    core.bool? acknowledged,
    core.String? createdEndDate,
    core.String? createdStartDate,
    core.List<core.String>? googleOrderIds,
    core.int? maxResults,
    core.String? orderBy,
    core.String? pageToken,
    core.List<core.String>? shipmentStates,
    core.List<core.String>? shipmentStatus,
    core.List<core.String>? shipmentTrackingNumbers,
    core.List<core.String>? shipmentTypes,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (acknowledged != null) 'acknowledged': ['${acknowledged}'],
      if (createdEndDate != null) 'createdEndDate': [createdEndDate],
      if (createdStartDate != null) 'createdStartDate': [createdStartDate],
      if (googleOrderIds != null) 'googleOrderIds': googleOrderIds,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageToken != null) 'pageToken': [pageToken],
      if (shipmentStates != null) 'shipmentStates': shipmentStates,
      if (shipmentStatus != null) 'shipmentStatus': shipmentStatus,
      if (shipmentTrackingNumbers != null)
        'shipmentTrackingNumbers': shipmentTrackingNumbers,
      if (shipmentTypes != null) 'shipmentTypes': shipmentTypes,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/orderreturns';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return OrderreturnsListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Processes return in your Merchant Center account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [returnId] - The ID of the return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrderreturnsProcessResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrderreturnsProcessResponse> process(
    OrderreturnsProcessRequest request,
    core.String merchantId,
    core.String returnId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orderreturns/' +
        commons.escapeVariable('$returnId') +
        '/process';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return OrderreturnsProcessResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class OrderreturnsLabelsResource {
  final commons.ApiRequester _requester;

  OrderreturnsLabelsResource(commons.ApiRequester client) : _requester = client;

  /// Links a return shipping label to a return id.
  ///
  /// You can only create one return label per return id. Since the label is
  /// sent to the buyer, the linked return label cannot be updated or deleted.
  /// If you try to create multiple return shipping labels for a single return
  /// id, every create request except the first will fail.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The merchant the Return Shipping Label belongs
  /// to.
  ///
  /// [returnId] - Required. Provide the Google-generated merchant order return
  /// ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReturnShippingLabel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReturnShippingLabel> create(
    ReturnShippingLabel request,
    core.String merchantId,
    core.String returnId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orderreturns/' +
        commons.escapeVariable('$returnId') +
        '/labels';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ReturnShippingLabel.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class OrdersResource {
  final commons.ApiRequester _requester;

  OrdersResource(commons.ApiRequester client) : _requester = client;

  /// Marks an order as acknowledged.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [orderId] - The ID of the order.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrdersAcknowledgeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrdersAcknowledgeResponse> acknowledge(
    OrdersAcknowledgeRequest request,
    core.String merchantId,
    core.String orderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orders/' +
        commons.escapeVariable('$orderId') +
        '/acknowledge';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return OrdersAcknowledgeResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sandbox only.
  ///
  /// Moves a test order from state "`inProgress`" to state "`pendingShipment`".
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [orderId] - The ID of the test order to modify.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrdersAdvanceTestOrderResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrdersAdvanceTestOrderResponse> advancetestorder(
    core.String merchantId,
    core.String orderId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/testorders/' +
        commons.escapeVariable('$orderId') +
        '/advance';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return OrdersAdvanceTestOrderResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Cancels all line items in an order, making a full refund.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [orderId] - The ID of the order to cancel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrdersCancelResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrdersCancelResponse> cancel(
    OrdersCancelRequest request,
    core.String merchantId,
    core.String orderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orders/' +
        commons.escapeVariable('$orderId') +
        '/cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return OrdersCancelResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Cancels a line item, making a full refund.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [orderId] - The ID of the order.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrdersCancelLineItemResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrdersCancelLineItemResponse> cancellineitem(
    OrdersCancelLineItemRequest request,
    core.String merchantId,
    core.String orderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orders/' +
        commons.escapeVariable('$orderId') +
        '/cancelLineItem';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return OrdersCancelLineItemResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sandbox only.
  ///
  /// Cancels a test order for customer-initiated cancellation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [orderId] - The ID of the test order to cancel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrdersCancelTestOrderByCustomerResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrdersCancelTestOrderByCustomerResponse>
      canceltestorderbycustomer(
    OrdersCancelTestOrderByCustomerRequest request,
    core.String merchantId,
    core.String orderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/testorders/' +
        commons.escapeVariable('$orderId') +
        '/cancelByCustomer';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return OrdersCancelTestOrderByCustomerResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Capture funds from the customer for the current order total.
  ///
  /// This method should be called after the merchant verifies that they are
  /// able and ready to start shipping the order. This method blocks until a
  /// response is received from the payment processsor. If this method succeeds,
  /// the merchant is guaranteed to receive funds for the order after shipment.
  /// If the request fails, it can be retried or the order may be cancelled.
  /// This method cannot be called after the entire order is already shipped. A
  /// rejected error code is returned when the payment service provider has
  /// declined the charge. This indicates a problem between the PSP and either
  /// the merchant's or customer's account. Sometimes this error will be
  /// resolved by the customer. We recommend retrying these errors once per day
  /// or cancelling the order with reason `failedToCaptureFunds` if the items
  /// cannot be held.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account that manages the order.
  /// This cannot be a multi-client account.
  ///
  /// [orderId] - Required. The ID of the Order.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CaptureOrderResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CaptureOrderResponse> captureOrder(
    CaptureOrderRequest request,
    core.String merchantId,
    core.String orderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orders/' +
        commons.escapeVariable('$orderId') +
        '/captureOrder';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return CaptureOrderResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sandbox only.
  ///
  /// Creates a test order.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that should manage the order. This
  /// cannot be a multi-client account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrdersCreateTestOrderResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrdersCreateTestOrderResponse> createtestorder(
    OrdersCreateTestOrderRequest request,
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/testorders';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return OrdersCreateTestOrderResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sandbox only.
  ///
  /// Creates a test return.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [orderId] - The ID of the order.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrdersCreateTestReturnResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrdersCreateTestReturnResponse> createtestreturn(
    OrdersCreateTestReturnRequest request,
    core.String merchantId,
    core.String orderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orders/' +
        commons.escapeVariable('$orderId') +
        '/testreturn';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return OrdersCreateTestReturnResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves an order from your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [orderId] - The ID of the order.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Order].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Order> get(
    core.String merchantId,
    core.String orderId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orders/' +
        commons.escapeVariable('$orderId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Order.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves an order using merchant order ID.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [merchantOrderId] - The merchant order ID to be looked for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrdersGetByMerchantOrderIdResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrdersGetByMerchantOrderIdResponse> getbymerchantorderid(
    core.String merchantId,
    core.String merchantOrderId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/ordersbymerchantid/' +
        commons.escapeVariable('$merchantOrderId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return OrdersGetByMerchantOrderIdResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sandbox only.
  ///
  /// Retrieves an order template that can be used to quickly create a new order
  /// in sandbox.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that should manage the order. This
  /// cannot be a multi-client account.
  ///
  /// [templateName] - The name of the template to retrieve.
  /// Possible string values are:
  /// - "TEMPLATE1" : Get `template1`.
  /// - "TEMPLATE2" : Get `template2`.
  /// - "TEMPLATE1A" : Get `template1A`.
  /// - "TEMPLATE1B" : Get `template1B`.
  /// - "TEMPLATE3" : Get `template3`.
  /// - "TEMPLATE4" : Get `template4`.
  ///
  /// [country] - The country of the template to retrieve. Defaults to `US`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrdersGetTestOrderTemplateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrdersGetTestOrderTemplateResponse> gettestordertemplate(
    core.String merchantId,
    core.String templateName, {
    core.String? country,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (country != null) 'country': [country],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/testordertemplates/' +
        commons.escapeVariable('$templateName');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return OrdersGetTestOrderTemplateResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Notifies that item return and refund was handled directly by merchant
  /// outside of Google payments processing (e.g. cash refund done in store).
  ///
  /// Note: We recommend calling the returnrefundlineitem method to refund
  /// in-store returns. We will issue the refund directly to the customer. This
  /// helps to prevent possible differences arising between merchant and Google
  /// transaction records. We also recommend having the point of sale system
  /// communicate with Google to ensure that customers do not receive a double
  /// refund by first refunding via Google then via an in-store return.
  ///
  /// Deprecated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [orderId] - The ID of the order.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrdersInStoreRefundLineItemResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrdersInStoreRefundLineItemResponse> instorerefundlineitem(
    OrdersInStoreRefundLineItemRequest request,
    core.String merchantId,
    core.String orderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orders/' +
        commons.escapeVariable('$orderId') +
        '/inStoreRefundLineItem';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return OrdersInStoreRefundLineItemResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the orders in your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [acknowledged] - Obtains orders that match the acknowledgement status.
  /// When set to true, obtains orders that have been acknowledged. When false,
  /// obtains orders that have not been acknowledged. We recommend using this
  /// filter set to `false`, in conjunction with the `acknowledge` call, such
  /// that only un-acknowledged orders are returned.
  ///
  /// [maxResults] - The maximum number of orders to return in the response,
  /// used for paging. The default value is 25 orders per page, and the maximum
  /// allowed value is 250 orders per page.
  ///
  /// [orderBy] - Order results by placement date in descending or ascending
  /// order. Acceptable values are: - placedDateAsc - placedDateDesc
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [placedDateEnd] - Obtains orders placed before this date (exclusively), in
  /// ISO 8601 format.
  ///
  /// [placedDateStart] - Obtains orders placed after this date (inclusively),
  /// in ISO 8601 format.
  ///
  /// [statuses] - Obtains orders that match any of the specified statuses.
  /// Please note that `active` is a shortcut for `pendingShipment` and
  /// `partiallyShipped`, and `completed` is a shortcut for `shipped`,
  /// `partiallyDelivered`, `delivered`, `partiallyReturned`, `returned`, and
  /// `canceled`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrdersListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrdersListResponse> list(
    core.String merchantId, {
    core.bool? acknowledged,
    core.int? maxResults,
    core.String? orderBy,
    core.String? pageToken,
    core.String? placedDateEnd,
    core.String? placedDateStart,
    core.List<core.String>? statuses,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (acknowledged != null) 'acknowledged': ['${acknowledged}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageToken != null) 'pageToken': [pageToken],
      if (placedDateEnd != null) 'placedDateEnd': [placedDateEnd],
      if (placedDateStart != null) 'placedDateStart': [placedDateStart],
      if (statuses != null) 'statuses': statuses,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/orders';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return OrdersListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Issues a partial or total refund for items and shipment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [orderId] - The ID of the order to refund.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrdersRefundItemResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrdersRefundItemResponse> refunditem(
    OrdersRefundItemRequest request,
    core.String merchantId,
    core.String orderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orders/' +
        commons.escapeVariable('$orderId') +
        '/refunditem';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return OrdersRefundItemResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Issues a partial or total refund for an order.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [orderId] - The ID of the order to refund.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrdersRefundOrderResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrdersRefundOrderResponse> refundorder(
    OrdersRefundOrderRequest request,
    core.String merchantId,
    core.String orderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orders/' +
        commons.escapeVariable('$orderId') +
        '/refundorder';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return OrdersRefundOrderResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Rejects return on an line item.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [orderId] - The ID of the order.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrdersRejectReturnLineItemResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrdersRejectReturnLineItemResponse> rejectreturnlineitem(
    OrdersRejectReturnLineItemRequest request,
    core.String merchantId,
    core.String orderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orders/' +
        commons.escapeVariable('$orderId') +
        '/rejectReturnLineItem';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return OrdersRejectReturnLineItemResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns and refunds a line item.
  ///
  /// Note that this method can only be called on fully shipped orders. Please
  /// also note that the Orderreturns API is the preferred way to handle returns
  /// after you receive a return from a customer. You can use Orderreturns.list
  /// or Orderreturns.get to search for the return, and then use
  /// Orderreturns.processreturn to issue the refund. If the return cannot be
  /// found, then we recommend using this API to issue a refund.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [orderId] - The ID of the order.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrdersReturnRefundLineItemResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrdersReturnRefundLineItemResponse> returnrefundlineitem(
    OrdersReturnRefundLineItemRequest request,
    core.String merchantId,
    core.String orderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orders/' +
        commons.escapeVariable('$orderId') +
        '/returnRefundLineItem';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return OrdersReturnRefundLineItemResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sets (or overrides if it already exists) merchant provided annotations in
  /// the form of key-value pairs.
  ///
  /// A common use case would be to supply us with additional structured
  /// information about a line item that cannot be provided via other methods.
  /// Submitted key-value pairs can be retrieved as part of the orders resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [orderId] - The ID of the order.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrdersSetLineItemMetadataResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrdersSetLineItemMetadataResponse> setlineitemmetadata(
    OrdersSetLineItemMetadataRequest request,
    core.String merchantId,
    core.String orderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orders/' +
        commons.escapeVariable('$orderId') +
        '/setLineItemMetadata';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return OrdersSetLineItemMetadataResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Marks line item(s) as shipped.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [orderId] - The ID of the order.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrdersShipLineItemsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrdersShipLineItemsResponse> shiplineitems(
    OrdersShipLineItemsRequest request,
    core.String merchantId,
    core.String orderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orders/' +
        commons.escapeVariable('$orderId') +
        '/shipLineItems';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return OrdersShipLineItemsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates ship by and delivery by dates for a line item.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [orderId] - The ID of the order.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrdersUpdateLineItemShippingDetailsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrdersUpdateLineItemShippingDetailsResponse>
      updatelineitemshippingdetails(
    OrdersUpdateLineItemShippingDetailsRequest request,
    core.String merchantId,
    core.String orderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orders/' +
        commons.escapeVariable('$orderId') +
        '/updateLineItemShippingDetails';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return OrdersUpdateLineItemShippingDetailsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the merchant order ID for a given order.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [orderId] - The ID of the order.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrdersUpdateMerchantOrderIdResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrdersUpdateMerchantOrderIdResponse> updatemerchantorderid(
    OrdersUpdateMerchantOrderIdRequest request,
    core.String merchantId,
    core.String orderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orders/' +
        commons.escapeVariable('$orderId') +
        '/updateMerchantOrderId';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return OrdersUpdateMerchantOrderIdResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a shipment's status, carrier, and/or tracking ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that manages the order. This cannot
  /// be a multi-client account.
  ///
  /// [orderId] - The ID of the order.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrdersUpdateShipmentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrdersUpdateShipmentResponse> updateshipment(
    OrdersUpdateShipmentRequest request,
    core.String merchantId,
    core.String orderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/orders/' +
        commons.escapeVariable('$orderId') +
        '/updateShipment';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return OrdersUpdateShipmentResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class OrdertrackingsignalsResource {
  final commons.ApiRequester _requester;

  OrdertrackingsignalsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates new order tracking signal.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the merchant for which the order signal is
  /// created.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrderTrackingSignal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrderTrackingSignal> create(
    OrderTrackingSignal request,
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        commons.escapeVariable('$merchantId') + '/ordertrackingsignals';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return OrderTrackingSignal.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PosResource {
  final commons.ApiRequester _requester;

  PosResource(commons.ApiRequester client) : _requester = client;

  /// Batches multiple POS-related calls in a single request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PosCustomBatchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PosCustomBatchResponse> custombatch(
    PosCustomBatchRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'pos/batch';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PosCustomBatchResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a store for the given merchant.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the POS or inventory data provider.
  ///
  /// [targetMerchantId] - The ID of the target merchant.
  ///
  /// [storeCode] - A store code that is unique per merchant.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String merchantId,
    core.String targetMerchantId,
    core.String storeCode, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/pos/' +
        commons.escapeVariable('$targetMerchantId') +
        '/store/' +
        commons.escapeVariable('$storeCode');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Retrieves information about the given store.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the POS or inventory data provider.
  ///
  /// [targetMerchantId] - The ID of the target merchant.
  ///
  /// [storeCode] - A store code that is unique per merchant.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PosStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PosStore> get(
    core.String merchantId,
    core.String targetMerchantId,
    core.String storeCode, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/pos/' +
        commons.escapeVariable('$targetMerchantId') +
        '/store/' +
        commons.escapeVariable('$storeCode');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return PosStore.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a store for the given merchant.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the POS or inventory data provider.
  ///
  /// [targetMerchantId] - The ID of the target merchant.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PosStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PosStore> insert(
    PosStore request,
    core.String merchantId,
    core.String targetMerchantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/pos/' +
        commons.escapeVariable('$targetMerchantId') +
        '/store';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PosStore.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Submit inventory for the given merchant.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the POS or inventory data provider.
  ///
  /// [targetMerchantId] - The ID of the target merchant.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PosInventoryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PosInventoryResponse> inventory(
    PosInventoryRequest request,
    core.String merchantId,
    core.String targetMerchantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/pos/' +
        commons.escapeVariable('$targetMerchantId') +
        '/inventory';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PosInventoryResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the stores of the target merchant.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the POS or inventory data provider.
  ///
  /// [targetMerchantId] - The ID of the target merchant.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PosListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PosListResponse> list(
    core.String merchantId,
    core.String targetMerchantId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/pos/' +
        commons.escapeVariable('$targetMerchantId') +
        '/store';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return PosListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Submit a sale event for the given merchant.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the POS or inventory data provider.
  ///
  /// [targetMerchantId] - The ID of the target merchant.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PosSaleResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PosSaleResponse> sale(
    PosSaleRequest request,
    core.String merchantId,
    core.String targetMerchantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/pos/' +
        commons.escapeVariable('$targetMerchantId') +
        '/sale';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PosSaleResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProductsResource {
  final commons.ApiRequester _requester;

  ProductsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves, inserts, and deletes multiple products in a single request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductsCustomBatchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductsCustomBatchResponse> custombatch(
    ProductsCustomBatchRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'products/batch';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ProductsCustomBatchResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a product from your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that contains the product. This
  /// account cannot be a multi-client account.
  ///
  /// [productId] - The REST ID of the product.
  ///
  /// [feedId] - The Content API Supplemental Feed ID. If present then product
  /// deletion applies to the data in a supplemental feed. If absent, entire
  /// product will be deleted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String merchantId,
    core.String productId, {
    core.String? feedId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (feedId != null) 'feedId': [feedId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/products/' +
        commons.escapeVariable('$productId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Retrieves a product from your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that contains the product. This
  /// account cannot be a multi-client account.
  ///
  /// [productId] - The REST ID of the product.
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
  async.Future<Product> get(
    core.String merchantId,
    core.String productId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/products/' +
        commons.escapeVariable('$productId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Product.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Uploads a product to your Merchant Center account.
  ///
  /// If an item with the same channel, contentLanguage, offerId, and
  /// targetCountry already exists, this method updates that entry.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that contains the product. This
  /// account cannot be a multi-client account.
  ///
  /// [feedId] - The Content API Supplemental Feed ID. If present then product
  /// insertion applies to the data in a supplemental feed.
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
  async.Future<Product> insert(
    Product request,
    core.String merchantId, {
    core.String? feedId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (feedId != null) 'feedId': [feedId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/products';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Product.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the products in your Merchant Center account.
  ///
  /// The response might contain fewer items than specified by maxResults. Rely
  /// on nextPageToken to determine if there are more items to be requested.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that contains the products. This
  /// account cannot be a multi-client account.
  ///
  /// [maxResults] - The maximum number of products to return in the response,
  /// used for paging.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductsListResponse> list(
    core.String merchantId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/products';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ProductsListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing product in your Merchant Center account.
  ///
  /// Only updates attributes provided in the request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that contains the product. This
  /// account cannot be a multi-client account.
  ///
  /// [productId] - The REST ID of the product for which to update.
  ///
  /// [updateMask] - The comma-separated list of product attributes to be
  /// updated. Example: `"title,salePrice"`. Attributes specified in the update
  /// mask without a value specified in the body will be deleted from the
  /// product. Only top-level product attributes can be updated. If not defined,
  /// product attributes with set values will be updated and other attributes
  /// will stay unchanged.
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
  async.Future<Product> update(
    Product request,
    core.String merchantId,
    core.String productId, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/products/' +
        commons.escapeVariable('$productId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Product.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProductstatusesResource {
  final commons.ApiRequester _requester;

  ProductstatusesRepricingreportsResource get repricingreports =>
      ProductstatusesRepricingreportsResource(_requester);

  ProductstatusesResource(commons.ApiRequester client) : _requester = client;

  /// Gets the statuses of multiple products in a single request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductstatusesCustomBatchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductstatusesCustomBatchResponse> custombatch(
    ProductstatusesCustomBatchRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'productstatuses/batch';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ProductstatusesCustomBatchResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the status of a product from your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that contains the product. This
  /// account cannot be a multi-client account.
  ///
  /// [productId] - The REST ID of the product.
  ///
  /// [destinations] - If set, only issues for the specified destinations are
  /// returned, otherwise only issues for the Shopping destination.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductStatus].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductStatus> get(
    core.String merchantId,
    core.String productId, {
    core.List<core.String>? destinations,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (destinations != null) 'destinations': destinations,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/productstatuses/' +
        commons.escapeVariable('$productId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ProductStatus.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the statuses of the products in your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that contains the products. This
  /// account cannot be a multi-client account.
  ///
  /// [destinations] - If set, only issues for the specified destinations are
  /// returned, otherwise only issues for the Shopping destination.
  ///
  /// [maxResults] - The maximum number of product statuses to return in the
  /// response, used for paging.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductstatusesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductstatusesListResponse> list(
    core.String merchantId, {
    core.List<core.String>? destinations,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (destinations != null) 'destinations': destinations,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/productstatuses';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ProductstatusesListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProductstatusesRepricingreportsResource {
  final commons.ApiRequester _requester;

  ProductstatusesRepricingreportsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists the metrics report for a given Repricing product.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. Id of the merchant who owns the Repricing rule.
  ///
  /// [productId] - Required. Id of the Repricing product. Also known as the
  /// [REST_ID](https://developers.google.com/shopping-content/reference/rest/v2.1/products#Product.FIELDS.id)
  ///
  /// [endDate] - Gets Repricing reports on and before this date in the
  /// merchant's timezone. You can only retrieve data up to 7 days ago (default)
  /// or earlier. Format is YYYY-MM-DD.
  ///
  /// [pageSize] - Maximum number of days of reports to return. There can be
  /// more than one rule report returned per day. For example, if 3 rule types
  /// got applied to the same product within a 24-hour period, then a page_size
  /// of 1 will return 3 rule reports. The page size defaults to 50 and values
  /// above 1000 are coerced to 1000. This service may return fewer days of
  /// reports than this value, for example, if the time between your start and
  /// end date is less than the page size.
  ///
  /// [pageToken] - Token (if provided) to retrieve the subsequent page. All
  /// other parameters must match the original call that provided the page
  /// token.
  ///
  /// [ruleId] - Id of the Repricing rule. If specified, only gets this rule's
  /// reports.
  ///
  /// [startDate] - Gets Repricing reports on and after this date in the
  /// merchant's timezone, up to one year ago. Do not use a start date later
  /// than 7 days ago (default). Format is YYYY-MM-DD.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRepricingProductReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRepricingProductReportsResponse> list(
    core.String merchantId,
    core.String productId, {
    core.String? endDate,
    core.int? pageSize,
    core.String? pageToken,
    core.String? ruleId,
    core.String? startDate,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (endDate != null) 'endDate': [endDate],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (ruleId != null) 'ruleId': [ruleId],
      if (startDate != null) 'startDate': [startDate],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/productstatuses/' +
        commons.escapeVariable('$productId') +
        '/repricingreports';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListRepricingProductReportsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PromotionsResource {
  final commons.ApiRequester _requester;

  PromotionsResource(commons.ApiRequester client) : _requester = client;

  /// Inserts a promotion for your Merchant Center account.
  ///
  /// If the promotion already exists, then it will update the promotion
  /// instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account that contains the
  /// collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Promotion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Promotion> create(
    Promotion request,
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/promotions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Promotion.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class PubsubnotificationsettingsResource {
  final commons.ApiRequester _requester;

  PubsubnotificationsettingsResource(commons.ApiRequester client)
      : _requester = client;

  /// Retrieves a Merchant Center account's pubsub notification settings.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account for which to get pubsub notification
  /// settings.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PubsubNotificationSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PubsubNotificationSettings> get(
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        commons.escapeVariable('$merchantId') + '/pubsubnotificationsettings';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return PubsubNotificationSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Register a Merchant Center account for pubsub notifications.
  ///
  /// Note that cloud topic name should not be provided as part of the request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PubsubNotificationSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PubsubNotificationSettings> update(
    PubsubNotificationSettings request,
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        commons.escapeVariable('$merchantId') + '/pubsubnotificationsettings';

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return PubsubNotificationSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class RegionalinventoryResource {
  final commons.ApiRequester _requester;

  RegionalinventoryResource(commons.ApiRequester client) : _requester = client;

  /// Updates regional inventory for multiple products or regions in a single
  /// request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RegionalinventoryCustomBatchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RegionalinventoryCustomBatchResponse> custombatch(
    RegionalinventoryCustomBatchRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'regionalinventory/batch';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return RegionalinventoryCustomBatchResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update the regional inventory of a product in your Merchant Center
  /// account.
  ///
  /// If a regional inventory with the same region ID already exists, this
  /// method updates that entry.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account that contains the product. This
  /// account cannot be a multi-client account.
  ///
  /// [productId] - The REST ID of the product for which to update the regional
  /// inventory.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RegionalInventory].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RegionalInventory> insert(
    RegionalInventory request,
    core.String merchantId,
    core.String productId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/products/' +
        commons.escapeVariable('$productId') +
        '/regionalinventory';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return RegionalInventory.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class RegionsResource {
  final commons.ApiRequester _requester;

  RegionsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a region definition in your Merchant Center account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The id of the merchant for which to create region
  /// definition.
  ///
  /// [regionId] - Required. The id of the region to create.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Region].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Region> create(
    Region request,
    core.String merchantId, {
    core.String? regionId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (regionId != null) 'regionId': [regionId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/regions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Region.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a region definition from your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The id of the merchant for which to delete region
  /// definition.
  ///
  /// [regionId] - Required. The id of the region to delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String merchantId,
    core.String regionId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/regions/' +
        commons.escapeVariable('$regionId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Retrieves a region defined in your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The id of the merchant for which to retrieve
  /// region definition.
  ///
  /// [regionId] - Required. The id of the region to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Region].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Region> get(
    core.String merchantId,
    core.String regionId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/regions/' +
        commons.escapeVariable('$regionId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Region.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the regions in your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The id of the merchant for which to list region
  /// definitions.
  ///
  /// [pageSize] - The maximum number of regions to return. The service may
  /// return fewer than this value. If unspecified, at most 50 rules will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListRegions` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListRegions` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRegionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRegionsResponse> list(
    core.String merchantId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/regions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListRegionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a region definition in your Merchant Center account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The id of the merchant for which to update region
  /// definition.
  ///
  /// [regionId] - Required. The id of the region to update.
  ///
  /// [updateMask] - Optional. The comma-separated field mask indicating the
  /// fields to update. Example: `"displayName,postalCodeArea.regionCode"`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Region].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Region> patch(
    Region request,
    core.String merchantId,
    core.String regionId, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/regions/' +
        commons.escapeVariable('$regionId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Region.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ReportsResource {
  final commons.ApiRequester _requester;

  ReportsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves merchant performance mertrics matching the search query and
  /// optionally segmented by selected dimensions.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. Id of the merchant making the call. Must be a
  /// standalone account or an MCA subaccount.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchResponse> search(
    SearchRequest request,
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/reports/search';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SearchResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class RepricingrulesResource {
  final commons.ApiRequester _requester;

  RepricingrulesRepricingreportsResource get repricingreports =>
      RepricingrulesRepricingreportsResource(_requester);

  RepricingrulesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a repricing rule for your Merchant Center account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The id of the merchant who owns the repricing
  /// rule.
  ///
  /// [ruleId] - Required. The id of the rule to create.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RepricingRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RepricingRule> create(
    RepricingRule request,
    core.String merchantId, {
    core.String? ruleId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (ruleId != null) 'ruleId': [ruleId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/repricingrules';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return RepricingRule.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a repricing rule in your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The id of the merchant who owns the repricing
  /// rule.
  ///
  /// [ruleId] - Required. The id of the rule to Delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String merchantId,
    core.String ruleId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/repricingrules/' +
        commons.escapeVariable('$ruleId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Retrieves a repricing rule from your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The id of the merchant who owns the repricing
  /// rule.
  ///
  /// [ruleId] - Required. The id of the rule to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RepricingRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RepricingRule> get(
    core.String merchantId,
    core.String ruleId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/repricingrules/' +
        commons.escapeVariable('$ruleId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return RepricingRule.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the repricing rules in your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The id of the merchant who owns the repricing
  /// rule.
  ///
  /// [countryCode] -
  /// [CLDR country code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
  /// (e.g. "US"), used as a filter on repricing rules.
  ///
  /// [languageCode] - The two-letter ISO 639-1 language code associated with
  /// the repricing rule, used as a filter.
  ///
  /// [pageSize] - The maximum number of repricing rules to return. The service
  /// may return fewer than this value. If unspecified, at most 50 rules will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListRepricingRules`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListRepricingRules` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRepricingRulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRepricingRulesResponse> list(
    core.String merchantId, {
    core.String? countryCode,
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (countryCode != null) 'countryCode': [countryCode],
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/repricingrules';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListRepricingRulesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a repricing rule in your Merchant Center account.
  ///
  /// All mutable fields will be overwritten in each update request. In each
  /// update, you must provide all required mutable fields, or an error will be
  /// thrown. If you do not provide an optional field in the update request, if
  /// that field currently exists, it will be deleted from the rule.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The id of the merchant who owns the repricing
  /// rule.
  ///
  /// [ruleId] - Required. The id of the rule to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RepricingRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RepricingRule> patch(
    RepricingRule request,
    core.String merchantId,
    core.String ruleId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/repricingrules/' +
        commons.escapeVariable('$ruleId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return RepricingRule.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class RepricingrulesRepricingreportsResource {
  final commons.ApiRequester _requester;

  RepricingrulesRepricingreportsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists the metrics report for a given Repricing rule.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. Id of the merchant who owns the Repricing rule.
  ///
  /// [ruleId] - Required. Id of the Repricing rule.
  ///
  /// [endDate] - Gets Repricing reports on and before this date in the
  /// merchant's timezone. You can only retrieve data up to 7 days ago (default)
  /// or earlier. Format: YYYY-MM-DD.
  ///
  /// [pageSize] - Maximum number of daily reports to return. Each report
  /// includes data from a single 24-hour period. The page size defaults to 50
  /// and values above 1000 are coerced to 1000. This service may return fewer
  /// days than this value, for example, if the time between your start and end
  /// date is less than page size.
  ///
  /// [pageToken] - Token (if provided) to retrieve the subsequent page. All
  /// other parameters must match the original call that provided the page
  /// token.
  ///
  /// [startDate] - Gets Repricing reports on and after this date in the
  /// merchant's timezone, up to one year ago. Do not use a start date later
  /// than 7 days ago (default). Format: YYYY-MM-DD.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRepricingRuleReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRepricingRuleReportsResponse> list(
    core.String merchantId,
    core.String ruleId, {
    core.String? endDate,
    core.int? pageSize,
    core.String? pageToken,
    core.String? startDate,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (endDate != null) 'endDate': [endDate],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startDate != null) 'startDate': [startDate],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/repricingrules/' +
        commons.escapeVariable('$ruleId') +
        '/repricingreports';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListRepricingRuleReportsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ReturnaddressResource {
  final commons.ApiRequester _requester;

  ReturnaddressResource(commons.ApiRequester client) : _requester = client;

  /// Batches multiple return address related calls in a single request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReturnaddressCustomBatchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReturnaddressCustomBatchResponse> custombatch(
    ReturnaddressCustomBatchRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'returnaddress/batch';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ReturnaddressCustomBatchResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a return address for the given Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The Merchant Center account from which to delete the given
  /// return address.
  ///
  /// [returnAddressId] - Return address ID generated by Google.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String merchantId,
    core.String returnAddressId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/returnaddress/' +
        commons.escapeVariable('$returnAddressId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Gets a return address of the Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The Merchant Center account to get a return address for.
  ///
  /// [returnAddressId] - Return address ID generated by Google.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReturnAddress].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReturnAddress> get(
    core.String merchantId,
    core.String returnAddressId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/returnaddress/' +
        commons.escapeVariable('$returnAddressId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ReturnAddress.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a return address for the Merchant Center account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The Merchant Center account to insert a return address for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReturnAddress].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReturnAddress> insert(
    ReturnAddress request,
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/returnaddress';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ReturnAddress.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the return addresses of the Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The Merchant Center account to list return addresses for.
  ///
  /// [country] - List only return addresses applicable to the given country of
  /// sale. When omitted, all return addresses are listed.
  ///
  /// [maxResults] - The maximum number of addresses in the response, used for
  /// paging.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReturnaddressListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReturnaddressListResponse> list(
    core.String merchantId, {
    core.String? country,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (country != null) 'country': [country],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/returnaddress';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ReturnaddressListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ReturnpolicyResource {
  final commons.ApiRequester _requester;

  ReturnpolicyResource(commons.ApiRequester client) : _requester = client;

  /// Batches multiple return policy related calls in a single request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReturnpolicyCustomBatchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReturnpolicyCustomBatchResponse> custombatch(
    ReturnpolicyCustomBatchRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'returnpolicy/batch';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ReturnpolicyCustomBatchResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a return policy for the given Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The Merchant Center account from which to delete the given
  /// return policy.
  ///
  /// [returnPolicyId] - Return policy ID generated by Google.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String merchantId,
    core.String returnPolicyId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/returnpolicy/' +
        commons.escapeVariable('$returnPolicyId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Gets a return policy of the Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The Merchant Center account to get a return policy for.
  ///
  /// [returnPolicyId] - Return policy ID generated by Google.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReturnPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReturnPolicy> get(
    core.String merchantId,
    core.String returnPolicyId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/returnpolicy/' +
        commons.escapeVariable('$returnPolicyId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ReturnPolicy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a return policy for the Merchant Center account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The Merchant Center account to insert a return policy for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReturnPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReturnPolicy> insert(
    ReturnPolicy request,
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/returnpolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ReturnPolicy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the return policies of the Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The Merchant Center account to list return policies for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReturnpolicyListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReturnpolicyListResponse> list(
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/returnpolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ReturnpolicyListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ReturnpolicyonlineResource {
  final commons.ApiRequester _requester;

  ReturnpolicyonlineResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new return policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The id of the merchant for which to retrieve the
  /// return policy online object.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReturnPolicyOnline].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReturnPolicyOnline> create(
    ReturnPolicyOnline request,
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/returnpolicyonline';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ReturnPolicyOnline.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing return policy.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The id of the merchant for which to retrieve the
  /// return policy online object.
  ///
  /// [returnPolicyId] - Required. The id of the return policy to delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String merchantId,
    core.String returnPolicyId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/returnpolicyonline/' +
        commons.escapeVariable('$returnPolicyId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Gets an existing return policy.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The id of the merchant for which to retrieve the
  /// return policy online object.
  ///
  /// [returnPolicyId] - Required. The id of the return policy to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReturnPolicyOnline].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReturnPolicyOnline> get(
    core.String merchantId,
    core.String returnPolicyId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/returnpolicyonline/' +
        commons.escapeVariable('$returnPolicyId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ReturnPolicyOnline.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all existing return policies.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The id of the merchant for which to retrieve the
  /// return policy online object.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReturnPolicyOnlineResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReturnPolicyOnlineResponse> list(
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/returnpolicyonline';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListReturnPolicyOnlineResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing return policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The id of the merchant for which to retrieve the
  /// return policy online object.
  ///
  /// [returnPolicyId] - Required. The id of the return policy to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReturnPolicyOnline].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReturnPolicyOnline> patch(
    ReturnPolicyOnline request,
    core.String merchantId,
    core.String returnPolicyId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/returnpolicyonline/' +
        commons.escapeVariable('$returnPolicyId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return ReturnPolicyOnline.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class SettlementreportsResource {
  final commons.ApiRequester _requester;

  SettlementreportsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a settlement report from your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The Merchant Center account of the settlement report.
  ///
  /// [settlementId] - The Google-provided ID of the settlement.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SettlementReport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SettlementReport> get(
    core.String merchantId,
    core.String settlementId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/settlementreports/' +
        commons.escapeVariable('$settlementId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SettlementReport.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of settlement reports from your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The Merchant Center account to list settlements for.
  ///
  /// [maxResults] - The maximum number of settlements to return in the
  /// response, used for paging. The default value is 200 returns per page, and
  /// the maximum allowed value is 5000 returns per page.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [transferEndDate] - Obtains settlements which have transactions before
  /// this date (inclusively), in ISO 8601 format.
  ///
  /// [transferStartDate] - Obtains settlements which have transactions after
  /// this date (inclusively), in ISO 8601 format.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SettlementreportsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SettlementreportsListResponse> list(
    core.String merchantId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? transferEndDate,
    core.String? transferStartDate,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (transferEndDate != null) 'transferEndDate': [transferEndDate],
      if (transferStartDate != null) 'transferStartDate': [transferStartDate],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/settlementreports';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SettlementreportsListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class SettlementtransactionsResource {
  final commons.ApiRequester _requester;

  SettlementtransactionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Retrieves a list of transactions for the settlement.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The Merchant Center account to list transactions for.
  ///
  /// [settlementId] - The Google-provided ID of the settlement.
  ///
  /// [maxResults] - The maximum number of transactions to return in the
  /// response, used for paging. The default value is 200 transactions per page,
  /// and the maximum allowed value is 5000 transactions per page.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [transactionIds] - The list of transactions to return. If not set, all
  /// transactions will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SettlementtransactionsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SettlementtransactionsListResponse> list(
    core.String merchantId,
    core.String settlementId, {
    core.int? maxResults,
    core.String? pageToken,
    core.List<core.String>? transactionIds,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (transactionIds != null) 'transactionIds': transactionIds,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/settlementreports/' +
        commons.escapeVariable('$settlementId') +
        '/transactions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SettlementtransactionsListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ShippingsettingsResource {
  final commons.ApiRequester _requester;

  ShippingsettingsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves and updates the shipping settings of multiple accounts in a
  /// single request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ShippingsettingsCustomBatchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ShippingsettingsCustomBatchResponse> custombatch(
    ShippingsettingsCustomBatchRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'shippingsettings/batch';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ShippingsettingsCustomBatchResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the shipping settings of the account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. If this parameter is not
  /// the same as accountId, then this account must be a multi-client account
  /// and `accountId` must be the ID of a sub-account of this account.
  ///
  /// [accountId] - The ID of the account for which to get/update shipping
  /// settings.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ShippingSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ShippingSettings> get(
    core.String merchantId,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/shippingsettings/' +
        commons.escapeVariable('$accountId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ShippingSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves supported carriers and carrier services for an account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account for which to retrieve the supported
  /// carriers.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ShippingsettingsGetSupportedCarriersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ShippingsettingsGetSupportedCarriersResponse>
      getsupportedcarriers(
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/supportedCarriers';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ShippingsettingsGetSupportedCarriersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves supported holidays for an account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account for which to retrieve the supported
  /// holidays.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ShippingsettingsGetSupportedHolidaysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ShippingsettingsGetSupportedHolidaysResponse>
      getsupportedholidays(
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/supportedHolidays';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ShippingsettingsGetSupportedHolidaysResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves supported pickup services for an account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the account for which to retrieve the supported
  /// pickup services.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ShippingsettingsGetSupportedPickupServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ShippingsettingsGetSupportedPickupServicesResponse>
      getsupportedpickupservices(
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        commons.escapeVariable('$merchantId') + '/supportedPickupServices';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ShippingsettingsGetSupportedPickupServicesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the shipping settings of the sub-accounts in your Merchant Center
  /// account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. This must be a multi-client
  /// account.
  ///
  /// [maxResults] - The maximum number of shipping settings to return in the
  /// response, used for paging.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ShippingsettingsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ShippingsettingsListResponse> list(
    core.String merchantId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/shippingsettings';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ShippingsettingsListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the shipping settings of the account.
  ///
  /// Any fields that are not provided are deleted from the resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. If this parameter is not
  /// the same as accountId, then this account must be a multi-client account
  /// and `accountId` must be the ID of a sub-account of this account.
  ///
  /// [accountId] - The ID of the account for which to get/update shipping
  /// settings.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ShippingSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ShippingSettings> update(
    ShippingSettings request,
    core.String merchantId,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/shippingsettings/' +
        commons.escapeVariable('$accountId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return ShippingSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ShoppingadsprogramResource {
  final commons.ApiRequester _requester;

  ShoppingadsprogramResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves the status and review eligibility for the Shopping Ads program.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ShoppingAdsProgramStatus].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ShoppingAdsProgramStatus> get(
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') + '/shoppingadsprogram';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ShoppingAdsProgramStatus.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Requests a review for Shopping Ads program in the provided country.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> requestreview(
    RequestReviewShoppingAdsRequest request,
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$merchantId') +
        '/shoppingadsprogram/requestreview';

    await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }
}

/// Account data.
///
/// After the creation of a new account it may take a few minutes before it is
/// fully operational. The methods delete, insert, and update require the admin
/// role.
class Account {
  /// How the account is managed.
  ///
  /// Acceptable values are: - "`manual`" - "`automatic`"
  ///
  /// Output only.
  core.String? accountManagement;

  /// Linked Ads accounts that are active or pending approval.
  ///
  /// To create a new link request, add a new link with status `active` to the
  /// list. It will remain in a `pending` state until approved or rejected
  /// either in the Ads interface or through the AdWords API. To delete an
  /// active link, or to cancel a link request, remove it from the list.
  core.List<AccountAdsLink>? adsLinks;

  /// Indicates whether the merchant sells adult content.
  core.bool? adultContent;

  /// Automatically created label IDs that are assigned to the account by CSS
  /// Center.
  core.List<core.String>? automaticLabelIds;

  /// The business information of the account.
  AccountBusinessInformation? businessInformation;

  /// ID of CSS the account belongs to.
  core.String? cssId;

  /// The GMB account which is linked or in the process of being linked with the
  /// Merchant Center account.
  AccountGoogleMyBusinessLink? googleMyBusinessLink;

  /// Required for update.
  ///
  /// Merchant Center account ID.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#account`".
  core.String? kind;

  /// Manually created label IDs that are assigned to the account by CSS.
  core.List<core.String>? labelIds;

  /// Display name for the account.
  ///
  /// Required.
  core.String? name;

  /// Client-specific, locally-unique, internal ID for the child account.
  core.String? sellerId;

  /// Users with access to the account.
  ///
  /// Every account (except for subaccounts) must have at least one admin user.
  core.List<AccountUser>? users;

  /// The merchant's website.
  core.String? websiteUrl;

  /// Linked YouTube channels that are active or pending approval.
  ///
  /// To create a new link request, add a new link with status `active` to the
  /// list. It will remain in a `pending` state until approved or rejected in
  /// the YT Creator Studio interface. To delete an active link, or to cancel a
  /// link request, remove it from the list.
  core.List<AccountYouTubeChannelLink>? youtubeChannelLinks;

  Account({
    this.accountManagement,
    this.adsLinks,
    this.adultContent,
    this.automaticLabelIds,
    this.businessInformation,
    this.cssId,
    this.googleMyBusinessLink,
    this.id,
    this.kind,
    this.labelIds,
    this.name,
    this.sellerId,
    this.users,
    this.websiteUrl,
    this.youtubeChannelLinks,
  });

  Account.fromJson(core.Map _json)
      : this(
          accountManagement: _json.containsKey('accountManagement')
              ? _json['accountManagement'] as core.String
              : null,
          adsLinks: _json.containsKey('adsLinks')
              ? (_json['adsLinks'] as core.List)
                  .map((value) => AccountAdsLink.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          adultContent: _json.containsKey('adultContent')
              ? _json['adultContent'] as core.bool
              : null,
          automaticLabelIds: _json.containsKey('automaticLabelIds')
              ? (_json['automaticLabelIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          businessInformation: _json.containsKey('businessInformation')
              ? AccountBusinessInformation.fromJson(_json['businessInformation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          cssId:
              _json.containsKey('cssId') ? _json['cssId'] as core.String : null,
          googleMyBusinessLink: _json.containsKey('googleMyBusinessLink')
              ? AccountGoogleMyBusinessLink.fromJson(
                  _json['googleMyBusinessLink']
                      as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          labelIds: _json.containsKey('labelIds')
              ? (_json['labelIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          sellerId: _json.containsKey('sellerId')
              ? _json['sellerId'] as core.String
              : null,
          users: _json.containsKey('users')
              ? (_json['users'] as core.List)
                  .map((value) => AccountUser.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          websiteUrl: _json.containsKey('websiteUrl')
              ? _json['websiteUrl'] as core.String
              : null,
          youtubeChannelLinks: _json.containsKey('youtubeChannelLinks')
              ? (_json['youtubeChannelLinks'] as core.List)
                  .map((value) => AccountYouTubeChannelLink.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountManagement != null) 'accountManagement': accountManagement!,
        if (adsLinks != null) 'adsLinks': adsLinks!,
        if (adultContent != null) 'adultContent': adultContent!,
        if (automaticLabelIds != null) 'automaticLabelIds': automaticLabelIds!,
        if (businessInformation != null)
          'businessInformation': businessInformation!,
        if (cssId != null) 'cssId': cssId!,
        if (googleMyBusinessLink != null)
          'googleMyBusinessLink': googleMyBusinessLink!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (labelIds != null) 'labelIds': labelIds!,
        if (name != null) 'name': name!,
        if (sellerId != null) 'sellerId': sellerId!,
        if (users != null) 'users': users!,
        if (websiteUrl != null) 'websiteUrl': websiteUrl!,
        if (youtubeChannelLinks != null)
          'youtubeChannelLinks': youtubeChannelLinks!,
      };
}

class AccountAddress {
  /// CLDR country code (e.g. "US").
  ///
  /// All MCA sub-accounts inherit the country of their parent MCA by default,
  /// however the country can be updated for individual sub-accounts.
  core.String? country;

  /// City, town or commune.
  ///
  /// May also include dependent localities or sublocalities (e.g. neighborhoods
  /// or suburbs).
  core.String? locality;

  /// Postal code or ZIP (e.g. "94043").
  core.String? postalCode;

  /// Top-level administrative subdivision of the country.
  ///
  /// For example, a state like California ("CA") or a province like Quebec
  /// ("QC").
  core.String? region;

  /// Street-level part of the address.
  core.String? streetAddress;

  AccountAddress({
    this.country,
    this.locality,
    this.postalCode,
    this.region,
    this.streetAddress,
  });

  AccountAddress.fromJson(core.Map _json)
      : this(
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          locality: _json.containsKey('locality')
              ? _json['locality'] as core.String
              : null,
          postalCode: _json.containsKey('postalCode')
              ? _json['postalCode'] as core.String
              : null,
          region: _json.containsKey('region')
              ? _json['region'] as core.String
              : null,
          streetAddress: _json.containsKey('streetAddress')
              ? _json['streetAddress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (country != null) 'country': country!,
        if (locality != null) 'locality': locality!,
        if (postalCode != null) 'postalCode': postalCode!,
        if (region != null) 'region': region!,
        if (streetAddress != null) 'streetAddress': streetAddress!,
      };
}

class AccountAdsLink {
  /// Customer ID of the Ads account.
  core.String? adsId;

  /// Status of the link between this Merchant Center account and the Ads
  /// account.
  ///
  /// Upon retrieval, it represents the actual status of the link and can be
  /// either `active` if it was approved in Google Ads or `pending` if it's
  /// pending approval. Upon insertion, it represents the *intended* status of
  /// the link. Re-uploading a link with status `active` when it's still pending
  /// or with status `pending` when it's already active will have no effect: the
  /// status will remain unchanged. Re-uploading a link with deprecated status
  /// `inactive` is equivalent to not submitting the link at all and will delete
  /// the link if it was active or cancel the link request if it was pending.
  /// Acceptable values are: - "`active`" - "`pending`"
  core.String? status;

  AccountAdsLink({
    this.adsId,
    this.status,
  });

  AccountAdsLink.fromJson(core.Map _json)
      : this(
          adsId:
              _json.containsKey('adsId') ? _json['adsId'] as core.String : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adsId != null) 'adsId': adsId!,
        if (status != null) 'status': status!,
      };
}

class AccountBusinessInformation {
  /// The address of the business.
  AccountAddress? address;

  /// The customer service information of the business.
  AccountCustomerService? customerService;

  /// The 10-digit
  /// [Korean business registration number](https://support.google.com/merchants/answer/9037766)
  /// separated with dashes in the format: XXX-XX-XXXXX.
  ///
  /// This field will only be updated if explicitly set.
  core.String? koreanBusinessRegistrationNumber;

  /// The phone number of the business.
  ///
  /// This can only be updated if a verified phone number is not already set. To
  /// replace a verified phone number use the
  /// `Accounts.requestphoneverification` and `Accounts.verifyphonenumber`.
  core.String? phoneNumber;

  /// Verification status of the phone number of the business.
  ///
  /// This status is read only and can be updated only by successful phone
  /// verification. Acceptable values are: - "`verified`" - "`unverified`"
  /// "`unspecified`" -
  core.String? phoneVerificationStatus;

  AccountBusinessInformation({
    this.address,
    this.customerService,
    this.koreanBusinessRegistrationNumber,
    this.phoneNumber,
    this.phoneVerificationStatus,
  });

  AccountBusinessInformation.fromJson(core.Map _json)
      : this(
          address: _json.containsKey('address')
              ? AccountAddress.fromJson(
                  _json['address'] as core.Map<core.String, core.dynamic>)
              : null,
          customerService: _json.containsKey('customerService')
              ? AccountCustomerService.fromJson(_json['customerService']
                  as core.Map<core.String, core.dynamic>)
              : null,
          koreanBusinessRegistrationNumber:
              _json.containsKey('koreanBusinessRegistrationNumber')
                  ? _json['koreanBusinessRegistrationNumber'] as core.String
                  : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
          phoneVerificationStatus: _json.containsKey('phoneVerificationStatus')
              ? _json['phoneVerificationStatus'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (customerService != null) 'customerService': customerService!,
        if (koreanBusinessRegistrationNumber != null)
          'koreanBusinessRegistrationNumber': koreanBusinessRegistrationNumber!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (phoneVerificationStatus != null)
          'phoneVerificationStatus': phoneVerificationStatus!,
      };
}

/// Credentials allowing Google to call a partner's API on behalf of a merchant.
class AccountCredentials {
  /// An OAuth access token.
  core.String? accessToken;

  /// The amount of time, in seconds, after which the access token is no longer
  /// valid.
  core.String? expiresIn;

  /// Indicates to Google how Google should use these OAuth tokens.
  /// Possible string values are:
  /// - "ACCOUNT_CREDENTIALS_PURPOSE_UNSPECIFIED" : Unknown purpose.
  /// - "SHOPIFY_ORDER_MANAGEMENT" : The credentials allow Google to manage
  /// Shopify orders on behalf of the merchant (deprecated).
  /// - "SHOPIFY_INTEGRATION" : The credentials allow Google to manage Shopify
  /// integration on behalf of the merchant.
  core.String? purpose;

  AccountCredentials({
    this.accessToken,
    this.expiresIn,
    this.purpose,
  });

  AccountCredentials.fromJson(core.Map _json)
      : this(
          accessToken: _json.containsKey('accessToken')
              ? _json['accessToken'] as core.String
              : null,
          expiresIn: _json.containsKey('expiresIn')
              ? _json['expiresIn'] as core.String
              : null,
          purpose: _json.containsKey('purpose')
              ? _json['purpose'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessToken != null) 'accessToken': accessToken!,
        if (expiresIn != null) 'expiresIn': expiresIn!,
        if (purpose != null) 'purpose': purpose!,
      };
}

class AccountCustomerService {
  /// Customer service email.
  core.String? email;

  /// Customer service phone number.
  core.String? phoneNumber;

  /// Customer service URL.
  core.String? url;

  AccountCustomerService({
    this.email,
    this.phoneNumber,
    this.url,
  });

  AccountCustomerService.fromJson(core.Map _json)
      : this(
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (url != null) 'url': url!,
      };
}

class AccountGoogleMyBusinessLink {
  /// The ID of the GMB account.
  ///
  /// If this is provided, then `gmbEmail` is ignored. The value of this field
  /// should match the `accountId` used by the GMB API.
  core.String? gmbAccountId;

  /// The GMB email address of which a specific account within a GMB account.
  ///
  /// A sample account within a GMB account could be a business account with set
  /// of locations, managed under the GMB account.
  core.String? gmbEmail;

  /// Status of the link between this Merchant Center account and the GMB
  /// account.
  ///
  /// Acceptable values are: - "`active`" - "`pending`"
  core.String? status;

  AccountGoogleMyBusinessLink({
    this.gmbAccountId,
    this.gmbEmail,
    this.status,
  });

  AccountGoogleMyBusinessLink.fromJson(core.Map _json)
      : this(
          gmbAccountId: _json.containsKey('gmbAccountId')
              ? _json['gmbAccountId'] as core.String
              : null,
          gmbEmail: _json.containsKey('gmbEmail')
              ? _json['gmbEmail'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gmbAccountId != null) 'gmbAccountId': gmbAccountId!,
        if (gmbEmail != null) 'gmbEmail': gmbEmail!,
        if (status != null) 'status': status!,
      };
}

class AccountIdentifier {
  /// The aggregator ID, set for aggregators and subaccounts (in that case, it
  /// represents the aggregator of the subaccount).
  core.String? aggregatorId;

  /// The merchant account ID, set for individual accounts and subaccounts.
  core.String? merchantId;

  AccountIdentifier({
    this.aggregatorId,
    this.merchantId,
  });

  AccountIdentifier.fromJson(core.Map _json)
      : this(
          aggregatorId: _json.containsKey('aggregatorId')
              ? _json['aggregatorId'] as core.String
              : null,
          merchantId: _json.containsKey('merchantId')
              ? _json['merchantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregatorId != null) 'aggregatorId': aggregatorId!,
        if (merchantId != null) 'merchantId': merchantId!,
      };
}

/// Label assigned by CSS domain or CSS group to one of its sub-accounts.
class AccountLabel {
  /// The ID of account this label belongs to.
  ///
  /// Immutable.
  core.String? accountId;

  /// The description of this label.
  core.String? description;

  /// The ID of the label.
  ///
  /// Output only.
  core.String? labelId;

  /// The type of this label.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LABEL_TYPE_UNSPECIFIED" : Unknown label type.
  /// - "MANUAL" : Indicates that the label was created manually.
  /// - "AUTOMATIC" : Indicates that the label was created automatically by CSS
  /// Center.
  core.String? labelType;

  /// The display name of this label.
  core.String? name;

  AccountLabel({
    this.accountId,
    this.description,
    this.labelId,
    this.labelType,
    this.name,
  });

  AccountLabel.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          labelId: _json.containsKey('labelId')
              ? _json['labelId'] as core.String
              : null,
          labelType: _json.containsKey('labelType')
              ? _json['labelType'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (description != null) 'description': description!,
        if (labelId != null) 'labelId': labelId!,
        if (labelType != null) 'labelType': labelType!,
        if (name != null) 'name': name!,
      };
}

///  The return carrier information.
///
/// This service is designed for merchants enrolled in the Buy on Google
/// program.
class AccountReturnCarrier {
  /// The Google-provided unique carrier ID, used to update the resource.
  ///
  /// Output only. Immutable.
  core.String? carrierAccountId;

  /// Name of the carrier account.
  core.String? carrierAccountName;

  /// Number of the carrier account.
  core.String? carrierAccountNumber;

  /// The carrier code enum.
  ///
  /// Accepts the values FEDEX or UPS.
  /// Possible string values are:
  /// - "CARRIER_CODE_UNSPECIFIED" : Carrier not specified
  /// - "FEDEX" : FedEx carrier
  /// - "UPS" : UPS carrier
  core.String? carrierCode;

  AccountReturnCarrier({
    this.carrierAccountId,
    this.carrierAccountName,
    this.carrierAccountNumber,
    this.carrierCode,
  });

  AccountReturnCarrier.fromJson(core.Map _json)
      : this(
          carrierAccountId: _json.containsKey('carrierAccountId')
              ? _json['carrierAccountId'] as core.String
              : null,
          carrierAccountName: _json.containsKey('carrierAccountName')
              ? _json['carrierAccountName'] as core.String
              : null,
          carrierAccountNumber: _json.containsKey('carrierAccountNumber')
              ? _json['carrierAccountNumber'] as core.String
              : null,
          carrierCode: _json.containsKey('carrierCode')
              ? _json['carrierCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (carrierAccountId != null) 'carrierAccountId': carrierAccountId!,
        if (carrierAccountName != null)
          'carrierAccountName': carrierAccountName!,
        if (carrierAccountNumber != null)
          'carrierAccountNumber': carrierAccountNumber!,
        if (carrierCode != null) 'carrierCode': carrierCode!,
      };
}

/// The status of an account, i.e., information about its products, which is
/// computed offline and not returned immediately at insertion time.
class AccountStatus {
  /// The ID of the account for which the status is reported.
  core.String? accountId;

  /// A list of account level issues.
  core.List<AccountStatusAccountLevelIssue>? accountLevelIssues;

  /// How the account is managed.
  ///
  /// Acceptable values are: - "`manual`" - "`automatic`"
  core.String? accountManagement;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#accountStatus`"
  core.String? kind;

  /// List of product-related data by channel, destination, and country.
  ///
  /// Data in this field may be delayed by up to 30 minutes.
  core.List<AccountStatusProducts>? products;

  /// Whether the account's website is claimed or not.
  core.bool? websiteClaimed;

  AccountStatus({
    this.accountId,
    this.accountLevelIssues,
    this.accountManagement,
    this.kind,
    this.products,
    this.websiteClaimed,
  });

  AccountStatus.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          accountLevelIssues: _json.containsKey('accountLevelIssues')
              ? (_json['accountLevelIssues'] as core.List)
                  .map((value) => AccountStatusAccountLevelIssue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          accountManagement: _json.containsKey('accountManagement')
              ? _json['accountManagement'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          products: _json.containsKey('products')
              ? (_json['products'] as core.List)
                  .map((value) => AccountStatusProducts.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          websiteClaimed: _json.containsKey('websiteClaimed')
              ? _json['websiteClaimed'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (accountLevelIssues != null)
          'accountLevelIssues': accountLevelIssues!,
        if (accountManagement != null) 'accountManagement': accountManagement!,
        if (kind != null) 'kind': kind!,
        if (products != null) 'products': products!,
        if (websiteClaimed != null) 'websiteClaimed': websiteClaimed!,
      };
}

class AccountStatusAccountLevelIssue {
  /// Country for which this issue is reported.
  core.String? country;

  /// The destination the issue applies to.
  ///
  /// If this field is empty then the issue applies to all available
  /// destinations.
  core.String? destination;

  /// Additional details about the issue.
  core.String? detail;

  /// The URL of a web page to help resolving this issue.
  core.String? documentation;

  /// Issue identifier.
  core.String? id;

  /// Severity of the issue.
  ///
  /// Acceptable values are: - "`critical`" - "`error`" - "`suggestion`"
  core.String? severity;

  /// Short description of the issue.
  core.String? title;

  AccountStatusAccountLevelIssue({
    this.country,
    this.destination,
    this.detail,
    this.documentation,
    this.id,
    this.severity,
    this.title,
  });

  AccountStatusAccountLevelIssue.fromJson(core.Map _json)
      : this(
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          destination: _json.containsKey('destination')
              ? _json['destination'] as core.String
              : null,
          detail: _json.containsKey('detail')
              ? _json['detail'] as core.String
              : null,
          documentation: _json.containsKey('documentation')
              ? _json['documentation'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          severity: _json.containsKey('severity')
              ? _json['severity'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (country != null) 'country': country!,
        if (destination != null) 'destination': destination!,
        if (detail != null) 'detail': detail!,
        if (documentation != null) 'documentation': documentation!,
        if (id != null) 'id': id!,
        if (severity != null) 'severity': severity!,
        if (title != null) 'title': title!,
      };
}

class AccountStatusItemLevelIssue {
  /// The attribute's name, if the issue is caused by a single attribute.
  core.String? attributeName;

  /// The error code of the issue.
  core.String? code;

  /// A short issue description in English.
  core.String? description;

  /// A detailed issue description in English.
  core.String? detail;

  /// The URL of a web page to help with resolving this issue.
  core.String? documentation;

  /// Number of items with this issue.
  core.String? numItems;

  /// Whether the issue can be resolved by the merchant.
  core.String? resolution;

  /// How this issue affects serving of the offer.
  core.String? servability;

  AccountStatusItemLevelIssue({
    this.attributeName,
    this.code,
    this.description,
    this.detail,
    this.documentation,
    this.numItems,
    this.resolution,
    this.servability,
  });

  AccountStatusItemLevelIssue.fromJson(core.Map _json)
      : this(
          attributeName: _json.containsKey('attributeName')
              ? _json['attributeName'] as core.String
              : null,
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          detail: _json.containsKey('detail')
              ? _json['detail'] as core.String
              : null,
          documentation: _json.containsKey('documentation')
              ? _json['documentation'] as core.String
              : null,
          numItems: _json.containsKey('numItems')
              ? _json['numItems'] as core.String
              : null,
          resolution: _json.containsKey('resolution')
              ? _json['resolution'] as core.String
              : null,
          servability: _json.containsKey('servability')
              ? _json['servability'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributeName != null) 'attributeName': attributeName!,
        if (code != null) 'code': code!,
        if (description != null) 'description': description!,
        if (detail != null) 'detail': detail!,
        if (documentation != null) 'documentation': documentation!,
        if (numItems != null) 'numItems': numItems!,
        if (resolution != null) 'resolution': resolution!,
        if (servability != null) 'servability': servability!,
      };
}

class AccountStatusProducts {
  /// The channel the data applies to.
  ///
  /// Acceptable values are: - "`local`" - "`online`"
  core.String? channel;

  /// The country the data applies to.
  core.String? country;

  /// The destination the data applies to.
  core.String? destination;

  /// List of item-level issues.
  core.List<AccountStatusItemLevelIssue>? itemLevelIssues;

  /// Aggregated product statistics.
  AccountStatusStatistics? statistics;

  AccountStatusProducts({
    this.channel,
    this.country,
    this.destination,
    this.itemLevelIssues,
    this.statistics,
  });

  AccountStatusProducts.fromJson(core.Map _json)
      : this(
          channel: _json.containsKey('channel')
              ? _json['channel'] as core.String
              : null,
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          destination: _json.containsKey('destination')
              ? _json['destination'] as core.String
              : null,
          itemLevelIssues: _json.containsKey('itemLevelIssues')
              ? (_json['itemLevelIssues'] as core.List)
                  .map((value) => AccountStatusItemLevelIssue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          statistics: _json.containsKey('statistics')
              ? AccountStatusStatistics.fromJson(
                  _json['statistics'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channel != null) 'channel': channel!,
        if (country != null) 'country': country!,
        if (destination != null) 'destination': destination!,
        if (itemLevelIssues != null) 'itemLevelIssues': itemLevelIssues!,
        if (statistics != null) 'statistics': statistics!,
      };
}

class AccountStatusStatistics {
  /// Number of active offers.
  core.String? active;

  /// Number of disapproved offers.
  core.String? disapproved;

  /// Number of expiring offers.
  core.String? expiring;

  /// Number of pending offers.
  core.String? pending;

  AccountStatusStatistics({
    this.active,
    this.disapproved,
    this.expiring,
    this.pending,
  });

  AccountStatusStatistics.fromJson(core.Map _json)
      : this(
          active: _json.containsKey('active')
              ? _json['active'] as core.String
              : null,
          disapproved: _json.containsKey('disapproved')
              ? _json['disapproved'] as core.String
              : null,
          expiring: _json.containsKey('expiring')
              ? _json['expiring'] as core.String
              : null,
          pending: _json.containsKey('pending')
              ? _json['pending'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (active != null) 'active': active!,
        if (disapproved != null) 'disapproved': disapproved!,
        if (expiring != null) 'expiring': expiring!,
        if (pending != null) 'pending': pending!,
      };
}

/// The tax settings of a merchant account.
///
/// All methods require the admin role.
class AccountTax {
  /// The ID of the account to which these account tax settings belong.
  ///
  /// Required.
  core.String? accountId;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#accountTax`".
  core.String? kind;

  /// Tax rules.
  ///
  /// Updating the tax rules will enable US taxes (not reversible). Defining no
  /// rules is equivalent to not charging tax at all.
  core.List<AccountTaxTaxRule>? rules;

  AccountTax({
    this.accountId,
    this.kind,
    this.rules,
  });

  AccountTax.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          rules: _json.containsKey('rules')
              ? (_json['rules'] as core.List)
                  .map((value) => AccountTaxTaxRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (kind != null) 'kind': kind!,
        if (rules != null) 'rules': rules!,
      };
}

/// Tax calculation rule to apply in a state or province (USA only).
class AccountTaxTaxRule {
  /// Country code in which tax is applicable.
  core.String? country;

  /// State (or province) is which the tax is applicable, described by its
  /// location ID (also called criteria ID).
  ///
  /// Required.
  core.String? locationId;

  /// Explicit tax rate in percent, represented as a floating point number
  /// without the percentage character.
  ///
  /// Must not be negative.
  core.String? ratePercent;

  /// If true, shipping charges are also taxed.
  core.bool? shippingTaxed;

  /// Whether the tax rate is taken from a global tax table or specified
  /// explicitly.
  core.bool? useGlobalRate;

  AccountTaxTaxRule({
    this.country,
    this.locationId,
    this.ratePercent,
    this.shippingTaxed,
    this.useGlobalRate,
  });

  AccountTaxTaxRule.fromJson(core.Map _json)
      : this(
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          ratePercent: _json.containsKey('ratePercent')
              ? _json['ratePercent'] as core.String
              : null,
          shippingTaxed: _json.containsKey('shippingTaxed')
              ? _json['shippingTaxed'] as core.bool
              : null,
          useGlobalRate: _json.containsKey('useGlobalRate')
              ? _json['useGlobalRate'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (country != null) 'country': country!,
        if (locationId != null) 'locationId': locationId!,
        if (ratePercent != null) 'ratePercent': ratePercent!,
        if (shippingTaxed != null) 'shippingTaxed': shippingTaxed!,
        if (useGlobalRate != null) 'useGlobalRate': useGlobalRate!,
      };
}

class AccountUser {
  /// Whether user is an admin.
  core.bool? admin;

  /// User's email address.
  core.String? emailAddress;

  /// Whether user is an order manager.
  core.bool? orderManager;

  /// Whether user can access payment statements.
  core.bool? paymentsAnalyst;

  /// Whether user can manage payment settings.
  core.bool? paymentsManager;

  AccountUser({
    this.admin,
    this.emailAddress,
    this.orderManager,
    this.paymentsAnalyst,
    this.paymentsManager,
  });

  AccountUser.fromJson(core.Map _json)
      : this(
          admin:
              _json.containsKey('admin') ? _json['admin'] as core.bool : null,
          emailAddress: _json.containsKey('emailAddress')
              ? _json['emailAddress'] as core.String
              : null,
          orderManager: _json.containsKey('orderManager')
              ? _json['orderManager'] as core.bool
              : null,
          paymentsAnalyst: _json.containsKey('paymentsAnalyst')
              ? _json['paymentsAnalyst'] as core.bool
              : null,
          paymentsManager: _json.containsKey('paymentsManager')
              ? _json['paymentsManager'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (admin != null) 'admin': admin!,
        if (emailAddress != null) 'emailAddress': emailAddress!,
        if (orderManager != null) 'orderManager': orderManager!,
        if (paymentsAnalyst != null) 'paymentsAnalyst': paymentsAnalyst!,
        if (paymentsManager != null) 'paymentsManager': paymentsManager!,
      };
}

class AccountYouTubeChannelLink {
  /// Channel ID.
  core.String? channelId;

  /// Status of the link between this Merchant Center account and the YouTube
  /// channel.
  ///
  /// Upon retrieval, it represents the actual status of the link and can be
  /// either `active` if it was approved in YT Creator Studio or `pending` if
  /// it's pending approval. Upon insertion, it represents the *intended* status
  /// of the link. Re-uploading a link with status `active` when it's still
  /// pending or with status `pending` when it's already active will have no
  /// effect: the status will remain unchanged. Re-uploading a link with
  /// deprecated status `inactive` is equivalent to not submitting the link at
  /// all and will delete the link if it was active or cancel the link request
  /// if it was pending.
  core.String? status;

  AccountYouTubeChannelLink({
    this.channelId,
    this.status,
  });

  AccountYouTubeChannelLink.fromJson(core.Map _json)
      : this(
          channelId: _json.containsKey('channelId')
              ? _json['channelId'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelId != null) 'channelId': channelId!,
        if (status != null) 'status': status!,
      };
}

class AccountsAuthInfoResponse {
  /// The account identifiers corresponding to the authenticated user.
  ///
  /// - For an individual account: only the merchant ID is defined - For an
  /// aggregator: only the aggregator ID is defined - For a subaccount of an
  /// MCA: both the merchant ID and the aggregator ID are defined.
  core.List<AccountIdentifier>? accountIdentifiers;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#accountsAuthInfoResponse`".
  core.String? kind;

  AccountsAuthInfoResponse({
    this.accountIdentifiers,
    this.kind,
  });

  AccountsAuthInfoResponse.fromJson(core.Map _json)
      : this(
          accountIdentifiers: _json.containsKey('accountIdentifiers')
              ? (_json['accountIdentifiers'] as core.List)
                  .map((value) => AccountIdentifier.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountIdentifiers != null)
          'accountIdentifiers': accountIdentifiers!,
        if (kind != null) 'kind': kind!,
      };
}

class AccountsClaimWebsiteResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#accountsClaimWebsiteResponse`".
  core.String? kind;

  AccountsClaimWebsiteResponse({
    this.kind,
  });

  AccountsClaimWebsiteResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
      };
}

class AccountsCustomBatchRequest {
  /// The request entries to be processed in the batch.
  core.List<AccountsCustomBatchRequestEntry>? entries;

  AccountsCustomBatchRequest({
    this.entries,
  });

  AccountsCustomBatchRequest.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) => AccountsCustomBatchRequestEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

/// A batch entry encoding a single non-batch accounts request.
class AccountsCustomBatchRequestEntry {
  /// The account to create or update.
  ///
  /// Only defined if the method is `insert` or `update`.
  Account? account;

  /// The ID of the targeted account.
  ///
  /// Only defined if the method is not `insert`.
  core.String? accountId;

  /// An entry ID, unique within the batch request.
  core.int? batchId;

  /// Whether the account should be deleted if the account has offers.
  ///
  /// Only applicable if the method is `delete`.
  core.bool? force;

  /// Label IDs for the 'updatelabels' request.
  core.List<core.String>? labelIds;

  /// Details about the `link` request.
  AccountsCustomBatchRequestEntryLinkRequest? linkRequest;

  /// The ID of the managing account.
  core.String? merchantId;

  /// The method of the batch entry.
  ///
  /// Acceptable values are: - "`claimWebsite`" - "`delete`" - "`get`" -
  /// "`insert`" - "`link`" - "`update`"
  core.String? method;

  /// Only applicable if the method is `claimwebsite`.
  ///
  /// Indicates whether or not to take the claim from another account in case
  /// there is a conflict.
  core.bool? overwrite;

  /// Controls which fields are visible.
  ///
  /// Only applicable if the method is 'get'.
  core.String? view;

  AccountsCustomBatchRequestEntry({
    this.account,
    this.accountId,
    this.batchId,
    this.force,
    this.labelIds,
    this.linkRequest,
    this.merchantId,
    this.method,
    this.overwrite,
    this.view,
  });

  AccountsCustomBatchRequestEntry.fromJson(core.Map _json)
      : this(
          account: _json.containsKey('account')
              ? Account.fromJson(
                  _json['account'] as core.Map<core.String, core.dynamic>)
              : null,
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          force:
              _json.containsKey('force') ? _json['force'] as core.bool : null,
          labelIds: _json.containsKey('labelIds')
              ? (_json['labelIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          linkRequest: _json.containsKey('linkRequest')
              ? AccountsCustomBatchRequestEntryLinkRequest.fromJson(
                  _json['linkRequest'] as core.Map<core.String, core.dynamic>)
              : null,
          merchantId: _json.containsKey('merchantId')
              ? _json['merchantId'] as core.String
              : null,
          method: _json.containsKey('method')
              ? _json['method'] as core.String
              : null,
          overwrite: _json.containsKey('overwrite')
              ? _json['overwrite'] as core.bool
              : null,
          view: _json.containsKey('view') ? _json['view'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!,
        if (accountId != null) 'accountId': accountId!,
        if (batchId != null) 'batchId': batchId!,
        if (force != null) 'force': force!,
        if (labelIds != null) 'labelIds': labelIds!,
        if (linkRequest != null) 'linkRequest': linkRequest!,
        if (merchantId != null) 'merchantId': merchantId!,
        if (method != null) 'method': method!,
        if (overwrite != null) 'overwrite': overwrite!,
        if (view != null) 'view': view!,
      };
}

class AccountsCustomBatchRequestEntryLinkRequest {
  /// Action to perform for this link.
  ///
  /// The `"request"` action is only available to select merchants. Acceptable
  /// values are: - "`approve`" - "`remove`" - "`request`"
  core.String? action;

  /// Type of the link between the two accounts.
  ///
  /// Acceptable values are: - "`channelPartner`" - "`eCommercePlatform`" -
  /// "`paymentServiceProvider`"
  core.String? linkType;

  /// The ID of the linked account.
  core.String? linkedAccountId;

  /// Provided services.
  ///
  /// Acceptable values are: - "`shoppingAdsProductManagement`" -
  /// "`shoppingActionsProductManagement`" - "`shoppingActionsOrderManagement`"
  /// - "`paymentProcessing`"
  core.List<core.String>? services;

  AccountsCustomBatchRequestEntryLinkRequest({
    this.action,
    this.linkType,
    this.linkedAccountId,
    this.services,
  });

  AccountsCustomBatchRequestEntryLinkRequest.fromJson(core.Map _json)
      : this(
          action: _json.containsKey('action')
              ? _json['action'] as core.String
              : null,
          linkType: _json.containsKey('linkType')
              ? _json['linkType'] as core.String
              : null,
          linkedAccountId: _json.containsKey('linkedAccountId')
              ? _json['linkedAccountId'] as core.String
              : null,
          services: _json.containsKey('services')
              ? (_json['services'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (linkType != null) 'linkType': linkType!,
        if (linkedAccountId != null) 'linkedAccountId': linkedAccountId!,
        if (services != null) 'services': services!,
      };
}

class AccountsCustomBatchResponse {
  /// The result of the execution of the batch requests.
  core.List<AccountsCustomBatchResponseEntry>? entries;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#accountsCustomBatchResponse`".
  core.String? kind;

  AccountsCustomBatchResponse({
    this.entries,
    this.kind,
  });

  AccountsCustomBatchResponse.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) => AccountsCustomBatchResponseEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
        if (kind != null) 'kind': kind!,
      };
}

/// A batch entry encoding a single non-batch accounts response.
class AccountsCustomBatchResponseEntry {
  /// The retrieved, created, or updated account.
  ///
  /// Not defined if the method was `delete`, `claimwebsite` or `link`.
  Account? account;

  /// The ID of the request entry this entry responds to.
  core.int? batchId;

  /// A list of errors defined if and only if the request failed.
  Errors? errors;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#accountsCustomBatchResponseEntry`"
  core.String? kind;

  AccountsCustomBatchResponseEntry({
    this.account,
    this.batchId,
    this.errors,
    this.kind,
  });

  AccountsCustomBatchResponseEntry.fromJson(core.Map _json)
      : this(
          account: _json.containsKey('account')
              ? Account.fromJson(
                  _json['account'] as core.Map<core.String, core.dynamic>)
              : null,
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          errors: _json.containsKey('errors')
              ? Errors.fromJson(
                  _json['errors'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!,
        if (batchId != null) 'batchId': batchId!,
        if (errors != null) 'errors': errors!,
        if (kind != null) 'kind': kind!,
      };
}

class AccountsLinkRequest {
  /// Action to perform for this link.
  ///
  /// The `"request"` action is only available to select merchants. Acceptable
  /// values are: - "`approve`" - "`remove`" - "`request`"
  core.String? action;

  /// Additional information required for `eCommercePlatform` link type.
  ECommercePlatformLinkInfo? eCommercePlatformLinkInfo;

  /// Type of the link between the two accounts.
  ///
  /// Acceptable values are: - "`channelPartner`" - "`eCommercePlatform`" -
  /// "`paymentServiceProvider`"
  core.String? linkType;

  /// The ID of the linked account.
  core.String? linkedAccountId;

  /// Additional information required for `paymentServiceProvider` link type.
  PaymentServiceProviderLinkInfo? paymentServiceProviderLinkInfo;

  /// Acceptable values are: - "`shoppingAdsProductManagement`" -
  /// "`shoppingActionsProductManagement`" - "`shoppingActionsOrderManagement`"
  /// - "`paymentProcessing`"
  core.List<core.String>? services;

  AccountsLinkRequest({
    this.action,
    this.eCommercePlatformLinkInfo,
    this.linkType,
    this.linkedAccountId,
    this.paymentServiceProviderLinkInfo,
    this.services,
  });

  AccountsLinkRequest.fromJson(core.Map _json)
      : this(
          action: _json.containsKey('action')
              ? _json['action'] as core.String
              : null,
          eCommercePlatformLinkInfo:
              _json.containsKey('eCommercePlatformLinkInfo')
                  ? ECommercePlatformLinkInfo.fromJson(
                      _json['eCommercePlatformLinkInfo']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          linkType: _json.containsKey('linkType')
              ? _json['linkType'] as core.String
              : null,
          linkedAccountId: _json.containsKey('linkedAccountId')
              ? _json['linkedAccountId'] as core.String
              : null,
          paymentServiceProviderLinkInfo:
              _json.containsKey('paymentServiceProviderLinkInfo')
                  ? PaymentServiceProviderLinkInfo.fromJson(
                      _json['paymentServiceProviderLinkInfo']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          services: _json.containsKey('services')
              ? (_json['services'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (eCommercePlatformLinkInfo != null)
          'eCommercePlatformLinkInfo': eCommercePlatformLinkInfo!,
        if (linkType != null) 'linkType': linkType!,
        if (linkedAccountId != null) 'linkedAccountId': linkedAccountId!,
        if (paymentServiceProviderLinkInfo != null)
          'paymentServiceProviderLinkInfo': paymentServiceProviderLinkInfo!,
        if (services != null) 'services': services!,
      };
}

class AccountsLinkResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#accountsLinkResponse`".
  core.String? kind;

  AccountsLinkResponse({
    this.kind,
  });

  AccountsLinkResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
      };
}

class AccountsListLinksResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#accountsListLinksResponse`".
  core.String? kind;

  /// The list of available links.
  core.List<LinkedAccount>? links;

  /// The token for the retrieval of the next page of links.
  core.String? nextPageToken;

  AccountsListLinksResponse({
    this.kind,
    this.links,
    this.nextPageToken,
  });

  AccountsListLinksResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          links: _json.containsKey('links')
              ? (_json['links'] as core.List)
                  .map((value) => LinkedAccount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (links != null) 'links': links!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class AccountsListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#accountsListResponse`".
  core.String? kind;

  /// The token for the retrieval of the next page of accounts.
  core.String? nextPageToken;
  core.List<Account>? resources;

  AccountsListResponse({
    this.kind,
    this.nextPageToken,
    this.resources,
  });

  AccountsListResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => Account.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resources != null) 'resources': resources!,
      };
}

class AccountsUpdateLabelsRequest {
  /// The IDs of labels that should be assigned to the account.
  core.List<core.String>? labelIds;

  AccountsUpdateLabelsRequest({
    this.labelIds,
  });

  AccountsUpdateLabelsRequest.fromJson(core.Map _json)
      : this(
          labelIds: _json.containsKey('labelIds')
              ? (_json['labelIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labelIds != null) 'labelIds': labelIds!,
      };
}

class AccountsUpdateLabelsResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#accountsUpdateLabelsResponse`".
  core.String? kind;

  AccountsUpdateLabelsResponse({
    this.kind,
  });

  AccountsUpdateLabelsResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
      };
}

class AccountstatusesCustomBatchRequest {
  /// The request entries to be processed in the batch.
  core.List<AccountstatusesCustomBatchRequestEntry>? entries;

  AccountstatusesCustomBatchRequest({
    this.entries,
  });

  AccountstatusesCustomBatchRequest.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) =>
                      AccountstatusesCustomBatchRequestEntry.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

/// A batch entry encoding a single non-batch accountstatuses request.
class AccountstatusesCustomBatchRequestEntry {
  /// The ID of the (sub-)account whose status to get.
  core.String? accountId;

  /// An entry ID, unique within the batch request.
  core.int? batchId;

  /// If set, only issues for the specified destinations are returned, otherwise
  /// only issues for the Shopping destination.
  core.List<core.String>? destinations;

  /// The ID of the managing account.
  core.String? merchantId;

  /// The method of the batch entry.
  ///
  /// Acceptable values are: - "`get`"
  core.String? method;

  AccountstatusesCustomBatchRequestEntry({
    this.accountId,
    this.batchId,
    this.destinations,
    this.merchantId,
    this.method,
  });

  AccountstatusesCustomBatchRequestEntry.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          destinations: _json.containsKey('destinations')
              ? (_json['destinations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          merchantId: _json.containsKey('merchantId')
              ? _json['merchantId'] as core.String
              : null,
          method: _json.containsKey('method')
              ? _json['method'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (batchId != null) 'batchId': batchId!,
        if (destinations != null) 'destinations': destinations!,
        if (merchantId != null) 'merchantId': merchantId!,
        if (method != null) 'method': method!,
      };
}

class AccountstatusesCustomBatchResponse {
  /// The result of the execution of the batch requests.
  core.List<AccountstatusesCustomBatchResponseEntry>? entries;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#accountstatusesCustomBatchResponse`".
  core.String? kind;

  AccountstatusesCustomBatchResponse({
    this.entries,
    this.kind,
  });

  AccountstatusesCustomBatchResponse.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) =>
                      AccountstatusesCustomBatchResponseEntry.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
        if (kind != null) 'kind': kind!,
      };
}

/// A batch entry encoding a single non-batch accountstatuses response.
class AccountstatusesCustomBatchResponseEntry {
  /// The requested account status.
  ///
  /// Defined if and only if the request was successful.
  AccountStatus? accountStatus;

  /// The ID of the request entry this entry responds to.
  core.int? batchId;

  /// A list of errors defined if and only if the request failed.
  Errors? errors;

  AccountstatusesCustomBatchResponseEntry({
    this.accountStatus,
    this.batchId,
    this.errors,
  });

  AccountstatusesCustomBatchResponseEntry.fromJson(core.Map _json)
      : this(
          accountStatus: _json.containsKey('accountStatus')
              ? AccountStatus.fromJson(
                  _json['accountStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          errors: _json.containsKey('errors')
              ? Errors.fromJson(
                  _json['errors'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountStatus != null) 'accountStatus': accountStatus!,
        if (batchId != null) 'batchId': batchId!,
        if (errors != null) 'errors': errors!,
      };
}

class AccountstatusesListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#accountstatusesListResponse`".
  core.String? kind;

  /// The token for the retrieval of the next page of account statuses.
  core.String? nextPageToken;
  core.List<AccountStatus>? resources;

  AccountstatusesListResponse({
    this.kind,
    this.nextPageToken,
    this.resources,
  });

  AccountstatusesListResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => AccountStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resources != null) 'resources': resources!,
      };
}

class AccounttaxCustomBatchRequest {
  /// The request entries to be processed in the batch.
  core.List<AccounttaxCustomBatchRequestEntry>? entries;

  AccounttaxCustomBatchRequest({
    this.entries,
  });

  AccounttaxCustomBatchRequest.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) => AccounttaxCustomBatchRequestEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

/// A batch entry encoding a single non-batch accounttax request.
class AccounttaxCustomBatchRequestEntry {
  /// The ID of the account for which to get/update account tax settings.
  core.String? accountId;

  /// The account tax settings to update.
  ///
  /// Only defined if the method is `update`.
  AccountTax? accountTax;

  /// An entry ID, unique within the batch request.
  core.int? batchId;

  /// The ID of the managing account.
  core.String? merchantId;

  /// The method of the batch entry.
  ///
  /// Acceptable values are: - "`get`" - "`update`"
  core.String? method;

  AccounttaxCustomBatchRequestEntry({
    this.accountId,
    this.accountTax,
    this.batchId,
    this.merchantId,
    this.method,
  });

  AccounttaxCustomBatchRequestEntry.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          accountTax: _json.containsKey('accountTax')
              ? AccountTax.fromJson(
                  _json['accountTax'] as core.Map<core.String, core.dynamic>)
              : null,
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          merchantId: _json.containsKey('merchantId')
              ? _json['merchantId'] as core.String
              : null,
          method: _json.containsKey('method')
              ? _json['method'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (accountTax != null) 'accountTax': accountTax!,
        if (batchId != null) 'batchId': batchId!,
        if (merchantId != null) 'merchantId': merchantId!,
        if (method != null) 'method': method!,
      };
}

class AccounttaxCustomBatchResponse {
  /// The result of the execution of the batch requests.
  core.List<AccounttaxCustomBatchResponseEntry>? entries;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#accounttaxCustomBatchResponse`".
  core.String? kind;

  AccounttaxCustomBatchResponse({
    this.entries,
    this.kind,
  });

  AccounttaxCustomBatchResponse.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) => AccounttaxCustomBatchResponseEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
        if (kind != null) 'kind': kind!,
      };
}

/// A batch entry encoding a single non-batch accounttax response.
class AccounttaxCustomBatchResponseEntry {
  /// The retrieved or updated account tax settings.
  AccountTax? accountTax;

  /// The ID of the request entry this entry responds to.
  core.int? batchId;

  /// A list of errors defined if and only if the request failed.
  Errors? errors;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#accounttaxCustomBatchResponseEntry`"
  core.String? kind;

  AccounttaxCustomBatchResponseEntry({
    this.accountTax,
    this.batchId,
    this.errors,
    this.kind,
  });

  AccounttaxCustomBatchResponseEntry.fromJson(core.Map _json)
      : this(
          accountTax: _json.containsKey('accountTax')
              ? AccountTax.fromJson(
                  _json['accountTax'] as core.Map<core.String, core.dynamic>)
              : null,
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          errors: _json.containsKey('errors')
              ? Errors.fromJson(
                  _json['errors'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountTax != null) 'accountTax': accountTax!,
        if (batchId != null) 'batchId': batchId!,
        if (errors != null) 'errors': errors!,
        if (kind != null) 'kind': kind!,
      };
}

class AccounttaxListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#accounttaxListResponse`".
  core.String? kind;

  /// The token for the retrieval of the next page of account tax settings.
  core.String? nextPageToken;
  core.List<AccountTax>? resources;

  AccounttaxListResponse({
    this.kind,
    this.nextPageToken,
    this.resources,
  });

  AccounttaxListResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => AccountTax.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resources != null) 'resources': resources!,
      };
}

/// Request message for the ActivateProgram method.
typedef ActivateBuyOnGoogleProgramRequest = $Empty;

class Address {
  /// Top-level administrative subdivision of the country.
  ///
  /// For example, a state like California ("CA") or a province like Quebec
  /// ("QC").
  ///
  /// Required.
  core.String? administrativeArea;

  /// City, town or commune.
  ///
  /// May also include dependent localities or sublocalities (e.g. neighborhoods
  /// or suburbs).
  ///
  /// Required.
  core.String? city;

  /// [CLDR country code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
  /// (e.g. "US").
  ///
  /// Required.
  core.String? country;

  /// Postal code or ZIP (e.g. "94043").
  ///
  /// Required.
  core.String? postalCode;

  /// Street-level part of the address.
  core.String? streetAddress;

  Address({
    this.administrativeArea,
    this.city,
    this.country,
    this.postalCode,
    this.streetAddress,
  });

  Address.fromJson(core.Map _json)
      : this(
          administrativeArea: _json.containsKey('administrativeArea')
              ? _json['administrativeArea'] as core.String
              : null,
          city: _json.containsKey('city') ? _json['city'] as core.String : null,
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          postalCode: _json.containsKey('postalCode')
              ? _json['postalCode'] as core.String
              : null,
          streetAddress: _json.containsKey('streetAddress')
              ? _json['streetAddress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (administrativeArea != null)
          'administrativeArea': administrativeArea!,
        if (city != null) 'city': city!,
        if (country != null) 'country': country!,
        if (postalCode != null) 'postalCode': postalCode!,
        if (streetAddress != null) 'streetAddress': streetAddress!,
      };
}

class Amount {
  /// The pre-tax or post-tax price depending on the location of the order.
  ///
  /// Required.
  Price? priceAmount;

  /// Tax value.
  ///
  /// Required.
  Price? taxAmount;

  Amount({
    this.priceAmount,
    this.taxAmount,
  });

  Amount.fromJson(core.Map _json)
      : this(
          priceAmount: _json.containsKey('priceAmount')
              ? Price.fromJson(
                  _json['priceAmount'] as core.Map<core.String, core.dynamic>)
              : null,
          taxAmount: _json.containsKey('taxAmount')
              ? Price.fromJson(
                  _json['taxAmount'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (priceAmount != null) 'priceAmount': priceAmount!,
        if (taxAmount != null) 'taxAmount': taxAmount!,
      };
}

class BusinessDayConfig {
  /// Regular business days, such as '"monday"'.
  ///
  /// May not be empty.
  core.List<core.String>? businessDays;

  BusinessDayConfig({
    this.businessDays,
  });

  BusinessDayConfig.fromJson(core.Map _json)
      : this(
          businessDays: _json.containsKey('businessDays')
              ? (_json['businessDays'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (businessDays != null) 'businessDays': businessDays!,
      };
}

/// Response message for the GetProgramStatus method.
class BuyOnGoogleProgramStatus {
  /// The business models in which merchant participates.
  core.List<core.String>? businessModel;

  /// The customer service pending email.
  ///
  /// After verification this field becomes empty.
  core.String? customerServicePendingEmail;

  /// The pending phone number specified for BuyOnGoogle program.
  ///
  /// It might be different than account level phone number. In order to update
  /// this field the customer_service_pending_phone_region_code must also be
  /// set. After verification this field becomes empty.
  core.String? customerServicePendingPhoneNumber;

  /// Two letter country code for the pending phone number, for example `CA` for
  /// Canadian numbers.
  ///
  /// See the \[ISO 3166-1
  /// alpha-2\](https://wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements)
  /// officially assigned codes. In order to update this field the
  /// customer_service_pending_phone_number must also be set. After verification
  /// this field becomes empty.
  core.String? customerServicePendingPhoneRegionCode;

  /// The customer service verified email.
  ///
  /// Output only.
  core.String? customerServiceVerifiedEmail;

  /// The verified phone number specified for BuyOnGoogle program.
  ///
  /// It might be different than account level phone number.
  ///
  /// Output only.
  core.String? customerServiceVerifiedPhoneNumber;

  /// Two letter country code for the verified phone number, for example `CA`
  /// for Canadian numbers.
  ///
  /// See the \[ISO 3166-1
  /// alpha-2\](https://wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements)
  /// officially assigned codes.
  ///
  /// Output only.
  core.String? customerServiceVerifiedPhoneRegionCode;

  /// The channels through which the merchant is selling.
  /// Possible string values are:
  /// - "ONLINE_SALES_CHANNEL_UNSPECIFIED" : Default value when online sales
  /// channel is not set.
  /// - "GOOGLE_EXCLUSIVE" : Merchant is selling exclusively on Google.
  /// - "GOOGLE_AND_OTHER_WEBSITES" : Merchant is selling on Google and other
  /// websites.
  core.String? onlineSalesChannel;

  /// The current participation stage for the program.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PROGRAM_PARTICIPATION_STAGE_UNSPECIFIED" : Default value when
  /// participation stage is not set.
  /// - "NOT_ELIGIBLE" : Merchant is not eligible for onboarding to a given
  /// program in a specific region code.
  /// - "ELIGIBLE" : Merchant is eligible for onboarding to a given program in a
  /// specific region code.
  /// - "ONBOARDING" : Merchant is onboarding to a given program in a specific
  /// region code.
  /// - "ELIGIBLE_FOR_REVIEW" : Merchant fulfilled all the requirements and is
  /// ready to request review in a specific region code.
  /// - "PENDING_REVIEW" : Merchant is waiting for the review to be completed in
  /// a specific region code.
  /// - "REVIEW_DISAPPROVED" : The review for a merchant has been rejected in a
  /// specific region code.
  /// - "ACTIVE" : Merchant's program participation is active for a specific
  /// region code.
  /// - "PAUSED" : Participation has been paused.
  core.String? participationStage;

  BuyOnGoogleProgramStatus({
    this.businessModel,
    this.customerServicePendingEmail,
    this.customerServicePendingPhoneNumber,
    this.customerServicePendingPhoneRegionCode,
    this.customerServiceVerifiedEmail,
    this.customerServiceVerifiedPhoneNumber,
    this.customerServiceVerifiedPhoneRegionCode,
    this.onlineSalesChannel,
    this.participationStage,
  });

  BuyOnGoogleProgramStatus.fromJson(core.Map _json)
      : this(
          businessModel: _json.containsKey('businessModel')
              ? (_json['businessModel'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          customerServicePendingEmail:
              _json.containsKey('customerServicePendingEmail')
                  ? _json['customerServicePendingEmail'] as core.String
                  : null,
          customerServicePendingPhoneNumber:
              _json.containsKey('customerServicePendingPhoneNumber')
                  ? _json['customerServicePendingPhoneNumber'] as core.String
                  : null,
          customerServicePendingPhoneRegionCode: _json
                  .containsKey('customerServicePendingPhoneRegionCode')
              ? _json['customerServicePendingPhoneRegionCode'] as core.String
              : null,
          customerServiceVerifiedEmail:
              _json.containsKey('customerServiceVerifiedEmail')
                  ? _json['customerServiceVerifiedEmail'] as core.String
                  : null,
          customerServiceVerifiedPhoneNumber:
              _json.containsKey('customerServiceVerifiedPhoneNumber')
                  ? _json['customerServiceVerifiedPhoneNumber'] as core.String
                  : null,
          customerServiceVerifiedPhoneRegionCode: _json
                  .containsKey('customerServiceVerifiedPhoneRegionCode')
              ? _json['customerServiceVerifiedPhoneRegionCode'] as core.String
              : null,
          onlineSalesChannel: _json.containsKey('onlineSalesChannel')
              ? _json['onlineSalesChannel'] as core.String
              : null,
          participationStage: _json.containsKey('participationStage')
              ? _json['participationStage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (businessModel != null) 'businessModel': businessModel!,
        if (customerServicePendingEmail != null)
          'customerServicePendingEmail': customerServicePendingEmail!,
        if (customerServicePendingPhoneNumber != null)
          'customerServicePendingPhoneNumber':
              customerServicePendingPhoneNumber!,
        if (customerServicePendingPhoneRegionCode != null)
          'customerServicePendingPhoneRegionCode':
              customerServicePendingPhoneRegionCode!,
        if (customerServiceVerifiedEmail != null)
          'customerServiceVerifiedEmail': customerServiceVerifiedEmail!,
        if (customerServiceVerifiedPhoneNumber != null)
          'customerServiceVerifiedPhoneNumber':
              customerServiceVerifiedPhoneNumber!,
        if (customerServiceVerifiedPhoneRegionCode != null)
          'customerServiceVerifiedPhoneRegionCode':
              customerServiceVerifiedPhoneRegionCode!,
        if (onlineSalesChannel != null)
          'onlineSalesChannel': onlineSalesChannel!,
        if (participationStage != null)
          'participationStage': participationStage!,
      };
}

/// Request message for the CaptureOrder method.
typedef CaptureOrderRequest = $Empty;

/// Response message for the CaptureOrder method.
class CaptureOrderResponse {
  /// The status of the execution.
  ///
  /// Only defined if the request was successful. Acceptable values are: *
  /// "duplicate" * "executed"
  /// Possible string values are:
  /// - "EXECUTION_STATUS_UNSPECIFIED" : Default value. This value is unused.
  /// - "EXECUTED" : The request was completed successfully.
  /// - "DUPLICATE" : The request was not performed because it already executed
  /// once successfully.
  core.String? executionStatus;

  CaptureOrderResponse({
    this.executionStatus,
  });

  CaptureOrderResponse.fromJson(core.Map _json)
      : this(
          executionStatus: _json.containsKey('executionStatus')
              ? _json['executionStatus'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionStatus != null) 'executionStatus': executionStatus!,
      };
}

class CarrierRate {
  /// Carrier service, such as `"UPS"` or `"Fedex"`.
  ///
  /// The list of supported carriers can be retrieved via the
  /// `getSupportedCarriers` method. Required.
  core.String? carrierName;

  /// Carrier service, such as `"ground"` or `"2 days"`.
  ///
  /// The list of supported services for a carrier can be retrieved via the
  /// `getSupportedCarriers` method. Required.
  core.String? carrierService;

  /// Additive shipping rate modifier.
  ///
  /// Can be negative. For example `{ "value": "1", "currency" : "USD" }` adds
  /// $1 to the rate, `{ "value": "-3", "currency" : "USD" }` removes $3 from
  /// the rate. Optional.
  Price? flatAdjustment;

  /// Name of the carrier rate.
  ///
  /// Must be unique per rate group. Required.
  core.String? name;

  /// Shipping origin for this carrier rate.
  ///
  /// Required.
  core.String? originPostalCode;

  /// Multiplicative shipping rate modifier as a number in decimal notation.
  ///
  /// Can be negative. For example `"5.4"` increases the rate by 5.4%, `"-3"`
  /// decreases the rate by 3%. Optional.
  core.String? percentageAdjustment;

  CarrierRate({
    this.carrierName,
    this.carrierService,
    this.flatAdjustment,
    this.name,
    this.originPostalCode,
    this.percentageAdjustment,
  });

  CarrierRate.fromJson(core.Map _json)
      : this(
          carrierName: _json.containsKey('carrierName')
              ? _json['carrierName'] as core.String
              : null,
          carrierService: _json.containsKey('carrierService')
              ? _json['carrierService'] as core.String
              : null,
          flatAdjustment: _json.containsKey('flatAdjustment')
              ? Price.fromJson(_json['flatAdjustment']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          originPostalCode: _json.containsKey('originPostalCode')
              ? _json['originPostalCode'] as core.String
              : null,
          percentageAdjustment: _json.containsKey('percentageAdjustment')
              ? _json['percentageAdjustment'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (carrierName != null) 'carrierName': carrierName!,
        if (carrierService != null) 'carrierService': carrierService!,
        if (flatAdjustment != null) 'flatAdjustment': flatAdjustment!,
        if (name != null) 'name': name!,
        if (originPostalCode != null) 'originPostalCode': originPostalCode!,
        if (percentageAdjustment != null)
          'percentageAdjustment': percentageAdjustment!,
      };
}

class CarriersCarrier {
  /// The CLDR country code of the carrier (e.g., "US").
  ///
  /// Always present.
  core.String? country;

  /// A list of services supported for EDD (Estimated Delivery Date)
  /// calculation.
  ///
  /// This is the list of valid values for
  /// WarehouseBasedDeliveryTime.carrierService.
  core.List<core.String>? eddServices;

  /// The name of the carrier (e.g., `"UPS"`).
  ///
  /// Always present.
  core.String? name;

  /// A list of supported services (e.g., `"ground"`) for that carrier.
  ///
  /// Contains at least one service. This is the list of valid values for
  /// CarrierRate.carrierService.
  core.List<core.String>? services;

  CarriersCarrier({
    this.country,
    this.eddServices,
    this.name,
    this.services,
  });

  CarriersCarrier.fromJson(core.Map _json)
      : this(
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          eddServices: _json.containsKey('eddServices')
              ? (_json['eddServices'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          services: _json.containsKey('services')
              ? (_json['services'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (country != null) 'country': country!,
        if (eddServices != null) 'eddServices': eddServices!,
        if (name != null) 'name': name!,
        if (services != null) 'services': services!,
      };
}

/// The collection message.
class Collection {
  /// Label that you assign to a collection to help organize bidding and
  /// reporting in Shopping campaigns.
  ///
  /// [Custom label](https://support.google.com/merchants/answer/9674217)
  core.String? customLabel0;

  /// Label that you assign to a collection to help organize bidding and
  /// reporting in Shopping campaigns.
  core.String? customLabel1;

  /// Label that you assign to a collection to help organize bidding and
  /// reporting in Shopping campaigns.
  core.String? customLabel2;

  /// Label that you assign to a collection to help organize bidding and
  /// reporting in Shopping campaigns.
  core.String? customLabel3;

  /// Label that you assign to a collection to help organize bidding and
  /// reporting in Shopping campaigns.
  core.String? customLabel4;

  /// This identifies one or more products associated with the collection.
  ///
  /// Used as a lookup to the corresponding product ID in your product feeds.
  /// Provide a maximum of 100 featuredProduct (for collections). Provide up to
  /// 10 featuredProduct (for Shoppable Images only) with ID and X and Y
  /// coordinates.
  /// [featured_product attribute](https://support.google.com/merchants/answer/9703736)
  core.List<CollectionFeaturedProduct>? featuredProduct;

  /// Your collection's name.
  ///
  /// [headline attribute](https://support.google.com/merchants/answer/9673580)
  core.List<core.String>? headline;

  /// The REST ID of the collection.
  ///
  /// Content API methods that operate on collections take this as their
  /// collectionId parameter. The REST ID for a collection is of the form
  /// collectionId.
  /// [id attribute](https://support.google.com/merchants/answer/9649290)
  ///
  /// Required.
  core.String? id;

  /// The URL of a collection’s image.
  ///
  /// [image_link attribute](https://support.google.com/merchants/answer/9703236)
  core.List<core.String>? imageLink;

  /// The language of a collection and the language of any featured products
  /// linked to the collection.
  ///
  /// [language attribute](https://support.google.com/merchants/answer/9673781)
  core.String? language;

  /// A collection’s landing page.
  ///
  /// URL directly linking to your collection's page on your website.
  /// [link attribute](https://support.google.com/merchants/answer/9673983)
  core.String? link;

  /// A collection’s mobile-optimized landing page when you have a different URL
  /// for mobile and desktop traffic.
  ///
  /// [mobile_link attribute](https://support.google.com/merchants/answer/9646123)
  core.String? mobileLink;

  /// [product_country attribute](https://support.google.com/merchants/answer/9674155)
  core.String? productCountry;

  Collection({
    this.customLabel0,
    this.customLabel1,
    this.customLabel2,
    this.customLabel3,
    this.customLabel4,
    this.featuredProduct,
    this.headline,
    this.id,
    this.imageLink,
    this.language,
    this.link,
    this.mobileLink,
    this.productCountry,
  });

  Collection.fromJson(core.Map _json)
      : this(
          customLabel0: _json.containsKey('customLabel0')
              ? _json['customLabel0'] as core.String
              : null,
          customLabel1: _json.containsKey('customLabel1')
              ? _json['customLabel1'] as core.String
              : null,
          customLabel2: _json.containsKey('customLabel2')
              ? _json['customLabel2'] as core.String
              : null,
          customLabel3: _json.containsKey('customLabel3')
              ? _json['customLabel3'] as core.String
              : null,
          customLabel4: _json.containsKey('customLabel4')
              ? _json['customLabel4'] as core.String
              : null,
          featuredProduct: _json.containsKey('featuredProduct')
              ? (_json['featuredProduct'] as core.List)
                  .map((value) => CollectionFeaturedProduct.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          headline: _json.containsKey('headline')
              ? (_json['headline'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          imageLink: _json.containsKey('imageLink')
              ? (_json['imageLink'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          language: _json.containsKey('language')
              ? _json['language'] as core.String
              : null,
          link: _json.containsKey('link') ? _json['link'] as core.String : null,
          mobileLink: _json.containsKey('mobileLink')
              ? _json['mobileLink'] as core.String
              : null,
          productCountry: _json.containsKey('productCountry')
              ? _json['productCountry'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customLabel0 != null) 'customLabel0': customLabel0!,
        if (customLabel1 != null) 'customLabel1': customLabel1!,
        if (customLabel2 != null) 'customLabel2': customLabel2!,
        if (customLabel3 != null) 'customLabel3': customLabel3!,
        if (customLabel4 != null) 'customLabel4': customLabel4!,
        if (featuredProduct != null) 'featuredProduct': featuredProduct!,
        if (headline != null) 'headline': headline!,
        if (id != null) 'id': id!,
        if (imageLink != null) 'imageLink': imageLink!,
        if (language != null) 'language': language!,
        if (link != null) 'link': link!,
        if (mobileLink != null) 'mobileLink': mobileLink!,
        if (productCountry != null) 'productCountry': productCountry!,
      };
}

/// The message for FeaturedProduct.
///
/// [FeaturedProduct](https://support.google.com/merchants/answer/9703736)
class CollectionFeaturedProduct {
  /// The unique identifier for the product item.
  core.String? offerId;

  /// X-coordinate of the product callout on the Shoppable Image.
  ///
  /// Required.
  core.double? x;

  /// Y-coordinate of the product callout on the Shoppable Image.
  ///
  /// Required.
  core.double? y;

  CollectionFeaturedProduct({
    this.offerId,
    this.x,
    this.y,
  });

  CollectionFeaturedProduct.fromJson(core.Map _json)
      : this(
          offerId: _json.containsKey('offerId')
              ? _json['offerId'] as core.String
              : null,
          x: _json.containsKey('x')
              ? (_json['x'] as core.num).toDouble()
              : null,
          y: _json.containsKey('y')
              ? (_json['y'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (offerId != null) 'offerId': offerId!,
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
      };
}

/// The collectionstatus message.
class CollectionStatus {
  /// A list of all issues associated with the collection.
  core.List<CollectionStatusItemLevelIssue>? collectionLevelIssuses;

  /// Date on which the collection has been created in
  /// [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format: Date, time, and
  /// offset, e.g. "2020-01-02T09:00:00+01:00" or "2020-01-02T09:00:00Z"
  core.String? creationDate;

  /// The intended destinations for the collection.
  core.List<CollectionStatusDestinationStatus>? destinationStatuses;

  /// The ID of the collection for which status is reported.
  ///
  /// Required.
  core.String? id;

  /// Date on which the collection has been last updated in
  /// [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format: Date, time, and
  /// offset, e.g. "2020-01-02T09:00:00+01:00" or "2020-01-02T09:00:00Z"
  core.String? lastUpdateDate;

  CollectionStatus({
    this.collectionLevelIssuses,
    this.creationDate,
    this.destinationStatuses,
    this.id,
    this.lastUpdateDate,
  });

  CollectionStatus.fromJson(core.Map _json)
      : this(
          collectionLevelIssuses: _json.containsKey('collectionLevelIssuses')
              ? (_json['collectionLevelIssuses'] as core.List)
                  .map((value) => CollectionStatusItemLevelIssue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          creationDate: _json.containsKey('creationDate')
              ? _json['creationDate'] as core.String
              : null,
          destinationStatuses: _json.containsKey('destinationStatuses')
              ? (_json['destinationStatuses'] as core.List)
                  .map((value) => CollectionStatusDestinationStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          lastUpdateDate: _json.containsKey('lastUpdateDate')
              ? _json['lastUpdateDate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (collectionLevelIssuses != null)
          'collectionLevelIssuses': collectionLevelIssuses!,
        if (creationDate != null) 'creationDate': creationDate!,
        if (destinationStatuses != null)
          'destinationStatuses': destinationStatuses!,
        if (id != null) 'id': id!,
        if (lastUpdateDate != null) 'lastUpdateDate': lastUpdateDate!,
      };
}

/// Destination status message.
class CollectionStatusDestinationStatus {
  /// The name of the destination
  core.String? destination;

  /// The status for the specified destination.
  core.String? status;

  CollectionStatusDestinationStatus({
    this.destination,
    this.status,
  });

  CollectionStatusDestinationStatus.fromJson(core.Map _json)
      : this(
          destination: _json.containsKey('destination')
              ? _json['destination'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destination != null) 'destination': destination!,
        if (status != null) 'status': status!,
      };
}

/// Issue associated with the collection.
class CollectionStatusItemLevelIssue {
  /// The attribute's name, if the issue is caused by a single attribute.
  core.String? attributeName;

  /// The error code of the issue.
  core.String? code;

  /// A short issue description in English.
  core.String? description;

  /// The destination the issue applies to.
  core.String? destination;

  /// A detailed issue description in English.
  core.String? detail;

  /// The URL of a web page to help with resolving this issue.
  core.String? documentation;

  /// Whether the issue can be resolved by the merchant.
  core.String? resolution;

  /// How this issue affects the serving of the collection.
  core.String? servability;

  CollectionStatusItemLevelIssue({
    this.attributeName,
    this.code,
    this.description,
    this.destination,
    this.detail,
    this.documentation,
    this.resolution,
    this.servability,
  });

  CollectionStatusItemLevelIssue.fromJson(core.Map _json)
      : this(
          attributeName: _json.containsKey('attributeName')
              ? _json['attributeName'] as core.String
              : null,
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          destination: _json.containsKey('destination')
              ? _json['destination'] as core.String
              : null,
          detail: _json.containsKey('detail')
              ? _json['detail'] as core.String
              : null,
          documentation: _json.containsKey('documentation')
              ? _json['documentation'] as core.String
              : null,
          resolution: _json.containsKey('resolution')
              ? _json['resolution'] as core.String
              : null,
          servability: _json.containsKey('servability')
              ? _json['servability'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributeName != null) 'attributeName': attributeName!,
        if (code != null) 'code': code!,
        if (description != null) 'description': description!,
        if (destination != null) 'destination': destination!,
        if (detail != null) 'detail': detail!,
        if (documentation != null) 'documentation': documentation!,
        if (resolution != null) 'resolution': resolution!,
        if (servability != null) 'servability': servability!,
      };
}

/// Information about CSS domain.
class Css {
  /// The CSS domain ID.
  ///
  /// Output only. Immutable.
  core.String? cssDomainId;

  /// The ID of the CSS group this CSS domain is affiliated with.
  ///
  /// Only populated for CSS group users.
  ///
  /// Output only. Immutable.
  core.String? cssGroupId;

  /// The CSS domain's display name, used when space is constrained.
  ///
  /// Output only. Immutable.
  core.String? displayName;

  /// The CSS domain's full name.
  ///
  /// Output only. Immutable.
  core.String? fullName;

  /// The CSS domain's homepage.
  ///
  /// Output only. Immutable.
  core.String? homepageUri;

  /// A list of label IDs that are assigned to this CSS domain by its CSS group.
  ///
  /// Only populated for CSS group users.
  core.List<core.String>? labelIds;

  Css({
    this.cssDomainId,
    this.cssGroupId,
    this.displayName,
    this.fullName,
    this.homepageUri,
    this.labelIds,
  });

  Css.fromJson(core.Map _json)
      : this(
          cssDomainId: _json.containsKey('cssDomainId')
              ? _json['cssDomainId'] as core.String
              : null,
          cssGroupId: _json.containsKey('cssGroupId')
              ? _json['cssGroupId'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          fullName: _json.containsKey('fullName')
              ? _json['fullName'] as core.String
              : null,
          homepageUri: _json.containsKey('homepageUri')
              ? _json['homepageUri'] as core.String
              : null,
          labelIds: _json.containsKey('labelIds')
              ? (_json['labelIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cssDomainId != null) 'cssDomainId': cssDomainId!,
        if (cssGroupId != null) 'cssGroupId': cssGroupId!,
        if (displayName != null) 'displayName': displayName!,
        if (fullName != null) 'fullName': fullName!,
        if (homepageUri != null) 'homepageUri': homepageUri!,
        if (labelIds != null) 'labelIds': labelIds!,
      };
}

class CustomAttribute {
  /// Subattributes within this attribute group.
  ///
  /// Exactly one of value or groupValues must be provided.
  core.List<CustomAttribute>? groupValues;

  /// The name of the attribute.
  ///
  /// Underscores will be replaced by spaces upon insertion.
  core.String? name;

  /// The value of the attribute.
  core.String? value;

  CustomAttribute({
    this.groupValues,
    this.name,
    this.value,
  });

  CustomAttribute.fromJson(core.Map _json)
      : this(
          groupValues: _json.containsKey('groupValues')
              ? (_json['groupValues'] as core.List)
                  .map((value) => CustomAttribute.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groupValues != null) 'groupValues': groupValues!,
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
      };
}

class CustomerReturnReason {
  /// Description of the reason.
  core.String? description;

  /// Code of the return reason.
  ///
  /// Acceptable values are: - "`betterPriceFound`" - "`changedMind`" -
  /// "`damagedOrDefectiveItem`" - "`didNotMatchDescription`" - "`doesNotFit`" -
  /// "`expiredItem`" - "`incorrectItemReceived`" - "`noLongerNeeded`" -
  /// "`notSpecified`" - "`orderedWrongItem`" - "`other`" -
  /// "`qualityNotExpected`" - "`receivedTooLate`" - "`undeliverable`"
  core.String? reasonCode;

  CustomerReturnReason({
    this.description,
    this.reasonCode,
  });

  CustomerReturnReason.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          reasonCode: _json.containsKey('reasonCode')
              ? _json['reasonCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (reasonCode != null) 'reasonCode': reasonCode!,
      };
}

class CutoffTime {
  /// Hour of the cutoff time until which an order has to be placed to be
  /// processed in the same day.
  ///
  /// Required.
  core.int? hour;

  /// Minute of the cutoff time until which an order has to be placed to be
  /// processed in the same day.
  ///
  /// Required.
  core.int? minute;

  /// Timezone identifier for the cutoff time.
  ///
  /// A list of identifiers can be found in the AdWords API documentation. E.g.
  /// "Europe/Zurich". Required.
  core.String? timezone;

  CutoffTime({
    this.hour,
    this.minute,
    this.timezone,
  });

  CutoffTime.fromJson(core.Map _json)
      : this(
          hour: _json.containsKey('hour') ? _json['hour'] as core.int : null,
          minute:
              _json.containsKey('minute') ? _json['minute'] as core.int : null,
          timezone: _json.containsKey('timezone')
              ? _json['timezone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hour != null) 'hour': hour!,
        if (minute != null) 'minute': minute!,
        if (timezone != null) 'timezone': timezone!,
      };
}

/// Datafeed configuration data.
class Datafeed {
  /// The two-letter ISO 639-1 language in which the attributes are defined in
  /// the data feed.
  core.String? attributeLanguage;

  /// The type of data feed.
  ///
  /// For product inventory feeds, only feeds for local stores, not online
  /// stores, are supported. Acceptable values are: - "`local products`" -
  /// "`product inventory`" - "`products`"
  ///
  /// Required.
  core.String? contentType;

  /// Fetch schedule for the feed file.
  DatafeedFetchSchedule? fetchSchedule;

  /// The filename of the feed.
  ///
  /// All feeds must have a unique file name.
  ///
  /// Required.
  core.String? fileName;

  /// Format of the feed file.
  DatafeedFormat? format;

  /// Required for update.
  ///
  /// The ID of the data feed.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#datafeed`"
  core.String? kind;

  /// Required for insert.
  ///
  /// A descriptive name of the data feed.
  core.String? name;

  /// The targets this feed should apply to (country, language, destinations).
  core.List<DatafeedTarget>? targets;

  Datafeed({
    this.attributeLanguage,
    this.contentType,
    this.fetchSchedule,
    this.fileName,
    this.format,
    this.id,
    this.kind,
    this.name,
    this.targets,
  });

  Datafeed.fromJson(core.Map _json)
      : this(
          attributeLanguage: _json.containsKey('attributeLanguage')
              ? _json['attributeLanguage'] as core.String
              : null,
          contentType: _json.containsKey('contentType')
              ? _json['contentType'] as core.String
              : null,
          fetchSchedule: _json.containsKey('fetchSchedule')
              ? DatafeedFetchSchedule.fromJson(
                  _json['fetchSchedule'] as core.Map<core.String, core.dynamic>)
              : null,
          fileName: _json.containsKey('fileName')
              ? _json['fileName'] as core.String
              : null,
          format: _json.containsKey('format')
              ? DatafeedFormat.fromJson(
                  _json['format'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          targets: _json.containsKey('targets')
              ? (_json['targets'] as core.List)
                  .map((value) => DatafeedTarget.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributeLanguage != null) 'attributeLanguage': attributeLanguage!,
        if (contentType != null) 'contentType': contentType!,
        if (fetchSchedule != null) 'fetchSchedule': fetchSchedule!,
        if (fileName != null) 'fileName': fileName!,
        if (format != null) 'format': format!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (targets != null) 'targets': targets!,
      };
}

/// The required fields vary based on the frequency of fetching.
///
/// For a monthly fetch schedule, day_of_month and hour are required. For a
/// weekly fetch schedule, weekday and hour are required. For a daily fetch
/// schedule, only hour is required.
class DatafeedFetchSchedule {
  /// The day of the month the feed file should be fetched (1-31).
  core.int? dayOfMonth;

  /// The URL where the feed file can be fetched.
  ///
  /// Google Merchant Center will support automatic scheduled uploads using the
  /// HTTP, HTTPS, FTP, or SFTP protocols, so the value will need to be a valid
  /// link using one of those four protocols.
  core.String? fetchUrl;

  /// The hour of the day the feed file should be fetched (0-23).
  core.int? hour;

  /// The minute of the hour the feed file should be fetched (0-59).
  ///
  /// Read-only.
  core.int? minuteOfHour;

  /// An optional password for fetch_url.
  core.String? password;

  /// Whether the scheduled fetch is paused or not.
  core.bool? paused;

  /// Time zone used for schedule.
  ///
  /// UTC by default. E.g., "America/Los_Angeles".
  core.String? timeZone;

  /// An optional user name for fetch_url.
  core.String? username;

  /// The day of the week the feed file should be fetched.
  ///
  /// Acceptable values are: - "`monday`" - "`tuesday`" - "`wednesday`" -
  /// "`thursday`" - "`friday`" - "`saturday`" - "`sunday`"
  core.String? weekday;

  DatafeedFetchSchedule({
    this.dayOfMonth,
    this.fetchUrl,
    this.hour,
    this.minuteOfHour,
    this.password,
    this.paused,
    this.timeZone,
    this.username,
    this.weekday,
  });

  DatafeedFetchSchedule.fromJson(core.Map _json)
      : this(
          dayOfMonth: _json.containsKey('dayOfMonth')
              ? _json['dayOfMonth'] as core.int
              : null,
          fetchUrl: _json.containsKey('fetchUrl')
              ? _json['fetchUrl'] as core.String
              : null,
          hour: _json.containsKey('hour') ? _json['hour'] as core.int : null,
          minuteOfHour: _json.containsKey('minuteOfHour')
              ? _json['minuteOfHour'] as core.int
              : null,
          password: _json.containsKey('password')
              ? _json['password'] as core.String
              : null,
          paused:
              _json.containsKey('paused') ? _json['paused'] as core.bool : null,
          timeZone: _json.containsKey('timeZone')
              ? _json['timeZone'] as core.String
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
          weekday: _json.containsKey('weekday')
              ? _json['weekday'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dayOfMonth != null) 'dayOfMonth': dayOfMonth!,
        if (fetchUrl != null) 'fetchUrl': fetchUrl!,
        if (hour != null) 'hour': hour!,
        if (minuteOfHour != null) 'minuteOfHour': minuteOfHour!,
        if (password != null) 'password': password!,
        if (paused != null) 'paused': paused!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (username != null) 'username': username!,
        if (weekday != null) 'weekday': weekday!,
      };
}

class DatafeedFormat {
  /// Delimiter for the separation of values in a delimiter-separated values
  /// feed.
  ///
  /// If not specified, the delimiter will be auto-detected. Ignored for non-DSV
  /// data feeds. Acceptable values are: - "`pipe`" - "`tab`" - "`tilde`"
  core.String? columnDelimiter;

  /// Character encoding scheme of the data feed.
  ///
  /// If not specified, the encoding will be auto-detected. Acceptable values
  /// are: - "`latin-1`" - "`utf-16be`" - "`utf-16le`" - "`utf-8`" -
  /// "`windows-1252`"
  core.String? fileEncoding;

  /// Specifies how double quotes are interpreted.
  ///
  /// If not specified, the mode will be auto-detected. Ignored for non-DSV data
  /// feeds. Acceptable values are: - "`normal character`" - "`value quoting`"
  core.String? quotingMode;

  DatafeedFormat({
    this.columnDelimiter,
    this.fileEncoding,
    this.quotingMode,
  });

  DatafeedFormat.fromJson(core.Map _json)
      : this(
          columnDelimiter: _json.containsKey('columnDelimiter')
              ? _json['columnDelimiter'] as core.String
              : null,
          fileEncoding: _json.containsKey('fileEncoding')
              ? _json['fileEncoding'] as core.String
              : null,
          quotingMode: _json.containsKey('quotingMode')
              ? _json['quotingMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnDelimiter != null) 'columnDelimiter': columnDelimiter!,
        if (fileEncoding != null) 'fileEncoding': fileEncoding!,
        if (quotingMode != null) 'quotingMode': quotingMode!,
      };
}

/// The status of a datafeed, i.e., the result of the last retrieval of the
/// datafeed computed asynchronously when the feed processing is finished.
class DatafeedStatus {
  /// The country for which the status is reported, represented as a CLDR
  /// territory code.
  core.String? country;

  /// The ID of the feed for which the status is reported.
  core.String? datafeedId;

  /// The list of errors occurring in the feed.
  core.List<DatafeedStatusError>? errors;

  /// The number of items in the feed that were processed.
  core.String? itemsTotal;

  /// The number of items in the feed that were valid.
  core.String? itemsValid;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#datafeedStatus`"
  core.String? kind;

  /// The two-letter ISO 639-1 language for which the status is reported.
  core.String? language;

  /// The last date at which the feed was uploaded.
  core.String? lastUploadDate;

  /// The processing status of the feed.
  ///
  /// Acceptable values are: - "`"`failure`": The feed could not be processed or
  /// all items had errors.`" - "`in progress`": The feed is being processed. -
  /// "`none`": The feed has not yet been processed. For example, a feed that
  /// has never been uploaded will have this processing status. - "`success`":
  /// The feed was processed successfully, though some items might have had
  /// errors.
  core.String? processingStatus;

  /// The list of errors occurring in the feed.
  core.List<DatafeedStatusError>? warnings;

  DatafeedStatus({
    this.country,
    this.datafeedId,
    this.errors,
    this.itemsTotal,
    this.itemsValid,
    this.kind,
    this.language,
    this.lastUploadDate,
    this.processingStatus,
    this.warnings,
  });

  DatafeedStatus.fromJson(core.Map _json)
      : this(
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          datafeedId: _json.containsKey('datafeedId')
              ? _json['datafeedId'] as core.String
              : null,
          errors: _json.containsKey('errors')
              ? (_json['errors'] as core.List)
                  .map((value) => DatafeedStatusError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          itemsTotal: _json.containsKey('itemsTotal')
              ? _json['itemsTotal'] as core.String
              : null,
          itemsValid: _json.containsKey('itemsValid')
              ? _json['itemsValid'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          language: _json.containsKey('language')
              ? _json['language'] as core.String
              : null,
          lastUploadDate: _json.containsKey('lastUploadDate')
              ? _json['lastUploadDate'] as core.String
              : null,
          processingStatus: _json.containsKey('processingStatus')
              ? _json['processingStatus'] as core.String
              : null,
          warnings: _json.containsKey('warnings')
              ? (_json['warnings'] as core.List)
                  .map((value) => DatafeedStatusError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (country != null) 'country': country!,
        if (datafeedId != null) 'datafeedId': datafeedId!,
        if (errors != null) 'errors': errors!,
        if (itemsTotal != null) 'itemsTotal': itemsTotal!,
        if (itemsValid != null) 'itemsValid': itemsValid!,
        if (kind != null) 'kind': kind!,
        if (language != null) 'language': language!,
        if (lastUploadDate != null) 'lastUploadDate': lastUploadDate!,
        if (processingStatus != null) 'processingStatus': processingStatus!,
        if (warnings != null) 'warnings': warnings!,
      };
}

/// An error occurring in the feed, like "invalid price".
class DatafeedStatusError {
  /// The code of the error, e.g., "validation/invalid_value".
  core.String? code;

  /// The number of occurrences of the error in the feed.
  core.String? count;

  /// A list of example occurrences of the error, grouped by product.
  core.List<DatafeedStatusExample>? examples;

  /// The error message, e.g., "Invalid price".
  core.String? message;

  DatafeedStatusError({
    this.code,
    this.count,
    this.examples,
    this.message,
  });

  DatafeedStatusError.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          count:
              _json.containsKey('count') ? _json['count'] as core.String : null,
          examples: _json.containsKey('examples')
              ? (_json['examples'] as core.List)
                  .map((value) => DatafeedStatusExample.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (count != null) 'count': count!,
        if (examples != null) 'examples': examples!,
        if (message != null) 'message': message!,
      };
}

/// An example occurrence for a particular error.
class DatafeedStatusExample {
  /// The ID of the example item.
  core.String? itemId;

  /// Line number in the data feed where the example is found.
  core.String? lineNumber;

  /// The problematic value.
  core.String? value;

  DatafeedStatusExample({
    this.itemId,
    this.lineNumber,
    this.value,
  });

  DatafeedStatusExample.fromJson(core.Map _json)
      : this(
          itemId: _json.containsKey('itemId')
              ? _json['itemId'] as core.String
              : null,
          lineNumber: _json.containsKey('lineNumber')
              ? _json['lineNumber'] as core.String
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (itemId != null) 'itemId': itemId!,
        if (lineNumber != null) 'lineNumber': lineNumber!,
        if (value != null) 'value': value!,
      };
}

class DatafeedTarget {
  /// The country where the items in the feed will be included in the search
  /// index, represented as a CLDR territory code.
  core.String? country;

  /// The list of destinations to exclude for this target (corresponds to
  /// unchecked check boxes in Merchant Center).
  core.List<core.String>? excludedDestinations;

  /// The list of destinations to include for this target (corresponds to
  /// checked check boxes in Merchant Center).
  ///
  /// Default destinations are always included unless provided in
  /// `excludedDestinations`. List of supported destinations (if available to
  /// the account): - DisplayAds - Shopping - ShoppingActions -
  /// SurfacesAcrossGoogle
  core.List<core.String>? includedDestinations;

  /// The two-letter ISO 639-1 language of the items in the feed.
  ///
  /// Must be a valid language for `targets[].country`.
  core.String? language;

  DatafeedTarget({
    this.country,
    this.excludedDestinations,
    this.includedDestinations,
    this.language,
  });

  DatafeedTarget.fromJson(core.Map _json)
      : this(
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          excludedDestinations: _json.containsKey('excludedDestinations')
              ? (_json['excludedDestinations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includedDestinations: _json.containsKey('includedDestinations')
              ? (_json['includedDestinations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          language: _json.containsKey('language')
              ? _json['language'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (country != null) 'country': country!,
        if (excludedDestinations != null)
          'excludedDestinations': excludedDestinations!,
        if (includedDestinations != null)
          'includedDestinations': includedDestinations!,
        if (language != null) 'language': language!,
      };
}

class DatafeedsCustomBatchRequest {
  /// The request entries to be processed in the batch.
  core.List<DatafeedsCustomBatchRequestEntry>? entries;

  DatafeedsCustomBatchRequest({
    this.entries,
  });

  DatafeedsCustomBatchRequest.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) => DatafeedsCustomBatchRequestEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

/// A batch entry encoding a single non-batch datafeeds request.
class DatafeedsCustomBatchRequestEntry {
  /// An entry ID, unique within the batch request.
  core.int? batchId;

  /// The data feed to insert.
  Datafeed? datafeed;

  /// The ID of the data feed to get, delete or fetch.
  core.String? datafeedId;

  /// The ID of the managing account.
  core.String? merchantId;

  /// The method of the batch entry.
  ///
  /// Acceptable values are: - "`delete`" - "`fetchNow`" - "`get`" - "`insert`"
  /// - "`update`"
  core.String? method;

  DatafeedsCustomBatchRequestEntry({
    this.batchId,
    this.datafeed,
    this.datafeedId,
    this.merchantId,
    this.method,
  });

  DatafeedsCustomBatchRequestEntry.fromJson(core.Map _json)
      : this(
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          datafeed: _json.containsKey('datafeed')
              ? Datafeed.fromJson(
                  _json['datafeed'] as core.Map<core.String, core.dynamic>)
              : null,
          datafeedId: _json.containsKey('datafeedId')
              ? _json['datafeedId'] as core.String
              : null,
          merchantId: _json.containsKey('merchantId')
              ? _json['merchantId'] as core.String
              : null,
          method: _json.containsKey('method')
              ? _json['method'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchId != null) 'batchId': batchId!,
        if (datafeed != null) 'datafeed': datafeed!,
        if (datafeedId != null) 'datafeedId': datafeedId!,
        if (merchantId != null) 'merchantId': merchantId!,
        if (method != null) 'method': method!,
      };
}

class DatafeedsCustomBatchResponse {
  /// The result of the execution of the batch requests.
  core.List<DatafeedsCustomBatchResponseEntry>? entries;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#datafeedsCustomBatchResponse`".
  core.String? kind;

  DatafeedsCustomBatchResponse({
    this.entries,
    this.kind,
  });

  DatafeedsCustomBatchResponse.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) => DatafeedsCustomBatchResponseEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
        if (kind != null) 'kind': kind!,
      };
}

/// A batch entry encoding a single non-batch datafeeds response.
class DatafeedsCustomBatchResponseEntry {
  /// The ID of the request entry this entry responds to.
  core.int? batchId;

  /// The requested data feed.
  ///
  /// Defined if and only if the request was successful.
  Datafeed? datafeed;

  /// A list of errors defined if and only if the request failed.
  Errors? errors;

  DatafeedsCustomBatchResponseEntry({
    this.batchId,
    this.datafeed,
    this.errors,
  });

  DatafeedsCustomBatchResponseEntry.fromJson(core.Map _json)
      : this(
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          datafeed: _json.containsKey('datafeed')
              ? Datafeed.fromJson(
                  _json['datafeed'] as core.Map<core.String, core.dynamic>)
              : null,
          errors: _json.containsKey('errors')
              ? Errors.fromJson(
                  _json['errors'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchId != null) 'batchId': batchId!,
        if (datafeed != null) 'datafeed': datafeed!,
        if (errors != null) 'errors': errors!,
      };
}

class DatafeedsFetchNowResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#datafeedsFetchNowResponse`".
  core.String? kind;

  DatafeedsFetchNowResponse({
    this.kind,
  });

  DatafeedsFetchNowResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
      };
}

class DatafeedsListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#datafeedsListResponse`".
  core.String? kind;

  /// The token for the retrieval of the next page of datafeeds.
  core.String? nextPageToken;
  core.List<Datafeed>? resources;

  DatafeedsListResponse({
    this.kind,
    this.nextPageToken,
    this.resources,
  });

  DatafeedsListResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => Datafeed.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resources != null) 'resources': resources!,
      };
}

class DatafeedstatusesCustomBatchRequest {
  /// The request entries to be processed in the batch.
  core.List<DatafeedstatusesCustomBatchRequestEntry>? entries;

  DatafeedstatusesCustomBatchRequest({
    this.entries,
  });

  DatafeedstatusesCustomBatchRequest.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) =>
                      DatafeedstatusesCustomBatchRequestEntry.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

/// A batch entry encoding a single non-batch datafeedstatuses request.
class DatafeedstatusesCustomBatchRequestEntry {
  /// An entry ID, unique within the batch request.
  core.int? batchId;

  /// The country for which to get the datafeed status.
  ///
  /// If this parameter is provided then language must also be provided. Note
  /// that for multi-target datafeeds this parameter is required.
  core.String? country;

  /// The ID of the data feed to get.
  core.String? datafeedId;

  /// The language for which to get the datafeed status.
  ///
  /// If this parameter is provided then country must also be provided. Note
  /// that for multi-target datafeeds this parameter is required.
  core.String? language;

  /// The ID of the managing account.
  core.String? merchantId;

  /// The method of the batch entry.
  ///
  /// Acceptable values are: - "`get`"
  core.String? method;

  DatafeedstatusesCustomBatchRequestEntry({
    this.batchId,
    this.country,
    this.datafeedId,
    this.language,
    this.merchantId,
    this.method,
  });

  DatafeedstatusesCustomBatchRequestEntry.fromJson(core.Map _json)
      : this(
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          datafeedId: _json.containsKey('datafeedId')
              ? _json['datafeedId'] as core.String
              : null,
          language: _json.containsKey('language')
              ? _json['language'] as core.String
              : null,
          merchantId: _json.containsKey('merchantId')
              ? _json['merchantId'] as core.String
              : null,
          method: _json.containsKey('method')
              ? _json['method'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchId != null) 'batchId': batchId!,
        if (country != null) 'country': country!,
        if (datafeedId != null) 'datafeedId': datafeedId!,
        if (language != null) 'language': language!,
        if (merchantId != null) 'merchantId': merchantId!,
        if (method != null) 'method': method!,
      };
}

class DatafeedstatusesCustomBatchResponse {
  /// The result of the execution of the batch requests.
  core.List<DatafeedstatusesCustomBatchResponseEntry>? entries;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#datafeedstatusesCustomBatchResponse`".
  core.String? kind;

  DatafeedstatusesCustomBatchResponse({
    this.entries,
    this.kind,
  });

  DatafeedstatusesCustomBatchResponse.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) =>
                      DatafeedstatusesCustomBatchResponseEntry.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
        if (kind != null) 'kind': kind!,
      };
}

/// A batch entry encoding a single non-batch datafeedstatuses response.
class DatafeedstatusesCustomBatchResponseEntry {
  /// The ID of the request entry this entry responds to.
  core.int? batchId;

  /// The requested data feed status.
  ///
  /// Defined if and only if the request was successful.
  DatafeedStatus? datafeedStatus;

  /// A list of errors defined if and only if the request failed.
  Errors? errors;

  DatafeedstatusesCustomBatchResponseEntry({
    this.batchId,
    this.datafeedStatus,
    this.errors,
  });

  DatafeedstatusesCustomBatchResponseEntry.fromJson(core.Map _json)
      : this(
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          datafeedStatus: _json.containsKey('datafeedStatus')
              ? DatafeedStatus.fromJson(_json['datafeedStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          errors: _json.containsKey('errors')
              ? Errors.fromJson(
                  _json['errors'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchId != null) 'batchId': batchId!,
        if (datafeedStatus != null) 'datafeedStatus': datafeedStatus!,
        if (errors != null) 'errors': errors!,
      };
}

class DatafeedstatusesListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#datafeedstatusesListResponse`".
  core.String? kind;

  /// The token for the retrieval of the next page of datafeed statuses.
  core.String? nextPageToken;
  core.List<DatafeedStatus>? resources;

  DatafeedstatusesListResponse({
    this.kind,
    this.nextPageToken,
    this.resources,
  });

  DatafeedstatusesListResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => DatafeedStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resources != null) 'resources': resources!,
      };
}

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values * A month and day value, with a zero year, such as an
/// anniversary * A year on its own, with zero month and day values * A year and
/// month value, with a zero day, such as a credit card expiration date Related
/// types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
typedef Date = $Date;

/// Represents civil time (or occasionally physical time).
///
/// This type can represent a civil time in one of a few possible ways: * When
/// utc_offset is set and time_zone is unset: a civil time on a calendar day
/// with a particular offset from UTC. * When time_zone is set and utc_offset is
/// unset: a civil time on a calendar day in a particular time zone. * When
/// neither time_zone nor utc_offset is set: a civil time on a calendar day in
/// local time. The date is relative to the Proleptic Gregorian Calendar. If
/// year is 0, the DateTime is considered not to have a specific year. month and
/// day must have valid, non-zero values. This type may also be used to
/// represent a physical time if all the date and time fields are set and either
/// case of the `time_offset` oneof is set. Consider using `Timestamp` message
/// for physical time instead. If your use case also would like to store the
/// user's timezone, that can be done in another field. This type is more
/// flexible than some applications may want. Make sure to document and validate
/// your application's limitations.
class DateTime {
  /// Day of month.
  ///
  /// Must be from 1 to 31 and valid for the year and month.
  ///
  /// Required.
  core.int? day;

  /// Hours of day in 24 hour format.
  ///
  /// Should be from 0 to 23. An API may choose to allow the value "24:00:00"
  /// for scenarios like business closing time.
  ///
  /// Required.
  core.int? hours;

  /// Minutes of hour of day.
  ///
  /// Must be from 0 to 59.
  ///
  /// Required.
  core.int? minutes;

  /// Month of year.
  ///
  /// Must be from 1 to 12.
  ///
  /// Required.
  core.int? month;

  /// Fractions of seconds in nanoseconds.
  ///
  /// Must be from 0 to 999,999,999.
  ///
  /// Required.
  core.int? nanos;

  /// Seconds of minutes of the time.
  ///
  /// Must normally be from 0 to 59. An API may allow the value 60 if it allows
  /// leap-seconds.
  ///
  /// Required.
  core.int? seconds;

  /// Time zone.
  TimeZone? timeZone;

  /// UTC offset.
  ///
  /// Must be whole seconds, between -18 hours and +18 hours. For example, a UTC
  /// offset of -4:00 would be represented as { seconds: -14400 }.
  core.String? utcOffset;

  /// Year of date.
  ///
  /// Must be from 1 to 9999, or 0 if specifying a datetime without a year.
  ///
  /// Optional.
  core.int? year;

  DateTime({
    this.day,
    this.hours,
    this.minutes,
    this.month,
    this.nanos,
    this.seconds,
    this.timeZone,
    this.utcOffset,
    this.year,
  });

  DateTime.fromJson(core.Map _json)
      : this(
          day: _json.containsKey('day') ? _json['day'] as core.int : null,
          hours: _json.containsKey('hours') ? _json['hours'] as core.int : null,
          minutes: _json.containsKey('minutes')
              ? _json['minutes'] as core.int
              : null,
          month: _json.containsKey('month') ? _json['month'] as core.int : null,
          nanos: _json.containsKey('nanos') ? _json['nanos'] as core.int : null,
          seconds: _json.containsKey('seconds')
              ? _json['seconds'] as core.int
              : null,
          timeZone: _json.containsKey('timeZone')
              ? TimeZone.fromJson(
                  _json['timeZone'] as core.Map<core.String, core.dynamic>)
              : null,
          utcOffset: _json.containsKey('utcOffset')
              ? _json['utcOffset'] as core.String
              : null,
          year: _json.containsKey('year') ? _json['year'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (hours != null) 'hours': hours!,
        if (minutes != null) 'minutes': minutes!,
        if (month != null) 'month': month!,
        if (nanos != null) 'nanos': nanos!,
        if (seconds != null) 'seconds': seconds!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (utcOffset != null) 'utcOffset': utcOffset!,
        if (year != null) 'year': year!,
      };
}

class DeliveryTime {
  /// Business days cutoff time definition.
  ///
  /// If not configured the cutoff time will be defaulted to 8AM PST.
  CutoffTime? cutoffTime;

  /// The business days during which orders can be handled.
  ///
  /// If not provided, Monday to Friday business days will be assumed.
  BusinessDayConfig? handlingBusinessDayConfig;

  /// Holiday cutoff definitions.
  ///
  /// If configured, they specify order cutoff times for holiday-specific
  /// shipping.
  core.List<HolidayCutoff>? holidayCutoffs;

  /// Maximum number of business days spent before an order is shipped.
  ///
  /// 0 means same day shipped, 1 means next day shipped. Must be greater than
  /// or equal to `minHandlingTimeInDays`.
  core.int? maxHandlingTimeInDays;

  /// Maximum number of business days that is spent in transit.
  ///
  /// 0 means same day delivery, 1 means next day delivery. Must be greater than
  /// or equal to `minTransitTimeInDays`.
  core.int? maxTransitTimeInDays;

  /// Minimum number of business days spent before an order is shipped.
  ///
  /// 0 means same day shipped, 1 means next day shipped.
  core.int? minHandlingTimeInDays;

  /// Minimum number of business days that is spent in transit.
  ///
  /// 0 means same day delivery, 1 means next day delivery. Either
  /// `{min,max}TransitTimeInDays` or `transitTimeTable` must be set, but not
  /// both.
  core.int? minTransitTimeInDays;

  /// The business days during which orders can be in-transit.
  ///
  /// If not provided, Monday to Friday business days will be assumed.
  BusinessDayConfig? transitBusinessDayConfig;

  /// Transit time table, number of business days spent in transit based on row
  /// and column dimensions.
  ///
  /// Either `{min,max}TransitTimeInDays` or `transitTimeTable` can be set, but
  /// not both.
  TransitTable? transitTimeTable;

  /// Indicates that the delivery time should be calculated per warehouse
  /// (shipping origin location) based on the settings of the selected carrier.
  ///
  /// When set, no other transit time related field in DeliveryTime should be
  /// set.
  core.List<WarehouseBasedDeliveryTime>? warehouseBasedDeliveryTimes;

  DeliveryTime({
    this.cutoffTime,
    this.handlingBusinessDayConfig,
    this.holidayCutoffs,
    this.maxHandlingTimeInDays,
    this.maxTransitTimeInDays,
    this.minHandlingTimeInDays,
    this.minTransitTimeInDays,
    this.transitBusinessDayConfig,
    this.transitTimeTable,
    this.warehouseBasedDeliveryTimes,
  });

  DeliveryTime.fromJson(core.Map _json)
      : this(
          cutoffTime: _json.containsKey('cutoffTime')
              ? CutoffTime.fromJson(
                  _json['cutoffTime'] as core.Map<core.String, core.dynamic>)
              : null,
          handlingBusinessDayConfig: _json
                  .containsKey('handlingBusinessDayConfig')
              ? BusinessDayConfig.fromJson(_json['handlingBusinessDayConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          holidayCutoffs: _json.containsKey('holidayCutoffs')
              ? (_json['holidayCutoffs'] as core.List)
                  .map((value) => HolidayCutoff.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          maxHandlingTimeInDays: _json.containsKey('maxHandlingTimeInDays')
              ? _json['maxHandlingTimeInDays'] as core.int
              : null,
          maxTransitTimeInDays: _json.containsKey('maxTransitTimeInDays')
              ? _json['maxTransitTimeInDays'] as core.int
              : null,
          minHandlingTimeInDays: _json.containsKey('minHandlingTimeInDays')
              ? _json['minHandlingTimeInDays'] as core.int
              : null,
          minTransitTimeInDays: _json.containsKey('minTransitTimeInDays')
              ? _json['minTransitTimeInDays'] as core.int
              : null,
          transitBusinessDayConfig:
              _json.containsKey('transitBusinessDayConfig')
                  ? BusinessDayConfig.fromJson(_json['transitBusinessDayConfig']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          transitTimeTable: _json.containsKey('transitTimeTable')
              ? TransitTable.fromJson(_json['transitTimeTable']
                  as core.Map<core.String, core.dynamic>)
              : null,
          warehouseBasedDeliveryTimes:
              _json.containsKey('warehouseBasedDeliveryTimes')
                  ? (_json['warehouseBasedDeliveryTimes'] as core.List)
                      .map((value) => WarehouseBasedDeliveryTime.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cutoffTime != null) 'cutoffTime': cutoffTime!,
        if (handlingBusinessDayConfig != null)
          'handlingBusinessDayConfig': handlingBusinessDayConfig!,
        if (holidayCutoffs != null) 'holidayCutoffs': holidayCutoffs!,
        if (maxHandlingTimeInDays != null)
          'maxHandlingTimeInDays': maxHandlingTimeInDays!,
        if (maxTransitTimeInDays != null)
          'maxTransitTimeInDays': maxTransitTimeInDays!,
        if (minHandlingTimeInDays != null)
          'minHandlingTimeInDays': minHandlingTimeInDays!,
        if (minTransitTimeInDays != null)
          'minTransitTimeInDays': minTransitTimeInDays!,
        if (transitBusinessDayConfig != null)
          'transitBusinessDayConfig': transitBusinessDayConfig!,
        if (transitTimeTable != null) 'transitTimeTable': transitTimeTable!,
        if (warehouseBasedDeliveryTimes != null)
          'warehouseBasedDeliveryTimes': warehouseBasedDeliveryTimes!,
      };
}

/// Additional information required for E_COMMERCE_PLATFORM link type.
class ECommercePlatformLinkInfo {
  /// The id used by the third party service provider to identify the merchant.
  core.String? externalAccountId;

  ECommercePlatformLinkInfo({
    this.externalAccountId,
  });

  ECommercePlatformLinkInfo.fromJson(core.Map _json)
      : this(
          externalAccountId: _json.containsKey('externalAccountId')
              ? _json['externalAccountId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (externalAccountId != null) 'externalAccountId': externalAccountId!,
      };
}

/// An error returned by the API.
class Error {
  /// The domain of the error.
  core.String? domain;

  /// A description of the error.
  core.String? message;

  /// The error code.
  core.String? reason;

  Error({
    this.domain,
    this.message,
    this.reason,
  });

  Error.fromJson(core.Map _json)
      : this(
          domain: _json.containsKey('domain')
              ? _json['domain'] as core.String
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domain != null) 'domain': domain!,
        if (message != null) 'message': message!,
        if (reason != null) 'reason': reason!,
      };
}

/// A list of errors returned by a failed batch entry.
class Errors {
  /// The HTTP status of the first error in `errors`.
  core.int? code;

  /// A list of errors.
  core.List<Error>? errors;

  /// The message of the first error in `errors`.
  core.String? message;

  Errors({
    this.code,
    this.errors,
    this.message,
  });

  Errors.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.int : null,
          errors: _json.containsKey('errors')
              ? (_json['errors'] as core.List)
                  .map((value) => Error.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (errors != null) 'errors': errors!,
        if (message != null) 'message': message!,
      };
}

/// Response message for GetFreeListingsProgramStatus.
class FreeListingsProgramStatus {
  /// Status of the program in each region.
  ///
  /// Regions with the same status and review eligibility are grouped together
  /// in `regionCodes`.
  core.List<FreeListingsProgramStatusRegionStatus>? regionStatuses;

  /// If program is successfully onboarded for at least one region.
  /// Possible string values are:
  /// - "PROGRAM_STATE_UNSPECIFIED" : State is not known.
  /// - "ONBOARDED" : Program is onboarded for at least one country.
  /// - "NOT_ONBOARDED" : Program is not onboarded for any country.
  core.String? state;

  FreeListingsProgramStatus({
    this.regionStatuses,
    this.state,
  });

  FreeListingsProgramStatus.fromJson(core.Map _json)
      : this(
          regionStatuses: _json.containsKey('regionStatuses')
              ? (_json['regionStatuses'] as core.List)
                  .map((value) =>
                      FreeListingsProgramStatusRegionStatus.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (regionStatuses != null) 'regionStatuses': regionStatuses!,
        if (state != null) 'state': state!,
      };
}

/// Status of program and region.
class FreeListingsProgramStatusRegionStatus {
  /// Date by which `eligibility_status` will go from `WARNING` to
  /// `DISAPPROVED`.
  ///
  /// It will be present when `eligibility_status` is `WARNING`. Date will be
  /// provided in ISO 8601 format i.e. YYYY-MM-DD
  core.String? disapprovalDate;

  /// Eligibility status of the standard free listing program.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is not known.
  /// - "APPROVED" : If the account has no issues and review is completed
  /// successfully.
  /// - "DISAPPROVED" : There are one or more issues that needs to be resolved
  /// for account to be active for the program. Detailed list of account issues
  /// are available in
  /// [accountstatuses](https://developers.google.com/shopping-content/reference/rest/v2.1/accountstatuses)
  /// API.
  /// - "WARNING" : If account has issues but offers are servable. Some of the
  /// issue can make account DISAPPROVED after a certain deadline.
  /// - "UNDER_REVIEW" : Account is under review.
  /// - "PENDING_REVIEW" : Account is waiting for review to start.
  /// - "ONBOARDING" : Program is currently onboarding.
  core.String? eligibilityStatus;

  /// Eligibility status of the enhanced free listing program.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is not known.
  /// - "APPROVED" : If the account has no issues and review is completed
  /// successfully.
  /// - "DISAPPROVED" : There are one or more issues that needs to be resolved
  /// for account to be active for the program. Detailed list of account issues
  /// are available in
  /// [accountstatuses](https://developers.google.com/shopping-content/reference/rest/v2.1/accountstatuses)
  /// API.
  /// - "WARNING" : If account has issues but offers are servable. Some of the
  /// issue can make account DISAPPROVED after a certain deadline.
  /// - "UNDER_REVIEW" : Account is under review.
  /// - "PENDING_REVIEW" : Account is waiting for review to start.
  /// - "ONBOARDING" : Program is currently onboarding.
  core.String? enhancedEligibilityStatus;

  /// Reason if a program in a given country is not eligible for review.
  ///
  /// Populated only if `review_eligibility_status` is `INELIGIBLE`.
  core.String? ineligibilityReason;

  /// The two-letter \[ISO 3166-1
  /// alpha-2\](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) codes for all
  /// the regions with the same `eligibilityStatus` and `reviewEligibility`.
  core.List<core.String>? regionCodes;

  /// If a program in a given country is eligible for review.
  ///
  /// It will be present only if eligibility status is `DISAPPROVED`.
  /// Possible string values are:
  /// - "REVIEW_ELIGIBILITY_UNSPECIFIED" : Review eligibility state is unknown.
  /// - "ELIGIBLE" : Account for a region code is eligible for review.
  /// - "INELIGIBLE" : Account for a region code is not eligible for review.
  core.String? reviewEligibilityStatus;

  /// These issues will be evaluated in review process.
  ///
  /// Fix all the issues before requesting the review.
  core.List<core.String>? reviewIssues;

  FreeListingsProgramStatusRegionStatus({
    this.disapprovalDate,
    this.eligibilityStatus,
    this.enhancedEligibilityStatus,
    this.ineligibilityReason,
    this.regionCodes,
    this.reviewEligibilityStatus,
    this.reviewIssues,
  });

  FreeListingsProgramStatusRegionStatus.fromJson(core.Map _json)
      : this(
          disapprovalDate: _json.containsKey('disapprovalDate')
              ? _json['disapprovalDate'] as core.String
              : null,
          eligibilityStatus: _json.containsKey('eligibilityStatus')
              ? _json['eligibilityStatus'] as core.String
              : null,
          enhancedEligibilityStatus:
              _json.containsKey('enhancedEligibilityStatus')
                  ? _json['enhancedEligibilityStatus'] as core.String
                  : null,
          ineligibilityReason: _json.containsKey('ineligibilityReason')
              ? _json['ineligibilityReason'] as core.String
              : null,
          regionCodes: _json.containsKey('regionCodes')
              ? (_json['regionCodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          reviewEligibilityStatus: _json.containsKey('reviewEligibilityStatus')
              ? _json['reviewEligibilityStatus'] as core.String
              : null,
          reviewIssues: _json.containsKey('reviewIssues')
              ? (_json['reviewIssues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disapprovalDate != null) 'disapprovalDate': disapprovalDate!,
        if (eligibilityStatus != null) 'eligibilityStatus': eligibilityStatus!,
        if (enhancedEligibilityStatus != null)
          'enhancedEligibilityStatus': enhancedEligibilityStatus!,
        if (ineligibilityReason != null)
          'ineligibilityReason': ineligibilityReason!,
        if (regionCodes != null) 'regionCodes': regionCodes!,
        if (reviewEligibilityStatus != null)
          'reviewEligibilityStatus': reviewEligibilityStatus!,
        if (reviewIssues != null) 'reviewIssues': reviewIssues!,
      };
}

class GmbAccounts {
  /// The ID of the Merchant Center account.
  core.String? accountId;

  /// A list of GMB accounts which are available to the merchant.
  core.List<GmbAccountsGmbAccount>? gmbAccounts;

  GmbAccounts({
    this.accountId,
    this.gmbAccounts,
  });

  GmbAccounts.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          gmbAccounts: _json.containsKey('gmbAccounts')
              ? (_json['gmbAccounts'] as core.List)
                  .map((value) => GmbAccountsGmbAccount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (gmbAccounts != null) 'gmbAccounts': gmbAccounts!,
      };
}

class GmbAccountsGmbAccount {
  /// The email which identifies the GMB account.
  core.String? email;

  /// Number of listings under this account.
  core.String? listingCount;

  /// The name of the GMB account.
  core.String? name;

  /// The type of the GMB account (User or Business).
  core.String? type;

  GmbAccountsGmbAccount({
    this.email,
    this.listingCount,
    this.name,
    this.type,
  });

  GmbAccountsGmbAccount.fromJson(core.Map _json)
      : this(
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          listingCount: _json.containsKey('listingCount')
              ? _json['listingCount'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (listingCount != null) 'listingCount': listingCount!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

/// A non-empty list of row or column headers for a table.
///
/// Exactly one of `prices`, `weights`, `numItems`, `postalCodeGroupNames`, or
/// `location` must be set.
class Headers {
  /// A list of location ID sets.
  ///
  /// Must be non-empty. Can only be set if all other fields are not set.
  core.List<LocationIdSet>? locations;

  /// A list of inclusive number of items upper bounds.
  ///
  /// The last value can be `"infinity"`. For example `["10", "50", "infinity"]`
  /// represents the headers "<= 10 items", "<= 50 items", and "> 50 items".
  /// Must be non-empty. Can only be set if all other fields are not set.
  core.List<core.String>? numberOfItems;

  /// A list of postal group names.
  ///
  /// The last value can be `"all other locations"`. Example: `["zone 1", "zone
  /// 2", "all other locations"]`. The referred postal code groups must match
  /// the delivery country of the service. Must be non-empty. Can only be set if
  /// all other fields are not set.
  core.List<core.String>? postalCodeGroupNames;

  /// A list of inclusive order price upper bounds.
  ///
  /// The last price's value can be `"infinity"`. For example `[{"value": "10",
  /// "currency": "USD"}, {"value": "500", "currency": "USD"}, {"value":
  /// "infinity", "currency": "USD"}]` represents the headers "<= $10", "<=
  /// $500", and "> $500". All prices within a service must have the same
  /// currency. Must be non-empty. Can only be set if all other fields are not
  /// set.
  core.List<Price>? prices;

  /// A list of inclusive order weight upper bounds.
  ///
  /// The last weight's value can be `"infinity"`. For example `[{"value": "10",
  /// "unit": "kg"}, {"value": "50", "unit": "kg"}, {"value": "infinity",
  /// "unit": "kg"}]` represents the headers "<= 10kg", "<= 50kg", and "> 50kg".
  /// All weights within a service must have the same unit. Must be non-empty.
  /// Can only be set if all other fields are not set.
  core.List<Weight>? weights;

  Headers({
    this.locations,
    this.numberOfItems,
    this.postalCodeGroupNames,
    this.prices,
    this.weights,
  });

  Headers.fromJson(core.Map _json)
      : this(
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map((value) => LocationIdSet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          numberOfItems: _json.containsKey('numberOfItems')
              ? (_json['numberOfItems'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          postalCodeGroupNames: _json.containsKey('postalCodeGroupNames')
              ? (_json['postalCodeGroupNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          prices: _json.containsKey('prices')
              ? (_json['prices'] as core.List)
                  .map((value) => Price.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          weights: _json.containsKey('weights')
              ? (_json['weights'] as core.List)
                  .map((value) => Weight.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (numberOfItems != null) 'numberOfItems': numberOfItems!,
        if (postalCodeGroupNames != null)
          'postalCodeGroupNames': postalCodeGroupNames!,
        if (prices != null) 'prices': prices!,
        if (weights != null) 'weights': weights!,
      };
}

class HolidayCutoff {
  /// Date of the order deadline, in ISO 8601 format.
  ///
  /// E.g. "2016-11-29" for 29th November 2016. Required.
  core.String? deadlineDate;

  /// Hour of the day on the deadline date until which the order has to be
  /// placed to qualify for the delivery guarantee.
  ///
  /// Possible values are: 0 (midnight), 1, ..., 12 (noon), 13, ..., 23.
  /// Required.
  core.int? deadlineHour;

  /// Timezone identifier for the deadline hour.
  ///
  /// A list of identifiers can be found in the AdWords API documentation. E.g.
  /// "Europe/Zurich". Required.
  core.String? deadlineTimezone;

  /// Unique identifier for the holiday.
  ///
  /// Required.
  core.String? holidayId;

  /// Date on which the deadline will become visible to consumers in ISO 8601
  /// format.
  ///
  /// E.g. "2016-10-31" for 31st October 2016. Required.
  core.String? visibleFromDate;

  HolidayCutoff({
    this.deadlineDate,
    this.deadlineHour,
    this.deadlineTimezone,
    this.holidayId,
    this.visibleFromDate,
  });

  HolidayCutoff.fromJson(core.Map _json)
      : this(
          deadlineDate: _json.containsKey('deadlineDate')
              ? _json['deadlineDate'] as core.String
              : null,
          deadlineHour: _json.containsKey('deadlineHour')
              ? _json['deadlineHour'] as core.int
              : null,
          deadlineTimezone: _json.containsKey('deadlineTimezone')
              ? _json['deadlineTimezone'] as core.String
              : null,
          holidayId: _json.containsKey('holidayId')
              ? _json['holidayId'] as core.String
              : null,
          visibleFromDate: _json.containsKey('visibleFromDate')
              ? _json['visibleFromDate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deadlineDate != null) 'deadlineDate': deadlineDate!,
        if (deadlineHour != null) 'deadlineHour': deadlineHour!,
        if (deadlineTimezone != null) 'deadlineTimezone': deadlineTimezone!,
        if (holidayId != null) 'holidayId': holidayId!,
        if (visibleFromDate != null) 'visibleFromDate': visibleFromDate!,
      };
}

class HolidaysHoliday {
  /// The CLDR territory code of the country in which the holiday is available.
  ///
  /// E.g. "US", "DE", "GB". A holiday cutoff can only be configured in a
  /// shipping settings service with matching delivery country. Always present.
  core.String? countryCode;

  /// Date of the holiday, in ISO 8601 format.
  ///
  /// E.g. "2016-12-25" for Christmas 2016. Always present.
  core.String? date;

  /// Date on which the order has to arrive at the customer's, in ISO 8601
  /// format.
  ///
  /// E.g. "2016-12-24" for 24th December 2016. Always present.
  core.String? deliveryGuaranteeDate;

  /// Hour of the day in the delivery location's timezone on the guaranteed
  /// delivery date by which the order has to arrive at the customer's.
  ///
  /// Possible values are: 0 (midnight), 1, ..., 12 (noon), 13, ..., 23. Always
  /// present.
  core.String? deliveryGuaranteeHour;

  /// Unique identifier for the holiday to be used when configuring holiday
  /// cutoffs.
  ///
  /// Always present.
  core.String? id;

  /// The holiday type.
  ///
  /// Always present. Acceptable values are: - "`Christmas`" - "`Easter`" -
  /// "`Father's Day`" - "`Halloween`" - "`Independence Day (USA)`" - "`Mother's
  /// Day`" - "`Thanksgiving`" - "`Valentine's Day`"
  core.String? type;

  HolidaysHoliday({
    this.countryCode,
    this.date,
    this.deliveryGuaranteeDate,
    this.deliveryGuaranteeHour,
    this.id,
    this.type,
  });

  HolidaysHoliday.fromJson(core.Map _json)
      : this(
          countryCode: _json.containsKey('countryCode')
              ? _json['countryCode'] as core.String
              : null,
          date: _json.containsKey('date') ? _json['date'] as core.String : null,
          deliveryGuaranteeDate: _json.containsKey('deliveryGuaranteeDate')
              ? _json['deliveryGuaranteeDate'] as core.String
              : null,
          deliveryGuaranteeHour: _json.containsKey('deliveryGuaranteeHour')
              ? _json['deliveryGuaranteeHour'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (countryCode != null) 'countryCode': countryCode!,
        if (date != null) 'date': date!,
        if (deliveryGuaranteeDate != null)
          'deliveryGuaranteeDate': deliveryGuaranteeDate!,
        if (deliveryGuaranteeHour != null)
          'deliveryGuaranteeHour': deliveryGuaranteeHour!,
        if (id != null) 'id': id!,
        if (type != null) 'type': type!,
      };
}

/// Map of inapplicability details.
class InapplicabilityDetails {
  /// Count of this inapplicable reason code.
  core.String? inapplicableCount;

  /// Reason code this rule was not applicable.
  /// Possible string values are:
  /// - "INAPPLICABLE_REASON_UNSPECIFIED" : Default value. Should not be used.
  /// - "CANNOT_BEAT_BUYBOX_WINNER" : The rule set for this product cannot beat
  /// the buybox winner.
  /// - "ALREADY_WINNING_BUYBOX" : This product can already win the buybox
  /// without rule.
  /// - "TRIUMPHED_OVER_BY_SAME_TYPE_RULE" : Another rule of the same type takes
  /// precedence over this one.
  /// - "TRIUMPHED_OVER_BY_OTHER_RULE_ON_OFFER" : Another rule of a different
  /// type takes precedence over this one.
  /// - "RESTRICTIONS_NOT_MET" : The rule restrictions are not met. For example,
  /// this may be the case if the calculated rule price is lower than floor
  /// price in the restriction.
  /// - "UNCATEGORIZED" : The reason is not categorized to any known reason.
  /// - "INVALID_AUTO_PRICE_MIN" : The auto_pricing_min_price is invalid. For
  /// example, it is missing or < 0.
  /// - "INVALID_FLOOR_CONFIG" : The floor defined in the rule is invalid. For
  /// example, it has the wrong sign which results in a floor < 0.
  core.String? inapplicableReason;

  InapplicabilityDetails({
    this.inapplicableCount,
    this.inapplicableReason,
  });

  InapplicabilityDetails.fromJson(core.Map _json)
      : this(
          inapplicableCount: _json.containsKey('inapplicableCount')
              ? _json['inapplicableCount'] as core.String
              : null,
          inapplicableReason: _json.containsKey('inapplicableReason')
              ? _json['inapplicableReason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inapplicableCount != null) 'inapplicableCount': inapplicableCount!,
        if (inapplicableReason != null)
          'inapplicableReason': inapplicableReason!,
      };
}

class Installment {
  /// The amount the buyer has to pay per month.
  Price? amount;

  /// The number of installments the buyer has to pay.
  core.String? months;

  Installment({
    this.amount,
    this.months,
  });

  Installment.fromJson(core.Map _json)
      : this(
          amount: _json.containsKey('amount')
              ? Price.fromJson(
                  _json['amount'] as core.Map<core.String, core.dynamic>)
              : null,
          months: _json.containsKey('months')
              ? _json['months'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (amount != null) 'amount': amount!,
        if (months != null) 'months': months!,
      };
}

class InvoiceSummary {
  /// Summary of the total amounts of the additional charges.
  core.List<InvoiceSummaryAdditionalChargeSummary>? additionalChargeSummaries;

  /// Total price for the product.
  ///
  /// Required.
  Amount? productTotal;

  InvoiceSummary({
    this.additionalChargeSummaries,
    this.productTotal,
  });

  InvoiceSummary.fromJson(core.Map _json)
      : this(
          additionalChargeSummaries:
              _json.containsKey('additionalChargeSummaries')
                  ? (_json['additionalChargeSummaries'] as core.List)
                      .map((value) =>
                          InvoiceSummaryAdditionalChargeSummary.fromJson(
                              value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          productTotal: _json.containsKey('productTotal')
              ? Amount.fromJson(
                  _json['productTotal'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalChargeSummaries != null)
          'additionalChargeSummaries': additionalChargeSummaries!,
        if (productTotal != null) 'productTotal': productTotal!,
      };
}

class InvoiceSummaryAdditionalChargeSummary {
  /// Total additional charge for this type.
  ///
  /// Required.
  Amount? totalAmount;

  /// Type of the additional charge.
  ///
  /// Acceptable values are: - "`shipping`"
  ///
  /// Required.
  core.String? type;

  InvoiceSummaryAdditionalChargeSummary({
    this.totalAmount,
    this.type,
  });

  InvoiceSummaryAdditionalChargeSummary.fromJson(core.Map _json)
      : this(
          totalAmount: _json.containsKey('totalAmount')
              ? Amount.fromJson(
                  _json['totalAmount'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (totalAmount != null) 'totalAmount': totalAmount!,
        if (type != null) 'type': type!,
      };
}

/// The IDs of labels that should be assigned to the CSS domain.
class LabelIds {
  /// The list of label IDs.
  core.List<core.String>? labelIds;

  LabelIds({
    this.labelIds,
  });

  LabelIds.fromJson(core.Map _json)
      : this(
          labelIds: _json.containsKey('labelIds')
              ? (_json['labelIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labelIds != null) 'labelIds': labelIds!,
      };
}

class LiaAboutPageSettings {
  /// The status of the verification process for the About page.
  ///
  /// Acceptable values are: - "`active`" - "`inactive`" - "`pending`"
  core.String? status;

  /// The URL for the About page.
  core.String? url;

  LiaAboutPageSettings({
    this.status,
    this.url,
  });

  LiaAboutPageSettings.fromJson(core.Map _json)
      : this(
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (status != null) 'status': status!,
        if (url != null) 'url': url!,
      };
}

class LiaCountrySettings {
  /// The settings for the About page.
  LiaAboutPageSettings? about;

  /// CLDR country code (e.g. "US").
  ///
  /// Required.
  core.String? country;

  /// The status of the "Merchant hosted local storefront" feature.
  core.bool? hostedLocalStorefrontActive;

  /// LIA inventory verification settings.
  LiaInventorySettings? inventory;

  /// LIA "On Display To Order" settings.
  LiaOnDisplayToOrderSettings? onDisplayToOrder;

  /// The POS data provider linked with this country.
  LiaPosDataProvider? posDataProvider;

  /// The status of the "Store pickup" feature.
  core.bool? storePickupActive;

  LiaCountrySettings({
    this.about,
    this.country,
    this.hostedLocalStorefrontActive,
    this.inventory,
    this.onDisplayToOrder,
    this.posDataProvider,
    this.storePickupActive,
  });

  LiaCountrySettings.fromJson(core.Map _json)
      : this(
          about: _json.containsKey('about')
              ? LiaAboutPageSettings.fromJson(
                  _json['about'] as core.Map<core.String, core.dynamic>)
              : null,
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          hostedLocalStorefrontActive:
              _json.containsKey('hostedLocalStorefrontActive')
                  ? _json['hostedLocalStorefrontActive'] as core.bool
                  : null,
          inventory: _json.containsKey('inventory')
              ? LiaInventorySettings.fromJson(
                  _json['inventory'] as core.Map<core.String, core.dynamic>)
              : null,
          onDisplayToOrder: _json.containsKey('onDisplayToOrder')
              ? LiaOnDisplayToOrderSettings.fromJson(_json['onDisplayToOrder']
                  as core.Map<core.String, core.dynamic>)
              : null,
          posDataProvider: _json.containsKey('posDataProvider')
              ? LiaPosDataProvider.fromJson(_json['posDataProvider']
                  as core.Map<core.String, core.dynamic>)
              : null,
          storePickupActive: _json.containsKey('storePickupActive')
              ? _json['storePickupActive'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (about != null) 'about': about!,
        if (country != null) 'country': country!,
        if (hostedLocalStorefrontActive != null)
          'hostedLocalStorefrontActive': hostedLocalStorefrontActive!,
        if (inventory != null) 'inventory': inventory!,
        if (onDisplayToOrder != null) 'onDisplayToOrder': onDisplayToOrder!,
        if (posDataProvider != null) 'posDataProvider': posDataProvider!,
        if (storePickupActive != null) 'storePickupActive': storePickupActive!,
      };
}

class LiaInventorySettings {
  /// The email of the contact for the inventory verification process.
  core.String? inventoryVerificationContactEmail;

  /// The name of the contact for the inventory verification process.
  core.String? inventoryVerificationContactName;

  /// The status of the verification contact.
  ///
  /// Acceptable values are: - "`active`" - "`inactive`" - "`pending`"
  core.String? inventoryVerificationContactStatus;

  /// The status of the inventory verification process.
  ///
  /// Acceptable values are: - "`active`" - "`inactive`" - "`pending`"
  core.String? status;

  LiaInventorySettings({
    this.inventoryVerificationContactEmail,
    this.inventoryVerificationContactName,
    this.inventoryVerificationContactStatus,
    this.status,
  });

  LiaInventorySettings.fromJson(core.Map _json)
      : this(
          inventoryVerificationContactEmail:
              _json.containsKey('inventoryVerificationContactEmail')
                  ? _json['inventoryVerificationContactEmail'] as core.String
                  : null,
          inventoryVerificationContactName:
              _json.containsKey('inventoryVerificationContactName')
                  ? _json['inventoryVerificationContactName'] as core.String
                  : null,
          inventoryVerificationContactStatus:
              _json.containsKey('inventoryVerificationContactStatus')
                  ? _json['inventoryVerificationContactStatus'] as core.String
                  : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inventoryVerificationContactEmail != null)
          'inventoryVerificationContactEmail':
              inventoryVerificationContactEmail!,
        if (inventoryVerificationContactName != null)
          'inventoryVerificationContactName': inventoryVerificationContactName!,
        if (inventoryVerificationContactStatus != null)
          'inventoryVerificationContactStatus':
              inventoryVerificationContactStatus!,
        if (status != null) 'status': status!,
      };
}

class LiaOnDisplayToOrderSettings {
  /// Shipping cost and policy URL.
  core.String? shippingCostPolicyUrl;

  /// The status of the ?On display to order? feature.
  ///
  /// Acceptable values are: - "`active`" - "`inactive`" - "`pending`"
  core.String? status;

  LiaOnDisplayToOrderSettings({
    this.shippingCostPolicyUrl,
    this.status,
  });

  LiaOnDisplayToOrderSettings.fromJson(core.Map _json)
      : this(
          shippingCostPolicyUrl: _json.containsKey('shippingCostPolicyUrl')
              ? _json['shippingCostPolicyUrl'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (shippingCostPolicyUrl != null)
          'shippingCostPolicyUrl': shippingCostPolicyUrl!,
        if (status != null) 'status': status!,
      };
}

class LiaPosDataProvider {
  /// The ID of the POS data provider.
  core.String? posDataProviderId;

  /// The account ID by which this merchant is known to the POS data provider.
  core.String? posExternalAccountId;

  LiaPosDataProvider({
    this.posDataProviderId,
    this.posExternalAccountId,
  });

  LiaPosDataProvider.fromJson(core.Map _json)
      : this(
          posDataProviderId: _json.containsKey('posDataProviderId')
              ? _json['posDataProviderId'] as core.String
              : null,
          posExternalAccountId: _json.containsKey('posExternalAccountId')
              ? _json['posExternalAccountId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (posDataProviderId != null) 'posDataProviderId': posDataProviderId!,
        if (posExternalAccountId != null)
          'posExternalAccountId': posExternalAccountId!,
      };
}

/// Local Inventory ads (LIA) settings.
///
/// All methods except listposdataproviders require the admin role.
class LiaSettings {
  /// The ID of the account to which these LIA settings belong.
  ///
  /// Ignored upon update, always present in get request responses.
  core.String? accountId;

  /// The LIA settings for each country.
  core.List<LiaCountrySettings>? countrySettings;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#liaSettings`"
  core.String? kind;

  LiaSettings({
    this.accountId,
    this.countrySettings,
    this.kind,
  });

  LiaSettings.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          countrySettings: _json.containsKey('countrySettings')
              ? (_json['countrySettings'] as core.List)
                  .map((value) => LiaCountrySettings.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (countrySettings != null) 'countrySettings': countrySettings!,
        if (kind != null) 'kind': kind!,
      };
}

class LiasettingsCustomBatchRequest {
  /// The request entries to be processed in the batch.
  core.List<LiasettingsCustomBatchRequestEntry>? entries;

  LiasettingsCustomBatchRequest({
    this.entries,
  });

  LiasettingsCustomBatchRequest.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) => LiasettingsCustomBatchRequestEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

class LiasettingsCustomBatchRequestEntry {
  /// The ID of the account for which to get/update account LIA settings.
  core.String? accountId;

  /// An entry ID, unique within the batch request.
  core.int? batchId;

  /// Inventory validation contact email.
  ///
  /// Required only for SetInventoryValidationContact.
  core.String? contactEmail;

  /// Inventory validation contact name.
  ///
  /// Required only for SetInventoryValidationContact.
  core.String? contactName;

  /// The country code.
  ///
  /// Required only for RequestInventoryVerification.
  core.String? country;

  /// The GMB account.
  ///
  /// Required only for RequestGmbAccess.
  core.String? gmbEmail;

  /// The account Lia settings to update.
  ///
  /// Only defined if the method is `update`.
  LiaSettings? liaSettings;

  /// The ID of the managing account.
  core.String? merchantId;

  /// The method of the batch entry.
  ///
  /// Acceptable values are: - "`get`" - "`getAccessibleGmbAccounts`" -
  /// "`requestGmbAccess`" - "`requestInventoryVerification`" -
  /// "`setInventoryVerificationContact`" - "`update`"
  core.String? method;

  /// The ID of POS data provider.
  ///
  /// Required only for SetPosProvider.
  core.String? posDataProviderId;

  /// The account ID by which this merchant is known to the POS provider.
  core.String? posExternalAccountId;

  LiasettingsCustomBatchRequestEntry({
    this.accountId,
    this.batchId,
    this.contactEmail,
    this.contactName,
    this.country,
    this.gmbEmail,
    this.liaSettings,
    this.merchantId,
    this.method,
    this.posDataProviderId,
    this.posExternalAccountId,
  });

  LiasettingsCustomBatchRequestEntry.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          contactEmail: _json.containsKey('contactEmail')
              ? _json['contactEmail'] as core.String
              : null,
          contactName: _json.containsKey('contactName')
              ? _json['contactName'] as core.String
              : null,
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          gmbEmail: _json.containsKey('gmbEmail')
              ? _json['gmbEmail'] as core.String
              : null,
          liaSettings: _json.containsKey('liaSettings')
              ? LiaSettings.fromJson(
                  _json['liaSettings'] as core.Map<core.String, core.dynamic>)
              : null,
          merchantId: _json.containsKey('merchantId')
              ? _json['merchantId'] as core.String
              : null,
          method: _json.containsKey('method')
              ? _json['method'] as core.String
              : null,
          posDataProviderId: _json.containsKey('posDataProviderId')
              ? _json['posDataProviderId'] as core.String
              : null,
          posExternalAccountId: _json.containsKey('posExternalAccountId')
              ? _json['posExternalAccountId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (batchId != null) 'batchId': batchId!,
        if (contactEmail != null) 'contactEmail': contactEmail!,
        if (contactName != null) 'contactName': contactName!,
        if (country != null) 'country': country!,
        if (gmbEmail != null) 'gmbEmail': gmbEmail!,
        if (liaSettings != null) 'liaSettings': liaSettings!,
        if (merchantId != null) 'merchantId': merchantId!,
        if (method != null) 'method': method!,
        if (posDataProviderId != null) 'posDataProviderId': posDataProviderId!,
        if (posExternalAccountId != null)
          'posExternalAccountId': posExternalAccountId!,
      };
}

class LiasettingsCustomBatchResponse {
  /// The result of the execution of the batch requests.
  core.List<LiasettingsCustomBatchResponseEntry>? entries;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#liasettingsCustomBatchResponse`".
  core.String? kind;

  LiasettingsCustomBatchResponse({
    this.entries,
    this.kind,
  });

  LiasettingsCustomBatchResponse.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) => LiasettingsCustomBatchResponseEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
        if (kind != null) 'kind': kind!,
      };
}

class LiasettingsCustomBatchResponseEntry {
  /// The ID of the request entry to which this entry responds.
  core.int? batchId;

  /// A list of errors defined if, and only if, the request failed.
  Errors? errors;

  /// The list of accessible GMB accounts.
  GmbAccounts? gmbAccounts;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#liasettingsCustomBatchResponseEntry`"
  core.String? kind;

  /// The retrieved or updated Lia settings.
  LiaSettings? liaSettings;

  /// The list of POS data providers.
  core.List<PosDataProviders>? posDataProviders;

  LiasettingsCustomBatchResponseEntry({
    this.batchId,
    this.errors,
    this.gmbAccounts,
    this.kind,
    this.liaSettings,
    this.posDataProviders,
  });

  LiasettingsCustomBatchResponseEntry.fromJson(core.Map _json)
      : this(
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          errors: _json.containsKey('errors')
              ? Errors.fromJson(
                  _json['errors'] as core.Map<core.String, core.dynamic>)
              : null,
          gmbAccounts: _json.containsKey('gmbAccounts')
              ? GmbAccounts.fromJson(
                  _json['gmbAccounts'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          liaSettings: _json.containsKey('liaSettings')
              ? LiaSettings.fromJson(
                  _json['liaSettings'] as core.Map<core.String, core.dynamic>)
              : null,
          posDataProviders: _json.containsKey('posDataProviders')
              ? (_json['posDataProviders'] as core.List)
                  .map((value) => PosDataProviders.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchId != null) 'batchId': batchId!,
        if (errors != null) 'errors': errors!,
        if (gmbAccounts != null) 'gmbAccounts': gmbAccounts!,
        if (kind != null) 'kind': kind!,
        if (liaSettings != null) 'liaSettings': liaSettings!,
        if (posDataProviders != null) 'posDataProviders': posDataProviders!,
      };
}

class LiasettingsGetAccessibleGmbAccountsResponse {
  /// The ID of the Merchant Center account.
  core.String? accountId;

  /// A list of GMB accounts which are available to the merchant.
  core.List<GmbAccountsGmbAccount>? gmbAccounts;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string
  /// "`content#liasettingsGetAccessibleGmbAccountsResponse`".
  core.String? kind;

  LiasettingsGetAccessibleGmbAccountsResponse({
    this.accountId,
    this.gmbAccounts,
    this.kind,
  });

  LiasettingsGetAccessibleGmbAccountsResponse.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          gmbAccounts: _json.containsKey('gmbAccounts')
              ? (_json['gmbAccounts'] as core.List)
                  .map((value) => GmbAccountsGmbAccount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (gmbAccounts != null) 'gmbAccounts': gmbAccounts!,
        if (kind != null) 'kind': kind!,
      };
}

class LiasettingsListPosDataProvidersResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string
  /// "`content#liasettingsListPosDataProvidersResponse`".
  core.String? kind;

  /// The list of POS data providers for each eligible country
  core.List<PosDataProviders>? posDataProviders;

  LiasettingsListPosDataProvidersResponse({
    this.kind,
    this.posDataProviders,
  });

  LiasettingsListPosDataProvidersResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          posDataProviders: _json.containsKey('posDataProviders')
              ? (_json['posDataProviders'] as core.List)
                  .map((value) => PosDataProviders.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (posDataProviders != null) 'posDataProviders': posDataProviders!,
      };
}

class LiasettingsListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#liasettingsListResponse`".
  core.String? kind;

  /// The token for the retrieval of the next page of LIA settings.
  core.String? nextPageToken;
  core.List<LiaSettings>? resources;

  LiasettingsListResponse({
    this.kind,
    this.nextPageToken,
    this.resources,
  });

  LiasettingsListResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => LiaSettings.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resources != null) 'resources': resources!,
      };
}

class LiasettingsRequestGmbAccessResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#liasettingsRequestGmbAccessResponse`".
  core.String? kind;

  LiasettingsRequestGmbAccessResponse({
    this.kind,
  });

  LiasettingsRequestGmbAccessResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
      };
}

class LiasettingsRequestInventoryVerificationResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string
  /// "`content#liasettingsRequestInventoryVerificationResponse`".
  core.String? kind;

  LiasettingsRequestInventoryVerificationResponse({
    this.kind,
  });

  LiasettingsRequestInventoryVerificationResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
      };
}

class LiasettingsSetInventoryVerificationContactResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string
  /// "`content#liasettingsSetInventoryVerificationContactResponse`".
  core.String? kind;

  LiasettingsSetInventoryVerificationContactResponse({
    this.kind,
  });

  LiasettingsSetInventoryVerificationContactResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
      };
}

class LiasettingsSetPosDataProviderResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#liasettingsSetPosDataProviderResponse`".
  core.String? kind;

  LiasettingsSetPosDataProviderResponse({
    this.kind,
  });

  LiasettingsSetPosDataProviderResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
      };
}

class LinkService {
  /// Service provided to or by the linked account.
  ///
  /// Acceptable values are: - "`shoppingActionsOrderManagement`" -
  /// "`shoppingActionsProductManagement`" - "`shoppingAdsProductManagement`" -
  /// "`paymentProcessing`"
  core.String? service;

  /// Status of the link Acceptable values are: - "`active`" - "`inactive`" -
  /// "`pending`"
  core.String? status;

  LinkService({
    this.service,
    this.status,
  });

  LinkService.fromJson(core.Map _json)
      : this(
          service: _json.containsKey('service')
              ? _json['service'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (service != null) 'service': service!,
        if (status != null) 'status': status!,
      };
}

class LinkedAccount {
  /// The ID of the linked account.
  core.String? linkedAccountId;

  /// List of provided services.
  core.List<LinkService>? services;

  LinkedAccount({
    this.linkedAccountId,
    this.services,
  });

  LinkedAccount.fromJson(core.Map _json)
      : this(
          linkedAccountId: _json.containsKey('linkedAccountId')
              ? _json['linkedAccountId'] as core.String
              : null,
          services: _json.containsKey('services')
              ? (_json['services'] as core.List)
                  .map((value) => LinkService.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (linkedAccountId != null) 'linkedAccountId': linkedAccountId!,
        if (services != null) 'services': services!,
      };
}

/// Response message for the `ListAccountLabels` method.
class ListAccountLabelsResponse {
  /// The labels from the specified account.
  core.List<AccountLabel>? accountLabels;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListAccountLabelsResponse({
    this.accountLabels,
    this.nextPageToken,
  });

  ListAccountLabelsResponse.fromJson(core.Map _json)
      : this(
          accountLabels: _json.containsKey('accountLabels')
              ? (_json['accountLabels'] as core.List)
                  .map((value) => AccountLabel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountLabels != null) 'accountLabels': accountLabels!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for listing account return carriers.
class ListAccountReturnCarrierResponse {
  /// List of all available account return carriers for the merchant.
  core.List<AccountReturnCarrier>? accountReturnCarriers;

  ListAccountReturnCarrierResponse({
    this.accountReturnCarriers,
  });

  ListAccountReturnCarrierResponse.fromJson(core.Map _json)
      : this(
          accountReturnCarriers: _json.containsKey('accountReturnCarriers')
              ? (_json['accountReturnCarriers'] as core.List)
                  .map((value) => AccountReturnCarrier.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountReturnCarriers != null)
          'accountReturnCarriers': accountReturnCarriers!,
      };
}

/// Response message for the ListCollectionStatuses method.
class ListCollectionStatusesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The collectionstatuses listed.
  core.List<CollectionStatus>? resources;

  ListCollectionStatusesResponse({
    this.nextPageToken,
    this.resources,
  });

  ListCollectionStatusesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => CollectionStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resources != null) 'resources': resources!,
      };
}

/// Response message for the ListCollections method.
class ListCollectionsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The collections listed.
  core.List<Collection>? resources;

  ListCollectionsResponse({
    this.nextPageToken,
    this.resources,
  });

  ListCollectionsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => Collection.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resources != null) 'resources': resources!,
      };
}

/// The response message for the `ListCsses` method
class ListCssesResponse {
  /// The CSS domains affiliated with the specified CSS group.
  core.List<Css>? csses;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListCssesResponse({
    this.csses,
    this.nextPageToken,
  });

  ListCssesResponse.fromJson(core.Map _json)
      : this(
          csses: _json.containsKey('csses')
              ? (_json['csses'] as core.List)
                  .map((value) => Css.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (csses != null) 'csses': csses!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for the `ListRegions` method.
class ListRegionsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The regions from the specified merchant.
  core.List<Region>? regions;

  ListRegionsResponse({
    this.nextPageToken,
    this.regions,
  });

  ListRegionsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          regions: _json.containsKey('regions')
              ? (_json['regions'] as core.List)
                  .map((value) => Region.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (regions != null) 'regions': regions!,
      };
}

/// Response message for the ListRepricingProductReports method.
class ListRepricingProductReportsResponse {
  /// A token for retrieving the next page.
  ///
  /// Its absence means there is no subsequent page.
  core.String? nextPageToken;

  /// Periodic reports for the given Repricing product.
  core.List<RepricingProductReport>? repricingProductReports;

  ListRepricingProductReportsResponse({
    this.nextPageToken,
    this.repricingProductReports,
  });

  ListRepricingProductReportsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          repricingProductReports: _json.containsKey('repricingProductReports')
              ? (_json['repricingProductReports'] as core.List)
                  .map((value) => RepricingProductReport.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (repricingProductReports != null)
          'repricingProductReports': repricingProductReports!,
      };
}

/// Response message for the ListRepricingRuleReports method.
class ListRepricingRuleReportsResponse {
  /// A token for retrieving the next page.
  ///
  /// Its absence means there is no subsequent page.
  core.String? nextPageToken;

  /// Daily reports for the given Repricing rule.
  core.List<RepricingRuleReport>? repricingRuleReports;

  ListRepricingRuleReportsResponse({
    this.nextPageToken,
    this.repricingRuleReports,
  });

  ListRepricingRuleReportsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          repricingRuleReports: _json.containsKey('repricingRuleReports')
              ? (_json['repricingRuleReports'] as core.List)
                  .map((value) => RepricingRuleReport.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (repricingRuleReports != null)
          'repricingRuleReports': repricingRuleReports!,
      };
}

/// Response message for the `ListRepricingRules` method.
class ListRepricingRulesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The rules from the specified merchant.
  core.List<RepricingRule>? repricingRules;

  ListRepricingRulesResponse({
    this.nextPageToken,
    this.repricingRules,
  });

  ListRepricingRulesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          repricingRules: _json.containsKey('repricingRules')
              ? (_json['repricingRules'] as core.List)
                  .map((value) => RepricingRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (repricingRules != null) 'repricingRules': repricingRules!,
      };
}

/// Response message for the `ListReturnPolicyOnline` method.
class ListReturnPolicyOnlineResponse {
  /// The retrieved return policies.
  core.List<ReturnPolicyOnline>? returnPolicies;

  ListReturnPolicyOnlineResponse({
    this.returnPolicies,
  });

  ListReturnPolicyOnlineResponse.fromJson(core.Map _json)
      : this(
          returnPolicies: _json.containsKey('returnPolicies')
              ? (_json['returnPolicies'] as core.List)
                  .map((value) => ReturnPolicyOnline.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (returnPolicies != null) 'returnPolicies': returnPolicies!,
      };
}

/// Local inventory resource.
///
/// For accepted attribute values, see the local product inventory feed
/// specification.
class LocalInventory {
  /// Availability of the product.
  ///
  /// For accepted attribute values, see the local product inventory feed
  /// specification.
  core.String? availability;

  /// In-store product location.
  core.String? instoreProductLocation;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#localInventory`"
  core.String? kind;

  /// Supported pickup method for this offer.
  ///
  /// Unless the value is "not supported", this field must be submitted together
  /// with `pickupSla`. For accepted attribute values, see the local product
  /// inventory feed specification.
  core.String? pickupMethod;

  /// Expected date that an order will be ready for pickup relative to the order
  /// date.
  ///
  /// Must be submitted together with `pickupMethod`. For accepted attribute
  /// values, see the local product inventory feed specification.
  core.String? pickupSla;

  /// Price of the product.
  Price? price;

  /// Quantity of the product.
  ///
  /// Must be nonnegative.
  core.int? quantity;

  /// Sale price of the product.
  ///
  /// Mandatory if `sale_price_effective_date` is defined.
  Price? salePrice;

  /// A date range represented by a pair of ISO 8601 dates separated by a space,
  /// comma, or slash.
  ///
  /// Both dates may be specified as 'null' if undecided.
  core.String? salePriceEffectiveDate;

  /// Store code of this local inventory resource.
  ///
  /// Required.
  core.String? storeCode;

  LocalInventory({
    this.availability,
    this.instoreProductLocation,
    this.kind,
    this.pickupMethod,
    this.pickupSla,
    this.price,
    this.quantity,
    this.salePrice,
    this.salePriceEffectiveDate,
    this.storeCode,
  });

  LocalInventory.fromJson(core.Map _json)
      : this(
          availability: _json.containsKey('availability')
              ? _json['availability'] as core.String
              : null,
          instoreProductLocation: _json.containsKey('instoreProductLocation')
              ? _json['instoreProductLocation'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          pickupMethod: _json.containsKey('pickupMethod')
              ? _json['pickupMethod'] as core.String
              : null,
          pickupSla: _json.containsKey('pickupSla')
              ? _json['pickupSla'] as core.String
              : null,
          price: _json.containsKey('price')
              ? Price.fromJson(
                  _json['price'] as core.Map<core.String, core.dynamic>)
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.int
              : null,
          salePrice: _json.containsKey('salePrice')
              ? Price.fromJson(
                  _json['salePrice'] as core.Map<core.String, core.dynamic>)
              : null,
          salePriceEffectiveDate: _json.containsKey('salePriceEffectiveDate')
              ? _json['salePriceEffectiveDate'] as core.String
              : null,
          storeCode: _json.containsKey('storeCode')
              ? _json['storeCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availability != null) 'availability': availability!,
        if (instoreProductLocation != null)
          'instoreProductLocation': instoreProductLocation!,
        if (kind != null) 'kind': kind!,
        if (pickupMethod != null) 'pickupMethod': pickupMethod!,
        if (pickupSla != null) 'pickupSla': pickupSla!,
        if (price != null) 'price': price!,
        if (quantity != null) 'quantity': quantity!,
        if (salePrice != null) 'salePrice': salePrice!,
        if (salePriceEffectiveDate != null)
          'salePriceEffectiveDate': salePriceEffectiveDate!,
        if (storeCode != null) 'storeCode': storeCode!,
      };
}

class LocalinventoryCustomBatchRequest {
  /// The request entries to be processed in the batch.
  core.List<LocalinventoryCustomBatchRequestEntry>? entries;

  LocalinventoryCustomBatchRequest({
    this.entries,
  });

  LocalinventoryCustomBatchRequest.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) =>
                      LocalinventoryCustomBatchRequestEntry.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

/// Batch entry encoding a single local inventory update request.
class LocalinventoryCustomBatchRequestEntry {
  /// An entry ID, unique within the batch request.
  core.int? batchId;

  /// Local inventory of the product.
  LocalInventory? localInventory;

  /// The ID of the managing account.
  core.String? merchantId;

  /// Method of the batch request entry.
  ///
  /// Acceptable values are: - "`insert`"
  core.String? method;

  /// The ID of the product for which to update local inventory.
  core.String? productId;

  LocalinventoryCustomBatchRequestEntry({
    this.batchId,
    this.localInventory,
    this.merchantId,
    this.method,
    this.productId,
  });

  LocalinventoryCustomBatchRequestEntry.fromJson(core.Map _json)
      : this(
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          localInventory: _json.containsKey('localInventory')
              ? LocalInventory.fromJson(_json['localInventory']
                  as core.Map<core.String, core.dynamic>)
              : null,
          merchantId: _json.containsKey('merchantId')
              ? _json['merchantId'] as core.String
              : null,
          method: _json.containsKey('method')
              ? _json['method'] as core.String
              : null,
          productId: _json.containsKey('productId')
              ? _json['productId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchId != null) 'batchId': batchId!,
        if (localInventory != null) 'localInventory': localInventory!,
        if (merchantId != null) 'merchantId': merchantId!,
        if (method != null) 'method': method!,
        if (productId != null) 'productId': productId!,
      };
}

class LocalinventoryCustomBatchResponse {
  /// The result of the execution of the batch requests.
  core.List<LocalinventoryCustomBatchResponseEntry>? entries;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#localinventoryCustomBatchResponse`".
  core.String? kind;

  LocalinventoryCustomBatchResponse({
    this.entries,
    this.kind,
  });

  LocalinventoryCustomBatchResponse.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) =>
                      LocalinventoryCustomBatchResponseEntry.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
        if (kind != null) 'kind': kind!,
      };
}

/// Batch entry encoding a single local inventory update response.
class LocalinventoryCustomBatchResponseEntry {
  /// The ID of the request entry this entry responds to.
  core.int? batchId;

  /// A list of errors defined if and only if the request failed.
  Errors? errors;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#localinventoryCustomBatchResponseEntry`"
  core.String? kind;

  LocalinventoryCustomBatchResponseEntry({
    this.batchId,
    this.errors,
    this.kind,
  });

  LocalinventoryCustomBatchResponseEntry.fromJson(core.Map _json)
      : this(
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          errors: _json.containsKey('errors')
              ? Errors.fromJson(
                  _json['errors'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchId != null) 'batchId': batchId!,
        if (errors != null) 'errors': errors!,
        if (kind != null) 'kind': kind!,
      };
}

class LocationIdSet {
  /// A non-empty list of location IDs.
  ///
  /// They must all be of the same location type (e.g., state).
  core.List<core.String>? locationIds;

  LocationIdSet({
    this.locationIds,
  });

  LocationIdSet.fromJson(core.Map _json)
      : this(
          locationIds: _json.containsKey('locationIds')
              ? (_json['locationIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locationIds != null) 'locationIds': locationIds!,
      };
}

class LoyaltyPoints {
  /// Name of loyalty points program.
  ///
  /// It is recommended to limit the name to 12 full-width characters or 24
  /// Roman characters.
  core.String? name;

  /// The retailer's loyalty points in absolute value.
  core.String? pointsValue;

  /// The ratio of a point when converted to currency.
  ///
  /// Google assumes currency based on Merchant Center settings. If ratio is
  /// left out, it defaults to 1.0.
  core.double? ratio;

  LoyaltyPoints({
    this.name,
    this.pointsValue,
    this.ratio,
  });

  LoyaltyPoints.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          pointsValue: _json.containsKey('pointsValue')
              ? _json['pointsValue'] as core.String
              : null,
          ratio: _json.containsKey('ratio')
              ? (_json['ratio'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (pointsValue != null) 'pointsValue': pointsValue!,
        if (ratio != null) 'ratio': ratio!,
      };
}

/// Order return.
///
/// Production access (all methods) requires the order manager role. Sandbox
/// access does not.
class MerchantOrderReturn {
  /// The date of creation of the return, in ISO 8601 format.
  core.String? creationDate;

  /// Merchant defined order ID.
  core.String? merchantOrderId;

  /// Google order ID.
  core.String? orderId;

  /// Order return ID generated by Google.
  core.String? orderReturnId;

  /// Items of the return.
  core.List<MerchantOrderReturnItem>? returnItems;

  /// Information about shipping costs.
  ReturnPricingInfo? returnPricingInfo;

  /// Shipments of the return.
  core.List<ReturnShipment>? returnShipments;

  MerchantOrderReturn({
    this.creationDate,
    this.merchantOrderId,
    this.orderId,
    this.orderReturnId,
    this.returnItems,
    this.returnPricingInfo,
    this.returnShipments,
  });

  MerchantOrderReturn.fromJson(core.Map _json)
      : this(
          creationDate: _json.containsKey('creationDate')
              ? _json['creationDate'] as core.String
              : null,
          merchantOrderId: _json.containsKey('merchantOrderId')
              ? _json['merchantOrderId'] as core.String
              : null,
          orderId: _json.containsKey('orderId')
              ? _json['orderId'] as core.String
              : null,
          orderReturnId: _json.containsKey('orderReturnId')
              ? _json['orderReturnId'] as core.String
              : null,
          returnItems: _json.containsKey('returnItems')
              ? (_json['returnItems'] as core.List)
                  .map((value) => MerchantOrderReturnItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          returnPricingInfo: _json.containsKey('returnPricingInfo')
              ? ReturnPricingInfo.fromJson(_json['returnPricingInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          returnShipments: _json.containsKey('returnShipments')
              ? (_json['returnShipments'] as core.List)
                  .map((value) => ReturnShipment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creationDate != null) 'creationDate': creationDate!,
        if (merchantOrderId != null) 'merchantOrderId': merchantOrderId!,
        if (orderId != null) 'orderId': orderId!,
        if (orderReturnId != null) 'orderReturnId': orderReturnId!,
        if (returnItems != null) 'returnItems': returnItems!,
        if (returnPricingInfo != null) 'returnPricingInfo': returnPricingInfo!,
        if (returnShipments != null) 'returnShipments': returnShipments!,
      };
}

class MerchantOrderReturnItem {
  /// The reason that the customer chooses to return an item.
  CustomerReturnReason? customerReturnReason;

  /// Product level item ID.
  ///
  /// If the returned items are of the same product, they will have the same ID.
  core.String? itemId;

  /// The reason that the merchant chose to reject an item return.
  MerchantRejectionReason? merchantRejectionReason;

  /// The reason that merchant chooses to accept a return item.
  RefundReason? merchantReturnReason;

  /// Product data from the time of the order placement.
  OrderLineItemProduct? product;

  /// Maximum amount that can be refunded for this return item.
  MonetaryAmount? refundableAmount;

  /// Unit level ID for the return item.
  ///
  /// Different units of the same product will have different IDs.
  core.String? returnItemId;

  /// IDs of the return shipments that this return item belongs to.
  core.List<core.String>? returnShipmentIds;

  /// ID of the original shipment group.
  ///
  /// Provided for shipments with invoice support.
  core.String? shipmentGroupId;

  /// ID of the shipment unit assigned by the merchant.
  ///
  /// Provided for shipments with invoice support.
  core.String? shipmentUnitId;

  /// State of the item.
  ///
  /// Acceptable values are: - "`canceled`" - "`new`" - "`received`" -
  /// "`refunded`" - "`rejected`"
  core.String? state;

  MerchantOrderReturnItem({
    this.customerReturnReason,
    this.itemId,
    this.merchantRejectionReason,
    this.merchantReturnReason,
    this.product,
    this.refundableAmount,
    this.returnItemId,
    this.returnShipmentIds,
    this.shipmentGroupId,
    this.shipmentUnitId,
    this.state,
  });

  MerchantOrderReturnItem.fromJson(core.Map _json)
      : this(
          customerReturnReason: _json.containsKey('customerReturnReason')
              ? CustomerReturnReason.fromJson(_json['customerReturnReason']
                  as core.Map<core.String, core.dynamic>)
              : null,
          itemId: _json.containsKey('itemId')
              ? _json['itemId'] as core.String
              : null,
          merchantRejectionReason: _json.containsKey('merchantRejectionReason')
              ? MerchantRejectionReason.fromJson(
                  _json['merchantRejectionReason']
                      as core.Map<core.String, core.dynamic>)
              : null,
          merchantReturnReason: _json.containsKey('merchantReturnReason')
              ? RefundReason.fromJson(_json['merchantReturnReason']
                  as core.Map<core.String, core.dynamic>)
              : null,
          product: _json.containsKey('product')
              ? OrderLineItemProduct.fromJson(
                  _json['product'] as core.Map<core.String, core.dynamic>)
              : null,
          refundableAmount: _json.containsKey('refundableAmount')
              ? MonetaryAmount.fromJson(_json['refundableAmount']
                  as core.Map<core.String, core.dynamic>)
              : null,
          returnItemId: _json.containsKey('returnItemId')
              ? _json['returnItemId'] as core.String
              : null,
          returnShipmentIds: _json.containsKey('returnShipmentIds')
              ? (_json['returnShipmentIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          shipmentGroupId: _json.containsKey('shipmentGroupId')
              ? _json['shipmentGroupId'] as core.String
              : null,
          shipmentUnitId: _json.containsKey('shipmentUnitId')
              ? _json['shipmentUnitId'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customerReturnReason != null)
          'customerReturnReason': customerReturnReason!,
        if (itemId != null) 'itemId': itemId!,
        if (merchantRejectionReason != null)
          'merchantRejectionReason': merchantRejectionReason!,
        if (merchantReturnReason != null)
          'merchantReturnReason': merchantReturnReason!,
        if (product != null) 'product': product!,
        if (refundableAmount != null) 'refundableAmount': refundableAmount!,
        if (returnItemId != null) 'returnItemId': returnItemId!,
        if (returnShipmentIds != null) 'returnShipmentIds': returnShipmentIds!,
        if (shipmentGroupId != null) 'shipmentGroupId': shipmentGroupId!,
        if (shipmentUnitId != null) 'shipmentUnitId': shipmentUnitId!,
        if (state != null) 'state': state!,
      };
}

class MerchantRejectionReason {
  /// Description of the reason.
  core.String? description;

  /// Code of the rejection reason.
  core.String? reasonCode;

  MerchantRejectionReason({
    this.description,
    this.reasonCode,
  });

  MerchantRejectionReason.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          reasonCode: _json.containsKey('reasonCode')
              ? _json['reasonCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (reasonCode != null) 'reasonCode': reasonCode!,
      };
}

/// Performance metrics.
///
/// Values are only set for metrics requested explicitly in the request's search
/// query.
class Metrics {
  /// Average order size - the average number of items in an order.
  ///
  /// **This metric cannot be segmented by product dimensions.**
  core.double? aos;

  /// Average order value - the average value (total price of items) of all
  /// placed orders.
  ///
  /// The currency of the returned value is stored in the currency_code segment.
  /// If this metric is selected, 'segments.currency_code' is automatically
  /// added to the SELECT clause in the search query (unless it is explicitly
  /// selected by the user) and the currency_code segment is populated in the
  /// response. **This metric cannot be segmented by product dimensions.**
  core.double? aovMicros;

  /// Number of clicks.
  core.String? clicks;

  /// Click-through rate - the number of clicks merchant's products receive
  /// (clicks) divided by the number of times the products are shown
  /// (impressions).
  core.double? ctr;

  /// Average number of days between an order being placed and the order being
  /// fully shipped, reported on the last shipment date.
  ///
  /// **This metric cannot be segmented by product dimensions.**
  core.double? daysToShip;

  /// Number of times merchant's products are shown.
  core.String? impressions;

  /// Average number of days between an item being ordered and the item being
  core.double? itemDaysToShip;

  /// Percentage of shipped items in relation to all finalized items (shipped or
  /// rejected by the merchant; unshipped items are not taken into account),
  /// reported on the order date.
  ///
  /// Item fill rate is lowered by merchant rejections.
  core.double? itemFillRate;

  /// Total price of ordered items.
  ///
  /// Excludes shipping, taxes (US only), and customer cancellations that
  /// happened within 30 minutes of placing the order. The currency of the
  /// returned value is stored in the currency_code segment. If this metric is
  /// selected, 'segments.currency_code' is automatically added to the SELECT
  /// clause in the search query (unless it is explicitly selected by the user)
  /// and the currency_code segment is populated in the response.
  core.String? orderedItemSalesMicros;

  /// Number of ordered items.
  ///
  /// Excludes customer cancellations that happened within 30 minutes of placing
  /// the order.
  core.String? orderedItems;

  /// Number of placed orders.
  ///
  /// Excludes customer cancellations that happened within 30 minutes of placing
  /// the order. **This metric cannot be segmented by product dimensions.**
  core.String? orders;

  /// Number of ordered items canceled by the merchant, reported on the order
  /// date.
  core.String? rejectedItems;

  /// Total price of returned items divided by the total price of shipped items,
  /// reported on the order date.
  ///
  /// If this metric is selected, 'segments.currency_code' is automatically
  /// added to the SELECT clause in the search query (unless it is explicitly
  /// selected by the user) and the currency_code segment is populated in the
  /// response.
  core.double? returnRate;

  /// Number of ordered items sent back for return, reported on the date when
  /// the merchant accepted the return.
  core.String? returnedItems;

  /// Total price of ordered items sent back for return, reported on the date
  /// when the merchant accepted the return.
  ///
  /// The currency of the returned value is stored in the currency_code segment.
  /// If this metric is selected, 'segments.currency_code' is automatically
  /// added to the SELECT clause in the search query (unless it is explicitly
  /// selected by the user) and the currency_code segment is populated in the
  /// response.
  core.String? returnsMicros;

  /// Total price of shipped items, reported on the order date.
  ///
  /// Excludes shipping and taxes (US only). The currency of the returned value
  /// is stored in the currency_code segment. If this metric is selected,
  /// 'segments.currency_code' is automatically added to the SELECT clause in
  /// the search query (unless it is explicitly selected by the user) and the
  /// currency_code segment is populated in the response.
  core.String? shippedItemSalesMicros;

  /// Number of shipped items, reported on the shipment date.
  core.String? shippedItems;

  /// Number of fully shipped orders, reported on the last shipment date.
  ///
  /// **This metric cannot be segmented by product dimensions.**
  core.String? shippedOrders;

  /// Number of ordered items not shipped up until the end of the queried day.
  ///
  /// If a multi-day period is specified in the search query, the returned value
  /// is the average number of unshipped items over the days in the queried
  /// period.
  core.double? unshippedItems;

  /// Number of orders not shipped or partially shipped up until the end of the
  /// queried day.
  ///
  /// If a multi-day period is specified in the search query, the returned value
  /// is the average number of unshipped orders over the days in the queried
  /// period. **This metric cannot be segmented by product dimensions.**
  core.double? unshippedOrders;

  Metrics({
    this.aos,
    this.aovMicros,
    this.clicks,
    this.ctr,
    this.daysToShip,
    this.impressions,
    this.itemDaysToShip,
    this.itemFillRate,
    this.orderedItemSalesMicros,
    this.orderedItems,
    this.orders,
    this.rejectedItems,
    this.returnRate,
    this.returnedItems,
    this.returnsMicros,
    this.shippedItemSalesMicros,
    this.shippedItems,
    this.shippedOrders,
    this.unshippedItems,
    this.unshippedOrders,
  });

  Metrics.fromJson(core.Map _json)
      : this(
          aos: _json.containsKey('aos')
              ? (_json['aos'] as core.num).toDouble()
              : null,
          aovMicros: _json.containsKey('aovMicros')
              ? (_json['aovMicros'] as core.num).toDouble()
              : null,
          clicks: _json.containsKey('clicks')
              ? _json['clicks'] as core.String
              : null,
          ctr: _json.containsKey('ctr')
              ? (_json['ctr'] as core.num).toDouble()
              : null,
          daysToShip: _json.containsKey('daysToShip')
              ? (_json['daysToShip'] as core.num).toDouble()
              : null,
          impressions: _json.containsKey('impressions')
              ? _json['impressions'] as core.String
              : null,
          itemDaysToShip: _json.containsKey('itemDaysToShip')
              ? (_json['itemDaysToShip'] as core.num).toDouble()
              : null,
          itemFillRate: _json.containsKey('itemFillRate')
              ? (_json['itemFillRate'] as core.num).toDouble()
              : null,
          orderedItemSalesMicros: _json.containsKey('orderedItemSalesMicros')
              ? _json['orderedItemSalesMicros'] as core.String
              : null,
          orderedItems: _json.containsKey('orderedItems')
              ? _json['orderedItems'] as core.String
              : null,
          orders: _json.containsKey('orders')
              ? _json['orders'] as core.String
              : null,
          rejectedItems: _json.containsKey('rejectedItems')
              ? _json['rejectedItems'] as core.String
              : null,
          returnRate: _json.containsKey('returnRate')
              ? (_json['returnRate'] as core.num).toDouble()
              : null,
          returnedItems: _json.containsKey('returnedItems')
              ? _json['returnedItems'] as core.String
              : null,
          returnsMicros: _json.containsKey('returnsMicros')
              ? _json['returnsMicros'] as core.String
              : null,
          shippedItemSalesMicros: _json.containsKey('shippedItemSalesMicros')
              ? _json['shippedItemSalesMicros'] as core.String
              : null,
          shippedItems: _json.containsKey('shippedItems')
              ? _json['shippedItems'] as core.String
              : null,
          shippedOrders: _json.containsKey('shippedOrders')
              ? _json['shippedOrders'] as core.String
              : null,
          unshippedItems: _json.containsKey('unshippedItems')
              ? (_json['unshippedItems'] as core.num).toDouble()
              : null,
          unshippedOrders: _json.containsKey('unshippedOrders')
              ? (_json['unshippedOrders'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aos != null) 'aos': aos!,
        if (aovMicros != null) 'aovMicros': aovMicros!,
        if (clicks != null) 'clicks': clicks!,
        if (ctr != null) 'ctr': ctr!,
        if (daysToShip != null) 'daysToShip': daysToShip!,
        if (impressions != null) 'impressions': impressions!,
        if (itemDaysToShip != null) 'itemDaysToShip': itemDaysToShip!,
        if (itemFillRate != null) 'itemFillRate': itemFillRate!,
        if (orderedItemSalesMicros != null)
          'orderedItemSalesMicros': orderedItemSalesMicros!,
        if (orderedItems != null) 'orderedItems': orderedItems!,
        if (orders != null) 'orders': orders!,
        if (rejectedItems != null) 'rejectedItems': rejectedItems!,
        if (returnRate != null) 'returnRate': returnRate!,
        if (returnedItems != null) 'returnedItems': returnedItems!,
        if (returnsMicros != null) 'returnsMicros': returnsMicros!,
        if (shippedItemSalesMicros != null)
          'shippedItemSalesMicros': shippedItemSalesMicros!,
        if (shippedItems != null) 'shippedItems': shippedItems!,
        if (shippedOrders != null) 'shippedOrders': shippedOrders!,
        if (unshippedItems != null) 'unshippedItems': unshippedItems!,
        if (unshippedOrders != null) 'unshippedOrders': unshippedOrders!,
      };
}

class MinimumOrderValueTable {
  core.List<MinimumOrderValueTableStoreCodeSetWithMov>? storeCodeSetWithMovs;

  MinimumOrderValueTable({
    this.storeCodeSetWithMovs,
  });

  MinimumOrderValueTable.fromJson(core.Map _json)
      : this(
          storeCodeSetWithMovs: _json.containsKey('storeCodeSetWithMovs')
              ? (_json['storeCodeSetWithMovs'] as core.List)
                  .map((value) =>
                      MinimumOrderValueTableStoreCodeSetWithMov.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (storeCodeSetWithMovs != null)
          'storeCodeSetWithMovs': storeCodeSetWithMovs!,
      };
}

/// A list of store code sets sharing the same minimum order value.
///
/// At least two sets are required and the last one must be empty, which
/// signifies 'MOV for all other stores'. Each store code can only appear once
/// across all the sets. All prices within a service must have the same
/// currency.
class MinimumOrderValueTableStoreCodeSetWithMov {
  /// A list of unique store codes or empty for the catch all.
  core.List<core.String>? storeCodes;

  /// The minimum order value for the given stores.
  Price? value;

  MinimumOrderValueTableStoreCodeSetWithMov({
    this.storeCodes,
    this.value,
  });

  MinimumOrderValueTableStoreCodeSetWithMov.fromJson(core.Map _json)
      : this(
          storeCodes: _json.containsKey('storeCodes')
              ? (_json['storeCodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          value: _json.containsKey('value')
              ? Price.fromJson(
                  _json['value'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (storeCodes != null) 'storeCodes': storeCodes!,
        if (value != null) 'value': value!,
      };
}

class MonetaryAmount {
  /// The pre-tax or post-tax price depends on the location of the order.
  ///
  /// - For countries (e.g. US) where price attribute excludes tax, this field
  /// corresponds to the pre-tax value. - For coutries (e.g. France) where price
  /// attribute includes tax, this field corresponds to the post-tax value .
  Price? priceAmount;

  /// Tax value, present only for countries where price attribute excludes tax
  /// (e.g. US).
  ///
  /// No tax is referenced as 0 value with the corresponding `currency`.
  Price? taxAmount;

  MonetaryAmount({
    this.priceAmount,
    this.taxAmount,
  });

  MonetaryAmount.fromJson(core.Map _json)
      : this(
          priceAmount: _json.containsKey('priceAmount')
              ? Price.fromJson(
                  _json['priceAmount'] as core.Map<core.String, core.dynamic>)
              : null,
          taxAmount: _json.containsKey('taxAmount')
              ? Price.fromJson(
                  _json['taxAmount'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (priceAmount != null) 'priceAmount': priceAmount!,
        if (taxAmount != null) 'taxAmount': taxAmount!,
      };
}

/// Request message for the OnboardProgram method.
class OnboardBuyOnGoogleProgramRequest {
  /// The customer service email.
  core.String? customerServiceEmail;

  OnboardBuyOnGoogleProgramRequest({
    this.customerServiceEmail,
  });

  OnboardBuyOnGoogleProgramRequest.fromJson(core.Map _json)
      : this(
          customerServiceEmail: _json.containsKey('customerServiceEmail')
              ? _json['customerServiceEmail'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customerServiceEmail != null)
          'customerServiceEmail': customerServiceEmail!,
      };
}

/// Order.
///
/// Production access (all methods) requires the order manager role. Sandbox
/// access does not.
class Order {
  /// Whether the order was acknowledged.
  core.bool? acknowledged;

  /// List of key-value pairs that are attached to a given order.
  core.List<OrderOrderAnnotation>? annotations;

  /// The billing address.
  OrderAddress? billingAddress;

  /// The details of the customer who placed the order.
  OrderCustomer? customer;

  /// Delivery details for shipments of type `delivery`.
  OrderDeliveryDetails? deliveryDetails;

  /// The REST ID of the order.
  ///
  /// Globally unique.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#order`"
  core.String? kind;

  /// Line items that are ordered.
  core.List<OrderLineItem>? lineItems;
  core.String? merchantId;

  /// Merchant-provided ID of the order.
  core.String? merchantOrderId;

  /// The net amount for the order (price part).
  ///
  /// For example, if an order was originally for $100 and a refund was issued
  /// for $20, the net amount will be $80.
  Price? netPriceAmount;

  /// The net amount for the order (tax part).
  ///
  /// Note that in certain cases due to taxable base adjustment `netTaxAmount`
  /// might not match to a sum of tax field across all lineItems and refunds.
  Price? netTaxAmount;

  /// The status of the payment.
  ///
  /// Acceptable values are: - "`paymentCaptured`" - "`paymentRejected`" -
  /// "`paymentSecured`" - "`pendingAuthorization`"
  core.String? paymentStatus;

  /// Pickup details for shipments of type `pickup`.
  OrderPickupDetails? pickupDetails;

  /// The date when the order was placed, in ISO 8601 format.
  core.String? placedDate;

  /// Promotions associated with the order.
  ///
  /// To determine which promotions apply to which products, check the
  /// `Promotions[].appliedItems[].lineItemId` field against the
  /// `LineItems[].id` field for each promotion. If a promotion is applied to
  /// more than 1 offerId, divide the discount value by the number of affected
  /// offers to determine how much discount to apply to each offerId. Examples:
  /// 1. To calculate price paid by the customer for a single line item
  /// including the discount: For each promotion, subtract the
  /// `LineItems[].adjustments[].priceAdjustment.value` amount from the
  /// `LineItems[].Price.value`. 2. To calculate price paid by the customer for
  /// a single line item including the discount in case of multiple quantity:
  /// For each promotion, divide the
  /// `LineItems[].adjustments[].priceAdjustment.value` by the quantity of
  /// products then subtract the resulting value from the
  /// `LineItems[].Product.Price.value` for each quantity item. Only 1 promotion
  /// can be applied to an offerId in a given order. To refund an item which had
  /// a promotion applied to it, make sure to refund the amount after first
  /// subtracting the promotion discount from the item price. More details about
  /// the program are here.
  core.List<OrderPromotion>? promotions;

  /// Refunds for the order.
  core.List<OrderRefund>? refunds;

  /// Shipments of the order.
  core.List<OrderShipment>? shipments;

  /// The total cost of shipping for all items.
  Price? shippingCost;

  /// The tax for the total shipping cost.
  Price? shippingCostTax;

  /// The status of the order.
  ///
  /// Acceptable values are: - "`canceled`" - "`delivered`" - "`inProgress`" -
  /// "`partiallyDelivered`" - "`partiallyReturned`" - "`partiallyShipped`" -
  /// "`pendingShipment`" - "`returned`" - "`shipped`"
  core.String? status;

  /// The party responsible for collecting and remitting taxes.
  ///
  /// Acceptable values are: - "`marketplaceFacilitator`" - "`merchant`"
  core.String? taxCollector;

  Order({
    this.acknowledged,
    this.annotations,
    this.billingAddress,
    this.customer,
    this.deliveryDetails,
    this.id,
    this.kind,
    this.lineItems,
    this.merchantId,
    this.merchantOrderId,
    this.netPriceAmount,
    this.netTaxAmount,
    this.paymentStatus,
    this.pickupDetails,
    this.placedDate,
    this.promotions,
    this.refunds,
    this.shipments,
    this.shippingCost,
    this.shippingCostTax,
    this.status,
    this.taxCollector,
  });

  Order.fromJson(core.Map _json)
      : this(
          acknowledged: _json.containsKey('acknowledged')
              ? _json['acknowledged'] as core.bool
              : null,
          annotations: _json.containsKey('annotations')
              ? (_json['annotations'] as core.List)
                  .map((value) => OrderOrderAnnotation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          billingAddress: _json.containsKey('billingAddress')
              ? OrderAddress.fromJson(_json['billingAddress']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customer: _json.containsKey('customer')
              ? OrderCustomer.fromJson(
                  _json['customer'] as core.Map<core.String, core.dynamic>)
              : null,
          deliveryDetails: _json.containsKey('deliveryDetails')
              ? OrderDeliveryDetails.fromJson(_json['deliveryDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          lineItems: _json.containsKey('lineItems')
              ? (_json['lineItems'] as core.List)
                  .map((value) => OrderLineItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          merchantId: _json.containsKey('merchantId')
              ? _json['merchantId'] as core.String
              : null,
          merchantOrderId: _json.containsKey('merchantOrderId')
              ? _json['merchantOrderId'] as core.String
              : null,
          netPriceAmount: _json.containsKey('netPriceAmount')
              ? Price.fromJson(_json['netPriceAmount']
                  as core.Map<core.String, core.dynamic>)
              : null,
          netTaxAmount: _json.containsKey('netTaxAmount')
              ? Price.fromJson(
                  _json['netTaxAmount'] as core.Map<core.String, core.dynamic>)
              : null,
          paymentStatus: _json.containsKey('paymentStatus')
              ? _json['paymentStatus'] as core.String
              : null,
          pickupDetails: _json.containsKey('pickupDetails')
              ? OrderPickupDetails.fromJson(
                  _json['pickupDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          placedDate: _json.containsKey('placedDate')
              ? _json['placedDate'] as core.String
              : null,
          promotions: _json.containsKey('promotions')
              ? (_json['promotions'] as core.List)
                  .map((value) => OrderPromotion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          refunds: _json.containsKey('refunds')
              ? (_json['refunds'] as core.List)
                  .map((value) => OrderRefund.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shipments: _json.containsKey('shipments')
              ? (_json['shipments'] as core.List)
                  .map((value) => OrderShipment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shippingCost: _json.containsKey('shippingCost')
              ? Price.fromJson(
                  _json['shippingCost'] as core.Map<core.String, core.dynamic>)
              : null,
          shippingCostTax: _json.containsKey('shippingCostTax')
              ? Price.fromJson(_json['shippingCostTax']
                  as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          taxCollector: _json.containsKey('taxCollector')
              ? _json['taxCollector'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acknowledged != null) 'acknowledged': acknowledged!,
        if (annotations != null) 'annotations': annotations!,
        if (billingAddress != null) 'billingAddress': billingAddress!,
        if (customer != null) 'customer': customer!,
        if (deliveryDetails != null) 'deliveryDetails': deliveryDetails!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (lineItems != null) 'lineItems': lineItems!,
        if (merchantId != null) 'merchantId': merchantId!,
        if (merchantOrderId != null) 'merchantOrderId': merchantOrderId!,
        if (netPriceAmount != null) 'netPriceAmount': netPriceAmount!,
        if (netTaxAmount != null) 'netTaxAmount': netTaxAmount!,
        if (paymentStatus != null) 'paymentStatus': paymentStatus!,
        if (pickupDetails != null) 'pickupDetails': pickupDetails!,
        if (placedDate != null) 'placedDate': placedDate!,
        if (promotions != null) 'promotions': promotions!,
        if (refunds != null) 'refunds': refunds!,
        if (shipments != null) 'shipments': shipments!,
        if (shippingCost != null) 'shippingCost': shippingCost!,
        if (shippingCostTax != null) 'shippingCostTax': shippingCostTax!,
        if (status != null) 'status': status!,
        if (taxCollector != null) 'taxCollector': taxCollector!,
      };
}

typedef OrderAddress = $OrderAddress;

class OrderCancellation {
  /// The actor that created the cancellation.
  ///
  /// Acceptable values are: - "`customer`" - "`googleBot`" -
  /// "`googleCustomerService`" - "`googlePayments`" - "`googleSabre`" -
  /// "`merchant`"
  core.String? actor;

  /// Date on which the cancellation has been created, in ISO 8601 format.
  core.String? creationDate;

  /// The quantity that was canceled.
  core.int? quantity;

  /// The reason for the cancellation.
  ///
  /// Orders that are canceled with a noInventory reason will lead to the
  /// removal of the product from Buy on Google until you make an update to that
  /// product. This will not affect your Shopping ads. Acceptable values are: -
  /// "`autoPostInternal`" - "`autoPostInvalidBillingAddress`" -
  /// "`autoPostNoInventory`" - "`autoPostPriceError`" -
  /// "`autoPostUndeliverableShippingAddress`" - "`couponAbuse`" -
  /// "`customerCanceled`" - "`customerInitiatedCancel`" -
  /// "`customerSupportRequested`" - "`failToPushOrderGoogleError`" -
  /// "`failToPushOrderMerchantError`" -
  /// "`failToPushOrderMerchantFulfillmentError`" -
  /// "`failToPushOrderToMerchant`" - "`failToPushOrderToMerchantOutOfStock`" -
  /// "`invalidCoupon`" - "`malformedShippingAddress`" -
  /// "`merchantDidNotShipOnTime`" - "`noInventory`" - "`orderTimeout`" -
  /// "`other`" - "`paymentAbuse`" - "`paymentDeclined`" - "`priceError`" -
  /// "`returnRefundAbuse`" - "`shippingPriceError`" - "`taxError`" -
  /// "`undeliverableShippingAddress`" - "`unsupportedPoBoxAddress`" -
  /// "`failedToCaptureFunds`"
  core.String? reason;

  /// The explanation of the reason.
  core.String? reasonText;

  OrderCancellation({
    this.actor,
    this.creationDate,
    this.quantity,
    this.reason,
    this.reasonText,
  });

  OrderCancellation.fromJson(core.Map _json)
      : this(
          actor:
              _json.containsKey('actor') ? _json['actor'] as core.String : null,
          creationDate: _json.containsKey('creationDate')
              ? _json['creationDate'] as core.String
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.int
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
          reasonText: _json.containsKey('reasonText')
              ? _json['reasonText'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actor != null) 'actor': actor!,
        if (creationDate != null) 'creationDate': creationDate!,
        if (quantity != null) 'quantity': quantity!,
        if (reason != null) 'reason': reason!,
        if (reasonText != null) 'reasonText': reasonText!,
      };
}

class OrderCustomer {
  /// Full name of the customer.
  core.String? fullName;

  /// Email address for the merchant to send value-added tax or invoice
  /// documentation of the order.
  ///
  /// Only the last document sent is made available to the customer. For more
  /// information, see About automated VAT invoicing for Buy on Google.
  core.String? invoiceReceivingEmail;

  /// Loyalty program information.
  OrderCustomerLoyaltyInfo? loyaltyInfo;

  /// Customer's marketing preferences.
  ///
  /// Contains the marketing opt-in information that is current at the time that
  /// the merchant call. User preference selections can change from one order to
  /// the next so preferences must be checked with every order.
  OrderCustomerMarketingRightsInfo? marketingRightsInfo;

  OrderCustomer({
    this.fullName,
    this.invoiceReceivingEmail,
    this.loyaltyInfo,
    this.marketingRightsInfo,
  });

  OrderCustomer.fromJson(core.Map _json)
      : this(
          fullName: _json.containsKey('fullName')
              ? _json['fullName'] as core.String
              : null,
          invoiceReceivingEmail: _json.containsKey('invoiceReceivingEmail')
              ? _json['invoiceReceivingEmail'] as core.String
              : null,
          loyaltyInfo: _json.containsKey('loyaltyInfo')
              ? OrderCustomerLoyaltyInfo.fromJson(
                  _json['loyaltyInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          marketingRightsInfo: _json.containsKey('marketingRightsInfo')
              ? OrderCustomerMarketingRightsInfo.fromJson(
                  _json['marketingRightsInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fullName != null) 'fullName': fullName!,
        if (invoiceReceivingEmail != null)
          'invoiceReceivingEmail': invoiceReceivingEmail!,
        if (loyaltyInfo != null) 'loyaltyInfo': loyaltyInfo!,
        if (marketingRightsInfo != null)
          'marketingRightsInfo': marketingRightsInfo!,
      };
}

class OrderCustomerLoyaltyInfo {
  /// The loyalty card/membership number.
  core.String? loyaltyNumber;

  /// Name of card/membership holder, this field will be populated when
  core.String? name;

  OrderCustomerLoyaltyInfo({
    this.loyaltyNumber,
    this.name,
  });

  OrderCustomerLoyaltyInfo.fromJson(core.Map _json)
      : this(
          loyaltyNumber: _json.containsKey('loyaltyNumber')
              ? _json['loyaltyNumber'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (loyaltyNumber != null) 'loyaltyNumber': loyaltyNumber!,
        if (name != null) 'name': name!,
      };
}

class OrderCustomerMarketingRightsInfo {
  /// Last known customer selection regarding marketing preferences.
  ///
  /// In certain cases this selection might not be known, so this field would be
  /// empty. If a customer selected `granted` in their most recent order, they
  /// can be subscribed to marketing emails. Customers who have chosen `denied`
  /// must not be subscribed, or must be unsubscribed if already opted-in.
  /// Acceptable values are: - "`denied`" - "`granted`"
  core.String? explicitMarketingPreference;

  /// Timestamp when last time marketing preference was updated.
  ///
  /// Could be empty, if user wasn't offered a selection yet.
  core.String? lastUpdatedTimestamp;

  /// Email address that can be used for marketing purposes.
  ///
  /// The field may be empty even if `explicitMarketingPreference` is 'granted'.
  /// This happens when retrieving an old order from the customer who deleted
  /// their account.
  core.String? marketingEmailAddress;

  OrderCustomerMarketingRightsInfo({
    this.explicitMarketingPreference,
    this.lastUpdatedTimestamp,
    this.marketingEmailAddress,
  });

  OrderCustomerMarketingRightsInfo.fromJson(core.Map _json)
      : this(
          explicitMarketingPreference:
              _json.containsKey('explicitMarketingPreference')
                  ? _json['explicitMarketingPreference'] as core.String
                  : null,
          lastUpdatedTimestamp: _json.containsKey('lastUpdatedTimestamp')
              ? _json['lastUpdatedTimestamp'] as core.String
              : null,
          marketingEmailAddress: _json.containsKey('marketingEmailAddress')
              ? _json['marketingEmailAddress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (explicitMarketingPreference != null)
          'explicitMarketingPreference': explicitMarketingPreference!,
        if (lastUpdatedTimestamp != null)
          'lastUpdatedTimestamp': lastUpdatedTimestamp!,
        if (marketingEmailAddress != null)
          'marketingEmailAddress': marketingEmailAddress!,
      };
}

class OrderDeliveryDetails {
  /// The delivery address
  OrderAddress? address;

  /// The phone number of the person receiving the delivery.
  core.String? phoneNumber;

  OrderDeliveryDetails({
    this.address,
    this.phoneNumber,
  });

  OrderDeliveryDetails.fromJson(core.Map _json)
      : this(
          address: _json.containsKey('address')
              ? OrderAddress.fromJson(
                  _json['address'] as core.Map<core.String, core.dynamic>)
              : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
      };
}

class OrderLineItem {
  /// Price and tax adjustments applied on the line item.
  core.List<OrderLineItemAdjustment>? adjustments;

  /// Annotations that are attached to the line item.
  core.List<OrderMerchantProvidedAnnotation>? annotations;

  /// Cancellations of the line item.
  core.List<OrderCancellation>? cancellations;

  /// The ID of the line item.
  core.String? id;

  /// Total price for the line item.
  ///
  /// For example, if two items for $10 are purchased, the total price will be
  /// $20.
  Price? price;

  /// Product data as seen by customer from the time of the order placement.
  ///
  /// Note that certain attributes values (e.g. title or gtin) might be
  /// reformatted and no longer match values submitted via product feed.
  OrderLineItemProduct? product;

  /// Number of items canceled.
  core.int? quantityCanceled;

  /// Number of items delivered.
  core.int? quantityDelivered;

  /// Number of items ordered.
  core.int? quantityOrdered;

  /// Number of items pending.
  core.int? quantityPending;

  /// Number of items ready for pickup.
  core.int? quantityReadyForPickup;

  /// Number of items returned.
  core.int? quantityReturned;

  /// Number of items shipped.
  core.int? quantityShipped;

  /// Number of items undeliverable.
  core.int? quantityUndeliverable;

  /// Details of the return policy for the line item.
  OrderLineItemReturnInfo? returnInfo;

  /// Returns of the line item.
  core.List<OrderReturn>? returns;

  /// Details of the requested shipping for the line item.
  OrderLineItemShippingDetails? shippingDetails;

  /// Total tax amount for the line item.
  ///
  /// For example, if two items are purchased, and each have a cost tax of $2,
  /// the total tax amount will be $4.
  Price? tax;

  OrderLineItem({
    this.adjustments,
    this.annotations,
    this.cancellations,
    this.id,
    this.price,
    this.product,
    this.quantityCanceled,
    this.quantityDelivered,
    this.quantityOrdered,
    this.quantityPending,
    this.quantityReadyForPickup,
    this.quantityReturned,
    this.quantityShipped,
    this.quantityUndeliverable,
    this.returnInfo,
    this.returns,
    this.shippingDetails,
    this.tax,
  });

  OrderLineItem.fromJson(core.Map _json)
      : this(
          adjustments: _json.containsKey('adjustments')
              ? (_json['adjustments'] as core.List)
                  .map((value) => OrderLineItemAdjustment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          annotations: _json.containsKey('annotations')
              ? (_json['annotations'] as core.List)
                  .map((value) => OrderMerchantProvidedAnnotation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          cancellations: _json.containsKey('cancellations')
              ? (_json['cancellations'] as core.List)
                  .map((value) => OrderCancellation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          price: _json.containsKey('price')
              ? Price.fromJson(
                  _json['price'] as core.Map<core.String, core.dynamic>)
              : null,
          product: _json.containsKey('product')
              ? OrderLineItemProduct.fromJson(
                  _json['product'] as core.Map<core.String, core.dynamic>)
              : null,
          quantityCanceled: _json.containsKey('quantityCanceled')
              ? _json['quantityCanceled'] as core.int
              : null,
          quantityDelivered: _json.containsKey('quantityDelivered')
              ? _json['quantityDelivered'] as core.int
              : null,
          quantityOrdered: _json.containsKey('quantityOrdered')
              ? _json['quantityOrdered'] as core.int
              : null,
          quantityPending: _json.containsKey('quantityPending')
              ? _json['quantityPending'] as core.int
              : null,
          quantityReadyForPickup: _json.containsKey('quantityReadyForPickup')
              ? _json['quantityReadyForPickup'] as core.int
              : null,
          quantityReturned: _json.containsKey('quantityReturned')
              ? _json['quantityReturned'] as core.int
              : null,
          quantityShipped: _json.containsKey('quantityShipped')
              ? _json['quantityShipped'] as core.int
              : null,
          quantityUndeliverable: _json.containsKey('quantityUndeliverable')
              ? _json['quantityUndeliverable'] as core.int
              : null,
          returnInfo: _json.containsKey('returnInfo')
              ? OrderLineItemReturnInfo.fromJson(
                  _json['returnInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          returns: _json.containsKey('returns')
              ? (_json['returns'] as core.List)
                  .map((value) => OrderReturn.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shippingDetails: _json.containsKey('shippingDetails')
              ? OrderLineItemShippingDetails.fromJson(_json['shippingDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tax: _json.containsKey('tax')
              ? Price.fromJson(
                  _json['tax'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adjustments != null) 'adjustments': adjustments!,
        if (annotations != null) 'annotations': annotations!,
        if (cancellations != null) 'cancellations': cancellations!,
        if (id != null) 'id': id!,
        if (price != null) 'price': price!,
        if (product != null) 'product': product!,
        if (quantityCanceled != null) 'quantityCanceled': quantityCanceled!,
        if (quantityDelivered != null) 'quantityDelivered': quantityDelivered!,
        if (quantityOrdered != null) 'quantityOrdered': quantityOrdered!,
        if (quantityPending != null) 'quantityPending': quantityPending!,
        if (quantityReadyForPickup != null)
          'quantityReadyForPickup': quantityReadyForPickup!,
        if (quantityReturned != null) 'quantityReturned': quantityReturned!,
        if (quantityShipped != null) 'quantityShipped': quantityShipped!,
        if (quantityUndeliverable != null)
          'quantityUndeliverable': quantityUndeliverable!,
        if (returnInfo != null) 'returnInfo': returnInfo!,
        if (returns != null) 'returns': returns!,
        if (shippingDetails != null) 'shippingDetails': shippingDetails!,
        if (tax != null) 'tax': tax!,
      };
}

class OrderLineItemAdjustment {
  /// Adjustment for total price of the line item.
  Price? priceAdjustment;

  /// Adjustment for total tax of the line item.
  Price? taxAdjustment;

  /// Type of this adjustment.
  ///
  /// Acceptable values are: - "`promotion`"
  core.String? type;

  OrderLineItemAdjustment({
    this.priceAdjustment,
    this.taxAdjustment,
    this.type,
  });

  OrderLineItemAdjustment.fromJson(core.Map _json)
      : this(
          priceAdjustment: _json.containsKey('priceAdjustment')
              ? Price.fromJson(_json['priceAdjustment']
                  as core.Map<core.String, core.dynamic>)
              : null,
          taxAdjustment: _json.containsKey('taxAdjustment')
              ? Price.fromJson(
                  _json['taxAdjustment'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (priceAdjustment != null) 'priceAdjustment': priceAdjustment!,
        if (taxAdjustment != null) 'taxAdjustment': taxAdjustment!,
        if (type != null) 'type': type!,
      };
}

class OrderLineItemProduct {
  /// Brand of the item.
  core.String? brand;

  /// Condition or state of the item.
  ///
  /// Acceptable values are: - "`new`" - "`refurbished`" - "`used`"
  core.String? condition;

  /// The two-letter ISO 639-1 language code for the item.
  core.String? contentLanguage;

  /// Associated fees at order creation time.
  core.List<OrderLineItemProductFee>? fees;

  /// Global Trade Item Number (GTIN) of the item.
  core.String? gtin;

  /// The REST ID of the product.
  core.String? id;

  /// URL of an image of the item.
  core.String? imageLink;

  /// Shared identifier for all variants of the same product.
  core.String? itemGroupId;

  /// Manufacturer Part Number (MPN) of the item.
  core.String? mpn;

  /// An identifier of the item.
  core.String? offerId;

  /// Price of the item.
  Price? price;

  /// URL to the cached image shown to the user when order was placed.
  core.String? shownImage;

  /// The CLDR territory // code of the target country of the product.
  core.String? targetCountry;

  /// The title of the product.
  core.String? title;

  /// Variant attributes for the item.
  ///
  /// These are dimensions of the product, such as color, gender, material,
  /// pattern, and size. You can find a comprehensive list of variant attributes
  /// here.
  core.List<OrderLineItemProductVariantAttribute>? variantAttributes;

  OrderLineItemProduct({
    this.brand,
    this.condition,
    this.contentLanguage,
    this.fees,
    this.gtin,
    this.id,
    this.imageLink,
    this.itemGroupId,
    this.mpn,
    this.offerId,
    this.price,
    this.shownImage,
    this.targetCountry,
    this.title,
    this.variantAttributes,
  });

  OrderLineItemProduct.fromJson(core.Map _json)
      : this(
          brand:
              _json.containsKey('brand') ? _json['brand'] as core.String : null,
          condition: _json.containsKey('condition')
              ? _json['condition'] as core.String
              : null,
          contentLanguage: _json.containsKey('contentLanguage')
              ? _json['contentLanguage'] as core.String
              : null,
          fees: _json.containsKey('fees')
              ? (_json['fees'] as core.List)
                  .map((value) => OrderLineItemProductFee.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          gtin: _json.containsKey('gtin') ? _json['gtin'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          imageLink: _json.containsKey('imageLink')
              ? _json['imageLink'] as core.String
              : null,
          itemGroupId: _json.containsKey('itemGroupId')
              ? _json['itemGroupId'] as core.String
              : null,
          mpn: _json.containsKey('mpn') ? _json['mpn'] as core.String : null,
          offerId: _json.containsKey('offerId')
              ? _json['offerId'] as core.String
              : null,
          price: _json.containsKey('price')
              ? Price.fromJson(
                  _json['price'] as core.Map<core.String, core.dynamic>)
              : null,
          shownImage: _json.containsKey('shownImage')
              ? _json['shownImage'] as core.String
              : null,
          targetCountry: _json.containsKey('targetCountry')
              ? _json['targetCountry'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          variantAttributes: _json.containsKey('variantAttributes')
              ? (_json['variantAttributes'] as core.List)
                  .map((value) => OrderLineItemProductVariantAttribute.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (brand != null) 'brand': brand!,
        if (condition != null) 'condition': condition!,
        if (contentLanguage != null) 'contentLanguage': contentLanguage!,
        if (fees != null) 'fees': fees!,
        if (gtin != null) 'gtin': gtin!,
        if (id != null) 'id': id!,
        if (imageLink != null) 'imageLink': imageLink!,
        if (itemGroupId != null) 'itemGroupId': itemGroupId!,
        if (mpn != null) 'mpn': mpn!,
        if (offerId != null) 'offerId': offerId!,
        if (price != null) 'price': price!,
        if (shownImage != null) 'shownImage': shownImage!,
        if (targetCountry != null) 'targetCountry': targetCountry!,
        if (title != null) 'title': title!,
        if (variantAttributes != null) 'variantAttributes': variantAttributes!,
      };
}

class OrderLineItemProductFee {
  /// Amount of the fee.
  Price? amount;

  /// Name of the fee.
  core.String? name;

  OrderLineItemProductFee({
    this.amount,
    this.name,
  });

  OrderLineItemProductFee.fromJson(core.Map _json)
      : this(
          amount: _json.containsKey('amount')
              ? Price.fromJson(
                  _json['amount'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (amount != null) 'amount': amount!,
        if (name != null) 'name': name!,
      };
}

class OrderLineItemProductVariantAttribute {
  /// The dimension of the variant.
  core.String? dimension;

  /// The value for the dimension.
  core.String? value;

  OrderLineItemProductVariantAttribute({
    this.dimension,
    this.value,
  });

  OrderLineItemProductVariantAttribute.fromJson(core.Map _json)
      : this(
          dimension: _json.containsKey('dimension')
              ? _json['dimension'] as core.String
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimension != null) 'dimension': dimension!,
        if (value != null) 'value': value!,
      };
}

class OrderLineItemReturnInfo {
  /// How many days later the item can be returned.
  ///
  /// Required.
  core.int? daysToReturn;

  /// Whether the item is returnable.
  ///
  /// Required.
  core.bool? isReturnable;

  /// URL of the item return policy.
  ///
  /// Required.
  core.String? policyUrl;

  OrderLineItemReturnInfo({
    this.daysToReturn,
    this.isReturnable,
    this.policyUrl,
  });

  OrderLineItemReturnInfo.fromJson(core.Map _json)
      : this(
          daysToReturn: _json.containsKey('daysToReturn')
              ? _json['daysToReturn'] as core.int
              : null,
          isReturnable: _json.containsKey('isReturnable')
              ? _json['isReturnable'] as core.bool
              : null,
          policyUrl: _json.containsKey('policyUrl')
              ? _json['policyUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (daysToReturn != null) 'daysToReturn': daysToReturn!,
        if (isReturnable != null) 'isReturnable': isReturnable!,
        if (policyUrl != null) 'policyUrl': policyUrl!,
      };
}

class OrderLineItemShippingDetails {
  /// The delivery by date, in ISO 8601 format.
  ///
  /// Required.
  core.String? deliverByDate;

  /// Details of the shipping method.
  ///
  /// Required.
  OrderLineItemShippingDetailsMethod? method;

  /// The promised time in minutes in which the order will be ready for pickup.
  ///
  /// This only applies to buy-online-pickup-in-store same-day order.
  core.int? pickupPromiseInMinutes;

  /// The ship by date, in ISO 8601 format.
  ///
  /// Required.
  core.String? shipByDate;

  /// Type of shipment.
  ///
  /// Indicates whether `deliveryDetails` or `pickupDetails` is applicable for
  /// this shipment. Acceptable values are: - "`delivery`" - "`pickup`"
  core.String? type;

  OrderLineItemShippingDetails({
    this.deliverByDate,
    this.method,
    this.pickupPromiseInMinutes,
    this.shipByDate,
    this.type,
  });

  OrderLineItemShippingDetails.fromJson(core.Map _json)
      : this(
          deliverByDate: _json.containsKey('deliverByDate')
              ? _json['deliverByDate'] as core.String
              : null,
          method: _json.containsKey('method')
              ? OrderLineItemShippingDetailsMethod.fromJson(
                  _json['method'] as core.Map<core.String, core.dynamic>)
              : null,
          pickupPromiseInMinutes: _json.containsKey('pickupPromiseInMinutes')
              ? _json['pickupPromiseInMinutes'] as core.int
              : null,
          shipByDate: _json.containsKey('shipByDate')
              ? _json['shipByDate'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deliverByDate != null) 'deliverByDate': deliverByDate!,
        if (method != null) 'method': method!,
        if (pickupPromiseInMinutes != null)
          'pickupPromiseInMinutes': pickupPromiseInMinutes!,
        if (shipByDate != null) 'shipByDate': shipByDate!,
        if (type != null) 'type': type!,
      };
}

class OrderLineItemShippingDetailsMethod {
  /// The carrier for the shipping.
  ///
  /// Optional. See `shipments[].carrier` for a list of acceptable values.
  core.String? carrier;

  /// Maximum transit time.
  ///
  /// Required.
  core.int? maxDaysInTransit;

  /// The name of the shipping method.
  ///
  /// Required.
  core.String? methodName;

  /// Minimum transit time.
  ///
  /// Required.
  core.int? minDaysInTransit;

  OrderLineItemShippingDetailsMethod({
    this.carrier,
    this.maxDaysInTransit,
    this.methodName,
    this.minDaysInTransit,
  });

  OrderLineItemShippingDetailsMethod.fromJson(core.Map _json)
      : this(
          carrier: _json.containsKey('carrier')
              ? _json['carrier'] as core.String
              : null,
          maxDaysInTransit: _json.containsKey('maxDaysInTransit')
              ? _json['maxDaysInTransit'] as core.int
              : null,
          methodName: _json.containsKey('methodName')
              ? _json['methodName'] as core.String
              : null,
          minDaysInTransit: _json.containsKey('minDaysInTransit')
              ? _json['minDaysInTransit'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (carrier != null) 'carrier': carrier!,
        if (maxDaysInTransit != null) 'maxDaysInTransit': maxDaysInTransit!,
        if (methodName != null) 'methodName': methodName!,
        if (minDaysInTransit != null) 'minDaysInTransit': minDaysInTransit!,
      };
}

class OrderMerchantProvidedAnnotation {
  /// Key for additional merchant provided (as key-value pairs) annotation about
  /// the line item.
  core.String? key;

  /// Value for additional merchant provided (as key-value pairs) annotation
  /// about the line item.
  core.String? value;

  OrderMerchantProvidedAnnotation({
    this.key,
    this.value,
  });

  OrderMerchantProvidedAnnotation.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

class OrderOrderAnnotation {
  /// Key for additional google provided (as key-value pairs) annotation.
  core.String? key;

  /// Value for additional google provided (as key-value pairs) annotation.
  core.String? value;

  OrderOrderAnnotation({
    this.key,
    this.value,
  });

  OrderOrderAnnotation.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

class OrderPickupDetails {
  /// Address of the pickup location where the shipment should be sent.
  ///
  /// Note that `recipientName` in the address is the name of the business at
  /// the pickup location.
  OrderAddress? address;

  /// Collectors authorized to pick up shipment from the pickup location.
  core.List<OrderPickupDetailsCollector>? collectors;

  /// ID of the pickup location.
  core.String? locationId;

  /// The pickup type of this order.
  ///
  /// Acceptable values are: - "`merchantStore`" - "`merchantStoreCurbside`" -
  /// "`merchantStoreLocker`" - "`thirdPartyPickupPoint`" - "`thirdPartyLocker`"
  core.String? pickupType;

  OrderPickupDetails({
    this.address,
    this.collectors,
    this.locationId,
    this.pickupType,
  });

  OrderPickupDetails.fromJson(core.Map _json)
      : this(
          address: _json.containsKey('address')
              ? OrderAddress.fromJson(
                  _json['address'] as core.Map<core.String, core.dynamic>)
              : null,
          collectors: _json.containsKey('collectors')
              ? (_json['collectors'] as core.List)
                  .map((value) => OrderPickupDetailsCollector.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          pickupType: _json.containsKey('pickupType')
              ? _json['pickupType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (collectors != null) 'collectors': collectors!,
        if (locationId != null) 'locationId': locationId!,
        if (pickupType != null) 'pickupType': pickupType!,
      };
}

class OrderPickupDetailsCollector {
  /// Name of the person picking up the shipment.
  core.String? name;

  /// Phone number of the person picking up the shipment.
  core.String? phoneNumber;

  OrderPickupDetailsCollector({
    this.name,
    this.phoneNumber,
  });

  OrderPickupDetailsCollector.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
      };
}

class OrderPromotion {
  /// Items that this promotion may be applied to.
  ///
  /// If empty, there are no restrictions on applicable items and quantity. This
  /// field will also be empty for shipping promotions because shipping is not
  /// tied to any specific item.
  core.List<OrderPromotionItem>? applicableItems;

  /// Items that this promotion have been applied to.
  ///
  /// Do not provide for `orders.createtestorder`. This field will be empty for
  /// shipping promotions because shipping is not tied to any specific item.
  core.List<OrderPromotionItem>? appliedItems;

  /// Promotion end time in ISO 8601 format.
  ///
  /// Date, time, and offset required, e.g., "2020-01-02T09:00:00+01:00" or
  /// "2020-01-02T09:00:00Z".
  core.String? endTime;

  /// The party funding the promotion.
  ///
  /// Only `merchant` is supported for `orders.createtestorder`. Acceptable
  /// values are: - "`google`" - "`merchant`"
  ///
  /// Required.
  core.String? funder;

  /// This field is used to identify promotions within merchants' own systems.
  ///
  /// Required.
  core.String? merchantPromotionId;

  /// Estimated discount applied to price.
  ///
  /// Amount is pre-tax or post-tax depending on location of order.
  Price? priceValue;

  /// A short title of the promotion to be shown on the checkout page.
  ///
  /// Do not provide for `orders.createtestorder`.
  core.String? shortTitle;

  /// Promotion start time in ISO 8601 format.
  ///
  /// Date, time, and offset required, e.g., "2020-01-02T09:00:00+01:00" or
  /// "2020-01-02T09:00:00Z".
  core.String? startTime;

  /// The category of the promotion.
  ///
  /// Only `moneyOff` is supported for `orders.createtestorder`. Acceptable
  /// values are: - "`buyMGetMoneyOff`" - "`buyMGetNMoneyOff`" -
  /// "`buyMGetNPercentOff`" - "`buyMGetPercentOff`" - "`freeGift`" -
  /// "`freeGiftWithItemId`" - "`freeGiftWithValue`" - "`freeShippingOvernight`"
  /// - "`freeShippingStandard`" - "`freeShippingTwoDay`" - "`moneyOff`" -
  /// "`percentOff`" - "`rewardPoints`" - "`salePrice`"
  ///
  /// Required.
  core.String? subtype;

  /// Estimated discount applied to tax (if allowed by law).
  ///
  /// Do not provide for `orders.createtestorder`.
  Price? taxValue;

  /// The title of the promotion.
  ///
  /// Required.
  core.String? title;

  /// The scope of the promotion.
  ///
  /// Only `product` is supported for `orders.createtestorder`. Acceptable
  /// values are: - "`product`" - "`shipping`"
  ///
  /// Required.
  core.String? type;

  OrderPromotion({
    this.applicableItems,
    this.appliedItems,
    this.endTime,
    this.funder,
    this.merchantPromotionId,
    this.priceValue,
    this.shortTitle,
    this.startTime,
    this.subtype,
    this.taxValue,
    this.title,
    this.type,
  });

  OrderPromotion.fromJson(core.Map _json)
      : this(
          applicableItems: _json.containsKey('applicableItems')
              ? (_json['applicableItems'] as core.List)
                  .map((value) => OrderPromotionItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          appliedItems: _json.containsKey('appliedItems')
              ? (_json['appliedItems'] as core.List)
                  .map((value) => OrderPromotionItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          funder: _json.containsKey('funder')
              ? _json['funder'] as core.String
              : null,
          merchantPromotionId: _json.containsKey('merchantPromotionId')
              ? _json['merchantPromotionId'] as core.String
              : null,
          priceValue: _json.containsKey('priceValue')
              ? Price.fromJson(
                  _json['priceValue'] as core.Map<core.String, core.dynamic>)
              : null,
          shortTitle: _json.containsKey('shortTitle')
              ? _json['shortTitle'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          subtype: _json.containsKey('subtype')
              ? _json['subtype'] as core.String
              : null,
          taxValue: _json.containsKey('taxValue')
              ? Price.fromJson(
                  _json['taxValue'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applicableItems != null) 'applicableItems': applicableItems!,
        if (appliedItems != null) 'appliedItems': appliedItems!,
        if (endTime != null) 'endTime': endTime!,
        if (funder != null) 'funder': funder!,
        if (merchantPromotionId != null)
          'merchantPromotionId': merchantPromotionId!,
        if (priceValue != null) 'priceValue': priceValue!,
        if (shortTitle != null) 'shortTitle': shortTitle!,
        if (startTime != null) 'startTime': startTime!,
        if (subtype != null) 'subtype': subtype!,
        if (taxValue != null) 'taxValue': taxValue!,
        if (title != null) 'title': title!,
        if (type != null) 'type': type!,
      };
}

class OrderPromotionItem {
  /// The line item ID of a product.
  ///
  /// Do not provide for `orders.createtestorder`.
  core.String? lineItemId;

  /// Offer ID of a product.
  ///
  /// Only for `orders.createtestorder`.
  ///
  /// Required.
  core.String? offerId;

  /// `orders.createtestorder`.
  core.String? productId;

  /// The quantity of the associated product.
  ///
  /// Do not provide for `orders.createtestorder`.
  core.int? quantity;

  OrderPromotionItem({
    this.lineItemId,
    this.offerId,
    this.productId,
    this.quantity,
  });

  OrderPromotionItem.fromJson(core.Map _json)
      : this(
          lineItemId: _json.containsKey('lineItemId')
              ? _json['lineItemId'] as core.String
              : null,
          offerId: _json.containsKey('offerId')
              ? _json['offerId'] as core.String
              : null,
          productId: _json.containsKey('productId')
              ? _json['productId'] as core.String
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lineItemId != null) 'lineItemId': lineItemId!,
        if (offerId != null) 'offerId': offerId!,
        if (productId != null) 'productId': productId!,
        if (quantity != null) 'quantity': quantity!,
      };
}

class OrderRefund {
  /// The actor that created the refund.
  ///
  /// Acceptable values are: - "`customer`" - "`googleBot`" -
  /// "`googleCustomerService`" - "`googlePayments`" - "`googleSabre`" -
  /// "`merchant`"
  core.String? actor;

  /// The amount that is refunded.
  Price? amount;

  /// Date on which the item has been created, in ISO 8601 format.
  core.String? creationDate;

  /// The reason for the refund.
  ///
  /// Acceptable values are: - "`adjustment`" - "`autoPostInternal`" -
  /// "`autoPostInvalidBillingAddress`" - "`autoPostNoInventory`" -
  /// "`autoPostPriceError`" - "`autoPostUndeliverableShippingAddress`" -
  /// "`couponAbuse`" - "`courtesyAdjustment`" - "`customerCanceled`" -
  /// "`customerDiscretionaryReturn`" - "`customerInitiatedMerchantCancel`" -
  /// "`customerSupportRequested`" - "`deliveredLateByCarrier`" -
  /// "`deliveredTooLate`" - "`expiredItem`" - "`failToPushOrderGoogleError`" -
  /// "`failToPushOrderMerchantError`" -
  /// "`failToPushOrderMerchantFulfillmentError`" -
  /// "`failToPushOrderToMerchant`" - "`failToPushOrderToMerchantOutOfStock`" -
  /// "`feeAdjustment`" - "`invalidCoupon`" - "`lateShipmentCredit`" -
  /// "`malformedShippingAddress`" - "`merchantDidNotShipOnTime`" -
  /// "`noInventory`" - "`orderTimeout`" - "`other`" - "`paymentAbuse`" -
  /// "`paymentDeclined`" - "`priceAdjustment`" - "`priceError`" -
  /// "`productArrivedDamaged`" - "`productNotAsDescribed`" -
  /// "`promoReallocation`" - "`qualityNotAsExpected`" - "`returnRefundAbuse`" -
  /// "`shippingCostAdjustment`" - "`shippingPriceError`" - "`taxAdjustment`" -
  /// "`taxError`" - "`undeliverableShippingAddress`" -
  /// "`unsupportedPoBoxAddress`" - "`wrongProductShipped`"
  core.String? reason;

  /// The explanation of the reason.
  core.String? reasonText;

  OrderRefund({
    this.actor,
    this.amount,
    this.creationDate,
    this.reason,
    this.reasonText,
  });

  OrderRefund.fromJson(core.Map _json)
      : this(
          actor:
              _json.containsKey('actor') ? _json['actor'] as core.String : null,
          amount: _json.containsKey('amount')
              ? Price.fromJson(
                  _json['amount'] as core.Map<core.String, core.dynamic>)
              : null,
          creationDate: _json.containsKey('creationDate')
              ? _json['creationDate'] as core.String
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
          reasonText: _json.containsKey('reasonText')
              ? _json['reasonText'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actor != null) 'actor': actor!,
        if (amount != null) 'amount': amount!,
        if (creationDate != null) 'creationDate': creationDate!,
        if (reason != null) 'reason': reason!,
        if (reasonText != null) 'reasonText': reasonText!,
      };
}

/// Order disbursement.
///
/// All methods require the payment analyst role.
class OrderReportDisbursement {
  /// The disbursement amount.
  Price? disbursementAmount;

  /// The disbursement date, in ISO 8601 format.
  core.String? disbursementCreationDate;

  /// The date the disbursement was initiated, in ISO 8601 format.
  core.String? disbursementDate;

  /// The ID of the disbursement.
  core.String? disbursementId;

  /// The ID of the managing account.
  core.String? merchantId;

  OrderReportDisbursement({
    this.disbursementAmount,
    this.disbursementCreationDate,
    this.disbursementDate,
    this.disbursementId,
    this.merchantId,
  });

  OrderReportDisbursement.fromJson(core.Map _json)
      : this(
          disbursementAmount: _json.containsKey('disbursementAmount')
              ? Price.fromJson(_json['disbursementAmount']
                  as core.Map<core.String, core.dynamic>)
              : null,
          disbursementCreationDate:
              _json.containsKey('disbursementCreationDate')
                  ? _json['disbursementCreationDate'] as core.String
                  : null,
          disbursementDate: _json.containsKey('disbursementDate')
              ? _json['disbursementDate'] as core.String
              : null,
          disbursementId: _json.containsKey('disbursementId')
              ? _json['disbursementId'] as core.String
              : null,
          merchantId: _json.containsKey('merchantId')
              ? _json['merchantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disbursementAmount != null)
          'disbursementAmount': disbursementAmount!,
        if (disbursementCreationDate != null)
          'disbursementCreationDate': disbursementCreationDate!,
        if (disbursementDate != null) 'disbursementDate': disbursementDate!,
        if (disbursementId != null) 'disbursementId': disbursementId!,
        if (merchantId != null) 'merchantId': merchantId!,
      };
}

class OrderReportTransaction {
  /// The disbursement amount.
  Price? disbursementAmount;

  /// The date the disbursement was created, in ISO 8601 format.
  core.String? disbursementCreationDate;

  /// The date the disbursement was initiated, in ISO 8601 format.
  core.String? disbursementDate;

  /// The ID of the disbursement.
  core.String? disbursementId;

  /// The ID of the managing account.
  core.String? merchantId;

  /// Merchant-provided ID of the order.
  core.String? merchantOrderId;

  /// The ID of the order.
  core.String? orderId;

  /// Total amount for the items.
  ProductAmount? productAmount;

  /// The date of the transaction, in ISO 8601 format.
  core.String? transactionDate;

  OrderReportTransaction({
    this.disbursementAmount,
    this.disbursementCreationDate,
    this.disbursementDate,
    this.disbursementId,
    this.merchantId,
    this.merchantOrderId,
    this.orderId,
    this.productAmount,
    this.transactionDate,
  });

  OrderReportTransaction.fromJson(core.Map _json)
      : this(
          disbursementAmount: _json.containsKey('disbursementAmount')
              ? Price.fromJson(_json['disbursementAmount']
                  as core.Map<core.String, core.dynamic>)
              : null,
          disbursementCreationDate:
              _json.containsKey('disbursementCreationDate')
                  ? _json['disbursementCreationDate'] as core.String
                  : null,
          disbursementDate: _json.containsKey('disbursementDate')
              ? _json['disbursementDate'] as core.String
              : null,
          disbursementId: _json.containsKey('disbursementId')
              ? _json['disbursementId'] as core.String
              : null,
          merchantId: _json.containsKey('merchantId')
              ? _json['merchantId'] as core.String
              : null,
          merchantOrderId: _json.containsKey('merchantOrderId')
              ? _json['merchantOrderId'] as core.String
              : null,
          orderId: _json.containsKey('orderId')
              ? _json['orderId'] as core.String
              : null,
          productAmount: _json.containsKey('productAmount')
              ? ProductAmount.fromJson(
                  _json['productAmount'] as core.Map<core.String, core.dynamic>)
              : null,
          transactionDate: _json.containsKey('transactionDate')
              ? _json['transactionDate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disbursementAmount != null)
          'disbursementAmount': disbursementAmount!,
        if (disbursementCreationDate != null)
          'disbursementCreationDate': disbursementCreationDate!,
        if (disbursementDate != null) 'disbursementDate': disbursementDate!,
        if (disbursementId != null) 'disbursementId': disbursementId!,
        if (merchantId != null) 'merchantId': merchantId!,
        if (merchantOrderId != null) 'merchantOrderId': merchantOrderId!,
        if (orderId != null) 'orderId': orderId!,
        if (productAmount != null) 'productAmount': productAmount!,
        if (transactionDate != null) 'transactionDate': transactionDate!,
      };
}

class OrderReturn {
  /// The actor that created the refund.
  ///
  /// Acceptable values are: - "`customer`" - "`googleBot`" -
  /// "`googleCustomerService`" - "`googlePayments`" - "`googleSabre`" -
  /// "`merchant`"
  core.String? actor;

  /// Date on which the item has been created, in ISO 8601 format.
  core.String? creationDate;

  /// Quantity that is returned.
  core.int? quantity;

  /// The reason for the return.
  ///
  /// Acceptable values are: - "`customerDiscretionaryReturn`" -
  /// "`customerInitiatedMerchantCancel`" - "`deliveredTooLate`" -
  /// "`expiredItem`" - "`invalidCoupon`" - "`malformedShippingAddress`" -
  /// "`other`" - "`productArrivedDamaged`" - "`productNotAsDescribed`" -
  /// "`qualityNotAsExpected`" - "`undeliverableShippingAddress`" -
  /// "`unsupportedPoBoxAddress`" - "`wrongProductShipped`"
  core.String? reason;

  /// The explanation of the reason.
  core.String? reasonText;

  OrderReturn({
    this.actor,
    this.creationDate,
    this.quantity,
    this.reason,
    this.reasonText,
  });

  OrderReturn.fromJson(core.Map _json)
      : this(
          actor:
              _json.containsKey('actor') ? _json['actor'] as core.String : null,
          creationDate: _json.containsKey('creationDate')
              ? _json['creationDate'] as core.String
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.int
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
          reasonText: _json.containsKey('reasonText')
              ? _json['reasonText'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actor != null) 'actor': actor!,
        if (creationDate != null) 'creationDate': creationDate!,
        if (quantity != null) 'quantity': quantity!,
        if (reason != null) 'reason': reason!,
        if (reasonText != null) 'reasonText': reasonText!,
      };
}

class OrderShipment {
  /// The carrier handling the shipment.
  ///
  /// For supported carriers, Google includes the carrier name and tracking URL
  /// in emails to customers. For select supported carriers, Google also
  /// automatically updates the shipment status based on the provided shipment
  /// ID. *Note:* You can also use unsupported carriers, but emails to customers
  /// will not include the carrier name or tracking URL, and there will be no
  /// automatic order status updates. Supported carriers for US are: - "`ups`"
  /// (United Parcel Service) *automatic status updates* - "`usps`" (United
  /// States Postal Service) *automatic status updates* - "`fedex`" (FedEx)
  /// *automatic status updates * - "`dhl`" (DHL eCommerce) *automatic status
  /// updates* (US only) - "`ontrac`" (OnTrac) *automatic status updates * -
  /// "`dhl express`" (DHL Express) - "`deliv`" (Deliv) - "`dynamex`" (TForce) -
  /// "`lasership`" (LaserShip) - "`mpx`" (Military Parcel Xpress) - "`uds`"
  /// (United Delivery Service) - "`efw`" (Estes Forwarding Worldwide) - "`jd
  /// logistics`" (JD Logistics) - "`yunexpress`" (YunExpress) - "`china post`"
  /// (China Post) - "`china ems`" (China Post Express Mail Service) -
  /// "`singapore post`" (Singapore Post) - "`pos malaysia`" (Pos Malaysia) -
  /// "`postnl`" (PostNL) - "`ptt`" (PTT Turkish Post) - "`eub`" (ePacket) -
  /// "`chukou1`" (Chukou1 Logistics) - "`bestex`" (Best Express) - "`canada
  /// post`" (Canada Post) - "`purolator`" (Purolator) - "`canpar`" (Canpar) -
  /// "`india post`" (India Post) - "`blue dart`" (Blue Dart) - "`delhivery`"
  /// (Delhivery) - "`dtdc`" (DTDC) - "`tpc india`" (TPC India) - "`lso`" (Lone
  /// Star Overnight) - "`tww`" (Team Worldwide) Supported carriers for FR are:
  /// - "`la poste`" (La Poste) *automatic status updates * - "`colissimo`"
  /// (Colissimo by La Poste) *automatic status updates* - "`ups`" (United
  /// Parcel Service) *automatic status updates * - "`chronopost`" (Chronopost
  /// by La Poste) - "`gls`" (General Logistics Systems France) - "`dpd`" (DPD
  /// Group by GeoPost) - "`bpost`" (Belgian Post Group) - "`colis prive`"
  /// (Colis Privé) - "`boxtal`" (Boxtal) - "`geodis`" (GEODIS) - "`tnt`" (TNT)
  /// - "`db schenker`" (DB Schenker) - "`aramex`" (Aramex)
  core.String? carrier;

  /// Date on which the shipment has been created, in ISO 8601 format.
  core.String? creationDate;

  /// Date on which the shipment has been delivered, in ISO 8601 format.
  ///
  /// Present only if `status` is `delivered`
  core.String? deliveryDate;

  /// The ID of the shipment.
  core.String? id;

  /// The line items that are shipped.
  core.List<OrderShipmentLineItemShipment>? lineItems;

  /// Delivery details of the shipment if scheduling is needed.
  OrderShipmentScheduledDeliveryDetails? scheduledDeliveryDetails;

  /// The shipment group ID of the shipment.
  ///
  /// This is set in shiplineitems request.
  core.String? shipmentGroupId;

  /// The status of the shipment.
  ///
  /// Acceptable values are: - "`delivered`" - "`readyForPickup`" - "`shipped`"
  /// - "`undeliverable`"
  core.String? status;

  /// The tracking ID for the shipment.
  core.String? trackingId;

  OrderShipment({
    this.carrier,
    this.creationDate,
    this.deliveryDate,
    this.id,
    this.lineItems,
    this.scheduledDeliveryDetails,
    this.shipmentGroupId,
    this.status,
    this.trackingId,
  });

  OrderShipment.fromJson(core.Map _json)
      : this(
          carrier: _json.containsKey('carrier')
              ? _json['carrier'] as core.String
              : null,
          creationDate: _json.containsKey('creationDate')
              ? _json['creationDate'] as core.String
              : null,
          deliveryDate: _json.containsKey('deliveryDate')
              ? _json['deliveryDate'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          lineItems: _json.containsKey('lineItems')
              ? (_json['lineItems'] as core.List)
                  .map((value) => OrderShipmentLineItemShipment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          scheduledDeliveryDetails:
              _json.containsKey('scheduledDeliveryDetails')
                  ? OrderShipmentScheduledDeliveryDetails.fromJson(
                      _json['scheduledDeliveryDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          shipmentGroupId: _json.containsKey('shipmentGroupId')
              ? _json['shipmentGroupId'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          trackingId: _json.containsKey('trackingId')
              ? _json['trackingId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (carrier != null) 'carrier': carrier!,
        if (creationDate != null) 'creationDate': creationDate!,
        if (deliveryDate != null) 'deliveryDate': deliveryDate!,
        if (id != null) 'id': id!,
        if (lineItems != null) 'lineItems': lineItems!,
        if (scheduledDeliveryDetails != null)
          'scheduledDeliveryDetails': scheduledDeliveryDetails!,
        if (shipmentGroupId != null) 'shipmentGroupId': shipmentGroupId!,
        if (status != null) 'status': status!,
        if (trackingId != null) 'trackingId': trackingId!,
      };
}

class OrderShipmentLineItemShipment {
  /// The ID of the line item that is shipped.
  ///
  /// This value is assigned by Google when an order is created. Either
  /// lineItemId or productId is required.
  core.String? lineItemId;

  /// The ID of the product to ship.
  ///
  /// This is the REST ID used in the products service. Either lineItemId or
  /// productId is required.
  core.String? productId;

  /// The quantity that is shipped.
  core.int? quantity;

  OrderShipmentLineItemShipment({
    this.lineItemId,
    this.productId,
    this.quantity,
  });

  OrderShipmentLineItemShipment.fromJson(core.Map _json)
      : this(
          lineItemId: _json.containsKey('lineItemId')
              ? _json['lineItemId'] as core.String
              : null,
          productId: _json.containsKey('productId')
              ? _json['productId'] as core.String
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lineItemId != null) 'lineItemId': lineItemId!,
        if (productId != null) 'productId': productId!,
        if (quantity != null) 'quantity': quantity!,
      };
}

class OrderShipmentScheduledDeliveryDetails {
  /// The phone number of the carrier fulfilling the delivery.
  ///
  /// The phone number is formatted as the international notation in ITU-T
  /// Recommendation E.123 (e.g., "+41 44 668 1800").
  core.String? carrierPhoneNumber;

  /// The date a shipment is scheduled for delivery, in ISO 8601 format.
  core.String? scheduledDate;

  OrderShipmentScheduledDeliveryDetails({
    this.carrierPhoneNumber,
    this.scheduledDate,
  });

  OrderShipmentScheduledDeliveryDetails.fromJson(core.Map _json)
      : this(
          carrierPhoneNumber: _json.containsKey('carrierPhoneNumber')
              ? _json['carrierPhoneNumber'] as core.String
              : null,
          scheduledDate: _json.containsKey('scheduledDate')
              ? _json['scheduledDate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (carrierPhoneNumber != null)
          'carrierPhoneNumber': carrierPhoneNumber!,
        if (scheduledDate != null) 'scheduledDate': scheduledDate!,
      };
}

/// Represents a merchant trade from which signals are extracted, e.g. shipping.
class OrderTrackingSignal {
  /// The shipping fee of the order; this value should be set to zero in the
  /// case of free shipping.
  PriceAmount? customerShippingFee;

  /// The delivery postal code, as a continuous string without spaces or dashes,
  /// e.g. "95016".
  ///
  /// This field will be anonymized in returned OrderTrackingSignal creation
  /// response.
  ///
  /// Required.
  core.String? deliveryPostalCode;

  /// The
  /// [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
  /// for the shipping destination.
  ///
  /// Required.
  core.String? deliveryRegionCode;

  /// Information about line items in the order.
  core.List<OrderTrackingSignalLineItemDetails>? lineItems;

  /// The Google merchant ID of this order tracking signal.
  ///
  /// This value is optional. If left unset, the caller's merchant ID is used.
  /// You must request access in order to provide data on behalf of another
  /// merchant. For more information, see \[Submitting Order Tracking
  /// Signals\](/shopping-content/guides/order-tracking-signals).
  core.String? merchantId;

  /// The time when the order was created on the merchant side.
  ///
  /// Include the year and timezone string, if available.
  ///
  /// Required.
  DateTime? orderCreatedTime;

  /// The ID of the order on the merchant side.
  ///
  /// This field will be hashed in returned OrderTrackingSignal creation
  /// response.
  ///
  /// Required.
  core.String? orderId;

  /// The ID that uniquely identifies this order tracking signal.
  ///
  /// Output only.
  core.String? orderTrackingSignalId;

  /// The mapping of the line items to the shipment information.
  core.List<OrderTrackingSignalShipmentLineItemMapping>?
      shipmentLineItemMapping;

  /// The shipping information for the order.
  core.List<OrderTrackingSignalShippingInfo>? shippingInfo;

  OrderTrackingSignal({
    this.customerShippingFee,
    this.deliveryPostalCode,
    this.deliveryRegionCode,
    this.lineItems,
    this.merchantId,
    this.orderCreatedTime,
    this.orderId,
    this.orderTrackingSignalId,
    this.shipmentLineItemMapping,
    this.shippingInfo,
  });

  OrderTrackingSignal.fromJson(core.Map _json)
      : this(
          customerShippingFee: _json.containsKey('customerShippingFee')
              ? PriceAmount.fromJson(_json['customerShippingFee']
                  as core.Map<core.String, core.dynamic>)
              : null,
          deliveryPostalCode: _json.containsKey('deliveryPostalCode')
              ? _json['deliveryPostalCode'] as core.String
              : null,
          deliveryRegionCode: _json.containsKey('deliveryRegionCode')
              ? _json['deliveryRegionCode'] as core.String
              : null,
          lineItems: _json.containsKey('lineItems')
              ? (_json['lineItems'] as core.List)
                  .map((value) => OrderTrackingSignalLineItemDetails.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          merchantId: _json.containsKey('merchantId')
              ? _json['merchantId'] as core.String
              : null,
          orderCreatedTime: _json.containsKey('orderCreatedTime')
              ? DateTime.fromJson(_json['orderCreatedTime']
                  as core.Map<core.String, core.dynamic>)
              : null,
          orderId: _json.containsKey('orderId')
              ? _json['orderId'] as core.String
              : null,
          orderTrackingSignalId: _json.containsKey('orderTrackingSignalId')
              ? _json['orderTrackingSignalId'] as core.String
              : null,
          shipmentLineItemMapping: _json.containsKey('shipmentLineItemMapping')
              ? (_json['shipmentLineItemMapping'] as core.List)
                  .map((value) =>
                      OrderTrackingSignalShipmentLineItemMapping.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shippingInfo: _json.containsKey('shippingInfo')
              ? (_json['shippingInfo'] as core.List)
                  .map((value) => OrderTrackingSignalShippingInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customerShippingFee != null)
          'customerShippingFee': customerShippingFee!,
        if (deliveryPostalCode != null)
          'deliveryPostalCode': deliveryPostalCode!,
        if (deliveryRegionCode != null)
          'deliveryRegionCode': deliveryRegionCode!,
        if (lineItems != null) 'lineItems': lineItems!,
        if (merchantId != null) 'merchantId': merchantId!,
        if (orderCreatedTime != null) 'orderCreatedTime': orderCreatedTime!,
        if (orderId != null) 'orderId': orderId!,
        if (orderTrackingSignalId != null)
          'orderTrackingSignalId': orderTrackingSignalId!,
        if (shipmentLineItemMapping != null)
          'shipmentLineItemMapping': shipmentLineItemMapping!,
        if (shippingInfo != null) 'shippingInfo': shippingInfo!,
      };
}

/// The line items of the order.
class OrderTrackingSignalLineItemDetails {
  /// The Global Trade Item Number.
  core.String? gtin;

  /// The ID for this line item.
  ///
  /// Required.
  core.String? lineItemId;

  /// The manufacturer part number.
  core.String? mpn;

  /// Plain text description of this product.
  core.String? productDescription;

  /// The Content API REST ID of the product, in the form
  /// channel:contentLanguage:targetCountry:offerId.
  ///
  /// Required.
  core.String? productId;

  /// The quantity of the line item in the order.
  ///
  /// Required.
  core.String? quantity;

  /// Merchant SKU for this item.
  core.String? sku;

  /// Universal product code for this item.
  core.String? upc;

  OrderTrackingSignalLineItemDetails({
    this.gtin,
    this.lineItemId,
    this.mpn,
    this.productDescription,
    this.productId,
    this.quantity,
    this.sku,
    this.upc,
  });

  OrderTrackingSignalLineItemDetails.fromJson(core.Map _json)
      : this(
          gtin: _json.containsKey('gtin') ? _json['gtin'] as core.String : null,
          lineItemId: _json.containsKey('lineItemId')
              ? _json['lineItemId'] as core.String
              : null,
          mpn: _json.containsKey('mpn') ? _json['mpn'] as core.String : null,
          productDescription: _json.containsKey('productDescription')
              ? _json['productDescription'] as core.String
              : null,
          productId: _json.containsKey('productId')
              ? _json['productId'] as core.String
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.String
              : null,
          sku: _json.containsKey('sku') ? _json['sku'] as core.String : null,
          upc: _json.containsKey('upc') ? _json['upc'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gtin != null) 'gtin': gtin!,
        if (lineItemId != null) 'lineItemId': lineItemId!,
        if (mpn != null) 'mpn': mpn!,
        if (productDescription != null)
          'productDescription': productDescription!,
        if (productId != null) 'productId': productId!,
        if (quantity != null) 'quantity': quantity!,
        if (sku != null) 'sku': sku!,
        if (upc != null) 'upc': upc!,
      };
}

/// Represents how many items are in the shipment for the given shipment_id and
/// line_item_id.
class OrderTrackingSignalShipmentLineItemMapping {
  /// The line item ID.
  ///
  /// Required.
  core.String? lineItemId;

  /// The line item quantity in the shipment.
  ///
  /// Required.
  core.String? quantity;

  /// The shipment ID.
  ///
  /// This field will be hashed in returned OrderTrackingSignal creation
  /// response.
  ///
  /// Required.
  core.String? shipmentId;

  OrderTrackingSignalShipmentLineItemMapping({
    this.lineItemId,
    this.quantity,
    this.shipmentId,
  });

  OrderTrackingSignalShipmentLineItemMapping.fromJson(core.Map _json)
      : this(
          lineItemId: _json.containsKey('lineItemId')
              ? _json['lineItemId'] as core.String
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.String
              : null,
          shipmentId: _json.containsKey('shipmentId')
              ? _json['shipmentId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lineItemId != null) 'lineItemId': lineItemId!,
        if (quantity != null) 'quantity': quantity!,
        if (shipmentId != null) 'shipmentId': shipmentId!,
      };
}

/// The shipping information for the order.
class OrderTrackingSignalShippingInfo {
  /// The time when the shipment was actually delivered.
  ///
  /// Include the year and timezone string, if available. This field is
  /// required, if one of the following fields is absent: tracking_id or
  /// carrier_name.
  DateTime? actualDeliveryTime;

  /// The name of the shipping carrier for the delivery.
  ///
  /// This field is required if one of the following fields is absent:
  /// earliest_delivery_promise_time, latest_delivery_promise_time, and
  /// actual_delivery_time.
  core.String? carrierName;

  /// The service type for fulfillment, e.g., GROUND, FIRST_CLASS, etc.
  core.String? carrierServiceName;

  /// The earliest delivery promised time.
  ///
  /// Include the year and timezone string, if available. This field is
  /// required, if one of the following fields is absent: tracking_id or
  /// carrier_name.
  DateTime? earliestDeliveryPromiseTime;

  /// The latest delivery promised time.
  ///
  /// Include the year and timezone string, if available. This field is
  /// required, if one of the following fields is absent: tracking_id or
  /// carrier_name.
  DateTime? latestDeliveryPromiseTime;

  /// The origin postal code, as a continuous string without spaces or dashes,
  /// e.g. "95016".
  ///
  /// This field will be anonymized in returned OrderTrackingSignal creation
  /// response.
  core.String? originPostalCode;

  /// The
  /// [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
  /// for the shipping origin.
  core.String? originRegionCode;

  /// The shipment ID.
  ///
  /// This field will be hashed in returned OrderTrackingSignal creation
  /// response.
  ///
  /// Required.
  core.String? shipmentId;

  /// The time when the shipment was shipped.
  ///
  /// Include the year and timezone string, if available.
  DateTime? shippedTime;

  /// The status of the shipment.
  /// Possible string values are:
  /// - "SHIPPING_STATE_UNSPECIFIED" : The shipping status is not known to
  /// merchant.
  /// - "SHIPPED" : All items are shipped.
  /// - "DELIVERED" : The shipment is already delivered.
  core.String? shippingStatus;

  /// The tracking ID of the shipment.
  ///
  /// This field is required if one of the following fields is absent:
  /// earliest_delivery_promise_time, latest_delivery_promise_time, and
  /// actual_delivery_time.
  core.String? trackingId;

  OrderTrackingSignalShippingInfo({
    this.actualDeliveryTime,
    this.carrierName,
    this.carrierServiceName,
    this.earliestDeliveryPromiseTime,
    this.latestDeliveryPromiseTime,
    this.originPostalCode,
    this.originRegionCode,
    this.shipmentId,
    this.shippedTime,
    this.shippingStatus,
    this.trackingId,
  });

  OrderTrackingSignalShippingInfo.fromJson(core.Map _json)
      : this(
          actualDeliveryTime: _json.containsKey('actualDeliveryTime')
              ? DateTime.fromJson(_json['actualDeliveryTime']
                  as core.Map<core.String, core.dynamic>)
              : null,
          carrierName: _json.containsKey('carrierName')
              ? _json['carrierName'] as core.String
              : null,
          carrierServiceName: _json.containsKey('carrierServiceName')
              ? _json['carrierServiceName'] as core.String
              : null,
          earliestDeliveryPromiseTime:
              _json.containsKey('earliestDeliveryPromiseTime')
                  ? DateTime.fromJson(_json['earliestDeliveryPromiseTime']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          latestDeliveryPromiseTime:
              _json.containsKey('latestDeliveryPromiseTime')
                  ? DateTime.fromJson(_json['latestDeliveryPromiseTime']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          originPostalCode: _json.containsKey('originPostalCode')
              ? _json['originPostalCode'] as core.String
              : null,
          originRegionCode: _json.containsKey('originRegionCode')
              ? _json['originRegionCode'] as core.String
              : null,
          shipmentId: _json.containsKey('shipmentId')
              ? _json['shipmentId'] as core.String
              : null,
          shippedTime: _json.containsKey('shippedTime')
              ? DateTime.fromJson(
                  _json['shippedTime'] as core.Map<core.String, core.dynamic>)
              : null,
          shippingStatus: _json.containsKey('shippingStatus')
              ? _json['shippingStatus'] as core.String
              : null,
          trackingId: _json.containsKey('trackingId')
              ? _json['trackingId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actualDeliveryTime != null)
          'actualDeliveryTime': actualDeliveryTime!,
        if (carrierName != null) 'carrierName': carrierName!,
        if (carrierServiceName != null)
          'carrierServiceName': carrierServiceName!,
        if (earliestDeliveryPromiseTime != null)
          'earliestDeliveryPromiseTime': earliestDeliveryPromiseTime!,
        if (latestDeliveryPromiseTime != null)
          'latestDeliveryPromiseTime': latestDeliveryPromiseTime!,
        if (originPostalCode != null) 'originPostalCode': originPostalCode!,
        if (originRegionCode != null) 'originRegionCode': originRegionCode!,
        if (shipmentId != null) 'shipmentId': shipmentId!,
        if (shippedTime != null) 'shippedTime': shippedTime!,
        if (shippingStatus != null) 'shippingStatus': shippingStatus!,
        if (trackingId != null) 'trackingId': trackingId!,
      };
}

class OrderinvoicesCreateChargeInvoiceRequest {
  /// The ID of the invoice.
  ///
  /// Required.
  core.String? invoiceId;

  /// Invoice summary.
  ///
  /// Required.
  InvoiceSummary? invoiceSummary;

  /// Invoice details per line item.
  ///
  /// Required.
  core.List<ShipmentInvoiceLineItemInvoice>? lineItemInvoices;

  /// The ID of the operation, unique across all operations for a given order.
  ///
  /// Required.
  core.String? operationId;

  /// ID of the shipment group.
  ///
  /// It is assigned by the merchant in the `shipLineItems` method and is used
  /// to group multiple line items that have the same kind of shipping charges.
  ///
  /// Required.
  core.String? shipmentGroupId;

  OrderinvoicesCreateChargeInvoiceRequest({
    this.invoiceId,
    this.invoiceSummary,
    this.lineItemInvoices,
    this.operationId,
    this.shipmentGroupId,
  });

  OrderinvoicesCreateChargeInvoiceRequest.fromJson(core.Map _json)
      : this(
          invoiceId: _json.containsKey('invoiceId')
              ? _json['invoiceId'] as core.String
              : null,
          invoiceSummary: _json.containsKey('invoiceSummary')
              ? InvoiceSummary.fromJson(_json['invoiceSummary']
                  as core.Map<core.String, core.dynamic>)
              : null,
          lineItemInvoices: _json.containsKey('lineItemInvoices')
              ? (_json['lineItemInvoices'] as core.List)
                  .map((value) => ShipmentInvoiceLineItemInvoice.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
          shipmentGroupId: _json.containsKey('shipmentGroupId')
              ? _json['shipmentGroupId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (invoiceId != null) 'invoiceId': invoiceId!,
        if (invoiceSummary != null) 'invoiceSummary': invoiceSummary!,
        if (lineItemInvoices != null) 'lineItemInvoices': lineItemInvoices!,
        if (operationId != null) 'operationId': operationId!,
        if (shipmentGroupId != null) 'shipmentGroupId': shipmentGroupId!,
      };
}

class OrderinvoicesCreateChargeInvoiceResponse {
  /// The status of the execution.
  ///
  /// Acceptable values are: - "`duplicate`" - "`executed`"
  core.String? executionStatus;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string
  /// "`content#orderinvoicesCreateChargeInvoiceResponse`".
  core.String? kind;

  OrderinvoicesCreateChargeInvoiceResponse({
    this.executionStatus,
    this.kind,
  });

  OrderinvoicesCreateChargeInvoiceResponse.fromJson(core.Map _json)
      : this(
          executionStatus: _json.containsKey('executionStatus')
              ? _json['executionStatus'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionStatus != null) 'executionStatus': executionStatus!,
        if (kind != null) 'kind': kind!,
      };
}

class OrderinvoicesCreateRefundInvoiceRequest {
  /// The ID of the invoice.
  ///
  /// Required.
  core.String? invoiceId;

  /// The ID of the operation, unique across all operations for a given order.
  ///
  /// Required.
  core.String? operationId;

  /// Option to create a refund-only invoice.
  ///
  /// Exactly one of `refundOnlyOption` or `returnOption` must be provided.
  OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption?
      refundOnlyOption;

  /// Option to create an invoice for a refund and mark all items within the
  /// invoice as returned.
  ///
  /// Exactly one of `refundOnlyOption` or `returnOption` must be provided.
  OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption?
      returnOption;

  /// Invoice details for different shipment groups.
  core.List<ShipmentInvoice>? shipmentInvoices;

  OrderinvoicesCreateRefundInvoiceRequest({
    this.invoiceId,
    this.operationId,
    this.refundOnlyOption,
    this.returnOption,
    this.shipmentInvoices,
  });

  OrderinvoicesCreateRefundInvoiceRequest.fromJson(core.Map _json)
      : this(
          invoiceId: _json.containsKey('invoiceId')
              ? _json['invoiceId'] as core.String
              : null,
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
          refundOnlyOption: _json.containsKey('refundOnlyOption')
              ? OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
                  .fromJson(_json['refundOnlyOption']
                      as core.Map<core.String, core.dynamic>)
              : null,
          returnOption: _json.containsKey('returnOption')
              ? OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
                  .fromJson(_json['returnOption']
                      as core.Map<core.String, core.dynamic>)
              : null,
          shipmentInvoices: _json.containsKey('shipmentInvoices')
              ? (_json['shipmentInvoices'] as core.List)
                  .map((value) => ShipmentInvoice.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (invoiceId != null) 'invoiceId': invoiceId!,
        if (operationId != null) 'operationId': operationId!,
        if (refundOnlyOption != null) 'refundOnlyOption': refundOnlyOption!,
        if (returnOption != null) 'returnOption': returnOption!,
        if (shipmentInvoices != null) 'shipmentInvoices': shipmentInvoices!,
      };
}

class OrderinvoicesCreateRefundInvoiceResponse {
  /// The status of the execution.
  ///
  /// Acceptable values are: - "`duplicate`" - "`executed`"
  core.String? executionStatus;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string
  /// "`content#orderinvoicesCreateRefundInvoiceResponse`".
  core.String? kind;

  OrderinvoicesCreateRefundInvoiceResponse({
    this.executionStatus,
    this.kind,
  });

  OrderinvoicesCreateRefundInvoiceResponse.fromJson(core.Map _json)
      : this(
          executionStatus: _json.containsKey('executionStatus')
              ? _json['executionStatus'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionStatus != null) 'executionStatus': executionStatus!,
        if (kind != null) 'kind': kind!,
      };
}

class OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption {
  /// Optional description of the refund reason.
  core.String? description;

  /// Reason for the refund.
  ///
  /// Acceptable values are: - "`adjustment`" - "`autoPostInternal`" -
  /// "`autoPostInvalidBillingAddress`" - "`autoPostNoInventory`" -
  /// "`autoPostPriceError`" - "`autoPostUndeliverableShippingAddress`" -
  /// "`couponAbuse`" - "`courtesyAdjustment`" - "`customerCanceled`" -
  /// "`customerDiscretionaryReturn`" - "`customerInitiatedMerchantCancel`" -
  /// "`customerSupportRequested`" - "`deliveredLateByCarrier`" -
  /// "`deliveredTooLate`" - "`expiredItem`" - "`failToPushOrderGoogleError`" -
  /// "`failToPushOrderMerchantError`" -
  /// "`failToPushOrderMerchantFulfillmentError`" -
  /// "`failToPushOrderToMerchant`" - "`failToPushOrderToMerchantOutOfStock`" -
  /// "`feeAdjustment`" - "`invalidCoupon`" - "`lateShipmentCredit`" -
  /// "`malformedShippingAddress`" - "`merchantDidNotShipOnTime`" -
  /// "`noInventory`" - "`orderTimeout`" - "`other`" - "`paymentAbuse`" -
  /// "`paymentDeclined`" - "`priceAdjustment`" - "`priceError`" -
  /// "`productArrivedDamaged`" - "`productNotAsDescribed`" -
  /// "`promoReallocation`" - "`qualityNotAsExpected`" - "`returnRefundAbuse`" -
  /// "`shippingCostAdjustment`" - "`shippingPriceError`" - "`taxAdjustment`" -
  /// "`taxError`" - "`undeliverableShippingAddress`" -
  /// "`unsupportedPoBoxAddress`" - "`wrongProductShipped`"
  ///
  /// Required.
  core.String? reason;

  OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption({
    this.description,
    this.reason,
  });

  OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption.fromJson(
      core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (reason != null) 'reason': reason!,
      };
}

class OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption {
  /// Optional description of the return reason.
  core.String? description;

  /// Reason for the return.
  ///
  /// Acceptable values are: - "`customerDiscretionaryReturn`" -
  /// "`customerInitiatedMerchantCancel`" - "`deliveredTooLate`" -
  /// "`expiredItem`" - "`invalidCoupon`" - "`malformedShippingAddress`" -
  /// "`other`" - "`productArrivedDamaged`" - "`productNotAsDescribed`" -
  /// "`qualityNotAsExpected`" - "`undeliverableShippingAddress`" -
  /// "`unsupportedPoBoxAddress`" - "`wrongProductShipped`"
  ///
  /// Required.
  core.String? reason;

  OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption({
    this.description,
    this.reason,
  });

  OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption.fromJson(
      core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (reason != null) 'reason': reason!,
      };
}

class OrderreportsListDisbursementsResponse {
  /// The list of disbursements.
  core.List<OrderReportDisbursement>? disbursements;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#orderreportsListDisbursementsResponse`".
  core.String? kind;

  /// The token for the retrieval of the next page of disbursements.
  core.String? nextPageToken;

  OrderreportsListDisbursementsResponse({
    this.disbursements,
    this.kind,
    this.nextPageToken,
  });

  OrderreportsListDisbursementsResponse.fromJson(core.Map _json)
      : this(
          disbursements: _json.containsKey('disbursements')
              ? (_json['disbursements'] as core.List)
                  .map((value) => OrderReportDisbursement.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disbursements != null) 'disbursements': disbursements!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class OrderreportsListTransactionsResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#orderreportsListTransactionsResponse`".
  core.String? kind;

  /// The token for the retrieval of the next page of transactions.
  core.String? nextPageToken;

  /// The list of transactions.
  core.List<OrderReportTransaction>? transactions;

  OrderreportsListTransactionsResponse({
    this.kind,
    this.nextPageToken,
    this.transactions,
  });

  OrderreportsListTransactionsResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          transactions: _json.containsKey('transactions')
              ? (_json['transactions'] as core.List)
                  .map((value) => OrderReportTransaction.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (transactions != null) 'transactions': transactions!,
      };
}

class OrderreturnsAcknowledgeRequest {
  /// The ID of the operation, unique across all operations for a given order
  /// return.
  ///
  /// Required.
  core.String? operationId;

  OrderreturnsAcknowledgeRequest({
    this.operationId,
  });

  OrderreturnsAcknowledgeRequest.fromJson(core.Map _json)
      : this(
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operationId != null) 'operationId': operationId!,
      };
}

class OrderreturnsAcknowledgeResponse {
  /// The status of the execution.
  ///
  /// Acceptable values are: - "`duplicate`" - "`executed`"
  core.String? executionStatus;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#orderreturnsAcknowledgeResponse`".
  core.String? kind;

  OrderreturnsAcknowledgeResponse({
    this.executionStatus,
    this.kind,
  });

  OrderreturnsAcknowledgeResponse.fromJson(core.Map _json)
      : this(
          executionStatus: _json.containsKey('executionStatus')
              ? _json['executionStatus'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionStatus != null) 'executionStatus': executionStatus!,
        if (kind != null) 'kind': kind!,
      };
}

class OrderreturnsCreateOrderReturnRequest {
  /// The list of line items to return.
  core.List<OrderreturnsLineItem>? lineItems;

  /// The ID of the operation.
  ///
  /// Unique across all operations for a given order.
  core.String? operationId;

  /// The ID of the order.
  core.String? orderId;

  /// The way of the package being returned.
  core.String? returnMethodType;

  OrderreturnsCreateOrderReturnRequest({
    this.lineItems,
    this.operationId,
    this.orderId,
    this.returnMethodType,
  });

  OrderreturnsCreateOrderReturnRequest.fromJson(core.Map _json)
      : this(
          lineItems: _json.containsKey('lineItems')
              ? (_json['lineItems'] as core.List)
                  .map((value) => OrderreturnsLineItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
          orderId: _json.containsKey('orderId')
              ? _json['orderId'] as core.String
              : null,
          returnMethodType: _json.containsKey('returnMethodType')
              ? _json['returnMethodType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lineItems != null) 'lineItems': lineItems!,
        if (operationId != null) 'operationId': operationId!,
        if (orderId != null) 'orderId': orderId!,
        if (returnMethodType != null) 'returnMethodType': returnMethodType!,
      };
}

class OrderreturnsCreateOrderReturnResponse {
  /// The status of the execution.
  ///
  /// Acceptable values are: - "`duplicate`" - "`executed`"
  core.String? executionStatus;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#orderreturnsCreateOrderReturnResponse`".
  core.String? kind;

  /// Created order return.
  MerchantOrderReturn? orderReturn;

  OrderreturnsCreateOrderReturnResponse({
    this.executionStatus,
    this.kind,
    this.orderReturn,
  });

  OrderreturnsCreateOrderReturnResponse.fromJson(core.Map _json)
      : this(
          executionStatus: _json.containsKey('executionStatus')
              ? _json['executionStatus'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          orderReturn: _json.containsKey('orderReturn')
              ? MerchantOrderReturn.fromJson(
                  _json['orderReturn'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionStatus != null) 'executionStatus': executionStatus!,
        if (kind != null) 'kind': kind!,
        if (orderReturn != null) 'orderReturn': orderReturn!,
      };
}

class OrderreturnsLineItem {
  /// The ID of the line item.
  ///
  /// This value is assigned by Google when an order is created. Either
  /// lineItemId or productId is required.
  core.String? lineItemId;

  /// The ID of the product to cancel.
  ///
  /// This is the REST ID used in the products service. Either lineItemId or
  /// productId is required.
  core.String? productId;

  /// The quantity of this line item.
  core.int? quantity;

  OrderreturnsLineItem({
    this.lineItemId,
    this.productId,
    this.quantity,
  });

  OrderreturnsLineItem.fromJson(core.Map _json)
      : this(
          lineItemId: _json.containsKey('lineItemId')
              ? _json['lineItemId'] as core.String
              : null,
          productId: _json.containsKey('productId')
              ? _json['productId'] as core.String
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lineItemId != null) 'lineItemId': lineItemId!,
        if (productId != null) 'productId': productId!,
        if (quantity != null) 'quantity': quantity!,
      };
}

class OrderreturnsListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#orderreturnsListResponse`".
  core.String? kind;

  /// The token for the retrieval of the next page of returns.
  core.String? nextPageToken;
  core.List<MerchantOrderReturn>? resources;

  OrderreturnsListResponse({
    this.kind,
    this.nextPageToken,
    this.resources,
  });

  OrderreturnsListResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => MerchantOrderReturn.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resources != null) 'resources': resources!,
      };
}

class OrderreturnsPartialRefund {
  /// The pre-tax or post-tax amount to be refunded, depending on the location
  /// of the order.
  Price? priceAmount;

  /// Tax amount to be refunded.
  ///
  /// Note: This has different meaning depending on the location of the order.
  Price? taxAmount;

  OrderreturnsPartialRefund({
    this.priceAmount,
    this.taxAmount,
  });

  OrderreturnsPartialRefund.fromJson(core.Map _json)
      : this(
          priceAmount: _json.containsKey('priceAmount')
              ? Price.fromJson(
                  _json['priceAmount'] as core.Map<core.String, core.dynamic>)
              : null,
          taxAmount: _json.containsKey('taxAmount')
              ? Price.fromJson(
                  _json['taxAmount'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (priceAmount != null) 'priceAmount': priceAmount!,
        if (taxAmount != null) 'taxAmount': taxAmount!,
      };
}

class OrderreturnsProcessRequest {
  /// Option to charge the customer return shipping cost.
  core.bool? fullChargeReturnShippingCost;

  /// The ID of the operation, unique across all operations for a given order
  /// return.
  ///
  /// Required.
  core.String? operationId;

  /// Refunds for original shipping fee.
  OrderreturnsRefundOperation? refundShippingFee;

  /// The list of items to return.
  core.List<OrderreturnsReturnItem>? returnItems;

  OrderreturnsProcessRequest({
    this.fullChargeReturnShippingCost,
    this.operationId,
    this.refundShippingFee,
    this.returnItems,
  });

  OrderreturnsProcessRequest.fromJson(core.Map _json)
      : this(
          fullChargeReturnShippingCost:
              _json.containsKey('fullChargeReturnShippingCost')
                  ? _json['fullChargeReturnShippingCost'] as core.bool
                  : null,
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
          refundShippingFee: _json.containsKey('refundShippingFee')
              ? OrderreturnsRefundOperation.fromJson(_json['refundShippingFee']
                  as core.Map<core.String, core.dynamic>)
              : null,
          returnItems: _json.containsKey('returnItems')
              ? (_json['returnItems'] as core.List)
                  .map((value) => OrderreturnsReturnItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fullChargeReturnShippingCost != null)
          'fullChargeReturnShippingCost': fullChargeReturnShippingCost!,
        if (operationId != null) 'operationId': operationId!,
        if (refundShippingFee != null) 'refundShippingFee': refundShippingFee!,
        if (returnItems != null) 'returnItems': returnItems!,
      };
}

class OrderreturnsProcessResponse {
  /// The status of the execution.
  ///
  /// Acceptable values are: - "`duplicate`" - "`executed`"
  core.String? executionStatus;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#orderreturnsProcessResponse`".
  core.String? kind;

  OrderreturnsProcessResponse({
    this.executionStatus,
    this.kind,
  });

  OrderreturnsProcessResponse.fromJson(core.Map _json)
      : this(
          executionStatus: _json.containsKey('executionStatus')
              ? _json['executionStatus'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionStatus != null) 'executionStatus': executionStatus!,
        if (kind != null) 'kind': kind!,
      };
}

class OrderreturnsRefundOperation {
  /// If true, the item will be fully refunded.
  ///
  /// Allowed only when payment_type is FOP. Merchant can choose this refund
  /// option to indicate the full remaining amount of corresponding object to be
  /// refunded to the customer via FOP.
  core.bool? fullRefund;

  /// If this is set, the item will be partially refunded.
  ///
  /// Merchant can choose this refund option to specify the customized amount
  /// that to be refunded to the customer.
  OrderreturnsPartialRefund? partialRefund;

  /// The payment way of issuing refund.
  ///
  /// Default value is ORIGINAL_FOP if not set.
  core.String? paymentType;

  /// The explanation of the reason.
  core.String? reasonText;

  /// Code of the refund reason.
  core.String? returnRefundReason;

  OrderreturnsRefundOperation({
    this.fullRefund,
    this.partialRefund,
    this.paymentType,
    this.reasonText,
    this.returnRefundReason,
  });

  OrderreturnsRefundOperation.fromJson(core.Map _json)
      : this(
          fullRefund: _json.containsKey('fullRefund')
              ? _json['fullRefund'] as core.bool
              : null,
          partialRefund: _json.containsKey('partialRefund')
              ? OrderreturnsPartialRefund.fromJson(
                  _json['partialRefund'] as core.Map<core.String, core.dynamic>)
              : null,
          paymentType: _json.containsKey('paymentType')
              ? _json['paymentType'] as core.String
              : null,
          reasonText: _json.containsKey('reasonText')
              ? _json['reasonText'] as core.String
              : null,
          returnRefundReason: _json.containsKey('returnRefundReason')
              ? _json['returnRefundReason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fullRefund != null) 'fullRefund': fullRefund!,
        if (partialRefund != null) 'partialRefund': partialRefund!,
        if (paymentType != null) 'paymentType': paymentType!,
        if (reasonText != null) 'reasonText': reasonText!,
        if (returnRefundReason != null)
          'returnRefundReason': returnRefundReason!,
      };
}

class OrderreturnsRejectOperation {
  /// The reason for the return.
  core.String? reason;

  /// The explanation of the reason.
  core.String? reasonText;

  OrderreturnsRejectOperation({
    this.reason,
    this.reasonText,
  });

  OrderreturnsRejectOperation.fromJson(core.Map _json)
      : this(
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
          reasonText: _json.containsKey('reasonText')
              ? _json['reasonText'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (reason != null) 'reason': reason!,
        if (reasonText != null) 'reasonText': reasonText!,
      };
}

class OrderreturnsReturnItem {
  /// Refunds the item.
  OrderreturnsRefundOperation? refund;

  /// Rejects the item.
  OrderreturnsRejectOperation? reject;

  /// Unit level ID for the return item.
  ///
  /// Different units of the same product will have different IDs.
  core.String? returnItemId;

  OrderreturnsReturnItem({
    this.refund,
    this.reject,
    this.returnItemId,
  });

  OrderreturnsReturnItem.fromJson(core.Map _json)
      : this(
          refund: _json.containsKey('refund')
              ? OrderreturnsRefundOperation.fromJson(
                  _json['refund'] as core.Map<core.String, core.dynamic>)
              : null,
          reject: _json.containsKey('reject')
              ? OrderreturnsRejectOperation.fromJson(
                  _json['reject'] as core.Map<core.String, core.dynamic>)
              : null,
          returnItemId: _json.containsKey('returnItemId')
              ? _json['returnItemId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (refund != null) 'refund': refund!,
        if (reject != null) 'reject': reject!,
        if (returnItemId != null) 'returnItemId': returnItemId!,
      };
}

class OrdersAcknowledgeRequest {
  /// The ID of the operation.
  ///
  /// Unique across all operations for a given order.
  core.String? operationId;

  OrdersAcknowledgeRequest({
    this.operationId,
  });

  OrdersAcknowledgeRequest.fromJson(core.Map _json)
      : this(
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operationId != null) 'operationId': operationId!,
      };
}

class OrdersAcknowledgeResponse {
  /// The status of the execution.
  ///
  /// Acceptable values are: - "`duplicate`" - "`executed`"
  core.String? executionStatus;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#ordersAcknowledgeResponse`".
  core.String? kind;

  OrdersAcknowledgeResponse({
    this.executionStatus,
    this.kind,
  });

  OrdersAcknowledgeResponse.fromJson(core.Map _json)
      : this(
          executionStatus: _json.containsKey('executionStatus')
              ? _json['executionStatus'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionStatus != null) 'executionStatus': executionStatus!,
        if (kind != null) 'kind': kind!,
      };
}

class OrdersAdvanceTestOrderResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#ordersAdvanceTestOrderResponse`".
  core.String? kind;

  OrdersAdvanceTestOrderResponse({
    this.kind,
  });

  OrdersAdvanceTestOrderResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
      };
}

class OrdersCancelLineItemRequest {
  /// The ID of the line item to cancel.
  ///
  /// Either lineItemId or productId is required.
  core.String? lineItemId;

  /// The ID of the operation.
  ///
  /// Unique across all operations for a given order.
  core.String? operationId;

  /// The ID of the product to cancel.
  ///
  /// This is the REST ID used in the products service. Either lineItemId or
  /// productId is required.
  core.String? productId;

  /// The quantity to cancel.
  core.int? quantity;

  /// The reason for the cancellation.
  ///
  /// Acceptable values are: - "`customerInitiatedCancel`" - "`invalidCoupon`" -
  /// "`malformedShippingAddress`" - "`noInventory`" - "`other`" -
  /// "`priceError`" - "`shippingPriceError`" - "`taxError`" -
  /// "`undeliverableShippingAddress`" - "`unsupportedPoBoxAddress`" -
  /// "`failedToCaptureFunds`"
  core.String? reason;

  /// The explanation of the reason.
  core.String? reasonText;

  OrdersCancelLineItemRequest({
    this.lineItemId,
    this.operationId,
    this.productId,
    this.quantity,
    this.reason,
    this.reasonText,
  });

  OrdersCancelLineItemRequest.fromJson(core.Map _json)
      : this(
          lineItemId: _json.containsKey('lineItemId')
              ? _json['lineItemId'] as core.String
              : null,
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
          productId: _json.containsKey('productId')
              ? _json['productId'] as core.String
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.int
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
          reasonText: _json.containsKey('reasonText')
              ? _json['reasonText'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lineItemId != null) 'lineItemId': lineItemId!,
        if (operationId != null) 'operationId': operationId!,
        if (productId != null) 'productId': productId!,
        if (quantity != null) 'quantity': quantity!,
        if (reason != null) 'reason': reason!,
        if (reasonText != null) 'reasonText': reasonText!,
      };
}

class OrdersCancelLineItemResponse {
  /// The status of the execution.
  ///
  /// Acceptable values are: - "`duplicate`" - "`executed`"
  core.String? executionStatus;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#ordersCancelLineItemResponse`".
  core.String? kind;

  OrdersCancelLineItemResponse({
    this.executionStatus,
    this.kind,
  });

  OrdersCancelLineItemResponse.fromJson(core.Map _json)
      : this(
          executionStatus: _json.containsKey('executionStatus')
              ? _json['executionStatus'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionStatus != null) 'executionStatus': executionStatus!,
        if (kind != null) 'kind': kind!,
      };
}

class OrdersCancelRequest {
  /// The ID of the operation.
  ///
  /// Unique across all operations for a given order.
  core.String? operationId;

  /// The reason for the cancellation.
  ///
  /// Acceptable values are: - "`customerInitiatedCancel`" - "`invalidCoupon`" -
  /// "`malformedShippingAddress`" - "`noInventory`" - "`other`" -
  /// "`priceError`" - "`shippingPriceError`" - "`taxError`" -
  /// "`undeliverableShippingAddress`" - "`unsupportedPoBoxAddress`" -
  /// "`failedToCaptureFunds`"
  core.String? reason;

  /// The explanation of the reason.
  core.String? reasonText;

  OrdersCancelRequest({
    this.operationId,
    this.reason,
    this.reasonText,
  });

  OrdersCancelRequest.fromJson(core.Map _json)
      : this(
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
          reasonText: _json.containsKey('reasonText')
              ? _json['reasonText'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operationId != null) 'operationId': operationId!,
        if (reason != null) 'reason': reason!,
        if (reasonText != null) 'reasonText': reasonText!,
      };
}

class OrdersCancelResponse {
  /// The status of the execution.
  ///
  /// Acceptable values are: - "`duplicate`" - "`executed`"
  core.String? executionStatus;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#ordersCancelResponse`".
  core.String? kind;

  OrdersCancelResponse({
    this.executionStatus,
    this.kind,
  });

  OrdersCancelResponse.fromJson(core.Map _json)
      : this(
          executionStatus: _json.containsKey('executionStatus')
              ? _json['executionStatus'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionStatus != null) 'executionStatus': executionStatus!,
        if (kind != null) 'kind': kind!,
      };
}

class OrdersCancelTestOrderByCustomerRequest {
  /// The reason for the cancellation.
  ///
  /// Acceptable values are: - "`changedMind`" - "`orderedWrongItem`" -
  /// "`other`"
  core.String? reason;

  OrdersCancelTestOrderByCustomerRequest({
    this.reason,
  });

  OrdersCancelTestOrderByCustomerRequest.fromJson(core.Map _json)
      : this(
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (reason != null) 'reason': reason!,
      };
}

class OrdersCancelTestOrderByCustomerResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string
  /// "`content#ordersCancelTestOrderByCustomerResponse`".
  core.String? kind;

  OrdersCancelTestOrderByCustomerResponse({
    this.kind,
  });

  OrdersCancelTestOrderByCustomerResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
      };
}

class OrdersCreateTestOrderRequest {
  /// The CLDR territory code of the country of the test order to create.
  ///
  /// Affects the currency and addresses of orders created via `template_name`,
  /// or the addresses of orders created via `test_order`. Acceptable values
  /// are: - "`US`" - "`FR`" Defaults to `US`.
  core.String? country;

  /// The test order template to use.
  ///
  /// Specify as an alternative to `testOrder` as a shortcut for retrieving a
  /// template and then creating an order using that template. Acceptable values
  /// are: - "`template1`" - "`template1a`" - "`template1b`" - "`template2`" -
  /// "`template3`"
  core.String? templateName;

  /// The test order to create.
  TestOrder? testOrder;

  OrdersCreateTestOrderRequest({
    this.country,
    this.templateName,
    this.testOrder,
  });

  OrdersCreateTestOrderRequest.fromJson(core.Map _json)
      : this(
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          templateName: _json.containsKey('templateName')
              ? _json['templateName'] as core.String
              : null,
          testOrder: _json.containsKey('testOrder')
              ? TestOrder.fromJson(
                  _json['testOrder'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (country != null) 'country': country!,
        if (templateName != null) 'templateName': templateName!,
        if (testOrder != null) 'testOrder': testOrder!,
      };
}

class OrdersCreateTestOrderResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#ordersCreateTestOrderResponse`".
  core.String? kind;

  /// The ID of the newly created test order.
  core.String? orderId;

  OrdersCreateTestOrderResponse({
    this.kind,
    this.orderId,
  });

  OrdersCreateTestOrderResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          orderId: _json.containsKey('orderId')
              ? _json['orderId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (orderId != null) 'orderId': orderId!,
      };
}

class OrdersCreateTestReturnRequest {
  /// Returned items.
  core.List<OrdersCustomBatchRequestEntryCreateTestReturnReturnItem>? items;

  OrdersCreateTestReturnRequest({
    this.items,
  });

  OrdersCreateTestReturnRequest.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) =>
                      OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
      };
}

class OrdersCreateTestReturnResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#ordersCreateTestReturnResponse`".
  core.String? kind;

  /// The ID of the newly created test order return.
  core.String? returnId;

  OrdersCreateTestReturnResponse({
    this.kind,
    this.returnId,
  });

  OrdersCreateTestReturnResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          returnId: _json.containsKey('returnId')
              ? _json['returnId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (returnId != null) 'returnId': returnId!,
      };
}

class OrdersCustomBatchRequestEntryCreateTestReturnReturnItem {
  /// The ID of the line item to return.
  core.String? lineItemId;

  /// Quantity that is returned.
  core.int? quantity;

  OrdersCustomBatchRequestEntryCreateTestReturnReturnItem({
    this.lineItemId,
    this.quantity,
  });

  OrdersCustomBatchRequestEntryCreateTestReturnReturnItem.fromJson(
      core.Map _json)
      : this(
          lineItemId: _json.containsKey('lineItemId')
              ? _json['lineItemId'] as core.String
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lineItemId != null) 'lineItemId': lineItemId!,
        if (quantity != null) 'quantity': quantity!,
      };
}

class OrdersCustomBatchRequestEntryRefundItemItem {
  /// The total amount that is refunded.
  ///
  /// (e.g. refunding $5 each for 2 products should be done by setting quantity
  /// to 2 and amount to 10$) In case of multiple refunds, this should be the
  /// amount you currently want to refund to the customer.
  MonetaryAmount? amount;

  /// If true, the full item will be refunded.
  ///
  /// If this is true, amount should not be provided and will be ignored.
  core.bool? fullRefund;

  /// The ID of the line item.
  ///
  /// Either lineItemId or productId is required.
  core.String? lineItemId;

  /// The ID of the product.
  ///
  /// This is the REST ID used in the products service. Either lineItemId or
  /// productId is required.
  core.String? productId;

  /// The number of products that are refunded.
  core.int? quantity;

  OrdersCustomBatchRequestEntryRefundItemItem({
    this.amount,
    this.fullRefund,
    this.lineItemId,
    this.productId,
    this.quantity,
  });

  OrdersCustomBatchRequestEntryRefundItemItem.fromJson(core.Map _json)
      : this(
          amount: _json.containsKey('amount')
              ? MonetaryAmount.fromJson(
                  _json['amount'] as core.Map<core.String, core.dynamic>)
              : null,
          fullRefund: _json.containsKey('fullRefund')
              ? _json['fullRefund'] as core.bool
              : null,
          lineItemId: _json.containsKey('lineItemId')
              ? _json['lineItemId'] as core.String
              : null,
          productId: _json.containsKey('productId')
              ? _json['productId'] as core.String
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (amount != null) 'amount': amount!,
        if (fullRefund != null) 'fullRefund': fullRefund!,
        if (lineItemId != null) 'lineItemId': lineItemId!,
        if (productId != null) 'productId': productId!,
        if (quantity != null) 'quantity': quantity!,
      };
}

class OrdersCustomBatchRequestEntryRefundItemShipping {
  /// The amount that is refunded.
  ///
  /// If this is not the first refund for the shipment, this should be the newly
  /// refunded amount.
  Price? amount;

  /// If set to true, all shipping costs for the order will be refunded.
  ///
  /// If this is true, amount should not be provided and will be ignored. If set
  /// to false, submit the amount of the partial shipping refund, excluding the
  /// shipping tax. The shipping tax is calculated and handled on Google's side.
  core.bool? fullRefund;

  OrdersCustomBatchRequestEntryRefundItemShipping({
    this.amount,
    this.fullRefund,
  });

  OrdersCustomBatchRequestEntryRefundItemShipping.fromJson(core.Map _json)
      : this(
          amount: _json.containsKey('amount')
              ? Price.fromJson(
                  _json['amount'] as core.Map<core.String, core.dynamic>)
              : null,
          fullRefund: _json.containsKey('fullRefund')
              ? _json['fullRefund'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (amount != null) 'amount': amount!,
        if (fullRefund != null) 'fullRefund': fullRefund!,
      };
}

class OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo {
  /// The carrier handling the shipment.
  ///
  /// See `shipments[].carrier` in the Orders resource representation for a list
  /// of acceptable values.
  core.String? carrier;

  /// The ID of the shipment.
  ///
  /// This is assigned by the merchant and is unique to each shipment.
  ///
  /// Required.
  core.String? shipmentId;

  /// The tracking ID for the shipment.
  core.String? trackingId;

  OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo({
    this.carrier,
    this.shipmentId,
    this.trackingId,
  });

  OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo.fromJson(
      core.Map _json)
      : this(
          carrier: _json.containsKey('carrier')
              ? _json['carrier'] as core.String
              : null,
          shipmentId: _json.containsKey('shipmentId')
              ? _json['shipmentId'] as core.String
              : null,
          trackingId: _json.containsKey('trackingId')
              ? _json['trackingId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (carrier != null) 'carrier': carrier!,
        if (shipmentId != null) 'shipmentId': shipmentId!,
        if (trackingId != null) 'trackingId': trackingId!,
      };
}

/// ScheduledDeliveryDetails used to update the scheduled delivery order.
class OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails {
  /// The phone number of the carrier fulfilling the delivery.
  ///
  /// The phone number should be formatted as the international notation in
  core.String? carrierPhoneNumber;

  /// The date a shipment is scheduled for delivery, in ISO 8601 format.
  core.String? scheduledDate;

  OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails({
    this.carrierPhoneNumber,
    this.scheduledDate,
  });

  OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails.fromJson(
      core.Map _json)
      : this(
          carrierPhoneNumber: _json.containsKey('carrierPhoneNumber')
              ? _json['carrierPhoneNumber'] as core.String
              : null,
          scheduledDate: _json.containsKey('scheduledDate')
              ? _json['scheduledDate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (carrierPhoneNumber != null)
          'carrierPhoneNumber': carrierPhoneNumber!,
        if (scheduledDate != null) 'scheduledDate': scheduledDate!,
      };
}

class OrdersGetByMerchantOrderIdResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#ordersGetByMerchantOrderIdResponse`".
  core.String? kind;

  /// The requested order.
  Order? order;

  OrdersGetByMerchantOrderIdResponse({
    this.kind,
    this.order,
  });

  OrdersGetByMerchantOrderIdResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          order: _json.containsKey('order')
              ? Order.fromJson(
                  _json['order'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (order != null) 'order': order!,
      };
}

class OrdersGetTestOrderTemplateResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#ordersGetTestOrderTemplateResponse`".
  core.String? kind;

  /// The requested test order template.
  TestOrder? template;

  OrdersGetTestOrderTemplateResponse({
    this.kind,
    this.template,
  });

  OrdersGetTestOrderTemplateResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          template: _json.containsKey('template')
              ? TestOrder.fromJson(
                  _json['template'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (template != null) 'template': template!,
      };
}

class OrdersInStoreRefundLineItemRequest {
  /// The ID of the line item to return.
  ///
  /// Either lineItemId or productId is required.
  core.String? lineItemId;

  /// The ID of the operation.
  ///
  /// Unique across all operations for a given order.
  core.String? operationId;

  /// The amount to be refunded.
  ///
  /// This may be pre-tax or post-tax depending on the location of the order.
  /// Required.
  Price? priceAmount;

  /// The ID of the product to return.
  ///
  /// This is the REST ID used in the products service. Either lineItemId or
  /// productId is required.
  core.String? productId;

  /// The quantity to return and refund.
  core.int? quantity;

  /// The reason for the return.
  ///
  /// Acceptable values are: - "`customerDiscretionaryReturn`" -
  /// "`customerInitiatedMerchantCancel`" - "`deliveredTooLate`" -
  /// "`expiredItem`" - "`invalidCoupon`" - "`malformedShippingAddress`" -
  /// "`other`" - "`productArrivedDamaged`" - "`productNotAsDescribed`" -
  /// "`qualityNotAsExpected`" - "`undeliverableShippingAddress`" -
  /// "`unsupportedPoBoxAddress`" - "`wrongProductShipped`"
  core.String? reason;

  /// The explanation of the reason.
  core.String? reasonText;

  /// The amount of tax to be refunded.
  ///
  /// Required.
  Price? taxAmount;

  OrdersInStoreRefundLineItemRequest({
    this.lineItemId,
    this.operationId,
    this.priceAmount,
    this.productId,
    this.quantity,
    this.reason,
    this.reasonText,
    this.taxAmount,
  });

  OrdersInStoreRefundLineItemRequest.fromJson(core.Map _json)
      : this(
          lineItemId: _json.containsKey('lineItemId')
              ? _json['lineItemId'] as core.String
              : null,
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
          priceAmount: _json.containsKey('priceAmount')
              ? Price.fromJson(
                  _json['priceAmount'] as core.Map<core.String, core.dynamic>)
              : null,
          productId: _json.containsKey('productId')
              ? _json['productId'] as core.String
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.int
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
          reasonText: _json.containsKey('reasonText')
              ? _json['reasonText'] as core.String
              : null,
          taxAmount: _json.containsKey('taxAmount')
              ? Price.fromJson(
                  _json['taxAmount'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lineItemId != null) 'lineItemId': lineItemId!,
        if (operationId != null) 'operationId': operationId!,
        if (priceAmount != null) 'priceAmount': priceAmount!,
        if (productId != null) 'productId': productId!,
        if (quantity != null) 'quantity': quantity!,
        if (reason != null) 'reason': reason!,
        if (reasonText != null) 'reasonText': reasonText!,
        if (taxAmount != null) 'taxAmount': taxAmount!,
      };
}

class OrdersInStoreRefundLineItemResponse {
  /// The status of the execution.
  ///
  /// Acceptable values are: - "`duplicate`" - "`executed`"
  core.String? executionStatus;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#ordersInStoreRefundLineItemResponse`".
  core.String? kind;

  OrdersInStoreRefundLineItemResponse({
    this.executionStatus,
    this.kind,
  });

  OrdersInStoreRefundLineItemResponse.fromJson(core.Map _json)
      : this(
          executionStatus: _json.containsKey('executionStatus')
              ? _json['executionStatus'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionStatus != null) 'executionStatus': executionStatus!,
        if (kind != null) 'kind': kind!,
      };
}

class OrdersListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#ordersListResponse`".
  core.String? kind;

  /// The token for the retrieval of the next page of orders.
  core.String? nextPageToken;
  core.List<Order>? resources;

  OrdersListResponse({
    this.kind,
    this.nextPageToken,
    this.resources,
  });

  OrdersListResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => Order.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resources != null) 'resources': resources!,
      };
}

class OrdersRefundItemRequest {
  /// The items that are refunded.
  ///
  /// Either Item or Shipping must be provided in the request.
  core.List<OrdersCustomBatchRequestEntryRefundItemItem>? items;

  /// The ID of the operation.
  ///
  /// Unique across all operations for a given order.
  core.String? operationId;

  /// The reason for the refund.
  ///
  /// Acceptable values are: - "`shippingCostAdjustment`" - "`priceAdjustment`"
  /// - "`taxAdjustment`" - "`feeAdjustment`" - "`courtesyAdjustment`" -
  /// "`adjustment`" - "`customerCancelled`" - "`noInventory`" -
  /// "`productNotAsDescribed`" - "`undeliverableShippingAddress`" -
  /// "`wrongProductShipped`" - "`lateShipmentCredit`" -
  /// "`deliveredLateByCarrier`" - "`productArrivedDamaged`"
  core.String? reason;

  /// The explanation of the reason.
  core.String? reasonText;

  /// The refund on shipping.
  ///
  /// Optional, but either Item or Shipping must be provided in the request.
  OrdersCustomBatchRequestEntryRefundItemShipping? shipping;

  OrdersRefundItemRequest({
    this.items,
    this.operationId,
    this.reason,
    this.reasonText,
    this.shipping,
  });

  OrdersRefundItemRequest.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) =>
                      OrdersCustomBatchRequestEntryRefundItemItem.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
          reasonText: _json.containsKey('reasonText')
              ? _json['reasonText'] as core.String
              : null,
          shipping: _json.containsKey('shipping')
              ? OrdersCustomBatchRequestEntryRefundItemShipping.fromJson(
                  _json['shipping'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (operationId != null) 'operationId': operationId!,
        if (reason != null) 'reason': reason!,
        if (reasonText != null) 'reasonText': reasonText!,
        if (shipping != null) 'shipping': shipping!,
      };
}

class OrdersRefundItemResponse {
  /// The status of the execution.
  ///
  /// Acceptable values are: - "`duplicate`" - "`executed`"
  core.String? executionStatus;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#ordersRefundItemResponse`".
  core.String? kind;

  OrdersRefundItemResponse({
    this.executionStatus,
    this.kind,
  });

  OrdersRefundItemResponse.fromJson(core.Map _json)
      : this(
          executionStatus: _json.containsKey('executionStatus')
              ? _json['executionStatus'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionStatus != null) 'executionStatus': executionStatus!,
        if (kind != null) 'kind': kind!,
      };
}

class OrdersRefundOrderRequest {
  /// The amount that is refunded.
  ///
  /// If this is not the first refund for the order, this should be the newly
  /// refunded amount.
  MonetaryAmount? amount;

  /// If true, the full order will be refunded, including shipping.
  ///
  /// If this is true, amount should not be provided and will be ignored.
  core.bool? fullRefund;

  /// The ID of the operation.
  ///
  /// Unique across all operations for a given order.
  core.String? operationId;

  /// The reason for the refund.
  ///
  /// Acceptable values are: - "`courtesyAdjustment`" - "`other`"
  core.String? reason;

  /// The explanation of the reason.
  core.String? reasonText;

  OrdersRefundOrderRequest({
    this.amount,
    this.fullRefund,
    this.operationId,
    this.reason,
    this.reasonText,
  });

  OrdersRefundOrderRequest.fromJson(core.Map _json)
      : this(
          amount: _json.containsKey('amount')
              ? MonetaryAmount.fromJson(
                  _json['amount'] as core.Map<core.String, core.dynamic>)
              : null,
          fullRefund: _json.containsKey('fullRefund')
              ? _json['fullRefund'] as core.bool
              : null,
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
          reasonText: _json.containsKey('reasonText')
              ? _json['reasonText'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (amount != null) 'amount': amount!,
        if (fullRefund != null) 'fullRefund': fullRefund!,
        if (operationId != null) 'operationId': operationId!,
        if (reason != null) 'reason': reason!,
        if (reasonText != null) 'reasonText': reasonText!,
      };
}

class OrdersRefundOrderResponse {
  /// The status of the execution.
  ///
  /// Acceptable values are: - "`duplicate`" - "`executed`"
  core.String? executionStatus;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#ordersRefundOrderResponse`".
  core.String? kind;

  OrdersRefundOrderResponse({
    this.executionStatus,
    this.kind,
  });

  OrdersRefundOrderResponse.fromJson(core.Map _json)
      : this(
          executionStatus: _json.containsKey('executionStatus')
              ? _json['executionStatus'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionStatus != null) 'executionStatus': executionStatus!,
        if (kind != null) 'kind': kind!,
      };
}

class OrdersRejectReturnLineItemRequest {
  /// The ID of the line item to return.
  ///
  /// Either lineItemId or productId is required.
  core.String? lineItemId;

  /// The ID of the operation.
  ///
  /// Unique across all operations for a given order.
  core.String? operationId;

  /// The ID of the product to return.
  ///
  /// This is the REST ID used in the products service. Either lineItemId or
  /// productId is required.
  core.String? productId;

  /// The quantity to return and refund.
  core.int? quantity;

  /// The reason for the return.
  ///
  /// Acceptable values are: - "`damagedOrUsed`" - "`missingComponent`" -
  /// "`notEligible`" - "`other`" - "`outOfReturnWindow`"
  core.String? reason;

  /// The explanation of the reason.
  core.String? reasonText;

  OrdersRejectReturnLineItemRequest({
    this.lineItemId,
    this.operationId,
    this.productId,
    this.quantity,
    this.reason,
    this.reasonText,
  });

  OrdersRejectReturnLineItemRequest.fromJson(core.Map _json)
      : this(
          lineItemId: _json.containsKey('lineItemId')
              ? _json['lineItemId'] as core.String
              : null,
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
          productId: _json.containsKey('productId')
              ? _json['productId'] as core.String
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.int
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
          reasonText: _json.containsKey('reasonText')
              ? _json['reasonText'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lineItemId != null) 'lineItemId': lineItemId!,
        if (operationId != null) 'operationId': operationId!,
        if (productId != null) 'productId': productId!,
        if (quantity != null) 'quantity': quantity!,
        if (reason != null) 'reason': reason!,
        if (reasonText != null) 'reasonText': reasonText!,
      };
}

class OrdersRejectReturnLineItemResponse {
  /// The status of the execution.
  ///
  /// Acceptable values are: - "`duplicate`" - "`executed`"
  core.String? executionStatus;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#ordersRejectReturnLineItemResponse`".
  core.String? kind;

  OrdersRejectReturnLineItemResponse({
    this.executionStatus,
    this.kind,
  });

  OrdersRejectReturnLineItemResponse.fromJson(core.Map _json)
      : this(
          executionStatus: _json.containsKey('executionStatus')
              ? _json['executionStatus'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionStatus != null) 'executionStatus': executionStatus!,
        if (kind != null) 'kind': kind!,
      };
}

class OrdersReturnRefundLineItemRequest {
  /// The ID of the line item to return.
  ///
  /// Either lineItemId or productId is required.
  core.String? lineItemId;

  /// The ID of the operation.
  ///
  /// Unique across all operations for a given order.
  core.String? operationId;

  /// The amount to be refunded.
  ///
  /// This may be pre-tax or post-tax depending on the location of the order. If
  /// omitted, refundless return is assumed.
  Price? priceAmount;

  /// The ID of the product to return.
  ///
  /// This is the REST ID used in the products service. Either lineItemId or
  /// productId is required.
  core.String? productId;

  /// The quantity to return and refund.
  ///
  /// Quantity is required.
  core.int? quantity;

  /// The reason for the return.
  ///
  /// Acceptable values are: - "`customerDiscretionaryReturn`" -
  /// "`customerInitiatedMerchantCancel`" - "`deliveredTooLate`" -
  /// "`expiredItem`" - "`invalidCoupon`" - "`malformedShippingAddress`" -
  /// "`other`" - "`productArrivedDamaged`" - "`productNotAsDescribed`" -
  /// "`qualityNotAsExpected`" - "`undeliverableShippingAddress`" -
  /// "`unsupportedPoBoxAddress`" - "`wrongProductShipped`"
  core.String? reason;

  /// The explanation of the reason.
  core.String? reasonText;

  /// The amount of tax to be refunded.
  ///
  /// Optional, but if filled, then priceAmount must be set. Calculated
  /// automatically if not provided.
  Price? taxAmount;

  OrdersReturnRefundLineItemRequest({
    this.lineItemId,
    this.operationId,
    this.priceAmount,
    this.productId,
    this.quantity,
    this.reason,
    this.reasonText,
    this.taxAmount,
  });

  OrdersReturnRefundLineItemRequest.fromJson(core.Map _json)
      : this(
          lineItemId: _json.containsKey('lineItemId')
              ? _json['lineItemId'] as core.String
              : null,
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
          priceAmount: _json.containsKey('priceAmount')
              ? Price.fromJson(
                  _json['priceAmount'] as core.Map<core.String, core.dynamic>)
              : null,
          productId: _json.containsKey('productId')
              ? _json['productId'] as core.String
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.int
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
          reasonText: _json.containsKey('reasonText')
              ? _json['reasonText'] as core.String
              : null,
          taxAmount: _json.containsKey('taxAmount')
              ? Price.fromJson(
                  _json['taxAmount'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lineItemId != null) 'lineItemId': lineItemId!,
        if (operationId != null) 'operationId': operationId!,
        if (priceAmount != null) 'priceAmount': priceAmount!,
        if (productId != null) 'productId': productId!,
        if (quantity != null) 'quantity': quantity!,
        if (reason != null) 'reason': reason!,
        if (reasonText != null) 'reasonText': reasonText!,
        if (taxAmount != null) 'taxAmount': taxAmount!,
      };
}

class OrdersReturnRefundLineItemResponse {
  /// The status of the execution.
  ///
  /// Acceptable values are: - "`duplicate`" - "`executed`"
  core.String? executionStatus;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#ordersReturnRefundLineItemResponse`".
  core.String? kind;

  OrdersReturnRefundLineItemResponse({
    this.executionStatus,
    this.kind,
  });

  OrdersReturnRefundLineItemResponse.fromJson(core.Map _json)
      : this(
          executionStatus: _json.containsKey('executionStatus')
              ? _json['executionStatus'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionStatus != null) 'executionStatus': executionStatus!,
        if (kind != null) 'kind': kind!,
      };
}

class OrdersSetLineItemMetadataRequest {
  core.List<OrderMerchantProvidedAnnotation>? annotations;

  /// The ID of the line item to set metadata.
  ///
  /// Either lineItemId or productId is required.
  core.String? lineItemId;

  /// The ID of the operation.
  ///
  /// Unique across all operations for a given order.
  core.String? operationId;

  /// The ID of the product to set metadata.
  ///
  /// This is the REST ID used in the products service. Either lineItemId or
  /// productId is required.
  core.String? productId;

  OrdersSetLineItemMetadataRequest({
    this.annotations,
    this.lineItemId,
    this.operationId,
    this.productId,
  });

  OrdersSetLineItemMetadataRequest.fromJson(core.Map _json)
      : this(
          annotations: _json.containsKey('annotations')
              ? (_json['annotations'] as core.List)
                  .map((value) => OrderMerchantProvidedAnnotation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          lineItemId: _json.containsKey('lineItemId')
              ? _json['lineItemId'] as core.String
              : null,
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
          productId: _json.containsKey('productId')
              ? _json['productId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (lineItemId != null) 'lineItemId': lineItemId!,
        if (operationId != null) 'operationId': operationId!,
        if (productId != null) 'productId': productId!,
      };
}

class OrdersSetLineItemMetadataResponse {
  /// The status of the execution.
  ///
  /// Acceptable values are: - "`duplicate`" - "`executed`"
  core.String? executionStatus;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#ordersSetLineItemMetadataResponse`".
  core.String? kind;

  OrdersSetLineItemMetadataResponse({
    this.executionStatus,
    this.kind,
  });

  OrdersSetLineItemMetadataResponse.fromJson(core.Map _json)
      : this(
          executionStatus: _json.containsKey('executionStatus')
              ? _json['executionStatus'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionStatus != null) 'executionStatus': executionStatus!,
        if (kind != null) 'kind': kind!,
      };
}

class OrdersShipLineItemsRequest {
  /// Line items to ship.
  core.List<OrderShipmentLineItemShipment>? lineItems;

  /// The ID of the operation.
  ///
  /// Unique across all operations for a given order.
  core.String? operationId;

  /// ID of the shipment group.
  ///
  /// Required for orders that use the orderinvoices service.
  core.String? shipmentGroupId;

  /// Shipment information.
  ///
  /// This field is repeated because a single line item can be shipped in
  /// several packages (and have several tracking IDs).
  core.List<OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo>?
      shipmentInfos;

  OrdersShipLineItemsRequest({
    this.lineItems,
    this.operationId,
    this.shipmentGroupId,
    this.shipmentInfos,
  });

  OrdersShipLineItemsRequest.fromJson(core.Map _json)
      : this(
          lineItems: _json.containsKey('lineItems')
              ? (_json['lineItems'] as core.List)
                  .map((value) => OrderShipmentLineItemShipment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
          shipmentGroupId: _json.containsKey('shipmentGroupId')
              ? _json['shipmentGroupId'] as core.String
              : null,
          shipmentInfos: _json.containsKey('shipmentInfos')
              ? (_json['shipmentInfos'] as core.List)
                  .map((value) =>
                      OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lineItems != null) 'lineItems': lineItems!,
        if (operationId != null) 'operationId': operationId!,
        if (shipmentGroupId != null) 'shipmentGroupId': shipmentGroupId!,
        if (shipmentInfos != null) 'shipmentInfos': shipmentInfos!,
      };
}

class OrdersShipLineItemsResponse {
  /// The status of the execution.
  ///
  /// Acceptable values are: - "`duplicate`" - "`executed`"
  core.String? executionStatus;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#ordersShipLineItemsResponse`".
  core.String? kind;

  OrdersShipLineItemsResponse({
    this.executionStatus,
    this.kind,
  });

  OrdersShipLineItemsResponse.fromJson(core.Map _json)
      : this(
          executionStatus: _json.containsKey('executionStatus')
              ? _json['executionStatus'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionStatus != null) 'executionStatus': executionStatus!,
        if (kind != null) 'kind': kind!,
      };
}

class OrdersUpdateLineItemShippingDetailsRequest {
  /// Updated delivery by date, in ISO 8601 format.
  ///
  /// If not specified only ship by date is updated. Provided date should be
  /// within 1 year timeframe and can not be a date in the past.
  core.String? deliverByDate;

  /// The ID of the line item to set metadata.
  ///
  /// Either lineItemId or productId is required.
  core.String? lineItemId;

  /// The ID of the operation.
  ///
  /// Unique across all operations for a given order.
  core.String? operationId;

  /// The ID of the product to set metadata.
  ///
  /// This is the REST ID used in the products service. Either lineItemId or
  /// productId is required.
  core.String? productId;

  /// Updated ship by date, in ISO 8601 format.
  ///
  /// If not specified only deliver by date is updated. Provided date should be
  /// within 1 year timeframe and can not be a date in the past.
  core.String? shipByDate;

  OrdersUpdateLineItemShippingDetailsRequest({
    this.deliverByDate,
    this.lineItemId,
    this.operationId,
    this.productId,
    this.shipByDate,
  });

  OrdersUpdateLineItemShippingDetailsRequest.fromJson(core.Map _json)
      : this(
          deliverByDate: _json.containsKey('deliverByDate')
              ? _json['deliverByDate'] as core.String
              : null,
          lineItemId: _json.containsKey('lineItemId')
              ? _json['lineItemId'] as core.String
              : null,
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
          productId: _json.containsKey('productId')
              ? _json['productId'] as core.String
              : null,
          shipByDate: _json.containsKey('shipByDate')
              ? _json['shipByDate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deliverByDate != null) 'deliverByDate': deliverByDate!,
        if (lineItemId != null) 'lineItemId': lineItemId!,
        if (operationId != null) 'operationId': operationId!,
        if (productId != null) 'productId': productId!,
        if (shipByDate != null) 'shipByDate': shipByDate!,
      };
}

class OrdersUpdateLineItemShippingDetailsResponse {
  /// The status of the execution.
  ///
  /// Acceptable values are: - "`duplicate`" - "`executed`"
  core.String? executionStatus;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string
  /// "`content#ordersUpdateLineItemShippingDetailsResponse`".
  core.String? kind;

  OrdersUpdateLineItemShippingDetailsResponse({
    this.executionStatus,
    this.kind,
  });

  OrdersUpdateLineItemShippingDetailsResponse.fromJson(core.Map _json)
      : this(
          executionStatus: _json.containsKey('executionStatus')
              ? _json['executionStatus'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionStatus != null) 'executionStatus': executionStatus!,
        if (kind != null) 'kind': kind!,
      };
}

class OrdersUpdateMerchantOrderIdRequest {
  /// The merchant order id to be assigned to the order.
  ///
  /// Must be unique per merchant.
  core.String? merchantOrderId;

  /// The ID of the operation.
  ///
  /// Unique across all operations for a given order.
  core.String? operationId;

  OrdersUpdateMerchantOrderIdRequest({
    this.merchantOrderId,
    this.operationId,
  });

  OrdersUpdateMerchantOrderIdRequest.fromJson(core.Map _json)
      : this(
          merchantOrderId: _json.containsKey('merchantOrderId')
              ? _json['merchantOrderId'] as core.String
              : null,
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (merchantOrderId != null) 'merchantOrderId': merchantOrderId!,
        if (operationId != null) 'operationId': operationId!,
      };
}

class OrdersUpdateMerchantOrderIdResponse {
  /// The status of the execution.
  ///
  /// Acceptable values are: - "`duplicate`" - "`executed`"
  core.String? executionStatus;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#ordersUpdateMerchantOrderIdResponse`".
  core.String? kind;

  OrdersUpdateMerchantOrderIdResponse({
    this.executionStatus,
    this.kind,
  });

  OrdersUpdateMerchantOrderIdResponse.fromJson(core.Map _json)
      : this(
          executionStatus: _json.containsKey('executionStatus')
              ? _json['executionStatus'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionStatus != null) 'executionStatus': executionStatus!,
        if (kind != null) 'kind': kind!,
      };
}

class OrdersUpdateShipmentRequest {
  /// The carrier handling the shipment.
  ///
  /// Not updated if missing. See `shipments[].carrier` in the Orders resource
  /// representation for a list of acceptable values.
  core.String? carrier;

  /// Date on which the shipment has been delivered, in ISO 8601 format.
  ///
  /// Optional and can be provided only if `status` is `delivered`.
  core.String? deliveryDate;

  /// Date after which the pickup will expire, in ISO 8601 format.
  ///
  /// Required only when order is buy-online-pickup-in-store(BOPIS) and `status`
  /// is `ready for pickup`.
  core.String? lastPickupDate;

  /// The ID of the operation.
  ///
  /// Unique across all operations for a given order.
  core.String? operationId;

  /// Date on which the shipment has been ready for pickup, in ISO 8601 format.
  ///
  /// Optional and can be provided only if `status` is `ready for pickup`.
  core.String? readyPickupDate;

  /// Delivery details of the shipment if scheduling is needed.
  OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails?
      scheduledDeliveryDetails;

  /// The ID of the shipment.
  core.String? shipmentId;

  /// New status for the shipment.
  ///
  /// Not updated if missing. Acceptable values are: - "`delivered`" -
  /// "`undeliverable`" - "`readyForPickup`"
  core.String? status;

  /// The tracking ID for the shipment.
  ///
  /// Not updated if missing.
  core.String? trackingId;

  /// Date on which the shipment has been undeliverable, in ISO 8601 format.
  ///
  /// Optional and can be provided only if `status` is `undeliverable`.
  core.String? undeliveredDate;

  OrdersUpdateShipmentRequest({
    this.carrier,
    this.deliveryDate,
    this.lastPickupDate,
    this.operationId,
    this.readyPickupDate,
    this.scheduledDeliveryDetails,
    this.shipmentId,
    this.status,
    this.trackingId,
    this.undeliveredDate,
  });

  OrdersUpdateShipmentRequest.fromJson(core.Map _json)
      : this(
          carrier: _json.containsKey('carrier')
              ? _json['carrier'] as core.String
              : null,
          deliveryDate: _json.containsKey('deliveryDate')
              ? _json['deliveryDate'] as core.String
              : null,
          lastPickupDate: _json.containsKey('lastPickupDate')
              ? _json['lastPickupDate'] as core.String
              : null,
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
          readyPickupDate: _json.containsKey('readyPickupDate')
              ? _json['readyPickupDate'] as core.String
              : null,
          scheduledDeliveryDetails: _json
                  .containsKey('scheduledDeliveryDetails')
              ? OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
                  .fromJson(_json['scheduledDeliveryDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          shipmentId: _json.containsKey('shipmentId')
              ? _json['shipmentId'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          trackingId: _json.containsKey('trackingId')
              ? _json['trackingId'] as core.String
              : null,
          undeliveredDate: _json.containsKey('undeliveredDate')
              ? _json['undeliveredDate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (carrier != null) 'carrier': carrier!,
        if (deliveryDate != null) 'deliveryDate': deliveryDate!,
        if (lastPickupDate != null) 'lastPickupDate': lastPickupDate!,
        if (operationId != null) 'operationId': operationId!,
        if (readyPickupDate != null) 'readyPickupDate': readyPickupDate!,
        if (scheduledDeliveryDetails != null)
          'scheduledDeliveryDetails': scheduledDeliveryDetails!,
        if (shipmentId != null) 'shipmentId': shipmentId!,
        if (status != null) 'status': status!,
        if (trackingId != null) 'trackingId': trackingId!,
        if (undeliveredDate != null) 'undeliveredDate': undeliveredDate!,
      };
}

class OrdersUpdateShipmentResponse {
  /// The status of the execution.
  ///
  /// Acceptable values are: - "`duplicate`" - "`executed`"
  core.String? executionStatus;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#ordersUpdateShipmentResponse`".
  core.String? kind;

  OrdersUpdateShipmentResponse({
    this.executionStatus,
    this.kind,
  });

  OrdersUpdateShipmentResponse.fromJson(core.Map _json)
      : this(
          executionStatus: _json.containsKey('executionStatus')
              ? _json['executionStatus'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionStatus != null) 'executionStatus': executionStatus!,
        if (kind != null) 'kind': kind!,
      };
}

/// Request message for the PauseProgram method.
typedef PauseBuyOnGoogleProgramRequest = $Empty;

/// Additional information required for PAYMENT_SERVICE_PROVIDER link type.
class PaymentServiceProviderLinkInfo {
  /// The business country of the merchant account as identified by the third
  /// party service provider.
  core.String? externalAccountBusinessCountry;

  /// The id used by the third party service provider to identify the merchant.
  core.String? externalAccountId;

  PaymentServiceProviderLinkInfo({
    this.externalAccountBusinessCountry,
    this.externalAccountId,
  });

  PaymentServiceProviderLinkInfo.fromJson(core.Map _json)
      : this(
          externalAccountBusinessCountry:
              _json.containsKey('externalAccountBusinessCountry')
                  ? _json['externalAccountBusinessCountry'] as core.String
                  : null,
          externalAccountId: _json.containsKey('externalAccountId')
              ? _json['externalAccountId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (externalAccountBusinessCountry != null)
          'externalAccountBusinessCountry': externalAccountBusinessCountry!,
        if (externalAccountId != null) 'externalAccountId': externalAccountId!,
      };
}

class PickupCarrierService {
  /// The name of the pickup carrier (e.g., `"UPS"`).
  ///
  /// Required.
  core.String? carrierName;

  /// The name of the pickup service (e.g., `"Access point"`).
  ///
  /// Required.
  core.String? serviceName;

  PickupCarrierService({
    this.carrierName,
    this.serviceName,
  });

  PickupCarrierService.fromJson(core.Map _json)
      : this(
          carrierName: _json.containsKey('carrierName')
              ? _json['carrierName'] as core.String
              : null,
          serviceName: _json.containsKey('serviceName')
              ? _json['serviceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (carrierName != null) 'carrierName': carrierName!,
        if (serviceName != null) 'serviceName': serviceName!,
      };
}

class PickupServicesPickupService {
  /// The name of the carrier (e.g., `"UPS"`).
  ///
  /// Always present.
  core.String? carrierName;

  /// The CLDR country code of the carrier (e.g., "US").
  ///
  /// Always present.
  core.String? country;

  /// The name of the pickup service (e.g., `"Access point"`).
  ///
  /// Always present.
  core.String? serviceName;

  PickupServicesPickupService({
    this.carrierName,
    this.country,
    this.serviceName,
  });

  PickupServicesPickupService.fromJson(core.Map _json)
      : this(
          carrierName: _json.containsKey('carrierName')
              ? _json['carrierName'] as core.String
              : null,
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          serviceName: _json.containsKey('serviceName')
              ? _json['serviceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (carrierName != null) 'carrierName': carrierName!,
        if (country != null) 'country': country!,
        if (serviceName != null) 'serviceName': serviceName!,
      };
}

class PosCustomBatchRequest {
  /// The request entries to be processed in the batch.
  core.List<PosCustomBatchRequestEntry>? entries;

  PosCustomBatchRequest({
    this.entries,
  });

  PosCustomBatchRequest.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) => PosCustomBatchRequestEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

class PosCustomBatchRequestEntry {
  /// An entry ID, unique within the batch request.
  core.int? batchId;

  /// The inventory to submit.
  ///
  /// This should be set only if the method is `inventory`.
  PosInventory? inventory;

  /// The ID of the POS data provider.
  core.String? merchantId;

  /// The method of the batch entry.
  ///
  /// Acceptable values are: - "`delete`" - "`get`" - "`insert`" - "`inventory`"
  /// - "`sale`"
  core.String? method;

  /// The sale information to submit.
  ///
  /// This should be set only if the method is `sale`.
  PosSale? sale;

  /// The store information to submit.
  ///
  /// This should be set only if the method is `insert`.
  PosStore? store;

  /// The store code.
  ///
  /// This should be set only if the method is `delete` or `get`.
  core.String? storeCode;

  /// The ID of the account for which to get/submit data.
  core.String? targetMerchantId;

  PosCustomBatchRequestEntry({
    this.batchId,
    this.inventory,
    this.merchantId,
    this.method,
    this.sale,
    this.store,
    this.storeCode,
    this.targetMerchantId,
  });

  PosCustomBatchRequestEntry.fromJson(core.Map _json)
      : this(
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          inventory: _json.containsKey('inventory')
              ? PosInventory.fromJson(
                  _json['inventory'] as core.Map<core.String, core.dynamic>)
              : null,
          merchantId: _json.containsKey('merchantId')
              ? _json['merchantId'] as core.String
              : null,
          method: _json.containsKey('method')
              ? _json['method'] as core.String
              : null,
          sale: _json.containsKey('sale')
              ? PosSale.fromJson(
                  _json['sale'] as core.Map<core.String, core.dynamic>)
              : null,
          store: _json.containsKey('store')
              ? PosStore.fromJson(
                  _json['store'] as core.Map<core.String, core.dynamic>)
              : null,
          storeCode: _json.containsKey('storeCode')
              ? _json['storeCode'] as core.String
              : null,
          targetMerchantId: _json.containsKey('targetMerchantId')
              ? _json['targetMerchantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchId != null) 'batchId': batchId!,
        if (inventory != null) 'inventory': inventory!,
        if (merchantId != null) 'merchantId': merchantId!,
        if (method != null) 'method': method!,
        if (sale != null) 'sale': sale!,
        if (store != null) 'store': store!,
        if (storeCode != null) 'storeCode': storeCode!,
        if (targetMerchantId != null) 'targetMerchantId': targetMerchantId!,
      };
}

class PosCustomBatchResponse {
  /// The result of the execution of the batch requests.
  core.List<PosCustomBatchResponseEntry>? entries;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#posCustomBatchResponse`".
  core.String? kind;

  PosCustomBatchResponse({
    this.entries,
    this.kind,
  });

  PosCustomBatchResponse.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) => PosCustomBatchResponseEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
        if (kind != null) 'kind': kind!,
      };
}

class PosCustomBatchResponseEntry {
  /// The ID of the request entry to which this entry responds.
  core.int? batchId;

  /// A list of errors defined if, and only if, the request failed.
  Errors? errors;

  /// The updated inventory information.
  PosInventory? inventory;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#posCustomBatchResponseEntry`"
  core.String? kind;

  /// The updated sale information.
  PosSale? sale;

  /// The retrieved or updated store information.
  PosStore? store;

  PosCustomBatchResponseEntry({
    this.batchId,
    this.errors,
    this.inventory,
    this.kind,
    this.sale,
    this.store,
  });

  PosCustomBatchResponseEntry.fromJson(core.Map _json)
      : this(
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          errors: _json.containsKey('errors')
              ? Errors.fromJson(
                  _json['errors'] as core.Map<core.String, core.dynamic>)
              : null,
          inventory: _json.containsKey('inventory')
              ? PosInventory.fromJson(
                  _json['inventory'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          sale: _json.containsKey('sale')
              ? PosSale.fromJson(
                  _json['sale'] as core.Map<core.String, core.dynamic>)
              : null,
          store: _json.containsKey('store')
              ? PosStore.fromJson(
                  _json['store'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchId != null) 'batchId': batchId!,
        if (errors != null) 'errors': errors!,
        if (inventory != null) 'inventory': inventory!,
        if (kind != null) 'kind': kind!,
        if (sale != null) 'sale': sale!,
        if (store != null) 'store': store!,
      };
}

class PosDataProviders {
  /// Country code.
  core.String? country;

  /// A list of POS data providers.
  core.List<PosDataProvidersPosDataProvider>? posDataProviders;

  PosDataProviders({
    this.country,
    this.posDataProviders,
  });

  PosDataProviders.fromJson(core.Map _json)
      : this(
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          posDataProviders: _json.containsKey('posDataProviders')
              ? (_json['posDataProviders'] as core.List)
                  .map((value) => PosDataProvidersPosDataProvider.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (country != null) 'country': country!,
        if (posDataProviders != null) 'posDataProviders': posDataProviders!,
      };
}

class PosDataProvidersPosDataProvider {
  /// The display name of Pos data Provider.
  core.String? displayName;

  /// The full name of this POS data Provider.
  core.String? fullName;

  /// The ID of the account.
  core.String? providerId;

  PosDataProvidersPosDataProvider({
    this.displayName,
    this.fullName,
    this.providerId,
  });

  PosDataProvidersPosDataProvider.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          fullName: _json.containsKey('fullName')
              ? _json['fullName'] as core.String
              : null,
          providerId: _json.containsKey('providerId')
              ? _json['providerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (fullName != null) 'fullName': fullName!,
        if (providerId != null) 'providerId': providerId!,
      };
}

/// The absolute quantity of an item available at the given store.
class PosInventory {
  /// The two-letter ISO 639-1 language code for the item.
  ///
  /// Required.
  core.String? contentLanguage;

  /// Global Trade Item Number.
  core.String? gtin;

  /// A unique identifier for the item.
  ///
  /// Required.
  core.String? itemId;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#posInventory`"
  core.String? kind;

  /// The current price of the item.
  ///
  /// Required.
  Price? price;

  /// The available quantity of the item.
  ///
  /// Required.
  core.String? quantity;

  /// The identifier of the merchant's store.
  ///
  /// Either a `storeCode` inserted via the API or the code of the store in
  /// Google My Business.
  ///
  /// Required.
  core.String? storeCode;

  /// The CLDR territory code for the item.
  ///
  /// Required.
  core.String? targetCountry;

  /// The inventory timestamp, in ISO 8601 format.
  ///
  /// Required.
  core.String? timestamp;

  PosInventory({
    this.contentLanguage,
    this.gtin,
    this.itemId,
    this.kind,
    this.price,
    this.quantity,
    this.storeCode,
    this.targetCountry,
    this.timestamp,
  });

  PosInventory.fromJson(core.Map _json)
      : this(
          contentLanguage: _json.containsKey('contentLanguage')
              ? _json['contentLanguage'] as core.String
              : null,
          gtin: _json.containsKey('gtin') ? _json['gtin'] as core.String : null,
          itemId: _json.containsKey('itemId')
              ? _json['itemId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          price: _json.containsKey('price')
              ? Price.fromJson(
                  _json['price'] as core.Map<core.String, core.dynamic>)
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.String
              : null,
          storeCode: _json.containsKey('storeCode')
              ? _json['storeCode'] as core.String
              : null,
          targetCountry: _json.containsKey('targetCountry')
              ? _json['targetCountry'] as core.String
              : null,
          timestamp: _json.containsKey('timestamp')
              ? _json['timestamp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentLanguage != null) 'contentLanguage': contentLanguage!,
        if (gtin != null) 'gtin': gtin!,
        if (itemId != null) 'itemId': itemId!,
        if (kind != null) 'kind': kind!,
        if (price != null) 'price': price!,
        if (quantity != null) 'quantity': quantity!,
        if (storeCode != null) 'storeCode': storeCode!,
        if (targetCountry != null) 'targetCountry': targetCountry!,
        if (timestamp != null) 'timestamp': timestamp!,
      };
}

class PosInventoryRequest {
  /// The two-letter ISO 639-1 language code for the item.
  ///
  /// Required.
  core.String? contentLanguage;

  /// Global Trade Item Number.
  core.String? gtin;

  /// A unique identifier for the item.
  ///
  /// Required.
  core.String? itemId;

  /// The current price of the item.
  ///
  /// Required.
  Price? price;

  /// The available quantity of the item.
  ///
  /// Required.
  core.String? quantity;

  /// The identifier of the merchant's store.
  ///
  /// Either a `storeCode` inserted via the API or the code of the store in
  /// Google My Business.
  ///
  /// Required.
  core.String? storeCode;

  /// The CLDR territory code for the item.
  ///
  /// Required.
  core.String? targetCountry;

  /// The inventory timestamp, in ISO 8601 format.
  ///
  /// Required.
  core.String? timestamp;

  PosInventoryRequest({
    this.contentLanguage,
    this.gtin,
    this.itemId,
    this.price,
    this.quantity,
    this.storeCode,
    this.targetCountry,
    this.timestamp,
  });

  PosInventoryRequest.fromJson(core.Map _json)
      : this(
          contentLanguage: _json.containsKey('contentLanguage')
              ? _json['contentLanguage'] as core.String
              : null,
          gtin: _json.containsKey('gtin') ? _json['gtin'] as core.String : null,
          itemId: _json.containsKey('itemId')
              ? _json['itemId'] as core.String
              : null,
          price: _json.containsKey('price')
              ? Price.fromJson(
                  _json['price'] as core.Map<core.String, core.dynamic>)
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.String
              : null,
          storeCode: _json.containsKey('storeCode')
              ? _json['storeCode'] as core.String
              : null,
          targetCountry: _json.containsKey('targetCountry')
              ? _json['targetCountry'] as core.String
              : null,
          timestamp: _json.containsKey('timestamp')
              ? _json['timestamp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentLanguage != null) 'contentLanguage': contentLanguage!,
        if (gtin != null) 'gtin': gtin!,
        if (itemId != null) 'itemId': itemId!,
        if (price != null) 'price': price!,
        if (quantity != null) 'quantity': quantity!,
        if (storeCode != null) 'storeCode': storeCode!,
        if (targetCountry != null) 'targetCountry': targetCountry!,
        if (timestamp != null) 'timestamp': timestamp!,
      };
}

class PosInventoryResponse {
  /// The two-letter ISO 639-1 language code for the item.
  ///
  /// Required.
  core.String? contentLanguage;

  /// Global Trade Item Number.
  core.String? gtin;

  /// A unique identifier for the item.
  ///
  /// Required.
  core.String? itemId;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#posInventoryResponse`".
  core.String? kind;

  /// The current price of the item.
  ///
  /// Required.
  Price? price;

  /// The available quantity of the item.
  ///
  /// Required.
  core.String? quantity;

  /// The identifier of the merchant's store.
  ///
  /// Either a `storeCode` inserted via the API or the code of the store in
  /// Google My Business.
  ///
  /// Required.
  core.String? storeCode;

  /// The CLDR territory code for the item.
  ///
  /// Required.
  core.String? targetCountry;

  /// The inventory timestamp, in ISO 8601 format.
  ///
  /// Required.
  core.String? timestamp;

  PosInventoryResponse({
    this.contentLanguage,
    this.gtin,
    this.itemId,
    this.kind,
    this.price,
    this.quantity,
    this.storeCode,
    this.targetCountry,
    this.timestamp,
  });

  PosInventoryResponse.fromJson(core.Map _json)
      : this(
          contentLanguage: _json.containsKey('contentLanguage')
              ? _json['contentLanguage'] as core.String
              : null,
          gtin: _json.containsKey('gtin') ? _json['gtin'] as core.String : null,
          itemId: _json.containsKey('itemId')
              ? _json['itemId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          price: _json.containsKey('price')
              ? Price.fromJson(
                  _json['price'] as core.Map<core.String, core.dynamic>)
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.String
              : null,
          storeCode: _json.containsKey('storeCode')
              ? _json['storeCode'] as core.String
              : null,
          targetCountry: _json.containsKey('targetCountry')
              ? _json['targetCountry'] as core.String
              : null,
          timestamp: _json.containsKey('timestamp')
              ? _json['timestamp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentLanguage != null) 'contentLanguage': contentLanguage!,
        if (gtin != null) 'gtin': gtin!,
        if (itemId != null) 'itemId': itemId!,
        if (kind != null) 'kind': kind!,
        if (price != null) 'price': price!,
        if (quantity != null) 'quantity': quantity!,
        if (storeCode != null) 'storeCode': storeCode!,
        if (targetCountry != null) 'targetCountry': targetCountry!,
        if (timestamp != null) 'timestamp': timestamp!,
      };
}

class PosListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#posListResponse`".
  core.String? kind;
  core.List<PosStore>? resources;

  PosListResponse({
    this.kind,
    this.resources,
  });

  PosListResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => PosStore.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (resources != null) 'resources': resources!,
      };
}

/// The change of the available quantity of an item at the given store.
class PosSale {
  /// The two-letter ISO 639-1 language code for the item.
  ///
  /// Required.
  core.String? contentLanguage;

  /// Global Trade Item Number.
  core.String? gtin;

  /// A unique identifier for the item.
  ///
  /// Required.
  core.String? itemId;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#posSale`"
  core.String? kind;

  /// The price of the item.
  ///
  /// Required.
  Price? price;

  /// The relative change of the available quantity.
  ///
  /// Negative for items returned.
  ///
  /// Required.
  core.String? quantity;

  /// A unique ID to group items from the same sale event.
  core.String? saleId;

  /// The identifier of the merchant's store.
  ///
  /// Either a `storeCode` inserted via the API or the code of the store in
  /// Google My Business.
  ///
  /// Required.
  core.String? storeCode;

  /// The CLDR territory code for the item.
  ///
  /// Required.
  core.String? targetCountry;

  /// The inventory timestamp, in ISO 8601 format.
  ///
  /// Required.
  core.String? timestamp;

  PosSale({
    this.contentLanguage,
    this.gtin,
    this.itemId,
    this.kind,
    this.price,
    this.quantity,
    this.saleId,
    this.storeCode,
    this.targetCountry,
    this.timestamp,
  });

  PosSale.fromJson(core.Map _json)
      : this(
          contentLanguage: _json.containsKey('contentLanguage')
              ? _json['contentLanguage'] as core.String
              : null,
          gtin: _json.containsKey('gtin') ? _json['gtin'] as core.String : null,
          itemId: _json.containsKey('itemId')
              ? _json['itemId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          price: _json.containsKey('price')
              ? Price.fromJson(
                  _json['price'] as core.Map<core.String, core.dynamic>)
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.String
              : null,
          saleId: _json.containsKey('saleId')
              ? _json['saleId'] as core.String
              : null,
          storeCode: _json.containsKey('storeCode')
              ? _json['storeCode'] as core.String
              : null,
          targetCountry: _json.containsKey('targetCountry')
              ? _json['targetCountry'] as core.String
              : null,
          timestamp: _json.containsKey('timestamp')
              ? _json['timestamp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentLanguage != null) 'contentLanguage': contentLanguage!,
        if (gtin != null) 'gtin': gtin!,
        if (itemId != null) 'itemId': itemId!,
        if (kind != null) 'kind': kind!,
        if (price != null) 'price': price!,
        if (quantity != null) 'quantity': quantity!,
        if (saleId != null) 'saleId': saleId!,
        if (storeCode != null) 'storeCode': storeCode!,
        if (targetCountry != null) 'targetCountry': targetCountry!,
        if (timestamp != null) 'timestamp': timestamp!,
      };
}

class PosSaleRequest {
  /// The two-letter ISO 639-1 language code for the item.
  ///
  /// Required.
  core.String? contentLanguage;

  /// Global Trade Item Number.
  core.String? gtin;

  /// A unique identifier for the item.
  ///
  /// Required.
  core.String? itemId;

  /// The price of the item.
  ///
  /// Required.
  Price? price;

  /// The relative change of the available quantity.
  ///
  /// Negative for items returned.
  ///
  /// Required.
  core.String? quantity;

  /// A unique ID to group items from the same sale event.
  core.String? saleId;

  /// The identifier of the merchant's store.
  ///
  /// Either a `storeCode` inserted via the API or the code of the store in
  /// Google My Business.
  ///
  /// Required.
  core.String? storeCode;

  /// The CLDR territory code for the item.
  ///
  /// Required.
  core.String? targetCountry;

  /// The inventory timestamp, in ISO 8601 format.
  ///
  /// Required.
  core.String? timestamp;

  PosSaleRequest({
    this.contentLanguage,
    this.gtin,
    this.itemId,
    this.price,
    this.quantity,
    this.saleId,
    this.storeCode,
    this.targetCountry,
    this.timestamp,
  });

  PosSaleRequest.fromJson(core.Map _json)
      : this(
          contentLanguage: _json.containsKey('contentLanguage')
              ? _json['contentLanguage'] as core.String
              : null,
          gtin: _json.containsKey('gtin') ? _json['gtin'] as core.String : null,
          itemId: _json.containsKey('itemId')
              ? _json['itemId'] as core.String
              : null,
          price: _json.containsKey('price')
              ? Price.fromJson(
                  _json['price'] as core.Map<core.String, core.dynamic>)
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.String
              : null,
          saleId: _json.containsKey('saleId')
              ? _json['saleId'] as core.String
              : null,
          storeCode: _json.containsKey('storeCode')
              ? _json['storeCode'] as core.String
              : null,
          targetCountry: _json.containsKey('targetCountry')
              ? _json['targetCountry'] as core.String
              : null,
          timestamp: _json.containsKey('timestamp')
              ? _json['timestamp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentLanguage != null) 'contentLanguage': contentLanguage!,
        if (gtin != null) 'gtin': gtin!,
        if (itemId != null) 'itemId': itemId!,
        if (price != null) 'price': price!,
        if (quantity != null) 'quantity': quantity!,
        if (saleId != null) 'saleId': saleId!,
        if (storeCode != null) 'storeCode': storeCode!,
        if (targetCountry != null) 'targetCountry': targetCountry!,
        if (timestamp != null) 'timestamp': timestamp!,
      };
}

class PosSaleResponse {
  /// The two-letter ISO 639-1 language code for the item.
  ///
  /// Required.
  core.String? contentLanguage;

  /// Global Trade Item Number.
  core.String? gtin;

  /// A unique identifier for the item.
  ///
  /// Required.
  core.String? itemId;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#posSaleResponse`".
  core.String? kind;

  /// The price of the item.
  ///
  /// Required.
  Price? price;

  /// The relative change of the available quantity.
  ///
  /// Negative for items returned.
  ///
  /// Required.
  core.String? quantity;

  /// A unique ID to group items from the same sale event.
  core.String? saleId;

  /// The identifier of the merchant's store.
  ///
  /// Either a `storeCode` inserted via the API or the code of the store in
  /// Google My Business.
  ///
  /// Required.
  core.String? storeCode;

  /// The CLDR territory code for the item.
  ///
  /// Required.
  core.String? targetCountry;

  /// The inventory timestamp, in ISO 8601 format.
  ///
  /// Required.
  core.String? timestamp;

  PosSaleResponse({
    this.contentLanguage,
    this.gtin,
    this.itemId,
    this.kind,
    this.price,
    this.quantity,
    this.saleId,
    this.storeCode,
    this.targetCountry,
    this.timestamp,
  });

  PosSaleResponse.fromJson(core.Map _json)
      : this(
          contentLanguage: _json.containsKey('contentLanguage')
              ? _json['contentLanguage'] as core.String
              : null,
          gtin: _json.containsKey('gtin') ? _json['gtin'] as core.String : null,
          itemId: _json.containsKey('itemId')
              ? _json['itemId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          price: _json.containsKey('price')
              ? Price.fromJson(
                  _json['price'] as core.Map<core.String, core.dynamic>)
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.String
              : null,
          saleId: _json.containsKey('saleId')
              ? _json['saleId'] as core.String
              : null,
          storeCode: _json.containsKey('storeCode')
              ? _json['storeCode'] as core.String
              : null,
          targetCountry: _json.containsKey('targetCountry')
              ? _json['targetCountry'] as core.String
              : null,
          timestamp: _json.containsKey('timestamp')
              ? _json['timestamp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentLanguage != null) 'contentLanguage': contentLanguage!,
        if (gtin != null) 'gtin': gtin!,
        if (itemId != null) 'itemId': itemId!,
        if (kind != null) 'kind': kind!,
        if (price != null) 'price': price!,
        if (quantity != null) 'quantity': quantity!,
        if (saleId != null) 'saleId': saleId!,
        if (storeCode != null) 'storeCode': storeCode!,
        if (targetCountry != null) 'targetCountry': targetCountry!,
        if (timestamp != null) 'timestamp': timestamp!,
      };
}

/// Store resource.
class PosStore {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#posStore`"
  core.String? kind;

  /// The street address of the store.
  ///
  /// Required.
  core.String? storeAddress;

  /// A store identifier that is unique for the given merchant.
  ///
  /// Required.
  core.String? storeCode;

  PosStore({
    this.kind,
    this.storeAddress,
    this.storeCode,
  });

  PosStore.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          storeAddress: _json.containsKey('storeAddress')
              ? _json['storeAddress'] as core.String
              : null,
          storeCode: _json.containsKey('storeCode')
              ? _json['storeCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (storeAddress != null) 'storeAddress': storeAddress!,
        if (storeCode != null) 'storeCode': storeCode!,
      };
}

class PostalCodeGroup {
  /// The CLDR territory code of the country the postal code group applies to.
  ///
  /// Required.
  core.String? country;

  /// The name of the postal code group, referred to in headers.
  ///
  /// Required.
  core.String? name;

  /// A range of postal codes.
  ///
  /// Required.
  core.List<PostalCodeRange>? postalCodeRanges;

  PostalCodeGroup({
    this.country,
    this.name,
    this.postalCodeRanges,
  });

  PostalCodeGroup.fromJson(core.Map _json)
      : this(
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          postalCodeRanges: _json.containsKey('postalCodeRanges')
              ? (_json['postalCodeRanges'] as core.List)
                  .map((value) => PostalCodeRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (country != null) 'country': country!,
        if (name != null) 'name': name!,
        if (postalCodeRanges != null) 'postalCodeRanges': postalCodeRanges!,
      };
}

class PostalCodeRange {
  /// A postal code or a pattern of the form `prefix*` denoting the inclusive
  /// lower bound of the range defining the area.
  ///
  /// Examples values: `"94108"`, `"9410*"`, `"9*"`. Required.
  core.String? postalCodeRangeBegin;

  /// A postal code or a pattern of the form `prefix*` denoting the inclusive
  /// upper bound of the range defining the area.
  ///
  /// It must have the same length as `postalCodeRangeBegin`: if
  /// `postalCodeRangeBegin` is a postal code then `postalCodeRangeEnd` must be
  /// a postal code too; if `postalCodeRangeBegin` is a pattern then
  /// `postalCodeRangeEnd` must be a pattern with the same prefix length.
  /// Optional: if not set, then the area is defined as being all the postal
  /// codes matching `postalCodeRangeBegin`.
  core.String? postalCodeRangeEnd;

  PostalCodeRange({
    this.postalCodeRangeBegin,
    this.postalCodeRangeEnd,
  });

  PostalCodeRange.fromJson(core.Map _json)
      : this(
          postalCodeRangeBegin: _json.containsKey('postalCodeRangeBegin')
              ? _json['postalCodeRangeBegin'] as core.String
              : null,
          postalCodeRangeEnd: _json.containsKey('postalCodeRangeEnd')
              ? _json['postalCodeRangeEnd'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (postalCodeRangeBegin != null)
          'postalCodeRangeBegin': postalCodeRangeBegin!,
        if (postalCodeRangeEnd != null)
          'postalCodeRangeEnd': postalCodeRangeEnd!,
      };
}

typedef Price = $Shared06;

/// The price represented as a number and currency.
typedef PriceAmount = $Shared06;

/// Required product attributes are primarily defined by the products data
/// specification.
///
/// See the Products Data Specification Help Center article for information.
/// Product data. After inserting, updating, or deleting a product, it may take
/// several minutes before changes take effect.
class Product {
  /// Additional URLs of images of the item.
  core.List<core.String>? additionalImageLinks;

  /// Additional cut of the item.
  ///
  /// Used together with size_type to represent combined size types for apparel
  /// items.
  core.String? additionalSizeType;

  /// Used to group items in an arbitrary way.
  ///
  /// Only for CPA%, discouraged otherwise.
  core.String? adsGrouping;

  /// Similar to ads_grouping, but only works on CPC.
  core.List<core.String>? adsLabels;

  /// Allows advertisers to override the item URL when the product is shown
  /// within the context of Product Ads.
  core.String? adsRedirect;

  /// Should be set to true if the item is targeted towards adults.
  core.bool? adult;

  /// Target age group of the item.
  core.String? ageGroup;

  /// Availability status of the item.
  core.String? availability;

  /// The day a pre-ordered product becomes available for delivery, in ISO 8601
  /// format.
  core.String? availabilityDate;

  /// Brand of the item.
  core.String? brand;

  /// URL for the canonical version of your item's landing page.
  core.String? canonicalLink;

  /// The item's channel (online or local).
  ///
  /// Acceptable values are: - "`local`" - "`online`"
  ///
  /// Required.
  core.String? channel;

  /// Color of the item.
  core.String? color;

  /// Condition or state of the item.
  core.String? condition;

  /// The two-letter ISO 639-1 language code for the item.
  ///
  /// Required.
  core.String? contentLanguage;

  /// Cost of goods sold.
  ///
  /// Used for gross profit reporting.
  Price? costOfGoodsSold;

  /// A list of custom (merchant-provided) attributes.
  ///
  /// It can also be used for submitting any attribute of the feed specification
  /// in its generic form (e.g., `{ "name": "size type", "value": "regular" }`).
  /// This is useful for submitting attributes not explicitly exposed by the
  /// API, such as additional attributes used for Buy on Google (formerly known
  /// as Shopping Actions).
  core.List<CustomAttribute>? customAttributes;

  /// Custom label 0 for custom grouping of items in a Shopping campaign.
  core.String? customLabel0;

  /// Custom label 1 for custom grouping of items in a Shopping campaign.
  core.String? customLabel1;

  /// Custom label 2 for custom grouping of items in a Shopping campaign.
  core.String? customLabel2;

  /// Custom label 3 for custom grouping of items in a Shopping campaign.
  core.String? customLabel3;

  /// Custom label 4 for custom grouping of items in a Shopping campaign.
  core.String? customLabel4;

  /// Description of the item.
  core.String? description;

  /// An identifier for an item for dynamic remarketing campaigns.
  core.String? displayAdsId;

  /// URL directly to your item's landing page for dynamic remarketing
  /// campaigns.
  core.String? displayAdsLink;

  /// Advertiser-specified recommendations.
  core.List<core.String>? displayAdsSimilarIds;

  /// Title of an item for dynamic remarketing campaigns.
  core.String? displayAdsTitle;

  /// Offer margin for dynamic remarketing campaigns.
  core.double? displayAdsValue;

  /// The energy efficiency class as defined in EU directive 2010/30/EU.
  core.String? energyEfficiencyClass;

  /// The list of destinations to exclude for this target (corresponds to
  /// unchecked check boxes in Merchant Center).
  core.List<core.String>? excludedDestinations;

  /// Date on which the item should expire, as specified upon insertion, in ISO
  /// 8601 format.
  ///
  /// The actual expiration date in Google Shopping is exposed in
  /// `productstatuses` as `googleExpirationDate` and might be earlier if
  /// `expirationDate` is too far in the future.
  core.String? expirationDate;

  /// Target gender of the item.
  core.String? gender;

  /// Google's category of the item (see
  /// [Google product taxonomy](https://support.google.com/merchants/answer/1705911)).
  ///
  /// When querying products, this field will contain the user provided value.
  /// There is currently no way to get back the auto assigned google product
  /// categories through the API.
  core.String? googleProductCategory;

  /// Global Trade Item Number (GTIN) of the item.
  core.String? gtin;

  /// The REST ID of the product.
  ///
  /// Content API methods that operate on products take this as their
  /// `productId` parameter. The REST ID for a product is of the form
  /// channel:contentLanguage: targetCountry: offerId.
  core.String? id;

  /// False when the item does not have unique product identifiers appropriate
  /// to its category, such as GTIN, MPN, and brand.
  ///
  /// Required according to the Unique Product Identifier Rules for all target
  /// countries except for Canada.
  core.bool? identifierExists;

  /// URL of an image of the item.
  core.String? imageLink;

  /// The list of destinations to include for this target (corresponds to
  /// checked check boxes in Merchant Center).
  ///
  /// Default destinations are always included unless provided in
  /// `excludedDestinations`.
  core.List<core.String>? includedDestinations;

  /// Number and amount of installments to pay for an item.
  Installment? installment;

  /// Whether the item is a merchant-defined bundle.
  ///
  /// A bundle is a custom grouping of different products sold by a merchant for
  /// a single price.
  core.bool? isBundle;

  /// Shared identifier for all variants of the same product.
  core.String? itemGroupId;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#product`"
  core.String? kind;

  /// URL directly linking to your item's page on your website.
  core.String? link;

  /// URL template for merchant hosted local storefront.
  core.String? linkTemplate;

  /// Loyalty points that users receive after purchasing the item.
  ///
  /// Japan only.
  LoyaltyPoints? loyaltyPoints;

  /// The material of which the item is made.
  core.String? material;

  /// The energy efficiency class as defined in EU directive 2010/30/EU.
  core.String? maxEnergyEfficiencyClass;

  /// Maximal product handling time (in business days).
  core.String? maxHandlingTime;

  /// The energy efficiency class as defined in EU directive 2010/30/EU.
  core.String? minEnergyEfficiencyClass;

  /// Minimal product handling time (in business days).
  core.String? minHandlingTime;

  /// URL for the mobile-optimized version of your item's landing page.
  core.String? mobileLink;

  /// URL template for merchant hosted local storefront optimized for mobile
  /// devices.
  core.String? mobileLinkTemplate;

  /// Manufacturer Part Number (MPN) of the item.
  core.String? mpn;

  /// The number of identical products in a merchant-defined multipack.
  core.String? multipack;

  /// A unique identifier for the item.
  ///
  /// Leading and trailing whitespaces are stripped and multiple whitespaces are
  /// replaced by a single whitespace upon submission. Only valid unicode
  /// characters are accepted. See the products feed specification for details.
  /// *Note:* Content API methods that operate on products take the REST ID of
  /// the product, *not* this identifier.
  ///
  /// Required.
  core.String? offerId;

  /// The item's pattern (e.g. polka dots).
  core.String? pattern;

  /// The pick up option for the item.
  ///
  /// Acceptable values are: - "`buy`" - "`reserve`" - "`ship to store`" - "`not
  /// supported`"
  core.String? pickupMethod;

  /// Item store pickup timeline.
  ///
  /// Acceptable values are: - "`same day`" - "`next day`" - "`2-day`" -
  /// "`3-day`" - "`4-day`" - "`5-day`" - "`6-day`" - "`7-day`" - "`multi-week`"
  core.String? pickupSla;

  /// Price of the item.
  Price? price;

  /// Technical specification or additional product details.
  core.List<ProductProductDetail>? productDetails;

  /// The height of the product in the units provided.
  ///
  /// The value must be between 0 (exclusive) and 3000 (inclusive).
  ProductDimension? productHeight;

  /// Bullet points describing the most relevant highlights of a product.
  core.List<core.String>? productHighlights;

  /// The length of the product in the units provided.
  ///
  /// The value must be between 0 (exclusive) and 3000 (inclusive).
  ProductDimension? productLength;

  /// Categories of the item (formatted as in products data specification).
  core.List<core.String>? productTypes;

  /// The weight of the product in the units provided.
  ///
  /// The value must be between 0 (exclusive) and 2000 (inclusive).
  ProductWeight? productWeight;

  /// The width of the product in the units provided.
  ///
  /// The value must be between 0 (exclusive) and 3000 (inclusive).
  ProductDimension? productWidth;

  /// The unique ID of a promotion.
  core.List<core.String>? promotionIds;

  /// Advertised sale price of the item.
  Price? salePrice;

  /// Date range during which the item is on sale (see products data
  /// specification ).
  core.String? salePriceEffectiveDate;

  /// The quantity of the product that is available for selling on Google.
  ///
  /// Supported only for online products.
  core.String? sellOnGoogleQuantity;

  /// Shipping rules.
  core.List<ProductShipping>? shipping;

  /// Height of the item for shipping.
  ProductShippingDimension? shippingHeight;

  /// The shipping label of the product, used to group product in account-level
  /// shipping rules.
  core.String? shippingLabel;

  /// Length of the item for shipping.
  ProductShippingDimension? shippingLength;

  /// Weight of the item for shipping.
  ProductShippingWeight? shippingWeight;

  /// Width of the item for shipping.
  ProductShippingDimension? shippingWidth;

  /// List of country codes (ISO 3166-1 alpha-2) to exclude the offer from
  /// Shopping Ads destination.
  ///
  /// Countries from this list are removed from countries configured in MC feed
  /// settings.
  core.List<core.String>? shoppingAdsExcludedCountries;

  /// System in which the size is specified.
  ///
  /// Recommended for apparel items.
  core.String? sizeSystem;

  /// The cut of the item.
  ///
  /// Recommended for apparel items.
  core.String? sizeType;

  /// Size of the item.
  ///
  /// Only one value is allowed. For variants with different sizes, insert a
  /// separate product for each size with the same `itemGroupId` value (see size
  /// definition).
  core.List<core.String>? sizes;

  /// The source of the offer, i.e., how the offer was created.
  ///
  /// Acceptable values are: - "`api`" - "`crawl`" - "`feed`"
  core.String? source;

  /// Number of periods (months or years) and amount of payment per period for
  /// an item with an associated subscription contract.
  ProductSubscriptionCost? subscriptionCost;

  /// The CLDR territory code for the item.
  ///
  /// Required.
  core.String? targetCountry;

  /// The tax category of the product, used to configure detailed tax nexus in
  /// account-level tax settings.
  core.String? taxCategory;

  /// Tax information.
  core.List<ProductTax>? taxes;

  /// Title of the item.
  core.String? title;

  /// The transit time label of the product, used to group product in
  /// account-level transit time tables.
  core.String? transitTimeLabel;

  /// The preference of the denominator of the unit price.
  ProductUnitPricingBaseMeasure? unitPricingBaseMeasure;

  /// The measure and dimension of an item.
  ProductUnitPricingMeasure? unitPricingMeasure;

  Product({
    this.additionalImageLinks,
    this.additionalSizeType,
    this.adsGrouping,
    this.adsLabels,
    this.adsRedirect,
    this.adult,
    this.ageGroup,
    this.availability,
    this.availabilityDate,
    this.brand,
    this.canonicalLink,
    this.channel,
    this.color,
    this.condition,
    this.contentLanguage,
    this.costOfGoodsSold,
    this.customAttributes,
    this.customLabel0,
    this.customLabel1,
    this.customLabel2,
    this.customLabel3,
    this.customLabel4,
    this.description,
    this.displayAdsId,
    this.displayAdsLink,
    this.displayAdsSimilarIds,
    this.displayAdsTitle,
    this.displayAdsValue,
    this.energyEfficiencyClass,
    this.excludedDestinations,
    this.expirationDate,
    this.gender,
    this.googleProductCategory,
    this.gtin,
    this.id,
    this.identifierExists,
    this.imageLink,
    this.includedDestinations,
    this.installment,
    this.isBundle,
    this.itemGroupId,
    this.kind,
    this.link,
    this.linkTemplate,
    this.loyaltyPoints,
    this.material,
    this.maxEnergyEfficiencyClass,
    this.maxHandlingTime,
    this.minEnergyEfficiencyClass,
    this.minHandlingTime,
    this.mobileLink,
    this.mobileLinkTemplate,
    this.mpn,
    this.multipack,
    this.offerId,
    this.pattern,
    this.pickupMethod,
    this.pickupSla,
    this.price,
    this.productDetails,
    this.productHeight,
    this.productHighlights,
    this.productLength,
    this.productTypes,
    this.productWeight,
    this.productWidth,
    this.promotionIds,
    this.salePrice,
    this.salePriceEffectiveDate,
    this.sellOnGoogleQuantity,
    this.shipping,
    this.shippingHeight,
    this.shippingLabel,
    this.shippingLength,
    this.shippingWeight,
    this.shippingWidth,
    this.shoppingAdsExcludedCountries,
    this.sizeSystem,
    this.sizeType,
    this.sizes,
    this.source,
    this.subscriptionCost,
    this.targetCountry,
    this.taxCategory,
    this.taxes,
    this.title,
    this.transitTimeLabel,
    this.unitPricingBaseMeasure,
    this.unitPricingMeasure,
  });

  Product.fromJson(core.Map _json)
      : this(
          additionalImageLinks: _json.containsKey('additionalImageLinks')
              ? (_json['additionalImageLinks'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          additionalSizeType: _json.containsKey('additionalSizeType')
              ? _json['additionalSizeType'] as core.String
              : null,
          adsGrouping: _json.containsKey('adsGrouping')
              ? _json['adsGrouping'] as core.String
              : null,
          adsLabels: _json.containsKey('adsLabels')
              ? (_json['adsLabels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          adsRedirect: _json.containsKey('adsRedirect')
              ? _json['adsRedirect'] as core.String
              : null,
          adult:
              _json.containsKey('adult') ? _json['adult'] as core.bool : null,
          ageGroup: _json.containsKey('ageGroup')
              ? _json['ageGroup'] as core.String
              : null,
          availability: _json.containsKey('availability')
              ? _json['availability'] as core.String
              : null,
          availabilityDate: _json.containsKey('availabilityDate')
              ? _json['availabilityDate'] as core.String
              : null,
          brand:
              _json.containsKey('brand') ? _json['brand'] as core.String : null,
          canonicalLink: _json.containsKey('canonicalLink')
              ? _json['canonicalLink'] as core.String
              : null,
          channel: _json.containsKey('channel')
              ? _json['channel'] as core.String
              : null,
          color:
              _json.containsKey('color') ? _json['color'] as core.String : null,
          condition: _json.containsKey('condition')
              ? _json['condition'] as core.String
              : null,
          contentLanguage: _json.containsKey('contentLanguage')
              ? _json['contentLanguage'] as core.String
              : null,
          costOfGoodsSold: _json.containsKey('costOfGoodsSold')
              ? Price.fromJson(_json['costOfGoodsSold']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customAttributes: _json.containsKey('customAttributes')
              ? (_json['customAttributes'] as core.List)
                  .map((value) => CustomAttribute.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          customLabel0: _json.containsKey('customLabel0')
              ? _json['customLabel0'] as core.String
              : null,
          customLabel1: _json.containsKey('customLabel1')
              ? _json['customLabel1'] as core.String
              : null,
          customLabel2: _json.containsKey('customLabel2')
              ? _json['customLabel2'] as core.String
              : null,
          customLabel3: _json.containsKey('customLabel3')
              ? _json['customLabel3'] as core.String
              : null,
          customLabel4: _json.containsKey('customLabel4')
              ? _json['customLabel4'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayAdsId: _json.containsKey('displayAdsId')
              ? _json['displayAdsId'] as core.String
              : null,
          displayAdsLink: _json.containsKey('displayAdsLink')
              ? _json['displayAdsLink'] as core.String
              : null,
          displayAdsSimilarIds: _json.containsKey('displayAdsSimilarIds')
              ? (_json['displayAdsSimilarIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          displayAdsTitle: _json.containsKey('displayAdsTitle')
              ? _json['displayAdsTitle'] as core.String
              : null,
          displayAdsValue: _json.containsKey('displayAdsValue')
              ? (_json['displayAdsValue'] as core.num).toDouble()
              : null,
          energyEfficiencyClass: _json.containsKey('energyEfficiencyClass')
              ? _json['energyEfficiencyClass'] as core.String
              : null,
          excludedDestinations: _json.containsKey('excludedDestinations')
              ? (_json['excludedDestinations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          expirationDate: _json.containsKey('expirationDate')
              ? _json['expirationDate'] as core.String
              : null,
          gender: _json.containsKey('gender')
              ? _json['gender'] as core.String
              : null,
          googleProductCategory: _json.containsKey('googleProductCategory')
              ? _json['googleProductCategory'] as core.String
              : null,
          gtin: _json.containsKey('gtin') ? _json['gtin'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          identifierExists: _json.containsKey('identifierExists')
              ? _json['identifierExists'] as core.bool
              : null,
          imageLink: _json.containsKey('imageLink')
              ? _json['imageLink'] as core.String
              : null,
          includedDestinations: _json.containsKey('includedDestinations')
              ? (_json['includedDestinations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          installment: _json.containsKey('installment')
              ? Installment.fromJson(
                  _json['installment'] as core.Map<core.String, core.dynamic>)
              : null,
          isBundle: _json.containsKey('isBundle')
              ? _json['isBundle'] as core.bool
              : null,
          itemGroupId: _json.containsKey('itemGroupId')
              ? _json['itemGroupId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          link: _json.containsKey('link') ? _json['link'] as core.String : null,
          linkTemplate: _json.containsKey('linkTemplate')
              ? _json['linkTemplate'] as core.String
              : null,
          loyaltyPoints: _json.containsKey('loyaltyPoints')
              ? LoyaltyPoints.fromJson(
                  _json['loyaltyPoints'] as core.Map<core.String, core.dynamic>)
              : null,
          material: _json.containsKey('material')
              ? _json['material'] as core.String
              : null,
          maxEnergyEfficiencyClass:
              _json.containsKey('maxEnergyEfficiencyClass')
                  ? _json['maxEnergyEfficiencyClass'] as core.String
                  : null,
          maxHandlingTime: _json.containsKey('maxHandlingTime')
              ? _json['maxHandlingTime'] as core.String
              : null,
          minEnergyEfficiencyClass:
              _json.containsKey('minEnergyEfficiencyClass')
                  ? _json['minEnergyEfficiencyClass'] as core.String
                  : null,
          minHandlingTime: _json.containsKey('minHandlingTime')
              ? _json['minHandlingTime'] as core.String
              : null,
          mobileLink: _json.containsKey('mobileLink')
              ? _json['mobileLink'] as core.String
              : null,
          mobileLinkTemplate: _json.containsKey('mobileLinkTemplate')
              ? _json['mobileLinkTemplate'] as core.String
              : null,
          mpn: _json.containsKey('mpn') ? _json['mpn'] as core.String : null,
          multipack: _json.containsKey('multipack')
              ? _json['multipack'] as core.String
              : null,
          offerId: _json.containsKey('offerId')
              ? _json['offerId'] as core.String
              : null,
          pattern: _json.containsKey('pattern')
              ? _json['pattern'] as core.String
              : null,
          pickupMethod: _json.containsKey('pickupMethod')
              ? _json['pickupMethod'] as core.String
              : null,
          pickupSla: _json.containsKey('pickupSla')
              ? _json['pickupSla'] as core.String
              : null,
          price: _json.containsKey('price')
              ? Price.fromJson(
                  _json['price'] as core.Map<core.String, core.dynamic>)
              : null,
          productDetails: _json.containsKey('productDetails')
              ? (_json['productDetails'] as core.List)
                  .map((value) => ProductProductDetail.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          productHeight: _json.containsKey('productHeight')
              ? ProductDimension.fromJson(
                  _json['productHeight'] as core.Map<core.String, core.dynamic>)
              : null,
          productHighlights: _json.containsKey('productHighlights')
              ? (_json['productHighlights'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          productLength: _json.containsKey('productLength')
              ? ProductDimension.fromJson(
                  _json['productLength'] as core.Map<core.String, core.dynamic>)
              : null,
          productTypes: _json.containsKey('productTypes')
              ? (_json['productTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          productWeight: _json.containsKey('productWeight')
              ? ProductWeight.fromJson(
                  _json['productWeight'] as core.Map<core.String, core.dynamic>)
              : null,
          productWidth: _json.containsKey('productWidth')
              ? ProductDimension.fromJson(
                  _json['productWidth'] as core.Map<core.String, core.dynamic>)
              : null,
          promotionIds: _json.containsKey('promotionIds')
              ? (_json['promotionIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          salePrice: _json.containsKey('salePrice')
              ? Price.fromJson(
                  _json['salePrice'] as core.Map<core.String, core.dynamic>)
              : null,
          salePriceEffectiveDate: _json.containsKey('salePriceEffectiveDate')
              ? _json['salePriceEffectiveDate'] as core.String
              : null,
          sellOnGoogleQuantity: _json.containsKey('sellOnGoogleQuantity')
              ? _json['sellOnGoogleQuantity'] as core.String
              : null,
          shipping: _json.containsKey('shipping')
              ? (_json['shipping'] as core.List)
                  .map((value) => ProductShipping.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shippingHeight: _json.containsKey('shippingHeight')
              ? ProductShippingDimension.fromJson(_json['shippingHeight']
                  as core.Map<core.String, core.dynamic>)
              : null,
          shippingLabel: _json.containsKey('shippingLabel')
              ? _json['shippingLabel'] as core.String
              : null,
          shippingLength: _json.containsKey('shippingLength')
              ? ProductShippingDimension.fromJson(_json['shippingLength']
                  as core.Map<core.String, core.dynamic>)
              : null,
          shippingWeight: _json.containsKey('shippingWeight')
              ? ProductShippingWeight.fromJson(_json['shippingWeight']
                  as core.Map<core.String, core.dynamic>)
              : null,
          shippingWidth: _json.containsKey('shippingWidth')
              ? ProductShippingDimension.fromJson(
                  _json['shippingWidth'] as core.Map<core.String, core.dynamic>)
              : null,
          shoppingAdsExcludedCountries:
              _json.containsKey('shoppingAdsExcludedCountries')
                  ? (_json['shoppingAdsExcludedCountries'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          sizeSystem: _json.containsKey('sizeSystem')
              ? _json['sizeSystem'] as core.String
              : null,
          sizeType: _json.containsKey('sizeType')
              ? _json['sizeType'] as core.String
              : null,
          sizes: _json.containsKey('sizes')
              ? (_json['sizes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          source: _json.containsKey('source')
              ? _json['source'] as core.String
              : null,
          subscriptionCost: _json.containsKey('subscriptionCost')
              ? ProductSubscriptionCost.fromJson(_json['subscriptionCost']
                  as core.Map<core.String, core.dynamic>)
              : null,
          targetCountry: _json.containsKey('targetCountry')
              ? _json['targetCountry'] as core.String
              : null,
          taxCategory: _json.containsKey('taxCategory')
              ? _json['taxCategory'] as core.String
              : null,
          taxes: _json.containsKey('taxes')
              ? (_json['taxes'] as core.List)
                  .map((value) => ProductTax.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          transitTimeLabel: _json.containsKey('transitTimeLabel')
              ? _json['transitTimeLabel'] as core.String
              : null,
          unitPricingBaseMeasure: _json.containsKey('unitPricingBaseMeasure')
              ? ProductUnitPricingBaseMeasure.fromJson(
                  _json['unitPricingBaseMeasure']
                      as core.Map<core.String, core.dynamic>)
              : null,
          unitPricingMeasure: _json.containsKey('unitPricingMeasure')
              ? ProductUnitPricingMeasure.fromJson(_json['unitPricingMeasure']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalImageLinks != null)
          'additionalImageLinks': additionalImageLinks!,
        if (additionalSizeType != null)
          'additionalSizeType': additionalSizeType!,
        if (adsGrouping != null) 'adsGrouping': adsGrouping!,
        if (adsLabels != null) 'adsLabels': adsLabels!,
        if (adsRedirect != null) 'adsRedirect': adsRedirect!,
        if (adult != null) 'adult': adult!,
        if (ageGroup != null) 'ageGroup': ageGroup!,
        if (availability != null) 'availability': availability!,
        if (availabilityDate != null) 'availabilityDate': availabilityDate!,
        if (brand != null) 'brand': brand!,
        if (canonicalLink != null) 'canonicalLink': canonicalLink!,
        if (channel != null) 'channel': channel!,
        if (color != null) 'color': color!,
        if (condition != null) 'condition': condition!,
        if (contentLanguage != null) 'contentLanguage': contentLanguage!,
        if (costOfGoodsSold != null) 'costOfGoodsSold': costOfGoodsSold!,
        if (customAttributes != null) 'customAttributes': customAttributes!,
        if (customLabel0 != null) 'customLabel0': customLabel0!,
        if (customLabel1 != null) 'customLabel1': customLabel1!,
        if (customLabel2 != null) 'customLabel2': customLabel2!,
        if (customLabel3 != null) 'customLabel3': customLabel3!,
        if (customLabel4 != null) 'customLabel4': customLabel4!,
        if (description != null) 'description': description!,
        if (displayAdsId != null) 'displayAdsId': displayAdsId!,
        if (displayAdsLink != null) 'displayAdsLink': displayAdsLink!,
        if (displayAdsSimilarIds != null)
          'displayAdsSimilarIds': displayAdsSimilarIds!,
        if (displayAdsTitle != null) 'displayAdsTitle': displayAdsTitle!,
        if (displayAdsValue != null) 'displayAdsValue': displayAdsValue!,
        if (energyEfficiencyClass != null)
          'energyEfficiencyClass': energyEfficiencyClass!,
        if (excludedDestinations != null)
          'excludedDestinations': excludedDestinations!,
        if (expirationDate != null) 'expirationDate': expirationDate!,
        if (gender != null) 'gender': gender!,
        if (googleProductCategory != null)
          'googleProductCategory': googleProductCategory!,
        if (gtin != null) 'gtin': gtin!,
        if (id != null) 'id': id!,
        if (identifierExists != null) 'identifierExists': identifierExists!,
        if (imageLink != null) 'imageLink': imageLink!,
        if (includedDestinations != null)
          'includedDestinations': includedDestinations!,
        if (installment != null) 'installment': installment!,
        if (isBundle != null) 'isBundle': isBundle!,
        if (itemGroupId != null) 'itemGroupId': itemGroupId!,
        if (kind != null) 'kind': kind!,
        if (link != null) 'link': link!,
        if (linkTemplate != null) 'linkTemplate': linkTemplate!,
        if (loyaltyPoints != null) 'loyaltyPoints': loyaltyPoints!,
        if (material != null) 'material': material!,
        if (maxEnergyEfficiencyClass != null)
          'maxEnergyEfficiencyClass': maxEnergyEfficiencyClass!,
        if (maxHandlingTime != null) 'maxHandlingTime': maxHandlingTime!,
        if (minEnergyEfficiencyClass != null)
          'minEnergyEfficiencyClass': minEnergyEfficiencyClass!,
        if (minHandlingTime != null) 'minHandlingTime': minHandlingTime!,
        if (mobileLink != null) 'mobileLink': mobileLink!,
        if (mobileLinkTemplate != null)
          'mobileLinkTemplate': mobileLinkTemplate!,
        if (mpn != null) 'mpn': mpn!,
        if (multipack != null) 'multipack': multipack!,
        if (offerId != null) 'offerId': offerId!,
        if (pattern != null) 'pattern': pattern!,
        if (pickupMethod != null) 'pickupMethod': pickupMethod!,
        if (pickupSla != null) 'pickupSla': pickupSla!,
        if (price != null) 'price': price!,
        if (productDetails != null) 'productDetails': productDetails!,
        if (productHeight != null) 'productHeight': productHeight!,
        if (productHighlights != null) 'productHighlights': productHighlights!,
        if (productLength != null) 'productLength': productLength!,
        if (productTypes != null) 'productTypes': productTypes!,
        if (productWeight != null) 'productWeight': productWeight!,
        if (productWidth != null) 'productWidth': productWidth!,
        if (promotionIds != null) 'promotionIds': promotionIds!,
        if (salePrice != null) 'salePrice': salePrice!,
        if (salePriceEffectiveDate != null)
          'salePriceEffectiveDate': salePriceEffectiveDate!,
        if (sellOnGoogleQuantity != null)
          'sellOnGoogleQuantity': sellOnGoogleQuantity!,
        if (shipping != null) 'shipping': shipping!,
        if (shippingHeight != null) 'shippingHeight': shippingHeight!,
        if (shippingLabel != null) 'shippingLabel': shippingLabel!,
        if (shippingLength != null) 'shippingLength': shippingLength!,
        if (shippingWeight != null) 'shippingWeight': shippingWeight!,
        if (shippingWidth != null) 'shippingWidth': shippingWidth!,
        if (shoppingAdsExcludedCountries != null)
          'shoppingAdsExcludedCountries': shoppingAdsExcludedCountries!,
        if (sizeSystem != null) 'sizeSystem': sizeSystem!,
        if (sizeType != null) 'sizeType': sizeType!,
        if (sizes != null) 'sizes': sizes!,
        if (source != null) 'source': source!,
        if (subscriptionCost != null) 'subscriptionCost': subscriptionCost!,
        if (targetCountry != null) 'targetCountry': targetCountry!,
        if (taxCategory != null) 'taxCategory': taxCategory!,
        if (taxes != null) 'taxes': taxes!,
        if (title != null) 'title': title!,
        if (transitTimeLabel != null) 'transitTimeLabel': transitTimeLabel!,
        if (unitPricingBaseMeasure != null)
          'unitPricingBaseMeasure': unitPricingBaseMeasure!,
        if (unitPricingMeasure != null)
          'unitPricingMeasure': unitPricingMeasure!,
      };
}

class ProductAmount {
  /// The pre-tax or post-tax price depending on the location of the order.
  Price? priceAmount;

  /// Remitted tax value.
  Price? remittedTaxAmount;

  /// Tax value.
  Price? taxAmount;

  ProductAmount({
    this.priceAmount,
    this.remittedTaxAmount,
    this.taxAmount,
  });

  ProductAmount.fromJson(core.Map _json)
      : this(
          priceAmount: _json.containsKey('priceAmount')
              ? Price.fromJson(
                  _json['priceAmount'] as core.Map<core.String, core.dynamic>)
              : null,
          remittedTaxAmount: _json.containsKey('remittedTaxAmount')
              ? Price.fromJson(_json['remittedTaxAmount']
                  as core.Map<core.String, core.dynamic>)
              : null,
          taxAmount: _json.containsKey('taxAmount')
              ? Price.fromJson(
                  _json['taxAmount'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (priceAmount != null) 'priceAmount': priceAmount!,
        if (remittedTaxAmount != null) 'remittedTaxAmount': remittedTaxAmount!,
        if (taxAmount != null) 'taxAmount': taxAmount!,
      };
}

class ProductDimension {
  /// The length units.
  ///
  /// Acceptable values are: - "`in`" - "`cm`"
  ///
  /// Required.
  core.String? unit;

  /// The length value represented as a number.
  ///
  /// The value can have a maximum precision of four decimal places.
  ///
  /// Required.
  core.double? value;

  ProductDimension({
    this.unit,
    this.value,
  });

  ProductDimension.fromJson(core.Map _json)
      : this(
          unit: _json.containsKey('unit') ? _json['unit'] as core.String : null,
          value: _json.containsKey('value')
              ? (_json['value'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (unit != null) 'unit': unit!,
        if (value != null) 'value': value!,
      };
}

class ProductProductDetail {
  /// The name of the product detail.
  core.String? attributeName;

  /// The value of the product detail.
  core.String? attributeValue;

  /// The section header used to group a set of product details.
  core.String? sectionName;

  ProductProductDetail({
    this.attributeName,
    this.attributeValue,
    this.sectionName,
  });

  ProductProductDetail.fromJson(core.Map _json)
      : this(
          attributeName: _json.containsKey('attributeName')
              ? _json['attributeName'] as core.String
              : null,
          attributeValue: _json.containsKey('attributeValue')
              ? _json['attributeValue'] as core.String
              : null,
          sectionName: _json.containsKey('sectionName')
              ? _json['sectionName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributeName != null) 'attributeName': attributeName!,
        if (attributeValue != null) 'attributeValue': attributeValue!,
        if (sectionName != null) 'sectionName': sectionName!,
      };
}

class ProductShipping {
  /// The CLDR territory code of the country to which an item will ship.
  core.String? country;

  /// The location where the shipping is applicable, represented by a location
  /// group name.
  core.String? locationGroupName;

  /// The numeric ID of a location that the shipping rate applies to as defined
  /// in the AdWords API.
  core.String? locationId;

  /// Maximum handling time (inclusive) between when the order is received and
  /// shipped in business days.
  ///
  /// 0 means that the order is shipped on the same day as it is received if it
  /// happens before the cut-off time. Both maxHandlingTime and maxTransitTime
  /// are required if providing shipping speeds.
  core.String? maxHandlingTime;

  /// Maximum transit time (inclusive) between when the order has shipped and
  /// when it is delivered in business days.
  ///
  /// 0 means that the order is delivered on the same day as it ships. Both
  /// maxHandlingTime and maxTransitTime are required if providing shipping
  /// speeds.
  core.String? maxTransitTime;

  /// Minimum handling time (inclusive) between when the order is received and
  /// shipped in business days.
  ///
  /// 0 means that the order is shipped on the same day as it is received if it
  /// happens before the cut-off time. minHandlingTime can only be present
  /// together with maxHandlingTime; but it is not required if maxHandlingTime
  /// is present.
  core.String? minHandlingTime;

  /// Minimum transit time (inclusive) between when the order has shipped and
  /// when it is delivered in business days.
  ///
  /// 0 means that the order is delivered on the same day as it ships.
  /// minTransitTime can only be present together with maxTransitTime; but it is
  /// not required if maxTransitTime is present.
  core.String? minTransitTime;

  /// The postal code range that the shipping rate applies to, represented by a
  /// postal code, a postal code prefix followed by a * wildcard, a range
  /// between two postal codes or two postal code prefixes of equal length.
  core.String? postalCode;

  /// Fixed shipping price, represented as a number.
  Price? price;

  /// The geographic region to which a shipping rate applies.
  core.String? region;

  /// A free-form description of the service class or delivery speed.
  core.String? service;

  ProductShipping({
    this.country,
    this.locationGroupName,
    this.locationId,
    this.maxHandlingTime,
    this.maxTransitTime,
    this.minHandlingTime,
    this.minTransitTime,
    this.postalCode,
    this.price,
    this.region,
    this.service,
  });

  ProductShipping.fromJson(core.Map _json)
      : this(
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          locationGroupName: _json.containsKey('locationGroupName')
              ? _json['locationGroupName'] as core.String
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          maxHandlingTime: _json.containsKey('maxHandlingTime')
              ? _json['maxHandlingTime'] as core.String
              : null,
          maxTransitTime: _json.containsKey('maxTransitTime')
              ? _json['maxTransitTime'] as core.String
              : null,
          minHandlingTime: _json.containsKey('minHandlingTime')
              ? _json['minHandlingTime'] as core.String
              : null,
          minTransitTime: _json.containsKey('minTransitTime')
              ? _json['minTransitTime'] as core.String
              : null,
          postalCode: _json.containsKey('postalCode')
              ? _json['postalCode'] as core.String
              : null,
          price: _json.containsKey('price')
              ? Price.fromJson(
                  _json['price'] as core.Map<core.String, core.dynamic>)
              : null,
          region: _json.containsKey('region')
              ? _json['region'] as core.String
              : null,
          service: _json.containsKey('service')
              ? _json['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (country != null) 'country': country!,
        if (locationGroupName != null) 'locationGroupName': locationGroupName!,
        if (locationId != null) 'locationId': locationId!,
        if (maxHandlingTime != null) 'maxHandlingTime': maxHandlingTime!,
        if (maxTransitTime != null) 'maxTransitTime': maxTransitTime!,
        if (minHandlingTime != null) 'minHandlingTime': minHandlingTime!,
        if (minTransitTime != null) 'minTransitTime': minTransitTime!,
        if (postalCode != null) 'postalCode': postalCode!,
        if (price != null) 'price': price!,
        if (region != null) 'region': region!,
        if (service != null) 'service': service!,
      };
}

class ProductShippingDimension {
  /// The unit of value.
  core.String? unit;

  /// The dimension of the product used to calculate the shipping cost of the
  /// item.
  core.double? value;

  ProductShippingDimension({
    this.unit,
    this.value,
  });

  ProductShippingDimension.fromJson(core.Map _json)
      : this(
          unit: _json.containsKey('unit') ? _json['unit'] as core.String : null,
          value: _json.containsKey('value')
              ? (_json['value'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (unit != null) 'unit': unit!,
        if (value != null) 'value': value!,
      };
}

class ProductShippingWeight {
  /// The unit of value.
  core.String? unit;

  /// The weight of the product used to calculate the shipping cost of the item.
  core.double? value;

  ProductShippingWeight({
    this.unit,
    this.value,
  });

  ProductShippingWeight.fromJson(core.Map _json)
      : this(
          unit: _json.containsKey('unit') ? _json['unit'] as core.String : null,
          value: _json.containsKey('value')
              ? (_json['value'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (unit != null) 'unit': unit!,
        if (value != null) 'value': value!,
      };
}

/// The status of a product, i.e., information about a product computed
/// asynchronously.
class ProductStatus {
  /// Date on which the item has been created, in ISO 8601 format.
  core.String? creationDate;

  /// The intended destinations for the product.
  core.List<ProductStatusDestinationStatus>? destinationStatuses;

  /// Date on which the item expires in Google Shopping, in ISO 8601 format.
  core.String? googleExpirationDate;

  /// A list of all issues associated with the product.
  core.List<ProductStatusItemLevelIssue>? itemLevelIssues;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#productStatus`"
  core.String? kind;

  /// Date on which the item has been last updated, in ISO 8601 format.
  core.String? lastUpdateDate;

  /// The link to the product.
  core.String? link;

  /// The ID of the product for which status is reported.
  core.String? productId;

  /// The title of the product.
  core.String? title;

  ProductStatus({
    this.creationDate,
    this.destinationStatuses,
    this.googleExpirationDate,
    this.itemLevelIssues,
    this.kind,
    this.lastUpdateDate,
    this.link,
    this.productId,
    this.title,
  });

  ProductStatus.fromJson(core.Map _json)
      : this(
          creationDate: _json.containsKey('creationDate')
              ? _json['creationDate'] as core.String
              : null,
          destinationStatuses: _json.containsKey('destinationStatuses')
              ? (_json['destinationStatuses'] as core.List)
                  .map((value) => ProductStatusDestinationStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          googleExpirationDate: _json.containsKey('googleExpirationDate')
              ? _json['googleExpirationDate'] as core.String
              : null,
          itemLevelIssues: _json.containsKey('itemLevelIssues')
              ? (_json['itemLevelIssues'] as core.List)
                  .map((value) => ProductStatusItemLevelIssue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          lastUpdateDate: _json.containsKey('lastUpdateDate')
              ? _json['lastUpdateDate'] as core.String
              : null,
          link: _json.containsKey('link') ? _json['link'] as core.String : null,
          productId: _json.containsKey('productId')
              ? _json['productId'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creationDate != null) 'creationDate': creationDate!,
        if (destinationStatuses != null)
          'destinationStatuses': destinationStatuses!,
        if (googleExpirationDate != null)
          'googleExpirationDate': googleExpirationDate!,
        if (itemLevelIssues != null) 'itemLevelIssues': itemLevelIssues!,
        if (kind != null) 'kind': kind!,
        if (lastUpdateDate != null) 'lastUpdateDate': lastUpdateDate!,
        if (link != null) 'link': link!,
        if (productId != null) 'productId': productId!,
        if (title != null) 'title': title!,
      };
}

class ProductStatusDestinationStatus {
  /// List of country codes (ISO 3166-1 alpha-2) where the offer is approved.
  core.List<core.String>? approvedCountries;

  /// The name of the destination
  core.String? destination;

  /// List of country codes (ISO 3166-1 alpha-2) where the offer is disapproved.
  core.List<core.String>? disapprovedCountries;

  /// List of country codes (ISO 3166-1 alpha-2) where the offer is pending
  /// approval.
  core.List<core.String>? pendingCountries;

  /// Destination approval status in `targetCountry` of the offer.
  core.String? status;

  ProductStatusDestinationStatus({
    this.approvedCountries,
    this.destination,
    this.disapprovedCountries,
    this.pendingCountries,
    this.status,
  });

  ProductStatusDestinationStatus.fromJson(core.Map _json)
      : this(
          approvedCountries: _json.containsKey('approvedCountries')
              ? (_json['approvedCountries'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          destination: _json.containsKey('destination')
              ? _json['destination'] as core.String
              : null,
          disapprovedCountries: _json.containsKey('disapprovedCountries')
              ? (_json['disapprovedCountries'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          pendingCountries: _json.containsKey('pendingCountries')
              ? (_json['pendingCountries'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (approvedCountries != null) 'approvedCountries': approvedCountries!,
        if (destination != null) 'destination': destination!,
        if (disapprovedCountries != null)
          'disapprovedCountries': disapprovedCountries!,
        if (pendingCountries != null) 'pendingCountries': pendingCountries!,
        if (status != null) 'status': status!,
      };
}

class ProductStatusItemLevelIssue {
  /// List of country codes (ISO 3166-1 alpha-2) where issue applies to the
  /// offer.
  core.List<core.String>? applicableCountries;

  /// The attribute's name, if the issue is caused by a single attribute.
  core.String? attributeName;

  /// The error code of the issue.
  core.String? code;

  /// A short issue description in English.
  core.String? description;

  /// The destination the issue applies to.
  core.String? destination;

  /// A detailed issue description in English.
  core.String? detail;

  /// The URL of a web page to help with resolving this issue.
  core.String? documentation;

  /// Whether the issue can be resolved by the merchant.
  core.String? resolution;

  /// How this issue affects serving of the offer.
  core.String? servability;

  ProductStatusItemLevelIssue({
    this.applicableCountries,
    this.attributeName,
    this.code,
    this.description,
    this.destination,
    this.detail,
    this.documentation,
    this.resolution,
    this.servability,
  });

  ProductStatusItemLevelIssue.fromJson(core.Map _json)
      : this(
          applicableCountries: _json.containsKey('applicableCountries')
              ? (_json['applicableCountries'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          attributeName: _json.containsKey('attributeName')
              ? _json['attributeName'] as core.String
              : null,
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          destination: _json.containsKey('destination')
              ? _json['destination'] as core.String
              : null,
          detail: _json.containsKey('detail')
              ? _json['detail'] as core.String
              : null,
          documentation: _json.containsKey('documentation')
              ? _json['documentation'] as core.String
              : null,
          resolution: _json.containsKey('resolution')
              ? _json['resolution'] as core.String
              : null,
          servability: _json.containsKey('servability')
              ? _json['servability'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applicableCountries != null)
          'applicableCountries': applicableCountries!,
        if (attributeName != null) 'attributeName': attributeName!,
        if (code != null) 'code': code!,
        if (description != null) 'description': description!,
        if (destination != null) 'destination': destination!,
        if (detail != null) 'detail': detail!,
        if (documentation != null) 'documentation': documentation!,
        if (resolution != null) 'resolution': resolution!,
        if (servability != null) 'servability': servability!,
      };
}

class ProductSubscriptionCost {
  /// The amount the buyer has to pay per subscription period.
  Price? amount;

  /// The type of subscription period.
  core.String? period;

  /// The number of subscription periods the buyer has to pay.
  core.String? periodLength;

  ProductSubscriptionCost({
    this.amount,
    this.period,
    this.periodLength,
  });

  ProductSubscriptionCost.fromJson(core.Map _json)
      : this(
          amount: _json.containsKey('amount')
              ? Price.fromJson(
                  _json['amount'] as core.Map<core.String, core.dynamic>)
              : null,
          period: _json.containsKey('period')
              ? _json['period'] as core.String
              : null,
          periodLength: _json.containsKey('periodLength')
              ? _json['periodLength'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (amount != null) 'amount': amount!,
        if (period != null) 'period': period!,
        if (periodLength != null) 'periodLength': periodLength!,
      };
}

class ProductTax {
  /// The country within which the item is taxed, specified as a CLDR territory
  /// code.
  core.String? country;

  /// The numeric ID of a location that the tax rate applies to as defined in
  /// the AdWords API.
  core.String? locationId;

  /// The postal code range that the tax rate applies to, represented by a ZIP
  /// code, a ZIP code prefix using * wildcard, a range between two ZIP codes or
  /// two ZIP code prefixes of equal length.
  ///
  /// Examples: 94114, 94*, 94002-95460, 94*-95*.
  core.String? postalCode;

  /// The percentage of tax rate that applies to the item price.
  core.double? rate;

  /// The geographic region to which the tax rate applies.
  core.String? region;

  /// Should be set to true if tax is charged on shipping.
  core.bool? taxShip;

  ProductTax({
    this.country,
    this.locationId,
    this.postalCode,
    this.rate,
    this.region,
    this.taxShip,
  });

  ProductTax.fromJson(core.Map _json)
      : this(
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          postalCode: _json.containsKey('postalCode')
              ? _json['postalCode'] as core.String
              : null,
          rate: _json.containsKey('rate')
              ? (_json['rate'] as core.num).toDouble()
              : null,
          region: _json.containsKey('region')
              ? _json['region'] as core.String
              : null,
          taxShip: _json.containsKey('taxShip')
              ? _json['taxShip'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (country != null) 'country': country!,
        if (locationId != null) 'locationId': locationId!,
        if (postalCode != null) 'postalCode': postalCode!,
        if (rate != null) 'rate': rate!,
        if (region != null) 'region': region!,
        if (taxShip != null) 'taxShip': taxShip!,
      };
}

class ProductUnitPricingBaseMeasure {
  /// The unit of the denominator.
  core.String? unit;

  /// The denominator of the unit price.
  core.String? value;

  ProductUnitPricingBaseMeasure({
    this.unit,
    this.value,
  });

  ProductUnitPricingBaseMeasure.fromJson(core.Map _json)
      : this(
          unit: _json.containsKey('unit') ? _json['unit'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (unit != null) 'unit': unit!,
        if (value != null) 'value': value!,
      };
}

class ProductUnitPricingMeasure {
  /// The unit of the measure.
  core.String? unit;

  /// The measure of an item.
  core.double? value;

  ProductUnitPricingMeasure({
    this.unit,
    this.value,
  });

  ProductUnitPricingMeasure.fromJson(core.Map _json)
      : this(
          unit: _json.containsKey('unit') ? _json['unit'] as core.String : null,
          value: _json.containsKey('value')
              ? (_json['value'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (unit != null) 'unit': unit!,
        if (value != null) 'value': value!,
      };
}

class ProductWeight {
  /// The weight unit.
  ///
  /// Acceptable values are: - "`g`" - "`kg`" - "`oz`" - "`lb`"
  ///
  /// Required.
  core.String? unit;

  /// The weight represented as a number.
  ///
  /// The weight can have a maximum precision of four decimal places.
  ///
  /// Required.
  core.double? value;

  ProductWeight({
    this.unit,
    this.value,
  });

  ProductWeight.fromJson(core.Map _json)
      : this(
          unit: _json.containsKey('unit') ? _json['unit'] as core.String : null,
          value: _json.containsKey('value')
              ? (_json['value'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (unit != null) 'unit': unit!,
        if (value != null) 'value': value!,
      };
}

class ProductsCustomBatchRequest {
  /// The request entries to be processed in the batch.
  core.List<ProductsCustomBatchRequestEntry>? entries;

  ProductsCustomBatchRequest({
    this.entries,
  });

  ProductsCustomBatchRequest.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) => ProductsCustomBatchRequestEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

/// A batch entry encoding a single non-batch products request.
class ProductsCustomBatchRequestEntry {
  /// An entry ID, unique within the batch request.
  core.int? batchId;

  /// The Content API Supplemental Feed ID.
  ///
  /// If present then product insertion or deletion applies to a supplemental
  /// feed instead of primary Content API feed.
  core.String? feedId;

  /// The ID of the managing account.
  core.String? merchantId;

  /// The method of the batch entry.
  ///
  /// Acceptable values are: - "`delete`" - "`get`" - "`insert`" - "`update`"
  core.String? method;

  /// The product to insert or update.
  ///
  /// Only required if the method is `insert` or `update`. If the `update`
  /// method is used with `updateMask` only to delete a field, then this isn't
  /// required. For example, setting `salePrice` on the `updateMask` and not
  /// providing a `product` will result in an existing sale price on the product
  /// specified by `productId` being deleted.
  Product? product;

  /// The ID of the product to get or mutate.
  ///
  /// Only defined if the method is `get`, `delete`, or `update`.
  core.String? productId;

  /// The comma-separated list of product attributes to be updated.
  ///
  /// Example: `"title,salePrice"`. Attributes specified in the update mask
  /// without a value specified in the body will be deleted from the product.
  /// Only top-level product attributes can be updated. If not defined, product
  /// attributes with set values will be updated and other attributes will stay
  /// unchanged. Only defined if the method is `update`.
  core.String? updateMask;

  ProductsCustomBatchRequestEntry({
    this.batchId,
    this.feedId,
    this.merchantId,
    this.method,
    this.product,
    this.productId,
    this.updateMask,
  });

  ProductsCustomBatchRequestEntry.fromJson(core.Map _json)
      : this(
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          feedId: _json.containsKey('feedId')
              ? _json['feedId'] as core.String
              : null,
          merchantId: _json.containsKey('merchantId')
              ? _json['merchantId'] as core.String
              : null,
          method: _json.containsKey('method')
              ? _json['method'] as core.String
              : null,
          product: _json.containsKey('product')
              ? Product.fromJson(
                  _json['product'] as core.Map<core.String, core.dynamic>)
              : null,
          productId: _json.containsKey('productId')
              ? _json['productId'] as core.String
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchId != null) 'batchId': batchId!,
        if (feedId != null) 'feedId': feedId!,
        if (merchantId != null) 'merchantId': merchantId!,
        if (method != null) 'method': method!,
        if (product != null) 'product': product!,
        if (productId != null) 'productId': productId!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

class ProductsCustomBatchResponse {
  /// The result of the execution of the batch requests.
  core.List<ProductsCustomBatchResponseEntry>? entries;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#productsCustomBatchResponse`".
  core.String? kind;

  ProductsCustomBatchResponse({
    this.entries,
    this.kind,
  });

  ProductsCustomBatchResponse.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) => ProductsCustomBatchResponseEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
        if (kind != null) 'kind': kind!,
      };
}

/// A batch entry encoding a single non-batch products response.
class ProductsCustomBatchResponseEntry {
  /// The ID of the request entry this entry responds to.
  core.int? batchId;

  /// A list of errors defined if and only if the request failed.
  Errors? errors;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#productsCustomBatchResponseEntry`"
  core.String? kind;

  /// The inserted product.
  ///
  /// Only defined if the method is `insert` and if the request was successful.
  Product? product;

  ProductsCustomBatchResponseEntry({
    this.batchId,
    this.errors,
    this.kind,
    this.product,
  });

  ProductsCustomBatchResponseEntry.fromJson(core.Map _json)
      : this(
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          errors: _json.containsKey('errors')
              ? Errors.fromJson(
                  _json['errors'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          product: _json.containsKey('product')
              ? Product.fromJson(
                  _json['product'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchId != null) 'batchId': batchId!,
        if (errors != null) 'errors': errors!,
        if (kind != null) 'kind': kind!,
        if (product != null) 'product': product!,
      };
}

class ProductsListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#productsListResponse`".
  core.String? kind;

  /// The token for the retrieval of the next page of products.
  core.String? nextPageToken;
  core.List<Product>? resources;

  ProductsListResponse({
    this.kind,
    this.nextPageToken,
    this.resources,
  });

  ProductsListResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => Product.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resources != null) 'resources': resources!,
      };
}

class ProductstatusesCustomBatchRequest {
  /// The request entries to be processed in the batch.
  core.List<ProductstatusesCustomBatchRequestEntry>? entries;

  ProductstatusesCustomBatchRequest({
    this.entries,
  });

  ProductstatusesCustomBatchRequest.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) =>
                      ProductstatusesCustomBatchRequestEntry.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

/// A batch entry encoding a single non-batch productstatuses request.
class ProductstatusesCustomBatchRequestEntry {
  /// An entry ID, unique within the batch request.
  core.int? batchId;

  /// If set, only issues for the specified destinations are returned, otherwise
  /// only issues for the Shopping destination.
  core.List<core.String>? destinations;
  core.bool? includeAttributes;

  /// The ID of the managing account.
  core.String? merchantId;

  /// The method of the batch entry.
  ///
  /// Acceptable values are: - "`get`"
  core.String? method;

  /// The ID of the product whose status to get.
  core.String? productId;

  ProductstatusesCustomBatchRequestEntry({
    this.batchId,
    this.destinations,
    this.includeAttributes,
    this.merchantId,
    this.method,
    this.productId,
  });

  ProductstatusesCustomBatchRequestEntry.fromJson(core.Map _json)
      : this(
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          destinations: _json.containsKey('destinations')
              ? (_json['destinations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includeAttributes: _json.containsKey('includeAttributes')
              ? _json['includeAttributes'] as core.bool
              : null,
          merchantId: _json.containsKey('merchantId')
              ? _json['merchantId'] as core.String
              : null,
          method: _json.containsKey('method')
              ? _json['method'] as core.String
              : null,
          productId: _json.containsKey('productId')
              ? _json['productId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchId != null) 'batchId': batchId!,
        if (destinations != null) 'destinations': destinations!,
        if (includeAttributes != null) 'includeAttributes': includeAttributes!,
        if (merchantId != null) 'merchantId': merchantId!,
        if (method != null) 'method': method!,
        if (productId != null) 'productId': productId!,
      };
}

class ProductstatusesCustomBatchResponse {
  /// The result of the execution of the batch requests.
  core.List<ProductstatusesCustomBatchResponseEntry>? entries;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#productstatusesCustomBatchResponse`".
  core.String? kind;

  ProductstatusesCustomBatchResponse({
    this.entries,
    this.kind,
  });

  ProductstatusesCustomBatchResponse.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) =>
                      ProductstatusesCustomBatchResponseEntry.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
        if (kind != null) 'kind': kind!,
      };
}

/// A batch entry encoding a single non-batch productstatuses response.
class ProductstatusesCustomBatchResponseEntry {
  /// The ID of the request entry this entry responds to.
  core.int? batchId;

  /// A list of errors, if the request failed.
  Errors? errors;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string
  /// "`content#productstatusesCustomBatchResponseEntry`"
  core.String? kind;

  /// The requested product status.
  ///
  /// Only defined if the request was successful.
  ProductStatus? productStatus;

  ProductstatusesCustomBatchResponseEntry({
    this.batchId,
    this.errors,
    this.kind,
    this.productStatus,
  });

  ProductstatusesCustomBatchResponseEntry.fromJson(core.Map _json)
      : this(
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          errors: _json.containsKey('errors')
              ? Errors.fromJson(
                  _json['errors'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          productStatus: _json.containsKey('productStatus')
              ? ProductStatus.fromJson(
                  _json['productStatus'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchId != null) 'batchId': batchId!,
        if (errors != null) 'errors': errors!,
        if (kind != null) 'kind': kind!,
        if (productStatus != null) 'productStatus': productStatus!,
      };
}

class ProductstatusesListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#productstatusesListResponse`".
  core.String? kind;

  /// The token for the retrieval of the next page of products statuses.
  core.String? nextPageToken;
  core.List<ProductStatus>? resources;

  ProductstatusesListResponse({
    this.kind,
    this.nextPageToken,
    this.resources,
  });

  ProductstatusesListResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => ProductStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resources != null) 'resources': resources!,
      };
}

/// The Promotions feature is currently in alpha and is not yet publicly
/// available via Content API for Shopping.
///
/// This documentation is provided for reference only may be subject to change.
/// Represents a promotion. See the following articles for more details. *
/// [Promotions feed specification](https://support.google.com/merchants/answer/2906014)
/// *
/// [Local promotions feed specification](https://support.google.com/merchants/answer/10146130)
/// *
/// [Promotions on Buy on Google product data specification](https://support.google.com/merchants/answer/9173673)
class Promotion {
  /// Product filter by brand for the promotion.
  core.List<core.String>? brand;

  /// Product filter by brand exclusion for the promotion.
  core.List<core.String>? brandExclusion;

  /// The content language used as part of the unique identifier.
  ///
  /// Required.
  core.String? contentLanguage;

  /// Coupon value type for the promotion.
  ///
  /// Required.
  /// Possible string values are:
  /// - "COUPON_VALUE_TYPE_UNSPECIFIED" : Indicates that the coupon value type
  /// is unspecified.
  /// - "MONEY_OFF" : Money off coupon value type.
  /// - "PERCENT_OFF" : Percent off coupon value type.
  /// - "BUY_M_GET_N_MONEY_OFF" : Buy M quantity, get N money off coupon value
  /// type. buy_this_quantity and get_this_quantity must be present.
  /// money_off_amount must also be present.
  /// - "BUY_M_GET_N_PERCENT_OFF" : Buy M quantity, get N percent off coupon
  /// value type. buy_this_quantity and get_this_quantity must be present.
  /// percent_off_percentage must also be present.
  /// - "BUY_M_GET_MONEY_OFF" : Buy M quantity, get money off. buy_this_quantity
  /// and money_off_amount must be present.
  /// - "BUY_M_GET_PERCENT_OFF" : Buy M quantity, get money off.
  /// buy_this_quantity and percent_off_percentage must be present.
  /// - "FREE_GIFT" : Free gift with description only
  /// - "FREE_GIFT_WITH_VALUE" : Free gift with value (description is optional).
  /// - "FREE_GIFT_WITH_ITEM_ID" : Free gift with item id (description is
  /// optional).
  /// - "FREE_SHIPPING_STANDARD" : Standard free shipping coupon value type.
  /// - "FREE_SHIPPING_OVERNIGHT" : Overnight free shipping coupon value type.
  /// - "FREE_SHIPPING_TWO_DAY" : Two day free shipping coupon value type.
  core.String? couponValueType;

  /// Free gift description for the promotion.
  core.String? freeGiftDescription;

  /// Free gift item id for the promotion.
  core.String? freeGiftItemId;

  /// Free gift value for the promotion.
  PriceAmount? freeGiftValue;

  /// Generic redemption code for the promotion.
  ///
  /// To be used with the above field.
  core.String? genericRedemptionCode;

  /// The number of items discounted in the promotion.
  core.int? getThisQuantityDiscounted;

  /// The REST promotion id to uniquely identify the promotion.
  ///
  /// Content API methods that operate on promotions take this as their
  /// promotionId parameter. The REST ID for a promotion is of the form
  /// channel:contentLanguage:targetCountry:promotionId The channel field will
  /// have a value of "online", "local", or "onlinelocal".
  ///
  /// Required. Output only.
  core.String? id;

  /// Product filter by item group id for the promotion.
  core.List<core.String>? itemGroupId;

  /// Product filter by item group id exclusion for the promotion.
  core.List<core.String>? itemGroupIdExclusion;

  /// Product filter by item id for the promotion.
  core.List<core.String>? itemId;

  /// Product filter by item id exclusion for the promotion.
  core.List<core.String>? itemIdExclusion;

  /// Maximum purchase quantity for the promotion.
  core.int? limitQuantity;

  /// Maximum purchase value for the promotion.
  PriceAmount? limitValue;

  /// Long title for the promotion.
  core.String? longTitle;

  /// Minimum purchase amount for the promotion.
  PriceAmount? minimumPurchaseAmount;

  /// Minimum purchase quantity for the promotion.
  core.int? minimumPurchaseQuantity;

  /// Promotion cost cap of the promotion.
  PriceAmount? moneyBudget;

  /// The money off amount offered in the promotion.
  PriceAmount? moneyOffAmount;

  /// Type of the promotion.
  ///
  /// Required.
  /// Possible string values are:
  /// - "OFFER_TYPE_UNSPECIFIED" : Unknown offer type.
  /// - "NO_CODE" : Offer type without a code.
  /// - "GENERIC_CODE" : Offer type with a code.
  core.String? offerType;

  /// Order limit for the promotion.
  core.int? orderLimit;

  /// The percentage discount offered in the promotion.
  core.int? percentOff;

  /// Applicability of the promotion to either all products or only specific
  /// products.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PRODUCT_APPLICABILITY_UNSPECIFIED" : Unknown product applicability.
  /// - "ALL_PRODUCTS" : Applicable to all products.
  /// - "SPECIFIC_PRODUCTS" : Applicable to only a single product or list of
  /// products.
  core.String? productApplicability;

  /// Product filter by product type for the promotion.
  core.List<core.String>? productType;

  /// Product filter by product type exclusion for the promotion.
  core.List<core.String>? productTypeExclusion;

  /// Destination ID for the promotion.
  core.List<core.String>? promotionDestinationIds;

  /// String representation of the promotion display dates.
  core.String? promotionDisplayDates;

  /// String representation of the promotion effective dates.
  ///
  /// Required.
  core.String? promotionEffectiveDates;

  /// The user provided promotion id to uniquely identify the promotion.
  ///
  /// Required.
  core.String? promotionId;

  /// Redemption channel for the promotion.
  ///
  /// At least one channel is required.
  ///
  /// Required.
  core.List<core.String>? redemptionChannel;

  /// Shipping service names for thse promotion.
  core.List<core.String>? shippingServiceNames;

  /// The target country used as part of the unique identifier.
  ///
  /// Required.
  core.String? targetCountry;

  Promotion({
    this.brand,
    this.brandExclusion,
    this.contentLanguage,
    this.couponValueType,
    this.freeGiftDescription,
    this.freeGiftItemId,
    this.freeGiftValue,
    this.genericRedemptionCode,
    this.getThisQuantityDiscounted,
    this.id,
    this.itemGroupId,
    this.itemGroupIdExclusion,
    this.itemId,
    this.itemIdExclusion,
    this.limitQuantity,
    this.limitValue,
    this.longTitle,
    this.minimumPurchaseAmount,
    this.minimumPurchaseQuantity,
    this.moneyBudget,
    this.moneyOffAmount,
    this.offerType,
    this.orderLimit,
    this.percentOff,
    this.productApplicability,
    this.productType,
    this.productTypeExclusion,
    this.promotionDestinationIds,
    this.promotionDisplayDates,
    this.promotionEffectiveDates,
    this.promotionId,
    this.redemptionChannel,
    this.shippingServiceNames,
    this.targetCountry,
  });

  Promotion.fromJson(core.Map _json)
      : this(
          brand: _json.containsKey('brand')
              ? (_json['brand'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          brandExclusion: _json.containsKey('brandExclusion')
              ? (_json['brandExclusion'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          contentLanguage: _json.containsKey('contentLanguage')
              ? _json['contentLanguage'] as core.String
              : null,
          couponValueType: _json.containsKey('couponValueType')
              ? _json['couponValueType'] as core.String
              : null,
          freeGiftDescription: _json.containsKey('freeGiftDescription')
              ? _json['freeGiftDescription'] as core.String
              : null,
          freeGiftItemId: _json.containsKey('freeGiftItemId')
              ? _json['freeGiftItemId'] as core.String
              : null,
          freeGiftValue: _json.containsKey('freeGiftValue')
              ? PriceAmount.fromJson(
                  _json['freeGiftValue'] as core.Map<core.String, core.dynamic>)
              : null,
          genericRedemptionCode: _json.containsKey('genericRedemptionCode')
              ? _json['genericRedemptionCode'] as core.String
              : null,
          getThisQuantityDiscounted:
              _json.containsKey('getThisQuantityDiscounted')
                  ? _json['getThisQuantityDiscounted'] as core.int
                  : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          itemGroupId: _json.containsKey('itemGroupId')
              ? (_json['itemGroupId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          itemGroupIdExclusion: _json.containsKey('itemGroupIdExclusion')
              ? (_json['itemGroupIdExclusion'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          itemId: _json.containsKey('itemId')
              ? (_json['itemId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          itemIdExclusion: _json.containsKey('itemIdExclusion')
              ? (_json['itemIdExclusion'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          limitQuantity: _json.containsKey('limitQuantity')
              ? _json['limitQuantity'] as core.int
              : null,
          limitValue: _json.containsKey('limitValue')
              ? PriceAmount.fromJson(
                  _json['limitValue'] as core.Map<core.String, core.dynamic>)
              : null,
          longTitle: _json.containsKey('longTitle')
              ? _json['longTitle'] as core.String
              : null,
          minimumPurchaseAmount: _json.containsKey('minimumPurchaseAmount')
              ? PriceAmount.fromJson(_json['minimumPurchaseAmount']
                  as core.Map<core.String, core.dynamic>)
              : null,
          minimumPurchaseQuantity: _json.containsKey('minimumPurchaseQuantity')
              ? _json['minimumPurchaseQuantity'] as core.int
              : null,
          moneyBudget: _json.containsKey('moneyBudget')
              ? PriceAmount.fromJson(
                  _json['moneyBudget'] as core.Map<core.String, core.dynamic>)
              : null,
          moneyOffAmount: _json.containsKey('moneyOffAmount')
              ? PriceAmount.fromJson(_json['moneyOffAmount']
                  as core.Map<core.String, core.dynamic>)
              : null,
          offerType: _json.containsKey('offerType')
              ? _json['offerType'] as core.String
              : null,
          orderLimit: _json.containsKey('orderLimit')
              ? _json['orderLimit'] as core.int
              : null,
          percentOff: _json.containsKey('percentOff')
              ? _json['percentOff'] as core.int
              : null,
          productApplicability: _json.containsKey('productApplicability')
              ? _json['productApplicability'] as core.String
              : null,
          productType: _json.containsKey('productType')
              ? (_json['productType'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          productTypeExclusion: _json.containsKey('productTypeExclusion')
              ? (_json['productTypeExclusion'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          promotionDestinationIds: _json.containsKey('promotionDestinationIds')
              ? (_json['promotionDestinationIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          promotionDisplayDates: _json.containsKey('promotionDisplayDates')
              ? _json['promotionDisplayDates'] as core.String
              : null,
          promotionEffectiveDates: _json.containsKey('promotionEffectiveDates')
              ? _json['promotionEffectiveDates'] as core.String
              : null,
          promotionId: _json.containsKey('promotionId')
              ? _json['promotionId'] as core.String
              : null,
          redemptionChannel: _json.containsKey('redemptionChannel')
              ? (_json['redemptionChannel'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          shippingServiceNames: _json.containsKey('shippingServiceNames')
              ? (_json['shippingServiceNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          targetCountry: _json.containsKey('targetCountry')
              ? _json['targetCountry'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (brand != null) 'brand': brand!,
        if (brandExclusion != null) 'brandExclusion': brandExclusion!,
        if (contentLanguage != null) 'contentLanguage': contentLanguage!,
        if (couponValueType != null) 'couponValueType': couponValueType!,
        if (freeGiftDescription != null)
          'freeGiftDescription': freeGiftDescription!,
        if (freeGiftItemId != null) 'freeGiftItemId': freeGiftItemId!,
        if (freeGiftValue != null) 'freeGiftValue': freeGiftValue!,
        if (genericRedemptionCode != null)
          'genericRedemptionCode': genericRedemptionCode!,
        if (getThisQuantityDiscounted != null)
          'getThisQuantityDiscounted': getThisQuantityDiscounted!,
        if (id != null) 'id': id!,
        if (itemGroupId != null) 'itemGroupId': itemGroupId!,
        if (itemGroupIdExclusion != null)
          'itemGroupIdExclusion': itemGroupIdExclusion!,
        if (itemId != null) 'itemId': itemId!,
        if (itemIdExclusion != null) 'itemIdExclusion': itemIdExclusion!,
        if (limitQuantity != null) 'limitQuantity': limitQuantity!,
        if (limitValue != null) 'limitValue': limitValue!,
        if (longTitle != null) 'longTitle': longTitle!,
        if (minimumPurchaseAmount != null)
          'minimumPurchaseAmount': minimumPurchaseAmount!,
        if (minimumPurchaseQuantity != null)
          'minimumPurchaseQuantity': minimumPurchaseQuantity!,
        if (moneyBudget != null) 'moneyBudget': moneyBudget!,
        if (moneyOffAmount != null) 'moneyOffAmount': moneyOffAmount!,
        if (offerType != null) 'offerType': offerType!,
        if (orderLimit != null) 'orderLimit': orderLimit!,
        if (percentOff != null) 'percentOff': percentOff!,
        if (productApplicability != null)
          'productApplicability': productApplicability!,
        if (productType != null) 'productType': productType!,
        if (productTypeExclusion != null)
          'productTypeExclusion': productTypeExclusion!,
        if (promotionDestinationIds != null)
          'promotionDestinationIds': promotionDestinationIds!,
        if (promotionDisplayDates != null)
          'promotionDisplayDates': promotionDisplayDates!,
        if (promotionEffectiveDates != null)
          'promotionEffectiveDates': promotionEffectiveDates!,
        if (promotionId != null) 'promotionId': promotionId!,
        if (redemptionChannel != null) 'redemptionChannel': redemptionChannel!,
        if (shippingServiceNames != null)
          'shippingServiceNames': shippingServiceNames!,
        if (targetCountry != null) 'targetCountry': targetCountry!,
      };
}

/// Settings for Pub/Sub notifications, all methods require that the caller is a
/// direct user of the merchant center account.
class PubsubNotificationSettings {
  /// Cloud pub/sub topic to which notifications are sent (read-only).
  core.String? cloudTopicName;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#pubsubNotificationSettings`"
  core.String? kind;

  /// List of event types.
  ///
  /// Acceptable values are: - "`orderPendingShipment`"
  core.List<core.String>? registeredEvents;

  PubsubNotificationSettings({
    this.cloudTopicName,
    this.kind,
    this.registeredEvents,
  });

  PubsubNotificationSettings.fromJson(core.Map _json)
      : this(
          cloudTopicName: _json.containsKey('cloudTopicName')
              ? _json['cloudTopicName'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          registeredEvents: _json.containsKey('registeredEvents')
              ? (_json['registeredEvents'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudTopicName != null) 'cloudTopicName': cloudTopicName!,
        if (kind != null) 'kind': kind!,
        if (registeredEvents != null) 'registeredEvents': registeredEvents!,
      };
}

class RateGroup {
  /// A list of shipping labels defining the products to which this rate group
  /// applies to.
  ///
  /// This is a disjunction: only one of the labels has to match for the rate
  /// group to apply. May only be empty for the last rate group of a service.
  /// Required.
  core.List<core.String>? applicableShippingLabels;

  /// A list of carrier rates that can be referred to by `mainTable` or
  /// `singleValue`.
  core.List<CarrierRate>? carrierRates;

  /// A table defining the rate group, when `singleValue` is not expressive
  /// enough.
  ///
  /// Can only be set if `singleValue` is not set.
  Table? mainTable;

  /// Name of the rate group.
  ///
  /// Optional. If set has to be unique within shipping service.
  core.String? name;

  /// The value of the rate group (e.g. flat rate $10).
  ///
  /// Can only be set if `mainTable` and `subtables` are not set.
  Value? singleValue;

  /// A list of subtables referred to by `mainTable`.
  ///
  /// Can only be set if `mainTable` is set.
  core.List<Table>? subtables;

  RateGroup({
    this.applicableShippingLabels,
    this.carrierRates,
    this.mainTable,
    this.name,
    this.singleValue,
    this.subtables,
  });

  RateGroup.fromJson(core.Map _json)
      : this(
          applicableShippingLabels:
              _json.containsKey('applicableShippingLabels')
                  ? (_json['applicableShippingLabels'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          carrierRates: _json.containsKey('carrierRates')
              ? (_json['carrierRates'] as core.List)
                  .map((value) => CarrierRate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          mainTable: _json.containsKey('mainTable')
              ? Table.fromJson(
                  _json['mainTable'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          singleValue: _json.containsKey('singleValue')
              ? Value.fromJson(
                  _json['singleValue'] as core.Map<core.String, core.dynamic>)
              : null,
          subtables: _json.containsKey('subtables')
              ? (_json['subtables'] as core.List)
                  .map((value) => Table.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applicableShippingLabels != null)
          'applicableShippingLabels': applicableShippingLabels!,
        if (carrierRates != null) 'carrierRates': carrierRates!,
        if (mainTable != null) 'mainTable': mainTable!,
        if (name != null) 'name': name!,
        if (singleValue != null) 'singleValue': singleValue!,
        if (subtables != null) 'subtables': subtables!,
      };
}

class RefundReason {
  /// Description of the reason.
  core.String? description;

  /// Code of the refund reason.
  ///
  /// Acceptable values are: - "`adjustment`" - "`autoPostInternal`" -
  /// "`autoPostInvalidBillingAddress`" - "`autoPostNoInventory`" -
  /// "`autoPostPriceError`" - "`autoPostUndeliverableShippingAddress`" -
  /// "`couponAbuse`" - "`courtesyAdjustment`" - "`customerCanceled`" -
  /// "`customerDiscretionaryReturn`" - "`customerInitiatedMerchantCancel`" -
  /// "`customerSupportRequested`" - "`deliveredLateByCarrier`" -
  /// "`deliveredTooLate`" - "`expiredItem`" - "`failToPushOrderGoogleError`" -
  /// "`failToPushOrderMerchantError`" -
  /// "`failToPushOrderMerchantFulfillmentError`" -
  /// "`failToPushOrderToMerchant`" - "`failToPushOrderToMerchantOutOfStock`" -
  /// "`feeAdjustment`" - "`invalidCoupon`" - "`lateShipmentCredit`" -
  /// "`malformedShippingAddress`" - "`merchantDidNotShipOnTime`" -
  /// "`noInventory`" - "`orderTimeout`" - "`other`" - "`paymentAbuse`" -
  /// "`paymentDeclined`" - "`priceAdjustment`" - "`priceError`" -
  /// "`productArrivedDamaged`" - "`productNotAsDescribed`" -
  /// "`promoReallocation`" - "`qualityNotAsExpected`" - "`returnRefundAbuse`" -
  /// "`shippingCostAdjustment`" - "`shippingPriceError`" - "`taxAdjustment`" -
  /// "`taxError`" - "`undeliverableShippingAddress`" -
  /// "`unsupportedPoBoxAddress`" - "`wrongProductShipped`"
  core.String? reasonCode;

  RefundReason({
    this.description,
    this.reasonCode,
  });

  RefundReason.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          reasonCode: _json.containsKey('reasonCode')
              ? _json['reasonCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (reasonCode != null) 'reasonCode': reasonCode!,
      };
}

/// Represents a geographic region that you can use as a target with both the
/// `RegionalInventory` and `ShippingSettings` services.
///
/// You can define regions as collections of either postal codes or, in some
/// countries, using predefined geotargets.
class Region {
  /// The display name of the region.
  core.String? displayName;

  /// A list of geotargets that defines the region area.
  RegionGeoTargetArea? geotargetArea;

  /// Merchant that owns the region.
  ///
  /// Output only. Immutable.
  core.String? merchantId;

  /// A list of postal codes that defines the region area.
  RegionPostalCodeArea? postalCodeArea;

  /// The ID uniquely identifying each region.
  ///
  /// Output only. Immutable.
  core.String? regionId;

  /// Indicates if the region is eligible to use in the Regional Inventory
  /// configuration.
  ///
  /// Output only.
  core.bool? regionalInventoryEligible;

  /// Indicates if the region is eligible to use in the Shipping Services
  /// configuration.
  ///
  /// Output only.
  core.bool? shippingEligible;

  Region({
    this.displayName,
    this.geotargetArea,
    this.merchantId,
    this.postalCodeArea,
    this.regionId,
    this.regionalInventoryEligible,
    this.shippingEligible,
  });

  Region.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          geotargetArea: _json.containsKey('geotargetArea')
              ? RegionGeoTargetArea.fromJson(
                  _json['geotargetArea'] as core.Map<core.String, core.dynamic>)
              : null,
          merchantId: _json.containsKey('merchantId')
              ? _json['merchantId'] as core.String
              : null,
          postalCodeArea: _json.containsKey('postalCodeArea')
              ? RegionPostalCodeArea.fromJson(_json['postalCodeArea']
                  as core.Map<core.String, core.dynamic>)
              : null,
          regionId: _json.containsKey('regionId')
              ? _json['regionId'] as core.String
              : null,
          regionalInventoryEligible:
              _json.containsKey('regionalInventoryEligible')
                  ? _json['regionalInventoryEligible'] as core.bool
                  : null,
          shippingEligible: _json.containsKey('shippingEligible')
              ? _json['shippingEligible'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (geotargetArea != null) 'geotargetArea': geotargetArea!,
        if (merchantId != null) 'merchantId': merchantId!,
        if (postalCodeArea != null) 'postalCodeArea': postalCodeArea!,
        if (regionId != null) 'regionId': regionId!,
        if (regionalInventoryEligible != null)
          'regionalInventoryEligible': regionalInventoryEligible!,
        if (shippingEligible != null) 'shippingEligible': shippingEligible!,
      };
}

/// A list of geotargets that defines the region area.
class RegionGeoTargetArea {
  /// A non-empty list of
  /// [location IDs](https://developers.google.com/adwords/api/docs/appendix/geotargeting).
  ///
  /// They must all be of the same location type (e.g., state).
  ///
  /// Required.
  core.List<core.String>? geotargetCriteriaIds;

  RegionGeoTargetArea({
    this.geotargetCriteriaIds,
  });

  RegionGeoTargetArea.fromJson(core.Map _json)
      : this(
          geotargetCriteriaIds: _json.containsKey('geotargetCriteriaIds')
              ? (_json['geotargetCriteriaIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (geotargetCriteriaIds != null)
          'geotargetCriteriaIds': geotargetCriteriaIds!,
      };
}

/// A list of postal codes that defines the region area.
///
/// Note: All regions defined using postal codes are accessible via the
/// account's `ShippingSettings.postalCodeGroups` resource.
class RegionPostalCodeArea {
  /// A range of postal codes.
  ///
  /// Required.
  core.List<RegionPostalCodeAreaPostalCodeRange>? postalCodes;

  /// CLDR territory code or the country the postal code group applies to.
  ///
  /// Required.
  core.String? regionCode;

  RegionPostalCodeArea({
    this.postalCodes,
    this.regionCode,
  });

  RegionPostalCodeArea.fromJson(core.Map _json)
      : this(
          postalCodes: _json.containsKey('postalCodes')
              ? (_json['postalCodes'] as core.List)
                  .map((value) => RegionPostalCodeAreaPostalCodeRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          regionCode: _json.containsKey('regionCode')
              ? _json['regionCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (postalCodes != null) 'postalCodes': postalCodes!,
        if (regionCode != null) 'regionCode': regionCode!,
      };
}

/// A range of postal codes that defines the region area.
class RegionPostalCodeAreaPostalCodeRange {
  /// A postal code or a pattern of the form prefix* denoting the inclusive
  /// lower bound of the range defining the area.
  ///
  /// Examples values: "94108", "9410*", "9*".
  ///
  /// Required.
  core.String? begin;

  /// A postal code or a pattern of the form prefix* denoting the inclusive
  /// upper bound of the range defining the area.
  ///
  /// It must have the same length as postalCodeRangeBegin: if
  /// postalCodeRangeBegin is a postal code then postalCodeRangeEnd must be a
  /// postal code too; if postalCodeRangeBegin is a pattern then
  /// postalCodeRangeEnd must be a pattern with the same prefix length.
  /// Optional: if not set, then the area is defined as being all the postal
  /// codes matching postalCodeRangeBegin.
  ///
  /// Optional.
  core.String? end;

  RegionPostalCodeAreaPostalCodeRange({
    this.begin,
    this.end,
  });

  RegionPostalCodeAreaPostalCodeRange.fromJson(core.Map _json)
      : this(
          begin:
              _json.containsKey('begin') ? _json['begin'] as core.String : null,
          end: _json.containsKey('end') ? _json['end'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (begin != null) 'begin': begin!,
        if (end != null) 'end': end!,
      };
}

/// Regional inventory resource.
///
/// contains the regional name and all attributes which are overridden for the
/// specified region.
class RegionalInventory {
  /// The availability of the product.
  core.String? availability;

  /// A list of custom (merchant-provided) attributes.
  ///
  /// It can also be used for submitting any attribute of the feed specification
  /// in its generic form.
  core.List<CustomAttribute>? customAttributes;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#regionalInventory`".
  core.String? kind;

  /// The price of the product.
  Price? price;

  /// The ID uniquely identifying each region.
  core.String? regionId;

  /// The sale price of the product.
  ///
  /// Mandatory if `sale_price_effective_date` is defined.
  Price? salePrice;

  /// A date range represented by a pair of ISO 8601 dates separated by a space,
  /// comma, or slash.
  ///
  /// Both dates might be specified as 'null' if undecided.
  core.String? salePriceEffectiveDate;

  RegionalInventory({
    this.availability,
    this.customAttributes,
    this.kind,
    this.price,
    this.regionId,
    this.salePrice,
    this.salePriceEffectiveDate,
  });

  RegionalInventory.fromJson(core.Map _json)
      : this(
          availability: _json.containsKey('availability')
              ? _json['availability'] as core.String
              : null,
          customAttributes: _json.containsKey('customAttributes')
              ? (_json['customAttributes'] as core.List)
                  .map((value) => CustomAttribute.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          price: _json.containsKey('price')
              ? Price.fromJson(
                  _json['price'] as core.Map<core.String, core.dynamic>)
              : null,
          regionId: _json.containsKey('regionId')
              ? _json['regionId'] as core.String
              : null,
          salePrice: _json.containsKey('salePrice')
              ? Price.fromJson(
                  _json['salePrice'] as core.Map<core.String, core.dynamic>)
              : null,
          salePriceEffectiveDate: _json.containsKey('salePriceEffectiveDate')
              ? _json['salePriceEffectiveDate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availability != null) 'availability': availability!,
        if (customAttributes != null) 'customAttributes': customAttributes!,
        if (kind != null) 'kind': kind!,
        if (price != null) 'price': price!,
        if (regionId != null) 'regionId': regionId!,
        if (salePrice != null) 'salePrice': salePrice!,
        if (salePriceEffectiveDate != null)
          'salePriceEffectiveDate': salePriceEffectiveDate!,
      };
}

class RegionalinventoryCustomBatchRequest {
  /// The request entries to be processed in the batch.
  core.List<RegionalinventoryCustomBatchRequestEntry>? entries;

  RegionalinventoryCustomBatchRequest({
    this.entries,
  });

  RegionalinventoryCustomBatchRequest.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) =>
                      RegionalinventoryCustomBatchRequestEntry.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

/// A batch entry encoding a single non-batch regional inventory request.
class RegionalinventoryCustomBatchRequestEntry {
  /// An entry ID, unique within the batch request.
  core.int? batchId;

  /// The ID of the managing account.
  core.String? merchantId;

  /// Method of the batch request entry.
  ///
  /// Acceptable values are: - "`insert`"
  core.String? method;

  /// The ID of the product for which to update price and availability.
  core.String? productId;

  /// Price and availability of the product.
  RegionalInventory? regionalInventory;

  RegionalinventoryCustomBatchRequestEntry({
    this.batchId,
    this.merchantId,
    this.method,
    this.productId,
    this.regionalInventory,
  });

  RegionalinventoryCustomBatchRequestEntry.fromJson(core.Map _json)
      : this(
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          merchantId: _json.containsKey('merchantId')
              ? _json['merchantId'] as core.String
              : null,
          method: _json.containsKey('method')
              ? _json['method'] as core.String
              : null,
          productId: _json.containsKey('productId')
              ? _json['productId'] as core.String
              : null,
          regionalInventory: _json.containsKey('regionalInventory')
              ? RegionalInventory.fromJson(_json['regionalInventory']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchId != null) 'batchId': batchId!,
        if (merchantId != null) 'merchantId': merchantId!,
        if (method != null) 'method': method!,
        if (productId != null) 'productId': productId!,
        if (regionalInventory != null) 'regionalInventory': regionalInventory!,
      };
}

class RegionalinventoryCustomBatchResponse {
  /// The result of the execution of the batch requests.
  core.List<RegionalinventoryCustomBatchResponseEntry>? entries;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#regionalinventoryCustomBatchResponse`".
  core.String? kind;

  RegionalinventoryCustomBatchResponse({
    this.entries,
    this.kind,
  });

  RegionalinventoryCustomBatchResponse.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) =>
                      RegionalinventoryCustomBatchResponseEntry.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
        if (kind != null) 'kind': kind!,
      };
}

/// A batch entry encoding a single non-batch regional inventory response.
class RegionalinventoryCustomBatchResponseEntry {
  /// The ID of the request entry this entry responds to.
  core.int? batchId;

  /// A list of errors defined if and only if the request failed.
  Errors? errors;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string
  /// "`content#regionalinventoryCustomBatchResponseEntry`".
  core.String? kind;

  /// Price and availability of the product.
  RegionalInventory? regionalInventory;

  RegionalinventoryCustomBatchResponseEntry({
    this.batchId,
    this.errors,
    this.kind,
    this.regionalInventory,
  });

  RegionalinventoryCustomBatchResponseEntry.fromJson(core.Map _json)
      : this(
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          errors: _json.containsKey('errors')
              ? Errors.fromJson(
                  _json['errors'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          regionalInventory: _json.containsKey('regionalInventory')
              ? RegionalInventory.fromJson(_json['regionalInventory']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchId != null) 'batchId': batchId!,
        if (errors != null) 'errors': errors!,
        if (kind != null) 'kind': kind!,
        if (regionalInventory != null) 'regionalInventory': regionalInventory!,
      };
}

/// Result row returned from the search query.
class ReportRow {
  /// Metrics requested by the merchant in the query.
  ///
  /// Metric values are only set for metrics requested explicitly in the query.
  Metrics? metrics;

  /// Segmentation dimensions requested by the merchant in the query.
  ///
  /// Dimension values are only set for dimensions requested explicitly in the
  /// query.
  Segments? segments;

  ReportRow({
    this.metrics,
    this.segments,
  });

  ReportRow.fromJson(core.Map _json)
      : this(
          metrics: _json.containsKey('metrics')
              ? Metrics.fromJson(
                  _json['metrics'] as core.Map<core.String, core.dynamic>)
              : null,
          segments: _json.containsKey('segments')
              ? Segments.fromJson(
                  _json['segments'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metrics != null) 'metrics': metrics!,
        if (segments != null) 'segments': segments!,
      };
}

/// Resource that represents a daily Repricing product report.
///
/// Each report contains stats for a single type of Repricing rule for a single
/// product on a given day. If there are multiple rules of the same type for the
/// product on that day, the report lists all the rules by rule ids, combines
/// the stats, and paginates the results by date. To retrieve the stats of a
/// particular rule, provide the rule_id in the request.
class RepricingProductReport {
  /// Total count of Repricer applications.
  ///
  /// This value captures how many times the rule of this type was applied to
  /// this product during this reporting period.
  core.String? applicationCount;

  /// Stats specific to buybox winning rules for product report (deprecated).
  RepricingProductReportBuyboxWinningProductStats? buyboxWinningProductStats;

  /// Date of the stats in this report.
  ///
  /// The report starts and ends according to the merchant's timezone.
  Date? date;

  /// Maximum displayed price after repriced during this reporting period.
  PriceAmount? highWatermark;

  /// List of all reasons the rule did not apply to the product during the
  /// specified reporting period.
  core.List<InapplicabilityDetails>? inapplicabilityDetails;

  /// Minimum displayed price after repriced during this reporting period.
  PriceAmount? lowWatermark;

  /// Total unit count of impacted products ordered while the rule was active on
  /// the date of the report.
  ///
  /// This count includes all orders that were started while the rule was
  /// active, even if the rule was no longer active when the order was
  /// completed.
  core.int? orderItemCount;

  /// Ids of the Repricing rule for this report.
  core.List<core.String>? ruleIds;

  /// Total GMV generated by impacted products while the rule was active on the
  /// date of the report.
  ///
  /// This value includes all orders that were started while the rule was
  /// active, even if the rule was no longer active when the order was
  /// completed.
  PriceAmount? totalGmv;

  /// Type of the rule.
  /// Possible string values are:
  /// - "REPRICING_RULE_TYPE_UNSPECIFIED" : Unused.
  /// - "TYPE_STATS_BASED" : Statistical measurement based rules among Google SA
  /// merchants. If this rule is chosen, repricer will adjust the offer price
  /// based on statistical metrics (currently only min is available) among other
  /// merchants who sell the same product. Details need to be provdided in the
  /// RuleDefinition.
  /// - "TYPE_COGS_BASED" : Cost of goods sale based rule. Repricer will adjust
  /// the offer price based on the offer's sale cost which is provided by the
  /// merchant.
  /// - "TYPE_SALES_VOLUME_BASED" : Sales volume based rule. Repricer will
  /// adjust the offer price based on the offer's sales volume in the past
  /// period of time defined within the rule.
  /// - "TYPE_COMPETITIVE_PRICE" : Competitive price rule. Repricer will adjust
  /// the offer price based on the min price from a list of unnamed big
  /// competitors.
  core.String? type;

  RepricingProductReport({
    this.applicationCount,
    this.buyboxWinningProductStats,
    this.date,
    this.highWatermark,
    this.inapplicabilityDetails,
    this.lowWatermark,
    this.orderItemCount,
    this.ruleIds,
    this.totalGmv,
    this.type,
  });

  RepricingProductReport.fromJson(core.Map _json)
      : this(
          applicationCount: _json.containsKey('applicationCount')
              ? _json['applicationCount'] as core.String
              : null,
          buyboxWinningProductStats:
              _json.containsKey('buyboxWinningProductStats')
                  ? RepricingProductReportBuyboxWinningProductStats.fromJson(
                      _json['buyboxWinningProductStats']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          date: _json.containsKey('date')
              ? Date.fromJson(
                  _json['date'] as core.Map<core.String, core.dynamic>)
              : null,
          highWatermark: _json.containsKey('highWatermark')
              ? PriceAmount.fromJson(
                  _json['highWatermark'] as core.Map<core.String, core.dynamic>)
              : null,
          inapplicabilityDetails: _json.containsKey('inapplicabilityDetails')
              ? (_json['inapplicabilityDetails'] as core.List)
                  .map((value) => InapplicabilityDetails.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          lowWatermark: _json.containsKey('lowWatermark')
              ? PriceAmount.fromJson(
                  _json['lowWatermark'] as core.Map<core.String, core.dynamic>)
              : null,
          orderItemCount: _json.containsKey('orderItemCount')
              ? _json['orderItemCount'] as core.int
              : null,
          ruleIds: _json.containsKey('ruleIds')
              ? (_json['ruleIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          totalGmv: _json.containsKey('totalGmv')
              ? PriceAmount.fromJson(
                  _json['totalGmv'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applicationCount != null) 'applicationCount': applicationCount!,
        if (buyboxWinningProductStats != null)
          'buyboxWinningProductStats': buyboxWinningProductStats!,
        if (date != null) 'date': date!,
        if (highWatermark != null) 'highWatermark': highWatermark!,
        if (inapplicabilityDetails != null)
          'inapplicabilityDetails': inapplicabilityDetails!,
        if (lowWatermark != null) 'lowWatermark': lowWatermark!,
        if (orderItemCount != null) 'orderItemCount': orderItemCount!,
        if (ruleIds != null) 'ruleIds': ruleIds!,
        if (totalGmv != null) 'totalGmv': totalGmv!,
        if (type != null) 'type': type!,
      };
}

/// Stats specific to buybox winning rules for product report.
class RepricingProductReportBuyboxWinningProductStats {
  /// Number of times this product won the buybox with these rules during this
  /// time period.
  core.int? buyboxWinsCount;

  RepricingProductReportBuyboxWinningProductStats({
    this.buyboxWinsCount,
  });

  RepricingProductReportBuyboxWinningProductStats.fromJson(core.Map _json)
      : this(
          buyboxWinsCount: _json.containsKey('buyboxWinsCount')
              ? _json['buyboxWinsCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buyboxWinsCount != null) 'buyboxWinsCount': buyboxWinsCount!,
      };
}

/// Represents a repricing rule.
///
/// A repricing rule is used by shopping serving to adjust transactable offer
/// prices if conditions are met. Next ID: 24
class RepricingRule {
  /// The rule definition for TYPE_COGS_BASED.
  ///
  /// Required when the rule type is TYPE_COGS_BASED.
  RepricingRuleCostOfGoodsSaleRule? cogsBasedRule;

  /// [CLDR country code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
  /// (e.g. "US").
  ///
  /// Required. Immutable.
  core.String? countryCode;

  /// Time period when the rule should take effect.
  ///
  /// Required.
  RepricingRuleEffectiveTime? effectiveTimePeriod;

  /// Match criteria for the eligible offers.
  ///
  /// Required.
  RepricingRuleEligibleOfferMatcher? eligibleOfferMatcher;

  /// The two-letter ISO 639-1 language code associated with the repricing rule.
  ///
  /// Required. Immutable.
  core.String? languageCode;

  /// Merchant that owns the repricing rule.
  ///
  /// Output only. Immutable.
  core.String? merchantId;

  /// Represents whether a rule is paused.
  ///
  /// A paused rule will behave like a non-paused rule within CRUD operations,
  /// with the major difference that a paused rule will not be evaluated and
  /// will have no effect on offers.
  core.bool? paused;

  /// Restriction of the rule appliance.
  ///
  /// Required.
  RepricingRuleRestriction? restriction;

  /// The ID to uniquely identify each repricing rule.
  ///
  /// Output only. Immutable.
  core.String? ruleId;

  /// The rule definition for TYPE_STATS_BASED.
  ///
  /// Required when the rule type is TYPE_STATS_BASED.
  RepricingRuleStatsBasedRule? statsBasedRule;

  /// The title for the rule.
  core.String? title;

  /// The type of the rule.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "REPRICING_RULE_TYPE_UNSPECIFIED" : Unused.
  /// - "TYPE_STATS_BASED" : Statistical measurement based rules among Google SA
  /// merchants. If this rule is chosen, repricer will adjust the offer price
  /// based on statistical metrics (currently only min is available) among other
  /// merchants who sell the same product. Details need to be provdided in the
  /// RuleDefinition.
  /// - "TYPE_COGS_BASED" : Cost of goods sale based rule. Repricer will adjust
  /// the offer price based on the offer's sale cost which is provided by the
  /// merchant.
  /// - "TYPE_SALES_VOLUME_BASED" : Sales volume based rule. Repricer will
  /// adjust the offer price based on the offer's sales volume in the past
  /// period of time defined within the rule.
  /// - "TYPE_COMPETITIVE_PRICE" : Competitive price rule. Repricer will adjust
  /// the offer price based on the min price from a list of unnamed big
  /// competitors.
  core.String? type;

  RepricingRule({
    this.cogsBasedRule,
    this.countryCode,
    this.effectiveTimePeriod,
    this.eligibleOfferMatcher,
    this.languageCode,
    this.merchantId,
    this.paused,
    this.restriction,
    this.ruleId,
    this.statsBasedRule,
    this.title,
    this.type,
  });

  RepricingRule.fromJson(core.Map _json)
      : this(
          cogsBasedRule: _json.containsKey('cogsBasedRule')
              ? RepricingRuleCostOfGoodsSaleRule.fromJson(
                  _json['cogsBasedRule'] as core.Map<core.String, core.dynamic>)
              : null,
          countryCode: _json.containsKey('countryCode')
              ? _json['countryCode'] as core.String
              : null,
          effectiveTimePeriod: _json.containsKey('effectiveTimePeriod')
              ? RepricingRuleEffectiveTime.fromJson(_json['effectiveTimePeriod']
                  as core.Map<core.String, core.dynamic>)
              : null,
          eligibleOfferMatcher: _json.containsKey('eligibleOfferMatcher')
              ? RepricingRuleEligibleOfferMatcher.fromJson(
                  _json['eligibleOfferMatcher']
                      as core.Map<core.String, core.dynamic>)
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          merchantId: _json.containsKey('merchantId')
              ? _json['merchantId'] as core.String
              : null,
          paused:
              _json.containsKey('paused') ? _json['paused'] as core.bool : null,
          restriction: _json.containsKey('restriction')
              ? RepricingRuleRestriction.fromJson(
                  _json['restriction'] as core.Map<core.String, core.dynamic>)
              : null,
          ruleId: _json.containsKey('ruleId')
              ? _json['ruleId'] as core.String
              : null,
          statsBasedRule: _json.containsKey('statsBasedRule')
              ? RepricingRuleStatsBasedRule.fromJson(_json['statsBasedRule']
                  as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cogsBasedRule != null) 'cogsBasedRule': cogsBasedRule!,
        if (countryCode != null) 'countryCode': countryCode!,
        if (effectiveTimePeriod != null)
          'effectiveTimePeriod': effectiveTimePeriod!,
        if (eligibleOfferMatcher != null)
          'eligibleOfferMatcher': eligibleOfferMatcher!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (merchantId != null) 'merchantId': merchantId!,
        if (paused != null) 'paused': paused!,
        if (restriction != null) 'restriction': restriction!,
        if (ruleId != null) 'ruleId': ruleId!,
        if (statsBasedRule != null) 'statsBasedRule': statsBasedRule!,
        if (title != null) 'title': title!,
        if (type != null) 'type': type!,
      };
}

/// A repricing rule that changes the sale price based on cost of goods sale.
class RepricingRuleCostOfGoodsSaleRule {
  /// The percent change against the COGS.
  ///
  /// Ex: 20 would mean to set the adjusted price 1.2X of the COGS data.
  core.int? percentageDelta;

  /// The price delta against the COGS.
  ///
  /// E.g. 2 means $2 more of the COGS.
  core.String? priceDelta;

  RepricingRuleCostOfGoodsSaleRule({
    this.percentageDelta,
    this.priceDelta,
  });

  RepricingRuleCostOfGoodsSaleRule.fromJson(core.Map _json)
      : this(
          percentageDelta: _json.containsKey('percentageDelta')
              ? _json['percentageDelta'] as core.int
              : null,
          priceDelta: _json.containsKey('priceDelta')
              ? _json['priceDelta'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (percentageDelta != null) 'percentageDelta': percentageDelta!,
        if (priceDelta != null) 'priceDelta': priceDelta!,
      };
}

class RepricingRuleEffectiveTime {
  /// A list of fixed time periods combined with OR.
  ///
  /// The maximum number of entries is limited to 5.
  core.List<RepricingRuleEffectiveTimeFixedTimePeriod>? fixedTimePeriods;

  RepricingRuleEffectiveTime({
    this.fixedTimePeriods,
  });

  RepricingRuleEffectiveTime.fromJson(core.Map _json)
      : this(
          fixedTimePeriods: _json.containsKey('fixedTimePeriods')
              ? (_json['fixedTimePeriods'] as core.List)
                  .map((value) =>
                      RepricingRuleEffectiveTimeFixedTimePeriod.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fixedTimePeriods != null) 'fixedTimePeriods': fixedTimePeriods!,
      };
}

/// Definition of a fixed time period.
class RepricingRuleEffectiveTimeFixedTimePeriod {
  /// The end time (exclusive) of the period.
  ///
  /// It can only be hour granularity.
  core.String? endTime;

  /// The start time (inclusive) of the period.
  ///
  /// It can only be hour granularity.
  core.String? startTime;

  RepricingRuleEffectiveTimeFixedTimePeriod({
    this.endTime,
    this.startTime,
  });

  RepricingRuleEffectiveTimeFixedTimePeriod.fromJson(core.Map _json)
      : this(
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Matcher that specifies eligible offers.
///
/// When the USE_FEED_ATTRIBUTE option is selected, only the repricing_rule_id
/// attribute on the product feed is used to specify offer-rule mapping. When
/// the CUSTOM_FILTER option is selected, only the *_matcher fields are used to
/// filter the offers for offer-rule mapping. If the CUSTOM_FILTER option is
/// selected, an offer needs to satisfy each custom filter matcher to be
/// eligible for a rule. Size limit: the sum of the number of entries in all the
/// matchers should not exceed 20. For example, there can be 15 product ids and
/// 5 brands, but not 10 product ids and 11 brands.
class RepricingRuleEligibleOfferMatcher {
  /// Filter by the brand.
  RepricingRuleEligibleOfferMatcherStringMatcher? brandMatcher;

  /// Filter by the item group id.
  RepricingRuleEligibleOfferMatcherStringMatcher? itemGroupIdMatcher;

  /// Determines whether to use the custom matchers or the product feed
  /// attribute "repricing_rule_id" to specify offer-rule mapping.
  /// Possible string values are:
  /// - "MATCHER_OPTION_UNSPECIFIED" : Unused.
  /// - "MATCHER_OPTION_CUSTOM_FILTER" : Use custom filters.
  /// - "MATCHER_OPTION_USE_FEED_ATTRIBUTE" : Use repricing_rule_id feed
  /// attribute on the product resource to specify offer-rule mapping.
  /// - "MATCHER_OPTION_ALL_PRODUCTS" : Matching all products.
  core.String? matcherOption;

  /// Filter by the offer id.
  RepricingRuleEligibleOfferMatcherStringMatcher? offerIdMatcher;

  /// When true, the rule won't be applied to offers with active promotions.
  core.bool? skipWhenOnPromotion;

  RepricingRuleEligibleOfferMatcher({
    this.brandMatcher,
    this.itemGroupIdMatcher,
    this.matcherOption,
    this.offerIdMatcher,
    this.skipWhenOnPromotion,
  });

  RepricingRuleEligibleOfferMatcher.fromJson(core.Map _json)
      : this(
          brandMatcher: _json.containsKey('brandMatcher')
              ? RepricingRuleEligibleOfferMatcherStringMatcher.fromJson(
                  _json['brandMatcher'] as core.Map<core.String, core.dynamic>)
              : null,
          itemGroupIdMatcher: _json.containsKey('itemGroupIdMatcher')
              ? RepricingRuleEligibleOfferMatcherStringMatcher.fromJson(
                  _json['itemGroupIdMatcher']
                      as core.Map<core.String, core.dynamic>)
              : null,
          matcherOption: _json.containsKey('matcherOption')
              ? _json['matcherOption'] as core.String
              : null,
          offerIdMatcher: _json.containsKey('offerIdMatcher')
              ? RepricingRuleEligibleOfferMatcherStringMatcher.fromJson(
                  _json['offerIdMatcher']
                      as core.Map<core.String, core.dynamic>)
              : null,
          skipWhenOnPromotion: _json.containsKey('skipWhenOnPromotion')
              ? _json['skipWhenOnPromotion'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (brandMatcher != null) 'brandMatcher': brandMatcher!,
        if (itemGroupIdMatcher != null)
          'itemGroupIdMatcher': itemGroupIdMatcher!,
        if (matcherOption != null) 'matcherOption': matcherOption!,
        if (offerIdMatcher != null) 'offerIdMatcher': offerIdMatcher!,
        if (skipWhenOnPromotion != null)
          'skipWhenOnPromotion': skipWhenOnPromotion!,
      };
}

/// Matcher by string attributes.
class RepricingRuleEligibleOfferMatcherStringMatcher {
  /// String attributes, as long as such attribute of an offer is one of the
  /// string attribute values, the offer is considered as passing the matcher.
  ///
  /// The string matcher checks an offer for inclusivity in the string
  /// attributes, not equality. Only literal string matching is supported, no
  /// regex.
  core.List<core.String>? strAttributes;

  RepricingRuleEligibleOfferMatcherStringMatcher({
    this.strAttributes,
  });

  RepricingRuleEligibleOfferMatcherStringMatcher.fromJson(core.Map _json)
      : this(
          strAttributes: _json.containsKey('strAttributes')
              ? (_json['strAttributes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (strAttributes != null) 'strAttributes': strAttributes!,
      };
}

/// Resource that represents a daily Repricing rule report.
///
/// Next ID: 11
class RepricingRuleReport {
  /// Stats specific to buybox winning rules for rule report (deprecated).
  RepricingRuleReportBuyboxWinningRuleStats? buyboxWinningRuleStats;

  /// Date of the stats in this report.
  ///
  /// The report starts and ends according to the merchant's timezone.
  Date? date;

  /// List of product ids that are impacted by this rule during this reporting
  /// period.
  ///
  /// Out of stock products and products not searched for by customers are
  /// examples of non-impacted products.
  core.List<core.String>? impactedProducts;

  /// List of all reasons the rule did not apply to the inapplicable products
  /// during the specified reporting period.
  core.List<InapplicabilityDetails>? inapplicabilityDetails;

  /// List of product ids that are inapplicable to this rule during this
  /// reporting period.
  ///
  /// To get the inapplicable reason for a specific product, see
  /// RepricingProductReport.
  core.List<core.String>? inapplicableProducts;

  /// Total unit count of impacted products ordered while the rule was active on
  /// the date of the report.
  ///
  /// This count includes all orders that were started while the rule was
  /// active, even if the rule was no longer active when the order was
  /// completed.
  core.int? orderItemCount;

  /// Id of the Repricing rule for this report.
  core.String? ruleId;

  /// Total GMV generated by impacted products while the rule was active on the
  /// date of the report.
  ///
  /// This value includes all orders that were started while the rule was
  /// active, even if the rule was no longer active when the order was
  /// completed.
  PriceAmount? totalGmv;

  /// Type of the rule.
  /// Possible string values are:
  /// - "REPRICING_RULE_TYPE_UNSPECIFIED" : Unused.
  /// - "TYPE_STATS_BASED" : Statistical measurement based rules among Google SA
  /// merchants. If this rule is chosen, repricer will adjust the offer price
  /// based on statistical metrics (currently only min is available) among other
  /// merchants who sell the same product. Details need to be provdided in the
  /// RuleDefinition.
  /// - "TYPE_COGS_BASED" : Cost of goods sale based rule. Repricer will adjust
  /// the offer price based on the offer's sale cost which is provided by the
  /// merchant.
  /// - "TYPE_SALES_VOLUME_BASED" : Sales volume based rule. Repricer will
  /// adjust the offer price based on the offer's sales volume in the past
  /// period of time defined within the rule.
  /// - "TYPE_COMPETITIVE_PRICE" : Competitive price rule. Repricer will adjust
  /// the offer price based on the min price from a list of unnamed big
  /// competitors.
  core.String? type;

  RepricingRuleReport({
    this.buyboxWinningRuleStats,
    this.date,
    this.impactedProducts,
    this.inapplicabilityDetails,
    this.inapplicableProducts,
    this.orderItemCount,
    this.ruleId,
    this.totalGmv,
    this.type,
  });

  RepricingRuleReport.fromJson(core.Map _json)
      : this(
          buyboxWinningRuleStats: _json.containsKey('buyboxWinningRuleStats')
              ? RepricingRuleReportBuyboxWinningRuleStats.fromJson(
                  _json['buyboxWinningRuleStats']
                      as core.Map<core.String, core.dynamic>)
              : null,
          date: _json.containsKey('date')
              ? Date.fromJson(
                  _json['date'] as core.Map<core.String, core.dynamic>)
              : null,
          impactedProducts: _json.containsKey('impactedProducts')
              ? (_json['impactedProducts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          inapplicabilityDetails: _json.containsKey('inapplicabilityDetails')
              ? (_json['inapplicabilityDetails'] as core.List)
                  .map((value) => InapplicabilityDetails.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          inapplicableProducts: _json.containsKey('inapplicableProducts')
              ? (_json['inapplicableProducts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          orderItemCount: _json.containsKey('orderItemCount')
              ? _json['orderItemCount'] as core.int
              : null,
          ruleId: _json.containsKey('ruleId')
              ? _json['ruleId'] as core.String
              : null,
          totalGmv: _json.containsKey('totalGmv')
              ? PriceAmount.fromJson(
                  _json['totalGmv'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buyboxWinningRuleStats != null)
          'buyboxWinningRuleStats': buyboxWinningRuleStats!,
        if (date != null) 'date': date!,
        if (impactedProducts != null) 'impactedProducts': impactedProducts!,
        if (inapplicabilityDetails != null)
          'inapplicabilityDetails': inapplicabilityDetails!,
        if (inapplicableProducts != null)
          'inapplicableProducts': inapplicableProducts!,
        if (orderItemCount != null) 'orderItemCount': orderItemCount!,
        if (ruleId != null) 'ruleId': ruleId!,
        if (totalGmv != null) 'totalGmv': totalGmv!,
        if (type != null) 'type': type!,
      };
}

/// Stats specific to buybox winning rules for rule report.
class RepricingRuleReportBuyboxWinningRuleStats {
  /// Number of unique products that won the buybox with this rule during this
  /// period of time.
  core.int? buyboxWonProductCount;

  RepricingRuleReportBuyboxWinningRuleStats({
    this.buyboxWonProductCount,
  });

  RepricingRuleReportBuyboxWinningRuleStats.fromJson(core.Map _json)
      : this(
          buyboxWonProductCount: _json.containsKey('buyboxWonProductCount')
              ? _json['buyboxWonProductCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buyboxWonProductCount != null)
          'buyboxWonProductCount': buyboxWonProductCount!,
      };
}

/// Definition of a rule restriction.
///
/// At least one of the following needs to be true: (1)
/// use_auto_pricing_min_price is true (2) floor.price_delta exists (3)
/// floor.percentage_delta exists If floor.price_delta and
/// floor.percentage_delta are both set on a rule, the highest value will be
/// chosen by the Repricer. In other words, for a product with a price of $50,
/// if the `floor.percentage_delta` is "-10" and the floor.price_delta is "-12",
/// the offer price will only be lowered $5 (10% lower than the original offer
/// price).
class RepricingRuleRestriction {
  /// The inclusive floor lower bound.
  ///
  /// The repricing rule only applies when new price >= floor.
  RepricingRuleRestrictionBoundary? floor;

  /// If true, use the AUTO_PRICING_MIN_PRICE offer attribute as the lower bound
  /// of the rule.
  ///
  /// If use_auto_pricing_min_price is true, then only offers with
  /// `AUTO_PRICING_MIN_PRICE` existing on the offer will get Repricer
  /// treatment, even if a floor value is set on the rule. Also, if
  /// use_auto_pricing_min_price is true, the floor restriction will be ignored.
  core.bool? useAutoPricingMinPrice;

  RepricingRuleRestriction({
    this.floor,
    this.useAutoPricingMinPrice,
  });

  RepricingRuleRestriction.fromJson(core.Map _json)
      : this(
          floor: _json.containsKey('floor')
              ? RepricingRuleRestrictionBoundary.fromJson(
                  _json['floor'] as core.Map<core.String, core.dynamic>)
              : null,
          useAutoPricingMinPrice: _json.containsKey('useAutoPricingMinPrice')
              ? _json['useAutoPricingMinPrice'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (floor != null) 'floor': floor!,
        if (useAutoPricingMinPrice != null)
          'useAutoPricingMinPrice': useAutoPricingMinPrice!,
      };
}

/// Definition of a boundary.
class RepricingRuleRestrictionBoundary {
  /// The percentage delta relative to the offer selling price.
  ///
  /// This field is signed. It must be negative in floor. When it is used in
  /// floor, it should be > -100. For example, if an offer is selling at $10 and
  /// this field is -30 in floor, the repricing rule only applies if the
  /// calculated new price is >= $7.
  core.int? percentageDelta;

  /// The price micros relative to the offer selling price.
  ///
  /// This field is signed. It must be negative in floor. For example, if an
  /// offer is selling at $10 and this field is -$2 in floor, the repricing rule
  /// only applies if the calculated new price is >= $8.
  core.String? priceDelta;

  RepricingRuleRestrictionBoundary({
    this.percentageDelta,
    this.priceDelta,
  });

  RepricingRuleRestrictionBoundary.fromJson(core.Map _json)
      : this(
          percentageDelta: _json.containsKey('percentageDelta')
              ? _json['percentageDelta'] as core.int
              : null,
          priceDelta: _json.containsKey('priceDelta')
              ? _json['priceDelta'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (percentageDelta != null) 'percentageDelta': percentageDelta!,
        if (priceDelta != null) 'priceDelta': priceDelta!,
      };
}

/// Definition of stats based rule.
class RepricingRuleStatsBasedRule {
  /// The percent change against the price target.
  ///
  /// Valid from 0 to 100 inclusively.
  core.int? percentageDelta;

  /// The price delta against the above price target.
  ///
  /// A positive value means the price should be adjusted to be above
  /// statistical measure, and a negative value means below. Currency code must
  /// not be included.
  core.String? priceDelta;

  RepricingRuleStatsBasedRule({
    this.percentageDelta,
    this.priceDelta,
  });

  RepricingRuleStatsBasedRule.fromJson(core.Map _json)
      : this(
          percentageDelta: _json.containsKey('percentageDelta')
              ? _json['percentageDelta'] as core.int
              : null,
          priceDelta: _json.containsKey('priceDelta')
              ? _json['priceDelta'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (percentageDelta != null) 'percentageDelta': percentageDelta!,
        if (priceDelta != null) 'priceDelta': priceDelta!,
      };
}

/// Request message for the RequestPhoneVerification method.
class RequestPhoneVerificationRequest {
  /// Language code [IETF BCP 47 syntax](https://tools.ietf.org/html/bcp47) (for
  /// example, en-US).
  ///
  /// Language code is used to provide localized `SMS` and `PHONE_CALL`. Default
  /// language used is en-US if not provided.
  core.String? languageCode;

  /// Phone number to be verified.
  core.String? phoneNumber;

  /// Two letter country code for the phone number, for example `CA` for
  /// Canadian numbers.
  ///
  /// See the \[ISO 3166-1
  /// alpha-2\](https://wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements)
  /// officially assigned codes.
  ///
  /// Required.
  core.String? phoneRegionCode;

  /// Verification method to receive verification code.
  /// Possible string values are:
  /// - "PHONE_VERIFICATION_METHOD_UNSPECIFIED" : Unknown method.
  /// - "SMS" : Receive verification code by SMS.
  /// - "PHONE_CALL" : Receive verification code by phone call.
  core.String? phoneVerificationMethod;

  RequestPhoneVerificationRequest({
    this.languageCode,
    this.phoneNumber,
    this.phoneRegionCode,
    this.phoneVerificationMethod,
  });

  RequestPhoneVerificationRequest.fromJson(core.Map _json)
      : this(
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
          phoneRegionCode: _json.containsKey('phoneRegionCode')
              ? _json['phoneRegionCode'] as core.String
              : null,
          phoneVerificationMethod: _json.containsKey('phoneVerificationMethod')
              ? _json['phoneVerificationMethod'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageCode != null) 'languageCode': languageCode!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (phoneRegionCode != null) 'phoneRegionCode': phoneRegionCode!,
        if (phoneVerificationMethod != null)
          'phoneVerificationMethod': phoneVerificationMethod!,
      };
}

/// Response message for the RequestPhoneVerification method.
class RequestPhoneVerificationResponse {
  /// The verification ID to use in subsequent calls to `verifyphonenumber`.
  core.String? verificationId;

  RequestPhoneVerificationResponse({
    this.verificationId,
  });

  RequestPhoneVerificationResponse.fromJson(core.Map _json)
      : this(
          verificationId: _json.containsKey('verificationId')
              ? _json['verificationId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (verificationId != null) 'verificationId': verificationId!,
      };
}

/// Request message for the RequestReviewProgram method.
typedef RequestReviewBuyOnGoogleProgramRequest = $Empty;

/// Request message for the RequestReviewFreeListings Program method.
typedef RequestReviewFreeListingsRequest = $Request06;

/// Request message for the RequestReviewShoppingAds program method.
typedef RequestReviewShoppingAdsRequest = $Request06;

/// Return address resource.
class ReturnAddress {
  /// The address.
  ///
  /// Required.
  ReturnAddressAddress? address;

  /// The country of sale where the return address is applicable.
  ///
  /// Required.
  core.String? country;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#returnAddress`"
  core.String? kind;

  /// The user-defined label of the return address.
  ///
  /// For the default address, use the label "default".
  ///
  /// Required.
  core.String? label;

  /// The merchant's contact phone number regarding the return.
  ///
  /// Required.
  core.String? phoneNumber;

  /// Return address ID generated by Google.
  core.String? returnAddressId;

  ReturnAddress({
    this.address,
    this.country,
    this.kind,
    this.label,
    this.phoneNumber,
    this.returnAddressId,
  });

  ReturnAddress.fromJson(core.Map _json)
      : this(
          address: _json.containsKey('address')
              ? ReturnAddressAddress.fromJson(
                  _json['address'] as core.Map<core.String, core.dynamic>)
              : null,
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          label:
              _json.containsKey('label') ? _json['label'] as core.String : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
          returnAddressId: _json.containsKey('returnAddressId')
              ? _json['returnAddressId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (country != null) 'country': country!,
        if (kind != null) 'kind': kind!,
        if (label != null) 'label': label!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (returnAddressId != null) 'returnAddressId': returnAddressId!,
      };
}

class ReturnAddressAddress {
  /// CLDR country code (e.g. "US").
  core.String? country;

  /// City, town or commune.
  ///
  /// May also include dependent localities or sublocalities (e.g. neighborhoods
  /// or suburbs).
  core.String? locality;

  /// Postal code or ZIP (e.g. "94043").
  core.String? postalCode;

  /// Name of the recipient to address returns to.
  core.String? recipientName;

  /// Top-level administrative subdivision of the country.
  ///
  /// For example, a state like California ("CA") or a province like Quebec
  /// ("QC").
  core.String? region;

  /// Street-level part of the address.
  ///
  /// May be up to two lines, each line specified as an array element.
  core.List<core.String>? streetAddress;

  ReturnAddressAddress({
    this.country,
    this.locality,
    this.postalCode,
    this.recipientName,
    this.region,
    this.streetAddress,
  });

  ReturnAddressAddress.fromJson(core.Map _json)
      : this(
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          locality: _json.containsKey('locality')
              ? _json['locality'] as core.String
              : null,
          postalCode: _json.containsKey('postalCode')
              ? _json['postalCode'] as core.String
              : null,
          recipientName: _json.containsKey('recipientName')
              ? _json['recipientName'] as core.String
              : null,
          region: _json.containsKey('region')
              ? _json['region'] as core.String
              : null,
          streetAddress: _json.containsKey('streetAddress')
              ? (_json['streetAddress'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (country != null) 'country': country!,
        if (locality != null) 'locality': locality!,
        if (postalCode != null) 'postalCode': postalCode!,
        if (recipientName != null) 'recipientName': recipientName!,
        if (region != null) 'region': region!,
        if (streetAddress != null) 'streetAddress': streetAddress!,
      };
}

/// Return policy resource.
class ReturnPolicy {
  /// The country of sale where the return policy is applicable.
  ///
  /// Required.
  core.String? country;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#returnPolicy`"
  core.String? kind;

  /// The user-defined label of the return policy.
  ///
  /// For the default policy, use the label "default".
  ///
  /// Required.
  core.String? label;

  /// The name of the policy as shown in Merchant Center.
  ///
  /// Required.
  core.String? name;

  /// Return reasons that will incur return fees.
  core.List<core.String>? nonFreeReturnReasons;

  /// The policy.
  ///
  /// Required.
  ReturnPolicyPolicy? policy;

  /// Return policy ID generated by Google.
  core.String? returnPolicyId;

  /// The return shipping fee that will apply to non free return reasons.
  Price? returnShippingFee;

  /// An optional list of seasonal overrides.
  core.List<ReturnPolicySeasonalOverride>? seasonalOverrides;

  ReturnPolicy({
    this.country,
    this.kind,
    this.label,
    this.name,
    this.nonFreeReturnReasons,
    this.policy,
    this.returnPolicyId,
    this.returnShippingFee,
    this.seasonalOverrides,
  });

  ReturnPolicy.fromJson(core.Map _json)
      : this(
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          label:
              _json.containsKey('label') ? _json['label'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          nonFreeReturnReasons: _json.containsKey('nonFreeReturnReasons')
              ? (_json['nonFreeReturnReasons'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          policy: _json.containsKey('policy')
              ? ReturnPolicyPolicy.fromJson(
                  _json['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          returnPolicyId: _json.containsKey('returnPolicyId')
              ? _json['returnPolicyId'] as core.String
              : null,
          returnShippingFee: _json.containsKey('returnShippingFee')
              ? Price.fromJson(_json['returnShippingFee']
                  as core.Map<core.String, core.dynamic>)
              : null,
          seasonalOverrides: _json.containsKey('seasonalOverrides')
              ? (_json['seasonalOverrides'] as core.List)
                  .map((value) => ReturnPolicySeasonalOverride.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (country != null) 'country': country!,
        if (kind != null) 'kind': kind!,
        if (label != null) 'label': label!,
        if (name != null) 'name': name!,
        if (nonFreeReturnReasons != null)
          'nonFreeReturnReasons': nonFreeReturnReasons!,
        if (policy != null) 'policy': policy!,
        if (returnPolicyId != null) 'returnPolicyId': returnPolicyId!,
        if (returnShippingFee != null) 'returnShippingFee': returnShippingFee!,
        if (seasonalOverrides != null) 'seasonalOverrides': seasonalOverrides!,
      };
}

/// Return policy online object.
///
/// This is currently used to represent return policies for ads and free
/// listings programs.
class ReturnPolicyOnline {
  /// The countries of sale where the return policy is applicable.
  ///
  /// The values must be a valid 2 letter ISO 3166 code, e.g. "US".
  core.List<core.String>? countries;

  /// The item conditions that are accepted for returns.
  ///
  /// This is required to not be empty unless the type of return policy is
  /// noReturns.
  core.List<core.String>? itemConditions;

  /// The unique user-defined label of the return policy.
  ///
  /// The same label cannot be used in different return policies for the same
  /// country. Policies with the label 'default' will apply to all products,
  /// unless a product specifies a return_policy_label attribute.
  core.String? label;

  /// The name of the policy as shown in Merchant Center.
  core.String? name;

  /// The return policy.
  ReturnPolicyOnlinePolicy? policy;

  /// The restocking fee that applies to all return reason categories.
  ///
  /// This would be treated as a free restocking fee if the value is not set.
  ReturnPolicyOnlineRestockingFee? restockingFee;

  /// The return methods of how customers can return an item.
  ///
  /// This value is required to not be empty unless the type of return policy is
  /// noReturns.
  core.List<core.String>? returnMethods;

  /// Return policy ID generated by Google.
  ///
  /// Output only.
  core.String? returnPolicyId;

  /// The return policy uri.
  ///
  /// This can used by Google to do a sanity check for the policy.
  core.String? returnPolicyUri;

  /// The return reason category information.
  ///
  /// This required to not be empty unless the type of return policy is
  /// noReturns.
  core.List<ReturnPolicyOnlineReturnReasonCategoryInfo>?
      returnReasonCategoryInfo;

  ReturnPolicyOnline({
    this.countries,
    this.itemConditions,
    this.label,
    this.name,
    this.policy,
    this.restockingFee,
    this.returnMethods,
    this.returnPolicyId,
    this.returnPolicyUri,
    this.returnReasonCategoryInfo,
  });

  ReturnPolicyOnline.fromJson(core.Map _json)
      : this(
          countries: _json.containsKey('countries')
              ? (_json['countries'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          itemConditions: _json.containsKey('itemConditions')
              ? (_json['itemConditions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          label:
              _json.containsKey('label') ? _json['label'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          policy: _json.containsKey('policy')
              ? ReturnPolicyOnlinePolicy.fromJson(
                  _json['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          restockingFee: _json.containsKey('restockingFee')
              ? ReturnPolicyOnlineRestockingFee.fromJson(
                  _json['restockingFee'] as core.Map<core.String, core.dynamic>)
              : null,
          returnMethods: _json.containsKey('returnMethods')
              ? (_json['returnMethods'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          returnPolicyId: _json.containsKey('returnPolicyId')
              ? _json['returnPolicyId'] as core.String
              : null,
          returnPolicyUri: _json.containsKey('returnPolicyUri')
              ? _json['returnPolicyUri'] as core.String
              : null,
          returnReasonCategoryInfo:
              _json.containsKey('returnReasonCategoryInfo')
                  ? (_json['returnReasonCategoryInfo'] as core.List)
                      .map((value) =>
                          ReturnPolicyOnlineReturnReasonCategoryInfo.fromJson(
                              value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (countries != null) 'countries': countries!,
        if (itemConditions != null) 'itemConditions': itemConditions!,
        if (label != null) 'label': label!,
        if (name != null) 'name': name!,
        if (policy != null) 'policy': policy!,
        if (restockingFee != null) 'restockingFee': restockingFee!,
        if (returnMethods != null) 'returnMethods': returnMethods!,
        if (returnPolicyId != null) 'returnPolicyId': returnPolicyId!,
        if (returnPolicyUri != null) 'returnPolicyUri': returnPolicyUri!,
        if (returnReasonCategoryInfo != null)
          'returnReasonCategoryInfo': returnReasonCategoryInfo!,
      };
}

/// The available policies.
class ReturnPolicyOnlinePolicy {
  /// The number of days items can be returned after delivery, where one day is
  /// defined to be 24 hours after the delivery timestamp.
  ///
  /// Required for `numberOfDaysAfterDelivery` returns.
  core.String? days;

  /// Policy type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "NUMBER_OF_DAYS_AFTER_DELIVERY" : Number of days after a return is
  /// delivered.
  /// - "NO_RETURNS" : No returns.
  /// - "LIFETIME_RETURNS" : Life time returns.
  core.String? type;

  ReturnPolicyOnlinePolicy({
    this.days,
    this.type,
  });

  ReturnPolicyOnlinePolicy.fromJson(core.Map _json)
      : this(
          days: _json.containsKey('days') ? _json['days'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (days != null) 'days': days!,
        if (type != null) 'type': type!,
      };
}

/// The restocking fee.
///
/// This can either be a fixed fee or a micro percent.
class ReturnPolicyOnlineRestockingFee {
  /// Fixed restocking fee.
  PriceAmount? fixedFee;

  /// Percent of total price in micros.
  ///
  /// 15,000,000 means 15% of the total price would be charged.
  core.int? microPercent;

  ReturnPolicyOnlineRestockingFee({
    this.fixedFee,
    this.microPercent,
  });

  ReturnPolicyOnlineRestockingFee.fromJson(core.Map _json)
      : this(
          fixedFee: _json.containsKey('fixedFee')
              ? PriceAmount.fromJson(
                  _json['fixedFee'] as core.Map<core.String, core.dynamic>)
              : null,
          microPercent: _json.containsKey('microPercent')
              ? _json['microPercent'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fixedFee != null) 'fixedFee': fixedFee!,
        if (microPercent != null) 'microPercent': microPercent!,
      };
}

/// The return reason category info wrapper.
class ReturnPolicyOnlineReturnReasonCategoryInfo {
  /// The corresponding return label source.
  /// Possible string values are:
  /// - "RETURN_LABEL_SOURCE_UNSPECIFIED" : Default value. This value is unused.
  /// - "DOWNLOAD_AND_PRINT" : Download and print the label.
  /// - "IN_THE_BOX" : Label in the box.
  /// - "CUSTOMER_RESPONSIBILITY" : Customers' responsibility to get the label.
  core.String? returnLabelSource;

  /// The return reason category.
  /// Possible string values are:
  /// - "RETURN_REASON_CATEGORY_UNSPECIFIED" : Default value. This value is
  /// unused.
  /// - "BUYER_REMORSE" : Buyer remorse.
  /// - "ITEM_DEFECT" : Item defect.
  core.String? returnReasonCategory;

  /// The corresponding return shipping fee.
  ///
  /// This is only applicable when returnLabelSource is not the customer's
  /// responsibility.
  ReturnPolicyOnlineReturnShippingFee? returnShippingFee;

  ReturnPolicyOnlineReturnReasonCategoryInfo({
    this.returnLabelSource,
    this.returnReasonCategory,
    this.returnShippingFee,
  });

  ReturnPolicyOnlineReturnReasonCategoryInfo.fromJson(core.Map _json)
      : this(
          returnLabelSource: _json.containsKey('returnLabelSource')
              ? _json['returnLabelSource'] as core.String
              : null,
          returnReasonCategory: _json.containsKey('returnReasonCategory')
              ? _json['returnReasonCategory'] as core.String
              : null,
          returnShippingFee: _json.containsKey('returnShippingFee')
              ? ReturnPolicyOnlineReturnShippingFee.fromJson(
                  _json['returnShippingFee']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (returnLabelSource != null) 'returnLabelSource': returnLabelSource!,
        if (returnReasonCategory != null)
          'returnReasonCategory': returnReasonCategory!,
        if (returnShippingFee != null) 'returnShippingFee': returnShippingFee!,
      };
}

/// The return shipping fee.
///
/// This can either be a fixed fee or a boolean to indicate that the customer
/// pays the actual shipping cost.
class ReturnPolicyOnlineReturnShippingFee {
  /// Fixed return shipping fee amount.
  ///
  /// This value is only applicable when type is FIXED. We will treat the return
  /// shipping fee as free if type is FIXED and this value is not set.
  PriceAmount? fixedFee;

  /// Type of return shipping fee.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "FIXED" : The return shipping fee is a fixed value.
  /// - "CUSTOMER_PAYING_ACTUAL_FEE" : Customer will pay the actual return
  /// shipping fee.
  core.String? type;

  ReturnPolicyOnlineReturnShippingFee({
    this.fixedFee,
    this.type,
  });

  ReturnPolicyOnlineReturnShippingFee.fromJson(core.Map _json)
      : this(
          fixedFee: _json.containsKey('fixedFee')
              ? PriceAmount.fromJson(
                  _json['fixedFee'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fixedFee != null) 'fixedFee': fixedFee!,
        if (type != null) 'type': type!,
      };
}

class ReturnPolicyPolicy {
  /// Last day for returning the items.
  ///
  /// In ISO 8601 format. When specifying the return window like this, set the
  /// policy type to "lastReturnDate". Use this for seasonal overrides only.
  ///
  /// Required.
  core.String? lastReturnDate;

  /// The number of days items can be returned after delivery, where one day is
  /// defined to be 24 hours after the delivery timestamp.
  ///
  /// When specifying the return window like this, set the policy type to
  /// "numberOfDaysAfterDelivery". Acceptable values are 30, 45, 60, 90, 100,
  /// 180, 270 and 365 for the default policy. Additional policies further allow
  /// 14, 15, 21 and 28 days, but note that for most items a minimum of 30 days
  /// is required for returns. Exceptions may be made for electronics. A policy
  /// of less than 30 days can only be applied to those items.
  core.String? numberOfDays;

  /// Policy type.
  ///
  /// Use "lastReturnDate" for seasonal overrides only. Note that for most items
  /// a minimum of 30 days is required for returns. Exceptions may be made for
  /// electronics or non-returnable items such as food, perishables, and living
  /// things. A policy of less than 30 days can only be applied to those items.
  /// Acceptable values are: - "`lastReturnDate`" - "`lifetimeReturns`" -
  /// "`noReturns`" - "`numberOfDaysAfterDelivery`"
  core.String? type;

  ReturnPolicyPolicy({
    this.lastReturnDate,
    this.numberOfDays,
    this.type,
  });

  ReturnPolicyPolicy.fromJson(core.Map _json)
      : this(
          lastReturnDate: _json.containsKey('lastReturnDate')
              ? _json['lastReturnDate'] as core.String
              : null,
          numberOfDays: _json.containsKey('numberOfDays')
              ? _json['numberOfDays'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastReturnDate != null) 'lastReturnDate': lastReturnDate!,
        if (numberOfDays != null) 'numberOfDays': numberOfDays!,
        if (type != null) 'type': type!,
      };
}

class ReturnPolicySeasonalOverride {
  /// Last day on which the override applies.
  ///
  /// In ISO 8601 format.
  ///
  /// Required.
  core.String? endDate;

  /// The name of the seasonal override as shown in Merchant Center.
  ///
  /// Required.
  core.String? name;

  /// The policy which is in effect during that time.
  ///
  /// Required.
  ReturnPolicyPolicy? policy;

  /// First day on which the override applies.
  ///
  /// In ISO 8601 format.
  ///
  /// Required.
  core.String? startDate;

  ReturnPolicySeasonalOverride({
    this.endDate,
    this.name,
    this.policy,
    this.startDate,
  });

  ReturnPolicySeasonalOverride.fromJson(core.Map _json)
      : this(
          endDate: _json.containsKey('endDate')
              ? _json['endDate'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          policy: _json.containsKey('policy')
              ? ReturnPolicyPolicy.fromJson(
                  _json['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          startDate: _json.containsKey('startDate')
              ? _json['startDate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endDate != null) 'endDate': endDate!,
        if (name != null) 'name': name!,
        if (policy != null) 'policy': policy!,
        if (startDate != null) 'startDate': startDate!,
      };
}

class ReturnPricingInfo {
  /// Default option for whether merchant should charge the customer for return
  /// shipping costs, based on customer selected return reason and merchant's
  /// return policy for the items being returned.
  core.bool? chargeReturnShippingFee;

  /// Maximum return shipping costs that may be charged to the customer
  /// depending on merchant's assessment of the return reason and the merchant's
  /// return policy for the items being returned.
  MonetaryAmount? maxReturnShippingFee;

  /// Total amount that can be refunded for the items in this return.
  ///
  /// It represents the total amount received by the merchant for the items,
  /// after applying merchant coupons.
  MonetaryAmount? refundableItemsTotalAmount;

  /// Maximum amount that can be refunded for the original shipping fee.
  MonetaryAmount? refundableShippingAmount;

  /// Total amount already refunded by the merchant.
  ///
  /// It includes all types of refunds (items, shipping, etc.) Not provided if
  /// no refund has been applied yet.
  MonetaryAmount? totalRefundedAmount;

  ReturnPricingInfo({
    this.chargeReturnShippingFee,
    this.maxReturnShippingFee,
    this.refundableItemsTotalAmount,
    this.refundableShippingAmount,
    this.totalRefundedAmount,
  });

  ReturnPricingInfo.fromJson(core.Map _json)
      : this(
          chargeReturnShippingFee: _json.containsKey('chargeReturnShippingFee')
              ? _json['chargeReturnShippingFee'] as core.bool
              : null,
          maxReturnShippingFee: _json.containsKey('maxReturnShippingFee')
              ? MonetaryAmount.fromJson(_json['maxReturnShippingFee']
                  as core.Map<core.String, core.dynamic>)
              : null,
          refundableItemsTotalAmount:
              _json.containsKey('refundableItemsTotalAmount')
                  ? MonetaryAmount.fromJson(_json['refundableItemsTotalAmount']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          refundableShippingAmount:
              _json.containsKey('refundableShippingAmount')
                  ? MonetaryAmount.fromJson(_json['refundableShippingAmount']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          totalRefundedAmount: _json.containsKey('totalRefundedAmount')
              ? MonetaryAmount.fromJson(_json['totalRefundedAmount']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (chargeReturnShippingFee != null)
          'chargeReturnShippingFee': chargeReturnShippingFee!,
        if (maxReturnShippingFee != null)
          'maxReturnShippingFee': maxReturnShippingFee!,
        if (refundableItemsTotalAmount != null)
          'refundableItemsTotalAmount': refundableItemsTotalAmount!,
        if (refundableShippingAmount != null)
          'refundableShippingAmount': refundableShippingAmount!,
        if (totalRefundedAmount != null)
          'totalRefundedAmount': totalRefundedAmount!,
      };
}

class ReturnShipment {
  /// The date of creation of the shipment, in ISO 8601 format.
  core.String? creationDate;

  /// The date of delivery of the shipment, in ISO 8601 format.
  core.String? deliveryDate;

  /// Type of the return method.
  ///
  /// Acceptable values are: - "`byMail`" - "`contactCustomerSupport`" -
  /// "`returnless`" - "`inStore`"
  core.String? returnMethodType;

  /// Shipment ID generated by Google.
  core.String? shipmentId;

  /// Tracking information of the shipment.
  ///
  /// One return shipment might be handled by several shipping carriers
  /// sequentially.
  core.List<ShipmentTrackingInfo>? shipmentTrackingInfos;

  /// The date of shipping of the shipment, in ISO 8601 format.
  core.String? shippingDate;

  /// State of the shipment.
  ///
  /// Acceptable values are: - "`completed`" - "`new`" - "`shipped`" -
  /// "`undeliverable`" - "`pending`"
  core.String? state;

  ReturnShipment({
    this.creationDate,
    this.deliveryDate,
    this.returnMethodType,
    this.shipmentId,
    this.shipmentTrackingInfos,
    this.shippingDate,
    this.state,
  });

  ReturnShipment.fromJson(core.Map _json)
      : this(
          creationDate: _json.containsKey('creationDate')
              ? _json['creationDate'] as core.String
              : null,
          deliveryDate: _json.containsKey('deliveryDate')
              ? _json['deliveryDate'] as core.String
              : null,
          returnMethodType: _json.containsKey('returnMethodType')
              ? _json['returnMethodType'] as core.String
              : null,
          shipmentId: _json.containsKey('shipmentId')
              ? _json['shipmentId'] as core.String
              : null,
          shipmentTrackingInfos: _json.containsKey('shipmentTrackingInfos')
              ? (_json['shipmentTrackingInfos'] as core.List)
                  .map((value) => ShipmentTrackingInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shippingDate: _json.containsKey('shippingDate')
              ? _json['shippingDate'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creationDate != null) 'creationDate': creationDate!,
        if (deliveryDate != null) 'deliveryDate': deliveryDate!,
        if (returnMethodType != null) 'returnMethodType': returnMethodType!,
        if (shipmentId != null) 'shipmentId': shipmentId!,
        if (shipmentTrackingInfos != null)
          'shipmentTrackingInfos': shipmentTrackingInfos!,
        if (shippingDate != null) 'shippingDate': shippingDate!,
        if (state != null) 'state': state!,
      };
}

/// Return shipping label for a Buy on Google merchant-managed return.
class ReturnShippingLabel {
  /// Name of the carrier.
  core.String? carrier;

  /// The URL for the return shipping label in PDF format
  core.String? labelUri;

  /// The tracking id of this return label.
  core.String? trackingId;

  ReturnShippingLabel({
    this.carrier,
    this.labelUri,
    this.trackingId,
  });

  ReturnShippingLabel.fromJson(core.Map _json)
      : this(
          carrier: _json.containsKey('carrier')
              ? _json['carrier'] as core.String
              : null,
          labelUri: _json.containsKey('labelUri')
              ? _json['labelUri'] as core.String
              : null,
          trackingId: _json.containsKey('trackingId')
              ? _json['trackingId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (carrier != null) 'carrier': carrier!,
        if (labelUri != null) 'labelUri': labelUri!,
        if (trackingId != null) 'trackingId': trackingId!,
      };
}

class ReturnaddressCustomBatchRequest {
  /// The request entries to be processed in the batch.
  core.List<ReturnaddressCustomBatchRequestEntry>? entries;

  ReturnaddressCustomBatchRequest({
    this.entries,
  });

  ReturnaddressCustomBatchRequest.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) => ReturnaddressCustomBatchRequestEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

class ReturnaddressCustomBatchRequestEntry {
  /// An entry ID, unique within the batch request.
  core.int? batchId;

  /// The Merchant Center account ID.
  core.String? merchantId;

  /// Method of the batch request entry.
  ///
  /// Acceptable values are: - "`delete`" - "`get`" - "`insert`"
  core.String? method;

  /// The return address to submit.
  ///
  /// This should be set only if the method is `insert`.
  ReturnAddress? returnAddress;

  /// The return address ID.
  ///
  /// This should be set only if the method is `delete` or `get`.
  core.String? returnAddressId;

  ReturnaddressCustomBatchRequestEntry({
    this.batchId,
    this.merchantId,
    this.method,
    this.returnAddress,
    this.returnAddressId,
  });

  ReturnaddressCustomBatchRequestEntry.fromJson(core.Map _json)
      : this(
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          merchantId: _json.containsKey('merchantId')
              ? _json['merchantId'] as core.String
              : null,
          method: _json.containsKey('method')
              ? _json['method'] as core.String
              : null,
          returnAddress: _json.containsKey('returnAddress')
              ? ReturnAddress.fromJson(
                  _json['returnAddress'] as core.Map<core.String, core.dynamic>)
              : null,
          returnAddressId: _json.containsKey('returnAddressId')
              ? _json['returnAddressId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchId != null) 'batchId': batchId!,
        if (merchantId != null) 'merchantId': merchantId!,
        if (method != null) 'method': method!,
        if (returnAddress != null) 'returnAddress': returnAddress!,
        if (returnAddressId != null) 'returnAddressId': returnAddressId!,
      };
}

class ReturnaddressCustomBatchResponse {
  /// The result of the execution of the batch requests.
  core.List<ReturnaddressCustomBatchResponseEntry>? entries;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#returnaddressCustomBatchResponse`".
  core.String? kind;

  ReturnaddressCustomBatchResponse({
    this.entries,
    this.kind,
  });

  ReturnaddressCustomBatchResponse.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) =>
                      ReturnaddressCustomBatchResponseEntry.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
        if (kind != null) 'kind': kind!,
      };
}

class ReturnaddressCustomBatchResponseEntry {
  /// The ID of the request entry to which this entry responds.
  core.int? batchId;

  /// A list of errors defined if, and only if, the request failed.
  Errors? errors;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#returnaddressCustomBatchResponseEntry`"
  core.String? kind;

  /// The retrieved return address.
  ReturnAddress? returnAddress;

  ReturnaddressCustomBatchResponseEntry({
    this.batchId,
    this.errors,
    this.kind,
    this.returnAddress,
  });

  ReturnaddressCustomBatchResponseEntry.fromJson(core.Map _json)
      : this(
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          errors: _json.containsKey('errors')
              ? Errors.fromJson(
                  _json['errors'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          returnAddress: _json.containsKey('returnAddress')
              ? ReturnAddress.fromJson(
                  _json['returnAddress'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchId != null) 'batchId': batchId!,
        if (errors != null) 'errors': errors!,
        if (kind != null) 'kind': kind!,
        if (returnAddress != null) 'returnAddress': returnAddress!,
      };
}

class ReturnaddressListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#returnaddressListResponse`".
  core.String? kind;

  /// The token for the retrieval of the next page of addresses.
  core.String? nextPageToken;
  core.List<ReturnAddress>? resources;

  ReturnaddressListResponse({
    this.kind,
    this.nextPageToken,
    this.resources,
  });

  ReturnaddressListResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => ReturnAddress.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resources != null) 'resources': resources!,
      };
}

class ReturnpolicyCustomBatchRequest {
  /// The request entries to be processed in the batch.
  core.List<ReturnpolicyCustomBatchRequestEntry>? entries;

  ReturnpolicyCustomBatchRequest({
    this.entries,
  });

  ReturnpolicyCustomBatchRequest.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) => ReturnpolicyCustomBatchRequestEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

class ReturnpolicyCustomBatchRequestEntry {
  /// An entry ID, unique within the batch request.
  core.int? batchId;

  /// The Merchant Center account ID.
  core.String? merchantId;

  /// Method of the batch request entry.
  ///
  /// Acceptable values are: - "`delete`" - "`get`" - "`insert`"
  core.String? method;

  /// The return policy to submit.
  ///
  /// This should be set only if the method is `insert`.
  ReturnPolicy? returnPolicy;

  /// The return policy ID.
  ///
  /// This should be set only if the method is `delete` or `get`.
  core.String? returnPolicyId;

  ReturnpolicyCustomBatchRequestEntry({
    this.batchId,
    this.merchantId,
    this.method,
    this.returnPolicy,
    this.returnPolicyId,
  });

  ReturnpolicyCustomBatchRequestEntry.fromJson(core.Map _json)
      : this(
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          merchantId: _json.containsKey('merchantId')
              ? _json['merchantId'] as core.String
              : null,
          method: _json.containsKey('method')
              ? _json['method'] as core.String
              : null,
          returnPolicy: _json.containsKey('returnPolicy')
              ? ReturnPolicy.fromJson(
                  _json['returnPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          returnPolicyId: _json.containsKey('returnPolicyId')
              ? _json['returnPolicyId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchId != null) 'batchId': batchId!,
        if (merchantId != null) 'merchantId': merchantId!,
        if (method != null) 'method': method!,
        if (returnPolicy != null) 'returnPolicy': returnPolicy!,
        if (returnPolicyId != null) 'returnPolicyId': returnPolicyId!,
      };
}

class ReturnpolicyCustomBatchResponse {
  /// The result of the execution of the batch requests.
  core.List<ReturnpolicyCustomBatchResponseEntry>? entries;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#returnpolicyCustomBatchResponse`".
  core.String? kind;

  ReturnpolicyCustomBatchResponse({
    this.entries,
    this.kind,
  });

  ReturnpolicyCustomBatchResponse.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) => ReturnpolicyCustomBatchResponseEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
        if (kind != null) 'kind': kind!,
      };
}

class ReturnpolicyCustomBatchResponseEntry {
  /// The ID of the request entry to which this entry responds.
  core.int? batchId;

  /// A list of errors defined if, and only if, the request failed.
  Errors? errors;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#returnpolicyCustomBatchResponseEntry`"
  core.String? kind;

  /// The retrieved return policy.
  ReturnPolicy? returnPolicy;

  ReturnpolicyCustomBatchResponseEntry({
    this.batchId,
    this.errors,
    this.kind,
    this.returnPolicy,
  });

  ReturnpolicyCustomBatchResponseEntry.fromJson(core.Map _json)
      : this(
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          errors: _json.containsKey('errors')
              ? Errors.fromJson(
                  _json['errors'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          returnPolicy: _json.containsKey('returnPolicy')
              ? ReturnPolicy.fromJson(
                  _json['returnPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchId != null) 'batchId': batchId!,
        if (errors != null) 'errors': errors!,
        if (kind != null) 'kind': kind!,
        if (returnPolicy != null) 'returnPolicy': returnPolicy!,
      };
}

class ReturnpolicyListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#returnpolicyListResponse`".
  core.String? kind;
  core.List<ReturnPolicy>? resources;

  ReturnpolicyListResponse({
    this.kind,
    this.resources,
  });

  ReturnpolicyListResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => ReturnPolicy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (resources != null) 'resources': resources!,
      };
}

class Row {
  /// The list of cells that constitute the row.
  ///
  /// Must have the same length as `columnHeaders` for two-dimensional tables, a
  /// length of 1 for one-dimensional tables. Required.
  core.List<Value>? cells;

  Row({
    this.cells,
  });

  Row.fromJson(core.Map _json)
      : this(
          cells: _json.containsKey('cells')
              ? (_json['cells'] as core.List)
                  .map((value) => Value.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cells != null) 'cells': cells!,
      };
}

/// Request message for the ReportService.Search method.
class SearchRequest {
  /// Number of ReportRows to retrieve in a single page.
  ///
  /// Defaults to the maximum of 1000. Values above 1000 are coerced to 1000.
  core.int? pageSize;

  /// Token of the page to retrieve.
  ///
  /// If not specified, the first page of results is returned. In order to
  /// request the next page of results, the value obtained from
  /// `next_page_token` in the previous response should be used.
  core.String? pageToken;

  /// Query that defines performance metrics to retrieve and dimensions
  /// according to which the metrics are to be segmented.
  ///
  /// For details on how to construct your query, see the
  /// [Query Language guide](https://developers.google.com/shopping-content/guides/reports/query-language/overview).
  ///
  /// Required.
  core.String? query;

  SearchRequest({
    this.pageSize,
    this.pageToken,
    this.query,
  });

  SearchRequest.fromJson(core.Map _json)
      : this(
          pageSize: _json.containsKey('pageSize')
              ? _json['pageSize'] as core.int
              : null,
          pageToken: _json.containsKey('pageToken')
              ? _json['pageToken'] as core.String
              : null,
          query:
              _json.containsKey('query') ? _json['query'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (query != null) 'query': query!,
      };
}

/// Response message for the ReportService.Search method.
class SearchResponse {
  /// Token which can be sent as `page_token` to retrieve the next page.
  ///
  /// If omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Rows that matched the search query.
  core.List<ReportRow>? results;

  SearchResponse({
    this.nextPageToken,
    this.results,
  });

  SearchResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          results: _json.containsKey('results')
              ? (_json['results'] as core.List)
                  .map((value) => ReportRow.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (results != null) 'results': results!,
      };
}

/// Dimensions according to which metrics are segmented in the response.
///
/// Values of product dimensions, e.g., offer id, reflect the state of a product
/// at the time of the corresponding event, e.g., impression or order. Segment
/// fields cannot be selected in queries without also selecting at least one
/// metric field. Values are only set for dimensions requested explicitly in the
/// request's search query.
class Segments {
  /// Brand of the product.
  core.String? brand;

  /// \[Product category (1st
  /// level)\](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type)
  /// in Google's product taxonomy.
  core.String? categoryL1;

  /// \[Product category (2nd
  /// level)\](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type)
  /// in Google's product taxonomy.
  core.String? categoryL2;

  /// \[Product category (3rd
  /// level)\](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type)
  /// in Google's product taxonomy.
  core.String? categoryL3;

  /// \[Product category (4th
  /// level)\](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type)
  /// in Google's product taxonomy.
  core.String? categoryL4;

  /// \[Product category (5th
  /// level)\](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type)
  /// in Google's product taxonomy.
  core.String? categoryL5;

  /// Currency in which price metrics are represented, e.g., if you select
  /// `ordered_item_sales_micros`, the returned value will be represented by
  /// this currency.
  core.String? currencyCode;

  /// Custom label 0 for custom grouping of products.
  core.String? customLabel0;

  /// Custom label 1 for custom grouping of products.
  core.String? customLabel1;

  /// Custom label 2 for custom grouping of products.
  core.String? customLabel2;

  /// Custom label 3 for custom grouping of products.
  core.String? customLabel3;

  /// Custom label 4 for custom grouping of products.
  core.String? customLabel4;

  /// Date in the merchant timezone to which metrics apply.
  Date? date;

  /// Merchant-provided id of the product.
  core.String? offerId;

  /// \[Product type (1st
  /// level)\](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type)
  /// in merchant's own product taxonomy.
  core.String? productTypeL1;

  /// \[Product type (2nd
  /// level)\](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type)
  /// in merchant's own product taxonomy.
  core.String? productTypeL2;

  /// \[Product type (3rd
  /// level)\](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type)
  /// in merchant's own product taxonomy.
  core.String? productTypeL3;

  /// \[Product type (4th
  /// level)\](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type)
  /// in merchant's own product taxonomy.
  core.String? productTypeL4;

  /// \[Product type (5th
  /// level)\](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type)
  /// in merchant's own product taxonomy.
  core.String? productTypeL5;

  /// Program to which metrics apply, e.g., Free Product Listing.
  /// Possible string values are:
  /// - "PROGRAM_UNSPECIFIED" : Not specified.
  /// - "SHOPPING_ADS" : Shopping Ads.
  /// - "FREE_PRODUCT_LISTING" : Free Product Listing.
  /// - "FREE_LOCAL_PRODUCT_LISTING" : Free Local Product Listing.
  /// - "BUY_ON_GOOGLE_LISTING" : Buy on Google Listing.
  core.String? program;

  /// Title of the product.
  core.String? title;

  /// First day of the week (Monday) of the metrics date in the merchant
  /// timezone.
  Date? week;

  Segments({
    this.brand,
    this.categoryL1,
    this.categoryL2,
    this.categoryL3,
    this.categoryL4,
    this.categoryL5,
    this.currencyCode,
    this.customLabel0,
    this.customLabel1,
    this.customLabel2,
    this.customLabel3,
    this.customLabel4,
    this.date,
    this.offerId,
    this.productTypeL1,
    this.productTypeL2,
    this.productTypeL3,
    this.productTypeL4,
    this.productTypeL5,
    this.program,
    this.title,
    this.week,
  });

  Segments.fromJson(core.Map _json)
      : this(
          brand:
              _json.containsKey('brand') ? _json['brand'] as core.String : null,
          categoryL1: _json.containsKey('categoryL1')
              ? _json['categoryL1'] as core.String
              : null,
          categoryL2: _json.containsKey('categoryL2')
              ? _json['categoryL2'] as core.String
              : null,
          categoryL3: _json.containsKey('categoryL3')
              ? _json['categoryL3'] as core.String
              : null,
          categoryL4: _json.containsKey('categoryL4')
              ? _json['categoryL4'] as core.String
              : null,
          categoryL5: _json.containsKey('categoryL5')
              ? _json['categoryL5'] as core.String
              : null,
          currencyCode: _json.containsKey('currencyCode')
              ? _json['currencyCode'] as core.String
              : null,
          customLabel0: _json.containsKey('customLabel0')
              ? _json['customLabel0'] as core.String
              : null,
          customLabel1: _json.containsKey('customLabel1')
              ? _json['customLabel1'] as core.String
              : null,
          customLabel2: _json.containsKey('customLabel2')
              ? _json['customLabel2'] as core.String
              : null,
          customLabel3: _json.containsKey('customLabel3')
              ? _json['customLabel3'] as core.String
              : null,
          customLabel4: _json.containsKey('customLabel4')
              ? _json['customLabel4'] as core.String
              : null,
          date: _json.containsKey('date')
              ? Date.fromJson(
                  _json['date'] as core.Map<core.String, core.dynamic>)
              : null,
          offerId: _json.containsKey('offerId')
              ? _json['offerId'] as core.String
              : null,
          productTypeL1: _json.containsKey('productTypeL1')
              ? _json['productTypeL1'] as core.String
              : null,
          productTypeL2: _json.containsKey('productTypeL2')
              ? _json['productTypeL2'] as core.String
              : null,
          productTypeL3: _json.containsKey('productTypeL3')
              ? _json['productTypeL3'] as core.String
              : null,
          productTypeL4: _json.containsKey('productTypeL4')
              ? _json['productTypeL4'] as core.String
              : null,
          productTypeL5: _json.containsKey('productTypeL5')
              ? _json['productTypeL5'] as core.String
              : null,
          program: _json.containsKey('program')
              ? _json['program'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          week: _json.containsKey('week')
              ? Date.fromJson(
                  _json['week'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (brand != null) 'brand': brand!,
        if (categoryL1 != null) 'categoryL1': categoryL1!,
        if (categoryL2 != null) 'categoryL2': categoryL2!,
        if (categoryL3 != null) 'categoryL3': categoryL3!,
        if (categoryL4 != null) 'categoryL4': categoryL4!,
        if (categoryL5 != null) 'categoryL5': categoryL5!,
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (customLabel0 != null) 'customLabel0': customLabel0!,
        if (customLabel1 != null) 'customLabel1': customLabel1!,
        if (customLabel2 != null) 'customLabel2': customLabel2!,
        if (customLabel3 != null) 'customLabel3': customLabel3!,
        if (customLabel4 != null) 'customLabel4': customLabel4!,
        if (date != null) 'date': date!,
        if (offerId != null) 'offerId': offerId!,
        if (productTypeL1 != null) 'productTypeL1': productTypeL1!,
        if (productTypeL2 != null) 'productTypeL2': productTypeL2!,
        if (productTypeL3 != null) 'productTypeL3': productTypeL3!,
        if (productTypeL4 != null) 'productTypeL4': productTypeL4!,
        if (productTypeL5 != null) 'productTypeL5': productTypeL5!,
        if (program != null) 'program': program!,
        if (title != null) 'title': title!,
        if (week != null) 'week': week!,
      };
}

class Service {
  /// A boolean exposing the active status of the shipping service.
  ///
  /// Required.
  core.bool? active;

  /// The CLDR code of the currency to which this service applies.
  ///
  /// Must match that of the prices in rate groups.
  core.String? currency;

  /// The CLDR territory code of the country to which the service applies.
  ///
  /// Required.
  core.String? deliveryCountry;

  /// Time spent in various aspects from order to the delivery of the product.
  ///
  /// Required.
  DeliveryTime? deliveryTime;

  /// Eligibility for this service.
  ///
  /// Acceptable values are: - "`All scenarios`" - "`All scenarios except
  /// Shopping Actions`" - "`Shopping Actions`"
  core.String? eligibility;

  /// Minimum order value for this service.
  ///
  /// If set, indicates that customers will have to spend at least this amount.
  /// All prices within a service must have the same currency. Cannot be set
  /// together with minimum_order_value_table.
  Price? minimumOrderValue;

  /// Table of per store minimum order values for the pickup fulfillment type.
  ///
  /// Cannot be set together with minimum_order_value.
  MinimumOrderValueTable? minimumOrderValueTable;

  /// Free-form name of the service.
  ///
  /// Must be unique within target account. Required.
  core.String? name;

  /// The carrier-service pair delivering items to collection points.
  ///
  /// The list of supported pickup services can be retrieved via the
  /// `getSupportedPickupServices` method. Required if and only if the service
  /// delivery type is `pickup`.
  PickupCarrierService? pickupService;

  /// Shipping rate group definitions.
  ///
  /// Only the last one is allowed to have an empty `applicableShippingLabels`,
  /// which means "everything else". The other `applicableShippingLabels` must
  /// not overlap.
  core.List<RateGroup>? rateGroups;

  /// Type of locations this service ships orders to.
  ///
  /// Acceptable values are: - "`delivery`" - "`pickup`"
  core.String? shipmentType;

  Service({
    this.active,
    this.currency,
    this.deliveryCountry,
    this.deliveryTime,
    this.eligibility,
    this.minimumOrderValue,
    this.minimumOrderValueTable,
    this.name,
    this.pickupService,
    this.rateGroups,
    this.shipmentType,
  });

  Service.fromJson(core.Map _json)
      : this(
          active:
              _json.containsKey('active') ? _json['active'] as core.bool : null,
          currency: _json.containsKey('currency')
              ? _json['currency'] as core.String
              : null,
          deliveryCountry: _json.containsKey('deliveryCountry')
              ? _json['deliveryCountry'] as core.String
              : null,
          deliveryTime: _json.containsKey('deliveryTime')
              ? DeliveryTime.fromJson(
                  _json['deliveryTime'] as core.Map<core.String, core.dynamic>)
              : null,
          eligibility: _json.containsKey('eligibility')
              ? _json['eligibility'] as core.String
              : null,
          minimumOrderValue: _json.containsKey('minimumOrderValue')
              ? Price.fromJson(_json['minimumOrderValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          minimumOrderValueTable: _json.containsKey('minimumOrderValueTable')
              ? MinimumOrderValueTable.fromJson(_json['minimumOrderValueTable']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          pickupService: _json.containsKey('pickupService')
              ? PickupCarrierService.fromJson(
                  _json['pickupService'] as core.Map<core.String, core.dynamic>)
              : null,
          rateGroups: _json.containsKey('rateGroups')
              ? (_json['rateGroups'] as core.List)
                  .map((value) => RateGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shipmentType: _json.containsKey('shipmentType')
              ? _json['shipmentType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (active != null) 'active': active!,
        if (currency != null) 'currency': currency!,
        if (deliveryCountry != null) 'deliveryCountry': deliveryCountry!,
        if (deliveryTime != null) 'deliveryTime': deliveryTime!,
        if (eligibility != null) 'eligibility': eligibility!,
        if (minimumOrderValue != null) 'minimumOrderValue': minimumOrderValue!,
        if (minimumOrderValueTable != null)
          'minimumOrderValueTable': minimumOrderValueTable!,
        if (name != null) 'name': name!,
        if (pickupService != null) 'pickupService': pickupService!,
        if (rateGroups != null) 'rateGroups': rateGroups!,
        if (shipmentType != null) 'shipmentType': shipmentType!,
      };
}

/// Settlement reports detail order-level and item-level credits and debits
/// between you and Google.
class SettlementReport {
  /// The end date on which all transactions are included in the report, in ISO
  /// 8601 format.
  core.String? endDate;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#settlementReport`"
  core.String? kind;

  /// The residual amount from the previous invoice.
  ///
  /// This is set only if the previous invoices are not paid because of negative
  /// balance.
  Price? previousBalance;

  /// The ID of the settlement report.
  core.String? settlementId;

  /// The start date on which all transactions are included in the report, in
  /// ISO 8601 format.
  core.String? startDate;

  /// The money due to the merchant.
  Price? transferAmount;

  /// Date on which transfer for this payment was initiated by Google, in ISO
  /// 8601 format.
  core.String? transferDate;

  /// The list of bank identifiers used for the transfer.
  ///
  /// e.g. Trace ID for Federal Automated Clearing House (ACH). This may also be
  /// known as the Wire ID.
  core.List<core.String>? transferIds;

  SettlementReport({
    this.endDate,
    this.kind,
    this.previousBalance,
    this.settlementId,
    this.startDate,
    this.transferAmount,
    this.transferDate,
    this.transferIds,
  });

  SettlementReport.fromJson(core.Map _json)
      : this(
          endDate: _json.containsKey('endDate')
              ? _json['endDate'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          previousBalance: _json.containsKey('previousBalance')
              ? Price.fromJson(_json['previousBalance']
                  as core.Map<core.String, core.dynamic>)
              : null,
          settlementId: _json.containsKey('settlementId')
              ? _json['settlementId'] as core.String
              : null,
          startDate: _json.containsKey('startDate')
              ? _json['startDate'] as core.String
              : null,
          transferAmount: _json.containsKey('transferAmount')
              ? Price.fromJson(_json['transferAmount']
                  as core.Map<core.String, core.dynamic>)
              : null,
          transferDate: _json.containsKey('transferDate')
              ? _json['transferDate'] as core.String
              : null,
          transferIds: _json.containsKey('transferIds')
              ? (_json['transferIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endDate != null) 'endDate': endDate!,
        if (kind != null) 'kind': kind!,
        if (previousBalance != null) 'previousBalance': previousBalance!,
        if (settlementId != null) 'settlementId': settlementId!,
        if (startDate != null) 'startDate': startDate!,
        if (transferAmount != null) 'transferAmount': transferAmount!,
        if (transferDate != null) 'transferDate': transferDate!,
        if (transferIds != null) 'transferIds': transferIds!,
      };
}

/// Settlement transactions give a detailed breakdown of the settlement report.
class SettlementTransaction {
  /// The amount for the transaction.
  SettlementTransactionAmount? amount;

  /// Identifiers of the transaction.
  SettlementTransactionIdentifiers? identifiers;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#settlementTransaction`"
  core.String? kind;

  /// Details of the transaction.
  SettlementTransactionTransaction? transaction;

  SettlementTransaction({
    this.amount,
    this.identifiers,
    this.kind,
    this.transaction,
  });

  SettlementTransaction.fromJson(core.Map _json)
      : this(
          amount: _json.containsKey('amount')
              ? SettlementTransactionAmount.fromJson(
                  _json['amount'] as core.Map<core.String, core.dynamic>)
              : null,
          identifiers: _json.containsKey('identifiers')
              ? SettlementTransactionIdentifiers.fromJson(
                  _json['identifiers'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          transaction: _json.containsKey('transaction')
              ? SettlementTransactionTransaction.fromJson(
                  _json['transaction'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (amount != null) 'amount': amount!,
        if (identifiers != null) 'identifiers': identifiers!,
        if (kind != null) 'kind': kind!,
        if (transaction != null) 'transaction': transaction!,
      };
}

class SettlementTransactionAmount {
  SettlementTransactionAmountCommission? commission;

  /// The description of the event.
  ///
  /// Acceptable values are: - "`taxWithhold`" - "`principal`" -
  /// "`principalAdjustment`" - "`shippingFee`" - "`merchantRemittedSalesTax`" -
  /// "`googleRemittedSalesTax`" - "`merchantCoupon`" - "`merchantCouponTax`" -
  /// "`merchantRemittedDisposalTax`" - "`googleRemittedDisposalTax`" -
  /// "`merchantRemittedRedemptionFee`" - "`googleRemittedRedemptionFee`" -
  /// "`eeeEcoFee`" - "`furnitureEcoFee`" - "`copyPrivateFee`" -
  /// "`eeeEcoFeeCommission`" - "`furnitureEcoFeeCommission`" -
  /// "`copyPrivateFeeCommission`" - "`principalRefund`" -
  /// "`principalRefundTax`" - "`itemCommission`" - "`adjustmentCommission`" -
  /// "`shippingFeeCommission`" - "`commissionRefund`" - "`damaged`" -
  /// "`damagedOrDefectiveItem`" - "`expiredItem`" - "`faultyItem`" -
  /// "`incorrectItemReceived`" - "`itemMissing`" - "`qualityNotExpected`" -
  /// "`receivedTooLate`" - "`storePackageMissing`" - "`transitPackageMissing`"
  /// - "`unsuccessfulDeliveryUndeliverable`" - "`wrongChargeInStore`" -
  /// "`wrongItem`" - "`returns`" - "`undeliverable`" -
  /// "`issueRelatedRefundAndReplacementAmountDescription`" -
  /// "`refundFromMerchant`" - "`returnLabelShippingFee`" -
  /// "`lumpSumCorrection`" - "`pspFee`" - "`principalRefundDoesNotFit`" -
  /// "`principalRefundOrderedWrongItem`" -
  /// "`principalRefundQualityNotExpected`" -
  /// "`principalRefundBetterPriceFound`" - "`principalRefundNoLongerNeeded`" -
  /// "`principalRefundChangedMind`" - "`principalRefundReceivedTooLate`" -
  /// "`principalRefundIncorrectItemReceived`" -
  /// "`principalRefundDamagedOrDefectiveItem`" -
  /// "`principalRefundDidNotMatchDescription`" - "`principalRefundExpiredItem`"
  core.String? description;

  /// The amount that contributes to the line item price.
  Price? transactionAmount;

  /// The type of the amount.
  ///
  /// Acceptable values are: - "`itemPrice`" - "`orderPrice`" - "`refund`" -
  /// "`earlyRefund`" - "`courtesyRefund`" - "`returnRefund`" -
  /// "`returnLabelShippingFeeAmount`" - "`lumpSumCorrectionAmount`"
  core.String? type;

  SettlementTransactionAmount({
    this.commission,
    this.description,
    this.transactionAmount,
    this.type,
  });

  SettlementTransactionAmount.fromJson(core.Map _json)
      : this(
          commission: _json.containsKey('commission')
              ? SettlementTransactionAmountCommission.fromJson(
                  _json['commission'] as core.Map<core.String, core.dynamic>)
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          transactionAmount: _json.containsKey('transactionAmount')
              ? Price.fromJson(_json['transactionAmount']
                  as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commission != null) 'commission': commission!,
        if (description != null) 'description': description!,
        if (transactionAmount != null) 'transactionAmount': transactionAmount!,
        if (type != null) 'type': type!,
      };
}

class SettlementTransactionAmountCommission {
  /// The category of the commission.
  ///
  /// Acceptable values are: - "`animalsAndPetSupplies`" -
  /// "`dogCatFoodAndCatLitter`" - "`apparelAndAccessories`" -
  /// "`shoesHandbagsAndSunglasses`" - "`costumesAndAccessories`" - "`jewelry`"
  /// - "`watches`" - "`hobbiesArtsAndCrafts`" - "`homeAndGarden`" -
  /// "`entertainmentCollectibles`" - "`collectibleCoins`" -
  /// "`sportsCollectibles`" - "`sportingGoods`" - "`toysAndGames`" -
  /// "`musicalInstruments`" - "`giftCards`" - "`babyAndToddler`" -
  /// "`babyFoodWipesAndDiapers`" - "`businessAndIndustrial`" -
  /// "`camerasOpticsAndPhotography`" - "`consumerElectronics`" -
  /// "`electronicsAccessories`" - "`personalComputers`" - "`videoGameConsoles`"
  /// - "`foodAndGrocery`" - "`beverages`" - "`tobaccoProducts`" - "`furniture`"
  /// - "`hardware`" - "`buildingMaterials`" - "`tools`" -
  /// "`healthAndPersonalCare`" - "`beauty`" - "`householdSupplies`" -
  /// "`kitchenAndDining`" - "`majorAppliances`" - "`luggageAndBags`" -
  /// "`media`" - "`officeSupplies`" - "`softwareAndVideoGames`" -
  /// "`vehiclePartsAndAccessories`" - "`vehicleTiresAndWheels`" - "`vehicles`"
  /// - "`everythingElse`"
  core.String? category;

  /// Rate of the commission in percentage.
  core.String? rate;

  SettlementTransactionAmountCommission({
    this.category,
    this.rate,
  });

  SettlementTransactionAmountCommission.fromJson(core.Map _json)
      : this(
          category: _json.containsKey('category')
              ? _json['category'] as core.String
              : null,
          rate: _json.containsKey('rate') ? _json['rate'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (category != null) 'category': category!,
        if (rate != null) 'rate': rate!,
      };
}

class SettlementTransactionIdentifiers {
  /// The identifier of the adjustments, if it is available.
  core.String? adjustmentId;

  /// The merchant provided order ID.
  core.String? merchantOrderId;

  /// The identifier of the item.
  core.String? orderItemId;

  /// The unique ID of the settlement transaction entry.
  core.String? settlementEntryId;

  /// The shipment ids for the item.
  core.List<core.String>? shipmentIds;

  /// The Google transaction ID.
  core.String? transactionId;

  SettlementTransactionIdentifiers({
    this.adjustmentId,
    this.merchantOrderId,
    this.orderItemId,
    this.settlementEntryId,
    this.shipmentIds,
    this.transactionId,
  });

  SettlementTransactionIdentifiers.fromJson(core.Map _json)
      : this(
          adjustmentId: _json.containsKey('adjustmentId')
              ? _json['adjustmentId'] as core.String
              : null,
          merchantOrderId: _json.containsKey('merchantOrderId')
              ? _json['merchantOrderId'] as core.String
              : null,
          orderItemId: _json.containsKey('orderItemId')
              ? _json['orderItemId'] as core.String
              : null,
          settlementEntryId: _json.containsKey('settlementEntryId')
              ? _json['settlementEntryId'] as core.String
              : null,
          shipmentIds: _json.containsKey('shipmentIds')
              ? (_json['shipmentIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          transactionId: _json.containsKey('transactionId')
              ? _json['transactionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adjustmentId != null) 'adjustmentId': adjustmentId!,
        if (merchantOrderId != null) 'merchantOrderId': merchantOrderId!,
        if (orderItemId != null) 'orderItemId': orderItemId!,
        if (settlementEntryId != null) 'settlementEntryId': settlementEntryId!,
        if (shipmentIds != null) 'shipmentIds': shipmentIds!,
        if (transactionId != null) 'transactionId': transactionId!,
      };
}

class SettlementTransactionTransaction {
  /// The time on which the event occurred in ISO 8601 format.
  core.String? postDate;

  /// The type of the transaction that occurred.
  ///
  /// Acceptable values are: - "`order`" - "`reversal`" - "`orderRefund`" -
  /// "`reversalRefund`" - "`issueRelatedRefundAndReplacement`" -
  /// "`returnLabelShippingFeeTransaction`" -
  /// "`reversalIssueRelatedRefundAndReplacement`" -
  /// "`reversalReturnLabelShippingFeeTransaction`" -
  /// "`lumpSumCorrectionTransaction`"
  core.String? type;

  SettlementTransactionTransaction({
    this.postDate,
    this.type,
  });

  SettlementTransactionTransaction.fromJson(core.Map _json)
      : this(
          postDate: _json.containsKey('postDate')
              ? _json['postDate'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (postDate != null) 'postDate': postDate!,
        if (type != null) 'type': type!,
      };
}

class SettlementreportsListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#settlementreportsListResponse`".
  core.String? kind;

  /// The token for the retrieval of the next page of returns.
  core.String? nextPageToken;
  core.List<SettlementReport>? resources;

  SettlementreportsListResponse({
    this.kind,
    this.nextPageToken,
    this.resources,
  });

  SettlementreportsListResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => SettlementReport.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resources != null) 'resources': resources!,
      };
}

class SettlementtransactionsListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#settlementtransactionsListResponse`".
  core.String? kind;

  /// The token for the retrieval of the next page of returns.
  core.String? nextPageToken;
  core.List<SettlementTransaction>? resources;

  SettlementtransactionsListResponse({
    this.kind,
    this.nextPageToken,
    this.resources,
  });

  SettlementtransactionsListResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => SettlementTransaction.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resources != null) 'resources': resources!,
      };
}

class ShipmentInvoice {
  /// Invoice summary.
  ///
  /// Required.
  InvoiceSummary? invoiceSummary;

  /// Invoice details per line item.
  ///
  /// Required.
  core.List<ShipmentInvoiceLineItemInvoice>? lineItemInvoices;

  /// ID of the shipment group.
  ///
  /// It is assigned by the merchant in the `shipLineItems` method and is used
  /// to group multiple line items that have the same kind of shipping charges.
  ///
  /// Required.
  core.String? shipmentGroupId;

  ShipmentInvoice({
    this.invoiceSummary,
    this.lineItemInvoices,
    this.shipmentGroupId,
  });

  ShipmentInvoice.fromJson(core.Map _json)
      : this(
          invoiceSummary: _json.containsKey('invoiceSummary')
              ? InvoiceSummary.fromJson(_json['invoiceSummary']
                  as core.Map<core.String, core.dynamic>)
              : null,
          lineItemInvoices: _json.containsKey('lineItemInvoices')
              ? (_json['lineItemInvoices'] as core.List)
                  .map((value) => ShipmentInvoiceLineItemInvoice.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shipmentGroupId: _json.containsKey('shipmentGroupId')
              ? _json['shipmentGroupId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (invoiceSummary != null) 'invoiceSummary': invoiceSummary!,
        if (lineItemInvoices != null) 'lineItemInvoices': lineItemInvoices!,
        if (shipmentGroupId != null) 'shipmentGroupId': shipmentGroupId!,
      };
}

class ShipmentInvoiceLineItemInvoice {
  /// ID of the line item.
  ///
  /// Either lineItemId or productId must be set.
  core.String? lineItemId;

  /// ID of the product.
  ///
  /// This is the REST ID used in the products service. Either lineItemId or
  /// productId must be set.
  core.String? productId;

  /// The shipment unit ID is assigned by the merchant and defines individual
  /// quantities within a line item.
  ///
  /// The same ID can be assigned to units that are the same while units that
  /// differ must be assigned a different ID (for example: free or promotional
  /// units).
  ///
  /// Required.
  core.List<core.String>? shipmentUnitIds;

  /// Invoice details for a single unit.
  ///
  /// Required.
  UnitInvoice? unitInvoice;

  ShipmentInvoiceLineItemInvoice({
    this.lineItemId,
    this.productId,
    this.shipmentUnitIds,
    this.unitInvoice,
  });

  ShipmentInvoiceLineItemInvoice.fromJson(core.Map _json)
      : this(
          lineItemId: _json.containsKey('lineItemId')
              ? _json['lineItemId'] as core.String
              : null,
          productId: _json.containsKey('productId')
              ? _json['productId'] as core.String
              : null,
          shipmentUnitIds: _json.containsKey('shipmentUnitIds')
              ? (_json['shipmentUnitIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          unitInvoice: _json.containsKey('unitInvoice')
              ? UnitInvoice.fromJson(
                  _json['unitInvoice'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lineItemId != null) 'lineItemId': lineItemId!,
        if (productId != null) 'productId': productId!,
        if (shipmentUnitIds != null) 'shipmentUnitIds': shipmentUnitIds!,
        if (unitInvoice != null) 'unitInvoice': unitInvoice!,
      };
}

class ShipmentTrackingInfo {
  /// The shipping carrier that handles the package.
  ///
  /// Acceptable values are: - "`boxtal`" - "`bpost`" - "`chronopost`" -
  /// "`colisPrive`" - "`colissimo`" - "`cxt`" - "`deliv`" - "`dhl`" - "`dpd`" -
  /// "`dynamex`" - "`eCourier`" - "`easypost`" - "`efw`" - "`fedex`" -
  /// "`fedexSmartpost`" - "`geodis`" - "`gls`" - "`googleCourier`" - "`gsx`" -
  /// "`jdLogistics`" - "`laPoste`" - "`lasership`" - "`manual`" - "`mpx`" -
  /// "`onTrac`" - "`other`" - "`tnt`" - "`uds`" - "`ups`" - "`usps`"
  core.String? carrier;

  /// The tracking number for the package.
  core.String? trackingNumber;

  ShipmentTrackingInfo({
    this.carrier,
    this.trackingNumber,
  });

  ShipmentTrackingInfo.fromJson(core.Map _json)
      : this(
          carrier: _json.containsKey('carrier')
              ? _json['carrier'] as core.String
              : null,
          trackingNumber: _json.containsKey('trackingNumber')
              ? _json['trackingNumber'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (carrier != null) 'carrier': carrier!,
        if (trackingNumber != null) 'trackingNumber': trackingNumber!,
      };
}

/// The merchant account's shipping settings.
///
/// All methods except getsupportedcarriers and getsupportedholidays require the
/// admin role.
class ShippingSettings {
  /// The ID of the account to which these account shipping settings belong.
  ///
  /// Ignored upon update, always present in get request responses.
  core.String? accountId;

  /// A list of postal code groups that can be referred to in `services`.
  ///
  /// Optional.
  core.List<PostalCodeGroup>? postalCodeGroups;

  /// The target account's list of services.
  ///
  /// Optional.
  core.List<Service>? services;

  /// A list of warehouses which can be referred to in `services`.
  ///
  /// Optional.
  core.List<Warehouse>? warehouses;

  ShippingSettings({
    this.accountId,
    this.postalCodeGroups,
    this.services,
    this.warehouses,
  });

  ShippingSettings.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          postalCodeGroups: _json.containsKey('postalCodeGroups')
              ? (_json['postalCodeGroups'] as core.List)
                  .map((value) => PostalCodeGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          services: _json.containsKey('services')
              ? (_json['services'] as core.List)
                  .map((value) => Service.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          warehouses: _json.containsKey('warehouses')
              ? (_json['warehouses'] as core.List)
                  .map((value) => Warehouse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (postalCodeGroups != null) 'postalCodeGroups': postalCodeGroups!,
        if (services != null) 'services': services!,
        if (warehouses != null) 'warehouses': warehouses!,
      };
}

class ShippingsettingsCustomBatchRequest {
  /// The request entries to be processed in the batch.
  core.List<ShippingsettingsCustomBatchRequestEntry>? entries;

  ShippingsettingsCustomBatchRequest({
    this.entries,
  });

  ShippingsettingsCustomBatchRequest.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) =>
                      ShippingsettingsCustomBatchRequestEntry.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

/// A batch entry encoding a single non-batch shippingsettings request.
class ShippingsettingsCustomBatchRequestEntry {
  /// The ID of the account for which to get/update account shipping settings.
  core.String? accountId;

  /// An entry ID, unique within the batch request.
  core.int? batchId;

  /// The ID of the managing account.
  core.String? merchantId;

  /// The method of the batch entry.
  ///
  /// Acceptable values are: - "`get`" - "`update`"
  core.String? method;

  /// The account shipping settings to update.
  ///
  /// Only defined if the method is `update`.
  ShippingSettings? shippingSettings;

  ShippingsettingsCustomBatchRequestEntry({
    this.accountId,
    this.batchId,
    this.merchantId,
    this.method,
    this.shippingSettings,
  });

  ShippingsettingsCustomBatchRequestEntry.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          merchantId: _json.containsKey('merchantId')
              ? _json['merchantId'] as core.String
              : null,
          method: _json.containsKey('method')
              ? _json['method'] as core.String
              : null,
          shippingSettings: _json.containsKey('shippingSettings')
              ? ShippingSettings.fromJson(_json['shippingSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (batchId != null) 'batchId': batchId!,
        if (merchantId != null) 'merchantId': merchantId!,
        if (method != null) 'method': method!,
        if (shippingSettings != null) 'shippingSettings': shippingSettings!,
      };
}

class ShippingsettingsCustomBatchResponse {
  /// The result of the execution of the batch requests.
  core.List<ShippingsettingsCustomBatchResponseEntry>? entries;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#shippingsettingsCustomBatchResponse`".
  core.String? kind;

  ShippingsettingsCustomBatchResponse({
    this.entries,
    this.kind,
  });

  ShippingsettingsCustomBatchResponse.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) =>
                      ShippingsettingsCustomBatchResponseEntry.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
        if (kind != null) 'kind': kind!,
      };
}

/// A batch entry encoding a single non-batch shipping settings response.
class ShippingsettingsCustomBatchResponseEntry {
  /// The ID of the request entry to which this entry responds.
  core.int? batchId;

  /// A list of errors defined if, and only if, the request failed.
  Errors? errors;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string
  /// "`content#shippingsettingsCustomBatchResponseEntry`"
  core.String? kind;

  /// The retrieved or updated account shipping settings.
  ShippingSettings? shippingSettings;

  ShippingsettingsCustomBatchResponseEntry({
    this.batchId,
    this.errors,
    this.kind,
    this.shippingSettings,
  });

  ShippingsettingsCustomBatchResponseEntry.fromJson(core.Map _json)
      : this(
          batchId: _json.containsKey('batchId')
              ? _json['batchId'] as core.int
              : null,
          errors: _json.containsKey('errors')
              ? Errors.fromJson(
                  _json['errors'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          shippingSettings: _json.containsKey('shippingSettings')
              ? ShippingSettings.fromJson(_json['shippingSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchId != null) 'batchId': batchId!,
        if (errors != null) 'errors': errors!,
        if (kind != null) 'kind': kind!,
        if (shippingSettings != null) 'shippingSettings': shippingSettings!,
      };
}

class ShippingsettingsGetSupportedCarriersResponse {
  /// A list of supported carriers.
  ///
  /// May be empty.
  core.List<CarriersCarrier>? carriers;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string
  /// "`content#shippingsettingsGetSupportedCarriersResponse`".
  core.String? kind;

  ShippingsettingsGetSupportedCarriersResponse({
    this.carriers,
    this.kind,
  });

  ShippingsettingsGetSupportedCarriersResponse.fromJson(core.Map _json)
      : this(
          carriers: _json.containsKey('carriers')
              ? (_json['carriers'] as core.List)
                  .map((value) => CarriersCarrier.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (carriers != null) 'carriers': carriers!,
        if (kind != null) 'kind': kind!,
      };
}

class ShippingsettingsGetSupportedHolidaysResponse {
  /// A list of holidays applicable for delivery guarantees.
  ///
  /// May be empty.
  core.List<HolidaysHoliday>? holidays;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string
  /// "`content#shippingsettingsGetSupportedHolidaysResponse`".
  core.String? kind;

  ShippingsettingsGetSupportedHolidaysResponse({
    this.holidays,
    this.kind,
  });

  ShippingsettingsGetSupportedHolidaysResponse.fromJson(core.Map _json)
      : this(
          holidays: _json.containsKey('holidays')
              ? (_json['holidays'] as core.List)
                  .map((value) => HolidaysHoliday.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (holidays != null) 'holidays': holidays!,
        if (kind != null) 'kind': kind!,
      };
}

class ShippingsettingsGetSupportedPickupServicesResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string
  /// "`content#shippingsettingsGetSupportedPickupServicesResponse`".
  core.String? kind;

  /// A list of supported pickup services.
  ///
  /// May be empty.
  core.List<PickupServicesPickupService>? pickupServices;

  ShippingsettingsGetSupportedPickupServicesResponse({
    this.kind,
    this.pickupServices,
  });

  ShippingsettingsGetSupportedPickupServicesResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          pickupServices: _json.containsKey('pickupServices')
              ? (_json['pickupServices'] as core.List)
                  .map((value) => PickupServicesPickupService.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (pickupServices != null) 'pickupServices': pickupServices!,
      };
}

class ShippingsettingsListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#shippingsettingsListResponse`".
  core.String? kind;

  /// The token for the retrieval of the next page of shipping settings.
  core.String? nextPageToken;
  core.List<ShippingSettings>? resources;

  ShippingsettingsListResponse({
    this.kind,
    this.nextPageToken,
    this.resources,
  });

  ShippingsettingsListResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => ShippingSettings.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resources != null) 'resources': resources!,
      };
}

/// Response message for GetShoppingAdsProgramStatus.
class ShoppingAdsProgramStatus {
  /// Status of the program in each region.
  ///
  /// Regions with the same status and review eligibility are grouped together
  /// in `regionCodes`.
  core.List<ShoppingAdsProgramStatusRegionStatus>? regionStatuses;

  /// If program is successfully onboarded for at least one region.
  /// Possible string values are:
  /// - "PROGRAM_STATE_UNSPECIFIED" : State is not known.
  /// - "ONBOARDED" : Program is onboarded for at least one country.
  /// - "NOT_ONBOARDED" : Program is not onboarded for any country.
  core.String? state;

  ShoppingAdsProgramStatus({
    this.regionStatuses,
    this.state,
  });

  ShoppingAdsProgramStatus.fromJson(core.Map _json)
      : this(
          regionStatuses: _json.containsKey('regionStatuses')
              ? (_json['regionStatuses'] as core.List)
                  .map((value) => ShoppingAdsProgramStatusRegionStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (regionStatuses != null) 'regionStatuses': regionStatuses!,
        if (state != null) 'state': state!,
      };
}

/// Status of program and region.
class ShoppingAdsProgramStatusRegionStatus {
  /// Date by which `eligibility_status` will go from `WARNING` to
  /// `DISAPPROVED`.
  ///
  /// It will be present when `eligibility_status` is `WARNING`. Date will be
  /// provided in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format i.e.
  /// YYYY-MM-DD
  core.String? disapprovalDate;

  /// Eligibility status of the Shopping Ads program.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is not known.
  /// - "APPROVED" : If the account has no issues and review is completed
  /// successfully.
  /// - "DISAPPROVED" : There are one or more issues that needs to be resolved
  /// for account to be active for the program. Detailed list of account issues
  /// are available in
  /// [accountstatuses](https://developers.google.com/shopping-content/reference/rest/v2.1/accountstatuses)
  /// API.
  /// - "WARNING" : If account has issues but offers are servable. Some of the
  /// issue can make account DISAPPROVED after a certain deadline.
  /// - "UNDER_REVIEW" : Account is under review.
  /// - "PENDING_REVIEW" : Account is waiting for review to start.
  /// - "ONBOARDING" : Program is currently onboarding.
  core.String? eligibilityStatus;

  /// Reason if a program in a given country is not eligible for review.
  ///
  /// Populated only if `review_eligibility_status` is `INELIGIBLE`.
  core.String? ineligibilityReason;

  /// The two-letter \[ISO 3166-1
  /// alpha-2\](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) codes for all
  /// the regions with the same `eligibilityStatus` and `reviewEligibility`.
  core.List<core.String>? regionCodes;

  /// If a program in a given country is eligible for review.
  ///
  /// It will be present only if eligibility status is `DISAPPROVED`.
  /// Possible string values are:
  /// - "REVIEW_ELIGIBILITY_UNSPECIFIED" : Review eligibility state is unknown.
  /// - "ELIGIBLE" : Account for a region code is eligible for review.
  /// - "INELIGIBLE" : Account for a region code is not eligible for review.
  core.String? reviewEligibilityStatus;

  /// These issues will be evaluated in review process.
  ///
  /// Fix all the issues before requesting the review.
  core.List<core.String>? reviewIssues;

  ShoppingAdsProgramStatusRegionStatus({
    this.disapprovalDate,
    this.eligibilityStatus,
    this.ineligibilityReason,
    this.regionCodes,
    this.reviewEligibilityStatus,
    this.reviewIssues,
  });

  ShoppingAdsProgramStatusRegionStatus.fromJson(core.Map _json)
      : this(
          disapprovalDate: _json.containsKey('disapprovalDate')
              ? _json['disapprovalDate'] as core.String
              : null,
          eligibilityStatus: _json.containsKey('eligibilityStatus')
              ? _json['eligibilityStatus'] as core.String
              : null,
          ineligibilityReason: _json.containsKey('ineligibilityReason')
              ? _json['ineligibilityReason'] as core.String
              : null,
          regionCodes: _json.containsKey('regionCodes')
              ? (_json['regionCodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          reviewEligibilityStatus: _json.containsKey('reviewEligibilityStatus')
              ? _json['reviewEligibilityStatus'] as core.String
              : null,
          reviewIssues: _json.containsKey('reviewIssues')
              ? (_json['reviewIssues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disapprovalDate != null) 'disapprovalDate': disapprovalDate!,
        if (eligibilityStatus != null) 'eligibilityStatus': eligibilityStatus!,
        if (ineligibilityReason != null)
          'ineligibilityReason': ineligibilityReason!,
        if (regionCodes != null) 'regionCodes': regionCodes!,
        if (reviewEligibilityStatus != null)
          'reviewEligibilityStatus': reviewEligibilityStatus!,
        if (reviewIssues != null) 'reviewIssues': reviewIssues!,
      };
}

class Table {
  /// Headers of the table's columns.
  ///
  /// Optional: if not set then the table has only one dimension.
  Headers? columnHeaders;

  /// Name of the table.
  ///
  /// Required for subtables, ignored for the main table.
  core.String? name;

  /// Headers of the table's rows.
  ///
  /// Required.
  Headers? rowHeaders;

  /// The list of rows that constitute the table.
  ///
  /// Must have the same length as `rowHeaders`. Required.
  core.List<Row>? rows;

  Table({
    this.columnHeaders,
    this.name,
    this.rowHeaders,
    this.rows,
  });

  Table.fromJson(core.Map _json)
      : this(
          columnHeaders: _json.containsKey('columnHeaders')
              ? Headers.fromJson(
                  _json['columnHeaders'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          rowHeaders: _json.containsKey('rowHeaders')
              ? Headers.fromJson(
                  _json['rowHeaders'] as core.Map<core.String, core.dynamic>)
              : null,
          rows: _json.containsKey('rows')
              ? (_json['rows'] as core.List)
                  .map((value) => Row.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnHeaders != null) 'columnHeaders': columnHeaders!,
        if (name != null) 'name': name!,
        if (rowHeaders != null) 'rowHeaders': rowHeaders!,
        if (rows != null) 'rows': rows!,
      };
}

class TestOrder {
  /// Overrides the predefined delivery details if provided.
  TestOrderDeliveryDetails? deliveryDetails;

  /// Whether the orderinvoices service should support this order.
  core.bool? enableOrderinvoices;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#testOrder`"
  core.String? kind;

  /// Line items that are ordered.
  ///
  /// At least one line item must be provided.
  ///
  /// Required.
  core.List<TestOrderLineItem>? lineItems;

  /// Restricted.
  ///
  /// Do not use.
  core.String? notificationMode;

  /// Overrides the predefined pickup details if provided.
  TestOrderPickupDetails? pickupDetails;

  /// The billing address.
  ///
  /// Acceptable values are: - "`dwight`" - "`jim`" - "`pam`"
  ///
  /// Required.
  core.String? predefinedBillingAddress;

  /// Identifier of one of the predefined delivery addresses for the delivery.
  ///
  /// Acceptable values are: - "`dwight`" - "`jim`" - "`pam`"
  ///
  /// Required.
  core.String? predefinedDeliveryAddress;

  /// Email address of the customer.
  ///
  /// Acceptable values are: - "`pog.dwight.schrute@gmail.com`" -
  /// "`pog.jim.halpert@gmail.com`" - "`penpog.pam.beesly@gmail.comding`"
  ///
  /// Required.
  core.String? predefinedEmail;

  /// Identifier of one of the predefined pickup details.
  ///
  /// Required for orders containing line items with shipping type `pickup`.
  /// Acceptable values are: - "`dwight`" - "`jim`" - "`pam`"
  core.String? predefinedPickupDetails;

  /// Promotions associated with the order.
  core.List<OrderPromotion>? promotions;

  /// The price of shipping for all items.
  ///
  /// Shipping tax is automatically calculated for orders where marketplace
  /// facilitator tax laws are applicable. Otherwise, tax settings from Merchant
  /// Center are applied. Note that shipping is not taxed in certain states.
  ///
  /// Required.
  Price? shippingCost;

  /// The requested shipping option.
  ///
  /// Acceptable values are: - "`economy`" - "`expedited`" - "`oneDay`" -
  /// "`sameDay`" - "`standard`" - "`twoDay`"
  ///
  /// Required.
  core.String? shippingOption;

  TestOrder({
    this.deliveryDetails,
    this.enableOrderinvoices,
    this.kind,
    this.lineItems,
    this.notificationMode,
    this.pickupDetails,
    this.predefinedBillingAddress,
    this.predefinedDeliveryAddress,
    this.predefinedEmail,
    this.predefinedPickupDetails,
    this.promotions,
    this.shippingCost,
    this.shippingOption,
  });

  TestOrder.fromJson(core.Map _json)
      : this(
          deliveryDetails: _json.containsKey('deliveryDetails')
              ? TestOrderDeliveryDetails.fromJson(_json['deliveryDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          enableOrderinvoices: _json.containsKey('enableOrderinvoices')
              ? _json['enableOrderinvoices'] as core.bool
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          lineItems: _json.containsKey('lineItems')
              ? (_json['lineItems'] as core.List)
                  .map((value) => TestOrderLineItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          notificationMode: _json.containsKey('notificationMode')
              ? _json['notificationMode'] as core.String
              : null,
          pickupDetails: _json.containsKey('pickupDetails')
              ? TestOrderPickupDetails.fromJson(
                  _json['pickupDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          predefinedBillingAddress:
              _json.containsKey('predefinedBillingAddress')
                  ? _json['predefinedBillingAddress'] as core.String
                  : null,
          predefinedDeliveryAddress:
              _json.containsKey('predefinedDeliveryAddress')
                  ? _json['predefinedDeliveryAddress'] as core.String
                  : null,
          predefinedEmail: _json.containsKey('predefinedEmail')
              ? _json['predefinedEmail'] as core.String
              : null,
          predefinedPickupDetails: _json.containsKey('predefinedPickupDetails')
              ? _json['predefinedPickupDetails'] as core.String
              : null,
          promotions: _json.containsKey('promotions')
              ? (_json['promotions'] as core.List)
                  .map((value) => OrderPromotion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shippingCost: _json.containsKey('shippingCost')
              ? Price.fromJson(
                  _json['shippingCost'] as core.Map<core.String, core.dynamic>)
              : null,
          shippingOption: _json.containsKey('shippingOption')
              ? _json['shippingOption'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deliveryDetails != null) 'deliveryDetails': deliveryDetails!,
        if (enableOrderinvoices != null)
          'enableOrderinvoices': enableOrderinvoices!,
        if (kind != null) 'kind': kind!,
        if (lineItems != null) 'lineItems': lineItems!,
        if (notificationMode != null) 'notificationMode': notificationMode!,
        if (pickupDetails != null) 'pickupDetails': pickupDetails!,
        if (predefinedBillingAddress != null)
          'predefinedBillingAddress': predefinedBillingAddress!,
        if (predefinedDeliveryAddress != null)
          'predefinedDeliveryAddress': predefinedDeliveryAddress!,
        if (predefinedEmail != null) 'predefinedEmail': predefinedEmail!,
        if (predefinedPickupDetails != null)
          'predefinedPickupDetails': predefinedPickupDetails!,
        if (promotions != null) 'promotions': promotions!,
        if (shippingCost != null) 'shippingCost': shippingCost!,
        if (shippingOption != null) 'shippingOption': shippingOption!,
      };
}

typedef TestOrderAddress = $OrderAddress;

class TestOrderDeliveryDetails {
  /// The delivery address
  TestOrderAddress? address;

  /// Whether the order is scheduled delivery order.
  core.bool? isScheduledDelivery;

  /// The phone number of the person receiving the delivery.
  core.String? phoneNumber;

  TestOrderDeliveryDetails({
    this.address,
    this.isScheduledDelivery,
    this.phoneNumber,
  });

  TestOrderDeliveryDetails.fromJson(core.Map _json)
      : this(
          address: _json.containsKey('address')
              ? TestOrderAddress.fromJson(
                  _json['address'] as core.Map<core.String, core.dynamic>)
              : null,
          isScheduledDelivery: _json.containsKey('isScheduledDelivery')
              ? _json['isScheduledDelivery'] as core.bool
              : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (isScheduledDelivery != null)
          'isScheduledDelivery': isScheduledDelivery!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
      };
}

class TestOrderLineItem {
  /// Product data from the time of the order placement.
  ///
  /// Required.
  TestOrderLineItemProduct? product;

  /// Number of items ordered.
  ///
  /// Required.
  core.int? quantityOrdered;

  /// Details of the return policy for the line item.
  ///
  /// Required.
  OrderLineItemReturnInfo? returnInfo;

  /// Details of the requested shipping for the line item.
  ///
  /// Required.
  OrderLineItemShippingDetails? shippingDetails;

  TestOrderLineItem({
    this.product,
    this.quantityOrdered,
    this.returnInfo,
    this.shippingDetails,
  });

  TestOrderLineItem.fromJson(core.Map _json)
      : this(
          product: _json.containsKey('product')
              ? TestOrderLineItemProduct.fromJson(
                  _json['product'] as core.Map<core.String, core.dynamic>)
              : null,
          quantityOrdered: _json.containsKey('quantityOrdered')
              ? _json['quantityOrdered'] as core.int
              : null,
          returnInfo: _json.containsKey('returnInfo')
              ? OrderLineItemReturnInfo.fromJson(
                  _json['returnInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          shippingDetails: _json.containsKey('shippingDetails')
              ? OrderLineItemShippingDetails.fromJson(_json['shippingDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (product != null) 'product': product!,
        if (quantityOrdered != null) 'quantityOrdered': quantityOrdered!,
        if (returnInfo != null) 'returnInfo': returnInfo!,
        if (shippingDetails != null) 'shippingDetails': shippingDetails!,
      };
}

class TestOrderLineItemProduct {
  /// Brand of the item.
  ///
  /// Required.
  core.String? brand;

  /// Condition or state of the item.
  ///
  /// Acceptable values are: - "`new`"
  ///
  /// Required.
  core.String? condition;

  /// The two-letter ISO 639-1 language code for the item.
  ///
  /// Acceptable values are: - "`en`" - "`fr`"
  ///
  /// Required.
  core.String? contentLanguage;

  /// Fees for the item.
  ///
  /// Optional.
  core.List<OrderLineItemProductFee>? fees;

  /// Global Trade Item Number (GTIN) of the item.
  ///
  /// Optional.
  core.String? gtin;

  /// URL of an image of the item.
  ///
  /// Required.
  core.String? imageLink;

  /// Shared identifier for all variants of the same product.
  ///
  /// Optional.
  core.String? itemGroupId;

  /// Manufacturer Part Number (MPN) of the item.
  ///
  /// Optional.
  core.String? mpn;

  /// An identifier of the item.
  ///
  /// Required.
  core.String? offerId;

  /// The price for the product.
  ///
  /// Tax is automatically calculated for orders where marketplace facilitator
  /// tax laws are applicable. Otherwise, tax settings from Merchant Center are
  /// applied.
  ///
  /// Required.
  Price? price;

  /// The CLDR territory // code of the target country of the product.
  ///
  /// Required.
  core.String? targetCountry;

  /// The title of the product.
  ///
  /// Required.
  core.String? title;

  /// Variant attributes for the item.
  ///
  /// Optional.
  core.List<OrderLineItemProductVariantAttribute>? variantAttributes;

  TestOrderLineItemProduct({
    this.brand,
    this.condition,
    this.contentLanguage,
    this.fees,
    this.gtin,
    this.imageLink,
    this.itemGroupId,
    this.mpn,
    this.offerId,
    this.price,
    this.targetCountry,
    this.title,
    this.variantAttributes,
  });

  TestOrderLineItemProduct.fromJson(core.Map _json)
      : this(
          brand:
              _json.containsKey('brand') ? _json['brand'] as core.String : null,
          condition: _json.containsKey('condition')
              ? _json['condition'] as core.String
              : null,
          contentLanguage: _json.containsKey('contentLanguage')
              ? _json['contentLanguage'] as core.String
              : null,
          fees: _json.containsKey('fees')
              ? (_json['fees'] as core.List)
                  .map((value) => OrderLineItemProductFee.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          gtin: _json.containsKey('gtin') ? _json['gtin'] as core.String : null,
          imageLink: _json.containsKey('imageLink')
              ? _json['imageLink'] as core.String
              : null,
          itemGroupId: _json.containsKey('itemGroupId')
              ? _json['itemGroupId'] as core.String
              : null,
          mpn: _json.containsKey('mpn') ? _json['mpn'] as core.String : null,
          offerId: _json.containsKey('offerId')
              ? _json['offerId'] as core.String
              : null,
          price: _json.containsKey('price')
              ? Price.fromJson(
                  _json['price'] as core.Map<core.String, core.dynamic>)
              : null,
          targetCountry: _json.containsKey('targetCountry')
              ? _json['targetCountry'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          variantAttributes: _json.containsKey('variantAttributes')
              ? (_json['variantAttributes'] as core.List)
                  .map((value) => OrderLineItemProductVariantAttribute.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (brand != null) 'brand': brand!,
        if (condition != null) 'condition': condition!,
        if (contentLanguage != null) 'contentLanguage': contentLanguage!,
        if (fees != null) 'fees': fees!,
        if (gtin != null) 'gtin': gtin!,
        if (imageLink != null) 'imageLink': imageLink!,
        if (itemGroupId != null) 'itemGroupId': itemGroupId!,
        if (mpn != null) 'mpn': mpn!,
        if (offerId != null) 'offerId': offerId!,
        if (price != null) 'price': price!,
        if (targetCountry != null) 'targetCountry': targetCountry!,
        if (title != null) 'title': title!,
        if (variantAttributes != null) 'variantAttributes': variantAttributes!,
      };
}

class TestOrderPickupDetails {
  /// Code of the location defined by provider or merchant.
  ///
  /// Required.
  core.String? locationCode;

  /// Pickup location address.
  ///
  /// Required.
  TestOrderAddress? pickupLocationAddress;

  /// Pickup location type.
  ///
  /// Acceptable values are: - "`locker`" - "`store`" - "`curbside`"
  core.String? pickupLocationType;

  /// all pickup persons set by users.
  ///
  /// Required.
  core.List<TestOrderPickupDetailsPickupPerson>? pickupPersons;

  TestOrderPickupDetails({
    this.locationCode,
    this.pickupLocationAddress,
    this.pickupLocationType,
    this.pickupPersons,
  });

  TestOrderPickupDetails.fromJson(core.Map _json)
      : this(
          locationCode: _json.containsKey('locationCode')
              ? _json['locationCode'] as core.String
              : null,
          pickupLocationAddress: _json.containsKey('pickupLocationAddress')
              ? TestOrderAddress.fromJson(_json['pickupLocationAddress']
                  as core.Map<core.String, core.dynamic>)
              : null,
          pickupLocationType: _json.containsKey('pickupLocationType')
              ? _json['pickupLocationType'] as core.String
              : null,
          pickupPersons: _json.containsKey('pickupPersons')
              ? (_json['pickupPersons'] as core.List)
                  .map((value) => TestOrderPickupDetailsPickupPerson.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locationCode != null) 'locationCode': locationCode!,
        if (pickupLocationAddress != null)
          'pickupLocationAddress': pickupLocationAddress!,
        if (pickupLocationType != null)
          'pickupLocationType': pickupLocationType!,
        if (pickupPersons != null) 'pickupPersons': pickupPersons!,
      };
}

class TestOrderPickupDetailsPickupPerson {
  /// Full name of the pickup person.
  ///
  /// Required.
  core.String? name;

  /// The phone number of the person picking up the items.
  ///
  /// Required.
  core.String? phoneNumber;

  TestOrderPickupDetailsPickupPerson({
    this.name,
    this.phoneNumber,
  });

  TestOrderPickupDetailsPickupPerson.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
      };
}

/// Represents a time zone from the
/// [IANA Time Zone Database](https://www.iana.org/time-zones).
typedef TimeZone = $TimeZone;

class TransitTable {
  /// A list of postal group names.
  ///
  /// The last value can be `"all other locations"`. Example: `["zone 1", "zone
  /// 2", "all other locations"]`. The referred postal code groups must match
  /// the delivery country of the service.
  core.List<core.String>? postalCodeGroupNames;
  core.List<TransitTableTransitTimeRow>? rows;

  /// A list of transit time labels.
  ///
  /// The last value can be `"all other labels"`. Example: `["food",
  /// "electronics", "all other labels"]`.
  core.List<core.String>? transitTimeLabels;

  TransitTable({
    this.postalCodeGroupNames,
    this.rows,
    this.transitTimeLabels,
  });

  TransitTable.fromJson(core.Map _json)
      : this(
          postalCodeGroupNames: _json.containsKey('postalCodeGroupNames')
              ? (_json['postalCodeGroupNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          rows: _json.containsKey('rows')
              ? (_json['rows'] as core.List)
                  .map((value) => TransitTableTransitTimeRow.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          transitTimeLabels: _json.containsKey('transitTimeLabels')
              ? (_json['transitTimeLabels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (postalCodeGroupNames != null)
          'postalCodeGroupNames': postalCodeGroupNames!,
        if (rows != null) 'rows': rows!,
        if (transitTimeLabels != null) 'transitTimeLabels': transitTimeLabels!,
      };
}

class TransitTableTransitTimeRow {
  core.List<TransitTableTransitTimeRowTransitTimeValue>? values;

  TransitTableTransitTimeRow({
    this.values,
  });

  TransitTableTransitTimeRow.fromJson(core.Map _json)
      : this(
          values: _json.containsKey('values')
              ? (_json['values'] as core.List)
                  .map((value) =>
                      TransitTableTransitTimeRowTransitTimeValue.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

class TransitTableTransitTimeRowTransitTimeValue {
  /// Must be greater than or equal to `minTransitTimeInDays`.
  core.int? maxTransitTimeInDays;

  /// Transit time range (min-max) in business days.
  ///
  /// 0 means same day delivery, 1 means next day delivery.
  core.int? minTransitTimeInDays;

  TransitTableTransitTimeRowTransitTimeValue({
    this.maxTransitTimeInDays,
    this.minTransitTimeInDays,
  });

  TransitTableTransitTimeRowTransitTimeValue.fromJson(core.Map _json)
      : this(
          maxTransitTimeInDays: _json.containsKey('maxTransitTimeInDays')
              ? _json['maxTransitTimeInDays'] as core.int
              : null,
          minTransitTimeInDays: _json.containsKey('minTransitTimeInDays')
              ? _json['minTransitTimeInDays'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxTransitTimeInDays != null)
          'maxTransitTimeInDays': maxTransitTimeInDays!,
        if (minTransitTimeInDays != null)
          'minTransitTimeInDays': minTransitTimeInDays!,
      };
}

class UnitInvoice {
  /// Additional charges for a unit, e.g. shipping costs.
  core.List<UnitInvoiceAdditionalCharge>? additionalCharges;

  /// Pre-tax or post-tax price of one unit depending on the locality of the
  /// order.
  ///
  /// *Note:* Invoicing works on a per unit basis. The `unitPrice` is the price
  /// of a single unit, and will be multiplied by the number of entries in
  /// `shipmentUnitId`.
  ///
  /// Required.
  Price? unitPrice;

  /// Tax amounts to apply to the unit price.
  core.List<UnitInvoiceTaxLine>? unitPriceTaxes;

  UnitInvoice({
    this.additionalCharges,
    this.unitPrice,
    this.unitPriceTaxes,
  });

  UnitInvoice.fromJson(core.Map _json)
      : this(
          additionalCharges: _json.containsKey('additionalCharges')
              ? (_json['additionalCharges'] as core.List)
                  .map((value) => UnitInvoiceAdditionalCharge.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unitPrice: _json.containsKey('unitPrice')
              ? Price.fromJson(
                  _json['unitPrice'] as core.Map<core.String, core.dynamic>)
              : null,
          unitPriceTaxes: _json.containsKey('unitPriceTaxes')
              ? (_json['unitPriceTaxes'] as core.List)
                  .map((value) => UnitInvoiceTaxLine.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalCharges != null) 'additionalCharges': additionalCharges!,
        if (unitPrice != null) 'unitPrice': unitPrice!,
        if (unitPriceTaxes != null) 'unitPriceTaxes': unitPriceTaxes!,
      };
}

class UnitInvoiceAdditionalCharge {
  /// Amount of the additional charge per unit.
  ///
  /// *Note:* Invoicing works on a per unit bases. The `additionalChargeAmount`
  /// is the amount charged per unit, and will be multiplied by the number of
  /// entries in `shipmentUnitID`.
  ///
  /// Required.
  Amount? additionalChargeAmount;

  /// Type of the additional charge.
  ///
  /// Acceptable values are: - "`shipping`"
  ///
  /// Required.
  core.String? type;

  UnitInvoiceAdditionalCharge({
    this.additionalChargeAmount,
    this.type,
  });

  UnitInvoiceAdditionalCharge.fromJson(core.Map _json)
      : this(
          additionalChargeAmount: _json.containsKey('additionalChargeAmount')
              ? Amount.fromJson(_json['additionalChargeAmount']
                  as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalChargeAmount != null)
          'additionalChargeAmount': additionalChargeAmount!,
        if (type != null) 'type': type!,
      };
}

class UnitInvoiceTaxLine {
  /// Tax amount for the tax type.
  ///
  /// Required.
  Price? taxAmount;

  /// Optional name of the tax type.
  ///
  /// This should only be provided if `taxType` is `otherFeeTax`.
  core.String? taxName;

  /// Type of the tax.
  ///
  /// Acceptable values are: - "`otherFee`" - "`otherFeeTax`" - "`sales`"
  ///
  /// Required.
  core.String? taxType;

  UnitInvoiceTaxLine({
    this.taxAmount,
    this.taxName,
    this.taxType,
  });

  UnitInvoiceTaxLine.fromJson(core.Map _json)
      : this(
          taxAmount: _json.containsKey('taxAmount')
              ? Price.fromJson(
                  _json['taxAmount'] as core.Map<core.String, core.dynamic>)
              : null,
          taxName: _json.containsKey('taxName')
              ? _json['taxName'] as core.String
              : null,
          taxType: _json.containsKey('taxType')
              ? _json['taxType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (taxAmount != null) 'taxAmount': taxAmount!,
        if (taxName != null) 'taxName': taxName!,
        if (taxType != null) 'taxType': taxType!,
      };
}

/// The single value of a rate group or the value of a rate group table's cell.
///
/// Exactly one of `noShipping`, `flatRate`, `pricePercentage`,
/// `carrierRateName`, `subtableName` must be set.
class Value {
  /// The name of a carrier rate referring to a carrier rate defined in the same
  /// rate group.
  ///
  /// Can only be set if all other fields are not set.
  core.String? carrierRateName;

  /// A flat rate.
  ///
  /// Can only be set if all other fields are not set.
  Price? flatRate;

  /// If true, then the product can't ship.
  ///
  /// Must be true when set, can only be set if all other fields are not set.
  core.bool? noShipping;

  /// A percentage of the price represented as a number in decimal notation
  /// (e.g., `"5.4"`).
  ///
  /// Can only be set if all other fields are not set.
  core.String? pricePercentage;

  /// The name of a subtable.
  ///
  /// Can only be set in table cells (i.e., not for single values), and only if
  /// all other fields are not set.
  core.String? subtableName;

  Value({
    this.carrierRateName,
    this.flatRate,
    this.noShipping,
    this.pricePercentage,
    this.subtableName,
  });

  Value.fromJson(core.Map _json)
      : this(
          carrierRateName: _json.containsKey('carrierRateName')
              ? _json['carrierRateName'] as core.String
              : null,
          flatRate: _json.containsKey('flatRate')
              ? Price.fromJson(
                  _json['flatRate'] as core.Map<core.String, core.dynamic>)
              : null,
          noShipping: _json.containsKey('noShipping')
              ? _json['noShipping'] as core.bool
              : null,
          pricePercentage: _json.containsKey('pricePercentage')
              ? _json['pricePercentage'] as core.String
              : null,
          subtableName: _json.containsKey('subtableName')
              ? _json['subtableName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (carrierRateName != null) 'carrierRateName': carrierRateName!,
        if (flatRate != null) 'flatRate': flatRate!,
        if (noShipping != null) 'noShipping': noShipping!,
        if (pricePercentage != null) 'pricePercentage': pricePercentage!,
        if (subtableName != null) 'subtableName': subtableName!,
      };
}

/// Request message for the VerifyPhoneNumber method.
class VerifyPhoneNumberRequest {
  /// Verification method used to receive verification code.
  /// Possible string values are:
  /// - "PHONE_VERIFICATION_METHOD_UNSPECIFIED" : Unknown method.
  /// - "SMS" : Receive verification code by SMS.
  /// - "PHONE_CALL" : Receive verification code by phone call.
  core.String? phoneVerificationMethod;

  /// The verification code that was sent to the phone number for validation.
  core.String? verificationCode;

  /// The verification ID returned by `requestphoneverification`.
  core.String? verificationId;

  VerifyPhoneNumberRequest({
    this.phoneVerificationMethod,
    this.verificationCode,
    this.verificationId,
  });

  VerifyPhoneNumberRequest.fromJson(core.Map _json)
      : this(
          phoneVerificationMethod: _json.containsKey('phoneVerificationMethod')
              ? _json['phoneVerificationMethod'] as core.String
              : null,
          verificationCode: _json.containsKey('verificationCode')
              ? _json['verificationCode'] as core.String
              : null,
          verificationId: _json.containsKey('verificationId')
              ? _json['verificationId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (phoneVerificationMethod != null)
          'phoneVerificationMethod': phoneVerificationMethod!,
        if (verificationCode != null) 'verificationCode': verificationCode!,
        if (verificationId != null) 'verificationId': verificationId!,
      };
}

/// Response message for the VerifyPhoneNumber method.
class VerifyPhoneNumberResponse {
  /// Verified phone number if verification is successful.
  ///
  /// This phone number can only be replaced by another verified phone number.
  core.String? verifiedPhoneNumber;

  VerifyPhoneNumberResponse({
    this.verifiedPhoneNumber,
  });

  VerifyPhoneNumberResponse.fromJson(core.Map _json)
      : this(
          verifiedPhoneNumber: _json.containsKey('verifiedPhoneNumber')
              ? _json['verifiedPhoneNumber'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (verifiedPhoneNumber != null)
          'verifiedPhoneNumber': verifiedPhoneNumber!,
      };
}

/// A fulfillment warehouse, which stores and handles inventory.
class Warehouse {
  /// Business days of the warehouse.
  ///
  /// If not set, will be Monday to Friday by default.
  BusinessDayConfig? businessDayConfig;

  /// The latest time of day that an order can be accepted and begin processing.
  ///
  /// Later orders will be processed in the next day. The time is based on the
  /// warehouse postal code.
  ///
  /// Required.
  WarehouseCutoffTime? cutoffTime;

  /// The number of days it takes for this warehouse to pack up and ship an
  /// item.
  ///
  /// This is on the warehouse level, but can be overridden on the offer level
  /// based on the attributes of an item.
  ///
  /// Required.
  core.String? handlingDays;

  /// The name of the warehouse.
  ///
  /// Must be unique within account.
  ///
  /// Required.
  core.String? name;

  /// Shipping address of the warehouse.
  ///
  /// Required.
  Address? shippingAddress;

  Warehouse({
    this.businessDayConfig,
    this.cutoffTime,
    this.handlingDays,
    this.name,
    this.shippingAddress,
  });

  Warehouse.fromJson(core.Map _json)
      : this(
          businessDayConfig: _json.containsKey('businessDayConfig')
              ? BusinessDayConfig.fromJson(_json['businessDayConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          cutoffTime: _json.containsKey('cutoffTime')
              ? WarehouseCutoffTime.fromJson(
                  _json['cutoffTime'] as core.Map<core.String, core.dynamic>)
              : null,
          handlingDays: _json.containsKey('handlingDays')
              ? _json['handlingDays'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          shippingAddress: _json.containsKey('shippingAddress')
              ? Address.fromJson(_json['shippingAddress']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (businessDayConfig != null) 'businessDayConfig': businessDayConfig!,
        if (cutoffTime != null) 'cutoffTime': cutoffTime!,
        if (handlingDays != null) 'handlingDays': handlingDays!,
        if (name != null) 'name': name!,
        if (shippingAddress != null) 'shippingAddress': shippingAddress!,
      };
}

class WarehouseBasedDeliveryTime {
  /// Carrier, such as `"UPS"` or `"Fedex"`.
  ///
  /// The list of supported carriers can be retrieved via the
  /// `listSupportedCarriers` method.
  ///
  /// Required.
  core.String? carrier;

  /// Carrier service, such as `"ground"` or `"2 days"`.
  ///
  /// The list of supported services for a carrier can be retrieved via the
  /// `listSupportedCarriers` method. The name of the service must be in the
  /// eddSupportedServices list.
  ///
  /// Required.
  core.String? carrierService;

  /// Shipping origin's state.
  core.String? originAdministrativeArea;

  /// Shipping origin's city.
  core.String? originCity;

  /// Shipping origin's country represented as a
  /// [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml).
  core.String? originCountry;

  /// Shipping origin.
  core.String? originPostalCode;

  /// Shipping origin's street address.
  core.String? originStreetAddress;

  /// The name of the warehouse.
  ///
  /// Warehouse name need to be matched with name. If warehouseName is set, the
  /// below fields will be ignored. The warehouse info will be read from
  /// warehouse.
  core.String? warehouseName;

  WarehouseBasedDeliveryTime({
    this.carrier,
    this.carrierService,
    this.originAdministrativeArea,
    this.originCity,
    this.originCountry,
    this.originPostalCode,
    this.originStreetAddress,
    this.warehouseName,
  });

  WarehouseBasedDeliveryTime.fromJson(core.Map _json)
      : this(
          carrier: _json.containsKey('carrier')
              ? _json['carrier'] as core.String
              : null,
          carrierService: _json.containsKey('carrierService')
              ? _json['carrierService'] as core.String
              : null,
          originAdministrativeArea:
              _json.containsKey('originAdministrativeArea')
                  ? _json['originAdministrativeArea'] as core.String
                  : null,
          originCity: _json.containsKey('originCity')
              ? _json['originCity'] as core.String
              : null,
          originCountry: _json.containsKey('originCountry')
              ? _json['originCountry'] as core.String
              : null,
          originPostalCode: _json.containsKey('originPostalCode')
              ? _json['originPostalCode'] as core.String
              : null,
          originStreetAddress: _json.containsKey('originStreetAddress')
              ? _json['originStreetAddress'] as core.String
              : null,
          warehouseName: _json.containsKey('warehouseName')
              ? _json['warehouseName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (carrier != null) 'carrier': carrier!,
        if (carrierService != null) 'carrierService': carrierService!,
        if (originAdministrativeArea != null)
          'originAdministrativeArea': originAdministrativeArea!,
        if (originCity != null) 'originCity': originCity!,
        if (originCountry != null) 'originCountry': originCountry!,
        if (originPostalCode != null) 'originPostalCode': originPostalCode!,
        if (originStreetAddress != null)
          'originStreetAddress': originStreetAddress!,
        if (warehouseName != null) 'warehouseName': warehouseName!,
      };
}

class WarehouseCutoffTime {
  /// Hour (24-hour clock) of the cutoff time until which an order has to be
  /// placed to be processed in the same day by the warehouse.
  ///
  /// Hour is based on the timezone of warehouse.
  ///
  /// Required.
  core.int? hour;

  /// Minute of the cutoff time until which an order has to be placed to be
  /// processed in the same day by the warehouse.
  ///
  /// Minute is based on the timezone of warehouse.
  ///
  /// Required.
  core.int? minute;

  WarehouseCutoffTime({
    this.hour,
    this.minute,
  });

  WarehouseCutoffTime.fromJson(core.Map _json)
      : this(
          hour: _json.containsKey('hour') ? _json['hour'] as core.int : null,
          minute:
              _json.containsKey('minute') ? _json['minute'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hour != null) 'hour': hour!,
        if (minute != null) 'minute': minute!,
      };
}

class Weight {
  /// The weight unit.
  ///
  /// Acceptable values are: - "`kg`" - "`lb`"
  ///
  /// Required.
  core.String? unit;

  /// The weight represented as a number.
  ///
  /// The weight can have a maximum precision of four decimal places.
  ///
  /// Required.
  core.String? value;

  Weight({
    this.unit,
    this.value,
  });

  Weight.fromJson(core.Map _json)
      : this(
          unit: _json.containsKey('unit') ? _json['unit'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (unit != null) 'unit': unit!,
        if (value != null) 'value': value!,
      };
}
