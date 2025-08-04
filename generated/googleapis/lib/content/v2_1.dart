// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
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
/// - [CollectionsResource]
/// - [CollectionstatusesResource]
/// - [ConversionsourcesResource]
/// - [CssesResource]
/// - [DatafeedsResource]
/// - [DatafeedstatusesResource]
/// - [FreelistingsprogramResource]
///   - [FreelistingsprogramCheckoutsettingsResource]
/// - [LiasettingsResource]
/// - [LocalinventoryResource]
/// - [MerchantsupportResource]
/// - [OrdertrackingsignalsResource]
/// - [PosResource]
/// - [ProductdeliverytimeResource]
/// - [ProductsResource]
/// - [ProductstatusesResource]
/// - [PromotionsResource]
/// - [PubsubnotificationsettingsResource]
/// - [QuotasResource]
/// - [RecommendationsResource]
/// - [RegionalinventoryResource]
/// - [RegionsResource]
/// - [ReportsResource]
/// - [ReturnaddressResource]
/// - [ReturnpolicyResource]
/// - [ReturnpolicyonlineResource]
/// - [ShippingsettingsResource]
/// - [ShoppingadsprogramResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

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
  CollectionsResource get collections => CollectionsResource(_requester);
  CollectionstatusesResource get collectionstatuses =>
      CollectionstatusesResource(_requester);
  ConversionsourcesResource get conversionsources =>
      ConversionsourcesResource(_requester);
  CssesResource get csses => CssesResource(_requester);
  DatafeedsResource get datafeeds => DatafeedsResource(_requester);
  DatafeedstatusesResource get datafeedstatuses =>
      DatafeedstatusesResource(_requester);
  FreelistingsprogramResource get freelistingsprogram =>
      FreelistingsprogramResource(_requester);
  LiasettingsResource get liasettings => LiasettingsResource(_requester);
  LocalinventoryResource get localinventory =>
      LocalinventoryResource(_requester);
  MerchantsupportResource get merchantsupport =>
      MerchantsupportResource(_requester);
  OrdertrackingsignalsResource get ordertrackingsignals =>
      OrdertrackingsignalsResource(_requester);
  PosResource get pos => PosResource(_requester);
  ProductdeliverytimeResource get productdeliverytime =>
      ProductdeliverytimeResource(_requester);
  ProductsResource get products => ProductsResource(_requester);
  ProductstatusesResource get productstatuses =>
      ProductstatusesResource(_requester);
  PromotionsResource get promotions => PromotionsResource(_requester);
  PubsubnotificationsettingsResource get pubsubnotificationsettings =>
      PubsubnotificationsettingsResource(_requester);
  QuotasResource get quotas => QuotasResource(_requester);
  RecommendationsResource get recommendations =>
      RecommendationsResource(_requester);
  RegionalinventoryResource get regionalinventory =>
      RegionalinventoryResource(_requester);
  RegionsResource get regions => RegionsResource(_requester);
  ReportsResource get reports => ReportsResource(_requester);
  ReturnaddressResource get returnaddress => ReturnaddressResource(_requester);
  ReturnpolicyResource get returnpolicy => ReturnpolicyResource(_requester);
  ReturnpolicyonlineResource get returnpolicyonline =>
      ReturnpolicyonlineResource(_requester);
  ShippingsettingsResource get shippingsettings =>
      ShippingsettingsResource(_requester);
  ShoppingadsprogramResource get shoppingadsprogram =>
      ShoppingadsprogramResource(_requester);

  ShoppingContentApi(
    http.Client client, {
    core.String rootUrl = 'https://shoppingcontent.googleapis.com/',
    core.String servicePath = 'content/v2.1/',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'accounts/authinfo';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccountsAuthInfoResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Claims the website of a Merchant Center sub-account.
  ///
  /// Merchant accounts with approved third-party CSSs aren't required to claim
  /// a website.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. If this parameter is not
  /// the same as accountId, then this account must be a multi-client account
  /// and `accountId` must be the ID of a sub-account of this account.
  ///
  /// [accountId] - The ID of the account whose website is claimed.
  ///
  /// [overwrite] - Only available to selected merchants, for example
  /// multi-client accounts (MCAs) and their sub-accounts. When set to `True`,
  /// this option removes any existing claim on the requested website and
  /// replaces it with a claim from the account that makes the request.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (overwrite != null) 'overwrite': ['${overwrite}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/accounts/' +
        commons.escapeVariable('$accountId') +
        '/claimwebsite';

    final response_ = await _requester.request(
      url_,
      'POST',

      queryParams: queryParams_,
    );
    return AccountsClaimWebsiteResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'accounts/batch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AccountsCustomBatchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [force] - Option to delete sub-accounts with products. The default value
  /// is false.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/accounts/' +
        commons.escapeVariable('$accountId');

    await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,

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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/accounts/' +
        commons.escapeVariable('$accountId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Account.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/accounts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Account.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/accounts/' +
        commons.escapeVariable('$accountId') +
        '/link';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AccountsLinkResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (label != null) 'label': [label],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (name != null) 'name': [name],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/accounts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccountsListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/accounts/' +
        commons.escapeVariable('$accountId') +
        '/listlinks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccountsListLinksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/accounts/' +
        commons.escapeVariable('$accountId') +
        '/requestphoneverification';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RequestPhoneVerificationResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/accounts/' +
        commons.escapeVariable('$accountId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Account.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/accounts/' +
        commons.escapeVariable('$accountId') +
        '/updatelabels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AccountsUpdateLabelsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/accounts/' +
        commons.escapeVariable('$accountId') +
        '/verifyphonenumber';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return VerifyPhoneNumberResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'accounts/' + commons.escapeVariable('$accountId') + '/credentials';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AccountCredentials.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'accounts/' + commons.escapeVariable('$accountId') + '/labels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AccountLabel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'accounts/' +
        commons.escapeVariable('$accountId') +
        '/labels/' +
        commons.escapeVariable('$labelId');

    await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,

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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'accounts/' + commons.escapeVariable('$accountId') + '/labels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAccountLabelsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'accounts/' +
        commons.escapeVariable('$accountId') +
        '/labels/' +
        commons.escapeVariable('$labelId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return AccountLabel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'accounts/' + commons.escapeVariable('$accountId') + '/returncarrier';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AccountReturnCarrier.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'accounts/' +
        commons.escapeVariable('$accountId') +
        '/returncarrier/' +
        commons.escapeVariable('$carrierAccountId');

    await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,

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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'accounts/' + commons.escapeVariable('$accountId') + '/returncarrier';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAccountReturnCarrierResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'accounts/' +
        commons.escapeVariable('$accountId') +
        '/returncarrier/' +
        commons.escapeVariable('$carrierAccountId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return AccountReturnCarrier.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'accountstatuses/batch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AccountstatusesCustomBatchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (destinations != null) 'destinations': destinations,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/accountstatuses/' +
        commons.escapeVariable('$accountId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccountStatus.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (destinations != null) 'destinations': destinations,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (name != null) 'name': [name],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/accountstatuses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccountstatusesListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'accounttax/batch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AccounttaxCustomBatchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/accounttax/' +
        commons.escapeVariable('$accountId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccountTax.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/accounttax';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccounttaxListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/accounttax/' +
        commons.escapeVariable('$accountId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return AccountTax.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/collections';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Collection.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/collections/' +
        commons.escapeVariable('$collectionId');

    await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,

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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/collections/' +
        commons.escapeVariable('$collectionId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Collection.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/collections';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCollectionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/collectionstatuses/' +
        commons.escapeVariable('$collectionId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CollectionStatus.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/collectionstatuses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCollectionStatusesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ConversionsourcesResource {
  final commons.ApiRequester _requester;

  ConversionsourcesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new conversion source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account that owns the new
  /// conversion source.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConversionSource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConversionSource> create(
    ConversionSource request,
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/conversionsources';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ConversionSource.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Archives an existing conversion source.
  ///
  /// It will be recoverable for 30 days. This archiving behavior is not typical
  /// in the Content API and unique to this service.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account that owns the new
  /// conversion source.
  ///
  /// [conversionSourceId] - Required. The ID of the conversion source to be
  /// deleted.
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
    core.String conversionSourceId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/conversionsources/' +
        commons.escapeVariable('$conversionSourceId');

    await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,

      downloadOptions: null,
    );
  }

  /// Fetches a conversion source.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account that owns the new
  /// conversion source.
  ///
  /// [conversionSourceId] - Required. The REST ID of the collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConversionSource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConversionSource> get(
    core.String merchantId,
    core.String conversionSourceId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/conversionsources/' +
        commons.escapeVariable('$conversionSourceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ConversionSource.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the list of conversion sources the caller has access to.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account that owns the new
  /// conversion source.
  ///
  /// [pageSize] - The maximum number of conversion sources to return in a page.
  /// If no `page_size` is specified, `100` is used as the default value. The
  /// maximum value is `200`. Values above `200` will be coerced to `200`.
  /// Regardless of pagination, at most `200` conversion sources are returned in
  /// total.
  ///
  /// [pageToken] - Page token.
  ///
  /// [showDeleted] - If true, also returns archived conversion sources.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConversionSourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConversionSourcesResponse> list(
    core.String merchantId, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/conversionsources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConversionSourcesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates information of an existing conversion source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account that owns the new
  /// conversion source.
  ///
  /// [conversionSourceId] - Required. The ID of the conversion source to be
  /// updated.
  ///
  /// [updateMask] - Optional. List of fields being updated. The following
  /// fields can be updated: `attribution_settings`, `display_name`,
  /// `currency_code`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConversionSource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConversionSource> patch(
    ConversionSource request,
    core.String merchantId,
    core.String conversionSourceId, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/conversionsources/' +
        commons.escapeVariable('$conversionSourceId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ConversionSource.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Re-enables an archived conversion source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account that owns the new
  /// conversion source.
  ///
  /// [conversionSourceId] - Required. The ID of the conversion source to be
  /// undeleted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> undelete(
    UndeleteConversionSourceRequest request,
    core.String merchantId,
    core.String conversionSourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/conversionsources/' +
        commons.escapeVariable('$conversionSourceId') +
        ':undelete';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,

      downloadOptions: null,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$cssGroupId') +
        '/csses/' +
        commons.escapeVariable('$cssDomainId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Css.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$cssGroupId') + '/csses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCssesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$cssGroupId') +
        '/csses/' +
        commons.escapeVariable('$cssDomainId') +
        '/updatelabels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Css.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'datafeeds/batch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DatafeedsCustomBatchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/datafeeds/' +
        commons.escapeVariable('$datafeedId');

    await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,

      downloadOptions: null,
    );
  }

  /// Invokes a fetch for the datafeed in your Merchant Center account.
  ///
  /// If you need to call this method more than once per day, we recommend you
  /// use the
  /// [Products service](https://developers.google.com/shopping-content/reference/rest/v2.1/products)
  /// to update your product data.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/datafeeds/' +
        commons.escapeVariable('$datafeedId') +
        '/fetchNow';

    final response_ = await _requester.request(
      url_,
      'POST',

      queryParams: queryParams_,
    );
    return DatafeedsFetchNowResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/datafeeds/' +
        commons.escapeVariable('$datafeedId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Datafeed.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/datafeeds';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Datafeed.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/datafeeds';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DatafeedsListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/datafeeds/' +
        commons.escapeVariable('$datafeedId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Datafeed.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'datafeedstatuses/batch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DatafeedstatusesCustomBatchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [country] - Deprecated. Use `feedLabel` instead. The country to get the
  /// datafeed status for. If this parameter is provided then `language` must
  /// also be provided. Note that this parameter is required for feeds targeting
  /// multiple countries and languages, since a feed may have a different status
  /// for each target.
  ///
  /// [feedLabel] - The feed label to get the datafeed status for. If this
  /// parameter is provided then `language` must also be provided. Note that
  /// this parameter is required for feeds targeting multiple countries and
  /// languages, since a feed may have a different status for each target.
  ///
  /// [language] - The language to get the datafeed status for. If this
  /// parameter is provided then `country` must also be provided. Note that this
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
    core.String? feedLabel,
    core.String? language,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (country != null) 'country': [country],
      if (feedLabel != null) 'feedLabel': [feedLabel],
      if (language != null) 'language': [language],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/datafeedstatuses/' +
        commons.escapeVariable('$datafeedId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DatafeedStatus.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/datafeedstatuses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DatafeedstatusesListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FreelistingsprogramResource {
  final commons.ApiRequester _requester;

  FreelistingsprogramCheckoutsettingsResource get checkoutsettings =>
      FreelistingsprogramCheckoutsettingsResource(_requester);

  FreelistingsprogramResource(commons.ApiRequester client)
    : _requester = client;

  /// Retrieves the status and review eligibility for the free listing program.
  ///
  /// Returns errors and warnings if they require action to resolve, will become
  /// disapprovals, or impact impressions. Use `accountstatuses` to view all
  /// issues for an account.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/freelistingsprogram';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FreeListingsProgramStatus.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Requests a review of free listings in a specific region.
  ///
  /// This method deprecated. Use the `MerchantSupportService` to view product
  /// and account issues and request a review.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/freelistingsprogram/requestreview';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,

      downloadOptions: null,
    );
  }
}

class FreelistingsprogramCheckoutsettingsResource {
  final commons.ApiRequester _requester;

  FreelistingsprogramCheckoutsettingsResource(commons.ApiRequester client)
    : _requester = client;

  /// Deletes `Checkout` settings and unenrolls merchant from `Checkout`
  /// program.
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
  async.Future<void> delete(
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/freelistingsprogram/checkoutsettings';

    await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,

      downloadOptions: null,
    );
  }

  /// Gets Checkout settings for the given merchant.
  ///
  /// This includes information about review state, enrollment state and URL
  /// settings.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckoutSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckoutSettings> get(
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/freelistingsprogram/checkoutsettings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CheckoutSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Enrolls merchant in `Checkout` program.
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
  /// Completes with a [CheckoutSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckoutSettings> insert(
    InsertCheckoutSettingsRequest request,
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/freelistingsprogram/checkoutsettings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CheckoutSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'liasettings/batch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LiasettingsCustomBatchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/liasettings/' +
        commons.escapeVariable('$accountId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LiaSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the list of accessible Business Profiles.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. If this parameter is not
  /// the same as accountId, then this account must be a multi-client account
  /// and `accountId` must be the ID of a sub-account of this account.
  ///
  /// [accountId] - The ID of the account for which to retrieve accessible
  /// Business Profiles.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/liasettings/' +
        commons.escapeVariable('$accountId') +
        '/accessiblegmbaccounts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LiasettingsGetAccessibleGmbAccountsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/liasettings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LiasettingsListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'liasettings/posdataproviders';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LiasettingsListPosDataProvidersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Requests access to a specified Business Profile.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. If this parameter is not
  /// the same as accountId, then this account must be a multi-client account
  /// and `accountId` must be the ID of a sub-account of this account.
  ///
  /// [accountId] - The ID of the account for which Business Profile access is
  /// requested.
  ///
  /// [gmbEmail] - The email of the Business Profile.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'gmbEmail': [gmbEmail],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/liasettings/' +
        commons.escapeVariable('$accountId') +
        '/requestgmbaccess';

    final response_ = await _requester.request(
      url_,
      'POST',

      queryParams: queryParams_,
    );
    return LiasettingsRequestGmbAccessResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/liasettings/' +
        commons.escapeVariable('$accountId') +
        '/requestinventoryverification/' +
        commons.escapeVariable('$country');

    final response_ = await _requester.request(
      url_,
      'POST',

      queryParams: queryParams_,
    );
    return LiasettingsRequestInventoryVerificationResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the inventory verification contact for the specified country.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'country': [country],
      'language': [language],
      'contactName': [contactName],
      'contactEmail': [contactEmail],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/liasettings/' +
        commons.escapeVariable('$accountId') +
        '/setinventoryverificationcontact';

    final response_ = await _requester.request(
      url_,
      'POST',

      queryParams: queryParams_,
    );
    return LiasettingsSetInventoryVerificationContactResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the omnichannel experience for the specified country.
  ///
  /// Only supported for merchants whose POS data provider is trusted to enable
  /// the corresponding experience. For more context, see these help articles
  /// [about LFP](https://support.google.com/merchants/answer/7676652) and
  /// [how to get started](https://support.google.com/merchants/answer/7676578)
  /// with it.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The ID of the managing account. If this parameter is not
  /// the same as accountId, then this account must be a multi-client account
  /// and `accountId` must be the ID of a sub-account of this account.
  ///
  /// [accountId] - The ID of the account for which to retrieve accessible
  /// Business Profiles.
  ///
  /// [country] - The CLDR country code (for example, "US") for which the
  /// omnichannel experience is selected.
  ///
  /// [lsfType] - The Local Store Front (LSF) type for this country. Acceptable
  /// values are: - "`ghlsf`" (Google-Hosted Local Store Front) - "`mhlsfBasic`"
  /// (Merchant-Hosted Local Store Front Basic) - "`mhlsfFull`" (Merchant-Hosted
  /// Local Store Front Full) More details about these types can be found here.
  ///
  /// [pickupTypes] - The Pickup types for this country. Acceptable values are:
  /// - "`pickupToday`" - "`pickupLater`"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiaOmnichannelExperience].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiaOmnichannelExperience> setomnichannelexperience(
    core.String merchantId,
    core.String accountId, {
    core.String? country,
    core.String? lsfType,
    core.List<core.String>? pickupTypes,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (country != null) 'country': [country],
      if (lsfType != null) 'lsfType': [lsfType],
      if (pickupTypes != null) 'pickupTypes': pickupTypes,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/liasettings/' +
        commons.escapeVariable('$accountId') +
        '/setomnichannelexperience';

    final response_ = await _requester.request(
      url_,
      'POST',

      queryParams: queryParams_,
    );
    return LiaOmnichannelExperience.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Business Profiles.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'country': [country],
      if (posDataProviderId != null) 'posDataProviderId': [posDataProviderId],
      if (posExternalAccountId != null)
        'posExternalAccountId': [posExternalAccountId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/liasettings/' +
        commons.escapeVariable('$accountId') +
        '/setposdataprovider';

    final response_ = await _requester.request(
      url_,
      'POST',

      queryParams: queryParams_,
    );
    return LiasettingsSetPosDataProviderResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/liasettings/' +
        commons.escapeVariable('$accountId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return LiaSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'localinventory/batch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LocalinventoryCustomBatchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/products/' +
        commons.escapeVariable('$productId') +
        '/localinventory';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LocalInventory.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class MerchantsupportResource {
  final commons.ApiRequester _requester;

  MerchantsupportResource(commons.ApiRequester client) : _requester = client;

  /// Provide a list of merchant's issues with a support content and available
  /// actions.
  ///
  /// This content and actions are meant to be rendered and shown in third-party
  /// applications.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account to fetch issues for.
  ///
  /// [languageCode] - Optional. The \[IETF
  /// BCP-47\](https://tools.ietf.org/html/bcp47) language code used to localize
  /// support content. If not set, the result will be in default language
  /// `en-US`.
  ///
  /// [timeZone] - Optional. The [IANA](https://www.iana.org/time-zones)
  /// timezone used to localize times in support content. For example
  /// 'America/Los_Angeles'. If not set, results will use as a default UTC.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RenderAccountIssuesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RenderAccountIssuesResponse> renderaccountissues(
    RenderAccountIssuesRequestPayload request,
    core.String merchantId, {
    core.String? languageCode,
    core.String? timeZone,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (timeZone != null) 'timeZone': [timeZone],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/merchantsupport/renderaccountissues';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RenderAccountIssuesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Provide a list of issues for merchant's product with a support content and
  /// available actions.
  ///
  /// This content and actions are meant to be rendered and shown in third-party
  /// applications.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account that contains the product.
  ///
  /// [productId] - Required. The
  /// [REST_ID](https://developers.google.com/shopping-content/reference/rest/v2.1/products#Product.FIELDS.id)
  /// of the product to fetch issues for.
  ///
  /// [languageCode] - Optional. The \[IETF
  /// BCP-47\](https://tools.ietf.org/html/bcp47) language code used to localize
  /// support content. If not set, the result will be in default language
  /// `en-US`.
  ///
  /// [timeZone] - Optional. The [IANA](https://www.iana.org/time-zones)
  /// timezone used to localize times in support content. For example
  /// 'America/Los_Angeles'. If not set, results will use as a default UTC.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RenderProductIssuesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RenderProductIssuesResponse> renderproductissues(
    RenderProductIssuesRequestPayload request,
    core.String merchantId,
    core.String productId, {
    core.String? languageCode,
    core.String? timeZone,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (timeZone != null) 'timeZone': [timeZone],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/merchantsupport/renderproductissues/' +
        commons.escapeVariable('$productId');

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RenderProductIssuesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Start an action.
  ///
  /// The action can be requested by merchants in third-party application.
  /// Before merchants can request the action, the third-party application needs
  /// to show them action specific content and display a user input form. The
  /// action can be successfully started only once all `required` inputs are
  /// provided. If any `required` input is missing, or invalid value was
  /// provided, the service will return 400 error. Validation errors will
  /// contain Ids for all problematic field together with translated, human
  /// readable error messages that can be shown to the user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the merchant's account.
  ///
  /// [languageCode] - Optional. Language code
  /// [IETF BCP 47 syntax](https://tools.ietf.org/html/bcp47) used to localize
  /// the response. If not set, the result will be in default language `en-US`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TriggerActionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TriggerActionResponse> triggeraction(
    TriggerActionPayload request,
    core.String merchantId, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/merchantsupport/triggeraction';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TriggerActionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') + '/ordertrackingsignals';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return OrderTrackingSignal.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'pos/batch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PosCustomBatchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/pos/' +
        commons.escapeVariable('$targetMerchantId') +
        '/store/' +
        commons.escapeVariable('$storeCode');

    await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,

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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/pos/' +
        commons.escapeVariable('$targetMerchantId') +
        '/store/' +
        commons.escapeVariable('$storeCode');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PosStore.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/pos/' +
        commons.escapeVariable('$targetMerchantId') +
        '/store';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PosStore.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/pos/' +
        commons.escapeVariable('$targetMerchantId') +
        '/inventory';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PosInventoryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/pos/' +
        commons.escapeVariable('$targetMerchantId') +
        '/store';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PosListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/pos/' +
        commons.escapeVariable('$targetMerchantId') +
        '/sale';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PosSaleResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProductdeliverytimeResource {
  final commons.ApiRequester _requester;

  ProductdeliverytimeResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates or updates the delivery time of a product.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - The Google merchant ID of the account that contains the
  /// product. This account cannot be a multi-client account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductDeliveryTime].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductDeliveryTime> create(
    ProductDeliveryTime request,
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/productdeliverytime';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ProductDeliveryTime.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the delivery time of a product.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The Google merchant ID of the account that
  /// contains the product. This account cannot be a multi-client account.
  ///
  /// [productId] - Required. The Content API ID of the product, in the form
  /// `channel:contentLanguage:targetCountry:offerId`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/productdeliverytime/' +
        commons.escapeVariable('$productId');

    await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,

      downloadOptions: null,
    );
  }

  /// Gets `productDeliveryTime` by `productId`.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The Google merchant ID of the account that
  /// contains the product. This account cannot be a multi-client account.
  ///
  /// [productId] - Required. The Content API ID of the product, in the form
  /// `channel:contentLanguage:targetCountry:offerId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductDeliveryTime].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductDeliveryTime> get(
    core.String merchantId,
    core.String productId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/productdeliverytime/' +
        commons.escapeVariable('$productId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ProductDeliveryTime.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'products/batch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ProductsCustomBatchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (feedId != null) 'feedId': [feedId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/products/' +
        commons.escapeVariable('$productId');

    await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,

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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/products/' +
        commons.escapeVariable('$productId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Product.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (feedId != null) 'feedId': [feedId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/products';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Product.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// used for paging. The default value is 25. The maximum value is 250.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/products';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ProductsListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// product. *You must specify the update mask to delete attributes.* Only
  /// top-level product attributes can be updated. If not defined, product
  /// attributes with set values will be updated and other attributes will stay
  /// unchanged.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/products/' +
        commons.escapeVariable('$productId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Product.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProductstatusesResource {
  final commons.ApiRequester _requester;

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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'productstatuses/batch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ProductstatusesCustomBatchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (destinations != null) 'destinations': destinations,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/productstatuses/' +
        commons.escapeVariable('$productId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ProductStatus.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// response, used for paging. The default value is 25. The maximum value is
  /// 250.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (destinations != null) 'destinations': destinations,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/productstatuses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ProductstatusesListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PromotionsResource {
  final commons.ApiRequester _requester;

  PromotionsResource(commons.ApiRequester client) : _requester = client;

  /// Inserts a promotion for your Merchant Center account.
  ///
  /// If the promotion already exists, then it updates the promotion instead. To
  /// [end or delete](https://developers.google.com/shopping-content/guides/promotions#end_a_promotion)
  /// a promotion update the time period of the promotion to a time that has
  /// already passed.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/promotions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Promotion.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a promotion from your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account that contains the
  /// collection.
  ///
  /// [id] - Required. REST ID of the promotion to retrieve.
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
  async.Future<Promotion> get(
    core.String merchantId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/promotions/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Promotion.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all promotions from your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account that contains the
  /// collection.
  ///
  /// [countryCode] -
  /// [CLDR country code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
  /// (for example, "US"), used as a filter on promotions target country.
  ///
  /// [languageCode] - The two-letter ISO 639-1 language code associated with
  /// the promotions, used as a filter.
  ///
  /// [pageSize] - The maximum number of promotions to return. The service may
  /// return fewer than this value. If unspecified, at most 50 labels will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListPromotion` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListPromotion` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPromotionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPromotionResponse> list(
    core.String merchantId, {
    core.String? countryCode,
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (countryCode != null) 'countryCode': [countryCode],
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/promotions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPromotionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') + '/pubsubnotificationsettings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PubsubNotificationSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Register a Merchant Center account for pubsub notifications.
  ///
  /// Note that cloud topic name shouldn't be provided as part of the request.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') + '/pubsubnotificationsettings';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return PubsubNotificationSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class QuotasResource {
  final commons.ApiRequester _requester;

  QuotasResource(commons.ApiRequester client) : _requester = client;

  /// Lists the daily call quota and usage per method for your Merchant Center
  /// account.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account that has quota. This
  /// account must be an admin.
  ///
  /// [pageSize] - The maximum number of quotas to return in the response, used
  /// for paging. Defaults to 500; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Token (if provided) to retrieve the subsequent page. All
  /// other parameters must match the original call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMethodQuotasResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMethodQuotasResponse> list(
    core.String merchantId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/quotas';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMethodQuotasResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class RecommendationsResource {
  final commons.ApiRequester _requester;

  RecommendationsResource(commons.ApiRequester client) : _requester = client;

  /// Generates recommendations for a merchant.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account to fetch recommendations
  /// for.
  ///
  /// [allowedTag] - Optional. List of allowed tags. Tags are a set of
  /// predefined strings that describe the category that individual
  /// recommendation types belong to. User can specify zero or more tags in this
  /// field to indicate what categories of recommendations they want to receive.
  /// Current list of supported tags: - TREND
  ///
  /// [languageCode] - Optional. Language code of the client. If not set, the
  /// result will be in default language (English). This language code affects
  /// all fields prefixed with "localized". This should be set to ISO 639-1
  /// country code. List of currently verified supported language code: en, fr,
  /// cs, da, de, es, it, nl, no, pl, pt, pt, fi, sv, vi, tr, th, ko, zh-CN,
  /// zh-TW, ja, id, hi
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateRecommendationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateRecommendationsResponse> generate(
    core.String merchantId, {
    core.List<core.String>? allowedTag,
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowedTag != null) 'allowedTag': allowedTag,
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') + '/recommendations/generate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GenerateRecommendationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Reports an interaction on a recommendation for a merchant.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [merchantId] - Required. The ID of the account that wants to report an
  /// interaction.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> reportInteraction(
    ReportInteractionRequest request,
    core.String merchantId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/recommendations/reportInteraction';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,

      downloadOptions: null,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'regionalinventory/batch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RegionalinventoryCustomBatchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the regional inventory of a product in your Merchant Center
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/products/' +
        commons.escapeVariable('$productId') +
        '/regionalinventory';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RegionalInventory.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (regionId != null) 'regionId': [regionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/regions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Region.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/regions/' +
        commons.escapeVariable('$regionId');

    await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,

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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/regions/' +
        commons.escapeVariable('$regionId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Region.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/regions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRegionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/regions/' +
        commons.escapeVariable('$regionId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Region.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ReportsResource {
  final commons.ApiRequester _requester;

  ReportsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves merchant performance metrics matching the search query and
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/reports/search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SearchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'returnaddress/batch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReturnaddressCustomBatchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/returnaddress/' +
        commons.escapeVariable('$returnAddressId');

    await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,

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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/returnaddress/' +
        commons.escapeVariable('$returnAddressId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ReturnAddress.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/returnaddress';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReturnAddress.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (country != null) 'country': [country],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/returnaddress';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ReturnaddressListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'returnpolicy/batch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReturnpolicyCustomBatchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/returnpolicy/' +
        commons.escapeVariable('$returnPolicyId');

    await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,

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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/returnpolicy/' +
        commons.escapeVariable('$returnPolicyId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ReturnPolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/returnpolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReturnPolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/returnpolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ReturnpolicyListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/returnpolicyonline';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReturnPolicyOnline.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/returnpolicyonline/' +
        commons.escapeVariable('$returnPolicyId');

    await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,

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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/returnpolicyonline/' +
        commons.escapeVariable('$returnPolicyId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ReturnPolicyOnline.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/returnpolicyonline';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReturnPolicyOnlineResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/returnpolicyonline/' +
        commons.escapeVariable('$returnPolicyId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ReturnPolicyOnline.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'shippingsettings/batch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ShippingsettingsCustomBatchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/shippingsettings/' +
        commons.escapeVariable('$accountId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ShippingSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  getsupportedcarriers(core.String merchantId, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/supportedCarriers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ShippingsettingsGetSupportedCarriersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  getsupportedholidays(core.String merchantId, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/supportedHolidays';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ShippingsettingsGetSupportedHolidaysResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') + '/supportedPickupServices';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ShippingsettingsGetSupportedPickupServicesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/shippingsettings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ShippingsettingsListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/shippingsettings/' +
        commons.escapeVariable('$accountId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return ShippingSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ShoppingadsprogramResource {
  final commons.ApiRequester _requester;

  ShoppingadsprogramResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves the status and review eligibility for the Shopping Ads program.
  ///
  /// Returns errors and warnings if they require action to resolve, will become
  /// disapprovals, or impact impressions. Use `accountstatuses` to view all
  /// issues for an account.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = commons.escapeVariable('$merchantId') + '/shoppingadsprogram';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ShoppingAdsProgramStatus.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Requests a review of Shopping ads in a specific region.
  ///
  /// This method deprecated. Use the `MerchantSupportService` to view product
  /// and account issues and request a review.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        commons.escapeVariable('$merchantId') +
        '/shoppingadsprogram/requestreview';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,

      downloadOptions: null,
    );
  }
}

/// Account data.
///
/// After the creation of a new account it may take a few minutes before it's
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
  /// either in the Ads interface or through the Google Ads API. To delete an
  /// active link, or to cancel a link request, remove it from the list.
  core.List<AccountAdsLink>? adsLinks;

  /// Indicates whether the merchant sells adult content.
  core.bool? adultContent;

  /// The automatic improvements of the account can be used to automatically
  /// update items, improve images and shipping.
  ///
  /// Each section inside AutomaticImprovements is updated separately.
  AccountAutomaticImprovements? automaticImprovements;

  /// Automatically created label IDs that are assigned to the account by CSS
  /// Center.
  core.List<core.String>? automaticLabelIds;

  /// The business identity attributes can be used to self-declare attributes
  /// that let customers know more about your business.
  AccountBusinessIdentity? businessIdentity;

  /// The business information of the account.
  AccountBusinessInformation? businessInformation;

  /// Settings for conversion tracking.
  AccountConversionSettings? conversionSettings;

  /// ID of CSS the account belongs to.
  core.String? cssId;

  /// The Business Profile which is linked or in the process of being linked
  /// with the Merchant Center account.
  AccountGoogleMyBusinessLink? googleMyBusinessLink;

  /// 64-bit Merchant Center account ID.
  ///
  /// Required.
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
    this.automaticImprovements,
    this.automaticLabelIds,
    this.businessIdentity,
    this.businessInformation,
    this.conversionSettings,
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

  Account.fromJson(core.Map json_)
    : this(
        accountManagement: json_['accountManagement'] as core.String?,
        adsLinks:
            (json_['adsLinks'] as core.List?)
                ?.map(
                  (value) => AccountAdsLink.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        adultContent: json_['adultContent'] as core.bool?,
        automaticImprovements:
            json_.containsKey('automaticImprovements')
                ? AccountAutomaticImprovements.fromJson(
                  json_['automaticImprovements']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        automaticLabelIds:
            (json_['automaticLabelIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        businessIdentity:
            json_.containsKey('businessIdentity')
                ? AccountBusinessIdentity.fromJson(
                  json_['businessIdentity']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        businessInformation:
            json_.containsKey('businessInformation')
                ? AccountBusinessInformation.fromJson(
                  json_['businessInformation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        conversionSettings:
            json_.containsKey('conversionSettings')
                ? AccountConversionSettings.fromJson(
                  json_['conversionSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        cssId: json_['cssId'] as core.String?,
        googleMyBusinessLink:
            json_.containsKey('googleMyBusinessLink')
                ? AccountGoogleMyBusinessLink.fromJson(
                  json_['googleMyBusinessLink']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        kind: json_['kind'] as core.String?,
        labelIds:
            (json_['labelIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        name: json_['name'] as core.String?,
        sellerId: json_['sellerId'] as core.String?,
        users:
            (json_['users'] as core.List?)
                ?.map(
                  (value) => AccountUser.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        websiteUrl: json_['websiteUrl'] as core.String?,
        youtubeChannelLinks:
            (json_['youtubeChannelLinks'] as core.List?)
                ?.map(
                  (value) => AccountYouTubeChannelLink.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accountManagement != null) 'accountManagement': accountManagement!,
    if (adsLinks != null) 'adsLinks': adsLinks!,
    if (adultContent != null) 'adultContent': adultContent!,
    if (automaticImprovements != null)
      'automaticImprovements': automaticImprovements!,
    if (automaticLabelIds != null) 'automaticLabelIds': automaticLabelIds!,
    if (businessIdentity != null) 'businessIdentity': businessIdentity!,
    if (businessInformation != null)
      'businessInformation': businessInformation!,
    if (conversionSettings != null) 'conversionSettings': conversionSettings!,
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
  /// CLDR country code (for example, "US").
  ///
  /// All MCA sub-accounts inherit the country of their parent MCA by default,
  /// however the country can be updated for individual sub-accounts.
  core.String? country;

  /// City, town or commune.
  ///
  /// May also include dependent localities or sublocalities (for example,
  /// neighborhoods or suburbs).
  core.String? locality;

  /// Postal code or ZIP (for example, "94043").
  core.String? postalCode;

  /// Top-level administrative subdivision of the country.
  ///
  /// For example, a state like California ("CA") or a province like Quebec
  /// ("QC").
  core.String? region;

  /// Street-level part of the address.
  ///
  /// Use `\n` to add a second line.
  core.String? streetAddress;

  AccountAddress({
    this.country,
    this.locality,
    this.postalCode,
    this.region,
    this.streetAddress,
  });

  AccountAddress.fromJson(core.Map json_)
    : this(
        country: json_['country'] as core.String?,
        locality: json_['locality'] as core.String?,
        postalCode: json_['postalCode'] as core.String?,
        region: json_['region'] as core.String?,
        streetAddress: json_['streetAddress'] as core.String?,
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

  AccountAdsLink({this.adsId, this.status});

  AccountAdsLink.fromJson(core.Map json_)
    : this(
        adsId: json_['adsId'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adsId != null) 'adsId': adsId!,
    if (status != null) 'status': status!,
  };
}

/// The automatic improvements of the account can be used to automatically
/// update items, improve images and shipping.
class AccountAutomaticImprovements {
  /// This improvement will attempt to automatically correct submitted images if
  /// they don't meet the
  /// [image requirements](https://support.google.com/merchants/answer/6324350),
  /// for example, removing overlays.
  ///
  /// If successful, the image will be replaced and approved. This improvement
  /// is only applied to images of disapproved offers. For more information see:
  /// [Automatic image improvements](https://support.google.com/merchants/answer/9242973)
  /// This field is only updated (cleared) if provided.
  AccountImageImprovements? imageImprovements;

  /// Turning on
  /// [item updates](https://support.google.com/merchants/answer/3246284) allows
  /// Google to automatically update items for you.
  ///
  /// When item updates are on, Google uses the structured data markup on the
  /// website and advanced data extractors to update the price and availability
  /// of the items. When the item updates are off, items with mismatched data
  /// aren't shown. This field is only updated (cleared) if provided.
  AccountItemUpdates? itemUpdates;

  /// Not available for MCAs
  /// [accounts](https://support.google.com/merchants/answer/188487).
  ///
  /// By turning on
  /// [automatic shipping improvements](https://support.google.com/merchants/answer/10027038),
  /// you are allowing Google to improve the accuracy of your delivery times
  /// shown to shoppers using Google. More accurate delivery times, especially
  /// when faster, typically lead to better conversion rates. Google will
  /// improve your estimated delivery times based on various factors: - Delivery
  /// address of an order - Current handling time and shipping time settings -
  /// Estimated weekdays or business days - Parcel tracking data This field is
  /// only updated (cleared) if provided.
  AccountShippingImprovements? shippingImprovements;

  AccountAutomaticImprovements({
    this.imageImprovements,
    this.itemUpdates,
    this.shippingImprovements,
  });

  AccountAutomaticImprovements.fromJson(core.Map json_)
    : this(
        imageImprovements:
            json_.containsKey('imageImprovements')
                ? AccountImageImprovements.fromJson(
                  json_['imageImprovements']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        itemUpdates:
            json_.containsKey('itemUpdates')
                ? AccountItemUpdates.fromJson(
                  json_['itemUpdates'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        shippingImprovements:
            json_.containsKey('shippingImprovements')
                ? AccountShippingImprovements.fromJson(
                  json_['shippingImprovements']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (imageImprovements != null) 'imageImprovements': imageImprovements!,
    if (itemUpdates != null) 'itemUpdates': itemUpdates!,
    if (shippingImprovements != null)
      'shippingImprovements': shippingImprovements!,
  };
}

/// The
/// [business identity attributes](https://support.google.com/merchants/answer/10342414)
/// can be used to self-declare attributes that let customers know more about
/// your business.
class AccountBusinessIdentity {
  /// Specifies whether the business identifies itself as being black-owned.
  ///
  /// This optional field is only available for merchants with a business
  /// country set to "US". This field is not allowed for marketplaces or
  /// marketplace sellers.
  AccountIdentityType? blackOwned;

  /// By setting this field, your business may be included in promotions for all
  /// the selected attributes.
  ///
  /// If you clear this option, it won't affect your identification with any of
  /// the attributes. For this field to be set, the merchant must self identify
  /// with at least one of the `AccountIdentityType`. If none are included, the
  /// request will be considered invalid.
  ///
  /// Required.
  core.bool? includeForPromotions;

  /// Specifies whether the business identifies itself as being latino-owned.
  ///
  /// This optional field is only available for merchants with a business
  /// country set to "US". This field is not allowed for marketplaces or
  /// marketplace sellers.
  AccountIdentityType? latinoOwned;

  /// Specifies whether the business identifies itself as a small business.
  ///
  /// This optional field is only available for merchants with a business
  /// country set to "US". It is also not allowed for marketplaces, but it is
  /// allowed to marketplace sellers.
  AccountIdentityType? smallBusiness;

  /// Specifies whether the business identifies itself as being veteran-owned.
  ///
  /// This optional field is only available for merchants with a business
  /// country set to "US". This field is not allowed for marketplaces or
  /// marketplace sellers.
  AccountIdentityType? veteranOwned;

  /// Specifies whether the business identifies itself as being women-owned.
  ///
  /// This optional field is only available for merchants with a business
  /// country set to "US". This field is not allowed for marketplaces or
  /// marketplace sellers.
  AccountIdentityType? womenOwned;

  AccountBusinessIdentity({
    this.blackOwned,
    this.includeForPromotions,
    this.latinoOwned,
    this.smallBusiness,
    this.veteranOwned,
    this.womenOwned,
  });

  AccountBusinessIdentity.fromJson(core.Map json_)
    : this(
        blackOwned:
            json_.containsKey('blackOwned')
                ? AccountIdentityType.fromJson(
                  json_['blackOwned'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        includeForPromotions: json_['includeForPromotions'] as core.bool?,
        latinoOwned:
            json_.containsKey('latinoOwned')
                ? AccountIdentityType.fromJson(
                  json_['latinoOwned'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        smallBusiness:
            json_.containsKey('smallBusiness')
                ? AccountIdentityType.fromJson(
                  json_['smallBusiness'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        veteranOwned:
            json_.containsKey('veteranOwned')
                ? AccountIdentityType.fromJson(
                  json_['veteranOwned'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        womenOwned:
            json_.containsKey('womenOwned')
                ? AccountIdentityType.fromJson(
                  json_['womenOwned'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (blackOwned != null) 'blackOwned': blackOwned!,
    if (includeForPromotions != null)
      'includeForPromotions': includeForPromotions!,
    if (latinoOwned != null) 'latinoOwned': latinoOwned!,
    if (smallBusiness != null) 'smallBusiness': smallBusiness!,
    if (veteranOwned != null) 'veteranOwned': veteranOwned!,
    if (womenOwned != null) 'womenOwned': womenOwned!,
  };
}

class AccountBusinessInformation {
  /// The address of the business.
  ///
  /// Use `\n` to add a second address line.
  AccountAddress? address;

  /// The customer service information of the business.
  AccountCustomerService? customerService;

  /// The 10-digit
  /// [Korean business registration number](https://support.google.com/merchants/answer/9037766)
  /// separated with dashes in the format: XXX-XX-XXXXX.
  ///
  /// This field will only be updated if explicitly set.
  core.String? koreanBusinessRegistrationNumber;

  /// The phone number of the business in
  /// [E.164](https://en.wikipedia.org/wiki/E.164) format.
  ///
  /// This can only be updated if a verified phone number is not already set. To
  /// replace a verified phone number use the
  /// `Accounts.requestphoneverification` and `Accounts.verifyphonenumber`.
  core.String? phoneNumber;

  /// Verification status of the phone number of the business.
  ///
  /// This status is read only and can be updated only by successful phone
  /// verification. Acceptable values are: - "`verified`" - "`unverified`"
  core.String? phoneVerificationStatus;

  AccountBusinessInformation({
    this.address,
    this.customerService,
    this.koreanBusinessRegistrationNumber,
    this.phoneNumber,
    this.phoneVerificationStatus,
  });

  AccountBusinessInformation.fromJson(core.Map json_)
    : this(
        address:
            json_.containsKey('address')
                ? AccountAddress.fromJson(
                  json_['address'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        customerService:
            json_.containsKey('customerService')
                ? AccountCustomerService.fromJson(
                  json_['customerService']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        koreanBusinessRegistrationNumber:
            json_['koreanBusinessRegistrationNumber'] as core.String?,
        phoneNumber: json_['phoneNumber'] as core.String?,
        phoneVerificationStatus:
            json_['phoneVerificationStatus'] as core.String?,
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

/// Settings for conversion tracking.
class AccountConversionSettings {
  /// When enabled, free listing URLs have a parameter to enable conversion
  /// tracking for products owned by the current merchant account.
  ///
  /// See
  /// \[auto-tagging\](https://support.google.com/merchants/answer/11127659).
  core.bool? freeListingsAutoTaggingEnabled;

  AccountConversionSettings({this.freeListingsAutoTaggingEnabled});

  AccountConversionSettings.fromJson(core.Map json_)
    : this(
        freeListingsAutoTaggingEnabled:
            json_['freeListingsAutoTaggingEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (freeListingsAutoTaggingEnabled != null)
      'freeListingsAutoTaggingEnabled': freeListingsAutoTaggingEnabled!,
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

  AccountCredentials({this.accessToken, this.expiresIn, this.purpose});

  AccountCredentials.fromJson(core.Map json_)
    : this(
        accessToken: json_['accessToken'] as core.String?,
        expiresIn: json_['expiresIn'] as core.String?,
        purpose: json_['purpose'] as core.String?,
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

  AccountCustomerService({this.email, this.phoneNumber, this.url});

  AccountCustomerService.fromJson(core.Map json_)
    : this(
        email: json_['email'] as core.String?,
        phoneNumber: json_['phoneNumber'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (email != null) 'email': email!,
    if (phoneNumber != null) 'phoneNumber': phoneNumber!,
    if (url != null) 'url': url!,
  };
}

class AccountGoogleMyBusinessLink {
  /// The ID of the Business Profile.
  ///
  /// If this is provided, then `gmbEmail` is ignored. The value of this field
  /// should match the `accountId` used by the Business Profile API.
  core.String? gmbAccountId;

  /// The Business Profile email address of a specific account within a Business
  /// Profile.
  ///
  /// A sample account within a Business Profile could be a business account
  /// with set of locations, managed under the Business Profile.
  core.String? gmbEmail;

  /// Status of the link between this Merchant Center account and the Business
  /// Profile.
  ///
  /// Acceptable values are: - "`active`" - "`pending`"
  core.String? status;

  AccountGoogleMyBusinessLink({this.gmbAccountId, this.gmbEmail, this.status});

  AccountGoogleMyBusinessLink.fromJson(core.Map json_)
    : this(
        gmbAccountId: json_['gmbAccountId'] as core.String?,
        gmbEmail: json_['gmbEmail'] as core.String?,
        status: json_['status'] as core.String?,
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

  AccountIdentifier({this.aggregatorId, this.merchantId});

  AccountIdentifier.fromJson(core.Map json_)
    : this(
        aggregatorId: json_['aggregatorId'] as core.String?,
        merchantId: json_['merchantId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregatorId != null) 'aggregatorId': aggregatorId!,
    if (merchantId != null) 'merchantId': merchantId!,
  };
}

/// The account identity type used to specify attributes.
class AccountIdentityType {
  /// Indicates that the business identifies itself with a given identity type.
  ///
  /// Setting this field does not automatically mean eligibility for promotions.
  ///
  /// Optional.
  core.bool? selfIdentified;

  AccountIdentityType({this.selfIdentified});

  AccountIdentityType.fromJson(core.Map json_)
    : this(selfIdentified: json_['selfIdentified'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (selfIdentified != null) 'selfIdentified': selfIdentified!,
  };
}

/// This improvement will attempt to automatically correct submitted images if
/// they don't meet the
/// [image requirements](https://support.google.com/merchants/answer/6324350),
/// for example, removing overlays.
///
/// If successful, the image will be replaced and approved. This improvement is
/// only applied to images of disapproved offers. For more information see:
/// [Automatic image improvements](https://support.google.com/merchants/answer/9242973)
class AccountImageImprovements {
  /// Determines how the images should be automatically updated.
  ///
  /// If this field is not present, then the settings will be deleted. If there
  /// are no settings for subaccount, they are inherited from aggregator.
  AccountImageImprovementsSettings? accountImageImprovementsSettings;

  /// The effective value of allow_automatic_image_improvements.
  ///
  /// If account_image_improvements_settings is present, then this value is the
  /// same. Otherwise, it represents the inherited value of the parent account.
  /// Read-only.
  ///
  /// Output only.
  core.bool? effectiveAllowAutomaticImageImprovements;

  AccountImageImprovements({
    this.accountImageImprovementsSettings,
    this.effectiveAllowAutomaticImageImprovements,
  });

  AccountImageImprovements.fromJson(core.Map json_)
    : this(
        accountImageImprovementsSettings:
            json_.containsKey('accountImageImprovementsSettings')
                ? AccountImageImprovementsSettings.fromJson(
                  json_['accountImageImprovementsSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        effectiveAllowAutomaticImageImprovements:
            json_['effectiveAllowAutomaticImageImprovements'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accountImageImprovementsSettings != null)
      'accountImageImprovementsSettings': accountImageImprovementsSettings!,
    if (effectiveAllowAutomaticImageImprovements != null)
      'effectiveAllowAutomaticImageImprovements':
          effectiveAllowAutomaticImageImprovements!,
  };
}

/// Settings for the Automatic Image Improvements.
class AccountImageImprovementsSettings {
  /// Enables automatic image improvements.
  core.bool? allowAutomaticImageImprovements;

  AccountImageImprovementsSettings({this.allowAutomaticImageImprovements});

  AccountImageImprovementsSettings.fromJson(core.Map json_)
    : this(
        allowAutomaticImageImprovements:
            json_['allowAutomaticImageImprovements'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowAutomaticImageImprovements != null)
      'allowAutomaticImageImprovements': allowAutomaticImageImprovements!,
  };
}

/// An issue affecting specific merchant.
class AccountIssue {
  /// A list of actionable steps that can be executed to solve the issue.
  ///
  /// An example is requesting a re-review or providing arguments when merchant
  /// disagrees with the issue. Actions that are supported in (your) third-party
  /// application can be rendered as buttons and should be available to merchant
  /// when they expand the issue.
  core.List<Action>? actions;

  /// Clarifies the severity of the issue.
  ///
  /// The summarizing message, if present, should be shown right under the title
  /// for each issue. It helps merchants to quickly understand the impact of the
  /// issue. The detailed breakdown helps the merchant to fully understand the
  /// impact of the issue. It can be rendered as dialog that opens when the
  /// merchant mouse over the summarized impact statement. Issues with different
  /// severity can be styled differently. They may use a different color or icon
  /// to signal the difference between `ERROR`, `WARNING` and `INFO`.
  AccountIssueImpact? impact;

  /// Details of the issue as a pre-rendered HTML.
  ///
  /// HTML elements contain CSS classes that can be used to customize the style
  /// of the content. Always sanitize the HTML before embedding it directly to
  /// your application. The sanitizer needs to allow basic HTML tags, such as:
  /// `div`, `span`, `p`, `a`, `ul`, `li`, `table`, `tr`, `td`. For example, you
  /// can use [DOMPurify](https://www.npmjs.com/package/dompurify). CSS classes:
  /// * `issue-detail` - top level container for the detail of the issue *
  /// `callout-banners` - section of the `issue-detail` with callout banners *
  /// `callout-banner` - single callout banner, inside `callout-banners` *
  /// `callout-banner-info` - callout with important information (default) *
  /// `callout-banner-warning` - callout with a warning * `callout-banner-error`
  /// - callout informing about an error (most severe) * `issue-content` -
  /// section of the `issue-detail`, contains multiple `content-element` *
  /// `content-element` - content element such as a list, link or paragraph,
  /// inside `issue-content` * `root-causes` - unordered list with items
  /// describing root causes of the issue, inside `issue-content` *
  /// `root-causes-intro` - intro text before the `root-causes` list, inside
  /// `issue-content` * `segment` - section of the text, `span` inside paragraph
  /// * `segment-attribute` - section of the text that represents a product
  /// attribute, for example 'image\_link' * `segment-literal` - section of the
  /// text that contains a special value, for example '0-1000 kg' *
  /// `segment-bold` - section of the text that should be rendered as bold *
  /// `segment-italic` - section of the text that should be rendered as italic *
  /// `tooltip` - used on paragraphs that should be rendered with a tooltip. A
  /// section of the text in such a paragraph will have a class `tooltip-text`
  /// and is intended to be shown in a mouse over dialog. If the style is not
  /// used, the `tooltip-text` section would be shown on a new line, after the
  /// main part of the text. * `tooltip-text` - marks a section of the text
  /// within a `tooltip`, that is intended to be shown in a mouse over dialog. *
  /// `tooltip-icon` - marks a section of the text within a `tooltip`, that can
  /// be replaced with a tooltip icon, for example '?' or 'i'. By default, this
  /// section contains a `br` tag, that is separating the main text and the
  /// tooltip text when the style is not used. * `tooltip-style-question` - the
  /// tooltip shows helpful information, can use the '?' as an icon. *
  /// `tooltip-style-info` - the tooltip adds additional information fitting to
  /// the context, can use the 'i' as an icon. * `content-moderation` - marks
  /// the paragraph that explains how the issue was identified. * `new-element`
  /// - Present for new elements added to the pre-rendered content in the
  /// future. To make sure that a new content element does not break your style,
  /// you can hide everything with this class.
  core.String? prerenderedContent;

  /// Pre-rendered HTML that contains a link to the external location where the
  /// ODS can be requested and instructions for how to request it.
  ///
  /// HTML elements contain CSS classes that can be used to customize the style
  /// of this snippet. Always sanitize the HTML before embedding it directly to
  /// your application. The sanitizer needs to allow basic HTML tags, such as:
  /// `div`, `span`, `p`, `a`, `ul`, `li`, `table`, `tr`, `td`. For example, you
  /// can use [DOMPurify](https://www.npmjs.com/package/dompurify). CSS classes:
  /// * `ods-section`* - wrapper around the out-of-court dispute resolution
  /// section * `ods-description`* - intro text for the out-of-court dispute
  /// resolution. It may contain multiple segments and a link. * `ods-param`* -
  /// wrapper around the header-value pair for parameters that merchant may need
  /// to provide during the ODS process. * `ods-routing-id`* - ods param for the
  /// Routing ID. * `ods-reference-id`* - ods param for the Routing ID. *
  /// `ods-param-header`* - header for the ODS parameter * `ods-param-value`* -
  /// value of the ODS parameter. This value should be rendered in a way that it
  /// is easy for merchants to identify and copy. * `segment` - section of the
  /// text, `span` inside paragraph * `segment-attribute` - section of the text
  /// that represents a product attribute, for example 'image\_link' *
  /// `segment-literal` - section of the text that contains a special value, for
  /// example '0-1000 kg' * `segment-bold` - section of the text that should be
  /// rendered as bold * `segment-italic` - section of the text that should be
  /// rendered as italic * `tooltip` - used on paragraphs that should be
  /// rendered with a tooltip. A section of the text in such a paragraph will
  /// have a class `tooltip-text` and is intended to be shown in a mouse over
  /// dialog. If the style is not used, the `tooltip-text` section would be
  /// shown on a new line, after the main part of the text. * `tooltip-text` -
  /// marks a section of the text within a `tooltip`, that is intended to be
  /// shown in a mouse over dialog. * `tooltip-icon` - marks a section of the
  /// text within a `tooltip`, that can be replaced with a tooltip icon, for
  /// example '?' or 'i'. By default, this section contains a `br` tag, that is
  /// separating the main text and the tooltip text when the style is not used.
  /// * `tooltip-style-question` - the tooltip shows helpful information, can
  /// use the '?' as an icon. * `tooltip-style-info` - the tooltip adds
  /// additional information fitting to the context, can use the 'i' as an icon.
  core.String? prerenderedOutOfCourtDisputeSettlement;

  /// Title of the issue.
  core.String? title;

  AccountIssue({
    this.actions,
    this.impact,
    this.prerenderedContent,
    this.prerenderedOutOfCourtDisputeSettlement,
    this.title,
  });

  AccountIssue.fromJson(core.Map json_)
    : this(
        actions:
            (json_['actions'] as core.List?)
                ?.map(
                  (value) => Action.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        impact:
            json_.containsKey('impact')
                ? AccountIssueImpact.fromJson(
                  json_['impact'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        prerenderedContent: json_['prerenderedContent'] as core.String?,
        prerenderedOutOfCourtDisputeSettlement:
            json_['prerenderedOutOfCourtDisputeSettlement'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actions != null) 'actions': actions!,
    if (impact != null) 'impact': impact!,
    if (prerenderedContent != null) 'prerenderedContent': prerenderedContent!,
    if (prerenderedOutOfCourtDisputeSettlement != null)
      'prerenderedOutOfCourtDisputeSettlement':
          prerenderedOutOfCourtDisputeSettlement!,
    if (title != null) 'title': title!,
  };
}

/// Overall impact of the issue.
class AccountIssueImpact {
  /// Detailed impact breakdown.
  ///
  /// Explains the types of restriction the issue has in different shopping
  /// destinations and territory. If present, it should be rendered to the
  /// merchant. Can be shown as a mouse over dropdown or a dialog. Each
  /// breakdown item represents a group of regions with the same impact details.
  core.List<Breakdown>? breakdowns;

  /// Message summarizing the overall impact of the issue.
  ///
  /// If present, it should be rendered to the merchant. For example:
  /// "Disapproves 90k offers in 25 countries"
  ///
  /// Optional.
  core.String? message;

  /// The severity of the issue.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Default value. Will never be provided by the
  /// API.
  /// - "ERROR" : Causes either an account suspension or an item disapproval.
  /// Errors should be resolved as soon as possible to ensure items are eligible
  /// to appear in results again.
  /// - "WARNING" : Warnings can negatively impact the performance of ads and
  /// can lead to item or account suspensions in the future unless the issue is
  /// resolved.
  /// - "INFO" : Infos are suggested optimizations to increase data quality.
  /// Resolving these issues is recommended, but not required.
  core.String? severity;

  AccountIssueImpact({this.breakdowns, this.message, this.severity});

  AccountIssueImpact.fromJson(core.Map json_)
    : this(
        breakdowns:
            (json_['breakdowns'] as core.List?)
                ?.map(
                  (value) => Breakdown.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        message: json_['message'] as core.String?,
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (breakdowns != null) 'breakdowns': breakdowns!,
    if (message != null) 'message': message!,
    if (severity != null) 'severity': severity!,
  };
}

/// Turning on
/// [item updates](https://support.google.com/merchants/answer/3246284) allows
/// Google to automatically update items for you.
///
/// When item updates are on, Google uses the structured data markup on the
/// website and advanced data extractors to update the price and availability of
/// the items. When the item updates are off, items with mismatched data aren't
/// shown.
class AccountItemUpdates {
  /// Determines which attributes of the items should be automatically updated.
  ///
  /// If this field is not present, then the settings will be deleted. If there
  /// are no settings for subaccount, they are inherited from aggregator.
  AccountItemUpdatesSettings? accountItemUpdatesSettings;

  /// The effective value of allow_availability_updates.
  ///
  /// If account_item_updates_settings is present, then this value is the same.
  /// Otherwise, it represents the inherited value of the parent account.
  /// Read-only.
  ///
  /// Output only.
  core.bool? effectiveAllowAvailabilityUpdates;

  /// The effective value of allow_condition_updates.
  ///
  /// If account_item_updates_settings is present, then this value is the same.
  /// Otherwise, it represents the inherited value of the parent account.
  /// Read-only.
  ///
  /// Output only.
  core.bool? effectiveAllowConditionUpdates;

  /// The effective value of allow_price_updates.
  ///
  /// If account_item_updates_settings is present, then this value is the same.
  /// Otherwise, it represents the inherited value of the parent account.
  /// Read-only.
  ///
  /// Output only.
  core.bool? effectiveAllowPriceUpdates;

  /// The effective value of allow_strict_availability_updates.
  ///
  /// If account_item_updates_settings is present, then this value is the same.
  /// Otherwise, it represents the inherited value of the parent account.
  /// Read-only.
  ///
  /// Output only.
  core.bool? effectiveAllowStrictAvailabilityUpdates;

  AccountItemUpdates({
    this.accountItemUpdatesSettings,
    this.effectiveAllowAvailabilityUpdates,
    this.effectiveAllowConditionUpdates,
    this.effectiveAllowPriceUpdates,
    this.effectiveAllowStrictAvailabilityUpdates,
  });

  AccountItemUpdates.fromJson(core.Map json_)
    : this(
        accountItemUpdatesSettings:
            json_.containsKey('accountItemUpdatesSettings')
                ? AccountItemUpdatesSettings.fromJson(
                  json_['accountItemUpdatesSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        effectiveAllowAvailabilityUpdates:
            json_['effectiveAllowAvailabilityUpdates'] as core.bool?,
        effectiveAllowConditionUpdates:
            json_['effectiveAllowConditionUpdates'] as core.bool?,
        effectiveAllowPriceUpdates:
            json_['effectiveAllowPriceUpdates'] as core.bool?,
        effectiveAllowStrictAvailabilityUpdates:
            json_['effectiveAllowStrictAvailabilityUpdates'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accountItemUpdatesSettings != null)
      'accountItemUpdatesSettings': accountItemUpdatesSettings!,
    if (effectiveAllowAvailabilityUpdates != null)
      'effectiveAllowAvailabilityUpdates': effectiveAllowAvailabilityUpdates!,
    if (effectiveAllowConditionUpdates != null)
      'effectiveAllowConditionUpdates': effectiveAllowConditionUpdates!,
    if (effectiveAllowPriceUpdates != null)
      'effectiveAllowPriceUpdates': effectiveAllowPriceUpdates!,
    if (effectiveAllowStrictAvailabilityUpdates != null)
      'effectiveAllowStrictAvailabilityUpdates':
          effectiveAllowStrictAvailabilityUpdates!,
  };
}

/// Settings for the Automatic Item Updates.
class AccountItemUpdatesSettings {
  /// If availability updates are enabled, any previous availability values get
  /// overwritten if Google finds an out-of-stock annotation on the offer's
  /// page.
  ///
  /// If additionally `allow_availability_updates` field is set to true, values
  /// get overwritten if Google finds an in-stock annotation on the offer’s
  /// page.
  core.bool? allowAvailabilityUpdates;

  /// If condition updates are enabled, Google always updates item condition
  /// with the condition detected from the details of your product.
  core.bool? allowConditionUpdates;

  /// If price updates are enabled, Google always updates the active price with
  /// the crawled information.
  core.bool? allowPriceUpdates;

  /// If allow_availability_updates is enabled, items are automatically updated
  /// in all your Shopping target countries.
  ///
  /// By default, availability updates will only be applied to items that are
  /// 'out of stock' on your website but 'in stock' on Shopping. Set this to
  /// true to also update items that are 'in stock' on your website, but 'out of
  /// stock' on Google Shopping. In order for this field to have an effect, you
  /// must also allow availability updates.
  core.bool? allowStrictAvailabilityUpdates;

  AccountItemUpdatesSettings({
    this.allowAvailabilityUpdates,
    this.allowConditionUpdates,
    this.allowPriceUpdates,
    this.allowStrictAvailabilityUpdates,
  });

  AccountItemUpdatesSettings.fromJson(core.Map json_)
    : this(
        allowAvailabilityUpdates:
            json_['allowAvailabilityUpdates'] as core.bool?,
        allowConditionUpdates: json_['allowConditionUpdates'] as core.bool?,
        allowPriceUpdates: json_['allowPriceUpdates'] as core.bool?,
        allowStrictAvailabilityUpdates:
            json_['allowStrictAvailabilityUpdates'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowAvailabilityUpdates != null)
      'allowAvailabilityUpdates': allowAvailabilityUpdates!,
    if (allowConditionUpdates != null)
      'allowConditionUpdates': allowConditionUpdates!,
    if (allowPriceUpdates != null) 'allowPriceUpdates': allowPriceUpdates!,
    if (allowStrictAvailabilityUpdates != null)
      'allowStrictAvailabilityUpdates': allowStrictAvailabilityUpdates!,
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

  AccountLabel.fromJson(core.Map json_)
    : this(
        accountId: json_['accountId'] as core.String?,
        description: json_['description'] as core.String?,
        labelId: json_['labelId'] as core.String?,
        labelType: json_['labelType'] as core.String?,
        name: json_['name'] as core.String?,
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

  AccountReturnCarrier.fromJson(core.Map json_)
    : this(
        carrierAccountId: json_['carrierAccountId'] as core.String?,
        carrierAccountName: json_['carrierAccountName'] as core.String?,
        carrierAccountNumber: json_['carrierAccountNumber'] as core.String?,
        carrierCode: json_['carrierCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (carrierAccountId != null) 'carrierAccountId': carrierAccountId!,
    if (carrierAccountName != null) 'carrierAccountName': carrierAccountName!,
    if (carrierAccountNumber != null)
      'carrierAccountNumber': carrierAccountNumber!,
    if (carrierCode != null) 'carrierCode': carrierCode!,
  };
}

/// Not available for MCAs
/// [accounts](https://support.google.com/merchants/answer/188487).
///
/// By turning on
/// [automatic shipping improvements](https://support.google.com/merchants/answer/10027038),
/// you are allowing Google to improve the accuracy of your delivery times shown
/// to shoppers using Google. More accurate delivery times, especially when
/// faster, typically lead to better conversion rates. Google will improve your
/// estimated delivery times based on various factors: * Delivery address of an
/// order * Current handling time and shipping time settings * Estimated
/// weekdays or business days * Parcel tracking data
class AccountShippingImprovements {
  /// Enables automatic shipping improvements.
  core.bool? allowShippingImprovements;

  AccountShippingImprovements({this.allowShippingImprovements});

  AccountShippingImprovements.fromJson(core.Map json_)
    : this(
        allowShippingImprovements:
            json_['allowShippingImprovements'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowShippingImprovements != null)
      'allowShippingImprovements': allowShippingImprovements!,
  };
}

/// The status of an account, that is, information about its products, which is
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

  AccountStatus.fromJson(core.Map json_)
    : this(
        accountId: json_['accountId'] as core.String?,
        accountLevelIssues:
            (json_['accountLevelIssues'] as core.List?)
                ?.map(
                  (value) => AccountStatusAccountLevelIssue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        accountManagement: json_['accountManagement'] as core.String?,
        kind: json_['kind'] as core.String?,
        products:
            (json_['products'] as core.List?)
                ?.map(
                  (value) => AccountStatusProducts.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        websiteClaimed: json_['websiteClaimed'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accountId != null) 'accountId': accountId!,
    if (accountLevelIssues != null) 'accountLevelIssues': accountLevelIssues!,
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

  AccountStatusAccountLevelIssue.fromJson(core.Map json_)
    : this(
        country: json_['country'] as core.String?,
        destination: json_['destination'] as core.String?,
        detail: json_['detail'] as core.String?,
        documentation: json_['documentation'] as core.String?,
        id: json_['id'] as core.String?,
        severity: json_['severity'] as core.String?,
        title: json_['title'] as core.String?,
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

  AccountStatusItemLevelIssue.fromJson(core.Map json_)
    : this(
        attributeName: json_['attributeName'] as core.String?,
        code: json_['code'] as core.String?,
        description: json_['description'] as core.String?,
        detail: json_['detail'] as core.String?,
        documentation: json_['documentation'] as core.String?,
        numItems: json_['numItems'] as core.String?,
        resolution: json_['resolution'] as core.String?,
        servability: json_['servability'] as core.String?,
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

  AccountStatusProducts.fromJson(core.Map json_)
    : this(
        channel: json_['channel'] as core.String?,
        country: json_['country'] as core.String?,
        destination: json_['destination'] as core.String?,
        itemLevelIssues:
            (json_['itemLevelIssues'] as core.List?)
                ?.map(
                  (value) => AccountStatusItemLevelIssue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        statistics:
            json_.containsKey('statistics')
                ? AccountStatusStatistics.fromJson(
                  json_['statistics'] as core.Map<core.String, core.dynamic>,
                )
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

  AccountStatusStatistics.fromJson(core.Map json_)
    : this(
        active: json_['active'] as core.String?,
        disapproved: json_['disapproved'] as core.String?,
        expiring: json_['expiring'] as core.String?,
        pending: json_['pending'] as core.String?,
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
  /// Updating the tax rules will enable "US" taxes (not reversible). Defining
  /// no rules is equivalent to not charging tax at all.
  core.List<AccountTaxTaxRule>? rules;

  AccountTax({this.accountId, this.kind, this.rules});

  AccountTax.fromJson(core.Map json_)
    : this(
        accountId: json_['accountId'] as core.String?,
        kind: json_['kind'] as core.String?,
        rules:
            (json_['rules'] as core.List?)
                ?.map(
                  (value) => AccountTaxTaxRule.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accountId != null) 'accountId': accountId!,
    if (kind != null) 'kind': kind!,
    if (rules != null) 'rules': rules!,
  };
}

/// Tax calculation rule to apply in a state or province (US only).
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

  AccountTaxTaxRule.fromJson(core.Map json_)
    : this(
        country: json_['country'] as core.String?,
        locationId: json_['locationId'] as core.String?,
        ratePercent: json_['ratePercent'] as core.String?,
        shippingTaxed: json_['shippingTaxed'] as core.bool?,
        useGlobalRate: json_['useGlobalRate'] as core.bool?,
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

  /// Whether user has standard read-only access.
  ///
  /// Optional.
  core.bool? readOnly;

  /// Whether user is a reporting manager.
  ///
  /// This role is equivalent to the Performance and insights role in Merchant
  /// Center.
  core.bool? reportingManager;

  AccountUser({
    this.admin,
    this.emailAddress,
    this.orderManager,
    this.paymentsAnalyst,
    this.paymentsManager,
    this.readOnly,
    this.reportingManager,
  });

  AccountUser.fromJson(core.Map json_)
    : this(
        admin: json_['admin'] as core.bool?,
        emailAddress: json_['emailAddress'] as core.String?,
        orderManager: json_['orderManager'] as core.bool?,
        paymentsAnalyst: json_['paymentsAnalyst'] as core.bool?,
        paymentsManager: json_['paymentsManager'] as core.bool?,
        readOnly: json_['readOnly'] as core.bool?,
        reportingManager: json_['reportingManager'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (admin != null) 'admin': admin!,
    if (emailAddress != null) 'emailAddress': emailAddress!,
    if (orderManager != null) 'orderManager': orderManager!,
    if (paymentsAnalyst != null) 'paymentsAnalyst': paymentsAnalyst!,
    if (paymentsManager != null) 'paymentsManager': paymentsManager!,
    if (readOnly != null) 'readOnly': readOnly!,
    if (reportingManager != null) 'reportingManager': reportingManager!,
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

  AccountYouTubeChannelLink({this.channelId, this.status});

  AccountYouTubeChannelLink.fromJson(core.Map json_)
    : this(
        channelId: json_['channelId'] as core.String?,
        status: json_['status'] as core.String?,
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

  AccountsAuthInfoResponse({this.accountIdentifiers, this.kind});

  AccountsAuthInfoResponse.fromJson(core.Map json_)
    : this(
        accountIdentifiers:
            (json_['accountIdentifiers'] as core.List?)
                ?.map(
                  (value) => AccountIdentifier.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accountIdentifiers != null) 'accountIdentifiers': accountIdentifiers!,
    if (kind != null) 'kind': kind!,
  };
}

class AccountsClaimWebsiteResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#accountsClaimWebsiteResponse`".
  core.String? kind;

  AccountsClaimWebsiteResponse({this.kind});

  AccountsClaimWebsiteResponse.fromJson(core.Map json_)
    : this(kind: json_['kind'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (kind != null) 'kind': kind!,
  };
}

class AccountsCustomBatchRequest {
  /// The request entries to be processed in the batch.
  core.List<AccountsCustomBatchRequestEntry>? entries;

  AccountsCustomBatchRequest({this.entries});

  AccountsCustomBatchRequest.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => AccountsCustomBatchRequestEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  AccountsCustomBatchRequestEntry.fromJson(core.Map json_)
    : this(
        account:
            json_.containsKey('account')
                ? Account.fromJson(
                  json_['account'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        accountId: json_['accountId'] as core.String?,
        batchId: json_['batchId'] as core.int?,
        force: json_['force'] as core.bool?,
        labelIds:
            (json_['labelIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        linkRequest:
            json_.containsKey('linkRequest')
                ? AccountsCustomBatchRequestEntryLinkRequest.fromJson(
                  json_['linkRequest'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        merchantId: json_['merchantId'] as core.String?,
        method: json_['method'] as core.String?,
        overwrite: json_['overwrite'] as core.bool?,
        view: json_['view'] as core.String?,
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
  /// "`paymentServiceProvider`" - "`localProductManager`"
  core.String? linkType;

  /// The ID of the linked account.
  core.String? linkedAccountId;

  /// Provided services.
  ///
  /// Acceptable values are: - "`shoppingAdsProductManagement`" -
  /// "`shoppingActionsProductManagement`" - "`shoppingActionsOrderManagement`"
  /// - "`paymentProcessing`" - "`localProductManagement`"
  core.List<core.String>? services;

  AccountsCustomBatchRequestEntryLinkRequest({
    this.action,
    this.linkType,
    this.linkedAccountId,
    this.services,
  });

  AccountsCustomBatchRequestEntryLinkRequest.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        linkType: json_['linkType'] as core.String?,
        linkedAccountId: json_['linkedAccountId'] as core.String?,
        services:
            (json_['services'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
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

  AccountsCustomBatchResponse({this.entries, this.kind});

  AccountsCustomBatchResponse.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => AccountsCustomBatchResponseEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
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

  /// A list of errors for failed custombatch entries.
  ///
  /// *Note:* Schema errors fail the whole request.
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

  AccountsCustomBatchResponseEntry.fromJson(core.Map json_)
    : this(
        account:
            json_.containsKey('account')
                ? Account.fromJson(
                  json_['account'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        batchId: json_['batchId'] as core.int?,
        errors:
            json_.containsKey('errors')
                ? Errors.fromJson(
                  json_['errors'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        kind: json_['kind'] as core.String?,
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

  AccountsLinkRequest.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        eCommercePlatformLinkInfo:
            json_.containsKey('eCommercePlatformLinkInfo')
                ? ECommercePlatformLinkInfo.fromJson(
                  json_['eCommercePlatformLinkInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        linkType: json_['linkType'] as core.String?,
        linkedAccountId: json_['linkedAccountId'] as core.String?,
        paymentServiceProviderLinkInfo:
            json_.containsKey('paymentServiceProviderLinkInfo')
                ? PaymentServiceProviderLinkInfo.fromJson(
                  json_['paymentServiceProviderLinkInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        services:
            (json_['services'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
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

  AccountsLinkResponse({this.kind});

  AccountsLinkResponse.fromJson(core.Map json_)
    : this(kind: json_['kind'] as core.String?);

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

  AccountsListLinksResponse({this.kind, this.links, this.nextPageToken});

  AccountsListLinksResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        links:
            (json_['links'] as core.List?)
                ?.map(
                  (value) => LinkedAccount.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
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

  AccountsListResponse({this.kind, this.nextPageToken, this.resources});

  AccountsListResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
        resources:
            (json_['resources'] as core.List?)
                ?.map(
                  (value) => Account.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  AccountsUpdateLabelsRequest({this.labelIds});

  AccountsUpdateLabelsRequest.fromJson(core.Map json_)
    : this(
        labelIds:
            (json_['labelIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
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

  AccountsUpdateLabelsResponse({this.kind});

  AccountsUpdateLabelsResponse.fromJson(core.Map json_)
    : this(kind: json_['kind'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (kind != null) 'kind': kind!,
  };
}

class AccountstatusesCustomBatchRequest {
  /// The request entries to be processed in the batch.
  core.List<AccountstatusesCustomBatchRequestEntry>? entries;

  AccountstatusesCustomBatchRequest({this.entries});

  AccountstatusesCustomBatchRequest.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => AccountstatusesCustomBatchRequestEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  AccountstatusesCustomBatchRequestEntry.fromJson(core.Map json_)
    : this(
        accountId: json_['accountId'] as core.String?,
        batchId: json_['batchId'] as core.int?,
        destinations:
            (json_['destinations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        merchantId: json_['merchantId'] as core.String?,
        method: json_['method'] as core.String?,
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

  AccountstatusesCustomBatchResponse({this.entries, this.kind});

  AccountstatusesCustomBatchResponse.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => AccountstatusesCustomBatchResponseEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
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

  /// A list of errors for failed custombatch entries.
  ///
  /// *Note:* Schema errors fail the whole request.
  Errors? errors;

  AccountstatusesCustomBatchResponseEntry({
    this.accountStatus,
    this.batchId,
    this.errors,
  });

  AccountstatusesCustomBatchResponseEntry.fromJson(core.Map json_)
    : this(
        accountStatus:
            json_.containsKey('accountStatus')
                ? AccountStatus.fromJson(
                  json_['accountStatus'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        batchId: json_['batchId'] as core.int?,
        errors:
            json_.containsKey('errors')
                ? Errors.fromJson(
                  json_['errors'] as core.Map<core.String, core.dynamic>,
                )
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

  AccountstatusesListResponse({this.kind, this.nextPageToken, this.resources});

  AccountstatusesListResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
        resources:
            (json_['resources'] as core.List?)
                ?.map(
                  (value) => AccountStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  AccounttaxCustomBatchRequest({this.entries});

  AccounttaxCustomBatchRequest.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => AccounttaxCustomBatchRequestEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  AccounttaxCustomBatchRequestEntry.fromJson(core.Map json_)
    : this(
        accountId: json_['accountId'] as core.String?,
        accountTax:
            json_.containsKey('accountTax')
                ? AccountTax.fromJson(
                  json_['accountTax'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        batchId: json_['batchId'] as core.int?,
        merchantId: json_['merchantId'] as core.String?,
        method: json_['method'] as core.String?,
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

  AccounttaxCustomBatchResponse({this.entries, this.kind});

  AccounttaxCustomBatchResponse.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => AccounttaxCustomBatchResponseEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
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

  /// A list of errors for failed custombatch entries.
  ///
  /// *Note:* Schema errors fail the whole request.
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

  AccounttaxCustomBatchResponseEntry.fromJson(core.Map json_)
    : this(
        accountTax:
            json_.containsKey('accountTax')
                ? AccountTax.fromJson(
                  json_['accountTax'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        batchId: json_['batchId'] as core.int?,
        errors:
            json_.containsKey('errors')
                ? Errors.fromJson(
                  json_['errors'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        kind: json_['kind'] as core.String?,
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

  AccounttaxListResponse({this.kind, this.nextPageToken, this.resources});

  AccounttaxListResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
        resources:
            (json_['resources'] as core.List?)
                ?.map(
                  (value) => AccountTax.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (kind != null) 'kind': kind!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (resources != null) 'resources': resources!,
  };
}

/// An actionable step that can be executed to solve the issue.
class Action {
  /// Action implemented and performed in (your) third-party application.
  ///
  /// The application should point the merchant to the place, where they can
  /// access the corresponding functionality or provide instructions, if the
  /// specific functionality is not available.
  BuiltInSimpleAction? builtinSimpleAction;

  /// Action implemented and performed in (your) third-party application.
  ///
  /// The application needs to show an additional content and input form to the
  /// merchant as specified for given action. They can trigger the action only
  /// when they provided all required inputs.
  BuiltInUserInputAction? builtinUserInputAction;

  /// Label of the action button.
  core.String? buttonLabel;

  /// Action that is implemented and performed outside of (your) third-party
  /// application.
  ///
  /// The application needs to redirect the merchant to the external location
  /// where they can perform the action.
  ExternalAction? externalAction;

  /// Controlling whether the button is active or disabled.
  ///
  /// The value is 'false' when the action was already requested or is not
  /// available. If the action is not available then a reason will be present.
  /// If (your) third-party application shows a disabled button for action that
  /// is not available, then it should also show reasons.
  core.bool? isAvailable;

  /// List of reasons why the action is not available.
  ///
  /// The list of reasons is empty if the action is available. If there is only
  /// one reason, it can be displayed next to the disabled button. If there are
  /// more reasons, all of them should be displayed, for example in a pop-up
  /// dialog.
  core.List<ActionReason>? reasons;

  Action({
    this.builtinSimpleAction,
    this.builtinUserInputAction,
    this.buttonLabel,
    this.externalAction,
    this.isAvailable,
    this.reasons,
  });

  Action.fromJson(core.Map json_)
    : this(
        builtinSimpleAction:
            json_.containsKey('builtinSimpleAction')
                ? BuiltInSimpleAction.fromJson(
                  json_['builtinSimpleAction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        builtinUserInputAction:
            json_.containsKey('builtinUserInputAction')
                ? BuiltInUserInputAction.fromJson(
                  json_['builtinUserInputAction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        buttonLabel: json_['buttonLabel'] as core.String?,
        externalAction:
            json_.containsKey('externalAction')
                ? ExternalAction.fromJson(
                  json_['externalAction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        isAvailable: json_['isAvailable'] as core.bool?,
        reasons:
            (json_['reasons'] as core.List?)
                ?.map(
                  (value) => ActionReason.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (builtinSimpleAction != null)
      'builtinSimpleAction': builtinSimpleAction!,
    if (builtinUserInputAction != null)
      'builtinUserInputAction': builtinUserInputAction!,
    if (buttonLabel != null) 'buttonLabel': buttonLabel!,
    if (externalAction != null) 'externalAction': externalAction!,
    if (isAvailable != null) 'isAvailable': isAvailable!,
    if (reasons != null) 'reasons': reasons!,
  };
}

/// Flow that can be selected for an action.
///
/// When merchant selects a flow, application should open a dialog with more
/// information and input form.
class ActionFlow {
  /// Label for the button to trigger the action from the action dialog.
  ///
  /// For example: "Request review"
  core.String? dialogButtonLabel;

  /// Important message to be highlighted in the request dialog.
  ///
  /// For example: "You can only request a review for disagreeing with this
  /// issue once. If it's not approved, you'll need to fix the issue and wait a
  /// few days before you can request another review."
  Callout? dialogCallout;

  /// Message displayed in the request dialog.
  ///
  /// For example: "Make sure you've fixed all your country-specific issues. If
  /// not, you may have to wait 7 days to request another review". There may be
  /// an more information to be shown in a tooltip.
  TextWithTooltip? dialogMessage;

  /// Title of the request dialog.
  ///
  /// For example: "Before you request a review"
  core.String? dialogTitle;

  /// Not for display but need to be sent back for the selected action flow.
  core.String? id;

  /// A list of input fields.
  core.List<InputField>? inputs;

  /// Text value describing the intent for the action flow.
  ///
  /// It can be used as an input label if merchant needs to pick one of multiple
  /// flows. For example: "I disagree with the issue"
  core.String? label;

  ActionFlow({
    this.dialogButtonLabel,
    this.dialogCallout,
    this.dialogMessage,
    this.dialogTitle,
    this.id,
    this.inputs,
    this.label,
  });

  ActionFlow.fromJson(core.Map json_)
    : this(
        dialogButtonLabel: json_['dialogButtonLabel'] as core.String?,
        dialogCallout:
            json_.containsKey('dialogCallout')
                ? Callout.fromJson(
                  json_['dialogCallout'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        dialogMessage:
            json_.containsKey('dialogMessage')
                ? TextWithTooltip.fromJson(
                  json_['dialogMessage'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        dialogTitle: json_['dialogTitle'] as core.String?,
        id: json_['id'] as core.String?,
        inputs:
            (json_['inputs'] as core.List?)
                ?.map(
                  (value) => InputField.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        label: json_['label'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dialogButtonLabel != null) 'dialogButtonLabel': dialogButtonLabel!,
    if (dialogCallout != null) 'dialogCallout': dialogCallout!,
    if (dialogMessage != null) 'dialogMessage': dialogMessage!,
    if (dialogTitle != null) 'dialogTitle': dialogTitle!,
    if (id != null) 'id': id!,
    if (inputs != null) 'inputs': inputs!,
    if (label != null) 'label': label!,
  };
}

/// Input provided by the merchant.
class ActionInput {
  /// Id of the selected action flow.
  ///
  /// Required.
  core.String? actionFlowId;

  /// Values for input fields.
  ///
  /// Required.
  core.List<InputValue>? inputValues;

  ActionInput({this.actionFlowId, this.inputValues});

  ActionInput.fromJson(core.Map json_)
    : this(
        actionFlowId: json_['actionFlowId'] as core.String?,
        inputValues:
            (json_['inputValues'] as core.List?)
                ?.map(
                  (value) => InputValue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actionFlowId != null) 'actionFlowId': actionFlowId!,
    if (inputValues != null) 'inputValues': inputValues!,
  };
}

/// A single reason why the action is not available.
class ActionReason {
  /// An action that needs to be performed to solve the problem represented by
  /// this reason.
  ///
  /// This action will always be available. Should be rendered as a link or
  /// button next to the summarizing message. For example, the review may be
  /// available only once merchant configure all required attributes. In such a
  /// situation this action can be a link to the form, where they can fill the
  /// missing attribute to unblock the main action.
  ///
  /// Optional.
  Action? action;

  /// Detailed explanation of the reason.
  ///
  /// Should be displayed as a hint if present.
  core.String? detail;

  /// Messages summarizing the reason, why the action is not available.
  ///
  /// For example: "Review requested on Jan 03. Review requests can take a few
  /// days to complete."
  core.String? message;

  ActionReason({this.action, this.detail, this.message});

  ActionReason.fromJson(core.Map json_)
    : this(
        action:
            json_.containsKey('action')
                ? Action.fromJson(
                  json_['action'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        detail: json_['detail'] as core.String?,
        message: json_['message'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (action != null) 'action': action!,
    if (detail != null) 'detail': detail!,
    if (message != null) 'message': message!,
  };
}

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
  /// May also include dependent localities or sublocalities (for example,
  /// neighborhoods or suburbs).
  ///
  /// Required.
  core.String? city;

  /// [CLDR country code](https://github.com/unicode-org/cldr/blob/latest/common/main/en.xml)
  /// (for example, "US").
  ///
  /// Required.
  core.String? country;

  /// Postal code or ZIP (for example, "94043").
  ///
  /// Required.
  core.String? postalCode;

  /// Street-level part of the address.
  ///
  /// Use `\n` to add a second line.
  core.String? streetAddress;

  Address({
    this.administrativeArea,
    this.city,
    this.country,
    this.postalCode,
    this.streetAddress,
  });

  Address.fromJson(core.Map json_)
    : this(
        administrativeArea: json_['administrativeArea'] as core.String?,
        city: json_['city'] as core.String?,
        country: json_['country'] as core.String?,
        postalCode: json_['postalCode'] as core.String?,
        streetAddress: json_['streetAddress'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (administrativeArea != null) 'administrativeArea': administrativeArea!,
    if (city != null) 'city': city!,
    if (country != null) 'country': country!,
    if (postalCode != null) 'postalCode': postalCode!,
    if (streetAddress != null) 'streetAddress': streetAddress!,
  };
}

/// The Alternate Dispute Resolution (ADR) that may be available to merchants in
/// some regions.
///
/// If present, the link should be shown on the same page as the list of issues.
class AlternateDisputeResolution {
  /// The label for the alternate dispute resolution link.
  core.String? label;

  /// The URL pointing to a page, where merchant can request alternative dispute
  /// resolution with an
  /// [external body](https://support.google.com/european-union-digital-services-act-redress-options/answer/13535501).
  core.String? uri;

  AlternateDisputeResolution({this.label, this.uri});

  AlternateDisputeResolution.fromJson(core.Map json_)
    : this(
        label: json_['label'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (label != null) 'label': label!,
    if (uri != null) 'uri': uri!,
  };
}

/// Represents attribution settings for conversion sources receiving
/// pre-attribution data.
class AttributionSettings {
  /// Lookback windows (in days) used for attribution in this source.
  ///
  /// Supported values are 7, 30, 40.
  ///
  /// Required.
  core.int? attributionLookbackWindowInDays;

  ///
  /// Possible string values are:
  /// - "ATTRIBUTION_MODEL_UNSPECIFIED"
  /// - "CROSS_CHANNEL_LAST_CLICK" : Cross-channel Last Click model.
  /// - "ADS_PREFERRED_LAST_CLICK" : Ads-preferred Last Click model.
  /// - "CROSS_CHANNEL_DATA_DRIVEN" : Cross-channel Data Driven model.
  /// - "CROSS_CHANNEL_FIRST_CLICK" : Cross-channel First Click model.
  /// - "CROSS_CHANNEL_LINEAR" : Cross-channel Linear model.
  /// - "CROSS_CHANNEL_POSITION_BASED" : Cross-channel Position Based model.
  /// - "CROSS_CHANNEL_TIME_DECAY" : Cross-channel Time Decay model.
  core.String? attributionModel;

  /// Unordered list.
  ///
  /// List of different conversion types a conversion event can be classified
  /// as. A standard "purchase" type will be automatically created if this list
  /// is empty at creation time.
  ///
  /// Immutable.
  core.List<AttributionSettingsConversionType>? conversionType;

  AttributionSettings({
    this.attributionLookbackWindowInDays,
    this.attributionModel,
    this.conversionType,
  });

  AttributionSettings.fromJson(core.Map json_)
    : this(
        attributionLookbackWindowInDays:
            json_['attributionLookbackWindowInDays'] as core.int?,
        attributionModel: json_['attributionModel'] as core.String?,
        conversionType:
            (json_['conversionType'] as core.List?)
                ?.map(
                  (value) => AttributionSettingsConversionType.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributionLookbackWindowInDays != null)
      'attributionLookbackWindowInDays': attributionLookbackWindowInDays!,
    if (attributionModel != null) 'attributionModel': attributionModel!,
    if (conversionType != null) 'conversionType': conversionType!,
  };
}

/// Message representing a types of conversion events
class AttributionSettingsConversionType {
  /// Option indicating if the type should be included in Merchant Center
  /// reporting.
  ///
  /// Output only.
  core.bool? includeInReporting;

  /// Conversion event name, as it'll be reported by the client.
  ///
  /// Output only.
  core.String? name;

  AttributionSettingsConversionType({this.includeInReporting, this.name});

  AttributionSettingsConversionType.fromJson(core.Map json_)
    : this(
        includeInReporting: json_['includeInReporting'] as core.bool?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (includeInReporting != null) 'includeInReporting': includeInReporting!,
    if (name != null) 'name': name!,
  };
}

/// Fields related to the
/// [Best sellers reports](https://support.google.com/merchants/answer/9488679).
class BestSellers {
  /// Google product category ID to calculate the ranking for, represented in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  ///
  /// If a `WHERE` condition on `best_sellers.category_id` is not specified in
  /// the query, rankings for all top-level categories are returned.
  core.String? categoryId;

  /// Country where the ranking is calculated.
  ///
  /// A `WHERE` condition on `best_sellers.country_code` is required in the
  /// query.
  core.String? countryCode;

  /// Popularity rank in the previous week or month.
  core.String? previousRank;

  /// Estimated demand in relation to the item with the highest popularity rank
  /// in the same category and country in the previous week or month.
  /// Possible string values are:
  /// - "RELATIVE_DEMAND_UNSPECIFIED" : Relative demand is unknown.
  /// - "VERY_LOW" : Demand is 0-5% of the demand of the highest ranked product
  /// clusters or brands.
  /// - "LOW" : Demand is 6-10% of the demand of the highest ranked product
  /// clusters or brands.
  /// - "MEDIUM" : Demand is 11-20% of the demand of the highest ranked product
  /// clusters or brands.
  /// - "HIGH" : Demand is 21-50% of the demand of the highest ranked product
  /// clusters or brands.
  /// - "VERY_HIGH" : Demand is 51-100% of the demand of the highest ranked
  /// product clusters or brands.
  core.String? previousRelativeDemand;

  /// Popularity on Shopping ads and free listings, in the selected category and
  /// country, based on the estimated number of units sold.
  core.String? rank;

  /// Estimated demand in relation to the item with the highest popularity rank
  /// in the same category and country.
  /// Possible string values are:
  /// - "RELATIVE_DEMAND_UNSPECIFIED" : Relative demand is unknown.
  /// - "VERY_LOW" : Demand is 0-5% of the demand of the highest ranked product
  /// clusters or brands.
  /// - "LOW" : Demand is 6-10% of the demand of the highest ranked product
  /// clusters or brands.
  /// - "MEDIUM" : Demand is 11-20% of the demand of the highest ranked product
  /// clusters or brands.
  /// - "HIGH" : Demand is 21-50% of the demand of the highest ranked product
  /// clusters or brands.
  /// - "VERY_HIGH" : Demand is 51-100% of the demand of the highest ranked
  /// product clusters or brands.
  core.String? relativeDemand;

  /// Change in the estimated demand.
  ///
  /// Whether it rose, sank or remained flat.
  /// Possible string values are:
  /// - "RELATIVE_DEMAND_CHANGE_TYPE_UNSPECIFIED" : Relative demand change is
  /// unknown.
  /// - "SINKER" : Relative demand is lower than previous time period.
  /// - "FLAT" : Relative demand is equal to previous time period.
  /// - "RISER" : Relative demand is higher than the previous time period.
  core.String? relativeDemandChange;

  /// Report date.
  ///
  /// The value of this field can only be one of the following: * The first day
  /// of the week (Monday) for weekly reports. * The first day of the month for
  /// monthly reports. If a `WHERE` condition on `best_sellers.report_date` is
  /// not specified in the query, the latest available weekly or monthly report
  /// is returned.
  Date? reportDate;

  /// Granularity of the report.
  ///
  /// The ranking can be done over a week or a month timeframe. A `WHERE`
  /// condition on `best_sellers.report_granularity` is required in the query.
  /// Possible string values are:
  /// - "REPORT_GRANULARITY_UNSPECIFIED" : Report granularity is unknown.
  /// - "WEEKLY" : Ranking is done over a week timeframe.
  /// - "MONTHLY" : Ranking is done over a month timeframe.
  core.String? reportGranularity;

  BestSellers({
    this.categoryId,
    this.countryCode,
    this.previousRank,
    this.previousRelativeDemand,
    this.rank,
    this.relativeDemand,
    this.relativeDemandChange,
    this.reportDate,
    this.reportGranularity,
  });

  BestSellers.fromJson(core.Map json_)
    : this(
        categoryId: json_['categoryId'] as core.String?,
        countryCode: json_['countryCode'] as core.String?,
        previousRank: json_['previousRank'] as core.String?,
        previousRelativeDemand: json_['previousRelativeDemand'] as core.String?,
        rank: json_['rank'] as core.String?,
        relativeDemand: json_['relativeDemand'] as core.String?,
        relativeDemandChange: json_['relativeDemandChange'] as core.String?,
        reportDate:
            json_.containsKey('reportDate')
                ? Date.fromJson(
                  json_['reportDate'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        reportGranularity: json_['reportGranularity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (categoryId != null) 'categoryId': categoryId!,
    if (countryCode != null) 'countryCode': countryCode!,
    if (previousRank != null) 'previousRank': previousRank!,
    if (previousRelativeDemand != null)
      'previousRelativeDemand': previousRelativeDemand!,
    if (rank != null) 'rank': rank!,
    if (relativeDemand != null) 'relativeDemand': relativeDemand!,
    if (relativeDemandChange != null)
      'relativeDemandChange': relativeDemandChange!,
    if (reportDate != null) 'reportDate': reportDate!,
    if (reportGranularity != null) 'reportGranularity': reportGranularity!,
  };
}

/// Brand fields.
///
/// Values are only set for fields requested explicitly in the request's search
/// query.
class Brand {
  /// Name of the brand.
  core.String? name;

  Brand({this.name});

  Brand.fromJson(core.Map json_) : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
  };
}

/// A detailed impact breakdown for a group of regions where the impact of the
/// issue on different shopping destinations is the same.
class Breakdown {
  /// Human readable, localized description of issue's effect on different
  /// targets.
  ///
  /// Should be rendered as a list. For example: * "Products not showing in ads"
  /// * "Products not showing organically"
  core.List<core.String>? details;

  /// Lists of regions.
  ///
  /// Should be rendered as a title for this group of details. The full list
  /// should be shown to merchant. If the list is too long, it is recommended to
  /// make it expandable.
  core.List<BreakdownRegion>? regions;

  Breakdown({this.details, this.regions});

  Breakdown.fromJson(core.Map json_)
    : this(
        details:
            (json_['details'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        regions:
            (json_['regions'] as core.List?)
                ?.map(
                  (value) => BreakdownRegion.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (details != null) 'details': details!,
    if (regions != null) 'regions': regions!,
  };
}

/// Region with code and localized name.
class BreakdownRegion {
  /// The
  /// [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
  core.String? code;

  /// The localized name of the region.
  ///
  /// For region with code='001' the value is 'All countries' or the equivalent
  /// in other languages.
  core.String? name;

  BreakdownRegion({this.code, this.name});

  BreakdownRegion.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (code != null) 'code': code!,
    if (name != null) 'name': name!,
  };
}

/// Action that is implemented and performed in (your) third-party application.
///
/// Represents various functionality that is expected to be available to
/// merchant and will help them with resolving the issue. The application should
/// point the merchant to the place, where they can access the corresponding
/// functionality. If the functionality is not supported, it is recommended to
/// explain the situation to merchant and provide them with instructions how to
/// solve the issue.
class BuiltInSimpleAction {
  /// Long text from an external source that should be available to the
  /// merchant.
  ///
  /// Present when the type is `SHOW_ADDITIONAL_CONTENT`.
  BuiltInSimpleActionAdditionalContent? additionalContent;

  /// The attribute that needs to be updated.
  ///
  /// Present when the type is `EDIT_ITEM_ATTRIBUTE`. This field contains a code
  /// for attribute, represented in snake_case. You can find a list of product's
  /// attributes, with their codes
  /// [here](https://support.google.com/merchants/answer/7052112).
  core.String? attributeCode;

  /// The type of action that represents a functionality that is expected to be
  /// available in third-party application.
  /// Possible string values are:
  /// - "BUILT_IN_SIMPLE_ACTION_TYPE_UNSPECIFIED" : Default value. Will never be
  /// provided by the API.
  /// - "VERIFY_PHONE" : Redirect merchant to the part of your application where
  /// they can verify their phone.
  /// - "CLAIM_WEBSITE" : Redirect merchant to the part of your application
  /// where they can claim their website.
  /// - "ADD_PRODUCTS" : Redirect merchant to the part of your application where
  /// they can add products.
  /// - "ADD_CONTACT_INFO" : Open a form where the merchant can edit their
  /// contact information.
  /// - "LINK_ADS_ACCOUNT" : Redirect merchant to the part of your application
  /// where they can link ads account.
  /// - "ADD_BUSINESS_REGISTRATION_NUMBER" : Open a form where the merchant can
  /// add their business registration number.
  /// - "EDIT_ITEM_ATTRIBUTE" : Open a form where the merchant can edit an
  /// attribute. The attribute that needs to be updated is specified in
  /// attribute_code field of the action.
  /// - "FIX_ACCOUNT_ISSUE" : Redirect merchant from the product issues to the
  /// diagnostic page with their account issues in your application. This action
  /// will be returned only for product issues that are caused by an account
  /// issue and thus merchant should resolve the problem on the account level.
  /// - "SHOW_ADDITIONAL_CONTENT" : Show additional content to the merchant.
  /// This action will be used for example to deliver a justification from
  /// national authority.
  core.String? type;

  BuiltInSimpleAction({this.additionalContent, this.attributeCode, this.type});

  BuiltInSimpleAction.fromJson(core.Map json_)
    : this(
        additionalContent:
            json_.containsKey('additionalContent')
                ? BuiltInSimpleActionAdditionalContent.fromJson(
                  json_['additionalContent']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        attributeCode: json_['attributeCode'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalContent != null) 'additionalContent': additionalContent!,
    if (attributeCode != null) 'attributeCode': attributeCode!,
    if (type != null) 'type': type!,
  };
}

/// Long text from external source.
class BuiltInSimpleActionAdditionalContent {
  /// Long text organized into paragraphs.
  core.List<core.String>? paragraphs;

  /// Title of the additional content;
  core.String? title;

  BuiltInSimpleActionAdditionalContent({this.paragraphs, this.title});

  BuiltInSimpleActionAdditionalContent.fromJson(core.Map json_)
    : this(
        paragraphs:
            (json_['paragraphs'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (paragraphs != null) 'paragraphs': paragraphs!,
    if (title != null) 'title': title!,
  };
}

/// Action that is implemented and performed in (your) third-party application.
///
/// The application needs to show an additional content and input form to the
/// merchant. They can start the action only when they provided all required
/// inputs. The application will request processing of the action by calling the
/// [triggeraction method](https://developers.google.com/shopping-content/reference/rest/v2.1/merchantsupport/triggeraction).
class BuiltInUserInputAction {
  /// Internal details.
  ///
  /// Not for display but need to be sent back when triggering the action.
  core.String? actionContext;

  /// Actions may provide multiple different flows.
  ///
  /// Merchant selects one that fits best to their intent. Selecting the flow is
  /// the first step in user's interaction with the action. It affects what
  /// input fields will be available and required and also how the request will
  /// be processed.
  core.List<ActionFlow>? flows;

  BuiltInUserInputAction({this.actionContext, this.flows});

  BuiltInUserInputAction.fromJson(core.Map json_)
    : this(
        actionContext: json_['actionContext'] as core.String?,
        flows:
            (json_['flows'] as core.List?)
                ?.map(
                  (value) => ActionFlow.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actionContext != null) 'actionContext': actionContext!,
    if (flows != null) 'flows': flows!,
  };
}

class BusinessDayConfig {
  /// Regular business days, such as '"monday"'.
  ///
  /// May not be empty.
  core.List<core.String>? businessDays;

  BusinessDayConfig({this.businessDays});

  BusinessDayConfig.fromJson(core.Map json_)
    : this(
        businessDays:
            (json_['businessDays'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (businessDays != null) 'businessDays': businessDays!,
  };
}

/// An important message that should be highlighted.
///
/// Usually displayed as a banner.
class Callout {
  /// A full message that needs to be shown to the merchant.
  TextWithTooltip? fullMessage;

  /// Can be used to render messages with different severity in different
  /// styles.
  ///
  /// Snippets off all types contain important information that should be
  /// displayed to merchants.
  /// Possible string values are:
  /// - "CALLOUT_STYLE_HINT_UNSPECIFIED" : Default value. Will never be provided
  /// by the API.
  /// - "ERROR" : The most important type of information highlighting problems,
  /// like an unsuccessful outcome of previously requested actions.
  /// - "WARNING" : Information warning about pending problems, risks or
  /// deadlines.
  /// - "INFO" : Default severity for important information like pending status
  /// of previously requested action or cooldown for re-review.
  core.String? styleHint;

  Callout({this.fullMessage, this.styleHint});

  Callout.fromJson(core.Map json_)
    : this(
        fullMessage:
            json_.containsKey('fullMessage')
                ? TextWithTooltip.fromJson(
                  json_['fullMessage'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        styleHint: json_['styleHint'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fullMessage != null) 'fullMessage': fullMessage!,
    if (styleHint != null) 'styleHint': styleHint!,
  };
}

class CarrierRate {
  /// Carrier service, such as `"UPS"` or `"Fedex"`.
  ///
  /// The list of supported carriers can be retrieved through the
  /// `getSupportedCarriers` method. Required.
  core.String? carrierName;

  /// Carrier service, such as `"ground"` or `"2 days"`.
  ///
  /// The list of supported services for a carrier can be retrieved through the
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

  CarrierRate.fromJson(core.Map json_)
    : this(
        carrierName: json_['carrierName'] as core.String?,
        carrierService: json_['carrierService'] as core.String?,
        flatAdjustment:
            json_.containsKey('flatAdjustment')
                ? Price.fromJson(
                  json_['flatAdjustment']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        originPostalCode: json_['originPostalCode'] as core.String?,
        percentageAdjustment: json_['percentageAdjustment'] as core.String?,
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
  /// The CLDR country code of the carrier (for example, "US").
  ///
  /// Always present.
  core.String? country;

  /// A list of services supported for EDD (Estimated Delivery Date)
  /// calculation.
  ///
  /// This is the list of valid values for
  /// WarehouseBasedDeliveryTime.carrierService.
  core.List<core.String>? eddServices;

  /// The name of the carrier (for example, `"UPS"`).
  ///
  /// Always present.
  core.String? name;

  /// A list of supported services (for example, `"ground"`) for that carrier.
  ///
  /// Contains at least one service. This is the list of valid values for
  /// CarrierRate.carrierService.
  core.List<core.String>? services;

  CarriersCarrier({this.country, this.eddServices, this.name, this.services});

  CarriersCarrier.fromJson(core.Map json_)
    : this(
        country: json_['country'] as core.String?,
        eddServices:
            (json_['eddServices'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        name: json_['name'] as core.String?,
        services:
            (json_['services'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (country != null) 'country': country!,
    if (eddServices != null) 'eddServices': eddServices!,
    if (name != null) 'name': name!,
    if (services != null) 'services': services!,
  };
}

/// `CheckoutSettings` for a specific merchant ID.
class CheckoutSettings {
  /// The effective value of enrollment state for a given merchant ID.
  ///
  /// If account level settings are present then this value will be a copy of
  /// the account level settings. Otherwise, it will have the value of the
  /// parent account.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CHECKOUT_ON_MERCHANT_ENROLLMENT_STATE_UNSPECIFIED" : Default enrollment
  /// state when enrollment state is not specified.
  /// - "INACTIVE" : Merchant has not enrolled into the feature.
  /// - "ENROLLED" : Merchant has enrolled into the feature by providing either
  /// an account level URL or checkout URLs as part of their feed.
  /// - "OPT_OUT" : Merchant has previously enrolled but opted out of the
  /// feature.
  core.String? effectiveEnrollmentState;

  /// The effective value of review state for a given merchant ID.
  ///
  /// If account level settings are present then this value will be a copy of
  /// the account level settings. Otherwise, it will have the value of the
  /// parent account.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CHECKOUT_ON_MERCHANT_REVIEW_STATE_UNSPECIFIED" : Default review state
  /// when review state is not specified.
  /// - "IN_REVIEW" : Merchant provided URLs are being reviewed for data quality
  /// issues.
  /// - "APPROVED" : Merchant account has been approved. Indicates the data
  /// quality checks have passed.
  /// - "DISAPPROVED" : Merchant account has been disapproved due to data
  /// quality issues.
  core.String? effectiveReviewState;

  /// The effective value of `url_settings` for a given merchant ID.
  ///
  /// If account level settings are present then this value will be a copy of
  /// the account level settings. Otherwise, it will have the value of the
  /// parent account.
  UrlSettings? effectiveUriSettings;

  /// Reflects the merchant enrollment state in `Checkout` feature.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CHECKOUT_ON_MERCHANT_ENROLLMENT_STATE_UNSPECIFIED" : Default enrollment
  /// state when enrollment state is not specified.
  /// - "INACTIVE" : Merchant has not enrolled into the feature.
  /// - "ENROLLED" : Merchant has enrolled into the feature by providing either
  /// an account level URL or checkout URLs as part of their feed.
  /// - "OPT_OUT" : Merchant has previously enrolled but opted out of the
  /// feature.
  core.String? enrollmentState;

  /// The ID of the account.
  ///
  /// Required.
  core.String? merchantId;

  /// Reflects the merchant review state in `Checkout` feature.
  ///
  /// This is set based on the data quality reviews of the URL provided by the
  /// merchant. A merchant with enrollment state as `ENROLLED` can be in the
  /// following review states: `IN_REVIEW`, `APPROVED` or `DISAPPROVED`. A
  /// merchant must be in an enrollment_state of `ENROLLED` before a review can
  /// begin for the merchant.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CHECKOUT_ON_MERCHANT_REVIEW_STATE_UNSPECIFIED" : Default review state
  /// when review state is not specified.
  /// - "IN_REVIEW" : Merchant provided URLs are being reviewed for data quality
  /// issues.
  /// - "APPROVED" : Merchant account has been approved. Indicates the data
  /// quality checks have passed.
  /// - "DISAPPROVED" : Merchant account has been disapproved due to data
  /// quality issues.
  core.String? reviewState;

  /// URL settings for cart or checkout URL.
  UrlSettings? uriSettings;

  CheckoutSettings({
    this.effectiveEnrollmentState,
    this.effectiveReviewState,
    this.effectiveUriSettings,
    this.enrollmentState,
    this.merchantId,
    this.reviewState,
    this.uriSettings,
  });

  CheckoutSettings.fromJson(core.Map json_)
    : this(
        effectiveEnrollmentState:
            json_['effectiveEnrollmentState'] as core.String?,
        effectiveReviewState: json_['effectiveReviewState'] as core.String?,
        effectiveUriSettings:
            json_.containsKey('effectiveUriSettings')
                ? UrlSettings.fromJson(
                  json_['effectiveUriSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        enrollmentState: json_['enrollmentState'] as core.String?,
        merchantId: json_['merchantId'] as core.String?,
        reviewState: json_['reviewState'] as core.String?,
        uriSettings:
            json_.containsKey('uriSettings')
                ? UrlSettings.fromJson(
                  json_['uriSettings'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (effectiveEnrollmentState != null)
      'effectiveEnrollmentState': effectiveEnrollmentState!,
    if (effectiveReviewState != null)
      'effectiveReviewState': effectiveReviewState!,
    if (effectiveUriSettings != null)
      'effectiveUriSettings': effectiveUriSettings!,
    if (enrollmentState != null) 'enrollmentState': enrollmentState!,
    if (merchantId != null) 'merchantId': merchantId!,
    if (reviewState != null) 'reviewState': reviewState!,
    if (uriSettings != null) 'uriSettings': uriSettings!,
  };
}

/// Product property for the Cloud Retail API.
///
/// For example, properties for a TV product could be "Screen-Resolution" or
/// "Screen-Size".
class CloudExportAdditionalProperties {
  /// Boolean value of the given property.
  ///
  /// For example for a TV product, "True" or "False" if the screen is UHD.
  core.bool? boolValue;

  /// Float values of the given property.
  ///
  /// For example for a TV product 1.2345. Maximum number of specified values
  /// for this field is 400. Values are stored in an arbitrary but consistent
  /// order.
  core.List<core.double>? floatValue;

  /// Integer values of the given property.
  ///
  /// For example, 1080 for a screen resolution of a TV product. Maximum number
  /// of specified values for this field is 400. Values are stored in an
  /// arbitrary but consistent order.
  core.List<core.String>? intValue;

  /// Maximum float value of the given property.
  ///
  /// For example for a TV product 100.00.
  core.double? maxValue;

  /// Minimum float value of the given property.
  ///
  /// For example for a TV product 1.00.
  core.double? minValue;

  /// Name of the given property.
  ///
  /// For example, "Screen-Resolution" for a TV product. Maximum string size is
  /// 256 characters.
  core.String? propertyName;

  /// Text value of the given property.
  ///
  /// For example, "8K(UHD)" could be a text value for a TV product. Maximum
  /// number of specified values for this field is 400. Values are stored in an
  /// arbitrary but consistent order. Maximum string size is 256 characters.
  core.List<core.String>? textValue;

  /// Unit of the given property.
  ///
  /// For example, "Pixels" for a TV product. Maximum string size is 256 bytes.
  core.String? unitCode;

  CloudExportAdditionalProperties({
    this.boolValue,
    this.floatValue,
    this.intValue,
    this.maxValue,
    this.minValue,
    this.propertyName,
    this.textValue,
    this.unitCode,
  });

  CloudExportAdditionalProperties.fromJson(core.Map json_)
    : this(
        boolValue: json_['boolValue'] as core.bool?,
        floatValue:
            (json_['floatValue'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        intValue:
            (json_['intValue'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        maxValue: (json_['maxValue'] as core.num?)?.toDouble(),
        minValue: (json_['minValue'] as core.num?)?.toDouble(),
        propertyName: json_['propertyName'] as core.String?,
        textValue:
            (json_['textValue'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        unitCode: json_['unitCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boolValue != null) 'boolValue': boolValue!,
    if (floatValue != null) 'floatValue': floatValue!,
    if (intValue != null) 'intValue': intValue!,
    if (maxValue != null) 'maxValue': maxValue!,
    if (minValue != null) 'minValue': minValue!,
    if (propertyName != null) 'propertyName': propertyName!,
    if (textValue != null) 'textValue': textValue!,
    if (unitCode != null) 'unitCode': unitCode!,
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

  Collection.fromJson(core.Map json_)
    : this(
        customLabel0: json_['customLabel0'] as core.String?,
        customLabel1: json_['customLabel1'] as core.String?,
        customLabel2: json_['customLabel2'] as core.String?,
        customLabel3: json_['customLabel3'] as core.String?,
        customLabel4: json_['customLabel4'] as core.String?,
        featuredProduct:
            (json_['featuredProduct'] as core.List?)
                ?.map(
                  (value) => CollectionFeaturedProduct.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        headline:
            (json_['headline'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        id: json_['id'] as core.String?,
        imageLink:
            (json_['imageLink'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        language: json_['language'] as core.String?,
        link: json_['link'] as core.String?,
        mobileLink: json_['mobileLink'] as core.String?,
        productCountry: json_['productCountry'] as core.String?,
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

  CollectionFeaturedProduct({this.offerId, this.x, this.y});

  CollectionFeaturedProduct.fromJson(core.Map json_)
    : this(
        offerId: json_['offerId'] as core.String?,
        x: (json_['x'] as core.num?)?.toDouble(),
        y: (json_['y'] as core.num?)?.toDouble(),
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
  /// offset, for example "2020-01-02T09:00:00+01:00" or "2020-01-02T09:00:00Z"
  core.String? creationDate;

  /// The intended destinations for the collection.
  core.List<CollectionStatusDestinationStatus>? destinationStatuses;

  /// The ID of the collection for which status is reported.
  ///
  /// Required.
  core.String? id;

  /// Date on which the collection has been last updated in
  /// [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format: Date, time, and
  /// offset, for example "2020-01-02T09:00:00+01:00" or "2020-01-02T09:00:00Z"
  core.String? lastUpdateDate;

  CollectionStatus({
    this.collectionLevelIssuses,
    this.creationDate,
    this.destinationStatuses,
    this.id,
    this.lastUpdateDate,
  });

  CollectionStatus.fromJson(core.Map json_)
    : this(
        collectionLevelIssuses:
            (json_['collectionLevelIssuses'] as core.List?)
                ?.map(
                  (value) => CollectionStatusItemLevelIssue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        creationDate: json_['creationDate'] as core.String?,
        destinationStatuses:
            (json_['destinationStatuses'] as core.List?)
                ?.map(
                  (value) => CollectionStatusDestinationStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        id: json_['id'] as core.String?,
        lastUpdateDate: json_['lastUpdateDate'] as core.String?,
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
  /// Country codes (ISO 3166-1 alpha-2) where the collection is approved.
  core.List<core.String>? approvedCountries;

  /// The name of the destination
  core.String? destination;

  /// Country codes (ISO 3166-1 alpha-2) where the collection is disapproved.
  core.List<core.String>? disapprovedCountries;

  /// Country codes (ISO 3166-1 alpha-2) where the collection is pending
  /// approval.
  core.List<core.String>? pendingCountries;

  /// The status for the specified destination in the collections target
  /// country.
  core.String? status;

  CollectionStatusDestinationStatus({
    this.approvedCountries,
    this.destination,
    this.disapprovedCountries,
    this.pendingCountries,
    this.status,
  });

  CollectionStatusDestinationStatus.fromJson(core.Map json_)
    : this(
        approvedCountries:
            (json_['approvedCountries'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        destination: json_['destination'] as core.String?,
        disapprovedCountries:
            (json_['disapprovedCountries'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        pendingCountries:
            (json_['pendingCountries'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        status: json_['status'] as core.String?,
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

/// Issue associated with the collection.
class CollectionStatusItemLevelIssue {
  /// Country codes (ISO 3166-1 alpha-2) where issue applies to the offer.
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

  /// How this issue affects the serving of the collection.
  core.String? servability;

  CollectionStatusItemLevelIssue({
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

  CollectionStatusItemLevelIssue.fromJson(core.Map json_)
    : this(
        applicableCountries:
            (json_['applicableCountries'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        attributeName: json_['attributeName'] as core.String?,
        code: json_['code'] as core.String?,
        description: json_['description'] as core.String?,
        destination: json_['destination'] as core.String?,
        detail: json_['detail'] as core.String?,
        documentation: json_['documentation'] as core.String?,
        resolution: json_['resolution'] as core.String?,
        servability: json_['servability'] as core.String?,
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

/// Fields related to
/// [competitive visibility reports](https://support.google.com/merchants/answer/11366442).
class CompetitiveVisibility {
  /// [Ads / organic ratio](https://support.google.com/merchants/answer/11366442#zippy=%2Cadsfree-ratio)
  /// shows how often a merchant receives impressions from Shopping ads compared
  /// to organic traffic.
  ///
  /// The number is rounded and bucketed. Available only in
  /// `CompetitiveVisibilityTopMerchantView` and
  /// `CompetitiveVisibilityCompetitorView`. Cannot be filtered on in the
  /// 'WHERE' clause.
  core.double? adsOrganicRatio;

  /// Change in visibility based on impressions with respect to the start of the
  /// selected time range (or first day with non-zero impressions) for a
  /// combined set of merchants with highest visibility approximating the
  /// market.
  ///
  /// Available only in `CompetitiveVisibilityBenchmarkView`. Cannot be filtered
  /// on in the 'WHERE' clause.
  core.double? categoryBenchmarkVisibilityTrend;

  /// Google product category ID to calculate the report for, represented in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  ///
  /// Required in the `SELECT` clause. A `WHERE` condition on
  /// `competitive_visibility.category_id` is required in the query.
  core.String? categoryId;

  /// The country where impression appeared.
  ///
  /// Required in the `SELECT` clause. A `WHERE` condition on
  /// `competitive_visibility.country_code` is required in the query.
  core.String? countryCode;

  /// Date of this row.
  ///
  /// Available only in `CompetitiveVisibilityBenchmarkView` and
  /// `CompetitiveVisibilityCompetitorView`. Required in the `SELECT` clause for
  /// `CompetitiveVisibilityMarketBenchmarkView`.
  Date? date;

  /// Domain of your competitor or your domain, if 'is_your_domain' is true.
  ///
  /// Available only in `CompetitiveVisibilityTopMerchantView` and
  /// `CompetitiveVisibilityCompetitorView`. Required in the `SELECT` clause for
  /// `CompetitiveVisibilityTopMerchantView` and
  /// `CompetitiveVisibilityCompetitorView`. Cannot be filtered on in the
  /// 'WHERE' clause.
  core.String? domain;

  /// Higher position rate shows how often a competitor’s offer got placed in a
  /// higher position on the page than your offer.
  ///
  /// Available only in `CompetitiveVisibilityTopMerchantView` and
  /// `CompetitiveVisibilityCompetitorView`. Cannot be filtered on in the
  /// 'WHERE' clause.
  core.double? higherPositionRate;

  /// True if this row contains data for your domain.
  ///
  /// Available only in `CompetitiveVisibilityTopMerchantView` and
  /// `CompetitiveVisibilityCompetitorView`. Cannot be filtered on in the
  /// 'WHERE' clause.
  core.bool? isYourDomain;

  /// Page overlap rate describes how frequently competing retailers’ offers are
  /// shown together with your offers on the same page.
  ///
  /// Available only in `CompetitiveVisibilityTopMerchantView` and
  /// `CompetitiveVisibilityCompetitorView`. Cannot be filtered on in the
  /// 'WHERE' clause.
  core.double? pageOverlapRate;

  /// Position of the domain in the top merchants ranking for the selected keys
  /// (`date`, `category_id`, `country_code`, `listing_type`) based on
  /// impressions.
  ///
  /// 1 is the highest. Available only in `CompetitiveVisibilityTopMerchantView`
  /// and `CompetitiveVisibilityCompetitorView`. Cannot be filtered on in the
  /// 'WHERE' clause.
  core.String? rank;

  /// Relative visibility shows how often your competitors’ offers are shown
  /// compared to your offers.
  ///
  /// In other words, this is the number of displayed impressions of a
  /// competitor retailer divided by the number of your displayed impressions
  /// during a selected time range for a selected product category and country.
  /// Available only in `CompetitiveVisibilityCompetitorView`. Cannot be
  /// filtered on in the 'WHERE' clause.
  core.double? relativeVisibility;

  /// Type of impression listing.
  ///
  /// Required in the `SELECT` clause. Cannot be filtered on in the 'WHERE'
  /// clause.
  /// Possible string values are:
  /// - "UNKNOWN" : Traffic source is unknown.
  /// - "ORGANIC" : Organic traffic.
  /// - "ADS" : Traffic from Ads.
  /// - "ALL" : Organic and Ads traffic.
  core.String? trafficSource;

  /// Change in visibility based on impressions for your domain with respect to
  /// the start of the selected time range (or first day with non-zero
  /// impressions).
  ///
  /// Available only in `CompetitiveVisibilityBenchmarkView`. Cannot be filtered
  /// on in the 'WHERE' clause.
  core.double? yourDomainVisibilityTrend;

  CompetitiveVisibility({
    this.adsOrganicRatio,
    this.categoryBenchmarkVisibilityTrend,
    this.categoryId,
    this.countryCode,
    this.date,
    this.domain,
    this.higherPositionRate,
    this.isYourDomain,
    this.pageOverlapRate,
    this.rank,
    this.relativeVisibility,
    this.trafficSource,
    this.yourDomainVisibilityTrend,
  });

  CompetitiveVisibility.fromJson(core.Map json_)
    : this(
        adsOrganicRatio: (json_['adsOrganicRatio'] as core.num?)?.toDouble(),
        categoryBenchmarkVisibilityTrend:
            (json_['categoryBenchmarkVisibilityTrend'] as core.num?)
                ?.toDouble(),
        categoryId: json_['categoryId'] as core.String?,
        countryCode: json_['countryCode'] as core.String?,
        date:
            json_.containsKey('date')
                ? Date.fromJson(
                  json_['date'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        domain: json_['domain'] as core.String?,
        higherPositionRate:
            (json_['higherPositionRate'] as core.num?)?.toDouble(),
        isYourDomain: json_['isYourDomain'] as core.bool?,
        pageOverlapRate: (json_['pageOverlapRate'] as core.num?)?.toDouble(),
        rank: json_['rank'] as core.String?,
        relativeVisibility:
            (json_['relativeVisibility'] as core.num?)?.toDouble(),
        trafficSource: json_['trafficSource'] as core.String?,
        yourDomainVisibilityTrend:
            (json_['yourDomainVisibilityTrend'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adsOrganicRatio != null) 'adsOrganicRatio': adsOrganicRatio!,
    if (categoryBenchmarkVisibilityTrend != null)
      'categoryBenchmarkVisibilityTrend': categoryBenchmarkVisibilityTrend!,
    if (categoryId != null) 'categoryId': categoryId!,
    if (countryCode != null) 'countryCode': countryCode!,
    if (date != null) 'date': date!,
    if (domain != null) 'domain': domain!,
    if (higherPositionRate != null) 'higherPositionRate': higherPositionRate!,
    if (isYourDomain != null) 'isYourDomain': isYourDomain!,
    if (pageOverlapRate != null) 'pageOverlapRate': pageOverlapRate!,
    if (rank != null) 'rank': rank!,
    if (relativeVisibility != null) 'relativeVisibility': relativeVisibility!,
    if (trafficSource != null) 'trafficSource': trafficSource!,
    if (yourDomainVisibilityTrend != null)
      'yourDomainVisibilityTrend': yourDomainVisibilityTrend!,
  };
}

/// Represents a conversion source owned by a Merchant account.
///
/// A merchant account can have up to 200 conversion sources.
class ConversionSource {
  /// Generated by the Content API upon creation of a new `ConversionSource`.
  ///
  /// Format: \[a-z\]{4}:.+ The four characters before the colon represent the
  /// type of conversio source. Content after the colon represents the ID of the
  /// conversion source within that type. The ID of two different conversion
  /// sources might be the same across different types. The following type
  /// prefixes are supported: - galk: For GoogleAnalyticsLink sources. - mcdn:
  /// For MerchantCenterDestination sources.
  ///
  /// Output only.
  core.String? conversionSourceId;

  /// The time when an archived conversion source becomes permanently deleted
  /// and is no longer available to undelete.
  ///
  /// Output only.
  core.String? expireTime;

  /// Conversion Source of type "Link to Google Analytics Property".
  ///
  /// Immutable.
  GoogleAnalyticsLink? googleAnalyticsLink;

  /// Conversion Source of type "Merchant Center Tag Destination".
  MerchantCenterDestination? merchantCenterDestination;

  /// Current state of this conversion source.
  ///
  /// Can't be edited through the API.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "ACTIVE" : Conversion source is fully functional.
  /// - "ARCHIVED" : Conversion source has been archived in the last 30 days and
  /// not currently functional. Can be restored using the undelete method.
  /// - "PENDING" : Conversion source creation has started but not fully
  /// finished yet.
  core.String? state;

  ConversionSource({
    this.conversionSourceId,
    this.expireTime,
    this.googleAnalyticsLink,
    this.merchantCenterDestination,
    this.state,
  });

  ConversionSource.fromJson(core.Map json_)
    : this(
        conversionSourceId: json_['conversionSourceId'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        googleAnalyticsLink:
            json_.containsKey('googleAnalyticsLink')
                ? GoogleAnalyticsLink.fromJson(
                  json_['googleAnalyticsLink']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        merchantCenterDestination:
            json_.containsKey('merchantCenterDestination')
                ? MerchantCenterDestination.fromJson(
                  json_['merchantCenterDestination']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conversionSourceId != null) 'conversionSourceId': conversionSourceId!,
    if (expireTime != null) 'expireTime': expireTime!,
    if (googleAnalyticsLink != null)
      'googleAnalyticsLink': googleAnalyticsLink!,
    if (merchantCenterDestination != null)
      'merchantCenterDestination': merchantCenterDestination!,
    if (state != null) 'state': state!,
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

  Css.fromJson(core.Map json_)
    : this(
        cssDomainId: json_['cssDomainId'] as core.String?,
        cssGroupId: json_['cssGroupId'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        fullName: json_['fullName'] as core.String?,
        homepageUri: json_['homepageUri'] as core.String?,
        labelIds:
            (json_['labelIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
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

/// A message that represents custom attributes.
///
/// Exactly one of `value` or `groupValues` must be provided. Maximum allowed
/// number of characters for each custom attribute is 10240 (represents sum of
/// characters for name and value). Maximum 2500 custom attributes can be set
/// per merchant, with total size of 102.4kB.
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

  CustomAttribute({this.groupValues, this.name, this.value});

  CustomAttribute.fromJson(core.Map json_)
    : this(
        groupValues:
            (json_['groupValues'] as core.List?)
                ?.map(
                  (value) => CustomAttribute.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (groupValues != null) 'groupValues': groupValues!,
    if (name != null) 'name': name!,
    if (value != null) 'value': value!,
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

  /// Timezone identifier for the cutoff time (for example, "Europe/Zurich").
  ///
  /// List of identifiers. Required.
  core.String? timezone;

  CutoffTime({this.hour, this.minute, this.timezone});

  CutoffTime.fromJson(core.Map json_)
    : this(
        hour: json_['hour'] as core.int?,
        minute: json_['minute'] as core.int?,
        timezone: json_['timezone'] as core.String?,
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

  Datafeed.fromJson(core.Map json_)
    : this(
        attributeLanguage: json_['attributeLanguage'] as core.String?,
        contentType: json_['contentType'] as core.String?,
        fetchSchedule:
            json_.containsKey('fetchSchedule')
                ? DatafeedFetchSchedule.fromJson(
                  json_['fetchSchedule'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        fileName: json_['fileName'] as core.String?,
        format:
            json_.containsKey('format')
                ? DatafeedFormat.fromJson(
                  json_['format'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        kind: json_['kind'] as core.String?,
        name: json_['name'] as core.String?,
        targets:
            (json_['targets'] as core.List?)
                ?.map(
                  (value) => DatafeedTarget.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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
  /// UTC by default. For example, "America/Los_Angeles".
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

  DatafeedFetchSchedule.fromJson(core.Map json_)
    : this(
        dayOfMonth: json_['dayOfMonth'] as core.int?,
        fetchUrl: json_['fetchUrl'] as core.String?,
        hour: json_['hour'] as core.int?,
        minuteOfHour: json_['minuteOfHour'] as core.int?,
        password: json_['password'] as core.String?,
        paused: json_['paused'] as core.bool?,
        timeZone: json_['timeZone'] as core.String?,
        username: json_['username'] as core.String?,
        weekday: json_['weekday'] as core.String?,
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

  DatafeedFormat({this.columnDelimiter, this.fileEncoding, this.quotingMode});

  DatafeedFormat.fromJson(core.Map json_)
    : this(
        columnDelimiter: json_['columnDelimiter'] as core.String?,
        fileEncoding: json_['fileEncoding'] as core.String?,
        quotingMode: json_['quotingMode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (columnDelimiter != null) 'columnDelimiter': columnDelimiter!,
    if (fileEncoding != null) 'fileEncoding': fileEncoding!,
    if (quotingMode != null) 'quotingMode': quotingMode!,
  };
}

/// The status of a datafeed, that is, the result of the last retrieval of the
/// datafeed computed asynchronously when the feed processing is finished.
class DatafeedStatus {
  /// The country for which the status is reported, represented as a CLDR
  /// territory code.
  core.String? country;

  /// The ID of the feed for which the status is reported.
  core.String? datafeedId;

  /// The list of errors occurring in the feed.
  core.List<DatafeedStatusError>? errors;

  /// The feed label status is reported for.
  core.String? feedLabel;

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
    this.feedLabel,
    this.itemsTotal,
    this.itemsValid,
    this.kind,
    this.language,
    this.lastUploadDate,
    this.processingStatus,
    this.warnings,
  });

  DatafeedStatus.fromJson(core.Map json_)
    : this(
        country: json_['country'] as core.String?,
        datafeedId: json_['datafeedId'] as core.String?,
        errors:
            (json_['errors'] as core.List?)
                ?.map(
                  (value) => DatafeedStatusError.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        feedLabel: json_['feedLabel'] as core.String?,
        itemsTotal: json_['itemsTotal'] as core.String?,
        itemsValid: json_['itemsValid'] as core.String?,
        kind: json_['kind'] as core.String?,
        language: json_['language'] as core.String?,
        lastUploadDate: json_['lastUploadDate'] as core.String?,
        processingStatus: json_['processingStatus'] as core.String?,
        warnings:
            (json_['warnings'] as core.List?)
                ?.map(
                  (value) => DatafeedStatusError.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (country != null) 'country': country!,
    if (datafeedId != null) 'datafeedId': datafeedId!,
    if (errors != null) 'errors': errors!,
    if (feedLabel != null) 'feedLabel': feedLabel!,
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
  /// The code of the error, for example, "validation/invalid_value".
  core.String? code;

  /// The number of occurrences of the error in the feed.
  core.String? count;

  /// A list of example occurrences of the error, grouped by product.
  core.List<DatafeedStatusExample>? examples;

  /// The error message, for example, "Invalid price".
  core.String? message;

  DatafeedStatusError({this.code, this.count, this.examples, this.message});

  DatafeedStatusError.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        count: json_['count'] as core.String?,
        examples:
            (json_['examples'] as core.List?)
                ?.map(
                  (value) => DatafeedStatusExample.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        message: json_['message'] as core.String?,
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

  DatafeedStatusExample({this.itemId, this.lineNumber, this.value});

  DatafeedStatusExample.fromJson(core.Map json_)
    : this(
        itemId: json_['itemId'] as core.String?,
        lineNumber: json_['lineNumber'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (itemId != null) 'itemId': itemId!,
    if (lineNumber != null) 'lineNumber': lineNumber!,
    if (value != null) 'value': value!,
  };
}

class DatafeedTarget {
  /// Use `feedLabel` instead.
  ///
  /// The country where the items in the feed will be included in the search
  /// index, represented as a CLDR territory code.
  ///
  /// Deprecated.
  core.String? country;

  /// The list of \[destinations to
  /// exclude\](//support.google.com/merchants/answer/6324486) for this target
  /// (corresponds to cleared check boxes in Merchant Center).
  ///
  /// Products that are excluded from all destinations for more than 7 days are
  /// automatically deleted.
  core.List<core.String>? excludedDestinations;

  /// Feed label for the DatafeedTarget.
  ///
  /// Either `country` or `feedLabel` is required. If both `feedLabel` and
  /// `country` is specified, the values must match. Must be less than or equal
  /// to 20 uppercase letters (A-Z), numbers (0-9), and dashes (-).
  core.String? feedLabel;

  /// The list of \[destinations to
  /// include\](//support.google.com/merchants/answer/7501026) for this target
  /// (corresponds to checked check boxes in Merchant Center).
  ///
  /// Default destinations are always included unless provided in
  /// `excludedDestinations`.
  core.List<core.String>? includedDestinations;

  /// The two-letter ISO 639-1 language of the items in the feed.
  ///
  /// Must be a valid language for `targets[].country`.
  core.String? language;

  /// The countries where the items may be displayed.
  ///
  /// Represented as a CLDR territory code. Will be ignored for "product
  /// inventory" feeds.
  core.List<core.String>? targetCountries;

  DatafeedTarget({
    this.country,
    this.excludedDestinations,
    this.feedLabel,
    this.includedDestinations,
    this.language,
    this.targetCountries,
  });

  DatafeedTarget.fromJson(core.Map json_)
    : this(
        country: json_['country'] as core.String?,
        excludedDestinations:
            (json_['excludedDestinations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        feedLabel: json_['feedLabel'] as core.String?,
        includedDestinations:
            (json_['includedDestinations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        language: json_['language'] as core.String?,
        targetCountries:
            (json_['targetCountries'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (country != null) 'country': country!,
    if (excludedDestinations != null)
      'excludedDestinations': excludedDestinations!,
    if (feedLabel != null) 'feedLabel': feedLabel!,
    if (includedDestinations != null)
      'includedDestinations': includedDestinations!,
    if (language != null) 'language': language!,
    if (targetCountries != null) 'targetCountries': targetCountries!,
  };
}

class DatafeedsCustomBatchRequest {
  /// The request entries to be processed in the batch.
  core.List<DatafeedsCustomBatchRequestEntry>? entries;

  DatafeedsCustomBatchRequest({this.entries});

  DatafeedsCustomBatchRequest.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => DatafeedsCustomBatchRequestEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  DatafeedsCustomBatchRequestEntry.fromJson(core.Map json_)
    : this(
        batchId: json_['batchId'] as core.int?,
        datafeed:
            json_.containsKey('datafeed')
                ? Datafeed.fromJson(
                  json_['datafeed'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        datafeedId: json_['datafeedId'] as core.String?,
        merchantId: json_['merchantId'] as core.String?,
        method: json_['method'] as core.String?,
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

  DatafeedsCustomBatchResponse({this.entries, this.kind});

  DatafeedsCustomBatchResponse.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => DatafeedsCustomBatchResponseEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
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

  /// A list of errors for failed custombatch entries.
  ///
  /// *Note:* Schema errors fail the whole request.
  Errors? errors;

  DatafeedsCustomBatchResponseEntry({this.batchId, this.datafeed, this.errors});

  DatafeedsCustomBatchResponseEntry.fromJson(core.Map json_)
    : this(
        batchId: json_['batchId'] as core.int?,
        datafeed:
            json_.containsKey('datafeed')
                ? Datafeed.fromJson(
                  json_['datafeed'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        errors:
            json_.containsKey('errors')
                ? Errors.fromJson(
                  json_['errors'] as core.Map<core.String, core.dynamic>,
                )
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

  DatafeedsFetchNowResponse({this.kind});

  DatafeedsFetchNowResponse.fromJson(core.Map json_)
    : this(kind: json_['kind'] as core.String?);

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

  DatafeedsListResponse({this.kind, this.nextPageToken, this.resources});

  DatafeedsListResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
        resources:
            (json_['resources'] as core.List?)
                ?.map(
                  (value) => Datafeed.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  DatafeedstatusesCustomBatchRequest({this.entries});

  DatafeedstatusesCustomBatchRequest.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => DatafeedstatusesCustomBatchRequestEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entries != null) 'entries': entries!,
  };
}

/// A batch entry encoding a single non-batch datafeedstatuses request.
class DatafeedstatusesCustomBatchRequestEntry {
  /// An entry ID, unique within the batch request.
  core.int? batchId;

  /// Use `feedLabel` instead.
  ///
  /// The country to get the datafeed status for. If this parameter is provided,
  /// then `language` must also be provided. Note that for multi-target
  /// datafeeds this parameter is required.
  ///
  /// Deprecated.
  core.String? country;

  /// The ID of the data feed to get.
  core.String? datafeedId;

  /// The feed label to get the datafeed status for.
  ///
  /// If this parameter is provided, then `language` must also be provided. Note
  /// that for multi-target datafeeds this parameter is required.
  core.String? feedLabel;

  /// The language to get the datafeed status for.
  ///
  /// If this parameter is provided then `country` must also be provided. Note
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
    this.feedLabel,
    this.language,
    this.merchantId,
    this.method,
  });

  DatafeedstatusesCustomBatchRequestEntry.fromJson(core.Map json_)
    : this(
        batchId: json_['batchId'] as core.int?,
        country: json_['country'] as core.String?,
        datafeedId: json_['datafeedId'] as core.String?,
        feedLabel: json_['feedLabel'] as core.String?,
        language: json_['language'] as core.String?,
        merchantId: json_['merchantId'] as core.String?,
        method: json_['method'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (batchId != null) 'batchId': batchId!,
    if (country != null) 'country': country!,
    if (datafeedId != null) 'datafeedId': datafeedId!,
    if (feedLabel != null) 'feedLabel': feedLabel!,
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

  DatafeedstatusesCustomBatchResponse({this.entries, this.kind});

  DatafeedstatusesCustomBatchResponse.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => DatafeedstatusesCustomBatchResponseEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
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

  /// A list of errors for failed custombatch entries.
  ///
  /// *Note:* Schema errors fail the whole request.
  Errors? errors;

  DatafeedstatusesCustomBatchResponseEntry({
    this.batchId,
    this.datafeedStatus,
    this.errors,
  });

  DatafeedstatusesCustomBatchResponseEntry.fromJson(core.Map json_)
    : this(
        batchId: json_['batchId'] as core.int?,
        datafeedStatus:
            json_.containsKey('datafeedStatus')
                ? DatafeedStatus.fromJson(
                  json_['datafeedStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        errors:
            json_.containsKey('errors')
                ? Errors.fromJson(
                  json_['errors'] as core.Map<core.String, core.dynamic>,
                )
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

  DatafeedstatusesListResponse({this.kind, this.nextPageToken, this.resources});

  DatafeedstatusesListResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
        resources:
            (json_['resources'] as core.List?)
                ?.map(
                  (value) => DatafeedStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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
/// and day values. * A month and day, with a zero year (for example, an
/// anniversary). * A year on its own, with a zero month and a zero day. * A
/// year and month, with a zero day (for example, a credit card expiration
/// date). Related types: * google.type.TimeOfDay * google.type.DateTime *
/// google.protobuf.Timestamp
typedef Date = $Date;

/// Represents civil time (or occasionally physical time).
///
/// This type can represent a civil time in one of a few possible ways: * When
/// utc_offset is set and time_zone is unset: a civil time on a calendar day
/// with a particular offset from UTC. * When time_zone is set and utc_offset is
/// unset: a civil time on a calendar day in a particular time zone. * When
/// neither time_zone nor utc_offset is set: a civil time on a calendar day in
/// local time. The date is relative to the Proleptic Gregorian Calendar. If
/// year, month, or day are 0, the DateTime is considered not to have a specific
/// year, month, or day respectively. This type may also be used to represent a
/// physical time if all the date and time fields are set and either case of the
/// `time_offset` oneof is set. Consider using `Timestamp` message for physical
/// time instead. If your use case also would like to store the user's timezone,
/// that can be done in another field. This type is more flexible than some
/// applications may want. Make sure to document and validate your application's
/// limitations.
class DateTime {
  /// Day of month.
  ///
  /// Must be from 1 to 31 and valid for the year and month, or 0 if specifying
  /// a datetime without a day.
  ///
  /// Optional.
  core.int? day;

  /// Hours of day in 24 hour format.
  ///
  /// Should be from 0 to 23, defaults to 0 (midnight). An API may choose to
  /// allow the value "24:00:00" for scenarios like business closing time.
  ///
  /// Optional.
  core.int? hours;

  /// Minutes of hour of day.
  ///
  /// Must be from 0 to 59, defaults to 0.
  ///
  /// Optional.
  core.int? minutes;

  /// Month of year.
  ///
  /// Must be from 1 to 12, or 0 if specifying a datetime without a month.
  ///
  /// Optional.
  core.int? month;

  /// Fractions of seconds in nanoseconds.
  ///
  /// Must be from 0 to 999,999,999, defaults to 0.
  ///
  /// Optional.
  core.int? nanos;

  /// Seconds of minutes of the time.
  ///
  /// Must normally be from 0 to 59, defaults to 0. An API may allow the value
  /// 60 if it allows leap-seconds.
  ///
  /// Optional.
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

  DateTime.fromJson(core.Map json_)
    : this(
        day: json_['day'] as core.int?,
        hours: json_['hours'] as core.int?,
        minutes: json_['minutes'] as core.int?,
        month: json_['month'] as core.int?,
        nanos: json_['nanos'] as core.int?,
        seconds: json_['seconds'] as core.int?,
        timeZone:
            json_.containsKey('timeZone')
                ? TimeZone.fromJson(
                  json_['timeZone'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        utcOffset: json_['utcOffset'] as core.String?,
        year: json_['year'] as core.int?,
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

/// A delivery area for the product.
///
/// Only one of `countryCode` or `postalCodeRange` must be set.
class DeliveryArea {
  /// The country that the product can be delivered to.
  ///
  /// Submit a
  /// [unicode CLDR region](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
  /// such as `US` or `CH`.
  ///
  /// Required.
  core.String? countryCode;

  /// A postal code, postal code range or postal code prefix that defines this
  /// area.
  ///
  /// Limited to US and AUS.
  DeliveryAreaPostalCodeRange? postalCodeRange;

  /// A state, territory, or prefecture.
  ///
  /// This is supported for the United States, Australia, and Japan. Provide a
  /// subdivision code from the ISO 3166-2 code tables
  /// ([US](https://en.wikipedia.org/wiki/ISO_3166-2:US),
  /// [AU](https://en.wikipedia.org/wiki/ISO_3166-2:AU), or
  /// [JP](https://en.wikipedia.org/wiki/ISO_3166-2:JP)) without country prefix
  /// (for example, `"NY"`, `"NSW"`, `"03"`).
  core.String? regionCode;

  DeliveryArea({this.countryCode, this.postalCodeRange, this.regionCode});

  DeliveryArea.fromJson(core.Map json_)
    : this(
        countryCode: json_['countryCode'] as core.String?,
        postalCodeRange:
            json_.containsKey('postalCodeRange')
                ? DeliveryAreaPostalCodeRange.fromJson(
                  json_['postalCodeRange']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (countryCode != null) 'countryCode': countryCode!,
    if (postalCodeRange != null) 'postalCodeRange': postalCodeRange!,
    if (regionCode != null) 'regionCode': regionCode!,
  };
}

/// A range of postal codes that defines the delivery area.
///
/// Only set `firstPostalCode` when specifying a single postal code.
class DeliveryAreaPostalCodeRange {
  /// A postal code or a pattern of the form prefix* denoting the inclusive
  /// lower bound of the range defining the area.
  ///
  /// Examples values: `"94108"`, `"9410*"`, `"9*"`.
  ///
  /// Required.
  core.String? firstPostalCode;

  /// A postal code or a pattern of the form prefix* denoting the inclusive
  /// upper bound of the range defining the area (for example \[070* - 078*\]
  /// results in the range \[07000 - 07899\]).
  ///
  /// It must have the same length as `firstPostalCode`: if `firstPostalCode` is
  /// a postal code then `lastPostalCode` must be a postal code too; if
  /// firstPostalCode is a pattern then `lastPostalCode` must be a pattern with
  /// the same prefix length. Ignored if not set, then the area is defined as
  /// being all the postal codes matching `firstPostalCode`.
  core.String? lastPostalCode;

  DeliveryAreaPostalCodeRange({this.firstPostalCode, this.lastPostalCode});

  DeliveryAreaPostalCodeRange.fromJson(core.Map json_)
    : this(
        firstPostalCode: json_['firstPostalCode'] as core.String?,
        lastPostalCode: json_['lastPostalCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (firstPostalCode != null) 'firstPostalCode': firstPostalCode!,
    if (lastPostalCode != null) 'lastPostalCode': lastPostalCode!,
  };
}

class DeliveryTime {
  /// Business days cutoff time definition.
  ///
  /// If not configured, the cutoff time will be defaulted to 8AM PST. If local
  /// delivery, use Service.StoreConfig.CutoffConfig.
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

  /// Maximum number of business days that are spent in transit.
  ///
  /// 0 means same day delivery, 1 means next day delivery. Must be greater than
  /// or equal to `minTransitTimeInDays`.
  core.int? maxTransitTimeInDays;

  /// Minimum number of business days spent before an order is shipped.
  ///
  /// 0 means same day shipped, 1 means next day shipped.
  core.int? minHandlingTimeInDays;

  /// Minimum number of business days that are spent in transit.
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

  DeliveryTime.fromJson(core.Map json_)
    : this(
        cutoffTime:
            json_.containsKey('cutoffTime')
                ? CutoffTime.fromJson(
                  json_['cutoffTime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        handlingBusinessDayConfig:
            json_.containsKey('handlingBusinessDayConfig')
                ? BusinessDayConfig.fromJson(
                  json_['handlingBusinessDayConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        holidayCutoffs:
            (json_['holidayCutoffs'] as core.List?)
                ?.map(
                  (value) => HolidayCutoff.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        maxHandlingTimeInDays: json_['maxHandlingTimeInDays'] as core.int?,
        maxTransitTimeInDays: json_['maxTransitTimeInDays'] as core.int?,
        minHandlingTimeInDays: json_['minHandlingTimeInDays'] as core.int?,
        minTransitTimeInDays: json_['minTransitTimeInDays'] as core.int?,
        transitBusinessDayConfig:
            json_.containsKey('transitBusinessDayConfig')
                ? BusinessDayConfig.fromJson(
                  json_['transitBusinessDayConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        transitTimeTable:
            json_.containsKey('transitTimeTable')
                ? TransitTable.fromJson(
                  json_['transitTimeTable']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        warehouseBasedDeliveryTimes:
            (json_['warehouseBasedDeliveryTimes'] as core.List?)
                ?.map(
                  (value) => WarehouseBasedDeliveryTime.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

/// Distance represented by an integer and unit.
class Distance {
  /// The distance unit.
  ///
  /// Acceptable values are `None`, `Miles`, and `Kilometers`.
  core.String? unit;

  /// The distance represented as a number.
  core.String? value;

  Distance({this.unit, this.value});

  Distance.fromJson(core.Map json_)
    : this(
        unit: json_['unit'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (unit != null) 'unit': unit!,
    if (value != null) 'value': value!,
  };
}

/// Additional information required for E_COMMERCE_PLATFORM link type.
class ECommercePlatformLinkInfo {
  /// The id used by the third party service provider to identify the merchant.
  core.String? externalAccountId;

  ECommercePlatformLinkInfo({this.externalAccountId});

  ECommercePlatformLinkInfo.fromJson(core.Map json_)
    : this(externalAccountId: json_['externalAccountId'] as core.String?);

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

  Error({this.domain, this.message, this.reason});

  Error.fromJson(core.Map json_)
    : this(
        domain: json_['domain'] as core.String?,
        message: json_['message'] as core.String?,
        reason: json_['reason'] as core.String?,
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

  Errors({this.code, this.errors, this.message});

  Errors.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.int?,
        errors:
            (json_['errors'] as core.List?)
                ?.map(
                  (value) => Error.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        message: json_['message'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (code != null) 'code': code!,
    if (errors != null) 'errors': errors!,
    if (message != null) 'message': message!,
  };
}

/// Action that is implemented and performed outside of the third-party
/// application.
///
/// It should redirect the merchant to the provided URL of an external system
/// where they can perform the action. For example to request a review in the
/// Merchant Center.
class ExternalAction {
  /// The type of external action.
  /// Possible string values are:
  /// - "EXTERNAL_ACTION_TYPE_UNSPECIFIED" : Default value. Will never be
  /// provided by the API.
  /// - "REVIEW_PRODUCT_ISSUE_IN_MERCHANT_CENTER" : Redirect to Merchant Center
  /// where the merchant can request a review for issue related to their
  /// product.
  /// - "REVIEW_ACCOUNT_ISSUE_IN_MERCHANT_CENTER" : Redirect to Merchant Center
  /// where the merchant can request a review for issue related to their
  /// account.
  /// - "LEGAL_APPEAL_IN_HELP_CENTER" : Redirect to the form in Help Center
  /// where the merchant can request a legal appeal for the issue.
  /// - "VERIFY_IDENTITY_IN_MERCHANT_CENTER" : Redirect to Merchant Center where
  /// the merchant can perform identity verification.
  core.String? type;

  /// URL to external system, for example Merchant Center, where the merchant
  /// can perform the action.
  core.String? uri;

  ExternalAction({this.type, this.uri});

  ExternalAction.fromJson(core.Map json_)
    : this(
        type: json_['type'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (type != null) 'type': type!,
    if (uri != null) 'uri': uri!,
  };
}

/// Response message for GetFreeListingsProgramStatus.
class FreeListingsProgramStatus {
  /// State of the program.
  ///
  /// `ENABLED` if there are offers for at least one region.
  /// Possible string values are:
  /// - "PROGRAM_STATE_UNSPECIFIED" : State is unknown.
  /// - "NOT_ENABLED" : Program is not enabled for any country.
  /// - "NO_OFFERS_UPLOADED" : No products have been uploaded for any region.
  /// Upload products to Merchant Center.
  /// - "ENABLED" : Program is enabled and offers are uploaded for at least one
  /// country.
  core.String? globalState;

  /// Status of the program in each region.
  ///
  /// Regions with the same status and review eligibility are grouped together
  /// in `regionCodes`.
  core.List<FreeListingsProgramStatusRegionStatus>? regionStatuses;

  FreeListingsProgramStatus({this.globalState, this.regionStatuses});

  FreeListingsProgramStatus.fromJson(core.Map json_)
    : this(
        globalState: json_['globalState'] as core.String?,
        regionStatuses:
            (json_['regionStatuses'] as core.List?)
                ?.map(
                  (value) => FreeListingsProgramStatusRegionStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (globalState != null) 'globalState': globalState!,
    if (regionStatuses != null) 'regionStatuses': regionStatuses!,
  };
}

/// Status of program and region.
class FreeListingsProgramStatusRegionStatus {
  /// Date by which eligibilityStatus will go from `WARNING` to `DISAPPROVED`.
  ///
  /// Only visible when your eligibilityStatus is WARNING. In
  /// [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DD`.
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
  /// - "ONBOARDING" : Program is currently onboarding. Upload valid offers to
  /// complete onboarding.
  core.String? eligibilityStatus;

  /// Issues that must be fixed to be eligible for review.
  core.List<core.String>? onboardingIssues;

  /// The two-letter \[ISO 3166-1
  /// alpha-2\](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) codes for all
  /// the regions with the same `eligibilityStatus` and `reviewEligibility`.
  core.List<core.String>? regionCodes;

  /// If a program is eligible for review in a specific region.
  ///
  /// Only visible if `eligibilityStatus` is `DISAPPROVED`.
  /// Possible string values are:
  /// - "REVIEW_ELIGIBILITY_UNSPECIFIED" : Review eligibility state is unknown.
  /// - "ELIGIBLE" : Account is eligible for review for a specified region code.
  /// - "INELIGIBLE" : Account is not eligible for review for a specified region
  /// code.
  core.String? reviewEligibilityStatus;

  /// Review ineligibility reason if account is not eligible for review.
  /// Possible string values are:
  /// - "REVIEW_INELIGIBILITY_REASON_UNSPECIFIED" : Requesting a review from
  /// Google is not possible.
  /// - "ONBOARDING_ISSUES" : All onboarding issues needs to be fixed.
  /// - "NOT_ENOUGH_OFFERS" : Not enough offers uploaded for this country.
  /// - "IN_COOLDOWN_PERIOD" : Cooldown period applies. Wait until cooldown
  /// period ends.
  /// - "ALREADY_UNDER_REVIEW" : Account is already under review.
  /// - "NO_REVIEW_REQUIRED" : No issues available to review.
  /// - "WILL_BE_REVIEWED_AUTOMATICALLY" : Account will be automatically
  /// reviewed at the end of the grace period.
  /// - "IS_RETIRED" : Account is retired. Should not appear in MC.
  /// - "ALREADY_REVIEWED" : Account has already been reviewed. You can't
  /// request further reviews.
  core.String? reviewIneligibilityReason;

  /// Reason a program in a specific region isn’t eligible for review.
  ///
  /// Only visible if `reviewEligibilityStatus` is `INELIGIBLE`.
  core.String? reviewIneligibilityReasonDescription;

  /// Additional information for ineligibility.
  ///
  /// If `reviewIneligibilityReason` is `IN_COOLDOWN_PERIOD`, a timestamp for
  /// the end of the cooldown period is provided.
  FreeListingsProgramStatusReviewIneligibilityReasonDetails?
  reviewIneligibilityReasonDetails;

  /// Issues evaluated in the review process.
  ///
  /// Fix all issues before requesting a review.
  core.List<core.String>? reviewIssues;

  FreeListingsProgramStatusRegionStatus({
    this.disapprovalDate,
    this.eligibilityStatus,
    this.onboardingIssues,
    this.regionCodes,
    this.reviewEligibilityStatus,
    this.reviewIneligibilityReason,
    this.reviewIneligibilityReasonDescription,
    this.reviewIneligibilityReasonDetails,
    this.reviewIssues,
  });

  FreeListingsProgramStatusRegionStatus.fromJson(core.Map json_)
    : this(
        disapprovalDate: json_['disapprovalDate'] as core.String?,
        eligibilityStatus: json_['eligibilityStatus'] as core.String?,
        onboardingIssues:
            (json_['onboardingIssues'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        regionCodes:
            (json_['regionCodes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        reviewEligibilityStatus:
            json_['reviewEligibilityStatus'] as core.String?,
        reviewIneligibilityReason:
            json_['reviewIneligibilityReason'] as core.String?,
        reviewIneligibilityReasonDescription:
            json_['reviewIneligibilityReasonDescription'] as core.String?,
        reviewIneligibilityReasonDetails:
            json_.containsKey('reviewIneligibilityReasonDetails')
                ? FreeListingsProgramStatusReviewIneligibilityReasonDetails.fromJson(
                  json_['reviewIneligibilityReasonDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        reviewIssues:
            (json_['reviewIssues'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (disapprovalDate != null) 'disapprovalDate': disapprovalDate!,
    if (eligibilityStatus != null) 'eligibilityStatus': eligibilityStatus!,
    if (onboardingIssues != null) 'onboardingIssues': onboardingIssues!,
    if (regionCodes != null) 'regionCodes': regionCodes!,
    if (reviewEligibilityStatus != null)
      'reviewEligibilityStatus': reviewEligibilityStatus!,
    if (reviewIneligibilityReason != null)
      'reviewIneligibilityReason': reviewIneligibilityReason!,
    if (reviewIneligibilityReasonDescription != null)
      'reviewIneligibilityReasonDescription':
          reviewIneligibilityReasonDescription!,
    if (reviewIneligibilityReasonDetails != null)
      'reviewIneligibilityReasonDetails': reviewIneligibilityReasonDetails!,
    if (reviewIssues != null) 'reviewIssues': reviewIssues!,
  };
}

/// Additional details for review ineligibility reasons.
typedef FreeListingsProgramStatusReviewIneligibilityReasonDetails =
    $ProgramStatusReviewIneligibilityReasonDetails;

/// Conditions to be met for a product to have free shipping.
class FreeShippingThreshold {
  /// The
  /// [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
  /// of the country to which an item will ship.
  ///
  /// Required.
  core.String? country;

  /// The minimum product price for the shipping cost to become free.
  ///
  /// Represented as a number.
  ///
  /// Required.
  Price? priceThreshold;

  FreeShippingThreshold({this.country, this.priceThreshold});

  FreeShippingThreshold.fromJson(core.Map json_)
    : this(
        country: json_['country'] as core.String?,
        priceThreshold:
            json_.containsKey('priceThreshold')
                ? Price.fromJson(
                  json_['priceThreshold']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (country != null) 'country': country!,
    if (priceThreshold != null) 'priceThreshold': priceThreshold!,
  };
}

/// Response containing generated recommendations.
class GenerateRecommendationsResponse {
  /// Recommendations generated for a request.
  core.List<Recommendation>? recommendations;

  /// Response token is a string created for each
  /// `GenerateRecommendationsResponse`.
  ///
  /// This token doesn't expire, and is globally unique. This token must be used
  /// when reporting interactions for recommendations.
  ///
  /// Output only.
  core.String? responseToken;

  GenerateRecommendationsResponse({this.recommendations, this.responseToken});

  GenerateRecommendationsResponse.fromJson(core.Map json_)
    : this(
        recommendations:
            (json_['recommendations'] as core.List?)
                ?.map(
                  (value) => Recommendation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        responseToken: json_['responseToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (recommendations != null) 'recommendations': recommendations!,
    if (responseToken != null) 'responseToken': responseToken!,
  };
}

class GmbAccounts {
  /// The ID of the Merchant Center account.
  core.String? accountId;

  /// A list of Business Profiles which are available to the merchant.
  core.List<GmbAccountsGmbAccount>? gmbAccounts;

  GmbAccounts({this.accountId, this.gmbAccounts});

  GmbAccounts.fromJson(core.Map json_)
    : this(
        accountId: json_['accountId'] as core.String?,
        gmbAccounts:
            (json_['gmbAccounts'] as core.List?)
                ?.map(
                  (value) => GmbAccountsGmbAccount.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accountId != null) 'accountId': accountId!,
    if (gmbAccounts != null) 'gmbAccounts': gmbAccounts!,
  };
}

class GmbAccountsGmbAccount {
  /// The email which identifies the Business Profile.
  core.String? email;

  /// Number of listings under this account.
  core.String? listingCount;

  /// The name of the Business Profile.
  core.String? name;

  /// The type of the Business Profile (User or Business).
  core.String? type;

  GmbAccountsGmbAccount({this.email, this.listingCount, this.name, this.type});

  GmbAccountsGmbAccount.fromJson(core.Map json_)
    : this(
        email: json_['email'] as core.String?,
        listingCount: json_['listingCount'] as core.String?,
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (email != null) 'email': email!,
    if (listingCount != null) 'listingCount': listingCount!,
    if (name != null) 'name': name!,
    if (type != null) 'type': type!,
  };
}

/// "Google Analytics Link" sources can be used to get conversion data from an
/// existing Google Analytics property into the linked Merchant Center account.
class GoogleAnalyticsLink {
  /// Attribution settings for the linked Google Analytics property.
  ///
  /// Output only.
  AttributionSettings? attributionSettings;

  /// ID of the Google Analytics property the merchant is linked to.
  ///
  /// Required. Immutable.
  core.String? propertyId;

  /// Name of the Google Analytics property the merchant is linked to.
  ///
  /// Output only.
  core.String? propertyName;

  GoogleAnalyticsLink({
    this.attributionSettings,
    this.propertyId,
    this.propertyName,
  });

  GoogleAnalyticsLink.fromJson(core.Map json_)
    : this(
        attributionSettings:
            json_.containsKey('attributionSettings')
                ? AttributionSettings.fromJson(
                  json_['attributionSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        propertyId: json_['propertyId'] as core.String?,
        propertyName: json_['propertyName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributionSettings != null)
      'attributionSettings': attributionSettings!,
    if (propertyId != null) 'propertyId': propertyId!,
    if (propertyName != null) 'propertyName': propertyName!,
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
  /// represents the headers "\<= 10 items", "\<= 50 items", and "\> 50 items".
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
  /// "infinity", "currency": "USD"}]` represents the headers "\<= $10", "\<=
  /// $500", and "\> $500". All prices within a service must have the same
  /// currency. Must be non-empty. Can only be set if all other fields are not
  /// set.
  core.List<Price>? prices;

  /// A list of inclusive order weight upper bounds.
  ///
  /// The last weight's value can be `"infinity"`. For example `[{"value": "10",
  /// "unit": "kg"}, {"value": "50", "unit": "kg"}, {"value": "infinity",
  /// "unit": "kg"}]` represents the headers "\<= 10kg", "\<= 50kg", and "\>
  /// 50kg". All weights within a service must have the same unit. Must be
  /// non-empty. Can only be set if all other fields are not set.
  core.List<Weight>? weights;

  Headers({
    this.locations,
    this.numberOfItems,
    this.postalCodeGroupNames,
    this.prices,
    this.weights,
  });

  Headers.fromJson(core.Map json_)
    : this(
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => LocationIdSet.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        numberOfItems:
            (json_['numberOfItems'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        postalCodeGroupNames:
            (json_['postalCodeGroupNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        prices:
            (json_['prices'] as core.List?)
                ?.map(
                  (value) => Price.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        weights:
            (json_['weights'] as core.List?)
                ?.map(
                  (value) => Weight.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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
  /// For example, "2016-11-29" for 29th November 2016. Required.
  core.String? deadlineDate;

  /// Hour of the day on the deadline date until which the order has to be
  /// placed to qualify for the delivery guarantee.
  ///
  /// Possible values are: 0 (midnight), 1, ..., 12 (noon), 13, ..., 23.
  /// Required.
  core.int? deadlineHour;

  /// Timezone identifier for the deadline hour (for example, "Europe/Zurich").
  ///
  /// List of identifiers. Required.
  core.String? deadlineTimezone;

  /// Unique identifier for the holiday.
  ///
  /// Required.
  core.String? holidayId;

  /// Date on which the deadline will become visible to consumers in ISO 8601
  /// format.
  ///
  /// For example, "2016-10-31" for 31st October 2016. Required.
  core.String? visibleFromDate;

  HolidayCutoff({
    this.deadlineDate,
    this.deadlineHour,
    this.deadlineTimezone,
    this.holidayId,
    this.visibleFromDate,
  });

  HolidayCutoff.fromJson(core.Map json_)
    : this(
        deadlineDate: json_['deadlineDate'] as core.String?,
        deadlineHour: json_['deadlineHour'] as core.int?,
        deadlineTimezone: json_['deadlineTimezone'] as core.String?,
        holidayId: json_['holidayId'] as core.String?,
        visibleFromDate: json_['visibleFromDate'] as core.String?,
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
  /// For example, "US", "DE", "GB". A holiday cutoff can only be configured in
  /// a shipping settings service with matching delivery country. Always
  /// present.
  core.String? countryCode;

  /// Date of the holiday, in ISO 8601 format.
  ///
  /// For example, "2016-12-25" for Christmas 2016. Always present.
  core.String? date;

  /// Date on which the order has to arrive at the customer's, in ISO 8601
  /// format.
  ///
  /// For example, "2016-12-24" for 24th December 2016. Always present.
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

  HolidaysHoliday.fromJson(core.Map json_)
    : this(
        countryCode: json_['countryCode'] as core.String?,
        date: json_['date'] as core.String?,
        deliveryGuaranteeDate: json_['deliveryGuaranteeDate'] as core.String?,
        deliveryGuaranteeHour: json_['deliveryGuaranteeHour'] as core.String?,
        id: json_['id'] as core.String?,
        type: json_['type'] as core.String?,
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

/// Input field that needs to be available to the merchant.
///
/// If the field is marked as required, then a value needs to be provided for a
/// successful processing of the request.
class InputField {
  /// Input field to provide a boolean value.
  ///
  /// Corresponds to the \[html input
  /// type=checkbox\](https://www.w3.org/TR/2012/WD-html-markup-20121025/input.checkbox.html#input.checkbox).
  InputFieldCheckboxInput? checkboxInput;

  /// Input field to select one of the offered choices.
  ///
  /// Corresponds to the \[html input
  /// type=radio\](https://www.w3.org/TR/2012/WD-html-markup-20121025/input.radio.html#input.radio).
  InputFieldChoiceInput? choiceInput;

  /// Not for display but need to be sent back for the given input field.
  core.String? id;

  /// Input field label.
  ///
  /// There may be more information to be shown in a tooltip.
  TextWithTooltip? label;

  /// Whether the field is required.
  ///
  /// The action button needs to stay disabled till values for all required
  /// fields are provided.
  core.bool? required;

  /// Input field to provide text information.
  ///
  /// Corresponds to the \[html input
  /// type=text\](https://www.w3.org/TR/2012/WD-html-markup-20121025/input.text.html#input.text)
  /// or
  /// [html textarea](https://www.w3.org/TR/2012/WD-html-markup-20121025/textarea.html#textarea).
  InputFieldTextInput? textInput;

  InputField({
    this.checkboxInput,
    this.choiceInput,
    this.id,
    this.label,
    this.required,
    this.textInput,
  });

  InputField.fromJson(core.Map json_)
    : this(
        checkboxInput:
            json_.containsKey('checkboxInput')
                ? InputFieldCheckboxInput.fromJson(
                  json_['checkboxInput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        choiceInput:
            json_.containsKey('choiceInput')
                ? InputFieldChoiceInput.fromJson(
                  json_['choiceInput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        label:
            json_.containsKey('label')
                ? TextWithTooltip.fromJson(
                  json_['label'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        required: json_['required'] as core.bool?,
        textInput:
            json_.containsKey('textInput')
                ? InputFieldTextInput.fromJson(
                  json_['textInput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (checkboxInput != null) 'checkboxInput': checkboxInput!,
    if (choiceInput != null) 'choiceInput': choiceInput!,
    if (id != null) 'id': id!,
    if (label != null) 'label': label!,
    if (required != null) 'required': required!,
    if (textInput != null) 'textInput': textInput!,
  };
}

/// Checkbox input allows merchants to provide a boolean value.
///
/// Corresponds to the \[html input
/// type=checkbox\](https://www.w3.org/TR/2012/WD-html-markup-20121025/input.checkbox.html#input.checkbox).
/// If merchant checks the box, the input value for the field is `true`,
/// otherwise it is `false`. This type of input is often used as a confirmation
/// that the merchant completed required steps before they are allowed to start
/// the action. In such a case, the input field is marked as required and the
/// button to trigger the action should stay disabled until the merchant checks
/// the box.
typedef InputFieldCheckboxInput = $Empty;

/// Choice input allows merchants to select one of the offered choices.
///
/// Some choices may be linked to additional input fields that should be
/// displayed under or next to the choice option. The value for the additional
/// input field needs to be provided only when the specific choice is selected
/// by the merchant. For example, additional input field can be hidden or
/// disabled until the merchant selects the specific choice.
class InputFieldChoiceInput {
  /// A list of choices.
  ///
  /// Only one option can be selected.
  core.List<InputFieldChoiceInputChoiceInputOption>? options;

  InputFieldChoiceInput({this.options});

  InputFieldChoiceInput.fromJson(core.Map json_)
    : this(
        options:
            (json_['options'] as core.List?)
                ?.map(
                  (value) => InputFieldChoiceInputChoiceInputOption.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (options != null) 'options': options!,
  };
}

/// A choice that merchant can select.
class InputFieldChoiceInputChoiceInputOption {
  /// Input that should be displayed when this option is selected.
  ///
  /// The additional input will not contain a `ChoiceInput`.
  InputField? additionalInput;

  /// Not for display but need to be sent back for the selected choice option.
  core.String? id;

  /// Short description of the choice option.
  ///
  /// There may be more information to be shown as a tooltip.
  TextWithTooltip? label;

  InputFieldChoiceInputChoiceInputOption({
    this.additionalInput,
    this.id,
    this.label,
  });

  InputFieldChoiceInputChoiceInputOption.fromJson(core.Map json_)
    : this(
        additionalInput:
            json_.containsKey('additionalInput')
                ? InputField.fromJson(
                  json_['additionalInput']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        label:
            json_.containsKey('label')
                ? TextWithTooltip.fromJson(
                  json_['label'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalInput != null) 'additionalInput': additionalInput!,
    if (id != null) 'id': id!,
    if (label != null) 'label': label!,
  };
}

/// Text input allows merchants to provide a text value.
class InputFieldTextInput {
  /// Additional info regarding the field to be displayed to merchant.
  ///
  /// For example, warning to not include personal identifiable information.
  /// There may be more information to be shown in a tooltip.
  TextWithTooltip? additionalInfo;

  /// Text to be used as the
  /// \[aria-label\](https://www.w3.org/TR/WCAG20-TECHS/ARIA14.html) for the
  /// input.
  core.String? ariaLabel;

  /// Information about the required format.
  ///
  /// If present, it should be shown close to the input field to help merchants
  /// to provide a correct value. For example: "VAT numbers should be in a
  /// format similar to SK9999999999"
  core.String? formatInfo;

  /// Type of the text input
  /// Possible string values are:
  /// - "TEXT_INPUT_TYPE_UNSPECIFIED" : Default value. Will never be provided by
  /// the API.
  /// - "GENERIC_SHORT_TEXT" : Used when a short text is expected. The field can
  /// be rendered as a
  /// [text field](https://www.w3.org/TR/2012/WD-html-markup-20121025/input.text.html#input.text).
  /// - "GENERIC_LONG_TEXT" : Used when a longer text is expected. The field
  /// should be rendered as a
  /// [textarea](https://www.w3.org/TR/2012/WD-html-markup-20121025/textarea.html#textarea).
  core.String? type;

  InputFieldTextInput({
    this.additionalInfo,
    this.ariaLabel,
    this.formatInfo,
    this.type,
  });

  InputFieldTextInput.fromJson(core.Map json_)
    : this(
        additionalInfo:
            json_.containsKey('additionalInfo')
                ? TextWithTooltip.fromJson(
                  json_['additionalInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        ariaLabel: json_['ariaLabel'] as core.String?,
        formatInfo: json_['formatInfo'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalInfo != null) 'additionalInfo': additionalInfo!,
    if (ariaLabel != null) 'ariaLabel': ariaLabel!,
    if (formatInfo != null) 'formatInfo': formatInfo!,
    if (type != null) 'type': type!,
  };
}

/// Input provided by the merchant for input field.
class InputValue {
  /// Value for checkbox input field.
  InputValueCheckboxInputValue? checkboxInputValue;

  /// Value for choice input field.
  InputValueChoiceInputValue? choiceInputValue;

  /// Id of the corresponding input field.
  ///
  /// Required.
  core.String? inputFieldId;

  /// Value for text input field.
  InputValueTextInputValue? textInputValue;

  InputValue({
    this.checkboxInputValue,
    this.choiceInputValue,
    this.inputFieldId,
    this.textInputValue,
  });

  InputValue.fromJson(core.Map json_)
    : this(
        checkboxInputValue:
            json_.containsKey('checkboxInputValue')
                ? InputValueCheckboxInputValue.fromJson(
                  json_['checkboxInputValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        choiceInputValue:
            json_.containsKey('choiceInputValue')
                ? InputValueChoiceInputValue.fromJson(
                  json_['choiceInputValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        inputFieldId: json_['inputFieldId'] as core.String?,
        textInputValue:
            json_.containsKey('textInputValue')
                ? InputValueTextInputValue.fromJson(
                  json_['textInputValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (checkboxInputValue != null) 'checkboxInputValue': checkboxInputValue!,
    if (choiceInputValue != null) 'choiceInputValue': choiceInputValue!,
    if (inputFieldId != null) 'inputFieldId': inputFieldId!,
    if (textInputValue != null) 'textInputValue': textInputValue!,
  };
}

/// Value for checkbox input field.
class InputValueCheckboxInputValue {
  /// True if the merchant checked the box field.
  ///
  /// False otherwise.
  ///
  /// Required.
  core.bool? value;

  InputValueCheckboxInputValue({this.value});

  InputValueCheckboxInputValue.fromJson(core.Map json_)
    : this(value: json_['value'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (value != null) 'value': value!,
  };
}

/// Value for choice input field.
class InputValueChoiceInputValue {
  /// Id of the option that was selected by the merchant.
  ///
  /// Required.
  core.String? choiceInputOptionId;

  InputValueChoiceInputValue({this.choiceInputOptionId});

  InputValueChoiceInputValue.fromJson(core.Map json_)
    : this(choiceInputOptionId: json_['choiceInputOptionId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (choiceInputOptionId != null)
      'choiceInputOptionId': choiceInputOptionId!,
  };
}

/// Value for text input field.
class InputValueTextInputValue {
  /// Text provided by the merchant.
  ///
  /// Required.
  core.String? value;

  InputValueTextInputValue({this.value});

  InputValueTextInputValue.fromJson(core.Map json_)
    : this(value: json_['value'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (value != null) 'value': value!,
  };
}

/// Request message for the `InsertCheckoutSettings` method.
class InsertCheckoutSettingsRequest {
  /// The `UrlSettings` for the request.
  ///
  /// The presence of URL settings indicates `Checkout` enrollment.
  ///
  /// Required.
  UrlSettings? uriSettings;

  InsertCheckoutSettingsRequest({this.uriSettings});

  InsertCheckoutSettingsRequest.fromJson(core.Map json_)
    : this(
        uriSettings:
            json_.containsKey('uriSettings')
                ? UrlSettings.fromJson(
                  json_['uriSettings'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (uriSettings != null) 'uriSettings': uriSettings!,
  };
}

/// Details of a monthly installment payment offering.
///
/// [Learn more](https://support.google.com/merchants/answer/6324474) about
/// installments.
class Installment {
  /// The amount the buyer has to pay per month.
  Price? amount;

  /// Type of installment payments.
  ///
  /// Supported values are: - "`finance`" - "`lease`"
  ///
  /// Optional.
  core.String? creditType;

  /// The initial down payment amount the buyer has to pay.
  ///
  /// Optional.
  Price? downpayment;

  /// The number of installments the buyer has to pay.
  core.String? months;

  Installment({this.amount, this.creditType, this.downpayment, this.months});

  Installment.fromJson(core.Map json_)
    : this(
        amount:
            json_.containsKey('amount')
                ? Price.fromJson(
                  json_['amount'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        creditType: json_['creditType'] as core.String?,
        downpayment:
            json_.containsKey('downpayment')
                ? Price.fromJson(
                  json_['downpayment'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        months: json_['months'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (amount != null) 'amount': amount!,
    if (creditType != null) 'creditType': creditType!,
    if (downpayment != null) 'downpayment': downpayment!,
    if (months != null) 'months': months!,
  };
}

/// The IDs of labels that should be assigned to the CSS domain.
class LabelIds {
  /// The list of label IDs.
  core.List<core.String>? labelIds;

  LabelIds({this.labelIds});

  LabelIds.fromJson(core.Map json_)
    : this(
        labelIds:
            (json_['labelIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (labelIds != null) 'labelIds': labelIds!,
  };
}

class LiaAboutPageSettings {
  /// The status of the verification process for the About page.
  ///
  /// Supported values are: - "`active`" - "`inactive`" - "`pending`"
  core.String? status;

  /// The URL for the About page.
  core.String? url;

  LiaAboutPageSettings({this.status, this.url});

  LiaAboutPageSettings.fromJson(core.Map json_)
    : this(
        status: json_['status'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (status != null) 'status': status!,
    if (url != null) 'url': url!,
  };
}

class LiaCountrySettings {
  /// The settings for the About page.
  LiaAboutPageSettings? about;

  /// CLDR country code (for example, "US").
  ///
  /// Required.
  core.String? country;

  /// The status of the "Merchant hosted local storefront" feature.
  core.bool? hostedLocalStorefrontActive;

  /// LIA inventory verification settings.
  LiaInventorySettings? inventory;

  /// The omnichannel experience configured for this country.
  LiaOmnichannelExperience? omnichannelExperience;

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
    this.omnichannelExperience,
    this.onDisplayToOrder,
    this.posDataProvider,
    this.storePickupActive,
  });

  LiaCountrySettings.fromJson(core.Map json_)
    : this(
        about:
            json_.containsKey('about')
                ? LiaAboutPageSettings.fromJson(
                  json_['about'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        country: json_['country'] as core.String?,
        hostedLocalStorefrontActive:
            json_['hostedLocalStorefrontActive'] as core.bool?,
        inventory:
            json_.containsKey('inventory')
                ? LiaInventorySettings.fromJson(
                  json_['inventory'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        omnichannelExperience:
            json_.containsKey('omnichannelExperience')
                ? LiaOmnichannelExperience.fromJson(
                  json_['omnichannelExperience']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        onDisplayToOrder:
            json_.containsKey('onDisplayToOrder')
                ? LiaOnDisplayToOrderSettings.fromJson(
                  json_['onDisplayToOrder']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        posDataProvider:
            json_.containsKey('posDataProvider')
                ? LiaPosDataProvider.fromJson(
                  json_['posDataProvider']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        storePickupActive: json_['storePickupActive'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (about != null) 'about': about!,
    if (country != null) 'country': country!,
    if (hostedLocalStorefrontActive != null)
      'hostedLocalStorefrontActive': hostedLocalStorefrontActive!,
    if (inventory != null) 'inventory': inventory!,
    if (omnichannelExperience != null)
      'omnichannelExperience': omnichannelExperience!,
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

  LiaInventorySettings.fromJson(core.Map json_)
    : this(
        inventoryVerificationContactEmail:
            json_['inventoryVerificationContactEmail'] as core.String?,
        inventoryVerificationContactName:
            json_['inventoryVerificationContactName'] as core.String?,
        inventoryVerificationContactStatus:
            json_['inventoryVerificationContactStatus'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (inventoryVerificationContactEmail != null)
      'inventoryVerificationContactEmail': inventoryVerificationContactEmail!,
    if (inventoryVerificationContactName != null)
      'inventoryVerificationContactName': inventoryVerificationContactName!,
    if (inventoryVerificationContactStatus != null)
      'inventoryVerificationContactStatus': inventoryVerificationContactStatus!,
    if (status != null) 'status': status!,
  };
}

/// Omnichannel experience details.
class LiaOmnichannelExperience {
  /// The CLDR country code (for example, "US").
  core.String? country;

  /// The Local Store Front (LSF) type for this country.
  ///
  /// Acceptable values are: - "`ghlsf`" (Google-Hosted Local Store Front) -
  /// "`mhlsfBasic`" (Merchant-Hosted Local Store Front Basic) - "`mhlsfFull`"
  /// (Merchant-Hosted Local Store Front Full) More details about these types
  /// can be found here.
  core.String? lsfType;

  /// The Pickup types for this country.
  ///
  /// Acceptable values are: - "`pickupToday`" - "`pickupLater`"
  core.List<core.String>? pickupTypes;

  LiaOmnichannelExperience({this.country, this.lsfType, this.pickupTypes});

  LiaOmnichannelExperience.fromJson(core.Map json_)
    : this(
        country: json_['country'] as core.String?,
        lsfType: json_['lsfType'] as core.String?,
        pickupTypes:
            (json_['pickupTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (country != null) 'country': country!,
    if (lsfType != null) 'lsfType': lsfType!,
    if (pickupTypes != null) 'pickupTypes': pickupTypes!,
  };
}

class LiaOnDisplayToOrderSettings {
  /// Shipping cost and policy URL.
  core.String? shippingCostPolicyUrl;

  /// The status of the ?On display to order? feature.
  ///
  /// Acceptable values are: - "`active`" - "`inactive`" - "`pending`"
  core.String? status;

  LiaOnDisplayToOrderSettings({this.shippingCostPolicyUrl, this.status});

  LiaOnDisplayToOrderSettings.fromJson(core.Map json_)
    : this(
        shippingCostPolicyUrl: json_['shippingCostPolicyUrl'] as core.String?,
        status: json_['status'] as core.String?,
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

  LiaPosDataProvider({this.posDataProviderId, this.posExternalAccountId});

  LiaPosDataProvider.fromJson(core.Map json_)
    : this(
        posDataProviderId: json_['posDataProviderId'] as core.String?,
        posExternalAccountId: json_['posExternalAccountId'] as core.String?,
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

  LiaSettings({this.accountId, this.countrySettings, this.kind});

  LiaSettings.fromJson(core.Map json_)
    : this(
        accountId: json_['accountId'] as core.String?,
        countrySettings:
            (json_['countrySettings'] as core.List?)
                ?.map(
                  (value) => LiaCountrySettings.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
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

  LiasettingsCustomBatchRequest({this.entries});

  LiasettingsCustomBatchRequest.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => LiasettingsCustomBatchRequestEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  /// The Business Profile.
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

  /// The omnichannel experience for a country.
  ///
  /// Required only for SetOmnichannelExperience.
  LiaOmnichannelExperience? omnichannelExperience;

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
    this.omnichannelExperience,
    this.posDataProviderId,
    this.posExternalAccountId,
  });

  LiasettingsCustomBatchRequestEntry.fromJson(core.Map json_)
    : this(
        accountId: json_['accountId'] as core.String?,
        batchId: json_['batchId'] as core.int?,
        contactEmail: json_['contactEmail'] as core.String?,
        contactName: json_['contactName'] as core.String?,
        country: json_['country'] as core.String?,
        gmbEmail: json_['gmbEmail'] as core.String?,
        liaSettings:
            json_.containsKey('liaSettings')
                ? LiaSettings.fromJson(
                  json_['liaSettings'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        merchantId: json_['merchantId'] as core.String?,
        method: json_['method'] as core.String?,
        omnichannelExperience:
            json_.containsKey('omnichannelExperience')
                ? LiaOmnichannelExperience.fromJson(
                  json_['omnichannelExperience']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        posDataProviderId: json_['posDataProviderId'] as core.String?,
        posExternalAccountId: json_['posExternalAccountId'] as core.String?,
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
    if (omnichannelExperience != null)
      'omnichannelExperience': omnichannelExperience!,
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

  LiasettingsCustomBatchResponse({this.entries, this.kind});

  LiasettingsCustomBatchResponse.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => LiasettingsCustomBatchResponseEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
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

  /// The list of accessible Business Profiles.
  GmbAccounts? gmbAccounts;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#liasettingsCustomBatchResponseEntry`"
  core.String? kind;

  /// The retrieved or updated Lia settings.
  LiaSettings? liaSettings;

  /// The updated omnichannel experience for a country.
  LiaOmnichannelExperience? omnichannelExperience;

  /// The list of POS data providers.
  core.List<PosDataProviders>? posDataProviders;

  LiasettingsCustomBatchResponseEntry({
    this.batchId,
    this.errors,
    this.gmbAccounts,
    this.kind,
    this.liaSettings,
    this.omnichannelExperience,
    this.posDataProviders,
  });

  LiasettingsCustomBatchResponseEntry.fromJson(core.Map json_)
    : this(
        batchId: json_['batchId'] as core.int?,
        errors:
            json_.containsKey('errors')
                ? Errors.fromJson(
                  json_['errors'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        gmbAccounts:
            json_.containsKey('gmbAccounts')
                ? GmbAccounts.fromJson(
                  json_['gmbAccounts'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        kind: json_['kind'] as core.String?,
        liaSettings:
            json_.containsKey('liaSettings')
                ? LiaSettings.fromJson(
                  json_['liaSettings'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        omnichannelExperience:
            json_.containsKey('omnichannelExperience')
                ? LiaOmnichannelExperience.fromJson(
                  json_['omnichannelExperience']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        posDataProviders:
            (json_['posDataProviders'] as core.List?)
                ?.map(
                  (value) => PosDataProviders.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (batchId != null) 'batchId': batchId!,
    if (errors != null) 'errors': errors!,
    if (gmbAccounts != null) 'gmbAccounts': gmbAccounts!,
    if (kind != null) 'kind': kind!,
    if (liaSettings != null) 'liaSettings': liaSettings!,
    if (omnichannelExperience != null)
      'omnichannelExperience': omnichannelExperience!,
    if (posDataProviders != null) 'posDataProviders': posDataProviders!,
  };
}

class LiasettingsGetAccessibleGmbAccountsResponse {
  /// The ID of the Merchant Center account.
  core.String? accountId;

  /// A list of Business Profiles which are available to the merchant.
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

  LiasettingsGetAccessibleGmbAccountsResponse.fromJson(core.Map json_)
    : this(
        accountId: json_['accountId'] as core.String?,
        gmbAccounts:
            (json_['gmbAccounts'] as core.List?)
                ?.map(
                  (value) => GmbAccountsGmbAccount.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
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

  LiasettingsListPosDataProvidersResponse({this.kind, this.posDataProviders});

  LiasettingsListPosDataProvidersResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        posDataProviders:
            (json_['posDataProviders'] as core.List?)
                ?.map(
                  (value) => PosDataProviders.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  LiasettingsListResponse({this.kind, this.nextPageToken, this.resources});

  LiasettingsListResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
        resources:
            (json_['resources'] as core.List?)
                ?.map(
                  (value) => LiaSettings.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  LiasettingsRequestGmbAccessResponse({this.kind});

  LiasettingsRequestGmbAccessResponse.fromJson(core.Map json_)
    : this(kind: json_['kind'] as core.String?);

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

  LiasettingsRequestInventoryVerificationResponse({this.kind});

  LiasettingsRequestInventoryVerificationResponse.fromJson(core.Map json_)
    : this(kind: json_['kind'] as core.String?);

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

  LiasettingsSetInventoryVerificationContactResponse({this.kind});

  LiasettingsSetInventoryVerificationContactResponse.fromJson(core.Map json_)
    : this(kind: json_['kind'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (kind != null) 'kind': kind!,
  };
}

class LiasettingsSetPosDataProviderResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#liasettingsSetPosDataProviderResponse`".
  core.String? kind;

  LiasettingsSetPosDataProviderResponse({this.kind});

  LiasettingsSetPosDataProviderResponse.fromJson(core.Map json_)
    : this(kind: json_['kind'] as core.String?);

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

  LinkService({this.service, this.status});

  LinkService.fromJson(core.Map json_)
    : this(
        service: json_['service'] as core.String?,
        status: json_['status'] as core.String?,
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

  LinkedAccount({this.linkedAccountId, this.services});

  LinkedAccount.fromJson(core.Map json_)
    : this(
        linkedAccountId: json_['linkedAccountId'] as core.String?,
        services:
            (json_['services'] as core.List?)
                ?.map(
                  (value) => LinkService.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  ListAccountLabelsResponse({this.accountLabels, this.nextPageToken});

  ListAccountLabelsResponse.fromJson(core.Map json_)
    : this(
        accountLabels:
            (json_['accountLabels'] as core.List?)
                ?.map(
                  (value) => AccountLabel.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
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

  ListAccountReturnCarrierResponse({this.accountReturnCarriers});

  ListAccountReturnCarrierResponse.fromJson(core.Map json_)
    : this(
        accountReturnCarriers:
            (json_['accountReturnCarriers'] as core.List?)
                ?.map(
                  (value) => AccountReturnCarrier.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  ListCollectionStatusesResponse({this.nextPageToken, this.resources});

  ListCollectionStatusesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        resources:
            (json_['resources'] as core.List?)
                ?.map(
                  (value) => CollectionStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  ListCollectionsResponse({this.nextPageToken, this.resources});

  ListCollectionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        resources:
            (json_['resources'] as core.List?)
                ?.map(
                  (value) => Collection.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (resources != null) 'resources': resources!,
  };
}

/// Response message for the ListConversionSources method.
class ListConversionSourcesResponse {
  /// List of conversion sources.
  core.List<ConversionSource>? conversionSources;

  /// Token to be used to fetch the next results page.
  core.String? nextPageToken;

  ListConversionSourcesResponse({this.conversionSources, this.nextPageToken});

  ListConversionSourcesResponse.fromJson(core.Map json_)
    : this(
        conversionSources:
            (json_['conversionSources'] as core.List?)
                ?.map(
                  (value) => ConversionSource.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conversionSources != null) 'conversionSources': conversionSources!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
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

  ListCssesResponse({this.csses, this.nextPageToken});

  ListCssesResponse.fromJson(core.Map json_)
    : this(
        csses:
            (json_['csses'] as core.List?)
                ?.map(
                  (value) => Css.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (csses != null) 'csses': csses!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for the ListMethodQuotas method.
class ListMethodQuotasResponse {
  /// The current quota usage and limits per each method.
  core.List<MethodQuota>? methodQuotas;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListMethodQuotasResponse({this.methodQuotas, this.nextPageToken});

  ListMethodQuotasResponse.fromJson(core.Map json_)
    : this(
        methodQuotas:
            (json_['methodQuotas'] as core.List?)
                ?.map(
                  (value) => MethodQuota.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (methodQuotas != null) 'methodQuotas': methodQuotas!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for Promotions.List method.
class ListPromotionResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of all available promotions for the merchant.
  core.List<Promotion>? promotions;

  ListPromotionResponse({this.nextPageToken, this.promotions});

  ListPromotionResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        promotions:
            (json_['promotions'] as core.List?)
                ?.map(
                  (value) => Promotion.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (promotions != null) 'promotions': promotions!,
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

  ListRegionsResponse({this.nextPageToken, this.regions});

  ListRegionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        regions:
            (json_['regions'] as core.List?)
                ?.map(
                  (value) => Region.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (regions != null) 'regions': regions!,
  };
}

/// Response message for the `ListReturnPolicyOnline` method.
class ListReturnPolicyOnlineResponse {
  /// The retrieved return policies.
  core.List<ReturnPolicyOnline>? returnPolicies;

  ListReturnPolicyOnlineResponse({this.returnPolicies});

  ListReturnPolicyOnlineResponse.fromJson(core.Map json_)
    : this(
        returnPolicies:
            (json_['returnPolicies'] as core.List?)
                ?.map(
                  (value) => ReturnPolicyOnline.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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
  /// The availability of the product.
  ///
  /// For accepted attribute values, see the local product inventory feed
  /// specification.
  core.String? availability;

  /// A list of custom (merchant-provided) attributes.
  ///
  /// Can also be used to submit any attribute of the feed specification in its
  /// generic form, for example, `{ "name": "size type", "value": "regular" }`.
  core.List<CustomAttribute>? customAttributes;

  /// The in-store product location.
  core.String? instoreProductLocation;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#localInventory`"
  core.String? kind;

  /// The supported pickup method for this offer.
  ///
  /// Unless the value is "not supported", this field must be submitted together
  /// with `pickupSla`. For accepted attribute values, see the local product
  /// inventory feed specification.
  core.String? pickupMethod;

  /// The expected date that an order will be ready for pickup relative to the
  /// order date.
  ///
  /// Must be submitted together with `pickupMethod`. For accepted attribute
  /// values, see the local product inventory feed specification.
  core.String? pickupSla;

  /// The price of the product.
  Price? price;

  /// The quantity of the product.
  ///
  /// Must be nonnegative.
  core.int? quantity;

  /// The sale price of the product.
  ///
  /// Mandatory if `sale_price_effective_date` is defined.
  Price? salePrice;

  /// A date range represented by a pair of ISO 8601 dates separated by a space,
  /// comma, or slash.
  ///
  /// Both dates may be specified as 'null' if undecided.
  core.String? salePriceEffectiveDate;

  /// The store code of this local inventory resource.
  ///
  /// Required.
  core.String? storeCode;

  LocalInventory({
    this.availability,
    this.customAttributes,
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

  LocalInventory.fromJson(core.Map json_)
    : this(
        availability: json_['availability'] as core.String?,
        customAttributes:
            (json_['customAttributes'] as core.List?)
                ?.map(
                  (value) => CustomAttribute.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        instoreProductLocation: json_['instoreProductLocation'] as core.String?,
        kind: json_['kind'] as core.String?,
        pickupMethod: json_['pickupMethod'] as core.String?,
        pickupSla: json_['pickupSla'] as core.String?,
        price:
            json_.containsKey('price')
                ? Price.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        quantity: json_['quantity'] as core.int?,
        salePrice:
            json_.containsKey('salePrice')
                ? Price.fromJson(
                  json_['salePrice'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        salePriceEffectiveDate: json_['salePriceEffectiveDate'] as core.String?,
        storeCode: json_['storeCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (availability != null) 'availability': availability!,
    if (customAttributes != null) 'customAttributes': customAttributes!,
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

  LocalinventoryCustomBatchRequest({this.entries});

  LocalinventoryCustomBatchRequest.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => LocalinventoryCustomBatchRequestEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  LocalinventoryCustomBatchRequestEntry.fromJson(core.Map json_)
    : this(
        batchId: json_['batchId'] as core.int?,
        localInventory:
            json_.containsKey('localInventory')
                ? LocalInventory.fromJson(
                  json_['localInventory']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        merchantId: json_['merchantId'] as core.String?,
        method: json_['method'] as core.String?,
        productId: json_['productId'] as core.String?,
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

  LocalinventoryCustomBatchResponse({this.entries, this.kind});

  LocalinventoryCustomBatchResponse.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => LocalinventoryCustomBatchResponseEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
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

  /// A list of errors for failed custombatch entries.
  ///
  /// *Note:* Schema errors fail the whole request.
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

  LocalinventoryCustomBatchResponseEntry.fromJson(core.Map json_)
    : this(
        batchId: json_['batchId'] as core.int?,
        errors:
            json_.containsKey('errors')
                ? Errors.fromJson(
                  json_['errors'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        kind: json_['kind'] as core.String?,
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
  /// They must all be of the same location type (for example, state).
  core.List<core.String>? locationIds;

  LocationIdSet({this.locationIds});

  LocationIdSet.fromJson(core.Map json_)
    : this(
        locationIds:
            (json_['locationIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (locationIds != null) 'locationIds': locationIds!,
  };
}

/// Allows the setting up of loyalty program benefits (for example price or
/// points).
///
/// https://support.google.com/merchants/answer/12922446
class LoyaltyProgram {
  /// The cashback that can be used for future purchases.
  ///
  /// Optional.
  Price? cashbackForFutureUse;

  /// The amount of loyalty points earned on a purchase.
  ///
  /// Optional.
  core.String? loyaltyPoints;

  /// A date range during which the item is eligible for member price.
  ///
  /// If not specified, the member price is always applicable. The date range is
  /// represented by a pair of ISO 8601 dates separated by a space, comma, or
  /// slash.
  ///
  /// Optional.
  core.String? memberPriceEffectiveDate;

  /// The price for members of the given tier (instant discount price).
  ///
  /// Must be smaller or equal to the regular price.
  ///
  /// Optional.
  Price? price;

  /// The label of the loyalty program.
  ///
  /// This is an internal label that uniquely identifies the relationship
  /// between a merchant entity and a loyalty program entity. It must be
  /// provided so that system can associate the assets below (for example, price
  /// and points) with a merchant. The corresponding program must be linked to
  /// the merchant account.
  ///
  /// Required.
  core.String? programLabel;

  /// The shipping label for the loyalty program.
  ///
  /// You can use this label to indicate whether this offer has the loyalty
  /// shipping benefit. If not specified, the item is not eligible for loyalty
  /// shipping for the given loyalty tier.
  ///
  /// Optional.
  core.String? shippingLabel;

  /// The label of the tier within the loyalty program.
  ///
  /// Must match one of the labels within the program.
  ///
  /// Required.
  core.String? tierLabel;

  LoyaltyProgram({
    this.cashbackForFutureUse,
    this.loyaltyPoints,
    this.memberPriceEffectiveDate,
    this.price,
    this.programLabel,
    this.shippingLabel,
    this.tierLabel,
  });

  LoyaltyProgram.fromJson(core.Map json_)
    : this(
        cashbackForFutureUse:
            json_.containsKey('cashbackForFutureUse')
                ? Price.fromJson(
                  json_['cashbackForFutureUse']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        loyaltyPoints: json_['loyaltyPoints'] as core.String?,
        memberPriceEffectiveDate:
            json_['memberPriceEffectiveDate'] as core.String?,
        price:
            json_.containsKey('price')
                ? Price.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        programLabel: json_['programLabel'] as core.String?,
        shippingLabel: json_['shippingLabel'] as core.String?,
        tierLabel: json_['tierLabel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cashbackForFutureUse != null)
      'cashbackForFutureUse': cashbackForFutureUse!,
    if (loyaltyPoints != null) 'loyaltyPoints': loyaltyPoints!,
    if (memberPriceEffectiveDate != null)
      'memberPriceEffectiveDate': memberPriceEffectiveDate!,
    if (price != null) 'price': price!,
    if (programLabel != null) 'programLabel': programLabel!,
    if (shippingLabel != null) 'shippingLabel': shippingLabel!,
    if (tierLabel != null) 'tierLabel': tierLabel!,
  };
}

/// "Merchant Center Destination" sources can be used to send conversion events
/// from a website using a Google tag directly to a Merchant Center account
/// where the source is created.
class MerchantCenterDestination {
  /// Attribution settings being used for the Merchant Center Destination.
  ///
  /// Required.
  AttributionSettings? attributionSettings;

  /// Three-letter currency code (ISO 4217).
  ///
  /// The currency code defines in which currency the conversions sent to this
  /// destination will be reported in Merchant Center.
  ///
  /// Required.
  core.String? currencyCode;

  /// Merchant Center Destination ID.
  ///
  /// Output only.
  core.String? destinationId;

  /// Merchant-specified display name for the destination.
  ///
  /// This is the name that identifies the conversion source within the Merchant
  /// Center UI. Limited to 64 characters.
  ///
  /// Required.
  core.String? displayName;

  MerchantCenterDestination({
    this.attributionSettings,
    this.currencyCode,
    this.destinationId,
    this.displayName,
  });

  MerchantCenterDestination.fromJson(core.Map json_)
    : this(
        attributionSettings:
            json_.containsKey('attributionSettings')
                ? AttributionSettings.fromJson(
                  json_['attributionSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        currencyCode: json_['currencyCode'] as core.String?,
        destinationId: json_['destinationId'] as core.String?,
        displayName: json_['displayName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributionSettings != null)
      'attributionSettings': attributionSettings!,
    if (currencyCode != null) 'currencyCode': currencyCode!,
    if (destinationId != null) 'destinationId': destinationId!,
    if (displayName != null) 'displayName': displayName!,
  };
}

/// The quota information per method in the Content API.
class MethodQuota {
  /// The method name, for example `products.list`.
  ///
  /// Method name does not contain version because quota can be shared between
  /// different API versions of the same method.
  ///
  /// Output only.
  core.String? method;

  /// The maximum number of calls allowed per day for the method.
  ///
  /// Output only.
  core.String? quotaLimit;

  /// The maximum number of calls allowed per minute for the method.
  ///
  /// Output only.
  core.String? quotaMinuteLimit;

  /// The current quota usage, meaning the number of calls already made to the
  /// method per day.
  ///
  /// Usage is reset every day at 12 PM midday UTC.
  ///
  /// Output only.
  core.String? quotaUsage;

  MethodQuota({
    this.method,
    this.quotaLimit,
    this.quotaMinuteLimit,
    this.quotaUsage,
  });

  MethodQuota.fromJson(core.Map json_)
    : this(
        method: json_['method'] as core.String?,
        quotaLimit: json_['quotaLimit'] as core.String?,
        quotaMinuteLimit: json_['quotaMinuteLimit'] as core.String?,
        quotaUsage: json_['quotaUsage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (method != null) 'method': method!,
    if (quotaLimit != null) 'quotaLimit': quotaLimit!,
    if (quotaMinuteLimit != null) 'quotaMinuteLimit': quotaMinuteLimit!,
    if (quotaUsage != null) 'quotaUsage': quotaUsage!,
  };
}

/// Performance metrics.
///
/// Values are only set for metrics requested explicitly in the request's search
/// query.
class Metrics {
  /// *Deprecated*: This field is no longer supported and retrieving it returns
  /// 0 starting from May 2024.
  ///
  /// Average order size - the average number of items in an order. **This
  /// metric cannot be segmented by product dimensions and
  /// customer_country_code.**
  core.double? aos;

  /// *Deprecated*: This field is no longer supported and retrieving it returns
  /// 0 starting from May 2024.
  ///
  /// Average order value in micros (1 millionth of a standard unit, 1 USD =
  /// 1000000 micros) - the average value (total price of items) of all placed
  /// orders. The currency of the returned value is stored in the currency_code
  /// segment. If this metric is selected, 'segments.currency_code' is
  /// automatically added to the SELECT clause in the search query (unless it is
  /// explicitly selected by the user) and the currency_code segment is
  /// populated in the response. **This metric cannot be segmented by product
  /// dimensions and customer_country_code.**
  core.double? aovMicros;

  /// Number of clicks.
  core.String? clicks;

  /// Number of conversions divided by the number of clicks, reported on the
  /// impression date.
  ///
  /// The metric is currently available only for the `FREE_PRODUCT_LISTING`
  /// program.
  core.double? conversionRate;

  /// Value of conversions in micros (1 millionth of a standard unit, 1 USD =
  /// 1000000 micros) attributed to the product, reported on the conversion
  /// date.
  ///
  /// The metric is currently available only for the `FREE_PRODUCT_LISTING`
  /// program. The currency of the returned value is stored in the currency_code
  /// segment. If this metric is selected, 'segments.currency_code' is
  /// automatically added to the SELECT clause in the search query (unless it is
  /// explicitly selected by the user) and the currency_code segment is
  /// populated in the response.
  core.String? conversionValueMicros;

  /// Number of conversions attributed to the product, reported on the
  /// conversion date.
  ///
  /// Depending on the attribution model, a conversion might be distributed
  /// across multiple clicks, where each click gets its own credit assigned.
  /// This metric is a sum of all such credits. The metric is currently
  /// available only for the `FREE_PRODUCT_LISTING` program.
  core.double? conversions;

  /// Click-through rate - the number of clicks merchant's products receive
  /// (clicks) divided by the number of times the products are shown
  /// (impressions).
  core.double? ctr;

  /// *Deprecated*: This field is no longer supported and retrieving it returns
  /// 0 starting from May 2024.
  ///
  /// Average number of days between an order being placed and the order being
  /// fully shipped, reported on the last shipment date. **This metric cannot be
  /// segmented by product dimensions and customer_country_code.**
  core.double? daysToShip;

  /// Number of times merchant's products are shown.
  core.String? impressions;

  /// *Deprecated*: This field is no longer supported and retrieving it returns
  /// 0 starting from May 2024.
  ///
  /// Average number of days between an item being ordered and the item being
  /// **This metric cannot be segmented by customer_country_code.**
  core.double? itemDaysToShip;

  /// *Deprecated*: This field is no longer supported and retrieving it returns
  /// 0 starting from May 2024.
  ///
  /// Percentage of shipped items in relation to all finalized items (shipped or
  /// rejected by the merchant; unshipped items are not taken into account),
  /// reported on the order date. Item fill rate is lowered by merchant
  /// rejections. **This metric cannot be segmented by customer_country_code.**
  core.double? itemFillRate;

  /// *Deprecated*: This field is no longer supported and retrieving it returns
  /// 0 starting from May 2024.
  ///
  /// Total price of ordered items in micros (1 millionth of a standard unit, 1
  /// USD = 1000000 micros). Excludes shipping, taxes (US only), and customer
  /// cancellations that happened within 30 minutes of placing the order. The
  /// currency of the returned value is stored in the currency_code segment. If
  /// this metric is selected, 'segments.currency_code' is automatically added
  /// to the SELECT clause in the search query (unless it is explicitly selected
  /// by the user) and the currency_code segment is populated in the response.
  /// **This metric cannot be segmented by customer_country_code.**
  core.String? orderedItemSalesMicros;

  /// *Deprecated*: This field is no longer supported and retrieving it returns
  /// 0 starting from May 2024.
  ///
  /// Number of ordered items. Excludes customer cancellations that happened
  /// within 30 minutes of placing the order. **This metric cannot be segmented
  /// by customer_country_code.**
  core.String? orderedItems;

  /// *Deprecated*: This field is no longer supported and retrieving it returns
  /// 0 starting from May 2024.
  ///
  /// Number of placed orders. Excludes customer cancellations that happened
  /// within 30 minutes of placing the order. **This metric cannot be segmented
  /// by product dimensions and customer_country_code.**
  core.String? orders;

  /// *Deprecated*: This field is no longer supported and retrieving it returns
  /// 0 starting from May 2024.
  ///
  /// Number of ordered items canceled by the merchant, reported on the order
  /// date. **This metric cannot be segmented by customer_country_code.**
  core.String? rejectedItems;

  /// *Deprecated*: This field is no longer supported and retrieving it returns
  /// 0 starting from May 2024.
  ///
  /// Total price of returned items divided by the total price of shipped items,
  /// reported on the order date. If this metric is selected,
  /// 'segments.currency_code' is automatically added to the SELECT clause in
  /// the search query (unless it is explicitly selected by the user) and the
  /// currency_code segment is populated in the response. **This metric cannot
  /// be segmented by customer_country_code.**
  core.double? returnRate;

  /// *Deprecated*: This field is no longer supported and retrieving it returns
  /// 0 starting from May 2024.
  ///
  /// Number of ordered items sent back for return, reported on the date when
  /// the merchant accepted the return. **This metric cannot be segmented by
  /// customer_country_code.**
  core.String? returnedItems;

  /// *Deprecated*: This field is no longer supported and retrieving it returns
  /// 0 starting from May 2024.
  ///
  /// Total price of ordered items sent back for return in micros (1 millionth
  /// of a standard unit, 1 USD = 1000000 micros), reported on the date when the
  /// merchant accepted the return. The currency of the returned value is stored
  /// in the currency_code segment. If this metric is selected,
  /// 'segments.currency_code' is automatically added to the SELECT clause in
  /// the search query (unless it is explicitly selected by the user) and the
  /// currency_code segment is populated in the response. **This metric cannot
  /// be segmented by customer_country_code.**
  core.String? returnsMicros;

  /// *Deprecated*: This field is no longer supported and retrieving it returns
  /// 0 starting from May 2024.
  ///
  /// Total price of shipped items in micros (1 millionth of a standard unit, 1
  /// USD = 1000000 micros), reported on the order date. Excludes shipping and
  /// taxes (US only). The currency of the returned value is stored in the
  /// currency_code segment. If this metric is selected,
  /// 'segments.currency_code' is automatically added to the SELECT clause in
  /// the search query (unless it is explicitly selected by the user) and the
  /// currency_code segment is populated in the response. **This metric cannot
  /// be segmented by customer_country_code.**
  core.String? shippedItemSalesMicros;

  /// *Deprecated*: This field is no longer supported and retrieving it returns
  /// 0 starting from May 2024.
  ///
  /// Number of shipped items, reported on the shipment date. **This metric
  /// cannot be segmented by customer_country_code.**
  core.String? shippedItems;

  /// *Deprecated*: This field is no longer supported and retrieving it returns
  /// 0 starting from May 2024.
  ///
  /// Number of fully shipped orders, reported on the last shipment date. **This
  /// metric cannot be segmented by product dimensions and
  /// customer_country_code.**
  core.String? shippedOrders;

  /// *Deprecated*: This field is no longer supported and retrieving it returns
  /// 0 starting from May 2024.
  ///
  /// Number of ordered items not shipped up until the end of the queried day.
  /// If a multi-day period is specified in the search query, the returned value
  /// is the average number of unshipped items over the days in the queried
  /// period. **This metric cannot be segmented by customer_country_code.**
  core.double? unshippedItems;

  /// *Deprecated*: This field is no longer supported and retrieving it returns
  /// 0 starting from May 2024.
  ///
  /// Number of orders not shipped or partially shipped up until the end of the
  /// queried day. If a multi-day period is specified in the search query, the
  /// returned value is the average number of unshipped orders over the days in
  /// the queried period. **This metric cannot be segmented by product
  /// dimensions and customer_country_code.**
  core.double? unshippedOrders;

  Metrics({
    this.aos,
    this.aovMicros,
    this.clicks,
    this.conversionRate,
    this.conversionValueMicros,
    this.conversions,
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

  Metrics.fromJson(core.Map json_)
    : this(
        aos: (json_['aos'] as core.num?)?.toDouble(),
        aovMicros: (json_['aovMicros'] as core.num?)?.toDouble(),
        clicks: json_['clicks'] as core.String?,
        conversionRate: (json_['conversionRate'] as core.num?)?.toDouble(),
        conversionValueMicros: json_['conversionValueMicros'] as core.String?,
        conversions: (json_['conversions'] as core.num?)?.toDouble(),
        ctr: (json_['ctr'] as core.num?)?.toDouble(),
        daysToShip: (json_['daysToShip'] as core.num?)?.toDouble(),
        impressions: json_['impressions'] as core.String?,
        itemDaysToShip: (json_['itemDaysToShip'] as core.num?)?.toDouble(),
        itemFillRate: (json_['itemFillRate'] as core.num?)?.toDouble(),
        orderedItemSalesMicros: json_['orderedItemSalesMicros'] as core.String?,
        orderedItems: json_['orderedItems'] as core.String?,
        orders: json_['orders'] as core.String?,
        rejectedItems: json_['rejectedItems'] as core.String?,
        returnRate: (json_['returnRate'] as core.num?)?.toDouble(),
        returnedItems: json_['returnedItems'] as core.String?,
        returnsMicros: json_['returnsMicros'] as core.String?,
        shippedItemSalesMicros: json_['shippedItemSalesMicros'] as core.String?,
        shippedItems: json_['shippedItems'] as core.String?,
        shippedOrders: json_['shippedOrders'] as core.String?,
        unshippedItems: (json_['unshippedItems'] as core.num?)?.toDouble(),
        unshippedOrders: (json_['unshippedOrders'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aos != null) 'aos': aos!,
    if (aovMicros != null) 'aovMicros': aovMicros!,
    if (clicks != null) 'clicks': clicks!,
    if (conversionRate != null) 'conversionRate': conversionRate!,
    if (conversionValueMicros != null)
      'conversionValueMicros': conversionValueMicros!,
    if (conversions != null) 'conversions': conversions!,
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

  MinimumOrderValueTable({this.storeCodeSetWithMovs});

  MinimumOrderValueTable.fromJson(core.Map json_)
    : this(
        storeCodeSetWithMovs:
            (json_['storeCodeSetWithMovs'] as core.List?)
                ?.map(
                  (value) => MinimumOrderValueTableStoreCodeSetWithMov.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  MinimumOrderValueTableStoreCodeSetWithMov({this.storeCodes, this.value});

  MinimumOrderValueTableStoreCodeSetWithMov.fromJson(core.Map json_)
    : this(
        storeCodes:
            (json_['storeCodes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        value:
            json_.containsKey('value')
                ? Price.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (storeCodes != null) 'storeCodes': storeCodes!,
    if (value != null) 'value': value!,
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

  OrderTrackingSignal.fromJson(core.Map json_)
    : this(
        customerShippingFee:
            json_.containsKey('customerShippingFee')
                ? PriceAmount.fromJson(
                  json_['customerShippingFee']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        deliveryPostalCode: json_['deliveryPostalCode'] as core.String?,
        deliveryRegionCode: json_['deliveryRegionCode'] as core.String?,
        lineItems:
            (json_['lineItems'] as core.List?)
                ?.map(
                  (value) => OrderTrackingSignalLineItemDetails.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        merchantId: json_['merchantId'] as core.String?,
        orderCreatedTime:
            json_.containsKey('orderCreatedTime')
                ? DateTime.fromJson(
                  json_['orderCreatedTime']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        orderId: json_['orderId'] as core.String?,
        orderTrackingSignalId: json_['orderTrackingSignalId'] as core.String?,
        shipmentLineItemMapping:
            (json_['shipmentLineItemMapping'] as core.List?)
                ?.map(
                  (value) =>
                      OrderTrackingSignalShipmentLineItemMapping.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        shippingInfo:
            (json_['shippingInfo'] as core.List?)
                ?.map(
                  (value) => OrderTrackingSignalShippingInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customerShippingFee != null)
      'customerShippingFee': customerShippingFee!,
    if (deliveryPostalCode != null) 'deliveryPostalCode': deliveryPostalCode!,
    if (deliveryRegionCode != null) 'deliveryRegionCode': deliveryRegionCode!,
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
  /// Brand of the product.
  core.String? brand;

  /// The Global Trade Item Number.
  core.String? gtin;

  /// The ID for this line item.
  ///
  /// Required.
  core.String? lineItemId;

  /// The manufacturer part number.
  core.String? mpn;

  /// Plain text description of this product (deprecated: Please use
  /// product_title instead).
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? productDescription;

  /// The Content API REST ID of the product, in the form
  /// channel:contentLanguage:targetCountry:offerId.
  ///
  /// Required.
  core.String? productId;

  /// Plain text title of this product.
  core.String? productTitle;

  /// The quantity of the line item in the order.
  core.String? quantity;

  /// Merchant SKU for this item (deprecated).
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? sku;

  /// Universal product code for this item (deprecated: Please use GTIN
  /// instead).
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? upc;

  OrderTrackingSignalLineItemDetails({
    this.brand,
    this.gtin,
    this.lineItemId,
    this.mpn,
    this.productDescription,
    this.productId,
    this.productTitle,
    this.quantity,
    this.sku,
    this.upc,
  });

  OrderTrackingSignalLineItemDetails.fromJson(core.Map json_)
    : this(
        brand: json_['brand'] as core.String?,
        gtin: json_['gtin'] as core.String?,
        lineItemId: json_['lineItemId'] as core.String?,
        mpn: json_['mpn'] as core.String?,
        productDescription: json_['productDescription'] as core.String?,
        productId: json_['productId'] as core.String?,
        productTitle: json_['productTitle'] as core.String?,
        quantity: json_['quantity'] as core.String?,
        sku: json_['sku'] as core.String?,
        upc: json_['upc'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (brand != null) 'brand': brand!,
    if (gtin != null) 'gtin': gtin!,
    if (lineItemId != null) 'lineItemId': lineItemId!,
    if (mpn != null) 'mpn': mpn!,
    if (productDescription != null) 'productDescription': productDescription!,
    if (productId != null) 'productId': productId!,
    if (productTitle != null) 'productTitle': productTitle!,
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

  OrderTrackingSignalShipmentLineItemMapping.fromJson(core.Map json_)
    : this(
        lineItemId: json_['lineItemId'] as core.String?,
        quantity: json_['quantity'] as core.String?,
        shipmentId: json_['shipmentId'] as core.String?,
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

  OrderTrackingSignalShippingInfo.fromJson(core.Map json_)
    : this(
        actualDeliveryTime:
            json_.containsKey('actualDeliveryTime')
                ? DateTime.fromJson(
                  json_['actualDeliveryTime']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        carrierName: json_['carrierName'] as core.String?,
        carrierServiceName: json_['carrierServiceName'] as core.String?,
        earliestDeliveryPromiseTime:
            json_.containsKey('earliestDeliveryPromiseTime')
                ? DateTime.fromJson(
                  json_['earliestDeliveryPromiseTime']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        latestDeliveryPromiseTime:
            json_.containsKey('latestDeliveryPromiseTime')
                ? DateTime.fromJson(
                  json_['latestDeliveryPromiseTime']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        originPostalCode: json_['originPostalCode'] as core.String?,
        originRegionCode: json_['originRegionCode'] as core.String?,
        shipmentId: json_['shipmentId'] as core.String?,
        shippedTime:
            json_.containsKey('shippedTime')
                ? DateTime.fromJson(
                  json_['shippedTime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        shippingStatus: json_['shippingStatus'] as core.String?,
        trackingId: json_['trackingId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actualDeliveryTime != null) 'actualDeliveryTime': actualDeliveryTime!,
    if (carrierName != null) 'carrierName': carrierName!,
    if (carrierServiceName != null) 'carrierServiceName': carrierServiceName!,
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

  PaymentServiceProviderLinkInfo.fromJson(core.Map json_)
    : this(
        externalAccountBusinessCountry:
            json_['externalAccountBusinessCountry'] as core.String?,
        externalAccountId: json_['externalAccountId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (externalAccountBusinessCountry != null)
      'externalAccountBusinessCountry': externalAccountBusinessCountry!,
    if (externalAccountId != null) 'externalAccountId': externalAccountId!,
  };
}

class PickupCarrierService {
  /// The name of the pickup carrier (for example, `"UPS"`).
  ///
  /// Required.
  core.String? carrierName;

  /// The name of the pickup service (for example, `"Access point"`).
  ///
  /// Required.
  core.String? serviceName;

  PickupCarrierService({this.carrierName, this.serviceName});

  PickupCarrierService.fromJson(core.Map json_)
    : this(
        carrierName: json_['carrierName'] as core.String?,
        serviceName: json_['serviceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (carrierName != null) 'carrierName': carrierName!,
    if (serviceName != null) 'serviceName': serviceName!,
  };
}

class PickupServicesPickupService {
  /// The name of the carrier (for example, `"UPS"`).
  ///
  /// Always present.
  core.String? carrierName;

  /// The CLDR country code of the carrier (for example, "US").
  ///
  /// Always present.
  core.String? country;

  /// The name of the pickup service (for example, `"Access point"`).
  ///
  /// Always present.
  core.String? serviceName;

  PickupServicesPickupService({
    this.carrierName,
    this.country,
    this.serviceName,
  });

  PickupServicesPickupService.fromJson(core.Map json_)
    : this(
        carrierName: json_['carrierName'] as core.String?,
        country: json_['country'] as core.String?,
        serviceName: json_['serviceName'] as core.String?,
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

  PosCustomBatchRequest({this.entries});

  PosCustomBatchRequest.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => PosCustomBatchRequestEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  PosCustomBatchRequestEntry.fromJson(core.Map json_)
    : this(
        batchId: json_['batchId'] as core.int?,
        inventory:
            json_.containsKey('inventory')
                ? PosInventory.fromJson(
                  json_['inventory'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        merchantId: json_['merchantId'] as core.String?,
        method: json_['method'] as core.String?,
        sale:
            json_.containsKey('sale')
                ? PosSale.fromJson(
                  json_['sale'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        store:
            json_.containsKey('store')
                ? PosStore.fromJson(
                  json_['store'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        storeCode: json_['storeCode'] as core.String?,
        targetMerchantId: json_['targetMerchantId'] as core.String?,
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

  PosCustomBatchResponse({this.entries, this.kind});

  PosCustomBatchResponse.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => PosCustomBatchResponseEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
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

  PosCustomBatchResponseEntry.fromJson(core.Map json_)
    : this(
        batchId: json_['batchId'] as core.int?,
        errors:
            json_.containsKey('errors')
                ? Errors.fromJson(
                  json_['errors'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        inventory:
            json_.containsKey('inventory')
                ? PosInventory.fromJson(
                  json_['inventory'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        kind: json_['kind'] as core.String?,
        sale:
            json_.containsKey('sale')
                ? PosSale.fromJson(
                  json_['sale'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        store:
            json_.containsKey('store')
                ? PosStore.fromJson(
                  json_['store'] as core.Map<core.String, core.dynamic>,
                )
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

  PosDataProviders({this.country, this.posDataProviders});

  PosDataProviders.fromJson(core.Map json_)
    : this(
        country: json_['country'] as core.String?,
        posDataProviders:
            (json_['posDataProviders'] as core.List?)
                ?.map(
                  (value) => PosDataProvidersPosDataProvider.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  PosDataProvidersPosDataProvider.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        fullName: json_['fullName'] as core.String?,
        providerId: json_['providerId'] as core.String?,
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

  /// Supported pickup method for this offer.
  ///
  /// Unless the value is "not supported", this field must be submitted together
  /// with `pickupSla`. For accepted attribute values, see the
  /// [local product inventory feed specification](https://support.google.com/merchants/answer/3061342).
  ///
  /// Optional.
  core.String? pickupMethod;

  /// Expected date that an order will be ready for pickup relative to the order
  /// date.
  ///
  /// Must be submitted together with `pickupMethod`. For accepted attribute
  /// values, see the
  /// [local product inventory feed specification](https://support.google.com/merchants/answer/3061342).
  ///
  /// Optional.
  core.String? pickupSla;

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
  /// Either a `storeCode` inserted through the API or the code of the store in
  /// a Business Profile.
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
    this.pickupMethod,
    this.pickupSla,
    this.price,
    this.quantity,
    this.storeCode,
    this.targetCountry,
    this.timestamp,
  });

  PosInventory.fromJson(core.Map json_)
    : this(
        contentLanguage: json_['contentLanguage'] as core.String?,
        gtin: json_['gtin'] as core.String?,
        itemId: json_['itemId'] as core.String?,
        kind: json_['kind'] as core.String?,
        pickupMethod: json_['pickupMethod'] as core.String?,
        pickupSla: json_['pickupSla'] as core.String?,
        price:
            json_.containsKey('price')
                ? Price.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        quantity: json_['quantity'] as core.String?,
        storeCode: json_['storeCode'] as core.String?,
        targetCountry: json_['targetCountry'] as core.String?,
        timestamp: json_['timestamp'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contentLanguage != null) 'contentLanguage': contentLanguage!,
    if (gtin != null) 'gtin': gtin!,
    if (itemId != null) 'itemId': itemId!,
    if (kind != null) 'kind': kind!,
    if (pickupMethod != null) 'pickupMethod': pickupMethod!,
    if (pickupSla != null) 'pickupSla': pickupSla!,
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

  /// Supported pickup method for this offer.
  ///
  /// Unless the value is "not supported", this field must be submitted together
  /// with `pickupSla`. For accepted attribute values, see the
  /// [local product inventory feed specification](https://support.google.com/merchants/answer/3061342).
  ///
  /// Optional.
  core.String? pickupMethod;

  /// Expected date that an order will be ready for pickup relative to the order
  /// date.
  ///
  /// Must be submitted together with `pickupMethod`. For accepted attribute
  /// values, see the
  /// [local product inventory feed specification](https://support.google.com/merchants/answer/3061342).
  ///
  /// Optional.
  core.String? pickupSla;

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
  /// Either a `storeCode` inserted through the API or the code of the store in
  /// a Business Profile.
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
    this.pickupMethod,
    this.pickupSla,
    this.price,
    this.quantity,
    this.storeCode,
    this.targetCountry,
    this.timestamp,
  });

  PosInventoryRequest.fromJson(core.Map json_)
    : this(
        contentLanguage: json_['contentLanguage'] as core.String?,
        gtin: json_['gtin'] as core.String?,
        itemId: json_['itemId'] as core.String?,
        pickupMethod: json_['pickupMethod'] as core.String?,
        pickupSla: json_['pickupSla'] as core.String?,
        price:
            json_.containsKey('price')
                ? Price.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        quantity: json_['quantity'] as core.String?,
        storeCode: json_['storeCode'] as core.String?,
        targetCountry: json_['targetCountry'] as core.String?,
        timestamp: json_['timestamp'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contentLanguage != null) 'contentLanguage': contentLanguage!,
    if (gtin != null) 'gtin': gtin!,
    if (itemId != null) 'itemId': itemId!,
    if (pickupMethod != null) 'pickupMethod': pickupMethod!,
    if (pickupSla != null) 'pickupSla': pickupSla!,
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

  /// Supported pickup method for this offer.
  ///
  /// Unless the value is "not supported", this field must be submitted together
  /// with `pickupSla`. For accepted attribute values, see the
  /// [local product inventory feed specification](https://support.google.com/merchants/answer/3061342).
  ///
  /// Optional.
  core.String? pickupMethod;

  /// Expected date that an order will be ready for pickup relative to the order
  /// date.
  ///
  /// Must be submitted together with `pickupMethod`. For accepted attribute
  /// values, see the
  /// [local product inventory feed specification](https://support.google.com/merchants/answer/3061342).
  ///
  /// Optional.
  core.String? pickupSla;

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
  /// Either a `storeCode` inserted through the API or the code of the store in
  /// a Business Profile.
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
    this.pickupMethod,
    this.pickupSla,
    this.price,
    this.quantity,
    this.storeCode,
    this.targetCountry,
    this.timestamp,
  });

  PosInventoryResponse.fromJson(core.Map json_)
    : this(
        contentLanguage: json_['contentLanguage'] as core.String?,
        gtin: json_['gtin'] as core.String?,
        itemId: json_['itemId'] as core.String?,
        kind: json_['kind'] as core.String?,
        pickupMethod: json_['pickupMethod'] as core.String?,
        pickupSla: json_['pickupSla'] as core.String?,
        price:
            json_.containsKey('price')
                ? Price.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        quantity: json_['quantity'] as core.String?,
        storeCode: json_['storeCode'] as core.String?,
        targetCountry: json_['targetCountry'] as core.String?,
        timestamp: json_['timestamp'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contentLanguage != null) 'contentLanguage': contentLanguage!,
    if (gtin != null) 'gtin': gtin!,
    if (itemId != null) 'itemId': itemId!,
    if (kind != null) 'kind': kind!,
    if (pickupMethod != null) 'pickupMethod': pickupMethod!,
    if (pickupSla != null) 'pickupSla': pickupSla!,
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

  PosListResponse({this.kind, this.resources});

  PosListResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        resources:
            (json_['resources'] as core.List?)
                ?.map(
                  (value) => PosStore.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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
  /// Either a `storeCode` inserted through the API or the code of the store in
  /// a Business Profile.
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

  PosSale.fromJson(core.Map json_)
    : this(
        contentLanguage: json_['contentLanguage'] as core.String?,
        gtin: json_['gtin'] as core.String?,
        itemId: json_['itemId'] as core.String?,
        kind: json_['kind'] as core.String?,
        price:
            json_.containsKey('price')
                ? Price.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        quantity: json_['quantity'] as core.String?,
        saleId: json_['saleId'] as core.String?,
        storeCode: json_['storeCode'] as core.String?,
        targetCountry: json_['targetCountry'] as core.String?,
        timestamp: json_['timestamp'] as core.String?,
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
  /// Either a `storeCode` inserted through the API or the code of the store in
  /// a Business Profile.
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

  PosSaleRequest.fromJson(core.Map json_)
    : this(
        contentLanguage: json_['contentLanguage'] as core.String?,
        gtin: json_['gtin'] as core.String?,
        itemId: json_['itemId'] as core.String?,
        price:
            json_.containsKey('price')
                ? Price.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        quantity: json_['quantity'] as core.String?,
        saleId: json_['saleId'] as core.String?,
        storeCode: json_['storeCode'] as core.String?,
        targetCountry: json_['targetCountry'] as core.String?,
        timestamp: json_['timestamp'] as core.String?,
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
  /// Either a `storeCode` inserted through the API or the code of the store in
  /// a Business Profile.
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

  PosSaleResponse.fromJson(core.Map json_)
    : this(
        contentLanguage: json_['contentLanguage'] as core.String?,
        gtin: json_['gtin'] as core.String?,
        itemId: json_['itemId'] as core.String?,
        kind: json_['kind'] as core.String?,
        price:
            json_.containsKey('price')
                ? Price.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        quantity: json_['quantity'] as core.String?,
        saleId: json_['saleId'] as core.String?,
        storeCode: json_['storeCode'] as core.String?,
        targetCountry: json_['targetCountry'] as core.String?,
        timestamp: json_['timestamp'] as core.String?,
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
  /// The business type of the store.
  core.List<core.String>? gcidCategory;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "`content#posStore`"
  core.String? kind;

  /// The matching status of POS store and Google Business Profile store.
  ///
  /// Possible values are: - "`matched`": The POS store is successfully matched
  /// with the Google Business Profile store. - "`failed`": The POS store is not
  /// matched with the Google Business Profile store. See matching_status_hint
  /// for further details. Note that there is up to 48 hours propagation delay
  /// for changes in Merchant Center (e.g. creation of new account, accounts
  /// linking) and Google Business Profile (e.g. store address update) which may
  /// affect the matching status. In such cases, after a delay call
  /// [pos.list](https://developers.google.com/shopping-content/reference/rest/v2.1/pos/list)
  /// to retrieve the updated matching status.
  ///
  /// Output only.
  core.String? matchingStatus;

  /// The hint of why the matching has failed.
  ///
  /// This is only set when matching_status=failed. Possible values are: -
  /// "`linked-store-not-found`": There aren't any Google Business Profile
  /// stores available for matching. Connect your Merchant Center account with
  /// the Google Business Profile account. Or add a new Google Business Profile
  /// store corresponding to the POS store. - "`store-match-not-found`": The
  /// provided POS store couldn't be matched to any of the connected Google
  /// Business Profile stores. Merchant Center account is connected correctly
  /// and stores are available on Google Business Profile, but POS store
  /// location address does not match with Google Business Profile stores'
  /// addresses. Update POS store address or Google Business Profile store
  /// address to match correctly. - "`store-match-unverified`": The provided POS
  /// store couldn't be matched to any of the connected Google Business Profile
  /// stores, as the matched Google Business Profile store is unverified. Go
  /// through the Google Business Profile verification process to match
  /// correctly.
  ///
  /// Output only.
  core.String? matchingStatusHint;

  /// The store phone number.
  core.String? phoneNumber;

  /// The Google Place Id of the store location.
  core.String? placeId;

  /// The street address of the store.
  ///
  /// Required.
  core.String? storeAddress;

  /// A store identifier that is unique for the given merchant.
  ///
  /// Required.
  core.String? storeCode;

  /// The merchant or store name.
  core.String? storeName;

  /// The website url for the store or merchant.
  core.String? websiteUrl;

  PosStore({
    this.gcidCategory,
    this.kind,
    this.matchingStatus,
    this.matchingStatusHint,
    this.phoneNumber,
    this.placeId,
    this.storeAddress,
    this.storeCode,
    this.storeName,
    this.websiteUrl,
  });

  PosStore.fromJson(core.Map json_)
    : this(
        gcidCategory:
            (json_['gcidCategory'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        kind: json_['kind'] as core.String?,
        matchingStatus: json_['matchingStatus'] as core.String?,
        matchingStatusHint: json_['matchingStatusHint'] as core.String?,
        phoneNumber: json_['phoneNumber'] as core.String?,
        placeId: json_['placeId'] as core.String?,
        storeAddress: json_['storeAddress'] as core.String?,
        storeCode: json_['storeCode'] as core.String?,
        storeName: json_['storeName'] as core.String?,
        websiteUrl: json_['websiteUrl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (gcidCategory != null) 'gcidCategory': gcidCategory!,
    if (kind != null) 'kind': kind!,
    if (matchingStatus != null) 'matchingStatus': matchingStatus!,
    if (matchingStatusHint != null) 'matchingStatusHint': matchingStatusHint!,
    if (phoneNumber != null) 'phoneNumber': phoneNumber!,
    if (placeId != null) 'placeId': placeId!,
    if (storeAddress != null) 'storeAddress': storeAddress!,
    if (storeCode != null) 'storeCode': storeCode!,
    if (storeName != null) 'storeName': storeName!,
    if (websiteUrl != null) 'websiteUrl': websiteUrl!,
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

  PostalCodeGroup({this.country, this.name, this.postalCodeRanges});

  PostalCodeGroup.fromJson(core.Map json_)
    : this(
        country: json_['country'] as core.String?,
        name: json_['name'] as core.String?,
        postalCodeRanges:
            (json_['postalCodeRanges'] as core.List?)
                ?.map(
                  (value) => PostalCodeRange.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  PostalCodeRange({this.postalCodeRangeBegin, this.postalCodeRangeEnd});

  PostalCodeRange.fromJson(core.Map json_)
    : this(
        postalCodeRangeBegin: json_['postalCodeRangeBegin'] as core.String?,
        postalCodeRangeEnd: json_['postalCodeRangeEnd'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (postalCodeRangeBegin != null)
      'postalCodeRangeBegin': postalCodeRangeBegin!,
    if (postalCodeRangeEnd != null) 'postalCodeRangeEnd': postalCodeRangeEnd!,
  };
}

typedef Price = $Shared11;

/// The price represented as a number and currency.
typedef PriceAmount = $Shared11;

/// Price competitiveness fields requested by the merchant in the query.
///
/// Field values are only set if the merchant queries
/// `PriceCompetitivenessProductView`.
/// https://support.google.com/merchants/answer/9626903
class PriceCompetitiveness {
  /// The price benchmark currency (ISO 4217 code).
  core.String? benchmarkPriceCurrencyCode;

  /// The latest available price benchmark in micros (1 millionth of a standard
  /// unit, 1 USD = 1000000 micros) for the product's catalog in the benchmark
  /// country.
  core.String? benchmarkPriceMicros;

  /// The country of the price benchmark (ISO 3166 code).
  core.String? countryCode;

  PriceCompetitiveness({
    this.benchmarkPriceCurrencyCode,
    this.benchmarkPriceMicros,
    this.countryCode,
  });

  PriceCompetitiveness.fromJson(core.Map json_)
    : this(
        benchmarkPriceCurrencyCode:
            json_['benchmarkPriceCurrencyCode'] as core.String?,
        benchmarkPriceMicros: json_['benchmarkPriceMicros'] as core.String?,
        countryCode: json_['countryCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (benchmarkPriceCurrencyCode != null)
      'benchmarkPriceCurrencyCode': benchmarkPriceCurrencyCode!,
    if (benchmarkPriceMicros != null)
      'benchmarkPriceMicros': benchmarkPriceMicros!,
    if (countryCode != null) 'countryCode': countryCode!,
  };
}

/// Price insights fields requested by the merchant in the query.
///
/// Field values are only set if the merchant queries
/// `PriceInsightsProductView`.
/// https://support.google.com/merchants/answer/11916926
class PriceInsights {
  /// The predicted effectiveness of applying the price suggestion, bucketed.
  /// Possible string values are:
  /// - "EFFECTIVENESS_UNSPECIFIED" : Effectiveness is unknown.
  /// - "LOW" : Effectiveness is low.
  /// - "MEDIUM" : Effectiveness is medium.
  /// - "HIGH" : Effectiveness is high.
  core.String? effectiveness;

  /// The predicted change in clicks as a fraction after introducing the
  /// suggested price compared to current active price.
  ///
  /// For example, 0.05 is a 5% predicted increase in clicks.
  core.double? predictedClicksChangeFraction;

  /// The predicted change in conversions as a fraction after introducing the
  /// suggested price compared to current active price.
  ///
  /// For example, 0.05 is a 5% predicted increase in conversions).
  core.double? predictedConversionsChangeFraction;

  /// *Deprecated*: This field is no longer supported and will start returning
  /// 0.
  ///
  /// The predicted change in gross profit as a fraction after introducing the
  /// suggested price compared to current active price. For example, 0.05 is a
  /// 5% predicted increase in gross profit.
  core.double? predictedGrossProfitChangeFraction;

  /// The predicted change in impressions as a fraction after introducing the
  /// suggested price compared to current active price.
  ///
  /// For example, 0.05 is a 5% predicted increase in impressions.
  core.double? predictedImpressionsChangeFraction;

  /// *Deprecated*: This field is no longer supported and will start returning
  /// USD for all requests.
  ///
  /// The predicted monthly gross profit change currency (ISO 4217 code).
  core.String? predictedMonthlyGrossProfitChangeCurrencyCode;

  /// *Deprecated*: This field is no longer supported and will start returning
  /// 0.
  ///
  /// The predicted change in gross profit in micros (1 millionth of a standard
  /// unit, 1 USD = 1000000 micros) after introducing the suggested price for a
  /// month compared to current active price.
  core.String? predictedMonthlyGrossProfitChangeMicros;

  /// The suggested price currency (ISO 4217 code).
  core.String? suggestedPriceCurrencyCode;

  /// The latest suggested price in micros (1 millionth of a standard unit, 1
  /// USD = 1000000 micros) for the product.
  core.String? suggestedPriceMicros;

  PriceInsights({
    this.effectiveness,
    this.predictedClicksChangeFraction,
    this.predictedConversionsChangeFraction,
    this.predictedGrossProfitChangeFraction,
    this.predictedImpressionsChangeFraction,
    this.predictedMonthlyGrossProfitChangeCurrencyCode,
    this.predictedMonthlyGrossProfitChangeMicros,
    this.suggestedPriceCurrencyCode,
    this.suggestedPriceMicros,
  });

  PriceInsights.fromJson(core.Map json_)
    : this(
        effectiveness: json_['effectiveness'] as core.String?,
        predictedClicksChangeFraction:
            (json_['predictedClicksChangeFraction'] as core.num?)?.toDouble(),
        predictedConversionsChangeFraction:
            (json_['predictedConversionsChangeFraction'] as core.num?)
                ?.toDouble(),
        predictedGrossProfitChangeFraction:
            (json_['predictedGrossProfitChangeFraction'] as core.num?)
                ?.toDouble(),
        predictedImpressionsChangeFraction:
            (json_['predictedImpressionsChangeFraction'] as core.num?)
                ?.toDouble(),
        predictedMonthlyGrossProfitChangeCurrencyCode:
            json_['predictedMonthlyGrossProfitChangeCurrencyCode']
                as core.String?,
        predictedMonthlyGrossProfitChangeMicros:
            json_['predictedMonthlyGrossProfitChangeMicros'] as core.String?,
        suggestedPriceCurrencyCode:
            json_['suggestedPriceCurrencyCode'] as core.String?,
        suggestedPriceMicros: json_['suggestedPriceMicros'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (effectiveness != null) 'effectiveness': effectiveness!,
    if (predictedClicksChangeFraction != null)
      'predictedClicksChangeFraction': predictedClicksChangeFraction!,
    if (predictedConversionsChangeFraction != null)
      'predictedConversionsChangeFraction': predictedConversionsChangeFraction!,
    if (predictedGrossProfitChangeFraction != null)
      'predictedGrossProfitChangeFraction': predictedGrossProfitChangeFraction!,
    if (predictedImpressionsChangeFraction != null)
      'predictedImpressionsChangeFraction': predictedImpressionsChangeFraction!,
    if (predictedMonthlyGrossProfitChangeCurrencyCode != null)
      'predictedMonthlyGrossProfitChangeCurrencyCode':
          predictedMonthlyGrossProfitChangeCurrencyCode!,
    if (predictedMonthlyGrossProfitChangeMicros != null)
      'predictedMonthlyGrossProfitChangeMicros':
          predictedMonthlyGrossProfitChangeMicros!,
    if (suggestedPriceCurrencyCode != null)
      'suggestedPriceCurrencyCode': suggestedPriceCurrencyCode!,
    if (suggestedPriceMicros != null)
      'suggestedPriceMicros': suggestedPriceMicros!,
  };
}

/// Required product attributes are primarily defined by the product data
/// specification.
///
/// See the Product Data Specification Help Center article for information.
/// Product data. After inserting, updating, or deleting a product, it may take
/// several minutes before changes take effect. The following reference
/// documentation lists the field names in the **camelCase** casing style while
/// the Products Data Specification lists the names in the **snake_case** casing
/// style.
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

  /// A safeguard in the \[Automated
  /// Discounts\](//support.google.com/merchants/answer/10295759) and \[Dynamic
  /// Promotions\](//support.google.com/merchants/answer/13949249) projects,
  /// ensuring that discounts on merchants' offers do not fall below this value,
  /// thereby preserving the offer's value and profitability.
  Price? autoPricingMinPrice;

  /// Availability status of the item.
  core.String? availability;

  /// The day a pre-ordered product becomes available for delivery, in ISO 8601
  /// format.
  core.String? availabilityDate;

  /// Brand of the item.
  core.String? brand;

  /// URL for the canonical version of your item's landing page.
  core.String? canonicalLink;

  /// Product
  /// [certification](https://support.google.com/merchants/answer/13528839),
  /// introduced for EU energy efficiency labeling compliance using the
  /// [EU EPREL](https://eprel.ec.europa.eu/screen/home) database.
  core.List<ProductCertification>? certifications;

  /// The item's channel (online or local).
  ///
  /// Acceptable values are: - "`local`" - "`online`"
  ///
  /// Required.
  core.String? channel;

  /// Extra fields to export to the Cloud Retail program.
  core.List<CloudExportAdditionalProperties>? cloudExportAdditionalProperties;

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
  /// in its generic form (for example, `{ "name": "size type", "value":
  /// "regular" }`). This is useful for submitting attributes not explicitly
  /// exposed by the API, such as additional attributes used for Buy on Google
  /// (formerly known as Shopping Actions).
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

  /// The date time when an offer becomes visible in search results across
  /// Google’s YouTube surfaces, in
  /// [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format.
  ///
  /// See
  /// [Disclosure date](https://support.google.com/merchants/answer/13034208)
  /// for more information.
  core.String? disclosureDate;

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

  /// The list of \[destinations to
  /// exclude\](//support.google.com/merchants/answer/6324486) for this target
  /// (corresponds to cleared check boxes in Merchant Center).
  ///
  /// Products that are excluded from all destinations for more than 7 days are
  /// automatically deleted.
  core.List<core.String>? excludedDestinations;

  /// Date on which the item should expire, as specified upon insertion, in ISO
  /// 8601 format.
  ///
  /// The actual expiration date in Google Shopping is exposed in
  /// `productstatuses` as `googleExpirationDate` and might be earlier if
  /// `expirationDate` is too far in the future.
  core.String? expirationDate;

  /// Required for multi-seller accounts.
  ///
  /// Use this attribute if you're a marketplace uploading products for various
  /// sellers to your multi-seller account.
  core.String? externalSellerId;

  /// Feed label for the item.
  ///
  /// Either `targetCountry` or `feedLabel` is required. Must be less than or
  /// equal to 20 uppercase letters (A-Z), numbers (0-9), and dashes (-).
  core.String? feedLabel;

  /// Conditions to be met for a product to have free shipping.
  ///
  /// Optional.
  core.List<FreeShippingThreshold>? freeShippingThreshold;

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
  /// `productId` parameter. The REST ID for a product has one of the 2 forms
  /// channel:contentLanguage: targetCountry: offerId or
  /// channel:contentLanguage:feedLabel: offerId.
  core.String? id;

  /// False when the item does not have unique product identifiers appropriate
  /// to its category, such as GTIN, MPN, and brand.
  ///
  /// Required according to the Unique Product Identifier Rules for all target
  /// countries except for Canada.
  core.bool? identifierExists;

  /// URL of an image of the item.
  core.String? imageLink;

  /// The list of \[destinations to
  /// include\](//support.google.com/merchants/answer/7501026) for this target
  /// (corresponds to checked check boxes in Merchant Center).
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

  /// Additional URLs of lifestyle images of the item.
  ///
  /// Used to explicitly identify images that showcase your item in a real-world
  /// context. See the Help Center article for more information.
  core.List<core.String>? lifestyleImageLinks;

  /// URL directly linking to your item's page on your website.
  core.String? link;

  /// URL template for merchant hosted local storefront.
  core.String? linkTemplate;

  /// Loyalty program information that is used to surface loyalty benefits ( for
  /// example, better pricing, points, etc) to the user of this item.
  ///
  /// This signular field points to the latest uploaded loyalty program info.
  /// This field will be deprecated in the coming weeks and should not be used
  /// in favor of the plural 'LoyaltyProgram' field below.
  LoyaltyProgram? loyaltyProgram;

  /// A list of loyalty program information that is used to surface loyalty
  /// benefits (for example, better pricing, points, etc) to the user of this
  /// item.
  ///
  /// Optional.
  core.List<LoyaltyProgram>? loyaltyPrograms;

  /// The material of which the item is made.
  core.String? material;

  /// The energy efficiency class as defined in EU directive 2010/30/EU.
  core.String? maxEnergyEfficiencyClass;

  /// Maximal product handling time (in business days).
  core.String? maxHandlingTime;

  /// Maximum retail price (MRP) of the item.
  ///
  /// Applicable to India only.
  Price? maximumRetailPrice;

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

  /// The item's pattern (for example, polka dots).
  core.String? pattern;

  /// Publication of this item should be temporarily paused.
  ///
  /// Acceptable values are: - "`ads`"
  core.String? pause;

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

  /// Categories of the item (formatted as in product data specification).
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

  /// Date range during which the item is on sale (see product data
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

  /// The source of the offer, that is, how the offer was created.
  ///
  /// Acceptable values are: - "`api`" - "`crawl`" - "`feed`"
  ///
  /// Output only.
  core.String? source;

  /// Structured description, for algorithmically (AI)-generated descriptions.
  ProductStructuredDescription? structuredDescription;

  /// Structured title, for algorithmically (AI)-generated titles.
  ProductStructuredTitle? structuredTitle;

  /// Number of periods (months or years) and amount of payment per period for
  /// an item with an associated subscription contract.
  ProductSubscriptionCost? subscriptionCost;

  /// The list of sustainability incentive programs.
  ///
  /// Optional.
  core.List<ProductSustainabilityIncentive>? sustainabilityIncentives;

  /// The CLDR territory code for the item's country of sale.
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

  /// URL of the 3D model of the item to provide more visuals.
  core.String? virtualModelLink;

  Product({
    this.additionalImageLinks,
    this.additionalSizeType,
    this.adsGrouping,
    this.adsLabels,
    this.adsRedirect,
    this.adult,
    this.ageGroup,
    this.autoPricingMinPrice,
    this.availability,
    this.availabilityDate,
    this.brand,
    this.canonicalLink,
    this.certifications,
    this.channel,
    this.cloudExportAdditionalProperties,
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
    this.disclosureDate,
    this.displayAdsId,
    this.displayAdsLink,
    this.displayAdsSimilarIds,
    this.displayAdsTitle,
    this.displayAdsValue,
    this.energyEfficiencyClass,
    this.excludedDestinations,
    this.expirationDate,
    this.externalSellerId,
    this.feedLabel,
    this.freeShippingThreshold,
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
    this.lifestyleImageLinks,
    this.link,
    this.linkTemplate,
    this.loyaltyProgram,
    this.loyaltyPrograms,
    this.material,
    this.maxEnergyEfficiencyClass,
    this.maxHandlingTime,
    this.maximumRetailPrice,
    this.minEnergyEfficiencyClass,
    this.minHandlingTime,
    this.mobileLink,
    this.mobileLinkTemplate,
    this.mpn,
    this.multipack,
    this.offerId,
    this.pattern,
    this.pause,
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
    this.structuredDescription,
    this.structuredTitle,
    this.subscriptionCost,
    this.sustainabilityIncentives,
    this.targetCountry,
    this.taxCategory,
    this.taxes,
    this.title,
    this.transitTimeLabel,
    this.unitPricingBaseMeasure,
    this.unitPricingMeasure,
    this.virtualModelLink,
  });

  Product.fromJson(core.Map json_)
    : this(
        additionalImageLinks:
            (json_['additionalImageLinks'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        additionalSizeType: json_['additionalSizeType'] as core.String?,
        adsGrouping: json_['adsGrouping'] as core.String?,
        adsLabels:
            (json_['adsLabels'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        adsRedirect: json_['adsRedirect'] as core.String?,
        adult: json_['adult'] as core.bool?,
        ageGroup: json_['ageGroup'] as core.String?,
        autoPricingMinPrice:
            json_.containsKey('autoPricingMinPrice')
                ? Price.fromJson(
                  json_['autoPricingMinPrice']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        availability: json_['availability'] as core.String?,
        availabilityDate: json_['availabilityDate'] as core.String?,
        brand: json_['brand'] as core.String?,
        canonicalLink: json_['canonicalLink'] as core.String?,
        certifications:
            (json_['certifications'] as core.List?)
                ?.map(
                  (value) => ProductCertification.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        channel: json_['channel'] as core.String?,
        cloudExportAdditionalProperties:
            (json_['cloudExportAdditionalProperties'] as core.List?)
                ?.map(
                  (value) => CloudExportAdditionalProperties.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        color: json_['color'] as core.String?,
        condition: json_['condition'] as core.String?,
        contentLanguage: json_['contentLanguage'] as core.String?,
        costOfGoodsSold:
            json_.containsKey('costOfGoodsSold')
                ? Price.fromJson(
                  json_['costOfGoodsSold']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        customAttributes:
            (json_['customAttributes'] as core.List?)
                ?.map(
                  (value) => CustomAttribute.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        customLabel0: json_['customLabel0'] as core.String?,
        customLabel1: json_['customLabel1'] as core.String?,
        customLabel2: json_['customLabel2'] as core.String?,
        customLabel3: json_['customLabel3'] as core.String?,
        customLabel4: json_['customLabel4'] as core.String?,
        description: json_['description'] as core.String?,
        disclosureDate: json_['disclosureDate'] as core.String?,
        displayAdsId: json_['displayAdsId'] as core.String?,
        displayAdsLink: json_['displayAdsLink'] as core.String?,
        displayAdsSimilarIds:
            (json_['displayAdsSimilarIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        displayAdsTitle: json_['displayAdsTitle'] as core.String?,
        displayAdsValue: (json_['displayAdsValue'] as core.num?)?.toDouble(),
        energyEfficiencyClass: json_['energyEfficiencyClass'] as core.String?,
        excludedDestinations:
            (json_['excludedDestinations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        expirationDate: json_['expirationDate'] as core.String?,
        externalSellerId: json_['externalSellerId'] as core.String?,
        feedLabel: json_['feedLabel'] as core.String?,
        freeShippingThreshold:
            (json_['freeShippingThreshold'] as core.List?)
                ?.map(
                  (value) => FreeShippingThreshold.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        gender: json_['gender'] as core.String?,
        googleProductCategory: json_['googleProductCategory'] as core.String?,
        gtin: json_['gtin'] as core.String?,
        id: json_['id'] as core.String?,
        identifierExists: json_['identifierExists'] as core.bool?,
        imageLink: json_['imageLink'] as core.String?,
        includedDestinations:
            (json_['includedDestinations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        installment:
            json_.containsKey('installment')
                ? Installment.fromJson(
                  json_['installment'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        isBundle: json_['isBundle'] as core.bool?,
        itemGroupId: json_['itemGroupId'] as core.String?,
        kind: json_['kind'] as core.String?,
        lifestyleImageLinks:
            (json_['lifestyleImageLinks'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        link: json_['link'] as core.String?,
        linkTemplate: json_['linkTemplate'] as core.String?,
        loyaltyProgram:
            json_.containsKey('loyaltyProgram')
                ? LoyaltyProgram.fromJson(
                  json_['loyaltyProgram']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        loyaltyPrograms:
            (json_['loyaltyPrograms'] as core.List?)
                ?.map(
                  (value) => LoyaltyProgram.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        material: json_['material'] as core.String?,
        maxEnergyEfficiencyClass:
            json_['maxEnergyEfficiencyClass'] as core.String?,
        maxHandlingTime: json_['maxHandlingTime'] as core.String?,
        maximumRetailPrice:
            json_.containsKey('maximumRetailPrice')
                ? Price.fromJson(
                  json_['maximumRetailPrice']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        minEnergyEfficiencyClass:
            json_['minEnergyEfficiencyClass'] as core.String?,
        minHandlingTime: json_['minHandlingTime'] as core.String?,
        mobileLink: json_['mobileLink'] as core.String?,
        mobileLinkTemplate: json_['mobileLinkTemplate'] as core.String?,
        mpn: json_['mpn'] as core.String?,
        multipack: json_['multipack'] as core.String?,
        offerId: json_['offerId'] as core.String?,
        pattern: json_['pattern'] as core.String?,
        pause: json_['pause'] as core.String?,
        pickupMethod: json_['pickupMethod'] as core.String?,
        pickupSla: json_['pickupSla'] as core.String?,
        price:
            json_.containsKey('price')
                ? Price.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        productDetails:
            (json_['productDetails'] as core.List?)
                ?.map(
                  (value) => ProductProductDetail.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        productHeight:
            json_.containsKey('productHeight')
                ? ProductDimension.fromJson(
                  json_['productHeight'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        productHighlights:
            (json_['productHighlights'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        productLength:
            json_.containsKey('productLength')
                ? ProductDimension.fromJson(
                  json_['productLength'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        productTypes:
            (json_['productTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        productWeight:
            json_.containsKey('productWeight')
                ? ProductWeight.fromJson(
                  json_['productWeight'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        productWidth:
            json_.containsKey('productWidth')
                ? ProductDimension.fromJson(
                  json_['productWidth'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        promotionIds:
            (json_['promotionIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        salePrice:
            json_.containsKey('salePrice')
                ? Price.fromJson(
                  json_['salePrice'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        salePriceEffectiveDate: json_['salePriceEffectiveDate'] as core.String?,
        sellOnGoogleQuantity: json_['sellOnGoogleQuantity'] as core.String?,
        shipping:
            (json_['shipping'] as core.List?)
                ?.map(
                  (value) => ProductShipping.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        shippingHeight:
            json_.containsKey('shippingHeight')
                ? ProductShippingDimension.fromJson(
                  json_['shippingHeight']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        shippingLabel: json_['shippingLabel'] as core.String?,
        shippingLength:
            json_.containsKey('shippingLength')
                ? ProductShippingDimension.fromJson(
                  json_['shippingLength']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        shippingWeight:
            json_.containsKey('shippingWeight')
                ? ProductShippingWeight.fromJson(
                  json_['shippingWeight']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        shippingWidth:
            json_.containsKey('shippingWidth')
                ? ProductShippingDimension.fromJson(
                  json_['shippingWidth'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        shoppingAdsExcludedCountries:
            (json_['shoppingAdsExcludedCountries'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        sizeSystem: json_['sizeSystem'] as core.String?,
        sizeType: json_['sizeType'] as core.String?,
        sizes:
            (json_['sizes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        source: json_['source'] as core.String?,
        structuredDescription:
            json_.containsKey('structuredDescription')
                ? ProductStructuredDescription.fromJson(
                  json_['structuredDescription']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        structuredTitle:
            json_.containsKey('structuredTitle')
                ? ProductStructuredTitle.fromJson(
                  json_['structuredTitle']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        subscriptionCost:
            json_.containsKey('subscriptionCost')
                ? ProductSubscriptionCost.fromJson(
                  json_['subscriptionCost']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sustainabilityIncentives:
            (json_['sustainabilityIncentives'] as core.List?)
                ?.map(
                  (value) => ProductSustainabilityIncentive.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        targetCountry: json_['targetCountry'] as core.String?,
        taxCategory: json_['taxCategory'] as core.String?,
        taxes:
            (json_['taxes'] as core.List?)
                ?.map(
                  (value) => ProductTax.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        title: json_['title'] as core.String?,
        transitTimeLabel: json_['transitTimeLabel'] as core.String?,
        unitPricingBaseMeasure:
            json_.containsKey('unitPricingBaseMeasure')
                ? ProductUnitPricingBaseMeasure.fromJson(
                  json_['unitPricingBaseMeasure']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        unitPricingMeasure:
            json_.containsKey('unitPricingMeasure')
                ? ProductUnitPricingMeasure.fromJson(
                  json_['unitPricingMeasure']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        virtualModelLink: json_['virtualModelLink'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalImageLinks != null)
      'additionalImageLinks': additionalImageLinks!,
    if (additionalSizeType != null) 'additionalSizeType': additionalSizeType!,
    if (adsGrouping != null) 'adsGrouping': adsGrouping!,
    if (adsLabels != null) 'adsLabels': adsLabels!,
    if (adsRedirect != null) 'adsRedirect': adsRedirect!,
    if (adult != null) 'adult': adult!,
    if (ageGroup != null) 'ageGroup': ageGroup!,
    if (autoPricingMinPrice != null)
      'autoPricingMinPrice': autoPricingMinPrice!,
    if (availability != null) 'availability': availability!,
    if (availabilityDate != null) 'availabilityDate': availabilityDate!,
    if (brand != null) 'brand': brand!,
    if (canonicalLink != null) 'canonicalLink': canonicalLink!,
    if (certifications != null) 'certifications': certifications!,
    if (channel != null) 'channel': channel!,
    if (cloudExportAdditionalProperties != null)
      'cloudExportAdditionalProperties': cloudExportAdditionalProperties!,
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
    if (disclosureDate != null) 'disclosureDate': disclosureDate!,
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
    if (externalSellerId != null) 'externalSellerId': externalSellerId!,
    if (feedLabel != null) 'feedLabel': feedLabel!,
    if (freeShippingThreshold != null)
      'freeShippingThreshold': freeShippingThreshold!,
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
    if (lifestyleImageLinks != null)
      'lifestyleImageLinks': lifestyleImageLinks!,
    if (link != null) 'link': link!,
    if (linkTemplate != null) 'linkTemplate': linkTemplate!,
    if (loyaltyProgram != null) 'loyaltyProgram': loyaltyProgram!,
    if (loyaltyPrograms != null) 'loyaltyPrograms': loyaltyPrograms!,
    if (material != null) 'material': material!,
    if (maxEnergyEfficiencyClass != null)
      'maxEnergyEfficiencyClass': maxEnergyEfficiencyClass!,
    if (maxHandlingTime != null) 'maxHandlingTime': maxHandlingTime!,
    if (maximumRetailPrice != null) 'maximumRetailPrice': maximumRetailPrice!,
    if (minEnergyEfficiencyClass != null)
      'minEnergyEfficiencyClass': minEnergyEfficiencyClass!,
    if (minHandlingTime != null) 'minHandlingTime': minHandlingTime!,
    if (mobileLink != null) 'mobileLink': mobileLink!,
    if (mobileLinkTemplate != null) 'mobileLinkTemplate': mobileLinkTemplate!,
    if (mpn != null) 'mpn': mpn!,
    if (multipack != null) 'multipack': multipack!,
    if (offerId != null) 'offerId': offerId!,
    if (pattern != null) 'pattern': pattern!,
    if (pause != null) 'pause': pause!,
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
    if (structuredDescription != null)
      'structuredDescription': structuredDescription!,
    if (structuredTitle != null) 'structuredTitle': structuredTitle!,
    if (subscriptionCost != null) 'subscriptionCost': subscriptionCost!,
    if (sustainabilityIncentives != null)
      'sustainabilityIncentives': sustainabilityIncentives!,
    if (targetCountry != null) 'targetCountry': targetCountry!,
    if (taxCategory != null) 'taxCategory': taxCategory!,
    if (taxes != null) 'taxes': taxes!,
    if (title != null) 'title': title!,
    if (transitTimeLabel != null) 'transitTimeLabel': transitTimeLabel!,
    if (unitPricingBaseMeasure != null)
      'unitPricingBaseMeasure': unitPricingBaseMeasure!,
    if (unitPricingMeasure != null) 'unitPricingMeasure': unitPricingMeasure!,
    if (virtualModelLink != null) 'virtualModelLink': virtualModelLink!,
  };
}

/// Product
/// [certification](https://support.google.com/merchants/answer/13528839),
/// introduced for EU energy efficiency labeling compliance using the
/// [EU EPREL](https://eprel.ec.europa.eu/screen/home) database.
class ProductCertification {
  /// The certification authority, for example "European_Commission".
  ///
  /// Maximum length is 2000 characters.
  core.String? certificationAuthority;

  /// The certification code, for eaxample "123456".
  ///
  /// Maximum length is 2000 characters.
  core.String? certificationCode;

  /// The name of the certification, for example "EPREL".
  ///
  /// Maximum length is 2000 characters.
  core.String? certificationName;

  /// The certification value (also known as class, level or grade), for example
  /// "A+", "C", "gold".
  ///
  /// Maximum length is 2000 characters.
  core.String? certificationValue;

  ProductCertification({
    this.certificationAuthority,
    this.certificationCode,
    this.certificationName,
    this.certificationValue,
  });

  ProductCertification.fromJson(core.Map json_)
    : this(
        certificationAuthority: json_['certificationAuthority'] as core.String?,
        certificationCode: json_['certificationCode'] as core.String?,
        certificationName: json_['certificationName'] as core.String?,
        certificationValue: json_['certificationValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (certificationAuthority != null)
      'certificationAuthority': certificationAuthority!,
    if (certificationCode != null) 'certificationCode': certificationCode!,
    if (certificationName != null) 'certificationName': certificationName!,
    if (certificationValue != null) 'certificationValue': certificationValue!,
  };
}

/// Product cluster fields.
///
/// A product cluster is a grouping for different offers that represent the same
/// product. Values are only set for fields requested explicitly in the
/// request's search query.
class ProductCluster {
  /// Brand of the product cluster.
  core.String? brand;

  /// Tells if there is at least one product of the brand currently `IN_STOCK`
  /// in your product feed across multiple countries, all products are
  /// `OUT_OF_STOCK` in your product feed, or `NOT_IN_INVENTORY`.
  ///
  /// The field doesn't take the Best Sellers report country filter into
  /// account.
  /// Possible string values are:
  /// - "INVENTORY_STATUS_UNSPECIFIED" : Inventory status is unknown.
  /// - "IN_STOCK" : Merchant has a product for this product cluster or brand in
  /// stock.
  /// - "OUT_OF_STOCK" : Merchant has a product for this product cluster or
  /// brand in inventory but it is currently out of stock.
  /// - "NOT_IN_INVENTORY" : Merchant does not have a product for this product
  /// cluster or brand in inventory.
  core.String? brandInventoryStatus;

  /// Product category (1st level) of the product cluster, represented in
  /// Google's product taxonomy.
  core.String? categoryL1;

  /// Product category (2nd level) of the product cluster, represented in
  /// Google's product taxonomy.
  core.String? categoryL2;

  /// Product category (3rd level) of the product cluster, represented in
  /// Google's product taxonomy.
  core.String? categoryL3;

  /// Product category (4th level) of the product cluster, represented in
  /// Google's product taxonomy.
  core.String? categoryL4;

  /// Product category (5th level) of the product cluster, represented in
  /// Google's product taxonomy.
  core.String? categoryL5;

  /// Tells whether the product cluster is `IN_STOCK` in your product feed
  /// across multiple countries, `OUT_OF_STOCK` in your product feed, or
  /// `NOT_IN_INVENTORY` at all.
  ///
  /// The field doesn't take the Best Sellers report country filter into
  /// account.
  /// Possible string values are:
  /// - "INVENTORY_STATUS_UNSPECIFIED" : Inventory status is unknown.
  /// - "IN_STOCK" : Merchant has a product for this product cluster or brand in
  /// stock.
  /// - "OUT_OF_STOCK" : Merchant has a product for this product cluster or
  /// brand in inventory but it is currently out of stock.
  /// - "NOT_IN_INVENTORY" : Merchant does not have a product for this product
  /// cluster or brand in inventory.
  core.String? inventoryStatus;

  /// Title of the product cluster.
  core.String? title;

  /// GTINs of example variants of the product cluster.
  core.List<core.String>? variantGtins;

  ProductCluster({
    this.brand,
    this.brandInventoryStatus,
    this.categoryL1,
    this.categoryL2,
    this.categoryL3,
    this.categoryL4,
    this.categoryL5,
    this.inventoryStatus,
    this.title,
    this.variantGtins,
  });

  ProductCluster.fromJson(core.Map json_)
    : this(
        brand: json_['brand'] as core.String?,
        brandInventoryStatus: json_['brandInventoryStatus'] as core.String?,
        categoryL1: json_['categoryL1'] as core.String?,
        categoryL2: json_['categoryL2'] as core.String?,
        categoryL3: json_['categoryL3'] as core.String?,
        categoryL4: json_['categoryL4'] as core.String?,
        categoryL5: json_['categoryL5'] as core.String?,
        inventoryStatus: json_['inventoryStatus'] as core.String?,
        title: json_['title'] as core.String?,
        variantGtins:
            (json_['variantGtins'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (brand != null) 'brand': brand!,
    if (brandInventoryStatus != null)
      'brandInventoryStatus': brandInventoryStatus!,
    if (categoryL1 != null) 'categoryL1': categoryL1!,
    if (categoryL2 != null) 'categoryL2': categoryL2!,
    if (categoryL3 != null) 'categoryL3': categoryL3!,
    if (categoryL4 != null) 'categoryL4': categoryL4!,
    if (categoryL5 != null) 'categoryL5': categoryL5!,
    if (inventoryStatus != null) 'inventoryStatus': inventoryStatus!,
    if (title != null) 'title': title!,
    if (variantGtins != null) 'variantGtins': variantGtins!,
  };
}

/// The estimated days to deliver a product after an order is placed.
///
/// Only authorized shipping signals partners working with a merchant can use
/// this resource. Merchants should use the
/// \[`products`\](https://developers.google.com/shopping-content/reference/rest/v2.1/products#productshipping)
/// resource instead.
class ProductDeliveryTime {
  /// A set of associations between `DeliveryArea` and `DeliveryTime` entries.
  ///
  /// The total number of `areaDeliveryTimes` can be at most 100.
  ///
  /// Required.
  core.List<ProductDeliveryTimeAreaDeliveryTime>? areaDeliveryTimes;

  /// The `id` of the product.
  ///
  /// Required.
  ProductId? productId;

  ProductDeliveryTime({this.areaDeliveryTimes, this.productId});

  ProductDeliveryTime.fromJson(core.Map json_)
    : this(
        areaDeliveryTimes:
            (json_['areaDeliveryTimes'] as core.List?)
                ?.map(
                  (value) => ProductDeliveryTimeAreaDeliveryTime.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        productId:
            json_.containsKey('productId')
                ? ProductId.fromJson(
                  json_['productId'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (areaDeliveryTimes != null) 'areaDeliveryTimes': areaDeliveryTimes!,
    if (productId != null) 'productId': productId!,
  };
}

/// A pairing of `DeliveryArea` associated with a `DeliveryTime` for this
/// product.
class ProductDeliveryTimeAreaDeliveryTime {
  /// The delivery area associated with `deliveryTime` for this product.
  ///
  /// Required.
  DeliveryArea? deliveryArea;

  /// The delivery time associated with `deliveryArea` for this product.
  ///
  /// Required.
  ProductDeliveryTimeAreaDeliveryTimeDeliveryTime? deliveryTime;

  ProductDeliveryTimeAreaDeliveryTime({this.deliveryArea, this.deliveryTime});

  ProductDeliveryTimeAreaDeliveryTime.fromJson(core.Map json_)
    : this(
        deliveryArea:
            json_.containsKey('deliveryArea')
                ? DeliveryArea.fromJson(
                  json_['deliveryArea'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        deliveryTime:
            json_.containsKey('deliveryTime')
                ? ProductDeliveryTimeAreaDeliveryTimeDeliveryTime.fromJson(
                  json_['deliveryTime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deliveryArea != null) 'deliveryArea': deliveryArea!,
    if (deliveryTime != null) 'deliveryTime': deliveryTime!,
  };
}

/// A delivery time for this product.
class ProductDeliveryTimeAreaDeliveryTimeDeliveryTime {
  /// The maximum number of business days (inclusive) between when an order is
  /// placed and when the product ships.
  ///
  /// If a product ships in the same day, set this value to 0.
  ///
  /// Required.
  core.int? maxHandlingTimeDays;

  /// The maximum number of business days (inclusive) between when the product
  /// ships and when the product is delivered.
  ///
  /// Required.
  core.int? maxTransitTimeDays;

  /// The minimum number of business days (inclusive) between when an order is
  /// placed and when the product ships.
  ///
  /// If a product ships in the same day, set this value to 0.
  ///
  /// Required.
  core.int? minHandlingTimeDays;

  /// The minimum number of business days (inclusive) between when the product
  /// ships and when the product is delivered.
  ///
  /// Required.
  core.int? minTransitTimeDays;

  ProductDeliveryTimeAreaDeliveryTimeDeliveryTime({
    this.maxHandlingTimeDays,
    this.maxTransitTimeDays,
    this.minHandlingTimeDays,
    this.minTransitTimeDays,
  });

  ProductDeliveryTimeAreaDeliveryTimeDeliveryTime.fromJson(core.Map json_)
    : this(
        maxHandlingTimeDays: json_['maxHandlingTimeDays'] as core.int?,
        maxTransitTimeDays: json_['maxTransitTimeDays'] as core.int?,
        minHandlingTimeDays: json_['minHandlingTimeDays'] as core.int?,
        minTransitTimeDays: json_['minTransitTimeDays'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (maxHandlingTimeDays != null)
      'maxHandlingTimeDays': maxHandlingTimeDays!,
    if (maxTransitTimeDays != null) 'maxTransitTimeDays': maxTransitTimeDays!,
    if (minHandlingTimeDays != null)
      'minHandlingTimeDays': minHandlingTimeDays!,
    if (minTransitTimeDays != null) 'minTransitTimeDays': minTransitTimeDays!,
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

  ProductDimension({this.unit, this.value});

  ProductDimension.fromJson(core.Map json_)
    : this(
        unit: json_['unit'] as core.String?,
        value: (json_['value'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (unit != null) 'unit': unit!,
    if (value != null) 'value': value!,
  };
}

/// The Content API ID of the product.
class ProductId {
  /// The Content API ID of the product, in the form
  /// `channel:contentLanguage:targetCountry:offerId`.
  core.String? productId;

  ProductId({this.productId});

  ProductId.fromJson(core.Map json_)
    : this(productId: json_['productId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (productId != null) 'productId': productId!,
  };
}

/// An issue affecting specific product.
class ProductIssue {
  /// A list of actionable steps that can be executed to solve the issue.
  ///
  /// An example is requesting a re-review or providing arguments when merchant
  /// disagrees with the issue. Actions that are supported in (your) third-party
  /// application can be rendered as buttons and should be available to merchant
  /// when they expand the issue.
  core.List<Action>? actions;

  /// Clarifies the severity of the issue.
  ///
  /// The summarizing message, if present, should be shown right under the title
  /// for each issue. It helps merchants to quickly understand the impact of the
  /// issue. The detailed breakdown helps the merchant to fully understand the
  /// impact of the issue. It can be rendered as dialog that opens when the
  /// merchant mouse over the summarized impact statement. Issues with different
  /// severity can be styled differently. They may use a different color or icon
  /// to signal the difference between `ERROR`, `WARNING` and `INFO`.
  ProductIssueImpact? impact;

  /// Details of the issue as a pre-rendered HTML.
  ///
  /// HTML elements contain CSS classes that can be used to customize the style
  /// of the content. Always sanitize the HTML before embedding it directly to
  /// your application. The sanitizer needs to allow basic HTML tags, such as:
  /// `div`, `span`, `p`, `a`, `ul`, `li`, `table`, `tr`, `td`. For example, you
  /// can use [DOMPurify](https://www.npmjs.com/package/dompurify). CSS classes:
  /// * `issue-detail` - top level container for the detail of the issue *
  /// `callout-banners` - section of the `issue-detail` with callout banners *
  /// `callout-banner` - single callout banner, inside `callout-banners` *
  /// `callout-banner-info` - callout with important information (default) *
  /// `callout-banner-warning` - callout with a warning * `callout-banner-error`
  /// - callout informing about an error (most severe) * `issue-content` -
  /// section of the `issue-detail`, contains multiple `content-element` *
  /// `content-element` - content element such as a list, link or paragraph,
  /// inside `issue-content` * `root-causes` - unordered list with items
  /// describing root causes of the issue, inside `issue-content` *
  /// `root-causes-intro` - intro text before the `root-causes` list, inside
  /// `issue-content` * `segment` - section of the text, `span` inside paragraph
  /// * `segment-attribute` - section of the text that represents a product
  /// attribute, for example 'image\_link' * `segment-literal` - section of the
  /// text that contains a special value, for example '0-1000 kg' *
  /// `segment-bold` - section of the text that should be rendered as bold *
  /// `segment-italic` - section of the text that should be rendered as italic *
  /// `tooltip` - used on paragraphs that should be rendered with a tooltip. A
  /// section of the text in such a paragraph will have a class `tooltip-text`
  /// and is intended to be shown in a mouse over dialog. If the style is not
  /// used, the `tooltip-text` section would be shown on a new line, after the
  /// main part of the text. * `tooltip-text` - marks a section of the text
  /// within a `tooltip`, that is intended to be shown in a mouse over dialog. *
  /// `tooltip-icon` - marks a section of the text within a `tooltip`, that can
  /// be replaced with a tooltip icon, for example '?' or 'i'. By default, this
  /// section contains a `br` tag, that is separating the main text and the
  /// tooltip text when the style is not used. * `tooltip-style-question` - the
  /// tooltip shows helpful information, can use the '?' as an icon. *
  /// `tooltip-style-info` - the tooltip adds additional information fitting to
  /// the context, can use the 'i' as an icon. * `content-moderation` - marks
  /// the paragraph that explains how the issue was identified. * `list-intro` -
  /// marks the paragraph that contains an intro for a list. This paragraph will
  /// be always followed by a list. * `new-element` - Present for new elements
  /// added to the pre-rendered content in the future. To make sure that a new
  /// content element does not break your style, you can hide everything with
  /// this class.
  core.String? prerenderedContent;

  /// Pre-rendered HTML that contains a link to the external location where the
  /// ODS can be requested and instructions for how to request it.
  ///
  /// HTML elements contain CSS classes that can be used to customize the style
  /// of this snippet. Always sanitize the HTML before embedding it directly to
  /// your application. The sanitizer needs to allow basic HTML tags, such as:
  /// `div`, `span`, `p`, `a`, `ul`, `li`, `table`, `tr`, `td`. For example, you
  /// can use [DOMPurify](https://www.npmjs.com/package/dompurify). CSS classes:
  /// * `ods-section`* - wrapper around the out-of-court dispute resolution
  /// section * `ods-description`* - intro text for the out-of-court dispute
  /// resolution. It may contain multiple segments and a link. * `ods-param`* -
  /// wrapper around the header-value pair for parameters that merchant may need
  /// to provide during the ODS process. * `ods-routing-id`* - ods param for the
  /// Routing ID. * `ods-reference-id`* - ods param for the Routing ID. *
  /// `ods-param-header`* - header for the ODS parameter * `ods-param-value`* -
  /// value of the ODS parameter. This value should be rendered in a way that it
  /// is easy for merchants to identify and copy. * `segment` - section of the
  /// text, `span` inside paragraph * `segment-attribute` - section of the text
  /// that represents a product attribute, for example 'image\_link' *
  /// `segment-literal` - section of the text that contains a special value, for
  /// example '0-1000 kg' * `segment-bold` - section of the text that should be
  /// rendered as bold * `segment-italic` - section of the text that should be
  /// rendered as italic * `tooltip` - used on paragraphs that should be
  /// rendered with a tooltip. A section of the text in such a paragraph will
  /// have a class `tooltip-text` and is intended to be shown in a mouse over
  /// dialog. If the style is not used, the `tooltip-text` section would be
  /// shown on a new line, after the main part of the text. * `tooltip-text` -
  /// marks a section of the text within a `tooltip`, that is intended to be
  /// shown in a mouse over dialog. * `tooltip-icon` - marks a section of the
  /// text within a `tooltip`, that can be replaced with a tooltip icon, for
  /// example '?' or 'i'. By default, this section contains a `br` tag, that is
  /// separating the main text and the tooltip text when the style is not used.
  /// * `tooltip-style-question` - the tooltip shows helpful information, can
  /// use the '?' as an icon. * `tooltip-style-info` - the tooltip adds
  /// additional information fitting to the context, can use the 'i' as an icon.
  core.String? prerenderedOutOfCourtDisputeSettlement;

  /// Title of the issue.
  core.String? title;

  ProductIssue({
    this.actions,
    this.impact,
    this.prerenderedContent,
    this.prerenderedOutOfCourtDisputeSettlement,
    this.title,
  });

  ProductIssue.fromJson(core.Map json_)
    : this(
        actions:
            (json_['actions'] as core.List?)
                ?.map(
                  (value) => Action.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        impact:
            json_.containsKey('impact')
                ? ProductIssueImpact.fromJson(
                  json_['impact'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        prerenderedContent: json_['prerenderedContent'] as core.String?,
        prerenderedOutOfCourtDisputeSettlement:
            json_['prerenderedOutOfCourtDisputeSettlement'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actions != null) 'actions': actions!,
    if (impact != null) 'impact': impact!,
    if (prerenderedContent != null) 'prerenderedContent': prerenderedContent!,
    if (prerenderedOutOfCourtDisputeSettlement != null)
      'prerenderedOutOfCourtDisputeSettlement':
          prerenderedOutOfCourtDisputeSettlement!,
    if (title != null) 'title': title!,
  };
}

/// Overall impact of product issue.
class ProductIssueImpact {
  /// Detailed impact breakdown.
  ///
  /// Explains the types of restriction the issue has in different shopping
  /// destinations and territory. If present, it should be rendered to the
  /// merchant. Can be shown as a mouse over dropdown or a dialog. Each
  /// breakdown item represents a group of regions with the same impact details.
  core.List<Breakdown>? breakdowns;

  /// Message summarizing the overall impact of the issue.
  ///
  /// If present, it should be rendered to the merchant. For example: "Limits
  /// visibility in France"
  ///
  /// Optional.
  core.String? message;

  /// The severity of the issue.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Default value. Will never be provided by the
  /// API.
  /// - "ERROR" : Causes either an account suspension or an item disapproval.
  /// Errors should be resolved as soon as possible to ensure items are eligible
  /// to appear in results again.
  /// - "WARNING" : Warnings can negatively impact the performance of ads and
  /// can lead to item or account suspensions in the future unless the issue is
  /// resolved.
  /// - "INFO" : Infos are suggested optimizations to increase data quality.
  /// Resolving these issues is recommended, but not required.
  core.String? severity;

  ProductIssueImpact({this.breakdowns, this.message, this.severity});

  ProductIssueImpact.fromJson(core.Map json_)
    : this(
        breakdowns:
            (json_['breakdowns'] as core.List?)
                ?.map(
                  (value) => Breakdown.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        message: json_['message'] as core.String?,
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (breakdowns != null) 'breakdowns': breakdowns!,
    if (message != null) 'message': message!,
    if (severity != null) 'severity': severity!,
  };
}

typedef ProductProductDetail = $ProductDetail;

class ProductShipping {
  /// The CLDR territory code of the country to which an item will ship.
  core.String? country;

  /// The location where the shipping is applicable, represented by a location
  /// group name.
  core.String? locationGroupName;

  /// The numeric ID of a location that the shipping rate applies to as defined
  /// in the Google Ads API.
  core.String? locationId;

  /// Maximum handling time (inclusive) between when the order is received and
  /// shipped in business days.
  ///
  /// 0 means that the order is shipped on the same day as it's received if it
  /// happens before the cut-off time. Both maxHandlingTime and maxTransitTime
  /// are required if providing shipping speeds.
  core.String? maxHandlingTime;

  /// Maximum transit time (inclusive) between when the order has shipped and
  /// when it's delivered in business days.
  ///
  /// 0 means that the order is delivered on the same day as it ships. Both
  /// maxHandlingTime and maxTransitTime are required if providing shipping
  /// speeds.
  core.String? maxTransitTime;

  /// Minimum handling time (inclusive) between when the order is received and
  /// shipped in business days.
  ///
  /// 0 means that the order is shipped on the same day as it's received if it
  /// happens before the cut-off time. minHandlingTime can only be present
  /// together with maxHandlingTime; but it's not required if maxHandlingTime is
  /// present.
  core.String? minHandlingTime;

  /// Minimum transit time (inclusive) between when the order has shipped and
  /// when it's delivered in business days.
  ///
  /// 0 means that the order is delivered on the same day as it ships.
  /// minTransitTime can only be present together with maxTransitTime; but it's
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

  ProductShipping.fromJson(core.Map json_)
    : this(
        country: json_['country'] as core.String?,
        locationGroupName: json_['locationGroupName'] as core.String?,
        locationId: json_['locationId'] as core.String?,
        maxHandlingTime: json_['maxHandlingTime'] as core.String?,
        maxTransitTime: json_['maxTransitTime'] as core.String?,
        minHandlingTime: json_['minHandlingTime'] as core.String?,
        minTransitTime: json_['minTransitTime'] as core.String?,
        postalCode: json_['postalCode'] as core.String?,
        price:
            json_.containsKey('price')
                ? Price.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        region: json_['region'] as core.String?,
        service: json_['service'] as core.String?,
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

  ProductShippingDimension({this.unit, this.value});

  ProductShippingDimension.fromJson(core.Map json_)
    : this(
        unit: json_['unit'] as core.String?,
        value: (json_['value'] as core.num?)?.toDouble(),
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

  ProductShippingWeight({this.unit, this.value});

  ProductShippingWeight.fromJson(core.Map json_)
    : this(
        unit: json_['unit'] as core.String?,
        value: (json_['value'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (unit != null) 'unit': unit!,
    if (value != null) 'value': value!,
  };
}

/// The status of a product, that is, information about a product computed
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

  ProductStatus.fromJson(core.Map json_)
    : this(
        creationDate: json_['creationDate'] as core.String?,
        destinationStatuses:
            (json_['destinationStatuses'] as core.List?)
                ?.map(
                  (value) => ProductStatusDestinationStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        googleExpirationDate: json_['googleExpirationDate'] as core.String?,
        itemLevelIssues:
            (json_['itemLevelIssues'] as core.List?)
                ?.map(
                  (value) => ProductStatusItemLevelIssue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
        lastUpdateDate: json_['lastUpdateDate'] as core.String?,
        link: json_['link'] as core.String?,
        productId: json_['productId'] as core.String?,
        title: json_['title'] as core.String?,
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
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? status;

  ProductStatusDestinationStatus({
    this.approvedCountries,
    this.destination,
    this.disapprovedCountries,
    this.pendingCountries,
    this.status,
  });

  ProductStatusDestinationStatus.fromJson(core.Map json_)
    : this(
        approvedCountries:
            (json_['approvedCountries'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        destination: json_['destination'] as core.String?,
        disapprovedCountries:
            (json_['disapprovedCountries'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        pendingCountries:
            (json_['pendingCountries'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        status: json_['status'] as core.String?,
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

  ProductStatusItemLevelIssue.fromJson(core.Map json_)
    : this(
        applicableCountries:
            (json_['applicableCountries'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        attributeName: json_['attributeName'] as core.String?,
        code: json_['code'] as core.String?,
        description: json_['description'] as core.String?,
        destination: json_['destination'] as core.String?,
        detail: json_['detail'] as core.String?,
        documentation: json_['documentation'] as core.String?,
        resolution: json_['resolution'] as core.String?,
        servability: json_['servability'] as core.String?,
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

/// Structured description, for algorithmically (AI)-generated descriptions.
///
/// See
/// [description](https://support.google.com/merchants/answer/6324468#When_to_use)
/// for more information.
class ProductStructuredDescription {
  /// The description text.
  ///
  /// Maximum length is 5000 characters.
  ///
  /// Required.
  core.String? content;

  /// The digital source type.
  ///
  /// Acceptable values are: - "`trained_algorithmic_media`" - "`default`"
  ///
  /// Optional.
  core.String? digitalSourceType;

  ProductStructuredDescription({this.content, this.digitalSourceType});

  ProductStructuredDescription.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        digitalSourceType: json_['digitalSourceType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (content != null) 'content': content!,
    if (digitalSourceType != null) 'digitalSourceType': digitalSourceType!,
  };
}

/// Structured title, for algorithmically (AI)-generated titles.
///
/// See [title](https://support.google.com/merchants/answer/6324415#Whentouse)
/// for more information.
class ProductStructuredTitle {
  /// The title text.
  ///
  /// Maximum length is 150 characters.
  ///
  /// Required.
  core.String? content;

  /// The digital source type.
  ///
  /// Acceptable values are: - "`trained_algorithmic_media`" - "`default`"
  ///
  /// Optional.
  core.String? digitalSourceType;

  ProductStructuredTitle({this.content, this.digitalSourceType});

  ProductStructuredTitle.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        digitalSourceType: json_['digitalSourceType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (content != null) 'content': content!,
    if (digitalSourceType != null) 'digitalSourceType': digitalSourceType!,
  };
}

class ProductSubscriptionCost {
  /// The amount the buyer has to pay per subscription period.
  Price? amount;

  /// The type of subscription period.
  ///
  /// - "`month`" - "`year`"
  core.String? period;

  /// The number of subscription periods the buyer has to pay.
  core.String? periodLength;

  ProductSubscriptionCost({this.amount, this.period, this.periodLength});

  ProductSubscriptionCost.fromJson(core.Map json_)
    : this(
        amount:
            json_.containsKey('amount')
                ? Price.fromJson(
                  json_['amount'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        period: json_['period'] as core.String?,
        periodLength: json_['periodLength'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (amount != null) 'amount': amount!,
    if (period != null) 'period': period!,
    if (periodLength != null) 'periodLength': periodLength!,
  };
}

/// Information regarding sustainability related incentive programs such as
/// rebates or tax relief.
class ProductSustainabilityIncentive {
  /// The fixed amount of the incentive.
  ///
  /// Optional.
  Price? amount;

  /// The percentage of the sale price that the incentive is applied to.
  ///
  /// Optional.
  core.double? percentage;

  /// Sustainability incentive program.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified or unknown sustainability incentive
  /// type.
  /// - "EV_TAX_CREDIT" : Program offering tax liability reductions for electric
  /// vehicles and, in some countries, plug-in hybrids. These reductions can be
  /// based on a specific amount or a percentage of the sale price.
  /// - "EV_PRICE_DISCOUNT" : A subsidy program, often called an environmental
  /// bonus, provides a purchase grant for electric vehicles and, in some
  /// countries, plug-in hybrids. The grant amount may be a fixed sum or a
  /// percentage of the sale price.
  core.String? type;

  ProductSustainabilityIncentive({this.amount, this.percentage, this.type});

  ProductSustainabilityIncentive.fromJson(core.Map json_)
    : this(
        amount:
            json_.containsKey('amount')
                ? Price.fromJson(
                  json_['amount'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        percentage: (json_['percentage'] as core.num?)?.toDouble(),
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (amount != null) 'amount': amount!,
    if (percentage != null) 'percentage': percentage!,
    if (type != null) 'type': type!,
  };
}

class ProductTax {
  /// The country within which the item is taxed, specified as a CLDR territory
  /// code.
  core.String? country;

  /// The numeric ID of a location that the tax rate applies to as defined in
  /// the Google Ads API.
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

  ProductTax.fromJson(core.Map json_)
    : this(
        country: json_['country'] as core.String?,
        locationId: json_['locationId'] as core.String?,
        postalCode: json_['postalCode'] as core.String?,
        rate: (json_['rate'] as core.num?)?.toDouble(),
        region: json_['region'] as core.String?,
        taxShip: json_['taxShip'] as core.bool?,
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

  ProductUnitPricingBaseMeasure({this.unit, this.value});

  ProductUnitPricingBaseMeasure.fromJson(core.Map json_)
    : this(
        unit: json_['unit'] as core.String?,
        value: json_['value'] as core.String?,
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

  ProductUnitPricingMeasure({this.unit, this.value});

  ProductUnitPricingMeasure.fromJson(core.Map json_)
    : this(
        unit: json_['unit'] as core.String?,
        value: (json_['value'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (unit != null) 'unit': unit!,
    if (value != null) 'value': value!,
  };
}

/// Product fields.
///
/// Values are only set for fields requested explicitly in the request's search
/// query.
class ProductView {
  /// Aggregated destination status.
  /// Possible string values are:
  /// - "AGGREGATED_STATUS_UNSPECIFIED" : Undefined aggregated status.
  /// - "NOT_ELIGIBLE_OR_DISAPPROVED" : Offer isn't eligible, or is disapproved
  /// for all destinations.
  /// - "PENDING" : Offer's status is pending in all destinations.
  /// - "ELIGIBLE_LIMITED" : Offer is eligible for some (but not all)
  /// destinations.
  /// - "ELIGIBLE" : Offer is eligible for all destinations.
  core.String? aggregatedDestinationStatus;

  /// Availability of the product.
  core.String? availability;

  /// Brand of the product.
  core.String? brand;

  /// First level of the product category in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL1;

  /// Second level of the product category in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL2;

  /// Third level of the product category in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL3;

  /// Fourth level of the product category in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL4;

  /// Fifth level of the product category in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL5;

  /// Channel of the product (online versus local).
  /// Possible string values are:
  /// - "CHANNEL_UNSPECIFIED" : Indicates that the channel is unspecified.
  /// - "LOCAL" : Indicates that the channel is local.
  /// - "ONLINE" : Indicates that the channel is online.
  core.String? channel;

  /// Estimated performance potential compared to highest performing products of
  /// the merchant.
  /// Possible string values are:
  /// - "CLICK_POTENTIAL_UNSPECIFIED" : Unknown predicted clicks impact.
  /// - "LOW" : Potential to receive a low number of clicks compared to the
  /// highest performing products of the merchant.
  /// - "MEDIUM" : Potential to receive a moderate number of clicks compared to
  /// the highest performing products of the merchant.
  /// - "HIGH" : Potential to receive a similar number of clicks as the highest
  /// performing products of the merchant.
  core.String? clickPotential;

  /// Rank of the product based on its click potential.
  ///
  /// A product with `click_potential_rank` 1 has the highest click potential
  /// among the merchant's products that fulfill the search query conditions.
  core.String? clickPotentialRank;

  /// Condition of the product.
  core.String? condition;

  /// The time the merchant created the product in timestamp seconds.
  core.String? creationTime;

  /// Product price currency code (for example, ISO 4217).
  ///
  /// Absent if product price is not available.
  core.String? currencyCode;

  /// Expiration date for the product.
  ///
  /// Specified on insertion.
  Date? expirationDate;

  /// GTIN of the product.
  core.List<core.String>? gtin;

  /// The REST ID of the product, in the form of
  /// channel:contentLanguage:targetCountry:offerId.
  ///
  /// Content API methods that operate on products take this as their productId
  /// parameter. Should always be included in the SELECT clause.
  core.String? id;

  /// Item group ID provided by the merchant for grouping variants together.
  core.String? itemGroupId;

  /// List of item issues for the product.
  core.List<ProductViewItemIssue>? itemIssues;

  /// Language code of the product in BCP 47 format.
  core.String? languageCode;

  /// Merchant-provided id of the product.
  core.String? offerId;

  /// Product price specified as micros (1 millionth of a standard unit, 1 USD =
  /// 1000000 micros) in the product currency.
  ///
  /// Absent in case the information about the price of the product is not
  /// available.
  core.String? priceMicros;

  /// First level of the product type in merchant's own
  /// [product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? productTypeL1;

  /// Second level of the product type in merchant's own
  /// [product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? productTypeL2;

  /// Third level of the product type in merchant's own
  /// [product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? productTypeL3;

  /// Fourth level of the product type in merchant's own
  /// [product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? productTypeL4;

  /// Fifth level of the product type in merchant's own
  /// [product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? productTypeL5;

  /// The normalized shipping label specified in the feed
  core.String? shippingLabel;

  /// Title of the product.
  core.String? title;

  ProductView({
    this.aggregatedDestinationStatus,
    this.availability,
    this.brand,
    this.categoryL1,
    this.categoryL2,
    this.categoryL3,
    this.categoryL4,
    this.categoryL5,
    this.channel,
    this.clickPotential,
    this.clickPotentialRank,
    this.condition,
    this.creationTime,
    this.currencyCode,
    this.expirationDate,
    this.gtin,
    this.id,
    this.itemGroupId,
    this.itemIssues,
    this.languageCode,
    this.offerId,
    this.priceMicros,
    this.productTypeL1,
    this.productTypeL2,
    this.productTypeL3,
    this.productTypeL4,
    this.productTypeL5,
    this.shippingLabel,
    this.title,
  });

  ProductView.fromJson(core.Map json_)
    : this(
        aggregatedDestinationStatus:
            json_['aggregatedDestinationStatus'] as core.String?,
        availability: json_['availability'] as core.String?,
        brand: json_['brand'] as core.String?,
        categoryL1: json_['categoryL1'] as core.String?,
        categoryL2: json_['categoryL2'] as core.String?,
        categoryL3: json_['categoryL3'] as core.String?,
        categoryL4: json_['categoryL4'] as core.String?,
        categoryL5: json_['categoryL5'] as core.String?,
        channel: json_['channel'] as core.String?,
        clickPotential: json_['clickPotential'] as core.String?,
        clickPotentialRank: json_['clickPotentialRank'] as core.String?,
        condition: json_['condition'] as core.String?,
        creationTime: json_['creationTime'] as core.String?,
        currencyCode: json_['currencyCode'] as core.String?,
        expirationDate:
            json_.containsKey('expirationDate')
                ? Date.fromJson(
                  json_['expirationDate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        gtin:
            (json_['gtin'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        id: json_['id'] as core.String?,
        itemGroupId: json_['itemGroupId'] as core.String?,
        itemIssues:
            (json_['itemIssues'] as core.List?)
                ?.map(
                  (value) => ProductViewItemIssue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        languageCode: json_['languageCode'] as core.String?,
        offerId: json_['offerId'] as core.String?,
        priceMicros: json_['priceMicros'] as core.String?,
        productTypeL1: json_['productTypeL1'] as core.String?,
        productTypeL2: json_['productTypeL2'] as core.String?,
        productTypeL3: json_['productTypeL3'] as core.String?,
        productTypeL4: json_['productTypeL4'] as core.String?,
        productTypeL5: json_['productTypeL5'] as core.String?,
        shippingLabel: json_['shippingLabel'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregatedDestinationStatus != null)
      'aggregatedDestinationStatus': aggregatedDestinationStatus!,
    if (availability != null) 'availability': availability!,
    if (brand != null) 'brand': brand!,
    if (categoryL1 != null) 'categoryL1': categoryL1!,
    if (categoryL2 != null) 'categoryL2': categoryL2!,
    if (categoryL3 != null) 'categoryL3': categoryL3!,
    if (categoryL4 != null) 'categoryL4': categoryL4!,
    if (categoryL5 != null) 'categoryL5': categoryL5!,
    if (channel != null) 'channel': channel!,
    if (clickPotential != null) 'clickPotential': clickPotential!,
    if (clickPotentialRank != null) 'clickPotentialRank': clickPotentialRank!,
    if (condition != null) 'condition': condition!,
    if (creationTime != null) 'creationTime': creationTime!,
    if (currencyCode != null) 'currencyCode': currencyCode!,
    if (expirationDate != null) 'expirationDate': expirationDate!,
    if (gtin != null) 'gtin': gtin!,
    if (id != null) 'id': id!,
    if (itemGroupId != null) 'itemGroupId': itemGroupId!,
    if (itemIssues != null) 'itemIssues': itemIssues!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (offerId != null) 'offerId': offerId!,
    if (priceMicros != null) 'priceMicros': priceMicros!,
    if (productTypeL1 != null) 'productTypeL1': productTypeL1!,
    if (productTypeL2 != null) 'productTypeL2': productTypeL2!,
    if (productTypeL3 != null) 'productTypeL3': productTypeL3!,
    if (productTypeL4 != null) 'productTypeL4': productTypeL4!,
    if (productTypeL5 != null) 'productTypeL5': productTypeL5!,
    if (shippingLabel != null) 'shippingLabel': shippingLabel!,
    if (title != null) 'title': title!,
  };
}

/// Item issue associated with the product.
class ProductViewItemIssue {
  /// Item issue type.
  ProductViewItemIssueItemIssueType? issueType;

  /// Item issue resolution.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown resolution type.
  /// - "MERCHANT_ACTION" : The merchant has to fix the issue.
  /// - "PENDING_PROCESSING" : The issue will be resolved automatically (for
  /// example, image crawl), or Google review. No merchant action is required
  /// now. Resolution might lead to another issue (for example, if crawl fails).
  core.String? resolution;

  /// Item issue severity.
  ProductViewItemIssueItemIssueSeverity? severity;

  ProductViewItemIssue({this.issueType, this.resolution, this.severity});

  ProductViewItemIssue.fromJson(core.Map json_)
    : this(
        issueType:
            json_.containsKey('issueType')
                ? ProductViewItemIssueItemIssueType.fromJson(
                  json_['issueType'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        resolution: json_['resolution'] as core.String?,
        severity:
            json_.containsKey('severity')
                ? ProductViewItemIssueItemIssueSeverity.fromJson(
                  json_['severity'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (issueType != null) 'issueType': issueType!,
    if (resolution != null) 'resolution': resolution!,
    if (severity != null) 'severity': severity!,
  };
}

/// Issue severity for all affected regions in a destination.
class ProductViewItemIssueIssueSeverityPerDestination {
  /// List of demoted countries in the destination.
  core.List<core.String>? demotedCountries;

  /// Issue destination.
  core.String? destination;

  /// List of disapproved countries in the destination.
  core.List<core.String>? disapprovedCountries;

  ProductViewItemIssueIssueSeverityPerDestination({
    this.demotedCountries,
    this.destination,
    this.disapprovedCountries,
  });

  ProductViewItemIssueIssueSeverityPerDestination.fromJson(core.Map json_)
    : this(
        demotedCountries:
            (json_['demotedCountries'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        destination: json_['destination'] as core.String?,
        disapprovedCountries:
            (json_['disapprovedCountries'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (demotedCountries != null) 'demotedCountries': demotedCountries!,
    if (destination != null) 'destination': destination!,
    if (disapprovedCountries != null)
      'disapprovedCountries': disapprovedCountries!,
  };
}

/// Severity of an issue per destination in a region, and aggregated severity.
class ProductViewItemIssueItemIssueSeverity {
  /// Severity of an issue aggregated for destination.
  /// Possible string values are:
  /// - "AGGREGATED_ISSUE_SEVERITY_UNSPECIFIED" : Undefined Issue severity.
  /// - "DISAPPROVED" : Issue disapproves the product in at least one of the
  /// selected destinations.
  /// - "DEMOTED" : Issue demotes the product in all selected destinations it
  /// affects.
  /// - "PENDING" : Issue resolution is `PENDING_PROCESSING`.
  core.String? aggregatedSeverity;

  /// Item issue severity for every destination.
  core.List<ProductViewItemIssueIssueSeverityPerDestination>?
  severityPerDestination;

  ProductViewItemIssueItemIssueSeverity({
    this.aggregatedSeverity,
    this.severityPerDestination,
  });

  ProductViewItemIssueItemIssueSeverity.fromJson(core.Map json_)
    : this(
        aggregatedSeverity: json_['aggregatedSeverity'] as core.String?,
        severityPerDestination:
            (json_['severityPerDestination'] as core.List?)
                ?.map(
                  (value) =>
                      ProductViewItemIssueIssueSeverityPerDestination.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregatedSeverity != null) 'aggregatedSeverity': aggregatedSeverity!,
    if (severityPerDestination != null)
      'severityPerDestination': severityPerDestination!,
  };
}

/// Type of the item issue.
class ProductViewItemIssueItemIssueType {
  /// Canonical attribute name for attribute-specific issues.
  core.String? canonicalAttribute;

  /// Error code of the issue.
  core.String? code;

  ProductViewItemIssueItemIssueType({this.canonicalAttribute, this.code});

  ProductViewItemIssueItemIssueType.fromJson(core.Map json_)
    : this(
        canonicalAttribute: json_['canonicalAttribute'] as core.String?,
        code: json_['code'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (canonicalAttribute != null) 'canonicalAttribute': canonicalAttribute!,
    if (code != null) 'code': code!,
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

  ProductWeight({this.unit, this.value});

  ProductWeight.fromJson(core.Map json_)
    : this(
        unit: json_['unit'] as core.String?,
        value: (json_['value'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (unit != null) 'unit': unit!,
    if (value != null) 'value': value!,
  };
}

class ProductsCustomBatchRequest {
  /// The request entries to be processed in the batch.
  core.List<ProductsCustomBatchRequestEntry>? entries;

  ProductsCustomBatchRequest({this.entries});

  ProductsCustomBatchRequest.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => ProductsCustomBatchRequestEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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
  /// *You must specify the update mask to delete attributes.* Only top-level
  /// product attributes can be updated. If not defined, product attributes with
  /// set values will be updated and other attributes will stay unchanged. Only
  /// defined if the method is `update`.
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

  ProductsCustomBatchRequestEntry.fromJson(core.Map json_)
    : this(
        batchId: json_['batchId'] as core.int?,
        feedId: json_['feedId'] as core.String?,
        merchantId: json_['merchantId'] as core.String?,
        method: json_['method'] as core.String?,
        product:
            json_.containsKey('product')
                ? Product.fromJson(
                  json_['product'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        productId: json_['productId'] as core.String?,
        updateMask: json_['updateMask'] as core.String?,
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

  ProductsCustomBatchResponse({this.entries, this.kind});

  ProductsCustomBatchResponse.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => ProductsCustomBatchResponseEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
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

  /// A list of errors for failed custombatch entries.
  ///
  /// *Note:* Schema errors fail the whole request.
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

  ProductsCustomBatchResponseEntry.fromJson(core.Map json_)
    : this(
        batchId: json_['batchId'] as core.int?,
        errors:
            json_.containsKey('errors')
                ? Errors.fromJson(
                  json_['errors'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        kind: json_['kind'] as core.String?,
        product:
            json_.containsKey('product')
                ? Product.fromJson(
                  json_['product'] as core.Map<core.String, core.dynamic>,
                )
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

  ProductsListResponse({this.kind, this.nextPageToken, this.resources});

  ProductsListResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
        resources:
            (json_['resources'] as core.List?)
                ?.map(
                  (value) => Product.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  ProductstatusesCustomBatchRequest({this.entries});

  ProductstatusesCustomBatchRequest.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => ProductstatusesCustomBatchRequestEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  /// Deprecated: Setting this field has no effect and attributes are never
  /// included.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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

  ProductstatusesCustomBatchRequestEntry.fromJson(core.Map json_)
    : this(
        batchId: json_['batchId'] as core.int?,
        destinations:
            (json_['destinations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        includeAttributes: json_['includeAttributes'] as core.bool?,
        merchantId: json_['merchantId'] as core.String?,
        method: json_['method'] as core.String?,
        productId: json_['productId'] as core.String?,
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

  ProductstatusesCustomBatchResponse({this.entries, this.kind});

  ProductstatusesCustomBatchResponse.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => ProductstatusesCustomBatchResponseEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
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

  /// A list of errors for failed custombatch entries.
  ///
  /// *Note:* Schema errors fail the whole request.
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

  ProductstatusesCustomBatchResponseEntry.fromJson(core.Map json_)
    : this(
        batchId: json_['batchId'] as core.int?,
        errors:
            json_.containsKey('errors')
                ? Errors.fromJson(
                  json_['errors'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        kind: json_['kind'] as core.String?,
        productStatus:
            json_.containsKey('productStatus')
                ? ProductStatus.fromJson(
                  json_['productStatus'] as core.Map<core.String, core.dynamic>,
                )
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

  ProductstatusesListResponse({this.kind, this.nextPageToken, this.resources});

  ProductstatusesListResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
        resources:
            (json_['resources'] as core.List?)
                ?.map(
                  (value) => ProductStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (kind != null) 'kind': kind!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (resources != null) 'resources': resources!,
  };
}

/// Represents a promotion.
///
/// See the following articles for more details. *
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
  /// `en` content language is available for all target countries. `fr` content
  /// language is available for `CA` and `FR` target countries. `de` content
  /// language is available for `DE` target country. `nl` content language is
  /// available for `NL` target country. `it` content language is available for
  /// `IT` target country. `pt` content language is available for `BR` target
  /// country. `ja` content language is available for `JP` target country. `ko`
  /// content language is available for `KR` target country.
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
  /// type. `buy_this_quantity` and `get_this_quantity` must be present.
  /// `money_off_amount` must also be present.
  /// - "BUY_M_GET_N_PERCENT_OFF" : Buy M quantity, get N percent off coupon
  /// value type. `buy_this_quantity` and `get_this_quantity` must be present.
  /// `percent_off_percentage` must also be present.
  /// - "BUY_M_GET_MONEY_OFF" : Buy M quantity, get money off.
  /// `buy_this_quantity` and `money_off_amount` must be present.
  /// - "BUY_M_GET_PERCENT_OFF" : Buy M quantity, get money off.
  /// `buy_this_quantity` and `percent_off_percentage` must be present.
  /// - "FREE_GIFT" : Free gift with description only.
  /// - "FREE_GIFT_WITH_VALUE" : Free gift with value (description is optional).
  /// - "FREE_GIFT_WITH_ITEM_ID" : Free gift with item ID (description is
  /// optional).
  /// - "FREE_SHIPPING_STANDARD" : Standard free shipping coupon value type.
  /// - "FREE_SHIPPING_OVERNIGHT" : Overnight free shipping coupon value type.
  /// - "FREE_SHIPPING_TWO_DAY" : Two day free shipping coupon value type.
  core.String? couponValueType;

  /// The custom redemption restriction for the promotion.
  ///
  /// If the `redemption_restriction` field is set to `CUSTOM`, this field must
  /// be set.
  core.String? customRedemptionRestriction;

  /// Free gift description for the promotion.
  core.String? freeGiftDescription;

  /// Free gift item ID for the promotion.
  core.String? freeGiftItemId;

  /// Free gift value for the promotion.
  PriceAmount? freeGiftValue;

  /// Generic redemption code for the promotion.
  ///
  /// To be used with the `offerType` field.
  core.String? genericRedemptionCode;

  /// The number of items discounted in the promotion.
  core.int? getThisQuantityDiscounted;

  /// The REST promotion ID to uniquely identify the promotion.
  ///
  /// Content API methods that operate on promotions take this as their
  /// `promotionId` parameter. The REST ID for a promotion is of the form
  /// channel:contentLanguage:targetCountry:promotionId The `channel` field has
  /// a value of `"online"`, `"in_store"`, or `"online_in_store"`.
  ///
  /// Output only.
  core.String? id;

  /// Product filter by item group ID for the promotion.
  core.List<core.String>? itemGroupId;

  /// Product filter by item group ID exclusion for the promotion.
  core.List<core.String>? itemGroupIdExclusion;

  /// Product filter by item ID for the promotion.
  core.List<core.String>? itemId;

  /// Product filter by item ID exclusion for the promotion.
  core.List<core.String>? itemIdExclusion;

  /// Maximum purchase quantity for the promotion.
  core.int? limitQuantity;

  /// Maximum purchase value for the promotion.
  PriceAmount? limitValue;

  /// Long title for the promotion.
  ///
  /// Required.
  core.String? longTitle;

  /// The maximum monetary discount a customer can receive for the promotion.
  ///
  /// This field is only supported with the `Percent off` coupon value type.
  PriceAmount? maxDiscountAmount;

  /// Minimum purchase amount for the promotion.
  PriceAmount? minimumPurchaseAmount;

  /// Minimum purchase quantity for the promotion.
  core.int? minimumPurchaseQuantity;

  /// Cost cap for the promotion.
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
  /// - "PRODUCT_APPLICABILITY_UNSPECIFIED" : Which products the promotion
  /// applies to is unknown.
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
  ///
  /// Deprecated. Use `promotion_display_time_period` instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? promotionDisplayDates;

  /// `TimePeriod` representation of the promotion's display dates.
  TimePeriod? promotionDisplayTimePeriod;

  /// String representation of the promotion effective dates.
  ///
  /// Deprecated. Use `promotion_effective_time_period` instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? promotionEffectiveDates;

  /// `TimePeriod` representation of the promotion's effective dates.
  ///
  /// Required.
  TimePeriod? promotionEffectiveTimePeriod;

  /// The user provided promotion ID to uniquely identify the promotion.
  ///
  /// Required.
  core.String? promotionId;

  /// The current status of the promotion.
  ///
  /// Output only.
  PromotionPromotionStatus? promotionStatus;

  /// URL to the page on the merchant's site where the promotion shows.
  ///
  /// Local Inventory ads promotions throw an error if no promo url is included.
  /// URL is used to confirm that the promotion is valid and can be redeemed.
  core.String? promotionUrl;

  /// Redemption channel for the promotion.
  ///
  /// At least one channel is required.
  ///
  /// Required.
  core.List<core.String>? redemptionChannel;

  /// The redemption restriction for the promotion.
  /// Possible string values are:
  /// - "REDEMPTION_RESTRICTION_UNSPECIFIED" : The redemption restriction is
  /// unspecified.
  /// - "SUBSCRIBE_AND_SAVE" : The customer must subscribe to the merchant's
  /// channel to redeem the promotion.
  /// - "FIRST_ORDER" : The customer must be a first-time customer to redeem the
  /// promotion.
  /// - "SIGN_UP_FOR_EMAIL" : The customer must sign up for email's to redeem
  /// the promotion.
  /// - "SIGN_UP_FOR_TEXT" : The customer must sign up for text to redeem the
  /// promotion.
  /// - "FORMS_OF_PAYMENT" : The customer must use a specific form of payment to
  /// redeem the promotion.
  /// - "CUSTOM" : The customer must meet a custom restriction to redeem the
  /// promotion. If selected, the `custom_redemption_restriction` field must be
  /// set.
  core.String? redemptionRestriction;

  /// Shipping service names for the promotion.
  core.List<core.String>? shippingServiceNames;

  /// Whether the promotion applies to all stores, or only specified stores.
  ///
  /// Local Inventory ads promotions throw an error if no store applicability is
  /// included. An INVALID_ARGUMENT error is thrown if store_applicability is
  /// set to ALL_STORES and store_code or score_code_exclusion is set to a
  /// value.
  /// Possible string values are:
  /// - "STORE_APPLICABILITY_UNSPECIFIED" : Which store codes the promotion
  /// applies to is unknown.
  /// - "ALL_STORES" : Promotion applies to all stores.
  /// - "SPECIFIC_STORES" : Promotion applies to only the specified stores.
  core.String? storeApplicability;

  /// Store codes to include for the promotion.
  core.List<core.String>? storeCode;

  /// Store codes to exclude for the promotion.
  core.List<core.String>? storeCodeExclusion;

  /// The target country used as part of the unique identifier.
  ///
  /// Can be `AU`, `CA`, `DE`, `FR`, `GB`, `IN`, `US`, `BR`, `ES`, `NL`, `JP`,
  /// `IT` or `KR`.
  ///
  /// Required.
  core.String? targetCountry;

  Promotion({
    this.brand,
    this.brandExclusion,
    this.contentLanguage,
    this.couponValueType,
    this.customRedemptionRestriction,
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
    this.maxDiscountAmount,
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
    this.promotionDisplayTimePeriod,
    this.promotionEffectiveDates,
    this.promotionEffectiveTimePeriod,
    this.promotionId,
    this.promotionStatus,
    this.promotionUrl,
    this.redemptionChannel,
    this.redemptionRestriction,
    this.shippingServiceNames,
    this.storeApplicability,
    this.storeCode,
    this.storeCodeExclusion,
    this.targetCountry,
  });

  Promotion.fromJson(core.Map json_)
    : this(
        brand:
            (json_['brand'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        brandExclusion:
            (json_['brandExclusion'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        contentLanguage: json_['contentLanguage'] as core.String?,
        couponValueType: json_['couponValueType'] as core.String?,
        customRedemptionRestriction:
            json_['customRedemptionRestriction'] as core.String?,
        freeGiftDescription: json_['freeGiftDescription'] as core.String?,
        freeGiftItemId: json_['freeGiftItemId'] as core.String?,
        freeGiftValue:
            json_.containsKey('freeGiftValue')
                ? PriceAmount.fromJson(
                  json_['freeGiftValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        genericRedemptionCode: json_['genericRedemptionCode'] as core.String?,
        getThisQuantityDiscounted:
            json_['getThisQuantityDiscounted'] as core.int?,
        id: json_['id'] as core.String?,
        itemGroupId:
            (json_['itemGroupId'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        itemGroupIdExclusion:
            (json_['itemGroupIdExclusion'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        itemId:
            (json_['itemId'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        itemIdExclusion:
            (json_['itemIdExclusion'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        limitQuantity: json_['limitQuantity'] as core.int?,
        limitValue:
            json_.containsKey('limitValue')
                ? PriceAmount.fromJson(
                  json_['limitValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        longTitle: json_['longTitle'] as core.String?,
        maxDiscountAmount:
            json_.containsKey('maxDiscountAmount')
                ? PriceAmount.fromJson(
                  json_['maxDiscountAmount']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        minimumPurchaseAmount:
            json_.containsKey('minimumPurchaseAmount')
                ? PriceAmount.fromJson(
                  json_['minimumPurchaseAmount']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        minimumPurchaseQuantity: json_['minimumPurchaseQuantity'] as core.int?,
        moneyBudget:
            json_.containsKey('moneyBudget')
                ? PriceAmount.fromJson(
                  json_['moneyBudget'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        moneyOffAmount:
            json_.containsKey('moneyOffAmount')
                ? PriceAmount.fromJson(
                  json_['moneyOffAmount']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        offerType: json_['offerType'] as core.String?,
        orderLimit: json_['orderLimit'] as core.int?,
        percentOff: json_['percentOff'] as core.int?,
        productApplicability: json_['productApplicability'] as core.String?,
        productType:
            (json_['productType'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        productTypeExclusion:
            (json_['productTypeExclusion'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        promotionDestinationIds:
            (json_['promotionDestinationIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        promotionDisplayDates: json_['promotionDisplayDates'] as core.String?,
        promotionDisplayTimePeriod:
            json_.containsKey('promotionDisplayTimePeriod')
                ? TimePeriod.fromJson(
                  json_['promotionDisplayTimePeriod']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        promotionEffectiveDates:
            json_['promotionEffectiveDates'] as core.String?,
        promotionEffectiveTimePeriod:
            json_.containsKey('promotionEffectiveTimePeriod')
                ? TimePeriod.fromJson(
                  json_['promotionEffectiveTimePeriod']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        promotionId: json_['promotionId'] as core.String?,
        promotionStatus:
            json_.containsKey('promotionStatus')
                ? PromotionPromotionStatus.fromJson(
                  json_['promotionStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        promotionUrl: json_['promotionUrl'] as core.String?,
        redemptionChannel:
            (json_['redemptionChannel'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        redemptionRestriction: json_['redemptionRestriction'] as core.String?,
        shippingServiceNames:
            (json_['shippingServiceNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        storeApplicability: json_['storeApplicability'] as core.String?,
        storeCode:
            (json_['storeCode'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        storeCodeExclusion:
            (json_['storeCodeExclusion'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        targetCountry: json_['targetCountry'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (brand != null) 'brand': brand!,
    if (brandExclusion != null) 'brandExclusion': brandExclusion!,
    if (contentLanguage != null) 'contentLanguage': contentLanguage!,
    if (couponValueType != null) 'couponValueType': couponValueType!,
    if (customRedemptionRestriction != null)
      'customRedemptionRestriction': customRedemptionRestriction!,
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
    if (maxDiscountAmount != null) 'maxDiscountAmount': maxDiscountAmount!,
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
    if (promotionDisplayTimePeriod != null)
      'promotionDisplayTimePeriod': promotionDisplayTimePeriod!,
    if (promotionEffectiveDates != null)
      'promotionEffectiveDates': promotionEffectiveDates!,
    if (promotionEffectiveTimePeriod != null)
      'promotionEffectiveTimePeriod': promotionEffectiveTimePeriod!,
    if (promotionId != null) 'promotionId': promotionId!,
    if (promotionStatus != null) 'promotionStatus': promotionStatus!,
    if (promotionUrl != null) 'promotionUrl': promotionUrl!,
    if (redemptionChannel != null) 'redemptionChannel': redemptionChannel!,
    if (redemptionRestriction != null)
      'redemptionRestriction': redemptionRestriction!,
    if (shippingServiceNames != null)
      'shippingServiceNames': shippingServiceNames!,
    if (storeApplicability != null) 'storeApplicability': storeApplicability!,
    if (storeCode != null) 'storeCode': storeCode!,
    if (storeCodeExclusion != null) 'storeCodeExclusion': storeCodeExclusion!,
    if (targetCountry != null) 'targetCountry': targetCountry!,
  };
}

/// The status of the promotion.
class PromotionPromotionStatus {
  /// Date on which the promotion has been created in
  /// [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format: Date, time, and
  /// offset, for example "2020-01-02T09:00:00+01:00" or "2020-01-02T09:00:00Z"
  core.String? creationDate;

  /// The intended destinations for the promotion.
  core.List<PromotionPromotionStatusDestinationStatus>? destinationStatuses;

  /// Date on which the promotion status has been last updated in
  /// [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format: Date, time, and
  /// offset, for example "2020-01-02T09:00:00+01:00" or "2020-01-02T09:00:00Z"
  core.String? lastUpdateDate;

  /// A list of issues associated with the promotion.
  core.List<PromotionPromotionStatusPromotionIssue>? promotionIssue;

  PromotionPromotionStatus({
    this.creationDate,
    this.destinationStatuses,
    this.lastUpdateDate,
    this.promotionIssue,
  });

  PromotionPromotionStatus.fromJson(core.Map json_)
    : this(
        creationDate: json_['creationDate'] as core.String?,
        destinationStatuses:
            (json_['destinationStatuses'] as core.List?)
                ?.map(
                  (value) => PromotionPromotionStatusDestinationStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        lastUpdateDate: json_['lastUpdateDate'] as core.String?,
        promotionIssue:
            (json_['promotionIssue'] as core.List?)
                ?.map(
                  (value) => PromotionPromotionStatusPromotionIssue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (creationDate != null) 'creationDate': creationDate!,
    if (destinationStatuses != null)
      'destinationStatuses': destinationStatuses!,
    if (lastUpdateDate != null) 'lastUpdateDate': lastUpdateDate!,
    if (promotionIssue != null) 'promotionIssue': promotionIssue!,
  };
}

/// The destination status of the promotion.
class PromotionPromotionStatusDestinationStatus {
  /// The name of the destination.
  core.String? destination;

  /// The status for the specified destination.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unknown promotion state.
  /// - "IN_REVIEW" : The promotion is under review.
  /// - "REJECTED" : The promotion is disapproved
  /// - "LIVE" : The promotion is approved and active.
  /// - "STOPPED" : The promotion is stopped by merchant.
  /// - "EXPIRED" : The promotion is no longer active.
  /// - "PENDING" : The promotion is not stopped, and all reviews are approved,
  /// but the active date is in the future.
  core.String? status;

  PromotionPromotionStatusDestinationStatus({this.destination, this.status});

  PromotionPromotionStatusDestinationStatus.fromJson(core.Map json_)
    : this(
        destination: json_['destination'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (destination != null) 'destination': destination!,
    if (status != null) 'status': status!,
  };
}

/// The issue associated with the promotion.
class PromotionPromotionStatusPromotionIssue {
  /// Code of the issue.
  core.String? code;

  /// Explanation of the issue.
  core.String? detail;

  PromotionPromotionStatusPromotionIssue({this.code, this.detail});

  PromotionPromotionStatusPromotionIssue.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        detail: json_['detail'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (code != null) 'code': code!,
    if (detail != null) 'detail': detail!,
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

  PubsubNotificationSettings.fromJson(core.Map json_)
    : this(
        cloudTopicName: json_['cloudTopicName'] as core.String?,
        kind: json_['kind'] as core.String?,
        registeredEvents:
            (json_['registeredEvents'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
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

  /// The value of the rate group (for example, flat rate $10).
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

  RateGroup.fromJson(core.Map json_)
    : this(
        applicableShippingLabels:
            (json_['applicableShippingLabels'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        carrierRates:
            (json_['carrierRates'] as core.List?)
                ?.map(
                  (value) => CarrierRate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        mainTable:
            json_.containsKey('mainTable')
                ? Table.fromJson(
                  json_['mainTable'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        singleValue:
            json_.containsKey('singleValue')
                ? Value.fromJson(
                  json_['singleValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        subtables:
            (json_['subtables'] as core.List?)
                ?.map(
                  (value) => Table.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

/// Recommendations are suggested ways to improve your merchant account's
/// performance.
///
/// For example, to engage with a feature, or start using a new Google product.
class Recommendation {
  /// CTAs of this recommendation.
  ///
  /// Repeated.
  ///
  /// Output only.
  core.List<RecommendationCallToAction>? additionalCallToAction;

  /// List of additional localized descriptions for a recommendation.
  ///
  /// Localication uses the `languageCode` field in `GenerateRecommendations`
  /// requests. Not all description types are guaranteed to be present and we
  /// recommend to rely on default description.
  ///
  /// Output only.
  core.List<RecommendationDescription>? additionalDescriptions;

  /// Any creatives attached to the recommendation.
  ///
  /// Repeated.
  ///
  /// Output only.
  core.List<RecommendationCreative>? creative;

  /// Default CTA of the recommendation.
  ///
  /// Optional.
  RecommendationCallToAction? defaultCallToAction;

  /// Localized recommendation description.
  ///
  /// The localization the {@link
  /// `GenerateRecommendationsRequest.language_code`} field in {@link
  /// `GenerateRecommendationsRequest`} requests.
  ///
  /// Optional.
  core.String? defaultDescription;

  /// A numerical score of the impact from the recommendation's description.
  ///
  /// For example, a recommendation might suggest an upward trend in sales for a
  /// certain product. Higher number means larger impact.
  ///
  /// Optional.
  core.int? numericalImpact;

  /// Indicates whether a user needs to pay when they complete the user journey
  /// suggested by the recommendation.
  ///
  /// Optional.
  core.bool? paid;

  /// Localized recommendation name.
  ///
  /// The localization uses the {@link
  /// `GenerateRecommendationsRequest.language_code`} field in {@link
  /// `GenerateRecommendationsRequest`} requests.
  ///
  /// Optional.
  core.String? recommendationName;

  /// Subtype of the recommendations.
  ///
  /// Only applicable when multiple recommendations can be generated per type,
  /// and is used as an identifier of recommendation under the same
  /// recommendation type.
  ///
  /// Optional.
  core.String? subType;

  /// Localized Recommendation Title.
  ///
  /// Localization uses the {@link
  /// `GenerateRecommendationsRequest.language_code`} field in {@link
  /// `GenerateRecommendationsRequest`} requests.
  ///
  /// Optional.
  core.String? title;

  /// Type of the recommendation.
  ///
  /// List of currently available recommendation types: -
  /// OPPORTUNITY_CREATE_NEW_COLLECTION - OPPORTUNITY_CREATE_EMAIL_CAMPAIGN
  ///
  /// Output only.
  core.String? type;

  Recommendation({
    this.additionalCallToAction,
    this.additionalDescriptions,
    this.creative,
    this.defaultCallToAction,
    this.defaultDescription,
    this.numericalImpact,
    this.paid,
    this.recommendationName,
    this.subType,
    this.title,
    this.type,
  });

  Recommendation.fromJson(core.Map json_)
    : this(
        additionalCallToAction:
            (json_['additionalCallToAction'] as core.List?)
                ?.map(
                  (value) => RecommendationCallToAction.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        additionalDescriptions:
            (json_['additionalDescriptions'] as core.List?)
                ?.map(
                  (value) => RecommendationDescription.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        creative:
            (json_['creative'] as core.List?)
                ?.map(
                  (value) => RecommendationCreative.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        defaultCallToAction:
            json_.containsKey('defaultCallToAction')
                ? RecommendationCallToAction.fromJson(
                  json_['defaultCallToAction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        defaultDescription: json_['defaultDescription'] as core.String?,
        numericalImpact: json_['numericalImpact'] as core.int?,
        paid: json_['paid'] as core.bool?,
        recommendationName: json_['recommendationName'] as core.String?,
        subType: json_['subType'] as core.String?,
        title: json_['title'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalCallToAction != null)
      'additionalCallToAction': additionalCallToAction!,
    if (additionalDescriptions != null)
      'additionalDescriptions': additionalDescriptions!,
    if (creative != null) 'creative': creative!,
    if (defaultCallToAction != null)
      'defaultCallToAction': defaultCallToAction!,
    if (defaultDescription != null) 'defaultDescription': defaultDescription!,
    if (numericalImpact != null) 'numericalImpact': numericalImpact!,
    if (paid != null) 'paid': paid!,
    if (recommendationName != null) 'recommendationName': recommendationName!,
    if (subType != null) 'subType': subType!,
    if (title != null) 'title': title!,
    if (type != null) 'type': type!,
  };
}

/// Call to action (CTA) that explains how a merchant can implement this
/// recommendation
class RecommendationCallToAction {
  /// Intent of the action.
  ///
  /// This value describes the intent (for example,
  /// `OPEN_CREATE_EMAIL_CAMPAIGN_FLOW`) and can vary from recommendation to
  /// recommendation. This value can change over time for the same
  /// recommendation. Currently available intent values: -
  /// OPEN_CREATE_EMAIL_CAMPAIGN_FLOW: Opens a user journey where they can
  /// create a marketing email campaign. (No default URL) -
  /// OPEN_CREATE_COLLECTION_TAB: Opens a user journey where they can
  /// [create a collection](https://support.google.com/merchants/answer/9703228)
  /// for their Merchant account. (No default URL)
  ///
  /// Output only.
  core.String? intent;

  /// Localized text of the CTA.
  ///
  /// Optional.
  ///
  /// Output only.
  core.String? localizedText;

  /// URL of the CTA.
  ///
  /// This field will only be set for some recommendations where there is a
  /// suggested landing URL. Otherwise it will be set to an empty string. We
  /// recommend developers to use their own custom landing page according to the
  /// description of the intent field above when this uri field is empty.
  ///
  /// Optional.
  core.String? uri;

  RecommendationCallToAction({this.intent, this.localizedText, this.uri});

  RecommendationCallToAction.fromJson(core.Map json_)
    : this(
        intent: json_['intent'] as core.String?,
        localizedText: json_['localizedText'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (intent != null) 'intent': intent!,
    if (localizedText != null) 'localizedText': localizedText!,
    if (uri != null) 'uri': uri!,
  };
}

/// Creative is a multimedia attachment to recommendation that can be used on
/// the frontend.
class RecommendationCreative {
  /// Type of the creative.
  /// Possible string values are:
  /// - "CREATIVE_TYPE_UNSPECIFIED" : Default value. If provided, shall be
  /// considered invalid.
  /// - "VIDEO" : Video creatives.
  /// - "PHOTO" : Photo creatives.
  core.String? type;

  /// URL of the creative.
  core.String? uri;

  RecommendationCreative({this.type, this.uri});

  RecommendationCreative.fromJson(core.Map json_)
    : this(
        type: json_['type'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (type != null) 'type': type!,
    if (uri != null) 'uri': uri!,
  };
}

/// Google-provided description for the recommendation.
class RecommendationDescription {
  /// Text of the description.
  ///
  /// Output only.
  core.String? text;

  /// Type of the description.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DESCRIPTION_TYPE_UNSPECIFIED" : Default value. Will never be provided
  /// by the API.
  /// - "SHORT" : Short description.
  /// - "LONG" : Long description.
  core.String? type;

  RecommendationDescription({this.text, this.type});

  RecommendationDescription.fromJson(core.Map json_)
    : this(
        text: json_['text'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (text != null) 'text': text!,
    if (type != null) 'type': type!,
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

  Region.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        geotargetArea:
            json_.containsKey('geotargetArea')
                ? RegionGeoTargetArea.fromJson(
                  json_['geotargetArea'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        merchantId: json_['merchantId'] as core.String?,
        postalCodeArea:
            json_.containsKey('postalCodeArea')
                ? RegionPostalCodeArea.fromJson(
                  json_['postalCodeArea']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        regionId: json_['regionId'] as core.String?,
        regionalInventoryEligible:
            json_['regionalInventoryEligible'] as core.bool?,
        shippingEligible: json_['shippingEligible'] as core.bool?,
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

  RegionGeoTargetArea({this.geotargetCriteriaIds});

  RegionGeoTargetArea.fromJson(core.Map json_)
    : this(
        geotargetCriteriaIds:
            (json_['geotargetCriteriaIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
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

  RegionPostalCodeArea({this.postalCodes, this.regionCode});

  RegionPostalCodeArea.fromJson(core.Map json_)
    : this(
        postalCodes:
            (json_['postalCodes'] as core.List?)
                ?.map(
                  (value) => RegionPostalCodeAreaPostalCodeRange.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        regionCode: json_['regionCode'] as core.String?,
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

  RegionPostalCodeAreaPostalCodeRange({this.begin, this.end});

  RegionPostalCodeAreaPostalCodeRange.fromJson(core.Map json_)
    : this(
        begin: json_['begin'] as core.String?,
        end: json_['end'] as core.String?,
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

  RegionalInventory.fromJson(core.Map json_)
    : this(
        availability: json_['availability'] as core.String?,
        customAttributes:
            (json_['customAttributes'] as core.List?)
                ?.map(
                  (value) => CustomAttribute.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
        price:
            json_.containsKey('price')
                ? Price.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        regionId: json_['regionId'] as core.String?,
        salePrice:
            json_.containsKey('salePrice')
                ? Price.fromJson(
                  json_['salePrice'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        salePriceEffectiveDate: json_['salePriceEffectiveDate'] as core.String?,
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

  RegionalinventoryCustomBatchRequest({this.entries});

  RegionalinventoryCustomBatchRequest.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => RegionalinventoryCustomBatchRequestEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  RegionalinventoryCustomBatchRequestEntry.fromJson(core.Map json_)
    : this(
        batchId: json_['batchId'] as core.int?,
        merchantId: json_['merchantId'] as core.String?,
        method: json_['method'] as core.String?,
        productId: json_['productId'] as core.String?,
        regionalInventory:
            json_.containsKey('regionalInventory')
                ? RegionalInventory.fromJson(
                  json_['regionalInventory']
                      as core.Map<core.String, core.dynamic>,
                )
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

  RegionalinventoryCustomBatchResponse({this.entries, this.kind});

  RegionalinventoryCustomBatchResponse.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => RegionalinventoryCustomBatchResponseEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
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

  /// A list of errors for failed custombatch entries.
  ///
  /// *Note:* Schema errors fail the whole request.
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

  RegionalinventoryCustomBatchResponseEntry.fromJson(core.Map json_)
    : this(
        batchId: json_['batchId'] as core.int?,
        errors:
            json_.containsKey('errors')
                ? Errors.fromJson(
                  json_['errors'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        kind: json_['kind'] as core.String?,
        regionalInventory:
            json_.containsKey('regionalInventory')
                ? RegionalInventory.fromJson(
                  json_['regionalInventory']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (batchId != null) 'batchId': batchId!,
    if (errors != null) 'errors': errors!,
    if (kind != null) 'kind': kind!,
    if (regionalInventory != null) 'regionalInventory': regionalInventory!,
  };
}

/// The payload for configuring how the content should be rendered.
typedef RenderAccountIssuesRequestPayload = $IssuesRequestPayload;

/// Response containing support content and actions for listed account issues.
class RenderAccountIssuesResponse {
  /// Alternate Dispute Resolution (ADR) is deprecated.
  ///
  /// Use `prerendered_out_of_court_dispute_settlement` instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  AlternateDisputeResolution? alternateDisputeResolution;

  /// List of account issues for a given account.
  ///
  /// This list can be shown with compressed, expandable items. In the
  /// compressed form, the title and impact should be shown for each issue. Once
  /// the issue is expanded, the detailed content and available actions should
  /// be rendered.
  core.List<AccountIssue>? issues;

  RenderAccountIssuesResponse({this.alternateDisputeResolution, this.issues});

  RenderAccountIssuesResponse.fromJson(core.Map json_)
    : this(
        alternateDisputeResolution:
            json_.containsKey('alternateDisputeResolution')
                ? AlternateDisputeResolution.fromJson(
                  json_['alternateDisputeResolution']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        issues:
            (json_['issues'] as core.List?)
                ?.map(
                  (value) => AccountIssue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (alternateDisputeResolution != null)
      'alternateDisputeResolution': alternateDisputeResolution!,
    if (issues != null) 'issues': issues!,
  };
}

/// The payload for configuring how the content should be rendered.
typedef RenderProductIssuesRequestPayload = $IssuesRequestPayload;

/// Response containing support content and actions for listed product issues.
class RenderProductIssuesResponse {
  /// Alternate Dispute Resolution (ADR) is deprecated.
  ///
  /// Use `prerendered_out_of_court_dispute_settlement` instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  AlternateDisputeResolution? alternateDisputeResolution;

  /// List of issues for a given product.
  ///
  /// This list can be shown with compressed, expandable items. In the
  /// compressed form, the title and impact should be shown for each issue. Once
  /// the issue is expanded, the detailed content and available actions should
  /// be rendered.
  core.List<ProductIssue>? issues;

  RenderProductIssuesResponse({this.alternateDisputeResolution, this.issues});

  RenderProductIssuesResponse.fromJson(core.Map json_)
    : this(
        alternateDisputeResolution:
            json_.containsKey('alternateDisputeResolution')
                ? AlternateDisputeResolution.fromJson(
                  json_['alternateDisputeResolution']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        issues:
            (json_['issues'] as core.List?)
                ?.map(
                  (value) => ProductIssue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (alternateDisputeResolution != null)
      'alternateDisputeResolution': alternateDisputeResolution!,
    if (issues != null) 'issues': issues!,
  };
}

/// Request to report interactions on a recommendation.
class ReportInteractionRequest {
  /// Type of the interaction that is reported, for example INTERACTION_CLICK.
  ///
  /// Required.
  /// Possible string values are:
  /// - "INTERACTION_TYPE_UNSPECIFIED" : Default value. If provided, the service
  /// will throw ApiError with description "Required parameter:
  /// interactionType".
  /// - "INTERACTION_DISMISS" : When a recommendation is dismissed.
  /// - "INTERACTION_CLICK" : When a recommendation is clicked.
  core.String? interactionType;

  /// Token of the response when recommendation was returned.
  ///
  /// Required.
  core.String? responseToken;

  /// Subtype of the recommendations this interaction happened on.
  ///
  /// This field must be set only to the value that is returned by {@link
  /// `RecommendationsService.GenerateRecommendations`} call.
  ///
  /// Optional.
  core.String? subtype;

  /// Type of the recommendations on which this interaction happened.
  ///
  /// This field must be set only to the value that is returned by {@link
  /// `GenerateRecommendationsResponse`} call.
  ///
  /// Required.
  core.String? type;

  ReportInteractionRequest({
    this.interactionType,
    this.responseToken,
    this.subtype,
    this.type,
  });

  ReportInteractionRequest.fromJson(core.Map json_)
    : this(
        interactionType: json_['interactionType'] as core.String?,
        responseToken: json_['responseToken'] as core.String?,
        subtype: json_['subtype'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (interactionType != null) 'interactionType': interactionType!,
    if (responseToken != null) 'responseToken': responseToken!,
    if (subtype != null) 'subtype': subtype!,
    if (type != null) 'type': type!,
  };
}

/// Result row returned from the search query.
class ReportRow {
  /// Best sellers fields requested by the merchant in the query.
  ///
  /// Field values are only set if the merchant queries
  /// `BestSellersProductClusterView` or `BestSellersBrandView`.
  BestSellers? bestSellers;

  /// Brand fields requested by the merchant in the query.
  ///
  /// Field values are only set if the merchant queries `BestSellersBrandView`.
  Brand? brand;

  /// Competitive visibility fields requested by the merchant in the query.
  ///
  /// Field values are only set if the merchant queries
  /// `CompetitiveVisibilityTopMerchantView`,
  /// `CompetitiveVisibilityBenchmarkView` or
  /// `CompetitiveVisibilityCompetitorView`.
  CompetitiveVisibility? competitiveVisibility;

  /// Metrics requested by the merchant in the query.
  ///
  /// Metric values are only set for metrics requested explicitly in the query.
  Metrics? metrics;

  /// Price competitiveness fields requested by the merchant in the query.
  ///
  /// Field values are only set if the merchant queries
  /// `PriceCompetitivenessProductView`.
  PriceCompetitiveness? priceCompetitiveness;

  /// Price insights fields requested by the merchant in the query.
  ///
  /// Field values are only set if the merchant queries
  /// `PriceInsightsProductView`.
  PriceInsights? priceInsights;

  /// Product cluster fields requested by the merchant in the query.
  ///
  /// Field values are only set if the merchant queries
  /// `BestSellersProductClusterView`.
  ProductCluster? productCluster;

  /// Product fields requested by the merchant in the query.
  ///
  /// Field values are only set if the merchant queries `ProductView`.
  ProductView? productView;

  /// Segmentation dimensions requested by the merchant in the query.
  ///
  /// Dimension values are only set for dimensions requested explicitly in the
  /// query.
  Segments? segments;

  /// [Topic trends](https://support.google.com/merchants/answer/13542370)
  /// fields requested by the merchant in the query.
  ///
  /// Field values are only set if the merchant queries `TopicTrendsView`.
  TopicTrends? topicTrends;

  ReportRow({
    this.bestSellers,
    this.brand,
    this.competitiveVisibility,
    this.metrics,
    this.priceCompetitiveness,
    this.priceInsights,
    this.productCluster,
    this.productView,
    this.segments,
    this.topicTrends,
  });

  ReportRow.fromJson(core.Map json_)
    : this(
        bestSellers:
            json_.containsKey('bestSellers')
                ? BestSellers.fromJson(
                  json_['bestSellers'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        brand:
            json_.containsKey('brand')
                ? Brand.fromJson(
                  json_['brand'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        competitiveVisibility:
            json_.containsKey('competitiveVisibility')
                ? CompetitiveVisibility.fromJson(
                  json_['competitiveVisibility']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        metrics:
            json_.containsKey('metrics')
                ? Metrics.fromJson(
                  json_['metrics'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        priceCompetitiveness:
            json_.containsKey('priceCompetitiveness')
                ? PriceCompetitiveness.fromJson(
                  json_['priceCompetitiveness']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        priceInsights:
            json_.containsKey('priceInsights')
                ? PriceInsights.fromJson(
                  json_['priceInsights'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        productCluster:
            json_.containsKey('productCluster')
                ? ProductCluster.fromJson(
                  json_['productCluster']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        productView:
            json_.containsKey('productView')
                ? ProductView.fromJson(
                  json_['productView'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        segments:
            json_.containsKey('segments')
                ? Segments.fromJson(
                  json_['segments'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        topicTrends:
            json_.containsKey('topicTrends')
                ? TopicTrends.fromJson(
                  json_['topicTrends'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bestSellers != null) 'bestSellers': bestSellers!,
    if (brand != null) 'brand': brand!,
    if (competitiveVisibility != null)
      'competitiveVisibility': competitiveVisibility!,
    if (metrics != null) 'metrics': metrics!,
    if (priceCompetitiveness != null)
      'priceCompetitiveness': priceCompetitiveness!,
    if (priceInsights != null) 'priceInsights': priceInsights!,
    if (productCluster != null) 'productCluster': productCluster!,
    if (productView != null) 'productView': productView!,
    if (segments != null) 'segments': segments!,
    if (topicTrends != null) 'topicTrends': topicTrends!,
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

  RequestPhoneVerificationRequest.fromJson(core.Map json_)
    : this(
        languageCode: json_['languageCode'] as core.String?,
        phoneNumber: json_['phoneNumber'] as core.String?,
        phoneRegionCode: json_['phoneRegionCode'] as core.String?,
        phoneVerificationMethod:
            json_['phoneVerificationMethod'] as core.String?,
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

  RequestPhoneVerificationResponse({this.verificationId});

  RequestPhoneVerificationResponse.fromJson(core.Map json_)
    : this(verificationId: json_['verificationId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (verificationId != null) 'verificationId': verificationId!,
  };
}

/// Request message for the RequestReviewFreeListings Program method.
typedef RequestReviewFreeListingsRequest = $Request09;

/// Request message for the RequestReviewShoppingAds program method.
typedef RequestReviewShoppingAdsRequest = $Request09;

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

  ReturnAddress.fromJson(core.Map json_)
    : this(
        address:
            json_.containsKey('address')
                ? ReturnAddressAddress.fromJson(
                  json_['address'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        country: json_['country'] as core.String?,
        kind: json_['kind'] as core.String?,
        label: json_['label'] as core.String?,
        phoneNumber: json_['phoneNumber'] as core.String?,
        returnAddressId: json_['returnAddressId'] as core.String?,
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
  /// CLDR country code (for example, "US").
  core.String? country;

  /// City, town or commune.
  ///
  /// May also include dependent localities or sublocalities (for example,
  /// neighborhoods or suburbs).
  core.String? locality;

  /// Postal code or ZIP (for example, "94043").
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

  ReturnAddressAddress.fromJson(core.Map json_)
    : this(
        country: json_['country'] as core.String?,
        locality: json_['locality'] as core.String?,
        postalCode: json_['postalCode'] as core.String?,
        recipientName: json_['recipientName'] as core.String?,
        region: json_['region'] as core.String?,
        streetAddress:
            (json_['streetAddress'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
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

  ReturnPolicy.fromJson(core.Map json_)
    : this(
        country: json_['country'] as core.String?,
        kind: json_['kind'] as core.String?,
        label: json_['label'] as core.String?,
        name: json_['name'] as core.String?,
        nonFreeReturnReasons:
            (json_['nonFreeReturnReasons'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        policy:
            json_.containsKey('policy')
                ? ReturnPolicyPolicy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        returnPolicyId: json_['returnPolicyId'] as core.String?,
        returnShippingFee:
            json_.containsKey('returnShippingFee')
                ? Price.fromJson(
                  json_['returnShippingFee']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        seasonalOverrides:
            (json_['seasonalOverrides'] as core.List?)
                ?.map(
                  (value) => ReturnPolicySeasonalOverride.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  ReturnPolicyOnline.fromJson(core.Map json_)
    : this(
        countries:
            (json_['countries'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        itemConditions:
            (json_['itemConditions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        label: json_['label'] as core.String?,
        name: json_['name'] as core.String?,
        policy:
            json_.containsKey('policy')
                ? ReturnPolicyOnlinePolicy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        restockingFee:
            json_.containsKey('restockingFee')
                ? ReturnPolicyOnlineRestockingFee.fromJson(
                  json_['restockingFee'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        returnMethods:
            (json_['returnMethods'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        returnPolicyId: json_['returnPolicyId'] as core.String?,
        returnPolicyUri: json_['returnPolicyUri'] as core.String?,
        returnReasonCategoryInfo:
            (json_['returnReasonCategoryInfo'] as core.List?)
                ?.map(
                  (value) =>
                      ReturnPolicyOnlineReturnReasonCategoryInfo.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
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

  ReturnPolicyOnlinePolicy({this.days, this.type});

  ReturnPolicyOnlinePolicy.fromJson(core.Map json_)
    : this(
        days: json_['days'] as core.String?,
        type: json_['type'] as core.String?,
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

  ReturnPolicyOnlineRestockingFee({this.fixedFee, this.microPercent});

  ReturnPolicyOnlineRestockingFee.fromJson(core.Map json_)
    : this(
        fixedFee:
            json_.containsKey('fixedFee')
                ? PriceAmount.fromJson(
                  json_['fixedFee'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        microPercent: json_['microPercent'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fixedFee != null) 'fixedFee': fixedFee!,
    if (microPercent != null) 'microPercent': microPercent!,
  };
}

/// The return reason category info wrapper.
class ReturnPolicyOnlineReturnReasonCategoryInfo {
  /// The corresponding return label source.
  ///
  /// If the `ReturnMethod` field includes `BY_MAIL`, it is required to specify
  /// `ReturnLabelSource` for both `BUYER_REMORSE` and `ITEM_DEFECT` return
  /// reason categories.
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

  ReturnPolicyOnlineReturnReasonCategoryInfo.fromJson(core.Map json_)
    : this(
        returnLabelSource: json_['returnLabelSource'] as core.String?,
        returnReasonCategory: json_['returnReasonCategory'] as core.String?,
        returnShippingFee:
            json_.containsKey('returnShippingFee')
                ? ReturnPolicyOnlineReturnShippingFee.fromJson(
                  json_['returnShippingFee']
                      as core.Map<core.String, core.dynamic>,
                )
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

  ReturnPolicyOnlineReturnShippingFee({this.fixedFee, this.type});

  ReturnPolicyOnlineReturnShippingFee.fromJson(core.Map json_)
    : this(
        fixedFee:
            json_.containsKey('fixedFee')
                ? PriceAmount.fromJson(
                  json_['fixedFee'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
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

  ReturnPolicyPolicy({this.lastReturnDate, this.numberOfDays, this.type});

  ReturnPolicyPolicy.fromJson(core.Map json_)
    : this(
        lastReturnDate: json_['lastReturnDate'] as core.String?,
        numberOfDays: json_['numberOfDays'] as core.String?,
        type: json_['type'] as core.String?,
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

  ReturnPolicySeasonalOverride.fromJson(core.Map json_)
    : this(
        endDate: json_['endDate'] as core.String?,
        name: json_['name'] as core.String?,
        policy:
            json_.containsKey('policy')
                ? ReturnPolicyPolicy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        startDate: json_['startDate'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endDate != null) 'endDate': endDate!,
    if (name != null) 'name': name!,
    if (policy != null) 'policy': policy!,
    if (startDate != null) 'startDate': startDate!,
  };
}

class ReturnaddressCustomBatchRequest {
  /// The request entries to be processed in the batch.
  core.List<ReturnaddressCustomBatchRequestEntry>? entries;

  ReturnaddressCustomBatchRequest({this.entries});

  ReturnaddressCustomBatchRequest.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => ReturnaddressCustomBatchRequestEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  ReturnaddressCustomBatchRequestEntry.fromJson(core.Map json_)
    : this(
        batchId: json_['batchId'] as core.int?,
        merchantId: json_['merchantId'] as core.String?,
        method: json_['method'] as core.String?,
        returnAddress:
            json_.containsKey('returnAddress')
                ? ReturnAddress.fromJson(
                  json_['returnAddress'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        returnAddressId: json_['returnAddressId'] as core.String?,
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

  ReturnaddressCustomBatchResponse({this.entries, this.kind});

  ReturnaddressCustomBatchResponse.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => ReturnaddressCustomBatchResponseEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
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

  ReturnaddressCustomBatchResponseEntry.fromJson(core.Map json_)
    : this(
        batchId: json_['batchId'] as core.int?,
        errors:
            json_.containsKey('errors')
                ? Errors.fromJson(
                  json_['errors'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        kind: json_['kind'] as core.String?,
        returnAddress:
            json_.containsKey('returnAddress')
                ? ReturnAddress.fromJson(
                  json_['returnAddress'] as core.Map<core.String, core.dynamic>,
                )
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

  ReturnaddressListResponse({this.kind, this.nextPageToken, this.resources});

  ReturnaddressListResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
        resources:
            (json_['resources'] as core.List?)
                ?.map(
                  (value) => ReturnAddress.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  ReturnpolicyCustomBatchRequest({this.entries});

  ReturnpolicyCustomBatchRequest.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => ReturnpolicyCustomBatchRequestEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  ReturnpolicyCustomBatchRequestEntry.fromJson(core.Map json_)
    : this(
        batchId: json_['batchId'] as core.int?,
        merchantId: json_['merchantId'] as core.String?,
        method: json_['method'] as core.String?,
        returnPolicy:
            json_.containsKey('returnPolicy')
                ? ReturnPolicy.fromJson(
                  json_['returnPolicy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        returnPolicyId: json_['returnPolicyId'] as core.String?,
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

  ReturnpolicyCustomBatchResponse({this.entries, this.kind});

  ReturnpolicyCustomBatchResponse.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => ReturnpolicyCustomBatchResponseEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
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

  ReturnpolicyCustomBatchResponseEntry.fromJson(core.Map json_)
    : this(
        batchId: json_['batchId'] as core.int?,
        errors:
            json_.containsKey('errors')
                ? Errors.fromJson(
                  json_['errors'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        kind: json_['kind'] as core.String?,
        returnPolicy:
            json_.containsKey('returnPolicy')
                ? ReturnPolicy.fromJson(
                  json_['returnPolicy'] as core.Map<core.String, core.dynamic>,
                )
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

  ReturnpolicyListResponse({this.kind, this.resources});

  ReturnpolicyListResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        resources:
            (json_['resources'] as core.List?)
                ?.map(
                  (value) => ReturnPolicy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  Row({this.cells});

  Row.fromJson(core.Map json_)
    : this(
        cells:
            (json_['cells'] as core.List?)
                ?.map(
                  (value) => Value.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cells != null) 'cells': cells!,
  };
}

/// Request message for the ReportService.Search method.
class SearchRequest {
  /// Number of ReportRows to retrieve in a single page.
  ///
  /// Defaults to 1000. Values above 5000 are coerced to 5000.
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

  SearchRequest({this.pageSize, this.pageToken, this.query});

  SearchRequest.fromJson(core.Map json_)
    : this(
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        query: json_['query'] as core.String?,
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

  SearchResponse({this.nextPageToken, this.results});

  SearchResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        results:
            (json_['results'] as core.List?)
                ?.map(
                  (value) => ReportRow.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (results != null) 'results': results!,
  };
}

/// Dimensions according to which metrics are segmented in the response.
///
/// Values of product dimensions, such as `offer_id`, reflect the state of a
/// product at the time of the corresponding event, for example, impression or
/// order. Segment fields cannot be selected in queries without also selecting
/// at least one metric field. Values are only set for dimensions requested
/// explicitly in the request's search query.
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

  /// Currency in which price metrics are represented, for example, if you
  /// select `ordered_item_sales_micros`, the returned value will be represented
  /// by this currency.
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

  /// Code of the country where the customer is located at the time of the
  /// event.
  ///
  /// Represented in the ISO 3166 format. If the customer country cannot be
  /// determined, a special 'ZZ' code is returned.
  core.String? customerCountryCode;

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

  /// Program to which metrics apply, for example, Free Product Listing.
  /// Possible string values are:
  /// - "PROGRAM_UNSPECIFIED" : Not specified.
  /// - "SHOPPING_ADS" : Shopping Ads.
  /// - "FREE_PRODUCT_LISTING" : Free Product Listing.
  /// - "FREE_LOCAL_PRODUCT_LISTING" : Free Local Product Listing.
  /// - "BUY_ON_GOOGLE_LISTING" : *Deprecated*: This value is no longer
  /// supported. Retrieving all metrics for the `BUY_ON_GOOGLE_LISTING` program
  /// returns 0 starting from May 2024. Buy on Google Listing.
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
    this.customerCountryCode,
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

  Segments.fromJson(core.Map json_)
    : this(
        brand: json_['brand'] as core.String?,
        categoryL1: json_['categoryL1'] as core.String?,
        categoryL2: json_['categoryL2'] as core.String?,
        categoryL3: json_['categoryL3'] as core.String?,
        categoryL4: json_['categoryL4'] as core.String?,
        categoryL5: json_['categoryL5'] as core.String?,
        currencyCode: json_['currencyCode'] as core.String?,
        customLabel0: json_['customLabel0'] as core.String?,
        customLabel1: json_['customLabel1'] as core.String?,
        customLabel2: json_['customLabel2'] as core.String?,
        customLabel3: json_['customLabel3'] as core.String?,
        customLabel4: json_['customLabel4'] as core.String?,
        customerCountryCode: json_['customerCountryCode'] as core.String?,
        date:
            json_.containsKey('date')
                ? Date.fromJson(
                  json_['date'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        offerId: json_['offerId'] as core.String?,
        productTypeL1: json_['productTypeL1'] as core.String?,
        productTypeL2: json_['productTypeL2'] as core.String?,
        productTypeL3: json_['productTypeL3'] as core.String?,
        productTypeL4: json_['productTypeL4'] as core.String?,
        productTypeL5: json_['productTypeL5'] as core.String?,
        program: json_['program'] as core.String?,
        title: json_['title'] as core.String?,
        week:
            json_.containsKey('week')
                ? Date.fromJson(
                  json_['week'] as core.Map<core.String, core.dynamic>,
                )
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
    if (customerCountryCode != null)
      'customerCountryCode': customerCountryCode!,
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
  /// The list of supported pickup services can be retrieved through the
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
  /// Acceptable values are: - "`delivery`" - "`pickup` (deprecated)" -
  /// "`local_delivery`" - "`collection_point`"
  core.String? shipmentType;

  /// A list of stores your products are delivered from.
  ///
  /// This is only available for the local delivery shipment type.
  ServiceStoreConfig? storeConfig;

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
    this.storeConfig,
  });

  Service.fromJson(core.Map json_)
    : this(
        active: json_['active'] as core.bool?,
        currency: json_['currency'] as core.String?,
        deliveryCountry: json_['deliveryCountry'] as core.String?,
        deliveryTime:
            json_.containsKey('deliveryTime')
                ? DeliveryTime.fromJson(
                  json_['deliveryTime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        eligibility: json_['eligibility'] as core.String?,
        minimumOrderValue:
            json_.containsKey('minimumOrderValue')
                ? Price.fromJson(
                  json_['minimumOrderValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        minimumOrderValueTable:
            json_.containsKey('minimumOrderValueTable')
                ? MinimumOrderValueTable.fromJson(
                  json_['minimumOrderValueTable']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        pickupService:
            json_.containsKey('pickupService')
                ? PickupCarrierService.fromJson(
                  json_['pickupService'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        rateGroups:
            (json_['rateGroups'] as core.List?)
                ?.map(
                  (value) => RateGroup.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        shipmentType: json_['shipmentType'] as core.String?,
        storeConfig:
            json_.containsKey('storeConfig')
                ? ServiceStoreConfig.fromJson(
                  json_['storeConfig'] as core.Map<core.String, core.dynamic>,
                )
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
    if (storeConfig != null) 'storeConfig': storeConfig!,
  };
}

/// Stores that provide local delivery.
///
/// Only valid with local delivery fulfillment.
class ServiceStoreConfig {
  /// Time local delivery ends for the day.
  ///
  /// This can be either `local_cutoff_time` or `store_close_offset_hours`, if
  /// both are provided an error is thrown.
  ServiceStoreConfigCutoffConfig? cutoffConfig;

  /// Maximum delivery radius.
  ///
  /// Only needed for local delivery fulfillment type.
  Distance? serviceRadius;

  /// A list of store codes that provide local delivery.
  ///
  /// If empty, then `store_service_type` must be `all_stores`, or an error is
  /// thrown. If not empty, then `store_service_type` must be `selected_stores`,
  /// or an error is thrown.
  core.List<core.String>? storeCodes;

  /// Indicates whether all stores listed by this merchant provide local
  /// delivery or not.
  ///
  /// Acceptable values are `all stores` and `selected stores`
  core.String? storeServiceType;

  ServiceStoreConfig({
    this.cutoffConfig,
    this.serviceRadius,
    this.storeCodes,
    this.storeServiceType,
  });

  ServiceStoreConfig.fromJson(core.Map json_)
    : this(
        cutoffConfig:
            json_.containsKey('cutoffConfig')
                ? ServiceStoreConfigCutoffConfig.fromJson(
                  json_['cutoffConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        serviceRadius:
            json_.containsKey('serviceRadius')
                ? Distance.fromJson(
                  json_['serviceRadius'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        storeCodes:
            (json_['storeCodes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        storeServiceType: json_['storeServiceType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cutoffConfig != null) 'cutoffConfig': cutoffConfig!,
    if (serviceRadius != null) 'serviceRadius': serviceRadius!,
    if (storeCodes != null) 'storeCodes': storeCodes!,
    if (storeServiceType != null) 'storeServiceType': storeServiceType!,
  };
}

/// Time local delivery ends for the day based on the local timezone of the
/// store.
///
/// `local_cutoff_time` and `store_close_offset_hours` are mutually exclusive.
class ServiceStoreConfigCutoffConfig {
  /// Time in hours and minutes in the local timezone when local delivery ends.
  ServiceStoreConfigCutoffConfigLocalCutoffTime? localCutoffTime;

  /// Merchants can opt-out of showing n+1 day local delivery when they have a
  /// shipping service configured to n day local delivery.
  ///
  /// For example, if the shipping service defines same-day delivery, and it's
  /// past the cut-off, setting this field to `true` results in the calculated
  /// shipping service rate returning `NO_DELIVERY_POST_CUTOFF`. In the same
  /// example, setting this field to `false` results in the calculated shipping
  /// time being one day. This is only for local delivery.
  core.bool? noDeliveryPostCutoff;

  /// Represents cutoff time as the number of hours before store closing.
  ///
  /// Mutually exclusive with other fields (hour and minute).
  core.String? storeCloseOffsetHours;

  ServiceStoreConfigCutoffConfig({
    this.localCutoffTime,
    this.noDeliveryPostCutoff,
    this.storeCloseOffsetHours,
  });

  ServiceStoreConfigCutoffConfig.fromJson(core.Map json_)
    : this(
        localCutoffTime:
            json_.containsKey('localCutoffTime')
                ? ServiceStoreConfigCutoffConfigLocalCutoffTime.fromJson(
                  json_['localCutoffTime']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        noDeliveryPostCutoff: json_['noDeliveryPostCutoff'] as core.bool?,
        storeCloseOffsetHours: json_['storeCloseOffsetHours'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (localCutoffTime != null) 'localCutoffTime': localCutoffTime!,
    if (noDeliveryPostCutoff != null)
      'noDeliveryPostCutoff': noDeliveryPostCutoff!,
    if (storeCloseOffsetHours != null)
      'storeCloseOffsetHours': storeCloseOffsetHours!,
  };
}

/// Time in hours and minutes in the local timezone when local delivery ends.
class ServiceStoreConfigCutoffConfigLocalCutoffTime {
  /// Hour local delivery orders must be placed by to process the same day.
  core.String? hour;

  /// Minute local delivery orders must be placed by to process the same day.
  core.String? minute;

  ServiceStoreConfigCutoffConfigLocalCutoffTime({this.hour, this.minute});

  ServiceStoreConfigCutoffConfigLocalCutoffTime.fromJson(core.Map json_)
    : this(
        hour: json_['hour'] as core.String?,
        minute: json_['minute'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (hour != null) 'hour': hour!,
    if (minute != null) 'minute': minute!,
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

  ShippingSettings.fromJson(core.Map json_)
    : this(
        accountId: json_['accountId'] as core.String?,
        postalCodeGroups:
            (json_['postalCodeGroups'] as core.List?)
                ?.map(
                  (value) => PostalCodeGroup.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        services:
            (json_['services'] as core.List?)
                ?.map(
                  (value) => Service.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        warehouses:
            (json_['warehouses'] as core.List?)
                ?.map(
                  (value) => Warehouse.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  ShippingsettingsCustomBatchRequest({this.entries});

  ShippingsettingsCustomBatchRequest.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => ShippingsettingsCustomBatchRequestEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  ShippingsettingsCustomBatchRequestEntry.fromJson(core.Map json_)
    : this(
        accountId: json_['accountId'] as core.String?,
        batchId: json_['batchId'] as core.int?,
        merchantId: json_['merchantId'] as core.String?,
        method: json_['method'] as core.String?,
        shippingSettings:
            json_.containsKey('shippingSettings')
                ? ShippingSettings.fromJson(
                  json_['shippingSettings']
                      as core.Map<core.String, core.dynamic>,
                )
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

  ShippingsettingsCustomBatchResponse({this.entries, this.kind});

  ShippingsettingsCustomBatchResponse.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => ShippingsettingsCustomBatchResponseEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
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

  /// A list of errors for failed custombatch entries.
  ///
  /// *Note:* Schema errors fail the whole request.
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

  ShippingsettingsCustomBatchResponseEntry.fromJson(core.Map json_)
    : this(
        batchId: json_['batchId'] as core.int?,
        errors:
            json_.containsKey('errors')
                ? Errors.fromJson(
                  json_['errors'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        kind: json_['kind'] as core.String?,
        shippingSettings:
            json_.containsKey('shippingSettings')
                ? ShippingSettings.fromJson(
                  json_['shippingSettings']
                      as core.Map<core.String, core.dynamic>,
                )
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

  ShippingsettingsGetSupportedCarriersResponse({this.carriers, this.kind});

  ShippingsettingsGetSupportedCarriersResponse.fromJson(core.Map json_)
    : this(
        carriers:
            (json_['carriers'] as core.List?)
                ?.map(
                  (value) => CarriersCarrier.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
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

  ShippingsettingsGetSupportedHolidaysResponse({this.holidays, this.kind});

  ShippingsettingsGetSupportedHolidaysResponse.fromJson(core.Map json_)
    : this(
        holidays:
            (json_['holidays'] as core.List?)
                ?.map(
                  (value) => HolidaysHoliday.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
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

  ShippingsettingsGetSupportedPickupServicesResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        pickupServices:
            (json_['pickupServices'] as core.List?)
                ?.map(
                  (value) => PickupServicesPickupService.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  ShippingsettingsListResponse({this.kind, this.nextPageToken, this.resources});

  ShippingsettingsListResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
        resources:
            (json_['resources'] as core.List?)
                ?.map(
                  (value) => ShippingSettings.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (kind != null) 'kind': kind!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (resources != null) 'resources': resources!,
  };
}

/// Response message for GetShoppingAdsProgramStatus.
class ShoppingAdsProgramStatus {
  /// State of the program.
  ///
  /// `ENABLED` if there are offers for at least one region.
  /// Possible string values are:
  /// - "PROGRAM_STATE_UNSPECIFIED" : State is unknown.
  /// - "NOT_ENABLED" : Program is not enabled for any country.
  /// - "NO_OFFERS_UPLOADED" : No products have been uploaded for any region.
  /// Upload products to Merchant Center.
  /// - "ENABLED" : Program is enabled and offers are uploaded for at least one
  /// country.
  core.String? globalState;

  /// Status of the program in each region.
  ///
  /// Regions with the same status and review eligibility are grouped together
  /// in `regionCodes`.
  core.List<ShoppingAdsProgramStatusRegionStatus>? regionStatuses;

  ShoppingAdsProgramStatus({this.globalState, this.regionStatuses});

  ShoppingAdsProgramStatus.fromJson(core.Map json_)
    : this(
        globalState: json_['globalState'] as core.String?,
        regionStatuses:
            (json_['regionStatuses'] as core.List?)
                ?.map(
                  (value) => ShoppingAdsProgramStatusRegionStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (globalState != null) 'globalState': globalState!,
    if (regionStatuses != null) 'regionStatuses': regionStatuses!,
  };
}

/// Status of program and region.
class ShoppingAdsProgramStatusRegionStatus {
  /// Date by which eligibilityStatus will go from `WARNING` to `DISAPPROVED`.
  ///
  /// Only visible when your eligibilityStatus is WARNING. In
  /// [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DD`.
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
  /// - "ONBOARDING" : Program is currently onboarding. Upload valid offers to
  /// complete onboarding.
  core.String? eligibilityStatus;

  /// Issues that must be fixed to be eligible for review.
  core.List<core.String>? onboardingIssues;

  /// The two-letter \[ISO 3166-1
  /// alpha-2\](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) codes for all
  /// the regions with the same `eligibilityStatus` and `reviewEligibility`.
  core.List<core.String>? regionCodes;

  /// If a program is eligible for review in a specific region.
  ///
  /// Only visible if `eligibilityStatus` is `DISAPPROVED`.
  /// Possible string values are:
  /// - "REVIEW_ELIGIBILITY_UNSPECIFIED" : Review eligibility state is unknown.
  /// - "ELIGIBLE" : Account is eligible for review for a specified region code.
  /// - "INELIGIBLE" : Account is not eligible for review for a specified region
  /// code.
  core.String? reviewEligibilityStatus;

  /// Review ineligibility reason if account is not eligible for review.
  /// Possible string values are:
  /// - "REVIEW_INELIGIBILITY_REASON_UNSPECIFIED" : Requesting a review from
  /// Google is not possible.
  /// - "ONBOARDING_ISSUES" : All onboarding issues needs to be fixed.
  /// - "NOT_ENOUGH_OFFERS" : Not enough offers uploaded for this country.
  /// - "IN_COOLDOWN_PERIOD" : Cooldown period applies. Wait until cooldown
  /// period ends.
  /// - "ALREADY_UNDER_REVIEW" : Account is already under review.
  /// - "NO_REVIEW_REQUIRED" : No issues available to review.
  /// - "WILL_BE_REVIEWED_AUTOMATICALLY" : Account will be automatically
  /// reviewed at the end of the grace period.
  /// - "IS_RETIRED" : Account is retired. Should not appear in MC.
  /// - "ALREADY_REVIEWED" : Account has already been reviewed. You can't
  /// request further reviews.
  core.String? reviewIneligibilityReason;

  /// Reason a program in a specific region isn’t eligible for review.
  ///
  /// Only visible if `reviewEligibilityStatus` is `INELIGIBLE`.
  core.String? reviewIneligibilityReasonDescription;

  /// Additional information for ineligibility.
  ///
  /// If `reviewIneligibilityReason` is `IN_COOLDOWN_PERIOD`, a timestamp for
  /// the end of the cooldown period is provided.
  ShoppingAdsProgramStatusReviewIneligibilityReasonDetails?
  reviewIneligibilityReasonDetails;

  /// Issues evaluated in the review process.
  ///
  /// Fix all issues before requesting a review.
  core.List<core.String>? reviewIssues;

  ShoppingAdsProgramStatusRegionStatus({
    this.disapprovalDate,
    this.eligibilityStatus,
    this.onboardingIssues,
    this.regionCodes,
    this.reviewEligibilityStatus,
    this.reviewIneligibilityReason,
    this.reviewIneligibilityReasonDescription,
    this.reviewIneligibilityReasonDetails,
    this.reviewIssues,
  });

  ShoppingAdsProgramStatusRegionStatus.fromJson(core.Map json_)
    : this(
        disapprovalDate: json_['disapprovalDate'] as core.String?,
        eligibilityStatus: json_['eligibilityStatus'] as core.String?,
        onboardingIssues:
            (json_['onboardingIssues'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        regionCodes:
            (json_['regionCodes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        reviewEligibilityStatus:
            json_['reviewEligibilityStatus'] as core.String?,
        reviewIneligibilityReason:
            json_['reviewIneligibilityReason'] as core.String?,
        reviewIneligibilityReasonDescription:
            json_['reviewIneligibilityReasonDescription'] as core.String?,
        reviewIneligibilityReasonDetails:
            json_.containsKey('reviewIneligibilityReasonDetails')
                ? ShoppingAdsProgramStatusReviewIneligibilityReasonDetails.fromJson(
                  json_['reviewIneligibilityReasonDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        reviewIssues:
            (json_['reviewIssues'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (disapprovalDate != null) 'disapprovalDate': disapprovalDate!,
    if (eligibilityStatus != null) 'eligibilityStatus': eligibilityStatus!,
    if (onboardingIssues != null) 'onboardingIssues': onboardingIssues!,
    if (regionCodes != null) 'regionCodes': regionCodes!,
    if (reviewEligibilityStatus != null)
      'reviewEligibilityStatus': reviewEligibilityStatus!,
    if (reviewIneligibilityReason != null)
      'reviewIneligibilityReason': reviewIneligibilityReason!,
    if (reviewIneligibilityReasonDescription != null)
      'reviewIneligibilityReasonDescription':
          reviewIneligibilityReasonDescription!,
    if (reviewIneligibilityReasonDetails != null)
      'reviewIneligibilityReasonDetails': reviewIneligibilityReasonDetails!,
    if (reviewIssues != null) 'reviewIssues': reviewIssues!,
  };
}

/// Additional details for review ineligibility reasons.
typedef ShoppingAdsProgramStatusReviewIneligibilityReasonDetails =
    $ProgramStatusReviewIneligibilityReasonDetails;

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

  Table({this.columnHeaders, this.name, this.rowHeaders, this.rows});

  Table.fromJson(core.Map json_)
    : this(
        columnHeaders:
            json_.containsKey('columnHeaders')
                ? Headers.fromJson(
                  json_['columnHeaders'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        rowHeaders:
            json_.containsKey('rowHeaders')
                ? Headers.fromJson(
                  json_['rowHeaders'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        rows:
            (json_['rows'] as core.List?)
                ?.map(
                  (value) => Row.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (columnHeaders != null) 'columnHeaders': columnHeaders!,
    if (name != null) 'name': name!,
    if (rowHeaders != null) 'rowHeaders': rowHeaders!,
    if (rows != null) 'rows': rows!,
  };
}

/// Block of text that may contain a tooltip with more information.
class TextWithTooltip {
  /// Value of the tooltip as a simple text.
  core.String? simpleTooltipValue;

  /// Value of the message as a simple text.
  core.String? simpleValue;

  /// The suggested type of an icon for tooltip, if a tooltip is present.
  /// Possible string values are:
  /// - "TOOLTIP_ICON_STYLE_UNSPECIFIED" : Default value. Will never be provided
  /// by the API.
  /// - "INFO" : Used when the tooltip adds additional information to the
  /// context, the 'i' can be used as an icon.
  /// - "QUESTION" : Used when the tooltip shows helpful information, the '?'
  /// can be used as an icon.
  core.String? tooltipIconStyle;

  TextWithTooltip({
    this.simpleTooltipValue,
    this.simpleValue,
    this.tooltipIconStyle,
  });

  TextWithTooltip.fromJson(core.Map json_)
    : this(
        simpleTooltipValue: json_['simpleTooltipValue'] as core.String?,
        simpleValue: json_['simpleValue'] as core.String?,
        tooltipIconStyle: json_['tooltipIconStyle'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (simpleTooltipValue != null) 'simpleTooltipValue': simpleTooltipValue!,
    if (simpleValue != null) 'simpleValue': simpleValue!,
    if (tooltipIconStyle != null) 'tooltipIconStyle': tooltipIconStyle!,
  };
}

/// A message that represents a time period.
class TimePeriod {
  /// The ending timestamp.
  core.String? endTime;

  /// The starting timestamp.
  core.String? startTime;

  TimePeriod({this.endTime, this.startTime});

  TimePeriod.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endTime != null) 'endTime': endTime!,
    if (startTime != null) 'startTime': startTime!,
  };
}

/// Represents a time zone from the
/// [IANA Time Zone Database](https://www.iana.org/time-zones).
typedef TimeZone = $TimeZone;

/// Topic trends fields requested by the merchant in the query.
///
/// Field values are only set if the merchant queries `TopicTrendsView`.
/// Forecast data can be queried up to 13 weeks by passing a future date in the
/// `date` field. Historical data is measured daily, and forecasted data is
/// projected weekly. All data points are normalized based on the highest data
/// points returned in the response. If you make separate queries with different
/// date ranges, you might see different values for the same date in each
/// response. The recommended way to get a trend score of a topic is
/// `last7_days_search_interest / last{$day}_days_search_interest - 1`. You can
/// view trends for up to eight topics at a time.
class TopicTrends {
  /// Country trends are calculated for.
  ///
  /// Must be a two-letter country code (ISO 3166-1-alpha-2 code), for example,
  /// `“US”`.
  core.String? customerCountryCode;

  /// Date the trend score was retrieved.
  Date? date;

  /// Search interest in the last 120 days, with the same normalization as
  /// search_interest.
  ///
  /// This field is only present for a past date.
  core.double? last120DaysSearchInterest;

  /// Search interest in the last 30 days, with the same normalization as
  /// search_interest.
  ///
  /// This field is only present for a past date.
  core.double? last30DaysSearchInterest;

  /// Search interest in the last 7 days, with the same normalization as
  /// search_interest.
  ///
  /// This field is only present for a past date.
  core.double? last7DaysSearchInterest;

  /// Search interest in the last 90 days, with the same normalization as
  /// search_interest.
  ///
  /// This field is only present for a past date.
  core.double? last90DaysSearchInterest;

  /// Estimated search interest in the next 7 days, with the same normalization
  /// as search_interest.
  ///
  /// This field is only present for a future date.
  core.double? next7DaysSearchInterest;

  /// Daily search interest, normalized to the time and country to make
  /// comparisons easier, with 100 representing peak popularity (from 0 to 100)
  /// for the requested time period and location.
  core.double? searchInterest;

  /// Google-provided topic trends are calculated for.
  ///
  /// Only top eight topics are returned. Topic is what shoppers are searching
  /// for on Google, grouped by the same concept.
  core.String? topic;

  TopicTrends({
    this.customerCountryCode,
    this.date,
    this.last120DaysSearchInterest,
    this.last30DaysSearchInterest,
    this.last7DaysSearchInterest,
    this.last90DaysSearchInterest,
    this.next7DaysSearchInterest,
    this.searchInterest,
    this.topic,
  });

  TopicTrends.fromJson(core.Map json_)
    : this(
        customerCountryCode: json_['customerCountryCode'] as core.String?,
        date:
            json_.containsKey('date')
                ? Date.fromJson(
                  json_['date'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        last120DaysSearchInterest:
            (json_['last120DaysSearchInterest'] as core.num?)?.toDouble(),
        last30DaysSearchInterest:
            (json_['last30DaysSearchInterest'] as core.num?)?.toDouble(),
        last7DaysSearchInterest:
            (json_['last7DaysSearchInterest'] as core.num?)?.toDouble(),
        last90DaysSearchInterest:
            (json_['last90DaysSearchInterest'] as core.num?)?.toDouble(),
        next7DaysSearchInterest:
            (json_['next7DaysSearchInterest'] as core.num?)?.toDouble(),
        searchInterest: (json_['searchInterest'] as core.num?)?.toDouble(),
        topic: json_['topic'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customerCountryCode != null)
      'customerCountryCode': customerCountryCode!,
    if (date != null) 'date': date!,
    if (last120DaysSearchInterest != null)
      'last120DaysSearchInterest': last120DaysSearchInterest!,
    if (last30DaysSearchInterest != null)
      'last30DaysSearchInterest': last30DaysSearchInterest!,
    if (last7DaysSearchInterest != null)
      'last7DaysSearchInterest': last7DaysSearchInterest!,
    if (last90DaysSearchInterest != null)
      'last90DaysSearchInterest': last90DaysSearchInterest!,
    if (next7DaysSearchInterest != null)
      'next7DaysSearchInterest': next7DaysSearchInterest!,
    if (searchInterest != null) 'searchInterest': searchInterest!,
    if (topic != null) 'topic': topic!,
  };
}

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

  TransitTable({this.postalCodeGroupNames, this.rows, this.transitTimeLabels});

  TransitTable.fromJson(core.Map json_)
    : this(
        postalCodeGroupNames:
            (json_['postalCodeGroupNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        rows:
            (json_['rows'] as core.List?)
                ?.map(
                  (value) => TransitTableTransitTimeRow.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        transitTimeLabels:
            (json_['transitTimeLabels'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
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

  TransitTableTransitTimeRow({this.values});

  TransitTableTransitTimeRow.fromJson(core.Map json_)
    : this(
        values:
            (json_['values'] as core.List?)
                ?.map(
                  (value) =>
                      TransitTableTransitTimeRowTransitTimeValue.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
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

  TransitTableTransitTimeRowTransitTimeValue.fromJson(core.Map json_)
    : this(
        maxTransitTimeInDays: json_['maxTransitTimeInDays'] as core.int?,
        minTransitTimeInDays: json_['minTransitTimeInDays'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (maxTransitTimeInDays != null)
      'maxTransitTimeInDays': maxTransitTimeInDays!,
    if (minTransitTimeInDays != null)
      'minTransitTimeInDays': minTransitTimeInDays!,
  };
}

/// The payload for the triggered action.
class TriggerActionPayload {
  /// The context from the selected action.
  ///
  /// The value is obtained from rendered issues and needs to be sent back to
  /// identify the action that is being triggered.
  ///
  /// Required.
  core.String? actionContext;

  /// Input provided by the merchant.
  ///
  /// Required.
  ActionInput? actionInput;

  TriggerActionPayload({this.actionContext, this.actionInput});

  TriggerActionPayload.fromJson(core.Map json_)
    : this(
        actionContext: json_['actionContext'] as core.String?,
        actionInput:
            json_.containsKey('actionInput')
                ? ActionInput.fromJson(
                  json_['actionInput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actionContext != null) 'actionContext': actionContext!,
    if (actionInput != null) 'actionInput': actionInput!,
  };
}

/// Response informing about the started action.
class TriggerActionResponse {
  /// The message for merchant.
  core.String? message;

  TriggerActionResponse({this.message});

  TriggerActionResponse.fromJson(core.Map json_)
    : this(message: json_['message'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (message != null) 'message': message!,
  };
}

/// Request message for the UndeleteConversionSource method.
typedef UndeleteConversionSourceRequest = $Empty;

/// Specifications related to the `Checkout` URL.
///
/// The `UriTemplate` is of the form
/// `https://www.mystore.com/checkout?item_id={id}` where `{id}` will be
/// automatically replaced with data from the merchant account with this
/// attribute
/// [offer_id](https://developers.google.com/shopping-content/reference/rest/v2.1/products#Product.FIELDS.offer_id)
class UrlSettings {
  /// URL template when the placeholders are expanded will redirect the buyer to
  /// the cart page on the merchant website with the selected item in cart.
  core.String? cartUriTemplate;

  /// URL template when the placeholders are expanded will redirect the buyer to
  /// the merchant checkout page with the item in the cart.
  core.String? checkoutUriTemplate;

  UrlSettings({this.cartUriTemplate, this.checkoutUriTemplate});

  UrlSettings.fromJson(core.Map json_)
    : this(
        cartUriTemplate: json_['cartUriTemplate'] as core.String?,
        checkoutUriTemplate: json_['checkoutUriTemplate'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cartUriTemplate != null) 'cartUriTemplate': cartUriTemplate!,
    if (checkoutUriTemplate != null)
      'checkoutUriTemplate': checkoutUriTemplate!,
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

  /// A percentage of the price represented as a number in decimal notation (for
  /// example, `"5.4"`).
  ///
  /// Can only be set if all other fields are not set.
  core.String? pricePercentage;

  /// The name of a subtable.
  ///
  /// Can only be set in table cells (not for single values), and only if all
  /// other fields are not set.
  core.String? subtableName;

  Value({
    this.carrierRateName,
    this.flatRate,
    this.noShipping,
    this.pricePercentage,
    this.subtableName,
  });

  Value.fromJson(core.Map json_)
    : this(
        carrierRateName: json_['carrierRateName'] as core.String?,
        flatRate:
            json_.containsKey('flatRate')
                ? Price.fromJson(
                  json_['flatRate'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        noShipping: json_['noShipping'] as core.bool?,
        pricePercentage: json_['pricePercentage'] as core.String?,
        subtableName: json_['subtableName'] as core.String?,
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

  VerifyPhoneNumberRequest.fromJson(core.Map json_)
    : this(
        phoneVerificationMethod:
            json_['phoneVerificationMethod'] as core.String?,
        verificationCode: json_['verificationCode'] as core.String?,
        verificationId: json_['verificationId'] as core.String?,
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

  VerifyPhoneNumberResponse({this.verifiedPhoneNumber});

  VerifyPhoneNumberResponse.fromJson(core.Map json_)
    : this(verifiedPhoneNumber: json_['verifiedPhoneNumber'] as core.String?);

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

  Warehouse.fromJson(core.Map json_)
    : this(
        businessDayConfig:
            json_.containsKey('businessDayConfig')
                ? BusinessDayConfig.fromJson(
                  json_['businessDayConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        cutoffTime:
            json_.containsKey('cutoffTime')
                ? WarehouseCutoffTime.fromJson(
                  json_['cutoffTime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        handlingDays: json_['handlingDays'] as core.String?,
        name: json_['name'] as core.String?,
        shippingAddress:
            json_.containsKey('shippingAddress')
                ? Address.fromJson(
                  json_['shippingAddress']
                      as core.Map<core.String, core.dynamic>,
                )
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
  /// The list of supported carriers can be retrieved through the
  /// `listSupportedCarriers` method.
  ///
  /// Required.
  core.String? carrier;

  /// Carrier service, such as `"ground"` or `"2 days"`.
  ///
  /// The list of supported services for a carrier can be retrieved through the
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
  /// [CLDR territory code](https://github.com/unicode-org/cldr/blob/latest/common/main/en.xml).
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

  WarehouseBasedDeliveryTime.fromJson(core.Map json_)
    : this(
        carrier: json_['carrier'] as core.String?,
        carrierService: json_['carrierService'] as core.String?,
        originAdministrativeArea:
            json_['originAdministrativeArea'] as core.String?,
        originCity: json_['originCity'] as core.String?,
        originCountry: json_['originCountry'] as core.String?,
        originPostalCode: json_['originPostalCode'] as core.String?,
        originStreetAddress: json_['originStreetAddress'] as core.String?,
        warehouseName: json_['warehouseName'] as core.String?,
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

  WarehouseCutoffTime({this.hour, this.minute});

  WarehouseCutoffTime.fromJson(core.Map json_)
    : this(
        hour: json_['hour'] as core.int?,
        minute: json_['minute'] as core.int?,
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

  Weight({this.unit, this.value});

  Weight.fromJson(core.Map json_)
    : this(
        unit: json_['unit'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (unit != null) 'unit': unit!,
    if (value != null) 'value': value!,
  };
}
