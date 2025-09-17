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

/// Merchant API - lfp_v1beta
///
/// Programmatically manage your Merchant Center Accounts.
///
/// For more information, see <https://developers.google.com/merchant/api>
///
/// Create an instance of [MerchantApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsLfpInventoriesResource]
///   - [AccountsLfpMerchantStatesResource]
///   - [AccountsLfpSalesResource]
///   - [AccountsLfpStoresResource]
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

/// Programmatically manage your Merchant Center Accounts.
class MerchantApi {
  /// Manage your product listings and accounts for Google Shopping
  static const contentScope = 'https://www.googleapis.com/auth/content';

  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);

  MerchantApi(
    http.Client client, {
    core.String rootUrl = 'https://merchantapi.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsLfpInventoriesResource get lfpInventories =>
      AccountsLfpInventoriesResource(_requester);
  AccountsLfpMerchantStatesResource get lfpMerchantStates =>
      AccountsLfpMerchantStatesResource(_requester);
  AccountsLfpSalesResource get lfpSales => AccountsLfpSalesResource(_requester);
  AccountsLfpStoresResource get lfpStores =>
      AccountsLfpStoresResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;
}

class AccountsLfpInventoriesResource {
  final commons.ApiRequester _requester;

  AccountsLfpInventoriesResource(commons.ApiRequester client)
    : _requester = client;

  /// Inserts a `LfpInventory` resource for the given target merchant account.
  ///
  /// If the resource already exists, it will be replaced. The inventory
  /// automatically expires after 30 days.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The LFP provider account. Format:
  /// `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LfpInventory].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LfpInventory> insert(
    LfpInventory request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'lfp/v1beta/' +
        core.Uri.encodeFull('$parent') +
        '/lfpInventories:insert';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LfpInventory.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsLfpMerchantStatesResource {
  final commons.ApiRequester _requester;

  AccountsLfpMerchantStatesResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the LFP state of a merchant
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the state to retrieve. Format:
  /// `accounts/{account}/lfpMerchantStates/{target_merchant}`. For example,
  /// `accounts/123456/lfpMerchantStates/567890`.
  /// Value must have pattern `^accounts/\[^/\]+/lfpMerchantStates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LfpMerchantState].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LfpMerchantState> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'lfp/v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LfpMerchantState.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsLfpSalesResource {
  final commons.ApiRequester _requester;

  AccountsLfpSalesResource(commons.ApiRequester client) : _requester = client;

  /// Inserts a `LfpSale` for the given merchant.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The LFP provider account. Format:
  /// `accounts/{lfp_partner}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LfpSale].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LfpSale> insert(
    LfpSale request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'lfp/v1beta/' + core.Uri.encodeFull('$parent') + '/lfpSales:insert';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LfpSale.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsLfpStoresResource {
  final commons.ApiRequester _requester;

  AccountsLfpStoresResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a store for a target merchant.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the store to delete for the target merchant
  /// account. Format:
  /// `accounts/{account}/lfpStores/{target_merchant}~{store_code}`
  /// Value must have pattern `^accounts/\[^/\]+/lfpStores/\[^/\]+$`.
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'lfp/v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves information about a store.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the store to retrieve. Format:
  /// `accounts/{account}/lfpStores/{target_merchant}~{store_code}`
  /// Value must have pattern `^accounts/\[^/\]+/lfpStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LfpStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LfpStore> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'lfp/v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LfpStore.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a store for the target merchant.
  ///
  /// If the store with the same store code already exists, it will be replaced.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The LFP provider account Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LfpStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LfpStore> insert(
    LfpStore request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'lfp/v1beta/' + core.Uri.encodeFull('$parent') + '/lfpStores:insert';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LfpStore.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the stores of the target merchant, specified by the filter in
  /// `ListLfpStoresRequest`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The LFP partner. Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of `LfpStore` resources for the
  /// given account to return. The service returns fewer than this value if the
  /// number of stores for the given account is less than the `pageSize`. The
  /// default value is 250. The maximum value is 1000; If a value higher than
  /// the maximum is specified, then the `pageSize` will default to the maximum.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListLfpStoresRequest` call. Provide the page token to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListLfpStoresRequest` must match the call that provided the page token.
  /// The token returned as nextPageToken in the response to the previous
  /// request.
  ///
  /// [targetAccount] - Required. The Merchant Center id of the merchant to list
  /// stores for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLfpStoresResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLfpStoresResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? targetAccount,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (targetAccount != null) 'targetAccount': [targetAccount],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'lfp/v1beta/' + core.Uri.encodeFull('$parent') + '/lfpStores';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLfpStoresResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Country-specific settings for the merchant.
class CountrySettings {
  /// True if this merchant has enabled free local listings in MC.
  core.bool? freeLocalListingsEnabled;

  /// The verification state of this merchant's instock serving feature.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "VERIFICATION_STATE_UNSPECIFIED" : Verification state unspecified.
  /// - "VERIFICATION_STATE_NOT_APPROVED" : Verification state not approved.
  /// - "VERIFICATION_STATE_IN_PROGRESS" : Verification state in progress.
  /// - "VERIFICATION_STATE_APPROVED" : Verification state approved.
  core.String? instockServingVerificationState;

  /// The verification state of this merchant's inventory check.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "VERIFICATION_STATE_UNSPECIFIED" : Verification state unspecified.
  /// - "VERIFICATION_STATE_NOT_APPROVED" : Verification state not approved.
  /// - "VERIFICATION_STATE_IN_PROGRESS" : Verification state in progress.
  /// - "VERIFICATION_STATE_APPROVED" : Verification state approved.
  core.String? inventoryVerificationState;

  /// True if this merchant has enabled local inventory ads in MC.
  core.bool? localInventoryAdsEnabled;

  /// The verification state of this merchant's pickup serving feature.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "VERIFICATION_STATE_UNSPECIFIED" : Verification state unspecified.
  /// - "VERIFICATION_STATE_NOT_APPROVED" : Verification state not approved.
  /// - "VERIFICATION_STATE_IN_PROGRESS" : Verification state in progress.
  /// - "VERIFICATION_STATE_APPROVED" : Verification state approved.
  core.String? pickupServingVerificationState;

  /// The product page type selected by this merchant.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PRODUCT_PAGE_TYPE_UNSPECIFIED" : Product page type unspecified.
  /// - "GOOGLE_HOSTED" : Google hosted product page.
  /// - "MERCHANT_HOSTED" : Merchant hosted product page.
  /// - "MERCHANT_HOSTED_STORE_SPECIFIC" : Merchant hosted store specific
  /// product page.
  core.String? productPageType;

  /// The
  /// [CLDR territory code](https://github.com/unicode-org/cldr/blob/latest/common/main/en.xml)
  /// for the country for which these settings are defined.
  ///
  /// Required.
  core.String? regionCode;

  CountrySettings({
    this.freeLocalListingsEnabled,
    this.instockServingVerificationState,
    this.inventoryVerificationState,
    this.localInventoryAdsEnabled,
    this.pickupServingVerificationState,
    this.productPageType,
    this.regionCode,
  });

  CountrySettings.fromJson(core.Map json_)
    : this(
        freeLocalListingsEnabled:
            json_['freeLocalListingsEnabled'] as core.bool?,
        instockServingVerificationState:
            json_['instockServingVerificationState'] as core.String?,
        inventoryVerificationState:
            json_['inventoryVerificationState'] as core.String?,
        localInventoryAdsEnabled:
            json_['localInventoryAdsEnabled'] as core.bool?,
        pickupServingVerificationState:
            json_['pickupServingVerificationState'] as core.String?,
        productPageType: json_['productPageType'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (freeLocalListingsEnabled != null)
      'freeLocalListingsEnabled': freeLocalListingsEnabled!,
    if (instockServingVerificationState != null)
      'instockServingVerificationState': instockServingVerificationState!,
    if (inventoryVerificationState != null)
      'inventoryVerificationState': inventoryVerificationState!,
    if (localInventoryAdsEnabled != null)
      'localInventoryAdsEnabled': localInventoryAdsEnabled!,
    if (pickupServingVerificationState != null)
      'pickupServingVerificationState': pickupServingVerificationState!,
    if (productPageType != null) 'productPageType': productPageType!,
    if (regionCode != null) 'regionCode': regionCode!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The inventory statistics for a merchant.
class InventoryStats {
  /// Number of entries (understanding entry as a pair of product and store)
  /// that were built based on provided inventories/sales and submitted to
  /// Google.
  core.String? submittedEntries;

  /// Number of submitted in stock entries.
  core.String? submittedInStockEntries;

  /// Number of products from provided inventories/sales that were created from
  /// matches to existing online products provided by the merchant or to the
  /// Google catalog.
  core.String? submittedProducts;

  /// Number of entries that were built based on provided inventories/sales and
  /// couldn't be submitted to Google due to errors like missing product.
  core.String? unsubmittedEntries;

  InventoryStats({
    this.submittedEntries,
    this.submittedInStockEntries,
    this.submittedProducts,
    this.unsubmittedEntries,
  });

  InventoryStats.fromJson(core.Map json_)
    : this(
        submittedEntries: json_['submittedEntries'] as core.String?,
        submittedInStockEntries:
            json_['submittedInStockEntries'] as core.String?,
        submittedProducts: json_['submittedProducts'] as core.String?,
        unsubmittedEntries: json_['unsubmittedEntries'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (submittedEntries != null) 'submittedEntries': submittedEntries!,
    if (submittedInStockEntries != null)
      'submittedInStockEntries': submittedInStockEntries!,
    if (submittedProducts != null) 'submittedProducts': submittedProducts!,
    if (unsubmittedEntries != null) 'unsubmittedEntries': unsubmittedEntries!,
  };
}

/// Local Inventory for the merchant.
class LfpInventory {
  /// Availability of the product at this store.
  ///
  /// For accepted attribute values, see the
  /// [local product inventory data specification](https://support.google.com/merchants/answer/3061342)
  ///
  /// Required.
  core.String? availability;

  /// The time when the inventory is collected.
  ///
  /// If not set, it will be set to the time when the inventory is submitted.
  ///
  /// Optional.
  core.String? collectionTime;

  /// The two-letter ISO 639-1 language code for the item.
  ///
  /// Required.
  core.String? contentLanguage;

  /// The
  /// [feed label](https://developers.google.com/shopping-content/guides/products/feed-labels)
  /// for the product.
  ///
  /// If this is not set, it will default to `regionCode`.
  ///
  /// Optional.
  core.String? feedLabel;

  /// The Global Trade Item Number of the product.
  ///
  /// Optional.
  core.String? gtin;

  /// Identifier.
  ///
  /// The name for the `LfpInventory` resource. Format:
  /// `accounts/{account}/lfpInventories/{target_merchant}~{store_code}~{offer}`
  ///
  /// Output only.
  core.String? name;

  /// A unique identifier for the product.
  ///
  /// If both inventories and sales are submitted for a merchant, this id should
  /// match for the same product. **Note**: if the merchant sells the same
  /// product new and used, they should have different IDs.
  ///
  /// Required. Immutable.
  core.String? offerId;

  /// Supported pickup method for this offer.
  ///
  /// Unless the value is "not supported", this field must be submitted together
  /// with `pickupSla`. For accepted attribute values, see the
  /// [local product inventory data specification](https://support.google.com/merchants/answer/3061342).
  ///
  /// Optional.
  core.String? pickupMethod;

  /// Expected date that an order will be ready for pickup relative to the order
  /// date.
  ///
  /// Must be submitted together with `pickupMethod`. For accepted attribute
  /// values, see the
  /// [local product inventory data specification](https://support.google.com/merchants/answer/3061342).
  ///
  /// Optional.
  core.String? pickupSla;

  /// The current price of the product.
  ///
  /// Optional.
  Price? price;

  /// Quantity of the product available at this store.
  ///
  /// Must be greater than or equal to zero.
  ///
  /// Optional.
  core.String? quantity;

  /// The
  /// [CLDR territory code](https://github.com/unicode-org/cldr/blob/latest/common/main/en.xml)
  /// for the country where the product is sold.
  ///
  /// Required.
  core.String? regionCode;

  /// The identifier of the merchant's store.
  ///
  /// Either the store code inserted through `InsertLfpStore` or the store code
  /// in the Business Profile.
  ///
  /// Required.
  core.String? storeCode;

  /// The Merchant Center ID of the merchant to submit the inventory for.
  ///
  /// Required.
  core.String? targetAccount;

  LfpInventory({
    this.availability,
    this.collectionTime,
    this.contentLanguage,
    this.feedLabel,
    this.gtin,
    this.name,
    this.offerId,
    this.pickupMethod,
    this.pickupSla,
    this.price,
    this.quantity,
    this.regionCode,
    this.storeCode,
    this.targetAccount,
  });

  LfpInventory.fromJson(core.Map json_)
    : this(
        availability: json_['availability'] as core.String?,
        collectionTime: json_['collectionTime'] as core.String?,
        contentLanguage: json_['contentLanguage'] as core.String?,
        feedLabel: json_['feedLabel'] as core.String?,
        gtin: json_['gtin'] as core.String?,
        name: json_['name'] as core.String?,
        offerId: json_['offerId'] as core.String?,
        pickupMethod: json_['pickupMethod'] as core.String?,
        pickupSla: json_['pickupSla'] as core.String?,
        price:
            json_.containsKey('price')
                ? Price.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        quantity: json_['quantity'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
        storeCode: json_['storeCode'] as core.String?,
        targetAccount: json_['targetAccount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (availability != null) 'availability': availability!,
    if (collectionTime != null) 'collectionTime': collectionTime!,
    if (contentLanguage != null) 'contentLanguage': contentLanguage!,
    if (feedLabel != null) 'feedLabel': feedLabel!,
    if (gtin != null) 'gtin': gtin!,
    if (name != null) 'name': name!,
    if (offerId != null) 'offerId': offerId!,
    if (pickupMethod != null) 'pickupMethod': pickupMethod!,
    if (pickupSla != null) 'pickupSla': pickupSla!,
    if (price != null) 'price': price!,
    if (quantity != null) 'quantity': quantity!,
    if (regionCode != null) 'regionCode': regionCode!,
    if (storeCode != null) 'storeCode': storeCode!,
    if (targetAccount != null) 'targetAccount': targetAccount!,
  };
}

/// The LFP state of a merchant.
class LfpMerchantState {
  /// Country-specific settings for the merchant.
  core.List<CountrySettings>? countrySettings;

  /// The inventory statistics for the merchant.
  ///
  /// The field will be absent if the merchant has no inventory submitted
  /// through LFP.
  InventoryStats? inventoryStats;

  /// Number of [GBPs](https://www.google.com/business/) this merchant has
  /// access to.
  core.String? linkedGbps;

  /// Identifier.
  ///
  /// The name of the `LfpMerchantState` resource. Format:
  /// `accounts/{account}/lfpMerchantStates/{target_merchant}`. For example,
  /// `accounts/123456/lfpMerchantStates/567890`.
  core.String? name;

  /// The state per store from the specified merchant.
  ///
  /// The field will be absent if the merchant has no stores submitted through
  /// LFP.
  ///
  /// Output only.
  core.List<LfpStoreState>? storeStates;

  LfpMerchantState({
    this.countrySettings,
    this.inventoryStats,
    this.linkedGbps,
    this.name,
    this.storeStates,
  });

  LfpMerchantState.fromJson(core.Map json_)
    : this(
        countrySettings:
            (json_['countrySettings'] as core.List?)
                ?.map(
                  (value) => CountrySettings.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        inventoryStats:
            json_.containsKey('inventoryStats')
                ? InventoryStats.fromJson(
                  json_['inventoryStats']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        linkedGbps: json_['linkedGbps'] as core.String?,
        name: json_['name'] as core.String?,
        storeStates:
            (json_['storeStates'] as core.List?)
                ?.map(
                  (value) => LfpStoreState.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (countrySettings != null) 'countrySettings': countrySettings!,
    if (inventoryStats != null) 'inventoryStats': inventoryStats!,
    if (linkedGbps != null) 'linkedGbps': linkedGbps!,
    if (name != null) 'name': name!,
    if (storeStates != null) 'storeStates': storeStates!,
  };
}

/// A sale for the merchant.
class LfpSale {
  /// The two-letter ISO 639-1 language code for the item.
  ///
  /// Required.
  core.String? contentLanguage;

  /// The
  /// [feed label](https://developers.google.com/shopping-content/guides/products/feed-labels)
  /// for the product.
  ///
  /// If this is not set, it will default to `regionCode`.
  ///
  /// Optional.
  core.String? feedLabel;

  /// The Global Trade Item Number of the sold product.
  ///
  /// Required.
  core.String? gtin;

  /// Identifier.
  ///
  /// The name of the `LfpSale` resource. Format:
  /// `accounts/{account}/lfpSales/{sale}`
  ///
  /// Output only.
  core.String? name;

  /// A unique identifier for the product.
  ///
  /// If both inventories and sales are submitted for a merchant, this id should
  /// match for the same product. **Note**: if the merchant sells the same
  /// product new and used, they should have different IDs.
  ///
  /// Required.
  core.String? offerId;

  /// The unit price of the product.
  ///
  /// Required.
  Price? price;

  /// The relative change of the available quantity.
  ///
  /// Negative for items returned.
  ///
  /// Required.
  core.String? quantity;

  /// The
  /// [CLDR territory code](https://github.com/unicode-org/cldr/blob/latest/common/main/en.xml)
  /// for the country where the product is sold.
  ///
  /// Required.
  core.String? regionCode;

  /// The timestamp for the sale.
  ///
  /// Required.
  core.String? saleTime;

  /// The identifier of the merchant's store.
  ///
  /// Either a `storeCode` inserted through the API or the code of the store in
  /// the Business Profile.
  ///
  /// Required.
  core.String? storeCode;

  /// The Merchant Center ID of the merchant to submit the sale for.
  ///
  /// Required.
  core.String? targetAccount;

  /// System generated globally unique ID for the `LfpSale`.
  ///
  /// Output only.
  core.String? uid;

  LfpSale({
    this.contentLanguage,
    this.feedLabel,
    this.gtin,
    this.name,
    this.offerId,
    this.price,
    this.quantity,
    this.regionCode,
    this.saleTime,
    this.storeCode,
    this.targetAccount,
    this.uid,
  });

  LfpSale.fromJson(core.Map json_)
    : this(
        contentLanguage: json_['contentLanguage'] as core.String?,
        feedLabel: json_['feedLabel'] as core.String?,
        gtin: json_['gtin'] as core.String?,
        name: json_['name'] as core.String?,
        offerId: json_['offerId'] as core.String?,
        price:
            json_.containsKey('price')
                ? Price.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        quantity: json_['quantity'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
        saleTime: json_['saleTime'] as core.String?,
        storeCode: json_['storeCode'] as core.String?,
        targetAccount: json_['targetAccount'] as core.String?,
        uid: json_['uid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contentLanguage != null) 'contentLanguage': contentLanguage!,
    if (feedLabel != null) 'feedLabel': feedLabel!,
    if (gtin != null) 'gtin': gtin!,
    if (name != null) 'name': name!,
    if (offerId != null) 'offerId': offerId!,
    if (price != null) 'price': price!,
    if (quantity != null) 'quantity': quantity!,
    if (regionCode != null) 'regionCode': regionCode!,
    if (saleTime != null) 'saleTime': saleTime!,
    if (storeCode != null) 'storeCode': storeCode!,
    if (targetAccount != null) 'targetAccount': targetAccount!,
    if (uid != null) 'uid': uid!,
  };
}

/// A store for the merchant.
///
/// This will be used to match to a store under the Google Business Profile of
/// the target merchant. If a matching store can't be found, the inventories or
/// sales submitted with the store code will not be used.
class LfpStore {
  /// [Google My Business category id](https://gcid-explorer.corp.google.com/static/gcid.html).
  ///
  /// Optional.
  core.List<core.String>? gcidCategory;

  /// The state of matching to a Google Business Profile.
  ///
  /// See matchingStateHint for further details if no match is found.
  ///
  /// Optional. Output only.
  /// Possible string values are:
  /// - "STORE_MATCHING_STATE_UNSPECIFIED" : Store matching state unspecified.
  /// - "STORE_MATCHING_STATE_MATCHED" : The `LfpStore` is successfully matched
  /// with a Google Business Profile store.
  /// - "STORE_MATCHING_STATE_FAILED" : The `LfpStore` is not matched with a
  /// Google Business Profile store.
  core.String? matchingState;

  /// The hint of why the matching has failed.
  ///
  /// This is only set when matchingState=`STORE_MATCHING_STATE_FAILED`.
  /// Possible values are: - "`linked-store-not-found`": There aren't any Google
  /// Business Profile stores available for matching. -
  /// "`store-match-not-found`": The provided `LfpStore` couldn't be matched to
  /// any of the connected Google Business Profile stores. Merchant Center
  /// account is connected correctly and stores are available on Google Business
  /// Profile, but the `LfpStore` location address does not match with Google
  /// Business Profile stores' addresses. Update the `LfpStore` address or
  /// Google Business Profile store address to match correctly. -
  /// "`store-match-unverified`": The provided `LfpStore` couldn't be matched to
  /// any of the connected Google Business Profile stores, as the matched Google
  /// Business Profile store is unverified. Go through the Google Business
  /// Profile verification process to match correctly.
  ///
  /// Optional. Output only.
  core.String? matchingStateHint;

  /// Identifier.
  ///
  /// The name of the `LfpStore` resource. Format:
  /// `accounts/{account}/lfpStores/{target_merchant}~{store_code}`
  ///
  /// Output only.
  core.String? name;

  /// The store phone number in [E.164](https://en.wikipedia.org/wiki/E.164)
  /// format.
  ///
  /// Example: `+15556767888`
  ///
  /// Optional.
  core.String? phoneNumber;

  /// The
  /// [Google Place Id](https://developers.google.com/maps/documentation/places/web-service/place-id#id-overview)
  /// of the store location.
  ///
  /// Optional.
  core.String? placeId;

  /// The street address of the store.
  ///
  /// Example: 1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA.
  ///
  /// Required.
  core.String? storeAddress;

  /// A store identifier that is unique for the target merchant.
  ///
  /// Required. Immutable.
  core.String? storeCode;

  /// The merchant or store name.
  ///
  /// Optional.
  core.String? storeName;

  /// The Merchant Center id of the merchant to submit the store for.
  ///
  /// Required.
  core.String? targetAccount;

  /// The website URL for the store or merchant.
  ///
  /// Optional.
  core.String? websiteUri;

  LfpStore({
    this.gcidCategory,
    this.matchingState,
    this.matchingStateHint,
    this.name,
    this.phoneNumber,
    this.placeId,
    this.storeAddress,
    this.storeCode,
    this.storeName,
    this.targetAccount,
    this.websiteUri,
  });

  LfpStore.fromJson(core.Map json_)
    : this(
        gcidCategory:
            (json_['gcidCategory'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        matchingState: json_['matchingState'] as core.String?,
        matchingStateHint: json_['matchingStateHint'] as core.String?,
        name: json_['name'] as core.String?,
        phoneNumber: json_['phoneNumber'] as core.String?,
        placeId: json_['placeId'] as core.String?,
        storeAddress: json_['storeAddress'] as core.String?,
        storeCode: json_['storeCode'] as core.String?,
        storeName: json_['storeName'] as core.String?,
        targetAccount: json_['targetAccount'] as core.String?,
        websiteUri: json_['websiteUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (gcidCategory != null) 'gcidCategory': gcidCategory!,
    if (matchingState != null) 'matchingState': matchingState!,
    if (matchingStateHint != null) 'matchingStateHint': matchingStateHint!,
    if (name != null) 'name': name!,
    if (phoneNumber != null) 'phoneNumber': phoneNumber!,
    if (placeId != null) 'placeId': placeId!,
    if (storeAddress != null) 'storeAddress': storeAddress!,
    if (storeCode != null) 'storeCode': storeCode!,
    if (storeName != null) 'storeName': storeName!,
    if (targetAccount != null) 'targetAccount': targetAccount!,
    if (websiteUri != null) 'websiteUri': websiteUri!,
  };
}

/// The state of a specific merchant's store.
class LfpStoreState {
  /// The store matching state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STORE_MATCHING_STATE_UNSPECIFIED" : Store matching state unspecified.
  /// - "STORE_MATCHING_STATE_MATCHED" : The `LfpStore` is successfully matched
  /// with a Google Business Profile store.
  /// - "STORE_MATCHING_STATE_FAILED" : The `LfpStore` is not matched with a
  /// Google Business Profile store.
  core.String? matchingState;

  /// The hint of why the matching has failed (only set if matching_state is
  /// FAILED).
  core.String? matchingStateHint;

  /// The identifier of this store.
  ///
  /// Required. Immutable.
  core.String? storeCode;

  LfpStoreState({this.matchingState, this.matchingStateHint, this.storeCode});

  LfpStoreState.fromJson(core.Map json_)
    : this(
        matchingState: json_['matchingState'] as core.String?,
        matchingStateHint: json_['matchingStateHint'] as core.String?,
        storeCode: json_['storeCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (matchingState != null) 'matchingState': matchingState!,
    if (matchingStateHint != null) 'matchingStateHint': matchingStateHint!,
    if (storeCode != null) 'storeCode': storeCode!,
  };
}

/// Response message for the ListLfpStores method.
class ListLfpStoresResponse {
  /// The stores from the specified merchant.
  core.List<LfpStore>? lfpStores;

  /// A token, which can be sent as `pageToken` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListLfpStoresResponse({this.lfpStores, this.nextPageToken});

  ListLfpStoresResponse.fromJson(core.Map json_)
    : this(
        lfpStores:
            (json_['lfpStores'] as core.List?)
                ?.map(
                  (value) => LfpStore.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (lfpStores != null) 'lfpStores': lfpStores!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The price represented as a number and currency.
typedef Price = $Price;
