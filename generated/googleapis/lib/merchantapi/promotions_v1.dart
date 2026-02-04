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

/// Merchant API - promotions_v1
///
/// Programmatically manage your Merchant Center Accounts.
///
/// For more information, see <https://developers.google.com/merchant/api>
///
/// Create an instance of [MerchantApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsPromotionsResource]
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

  AccountsPromotionsResource get promotions =>
      AccountsPromotionsResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;
}

class AccountsPromotionsResource {
  final commons.ApiRequester _requester;

  AccountsPromotionsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves the promotion from your Merchant Center account.
  ///
  /// After inserting or updating a promotion input, it may take several minutes
  /// before the updated promotion can be retrieved.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the promotion to retrieve. Format:
  /// `accounts/{account}/promotions/{promotions}`
  /// Value must have pattern `^accounts/\[^/\]+/promotions/\[^/\]+$`.
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
  async.Future<Promotion> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'promotions/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Promotion.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a promotion for your Merchant Center account.
  ///
  /// If the promotion already exists, then it updates the promotion instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account where the promotion will be inserted.
  /// Format: accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
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
  async.Future<Promotion> insert(
    InsertPromotionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'promotions/v1/' +
        core.Uri.encodeFull('$parent') +
        '/promotions:insert';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Promotion.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the promotions in your Merchant Center account.
  ///
  /// The response might contain fewer items than specified by `pageSize`. Rely
  /// on `pageToken` to determine if there are more items to be requested. After
  /// inserting or updating a promotion, it may take several minutes before the
  /// updated processed promotion can be retrieved.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account to list processed promotions for. Format:
  /// `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of promotions to return. The
  /// service may return fewer than this value. The maximum value is 250; values
  /// above 250 will be coerced to 250. If unspecified, the maximum number of
  /// promotions will be returned.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListPromotions` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListPromotions` must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPromotionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPromotionsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'promotions/v1/' + core.Uri.encodeFull('$parent') + '/promotions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPromotionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Attributes.
class Attributes {
  /// Product filter by
  /// [brand exclusion](https://support.google.com/merchants/answer/13861679?ref_topic=13773355&sjid=17642868584668136159-NC)
  /// for the promotion.
  ///
  /// The product filter attributes only applies when the products eligible for
  /// promotion product applicability `product_applicability` attribute is set
  /// to
  /// [specific_products](https://support.google.com/merchants/answer/13837299?ref_topic=13773355&sjid=17642868584668136159-NC).
  ///
  /// Optional.
  core.List<core.String>? brandExclusion;

  /// Product filter by brand for the promotion.
  ///
  /// The product filter attributes only applies when the products eligible for
  /// promotion product applicability `product_applicability` attribute is set
  /// to
  /// [specific_products](https://support.google.com/merchants/answer/13837299?ref_topic=13773355&sjid=17642868584668136159-NC).
  ///
  /// Optional.
  core.List<core.String>? brandInclusion;

  /// The
  /// [coupon value type](https://support.google.com/merchants/answer/13861986?ref_topic=13773355&sjid=17642868584668136159-NC)
  /// attribute to signal the type of promotion that you are running.
  ///
  /// Depending on type of the selected coupon value
  /// [some attributes are required](https://support.google.com/merchants/answer/6393006?ref_topic=7322920).
  ///
  /// Required.
  /// Possible string values are:
  /// - "COUPON_VALUE_TYPE_UNSPECIFIED" : Indicates that the coupon value type
  /// is unspecified.
  /// - "MONEY_OFF" : Money off coupon value type.
  /// - "PERCENT_OFF" : Percent off coupon value type.
  /// - "BUY_M_GET_N_MONEY_OFF" : Buy M quantity, get N money off coupon value
  /// type. `minimum_purchase_quantity` and `get_this_quantity_discounted` must
  /// be present. `money_off_amount` must also be present.
  /// - "BUY_M_GET_N_PERCENT_OFF" : Buy M quantity, get N percent off coupon
  /// value type. `minimum_purchase_quantity` and `get_this_quantity_discounted`
  /// must be present. `percent_off_percentage` must also be present.
  /// - "BUY_M_GET_MONEY_OFF" : Buy M quantity, get money off.
  /// `minimum_purchase_quantity` and `money_off_amount` must be present.
  /// - "BUY_M_GET_PERCENT_OFF" : Buy M quantity, get money off.
  /// `minimum_purchase_quantity` and `percent_off_percentage` must be present.
  /// - "FREE_GIFT" : Free gift with description only.
  /// - "FREE_GIFT_WITH_VALUE" : Free gift with monetary value.
  /// - "FREE_GIFT_WITH_ITEM_ID" : Free gift with item ID.
  /// - "FREE_SHIPPING_STANDARD" : Standard free shipping coupon value type.
  /// Only available for online promotions.
  /// - "FREE_SHIPPING_OVERNIGHT" : Overnight free shipping coupon value type.
  /// Only available for online promotions.
  /// - "FREE_SHIPPING_TWO_DAY" : Two day free shipping coupon value type. Only
  /// available for online promotions.
  core.String? couponValueType;

  /// [Free gift description](https://support.google.com/merchants/answer/13847245?ref_topic=13773355&sjid=17642868584668136159-NC)
  /// for the promotion.
  ///
  /// Optional.
  core.String? freeGiftDescription;

  /// [Free gift item ID](https://support.google.com/merchants/answer/13857152?ref_topic=13773355&sjid=17642868584668136159-NC)
  /// for the promotion.
  ///
  /// Optional.
  core.String? freeGiftItemId;

  /// [Free gift value](https://support.google.com/merchants/answer/13844477?ref_topic=13773355&sjid=17642868584668136159-NC)
  /// for the promotion.
  ///
  /// Optional.
  Price? freeGiftValue;

  /// Generic redemption code for the promotion.
  ///
  /// To be used with the `offerType` field and must meet the
  /// [minimum requirements](https://support.google.com/merchants/answer/13837405?ref_topic=13773355&sjid=17642868584668136159-NC).
  ///
  /// Optional.
  core.String? genericRedemptionCode;

  /// The number of items discounted in the promotion.
  ///
  /// The attribute is set when `couponValueType` is equal to
  /// `buy_m_get_n_money_off` or `buy_m_get_n_percent_off`.
  ///
  /// Optional.
  core.String? getThisQuantityDiscounted;

  /// Product filter by
  /// [item group ID](https://support.google.com/merchants/answer/13837298?ref_topic=13773355&sjid=17642868584668136159-NC).
  ///
  /// The product filter attributes only applies when the products eligible for
  /// promotion product applicability `product_applicability` attribute is set
  /// to
  /// [specific_products](https://support.google.com/merchants/answer/13837299?ref_topic=13773355&sjid=17642868584668136159-NC).
  /// exclusion for the promotion.
  ///
  /// Optional.
  core.List<core.String>? itemGroupIdExclusion;

  /// Product filter by item group ID for the promotion.
  ///
  /// The product filter attributes only applies when the products eligible for
  /// promotion product applicability \[product_applicability\] attribute is set
  /// to
  /// [specific_products](https://support.google.com/merchants/answer/13837299?ref_topic=13773355&sjid=17642868584668136159-NC).
  ///
  /// Optional.
  core.List<core.String>? itemGroupIdInclusion;

  /// Product filter by
  /// [item ID exclusion](https://support.google.com/merchants/answer/13863524?ref_topic=13773355&sjid=17642868584668136159-NC)
  /// for the promotion.
  ///
  /// The product filter attributes only applies when the products eligible for
  /// promotion product applicability `product_applicability` attribute is set
  /// to
  /// [specific_products](https://support.google.com/merchants/answer/13837299?ref_topic=13773355&sjid=17642868584668136159-NC).
  ///
  /// Optional.
  core.List<core.String>? itemIdExclusion;

  /// Product filter by
  /// [item ID](https://support.google.com/merchants/answer/13861565?ref_topic=13773355&sjid=17642868584668136159-NC)
  /// for the promotion.
  ///
  /// The product filter attributes only applies when the products eligible for
  /// promotion product applicability `product_applicability` attribute is set
  /// to
  /// [specific_products](https://support.google.com/merchants/answer/13837299?ref_topic=13773355&sjid=17642868584668136159-NC).
  ///
  /// Optional.
  core.List<core.String>? itemIdInclusion;

  /// [Maximum purchase quantity](https://support.google.com/merchants/answer/13861564?ref_topic=13773355&sjid=17642868584668136159-NC)
  /// for the promotion.
  ///
  /// Optional.
  core.String? limitQuantity;

  /// [Maximum product price](https://support.google.com/merchants/answer/2906014)
  /// for promotion.
  ///
  /// Optional.
  Price? limitValue;

  /// [Long title](https://support.google.com/merchants/answer/13838102?ref_topic=13773355&sjid=17642868584668136159-NC)
  /// for the promotion.
  ///
  /// Required.
  core.String? longTitle;

  /// [Minimum purchase amount](https://support.google.com/merchants/answer/13837705?ref_topic=13773355&sjid=17642868584668136159-NC)
  /// for the promotion.
  ///
  /// Optional.
  Price? minimumPurchaseAmount;
  core.String? minimumPurchaseQuantity;

  /// The
  /// [money off amount](https://support.google.com/merchants/answer/13838101?ref_topic=13773355&sjid=17642868584668136159-NC)
  /// offered in the promotion.
  ///
  /// Optional.
  Price? moneyOffAmount;

  /// [Type](https://support.google.com/merchants/answer/13837405?ref_topic=13773355&sjid=17642868584668136159-NC)
  /// of the promotion.
  ///
  /// Use this attribute to indicate whether or not customers need a coupon code
  /// to redeem your promotion.
  ///
  /// Required.
  /// Possible string values are:
  /// - "OFFER_TYPE_UNSPECIFIED" : Unknown offer type.
  /// - "NO_CODE" : Offer type without a code.
  /// - "GENERIC_CODE" : Offer type with a code. Generic redemption code for the
  /// promotion is required when `offerType` = `GENERIC_CODE`.
  core.String? offerType;

  /// The
  /// [percentage discount](https://support.google.com/merchants/answer/13837404?sjid=17642868584668136159-NC)
  /// offered in the promotion.
  ///
  /// Optional.
  core.String? percentOff;

  /// Applicability of the promotion to either all products or
  /// [only specific products](https://support.google.com/merchants/answer/6396257?ref_topic=6396150&sjid=17642868584668136159-NC).
  ///
  /// Required.
  /// Possible string values are:
  /// - "PRODUCT_APPLICABILITY_UNSPECIFIED" : Which products the promotion
  /// applies to is unknown.
  /// - "ALL_PRODUCTS" : Applicable to all products.
  /// - "SPECIFIC_PRODUCTS" : Applicable to only a single product or list of
  /// products.
  core.String? productApplicability;

  /// Product filter by
  /// [product type exclusion](https://support.google.com/merchants/answer/13863746?ref_topic=13773355&sjid=17642868584668136159-NC)
  /// for the promotion.
  ///
  /// The product filter attributes only applies when the products eligible for
  /// promotion product applicability `product_applicability` attribute is set
  /// to
  /// [specific_products](https://support.google.com/merchants/answer/13837299?ref_topic=13773355&sjid=17642868584668136159-NC).
  ///
  /// Optional.
  core.List<core.String>? productTypeExclusion;

  /// Product filter by product type for the promotion.
  ///
  /// The product filter attributes only applies when the products eligible for
  /// promotion product applicability `product_applicability` attribute is set
  /// to
  /// [specific_products](https://support.google.com/merchants/answer/13837299?ref_topic=13773355&sjid=17642868584668136159-NC).
  ///
  /// Optional.
  core.List<core.String>? productTypeInclusion;

  /// The list of destinations (also known as
  /// [Marketing methods](https://support.google.com/merchants/answer/15130232))
  /// where the promotion applies to.
  ///
  /// If you don't specify a destination by including a supported value in your
  /// data source, your promotion will display in Shopping ads and free listings
  /// by default. You may have previously submitted the following values as
  /// destinations for your products: Shopping Actions, Surfaces across Google,
  /// Local surfaces across Google. To represent these values use
  /// `FREE_LISTINGS`, `FREE_LOCAL_LISTINGS`, `LOCAL_INVENTORY_ADS`. For more
  /// details see
  /// [Promotion destination](https://support.google.com/merchants/answer/13837465?sjid=5155774230887277618-NC)
  ///
  /// Required.
  core.List<core.String>? promotionDestinations;

  /// `TimePeriod` representation of the promotion's display dates.
  ///
  /// This attribute specifies the date and time frame when the promotion will
  /// be live on Google.com and Shopping ads. If the display time period for
  /// promotion `promotion_display_time_period` attribute is not specified, the
  /// promotion effective time period `promotion_effective_time_period`
  /// determines the date and time frame when the promotion will be live on
  /// Google.com and Shopping ads.
  ///
  /// Optional.
  Interval? promotionDisplayTimePeriod;

  /// `TimePeriod` representation of the promotion's effective dates.
  ///
  /// This attribute specifies that the promotion can be tested on your online
  /// store during this time period.
  ///
  /// Required.
  Interval? promotionEffectiveTimePeriod;

  /// URL to the page on the merchant's site where the promotion shows.
  ///
  /// Local Inventory ads promotions throw an error if no `promotion_url` is
  /// included. URL is used to confirm that the promotion is valid and can be
  /// redeemed.
  ///
  /// Optional.
  core.String? promotionUrl;

  /// Whether the promotion applies to
  /// [all stores, or only specified stores](https://support.google.com/merchants/answer/13857563?sjid=17642868584668136159-NC).
  ///
  /// Local Inventory ads promotions throw an error if no store applicability is
  /// included. An `INVALID_ARGUMENT` error is thrown if `store_applicability`
  /// is set to `ALL_STORES` and `store_codes_inclusion` or
  /// `score_code_exclusion` is set to a value.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STORE_APPLICABILITY_UNSPECIFIED" : Which store codes the promotion
  /// applies to is unknown.
  /// - "ALL_STORES" : Promotion applies to all stores.
  /// - "SPECIFIC_STORES" : Promotion applies to only the specified stores.
  core.String? storeApplicability;

  /// [Store codes to exclude](https://support.google.com/merchants/answer/13859586?ref_topic=13773355&sjid=17642868584668136159-NC)
  /// for the promotion.
  ///
  /// The store filter attributes only applies when the `store_applicability`
  /// attribute is set to
  /// [specific_stores](https://support.google.com/merchants/answer/13857563?ref_topic=13773355&sjid=17642868584668136159-NC).
  ///
  /// Optional.
  core.List<core.String>? storeCodesExclusion;

  /// [Store codes to include](https://support.google.com/merchants/answer/13857470?ref_topic=13773355&sjid=17642868584668136159-NC)
  /// for the promotion.
  ///
  /// The store filter attributes only applies when the `store_applicability`
  /// attribute is set to
  /// [specific_stores](https://support.google.com/merchants/answer/13857563?ref_topic=13773355&sjid=17642868584668136159-NC).
  /// Store code (the store ID from your Business Profile) of the physical store
  /// the product is sold in. See the
  /// [Local product inventory data specification](https://support.google.com/merchants/answer/3061342)
  /// for more information.
  ///
  /// Optional.
  core.List<core.String>? storeCodesInclusion;

  Attributes({
    this.brandExclusion,
    this.brandInclusion,
    this.couponValueType,
    this.freeGiftDescription,
    this.freeGiftItemId,
    this.freeGiftValue,
    this.genericRedemptionCode,
    this.getThisQuantityDiscounted,
    this.itemGroupIdExclusion,
    this.itemGroupIdInclusion,
    this.itemIdExclusion,
    this.itemIdInclusion,
    this.limitQuantity,
    this.limitValue,
    this.longTitle,
    this.minimumPurchaseAmount,
    this.minimumPurchaseQuantity,
    this.moneyOffAmount,
    this.offerType,
    this.percentOff,
    this.productApplicability,
    this.productTypeExclusion,
    this.productTypeInclusion,
    this.promotionDestinations,
    this.promotionDisplayTimePeriod,
    this.promotionEffectiveTimePeriod,
    this.promotionUrl,
    this.storeApplicability,
    this.storeCodesExclusion,
    this.storeCodesInclusion,
  });

  Attributes.fromJson(core.Map json_)
    : this(
        brandExclusion: (json_['brandExclusion'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        brandInclusion: (json_['brandInclusion'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        couponValueType: json_['couponValueType'] as core.String?,
        freeGiftDescription: json_['freeGiftDescription'] as core.String?,
        freeGiftItemId: json_['freeGiftItemId'] as core.String?,
        freeGiftValue: json_.containsKey('freeGiftValue')
            ? Price.fromJson(
                json_['freeGiftValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        genericRedemptionCode: json_['genericRedemptionCode'] as core.String?,
        getThisQuantityDiscounted:
            json_['getThisQuantityDiscounted'] as core.String?,
        itemGroupIdExclusion: (json_['itemGroupIdExclusion'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        itemGroupIdInclusion: (json_['itemGroupIdInclusion'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        itemIdExclusion: (json_['itemIdExclusion'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        itemIdInclusion: (json_['itemIdInclusion'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        limitQuantity: json_['limitQuantity'] as core.String?,
        limitValue: json_.containsKey('limitValue')
            ? Price.fromJson(
                json_['limitValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        longTitle: json_['longTitle'] as core.String?,
        minimumPurchaseAmount: json_.containsKey('minimumPurchaseAmount')
            ? Price.fromJson(
                json_['minimumPurchaseAmount']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        minimumPurchaseQuantity:
            json_['minimumPurchaseQuantity'] as core.String?,
        moneyOffAmount: json_.containsKey('moneyOffAmount')
            ? Price.fromJson(
                json_['moneyOffAmount'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        offerType: json_['offerType'] as core.String?,
        percentOff: json_['percentOff'] as core.String?,
        productApplicability: json_['productApplicability'] as core.String?,
        productTypeExclusion: (json_['productTypeExclusion'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        productTypeInclusion: (json_['productTypeInclusion'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        promotionDestinations: (json_['promotionDestinations'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        promotionDisplayTimePeriod:
            json_.containsKey('promotionDisplayTimePeriod')
            ? Interval.fromJson(
                json_['promotionDisplayTimePeriod']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        promotionEffectiveTimePeriod:
            json_.containsKey('promotionEffectiveTimePeriod')
            ? Interval.fromJson(
                json_['promotionEffectiveTimePeriod']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        promotionUrl: json_['promotionUrl'] as core.String?,
        storeApplicability: json_['storeApplicability'] as core.String?,
        storeCodesExclusion: (json_['storeCodesExclusion'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        storeCodesInclusion: (json_['storeCodesInclusion'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final brandExclusion = this.brandExclusion;
    final brandInclusion = this.brandInclusion;
    final couponValueType = this.couponValueType;
    final freeGiftDescription = this.freeGiftDescription;
    final freeGiftItemId = this.freeGiftItemId;
    final freeGiftValue = this.freeGiftValue;
    final genericRedemptionCode = this.genericRedemptionCode;
    final getThisQuantityDiscounted = this.getThisQuantityDiscounted;
    final itemGroupIdExclusion = this.itemGroupIdExclusion;
    final itemGroupIdInclusion = this.itemGroupIdInclusion;
    final itemIdExclusion = this.itemIdExclusion;
    final itemIdInclusion = this.itemIdInclusion;
    final limitQuantity = this.limitQuantity;
    final limitValue = this.limitValue;
    final longTitle = this.longTitle;
    final minimumPurchaseAmount = this.minimumPurchaseAmount;
    final minimumPurchaseQuantity = this.minimumPurchaseQuantity;
    final moneyOffAmount = this.moneyOffAmount;
    final offerType = this.offerType;
    final percentOff = this.percentOff;
    final productApplicability = this.productApplicability;
    final productTypeExclusion = this.productTypeExclusion;
    final productTypeInclusion = this.productTypeInclusion;
    final promotionDestinations = this.promotionDestinations;
    final promotionDisplayTimePeriod = this.promotionDisplayTimePeriod;
    final promotionEffectiveTimePeriod = this.promotionEffectiveTimePeriod;
    final promotionUrl = this.promotionUrl;
    final storeApplicability = this.storeApplicability;
    final storeCodesExclusion = this.storeCodesExclusion;
    final storeCodesInclusion = this.storeCodesInclusion;
    return {
      'brandExclusion': ?brandExclusion,
      'brandInclusion': ?brandInclusion,
      'couponValueType': ?couponValueType,
      'freeGiftDescription': ?freeGiftDescription,
      'freeGiftItemId': ?freeGiftItemId,
      'freeGiftValue': ?freeGiftValue,
      'genericRedemptionCode': ?genericRedemptionCode,
      'getThisQuantityDiscounted': ?getThisQuantityDiscounted,
      'itemGroupIdExclusion': ?itemGroupIdExclusion,
      'itemGroupIdInclusion': ?itemGroupIdInclusion,
      'itemIdExclusion': ?itemIdExclusion,
      'itemIdInclusion': ?itemIdInclusion,
      'limitQuantity': ?limitQuantity,
      'limitValue': ?limitValue,
      'longTitle': ?longTitle,
      'minimumPurchaseAmount': ?minimumPurchaseAmount,
      'minimumPurchaseQuantity': ?minimumPurchaseQuantity,
      'moneyOffAmount': ?moneyOffAmount,
      'offerType': ?offerType,
      'percentOff': ?percentOff,
      'productApplicability': ?productApplicability,
      'productTypeExclusion': ?productTypeExclusion,
      'productTypeInclusion': ?productTypeInclusion,
      'promotionDestinations': ?promotionDestinations,
      'promotionDisplayTimePeriod': ?promotionDisplayTimePeriod,
      'promotionEffectiveTimePeriod': ?promotionEffectiveTimePeriod,
      'promotionUrl': ?promotionUrl,
      'storeApplicability': ?storeApplicability,
      'storeCodesExclusion': ?storeCodesExclusion,
      'storeCodesInclusion': ?storeCodesInclusion,
    };
  }
}

/// A message that represents custom attributes.
///
/// Exactly one of `value` or `group_values` must not be empty.
class CustomAttribute {
  /// Subattributes within this attribute group.
  ///
  /// If `group_values` is not empty, `value` must be empty.
  core.List<CustomAttribute>? groupValues;

  /// The name of the attribute.
  core.String? name;

  /// The value of the attribute.
  ///
  /// If `value` is not empty, `group_values` must be empty.
  core.String? value;

  CustomAttribute({this.groupValues, this.name, this.value});

  CustomAttribute.fromJson(core.Map json_)
    : this(
        groupValues: (json_['groupValues'] as core.List?)
            ?.map(
              (value) => CustomAttribute.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        name: json_['name'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final groupValues = this.groupValues;
    final name = this.name;
    final value = this.value;
    return {'groupValues': ?groupValues, 'name': ?name, 'value': ?value};
  }
}

/// The status for the specified destination.
class DestinationStatus {
  /// The name of the promotion destination.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "REPORTING_CONTEXT_ENUM_UNSPECIFIED" : Not specified.
  /// - "SHOPPING_ADS" :
  /// [Shopping ads](https://support.google.com/merchants/answer/6149970).
  /// - "DISCOVERY_ADS" : Deprecated: Use `DEMAND_GEN_ADS` instead.
  /// [Discovery and Demand Gen ads](https://support.google.com/merchants/answer/13389785).
  /// - "DEMAND_GEN_ADS" :
  /// [Demand Gen ads](https://support.google.com/merchants/answer/13389785).
  /// - "DEMAND_GEN_ADS_DISCOVER_SURFACE" :
  /// [Demand Gen ads on Discover surface](https://support.google.com/merchants/answer/13389785).
  /// - "VIDEO_ADS" :
  /// [Video ads](https://support.google.com/google-ads/answer/6340491).
  /// - "DISPLAY_ADS" :
  /// [Display ads](https://support.google.com/merchants/answer/6069387).
  /// - "LOCAL_INVENTORY_ADS" :
  /// [Local inventory ads](https://support.google.com/merchants/answer/3271956).
  /// - "VEHICLE_INVENTORY_ADS" :
  /// [Vehicle inventory ads](https://support.google.com/merchants/answer/11544533).
  /// - "FREE_LISTINGS" :
  /// [Free product listings](https://support.google.com/merchants/answer/9199328).
  /// - "FREE_LOCAL_LISTINGS" :
  /// [Free local product listings](https://support.google.com/merchants/answer/9825611).
  /// - "FREE_LOCAL_VEHICLE_LISTINGS" :
  /// [Free local vehicle listings](https://support.google.com/merchants/answer/11544533).
  /// - "YOUTUBE_AFFILIATE" :
  /// [Youtube Affiliate](https://support.google.com/youtube/answer/13376398).
  /// - "YOUTUBE_SHOPPING" :
  /// [YouTube Shopping](https://support.google.com/merchants/answer/13478370).
  /// - "CLOUD_RETAIL" :
  /// [Cloud retail](https://cloud.google.com/solutions/retail).
  /// - "LOCAL_CLOUD_RETAIL" :
  /// [Local cloud retail](https://cloud.google.com/solutions/retail).
  /// - "PRODUCT_REVIEWS" :
  /// [Product Reviews](https://support.google.com/merchants/answer/14620732).
  /// - "MERCHANT_REVIEWS" :
  /// [Merchant Reviews](https://developers.google.com/merchant-review-feeds).
  /// - "YOUTUBE_CHECKOUT" : YouTube Checkout .
  core.String? reportingContext;

  /// The status for the specified destination.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unknown promotion state.
  /// - "IN_REVIEW" : The promotion is under review.
  /// - "REJECTED" : The promotion is disapproved.
  /// - "LIVE" : The promotion is approved and active.
  /// - "STOPPED" : The promotion is stopped by merchant.
  /// - "EXPIRED" : The promotion is no longer active.
  /// - "PENDING" : The promotion is not stopped, and all reviews are approved,
  /// but the active date is in the future.
  core.String? status;

  DestinationStatus({this.reportingContext, this.status});

  DestinationStatus.fromJson(core.Map json_)
    : this(
        reportingContext: json_['reportingContext'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final reportingContext = this.reportingContext;
    final status = this.status;
    return {'reportingContext': ?reportingContext, 'status': ?status};
  }
}

/// Request message for the `InsertPromotion` method.
class InsertPromotionRequest {
  /// The data source of the
  /// [promotion](https://support.google.com/merchants/answer/6396268?sjid=5155774230887277618-NC)
  /// Format: `accounts/{account}/dataSources/{datasource}`.
  ///
  /// Required.
  core.String? dataSource;

  /// The promotion to insert.
  ///
  /// Required.
  Promotion? promotion;

  InsertPromotionRequest({this.dataSource, this.promotion});

  InsertPromotionRequest.fromJson(core.Map json_)
    : this(
        dataSource: json_['dataSource'] as core.String?,
        promotion: json_.containsKey('promotion')
            ? Promotion.fromJson(
                json_['promotion'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataSource = this.dataSource;
    final promotion = this.promotion;
    return {'dataSource': ?dataSource, 'promotion': ?promotion};
  }
}

/// Represents a time interval, encoded as a Timestamp start (inclusive) and a
/// Timestamp end (exclusive).
///
/// The start must be less than or equal to the end. When the start equals the
/// end, the interval is empty (matches no time). When both start and end are
/// unspecified, the interval matches any time.
typedef Interval = $Interval;

/// The issue associated with the promotion.
class ItemLevelIssue {
  /// List of country codes (ISO 3166-1 alpha-2) where issue applies to the
  /// offer.
  ///
  /// Output only.
  core.List<core.String>? applicableCountries;

  /// The attribute's name, if the issue is caused by a single attribute.
  ///
  /// Output only.
  core.String? attribute;

  /// The error code of the issue.
  ///
  /// Output only.
  core.String? code;

  /// A short issue description in English.
  ///
  /// Output only.
  core.String? description;

  /// A detailed issue description in English.
  ///
  /// Output only.
  core.String? detail;

  /// The URL of a web page to help with resolving this issue.
  ///
  /// Output only.
  core.String? documentation;

  /// The destination the issue applies to.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "REPORTING_CONTEXT_ENUM_UNSPECIFIED" : Not specified.
  /// - "SHOPPING_ADS" :
  /// [Shopping ads](https://support.google.com/merchants/answer/6149970).
  /// - "DISCOVERY_ADS" : Deprecated: Use `DEMAND_GEN_ADS` instead.
  /// [Discovery and Demand Gen ads](https://support.google.com/merchants/answer/13389785).
  /// - "DEMAND_GEN_ADS" :
  /// [Demand Gen ads](https://support.google.com/merchants/answer/13389785).
  /// - "DEMAND_GEN_ADS_DISCOVER_SURFACE" :
  /// [Demand Gen ads on Discover surface](https://support.google.com/merchants/answer/13389785).
  /// - "VIDEO_ADS" :
  /// [Video ads](https://support.google.com/google-ads/answer/6340491).
  /// - "DISPLAY_ADS" :
  /// [Display ads](https://support.google.com/merchants/answer/6069387).
  /// - "LOCAL_INVENTORY_ADS" :
  /// [Local inventory ads](https://support.google.com/merchants/answer/3271956).
  /// - "VEHICLE_INVENTORY_ADS" :
  /// [Vehicle inventory ads](https://support.google.com/merchants/answer/11544533).
  /// - "FREE_LISTINGS" :
  /// [Free product listings](https://support.google.com/merchants/answer/9199328).
  /// - "FREE_LOCAL_LISTINGS" :
  /// [Free local product listings](https://support.google.com/merchants/answer/9825611).
  /// - "FREE_LOCAL_VEHICLE_LISTINGS" :
  /// [Free local vehicle listings](https://support.google.com/merchants/answer/11544533).
  /// - "YOUTUBE_AFFILIATE" :
  /// [Youtube Affiliate](https://support.google.com/youtube/answer/13376398).
  /// - "YOUTUBE_SHOPPING" :
  /// [YouTube Shopping](https://support.google.com/merchants/answer/13478370).
  /// - "CLOUD_RETAIL" :
  /// [Cloud retail](https://cloud.google.com/solutions/retail).
  /// - "LOCAL_CLOUD_RETAIL" :
  /// [Local cloud retail](https://cloud.google.com/solutions/retail).
  /// - "PRODUCT_REVIEWS" :
  /// [Product Reviews](https://support.google.com/merchants/answer/14620732).
  /// - "MERCHANT_REVIEWS" :
  /// [Merchant Reviews](https://developers.google.com/merchant-review-feeds).
  /// - "YOUTUBE_CHECKOUT" : YouTube Checkout .
  core.String? reportingContext;

  /// Whether the issue can be resolved by the merchant.
  ///
  /// Output only.
  core.String? resolution;

  /// How this issue affects serving of the promotion.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Not specified.
  /// - "NOT_IMPACTED" : This issue represents a warning and does not have a
  /// direct affect on the promotion.
  /// - "DEMOTED" : The promotion is demoted and most likely have limited
  /// performance in search results
  /// - "DISAPPROVED" : Issue disapproves the promotion.
  core.String? severity;

  ItemLevelIssue({
    this.applicableCountries,
    this.attribute,
    this.code,
    this.description,
    this.detail,
    this.documentation,
    this.reportingContext,
    this.resolution,
    this.severity,
  });

  ItemLevelIssue.fromJson(core.Map json_)
    : this(
        applicableCountries: (json_['applicableCountries'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        attribute: json_['attribute'] as core.String?,
        code: json_['code'] as core.String?,
        description: json_['description'] as core.String?,
        detail: json_['detail'] as core.String?,
        documentation: json_['documentation'] as core.String?,
        reportingContext: json_['reportingContext'] as core.String?,
        resolution: json_['resolution'] as core.String?,
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final applicableCountries = this.applicableCountries;
    final attribute = this.attribute;
    final code = this.code;
    final description = this.description;
    final detail = this.detail;
    final documentation = this.documentation;
    final reportingContext = this.reportingContext;
    final resolution = this.resolution;
    final severity = this.severity;
    return {
      'applicableCountries': ?applicableCountries,
      'attribute': ?attribute,
      'code': ?code,
      'description': ?description,
      'detail': ?detail,
      'documentation': ?documentation,
      'reportingContext': ?reportingContext,
      'resolution': ?resolution,
      'severity': ?severity,
    };
  }
}

/// Response message for the `ListPromotions` method.
class ListPromotionsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The processed promotions from the specified account.
  core.List<Promotion>? promotions;

  ListPromotionsResponse({this.nextPageToken, this.promotions});

  ListPromotionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        promotions: (json_['promotions'] as core.List?)
            ?.map(
              (value) => Promotion.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final promotions = this.promotions;
    return {'nextPageToken': ?nextPageToken, 'promotions': ?promotions};
  }
}

/// The price represented as a number and currency.
typedef Price = $Price;

/// Represents a promotion.
///
/// See the following articles for more details. Required promotion input
/// attributes to pass data validation checks are primarily defined below: *
/// [Promotions data specification](https://support.google.com/merchants/answer/2906014)
/// *
/// [Local promotions data specification](https://support.google.com/merchants/answer/10146130)
/// After inserting, updating a promotion input, it may take several minutes
/// before the final promotion can be retrieved.
class Promotion {
  /// A list of promotion attributes.
  ///
  /// Optional.
  Attributes? attributes;

  /// The two-letter \[ISO 639-1\](http://en.wikipedia.org/wiki/ISO_639-1)
  /// language code for the promotion.
  ///
  /// Promotions is only for
  /// [selected languages](https://support.google.com/merchants/answer/4588281?ref_topic=6396150&sjid=18314938579342094533-NC#option3&zippy=).
  ///
  /// Required.
  core.String? contentLanguage;

  /// A list of custom (merchant-provided) attributes.
  ///
  /// It can also be used for submitting any attribute of the data specification
  /// in its generic form (for example, `{ "name": "size type", "value":
  /// "regular" }`). This is useful for submitting attributes not explicitly
  /// exposed by the API.
  ///
  /// Optional.
  core.List<CustomAttribute>? customAttributes;

  /// The primary data source of the promotion.
  ///
  /// Output only.
  core.String? dataSource;

  /// Identifier.
  ///
  /// The name of the promotion. Format:
  /// `accounts/{account}/promotions/{promotion}`
  core.String? name;

  /// The user provided promotion ID to uniquely identify the promotion.
  ///
  /// Follow
  /// [minimum requirements](https://support.google.com/merchants/answer/7050148?ref_topic=7322920&sjid=871860036916537104-NC#minimum_requirements)
  /// to prevent promotion disapprovals.
  ///
  /// Required.
  core.String? promotionId;

  /// The
  /// [status of a promotion](https://support.google.com/merchants/answer/3398326?ref_topic=7322924&sjid=5155774230887277618-NC),
  /// data validation issues, that is, information about a promotion computed
  /// asynchronously.
  ///
  /// Output only.
  PromotionStatus? promotionStatus;

  /// [Redemption channel](https://support.google.com/merchants/answer/13837674?ref_topic=13773355&sjid=17642868584668136159-NC)
  /// for the promotion.
  ///
  /// At least one channel is required.
  ///
  /// Required.
  core.List<core.String>? redemptionChannel;

  /// The target country used as part of the unique identifier.
  ///
  /// Represented as a
  /// [CLDR territory code](https://github.com/unicode-org/cldr/blob/latest/common/main/en.xml).
  /// Promotions are only available in selected countries,
  /// [Free Listings and Shopping ads](https://support.google.com/merchants/answer/4588460)
  /// [Local Inventory ads](https://support.google.com/merchants/answer/10146326)
  ///
  /// Required.
  core.String? targetCountry;

  /// Represents the existing version (freshness) of the promotion, which can be
  /// used to preserve the right order when multiple updates are done at the
  /// same time.
  ///
  /// If set, the insertion is prevented when version number is lower than the
  /// current version number of the existing promotion. Re-insertion (for
  /// example, promotion refresh after 30 days) can be performed with the
  /// current `version_number`. If the operation is prevented, the aborted
  /// exception will be thrown.
  ///
  /// Optional.
  core.String? versionNumber;

  Promotion({
    this.attributes,
    this.contentLanguage,
    this.customAttributes,
    this.dataSource,
    this.name,
    this.promotionId,
    this.promotionStatus,
    this.redemptionChannel,
    this.targetCountry,
    this.versionNumber,
  });

  Promotion.fromJson(core.Map json_)
    : this(
        attributes: json_.containsKey('attributes')
            ? Attributes.fromJson(
                json_['attributes'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        contentLanguage: json_['contentLanguage'] as core.String?,
        customAttributes: (json_['customAttributes'] as core.List?)
            ?.map(
              (value) => CustomAttribute.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        dataSource: json_['dataSource'] as core.String?,
        name: json_['name'] as core.String?,
        promotionId: json_['promotionId'] as core.String?,
        promotionStatus: json_.containsKey('promotionStatus')
            ? PromotionStatus.fromJson(
                json_['promotionStatus'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        redemptionChannel: (json_['redemptionChannel'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        targetCountry: json_['targetCountry'] as core.String?,
        versionNumber: json_['versionNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attributes = this.attributes;
    final contentLanguage = this.contentLanguage;
    final customAttributes = this.customAttributes;
    final dataSource = this.dataSource;
    final name = this.name;
    final promotionId = this.promotionId;
    final promotionStatus = this.promotionStatus;
    final redemptionChannel = this.redemptionChannel;
    final targetCountry = this.targetCountry;
    final versionNumber = this.versionNumber;
    return {
      'attributes': ?attributes,
      'contentLanguage': ?contentLanguage,
      'customAttributes': ?customAttributes,
      'dataSource': ?dataSource,
      'name': ?name,
      'promotionId': ?promotionId,
      'promotionStatus': ?promotionStatus,
      'redemptionChannel': ?redemptionChannel,
      'targetCountry': ?targetCountry,
      'versionNumber': ?versionNumber,
    };
  }
}

/// The status of the promotion.
class PromotionStatus {
  /// Date on which the promotion has been created in
  /// [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format: Date, time, and
  /// offset, for example `2020-01-02T09:00:00+01:00` or `2020-01-02T09:00:00Z`
  ///
  /// Output only.
  core.String? creationDate;

  /// The intended destinations for the promotion.
  ///
  /// Output only.
  core.List<DestinationStatus>? destinationStatuses;

  /// A list of issues associated with the promotion.
  ///
  /// Output only.
  core.List<ItemLevelIssue>? itemLevelIssues;

  /// Date on which the promotion status has been last updated in
  /// [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format: Date, time, and
  /// offset, for example `2020-01-02T09:00:00+01:00` or `2020-01-02T09:00:00Z`
  ///
  /// Output only.
  core.String? lastUpdateDate;

  PromotionStatus({
    this.creationDate,
    this.destinationStatuses,
    this.itemLevelIssues,
    this.lastUpdateDate,
  });

  PromotionStatus.fromJson(core.Map json_)
    : this(
        creationDate: json_['creationDate'] as core.String?,
        destinationStatuses: (json_['destinationStatuses'] as core.List?)
            ?.map(
              (value) => DestinationStatus.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        itemLevelIssues: (json_['itemLevelIssues'] as core.List?)
            ?.map(
              (value) => ItemLevelIssue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        lastUpdateDate: json_['lastUpdateDate'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final creationDate = this.creationDate;
    final destinationStatuses = this.destinationStatuses;
    final itemLevelIssues = this.itemLevelIssues;
    final lastUpdateDate = this.lastUpdateDate;
    return {
      'creationDate': ?creationDate,
      'destinationStatuses': ?destinationStatuses,
      'itemLevelIssues': ?itemLevelIssues,
      'lastUpdateDate': ?lastUpdateDate,
    };
  }
}
