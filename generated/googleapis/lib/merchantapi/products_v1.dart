// Copyright 2025 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

/// Merchant API - products_v1
///
/// Programmatically manage your Merchant Center Accounts.
///
/// For more information, see <https://developers.google.com/merchant/api>
///
/// Create an instance of [MerchantApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsProductInputsResource]
///   - [AccountsProductsResource]
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

  AccountsProductInputsResource get productInputs =>
      AccountsProductInputsResource(_requester);
  AccountsProductsResource get products => AccountsProductsResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;
}

class AccountsProductInputsResource {
  final commons.ApiRequester _requester;

  AccountsProductInputsResource(commons.ApiRequester client)
    : _requester = client;

  /// Deletes a product input from your Merchant Center account.
  ///
  /// After inserting, updating, or deleting a product input, it may take
  /// several minutes before the processed product can be retrieved.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the product input to delete. Format:
  /// `accounts/{account}/productInputs/{productInput}` The {productInput}
  /// segment is a unique identifier for the product. This identifier must be
  /// unique within a merchant account and generally follows the structure:
  /// `content_language~feed_label~offer_id`. Example: `en~US~sku123` For legacy
  /// local products, the structure is:
  /// `local~content_language~feed_label~offer_id`. Example:
  /// `local~en~US~sku123` The format of the {productInput} segment in the URL
  /// is automatically detected by the server, supporting two options: 1.
  /// **Encoded Format**: The `{productInput}` segment is an unpadded base64url
  /// encoded string (RFC 4648 Section 5). The decoded string must result in the
  /// `content_language~feed_label~offer_id` structure. This encoding MUST be
  /// used if any part of the product identifier (like `offer_id`) contains
  /// characters such as `/`, `%`, or `~`. * Example: To represent the product
  /// ID `en~US~sku/123`, the `{productInput}` segment must be the unpadded
  /// base64url encoding of this string, which is `ZW5-VVN-c2t1LzEyMw`. The full
  /// resource name for the product would be
  /// `accounts/123/productInputs/ZW5-VVN-c2t1LzEyMw`. 2. **Plain Format**: The
  /// `{productInput}` segment is the tilde-separated string
  /// `content_language~feed_label~offer_id`. This format is suitable only when
  /// `content_language`, `feed_label`, and `offer_id` do not contain
  /// URL-problematic characters like `/`, `%`, or `~`. We recommend using the
  /// **Encoded Format** for all product IDs to ensure correct parsing,
  /// especially those containing special characters. The presence of tilde
  /// (`~`) characters in the `{productInput}` segment is used to differentiate
  /// between the two formats.
  /// Value must have pattern `^accounts/\[^/\]+/productInputs/\[^/\]+$`.
  ///
  /// [dataSource] - Required. The primary or supplemental data source from
  /// which the product input should be deleted. Format:
  /// `accounts/{account}/dataSources/{datasource}`. For example,
  /// `accounts/123456/dataSources/104628`.
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
  async.Future<Empty> delete(
    core.String name, {
    core.String? dataSource,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'dataSource': ?dataSource == null ? null : [dataSource],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'products/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// \[Uploads a product input to your Merchant Center
  /// account\](/merchant/api/guides/products/add-manage#add_a_product).
  ///
  /// You must have a products \[data
  /// source\](/merchant/api/guides/data-sources/api-sources#create-primary-data-source)
  /// to be able to insert a product. The unique identifier of the data source
  /// is passed as a query parameter in the request URL. If a product input with
  /// the same contentLanguage, offerId, and dataSource already exists, then the
  /// product input inserted by this method replaces that entry. After
  /// inserting, updating, or deleting a product input, it may take several
  /// minutes before the processed product can be retrieved.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account where this product will be inserted.
  /// Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [dataSource] - Required. The primary or supplemental product data source
  /// name. If the product already exists and data source provided is different,
  /// then the product will be moved to a new data source. For more information,
  /// see \[Create a primary data
  /// source\](/merchant/api/guides/data-sources/api-sources#create-primary-data-source).
  /// Only API data sources are supported. Format:
  /// `accounts/{account}/dataSources/{datasource}`. For example,
  /// `accounts/123456/dataSources/104628`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductInput].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductInput> insert(
    ProductInput request,
    core.String parent, {
    core.String? dataSource,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'dataSource': ?dataSource == null ? null : [dataSource],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'products/v1/' +
        core.Uri.encodeFull('$parent') +
        '/productInputs:insert';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ProductInput.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the existing product input in your Merchant Center account.
  ///
  /// The name of the product input to update is taken from the `name` field
  /// within the `ProductInput` resource. After inserting, updating, or deleting
  /// a product input, it may take several minutes before the processed product
  /// can be retrieved.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of the product. Format:
  /// `accounts/{account}/productInputs/{productinput}` The {productinput}
  /// segment is a unique identifier for the product. This identifier must be
  /// unique within a merchant account and generally follows the structure:
  /// `content_language~feed_label~offer_id`. Example: `en~US~sku123` For legacy
  /// local products, the structure is:
  /// `local~content_language~feed_label~offer_id`. Example:
  /// `local~en~US~sku123` The format of the {productinput} segment in the URL
  /// is automatically detected by the server, supporting two options: 1.
  /// **Encoded Format**: The `{productinput}` segment is an unpadded base64url
  /// encoded string (RFC 4648 Section 5). The decoded string must result in the
  /// `content_language~feed_label~offer_id` structure. This encoding MUST be
  /// used if any part of the product identifier (like `offer_id`) contains
  /// characters such as `/`, `%`, or `~`. * Example: To represent the product
  /// ID `en~US~sku/123`, the `{productinput}` segment must be the unpadded
  /// base64url encoding of this string, which is `ZW5-VVN-c2t1LzEyMw`. The full
  /// resource name for the product would be
  /// `accounts/123/productInputs/ZW5-VVN-c2t1LzEyMw`. 2. **Plain Format**: The
  /// `{productinput}` segment is the tilde-separated string
  /// `content_language~feed_label~offer_id`. This format is suitable only when
  /// `content_language`, `feed_label`, and `offer_id` do not contain
  /// URL-problematic characters like `/`, `%`, or `~`. We recommend using the
  /// **Encoded Format** for all product IDs to ensure correct parsing,
  /// especially those containing special characters. The presence of tilde
  /// (`~`) characters in the `{productinput}` segment is used to differentiate
  /// between the two formats.
  /// Value must have pattern `^accounts/\[^/\]+/productInputs/\[^/\]+$`.
  ///
  /// [dataSource] - Required. The primary or supplemental product data source
  /// where `data_source` name identifies the product input to be updated. Only
  /// API data sources are supported. Format:
  /// `accounts/{account}/dataSources/{datasource}`. For example,
  /// `accounts/123456/dataSources/104628`.
  ///
  /// [updateMask] - Optional. The list of product attributes to be updated. If
  /// the update mask is omitted, then it is treated as implied field mask
  /// equivalent to all fields that are populated (have a non-empty value).
  /// Attributes specified in the update mask without a value specified in the
  /// body will be deleted from the product. Update mask can only be specified
  /// for top level fields in attributes and custom attributes. To specify the
  /// update mask for custom attributes you need to add the `custom_attribute.`
  /// prefix. Providing special "*" value for full product replacement is not
  /// supported.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductInput].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductInput> patch(
    ProductInput request,
    core.String name, {
    core.String? dataSource,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'dataSource': ?dataSource == null ? null : [dataSource],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'products/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ProductInput.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsProductsResource {
  final commons.ApiRequester _requester;

  AccountsProductsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves the processed product from your Merchant Center account.
  ///
  /// After inserting, updating, or deleting a product input, it may take
  /// several minutes before the updated final product can be retrieved.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the product. Format:
  /// `accounts/{account}/products/{product}` The `{product}` segment is a
  /// unique identifier for the product. This identifier must be unique within a
  /// merchant account and generally follows the structure:
  /// `content_language~feed_label~offer_id`. Example: `en~US~sku123` For legacy
  /// local products, the structure is:
  /// `local~content_language~feed_label~offer_id`. Example:
  /// `local~en~US~sku123` The format of the `{product}` segment in the URL is
  /// automatically detected by the server, supporting two options: 1. **Encoded
  /// Format**: The `{product}` segment is an unpadded base64url encoded string
  /// (RFC 4648 Section 5). The decoded string must result in the
  /// `content_language~feed_label~offer_id` structure. This encoding MUST be
  /// used if any part of the product identifier (like `offer_id`) contains
  /// characters such as `/`, `%`, or `~`. * Example: To represent the product
  /// ID `en~US~sku/123`, the `{product}` segment must be the unpadded base64url
  /// encoding of this string, which is `ZW5-VVN-c2t1LzEyMw`. The full resource
  /// name for the product would be `accounts/123/products/ZW5-VVN-c2t1LzEyMw`.
  /// 2. **Plain Format**: The `{product}` segment is the tilde-separated string
  /// `content_language~feed_label~offer_id`. This format is suitable only when
  /// `content_language`, `feed_label`, and `offer_id` do not contain
  /// URL-problematic characters like `/`, `%`, or `~`. We recommend using the
  /// **Encoded Format** for all product IDs to ensure correct parsing,
  /// especially those containing special characters. The presence of tilde
  /// (`~`) characters in the `{product}` segment is used to differentiate
  /// between the two formats. Note: For calls to the v1beta version, the plain
  /// format is `channel~content_language~feed_label~offer_id`, for example:
  /// `accounts/123/products/online~en~US~sku123`.
  /// Value must have pattern `^accounts/\[^/\]+/products/\[^/\]+$`.
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
  async.Future<Product> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'products/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Product.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the processed products in your Merchant Center account.
  ///
  /// The response might contain fewer items than specified by `pageSize`. Rely
  /// on `pageToken` to determine if there are more items to be requested. After
  /// inserting, updating, or deleting a product input, it may take several
  /// minutes before the updated processed product can be retrieved.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account to list processed products for. Format:
  /// `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of products to return. The service may
  /// return fewer than this value. The maximum value is 1000; values above 1000
  /// will be coerced to 1000. If unspecified, the default page size of 25
  /// products will be returned.
  ///
  /// [pageToken] - A page token, received from a previous `ListProducts` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListProducts` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProductsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProductsResponse> list(
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

    final url_ = 'products/v1/' + core.Uri.encodeFull('$parent') + '/products';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListProductsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Information regarding Automated Discounts.
class AutomatedDiscounts {
  /// The current sale price for products with a price optimized using Google
  /// Automated Discounts (GAD).
  ///
  /// Absent if the information about the GAD_price of the product is not
  /// available.
  Price? gadPrice;

  /// The price prior to the application of the first price reduction.
  ///
  /// Absent if the information about the prior price of the product is not
  /// available.
  Price? priorPrice;

  /// The price prior to the application of consecutive price reductions.
  ///
  /// Absent if the information about the prior price of the product is not
  /// available.
  Price? priorPriceProgressive;

  AutomatedDiscounts({
    this.gadPrice,
    this.priorPrice,
    this.priorPriceProgressive,
  });

  AutomatedDiscounts.fromJson(core.Map json_)
    : this(
        gadPrice: json_.containsKey('gadPrice')
            ? Price.fromJson(
                json_['gadPrice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        priorPrice: json_.containsKey('priorPrice')
            ? Price.fromJson(
                json_['priorPrice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        priorPriceProgressive: json_.containsKey('priorPriceProgressive')
            ? Price.fromJson(
                json_['priorPriceProgressive']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final gadPrice = this.gadPrice;
    final priorPrice = this.priorPrice;
    final priorPriceProgressive = this.priorPriceProgressive;
    return {
      'gadPrice': ?gadPrice,
      'priorPrice': ?priorPrice,
      'priorPriceProgressive': ?priorPriceProgressive,
    };
  }
}

/// Carrier-based shipping configuration.
///
/// Allows for setting shipping speed or shipping cost based on a carrier's
/// provided info.
class CarrierShipping {
  /// Selected carrier to calculate the shipping price from.
  ///
  /// Select a carrier from the
  /// [available carriers list](https://support.google.com/merchants/answer/15449142#Supported),
  /// for example `AUSTRALIA_POST_REGULAR`. Price will be calculated by this
  /// selected carrier, the location expressed in originPostalCode, along with
  /// the user location to determine the accurate shipping price. Carrier is
  /// represented by a carrier service name or a carrier service ID. Cannot be
  /// set together with flatPrice.
  /// Possible string values are:
  /// - "CARRIER_PRICE_OPTION_UNSPECIFIED" : Carrier price option is
  /// unspecified.
  /// - "AUSTRALIA_POST_REGULAR" : Australia Post Regular shipping service.
  /// - "AUSTRALIA_POST_EXPRESS" : Australia Post Express shipping service.
  /// - "AUSTRALIA_POST_REGULAR_S" : Australia Post Regular Small shipping
  /// service.
  /// - "AUSTRALIA_POST_REGULAR_M" : Australia Post Regular Medium shipping
  /// service.
  /// - "AUSTRALIA_POST_REGULAR_L" : Australia Post Regular Large shipping
  /// service.
  /// - "AUSTRALIA_POST_REGULAR_XL" : Australia Post Regular XL shipping
  /// service.
  /// - "AUSTRALIA_POST_EXPRESS_S" : Australia Post Express Small shipping
  /// service.
  /// - "AUSTRALIA_POST_EXPRESS_M" : Australia Post Express Medium shipping
  /// service.
  /// - "AUSTRALIA_POST_EXPRESS_L" : Australia Post Express Large shipping
  /// service.
  /// - "AUSTRALIA_POST_EXPRESS_XL" : Australia Post Express XL shipping
  /// service.
  /// - "TNT_ROAD_EXPRESS" : TNT Road Express shipping service.
  /// - "TNT_OVERNIGHT_EXPRESS" : TNT Overnight Express shipping service.
  /// - "TOLL_ROAD_DELIVERY" : Toll Road Delivery shipping service.
  /// - "TOLL_OVERNIGHT_PRIORITY" : Toll Overnight Priority shipping service.
  /// - "DHL_PAKET" : DHL Paket shipping service.
  /// - "DHL_PACKCHEN" : DHL Packchen shipping service.
  /// - "DPD_EXPRESS_12" : DPD Express 12 shipping service.
  /// - "DPD_EXPRESS" : DPD Express shipping service.
  /// - "DPD_CLASSIC_PARCEL" : DPD Classic Parcel shipping service.
  /// - "HERMES_PACKCHEN" : Hermes Packchen shipping service.
  /// - "HERMES_PAKETKLASSE_S" : Hermes Paketklasse S shipping service.
  /// - "HERMES_PAKETKLASSE_M" : Hermes Paketklasse M shipping service.
  /// - "HERMES_PAKETKLASSE_L" : Hermes Paketklasse L shipping service.
  /// - "UPS_EXPRESS" : UPS Express shipping service.
  /// - "UPS_EXPRESS_SAVER" : UPS Express Saver shipping service.
  /// - "UPS_EXPRESS_STANDARD" : UPS Express Standard shipping service.
  /// - "DHL_EXPRESS" : DHL Express shipping service.
  /// - "DHL_EXPRESS_12" : DHL Express 12 shipping service.
  /// - "DPD_NEXT_DAY" : DPD Next Day shipping service.
  /// - "DPD_STANDARD_NEXT_DAY" : DPD Standard Next Day shipping service.
  /// - "DPD_STANDARD_TWO_DAY" : DPD Standard Two Day shipping service.
  /// - "RMG_1ST_CLASS_SMALL" : RMG 1st Class Small shipping service.
  /// - "RMG_1ST_CLASS_MEDIUM" : RMG 1st Class Medium shipping service.
  /// - "RMG_2ND_CLASS_SMALL" : RMG 2nd Class Small shipping service.
  /// - "RMG_2ND_CLASS_MEDIUM" : RMG 2nd Class Medium shipping service.
  /// - "TNT_EXPRESS" : TNT Express shipping service.
  /// - "TNT_EXPRESS_10" : TNT Express 10 shipping service.
  /// - "TNT_EXPRESS_12" : TNT Express 12 shipping service.
  /// - "YODEL_B2C_48HR" : Yodel B2C 48HR shipping service.
  /// - "YODEL_B2C_72HR" : Yodel B2C 72HR shipping service.
  /// - "YODEL_B2C_PACKET" : Yodel B2C Packet shipping service.
  /// - "FEDEX_GROUND" : FedEx Ground shipping service.
  /// - "FEDEX_HOME_DELIVERY" : FedEx Home Delivery shipping service.
  /// - "FEDEX_EXPRESS_SAVER" : FedEx Express Saver shipping service.
  /// - "FEDEX_FIRST_OVERNIGHT" : FedEx First Overnight shipping service.
  /// - "FEDEX_PRIORITY_OVERNIGHT" : FedEx Priority Overnight shipping service.
  /// - "FEDEX_STANDARD_OVERNIGHT" : FedEx Standard Overnight shipping service.
  /// - "FEDEX_2DAY" : FedEx 2Day shipping service.
  /// - "UPS_STANDARD" : UPS Standard shipping service.
  /// - "UPS_2ND_DAY_AIR" : UPS 2nd Day Air shipping service.
  /// - "UPS_2ND_DAY_AM" : UPS 2nd Day AM shipping service.
  /// - "UPS_3_DAY_SELECT" : UPS 3 Day Select shipping service.
  /// - "UPS_GROUND" : UPS Ground shipping service.
  /// - "UPS_NEXT_DAY_AIR" : UPS Next Day Air shipping service.
  /// - "UPS_NEXT_DAY_AIR_EARLY_AM" : UPS Next Day Air Early AM shipping
  /// service.
  /// - "UPS_NEXT_DAY_AIR_SAVER" : UPS Next Day Air Saver shipping service.
  /// - "USPS_PRIORITY_MAIL_EXPRESS" : USPS Priority Mail Express shipping
  /// service.
  /// - "USPS_MEDIA_MAIL" : USPS Media Mail shipping service.
  /// - "USPS_GROUND_ADVANTAGE_RETAIL" : USPS Ground Advantage Retail shipping
  /// service.
  /// - "USPS_PRIORITY_MAIL" : USPS Priority Mail shipping service.
  /// - "USPS_GROUND_ADVANTAGE_COMMERCIAL" : USPS Ground Advantage Commercial
  /// shipping service.
  core.String? carrierPrice;

  /// A flat adjustment on the carrier price.
  ///
  /// Can be either positive or negative. Cannot be zero. Requires
  /// `carrier_price` to be present. Cannot be set together with flatPrice and
  /// carrierPricePercentageAdjustment.
  Price? carrierPriceFlatAdjustment;

  /// A percentual adjustment on the carrier price.
  ///
  /// Can be either positive or negative. Cannot be zero. Requires
  /// `carrier_price` to be present. Cannot be set together with flatPrice and
  /// carrierPriceFlatAdjustment.
  core.double? carrierPricePercentageAdjustment;

  /// Selected carrier to calculate the shipping speed from.
  ///
  /// Select a carrier from the
  /// [available carriers list](https://support.google.com/merchants/answer/15449142#Supported),
  /// for example `AUSTRALIA_POST_REGULAR`. Speed will be calculated by this
  /// selected carrier, the location expressed in originPostalCode, along with
  /// the user location to determine the accurate delivery speed. Carrier is
  /// represented by a carrier service name or a carrier service ID. Cannot be
  /// set together with fixedMaxTransitTime or fixedMinTransitTime.
  /// Possible string values are:
  /// - "CARRIER_TRANSIT_TIME_OPTION_UNSPECIFIED" : Carrier transit time option
  /// is unspecified.
  /// - "DHL_PAKET" : DHL Paket shipping service.
  /// - "DHL_PACKCHEN" : DHL Packchen shipping service.
  /// - "DHL_EXPRESSEASY" : DHL Express Easy shipping service.
  /// - "DPD_EXPRESS" : DPD Express shipping service.
  /// - "DPD_CLASSIC_PARCEL" : DPD Classic Parcel shipping service.
  /// - "HERMES_HAUSTUR" : Hermes Haustur shipping service.
  /// - "HERMES_PAKETSHOP" : Hermes Paketshop shipping service.
  /// - "GLS_BUSINESS" : GLS Business shipping service.
  /// - "GLS_EXPRESS" : GLS Express shipping service.
  /// - "GLS_PRIVATE" : GLS Private shipping service.
  /// - "COLISSIMO_DOMICILE" : Colissimo Domicile shipping service.
  /// - "DHL_EXPRESS_12AM" : DHL Express 12 AM shipping service.
  /// - "DHL_EXPRESS_9AM" : DHL Express 9 AM shipping service.
  /// - "GEODIS_EXPRESS" : GEODIS Express shipping service.
  /// - "GEODIS_PACK_30" : GEODIS Pack 30 shipping service.
  /// - "GEODIS_SAME_DAY" : GEODIS Same Day shipping service.
  /// - "GEODIS_TOP_24" : GEODIS Top 24 shipping service.
  /// - "TNT_ESSENTIEL_24H" : TNT Essentiel 24H shipping service.
  /// - "TNT_ESSENTIEL_FLEXIBILITE" : TNT Essentiel Flexibilite shipping
  /// service.
  /// - "FEDEX_GROUND" : FedEx Ground shipping service.
  /// - "FEDEX_HOME_DELIVERY" : FedEx Home Delivery shipping service.
  /// - "FEDEX_EXPRESS_SAVER" : FedEx Express Saver shipping service.
  /// - "FEDEX_FIRST_OVERNIGHT" : FedEx First Overnight shipping service.
  /// - "FEDEX_PRIORITY_OVERNIGHT" : FedEx Priority Overnight shipping service.
  /// - "FEDEX_STANDARD_OVERNIGHT" : FedEx Standard Overnight shipping service.
  /// - "FEDEX_2DAY" : FedEx 2Day shipping service.
  /// - "UPS_2ND_DAY_AIR" : UPS 2nd Day Air shipping service.
  /// - "UPS_2ND_DAY_AM" : UPS 2nd Day AM shipping service.
  /// - "UPS_3_DAY_SELECT" : UPS 3 Day Select shipping service.
  /// - "UPS_GROUND" : UPS Ground shipping service.
  /// - "UPS_NEXT_DAY_AIR" : UPS Next Day Air shipping service.
  /// - "UPS_NEXT_DAY_AIR_EARLY_AM" : UPS Next Day Air Early AM shipping
  /// service.
  /// - "UPS_NEXT_DAY_AIR_SAVER" : UPS Next Day Air Saver shipping service.
  /// - "USPS_PRIORITY_MAIL_EXPRESS" : USPS Priority Mail Express shipping
  /// service.
  /// - "USPS_MEDIA_MAIL" : USPS Media Mail shipping service.
  /// - "USPS_GROUND_ADVANTAGE_RETAIL" : USPS Ground Advantage Retail shipping
  /// service.
  /// - "USPS_PRIORITY_MAIL" : USPS Priority Mail shipping service.
  /// - "USPS_GROUND_ADVANTAGE_COMMERCIAL" : USPS Ground Advantage Commercial
  /// shipping service.
  /// - "USPS_FIRST_CLASS_MAIL" : USPS First Class Mail shipping service.
  core.String? carrierTransitTime;

  /// The
  /// [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
  /// of the country to which an item will ship.
  core.String? country;

  /// Maximum transit time (inclusive) between when the order has shipped and
  /// when it is delivered in business days.
  ///
  /// 0 means that the order is delivered on the same day as it ships. Needs to
  /// be provided together with maxHandlingTime. Cannot be set if
  /// carrierTransitTime is present.
  core.String? fixedMaxTransitTime;

  /// Minimum transit time (inclusive) between when the order has shipped and
  /// when it is delivered in business days.
  ///
  /// 0 means that the order is delivered on the same day as it ships.
  /// fixedMinTransitTime can only be set if fixedMaxTransitTime is set. Cannot
  /// be set if carrierTransitTime is present.
  core.String? fixedMinTransitTime;

  /// Fixed shipping price, represented as a number with currency.
  ///
  /// Cannot be set together with carrierPrice or its adjustments
  /// (carrierPriceFlatAdjustment, carrierPricePercentageAdjustment).
  Price? flatPrice;

  /// Maximum handling time (inclusive) between when the order is received and
  /// shipped in business days.
  ///
  /// 0 means that the order is shipped on the same day as it is received if it
  /// happens before the cut-off time. Both maxHandlingTime and
  /// fixedMaxTransitTime or carrierTransitTime are required if providing
  /// shipping speeds.
  core.String? maxHandlingTime;

  /// Minimum handling time (inclusive) between when the order is received and
  /// shipped in business days.
  ///
  /// 0 means that the order is shipped on the same day as it is received if it
  /// happens before the cut-off time. minHandlingTime can only be set if
  /// maxHandlingTime is also set.
  core.String? minHandlingTime;

  /// The source location postal code from which this offer ships.
  ///
  /// Represented only by a full-length postal code.
  core.String? originPostalCode;

  /// The postal code range that the shipping rate applies to, represented by a
  /// postal code (eg.
  ///
  /// `94043`), a postal code prefix followed by a * wildcard (eg. `94*`), a
  /// range between two postal codes (eg. `94043-98033`) or two postal code
  /// prefixes of equal length (eg. `94*-98*`).
  core.String? postalCode;

  /// The geographic region to which a shipping rate applies.
  ///
  /// See [region](https://support.google.com/merchants/answer/6324484) for more
  /// information.
  core.String? region;

  CarrierShipping({
    this.carrierPrice,
    this.carrierPriceFlatAdjustment,
    this.carrierPricePercentageAdjustment,
    this.carrierTransitTime,
    this.country,
    this.fixedMaxTransitTime,
    this.fixedMinTransitTime,
    this.flatPrice,
    this.maxHandlingTime,
    this.minHandlingTime,
    this.originPostalCode,
    this.postalCode,
    this.region,
  });

  CarrierShipping.fromJson(core.Map json_)
    : this(
        carrierPrice: json_['carrierPrice'] as core.String?,
        carrierPriceFlatAdjustment:
            json_.containsKey('carrierPriceFlatAdjustment')
            ? Price.fromJson(
                json_['carrierPriceFlatAdjustment']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        carrierPricePercentageAdjustment:
            (json_['carrierPricePercentageAdjustment'] as core.num?)
                ?.toDouble(),
        carrierTransitTime: json_['carrierTransitTime'] as core.String?,
        country: json_['country'] as core.String?,
        fixedMaxTransitTime: json_['fixedMaxTransitTime'] as core.String?,
        fixedMinTransitTime: json_['fixedMinTransitTime'] as core.String?,
        flatPrice: json_.containsKey('flatPrice')
            ? Price.fromJson(
                json_['flatPrice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        maxHandlingTime: json_['maxHandlingTime'] as core.String?,
        minHandlingTime: json_['minHandlingTime'] as core.String?,
        originPostalCode: json_['originPostalCode'] as core.String?,
        postalCode: json_['postalCode'] as core.String?,
        region: json_['region'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final carrierPrice = this.carrierPrice;
    final carrierPriceFlatAdjustment = this.carrierPriceFlatAdjustment;
    final carrierPricePercentageAdjustment =
        this.carrierPricePercentageAdjustment;
    final carrierTransitTime = this.carrierTransitTime;
    final country = this.country;
    final fixedMaxTransitTime = this.fixedMaxTransitTime;
    final fixedMinTransitTime = this.fixedMinTransitTime;
    final flatPrice = this.flatPrice;
    final maxHandlingTime = this.maxHandlingTime;
    final minHandlingTime = this.minHandlingTime;
    final originPostalCode = this.originPostalCode;
    final postalCode = this.postalCode;
    final region = this.region;
    return {
      'carrierPrice': ?carrierPrice,
      'carrierPriceFlatAdjustment': ?carrierPriceFlatAdjustment,
      'carrierPricePercentageAdjustment': ?carrierPricePercentageAdjustment,
      'carrierTransitTime': ?carrierTransitTime,
      'country': ?country,
      'fixedMaxTransitTime': ?fixedMaxTransitTime,
      'fixedMinTransitTime': ?fixedMinTransitTime,
      'flatPrice': ?flatPrice,
      'maxHandlingTime': ?maxHandlingTime,
      'minHandlingTime': ?minHandlingTime,
      'originPostalCode': ?originPostalCode,
      'postalCode': ?postalCode,
      'region': ?region,
    };
  }
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
  /// For example for a TV product 1.2345. Maximum repeatedness of this value is
  /// 400. Values are stored in an arbitrary but consistent order.
  core.List<core.double>? floatValue;

  /// Integer values of the given property.
  ///
  /// For example, 1080 for a TV product's Screen Resolution. Maximum
  /// repeatedness of this value is 400. Values are stored in an arbitrary but
  /// consistent order.
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
  /// repeatedness of this value is 400. Values are stored in an arbitrary but
  /// consistent order. Maximum string size is 256 characters.
  core.List<core.String>? textValue;

  /// Unit of the given property.
  ///
  /// For example, "Pixels" for a TV product. Maximum string size is 256B.
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
        floatValue: (json_['floatValue'] as core.List?)
            ?.map((value) => (value as core.num).toDouble())
            .toList(),
        intValue: (json_['intValue'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        maxValue: (json_['maxValue'] as core.num?)?.toDouble(),
        minValue: (json_['minValue'] as core.num?)?.toDouble(),
        propertyName: json_['propertyName'] as core.String?,
        textValue: (json_['textValue'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        unitCode: json_['unitCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final boolValue = this.boolValue;
    final floatValue = this.floatValue;
    final intValue = this.intValue;
    final maxValue = this.maxValue;
    final minValue = this.minValue;
    final propertyName = this.propertyName;
    final textValue = this.textValue;
    final unitCode = this.unitCode;
    return {
      'boolValue': ?boolValue,
      'floatValue': ?floatValue,
      'intValue': ?intValue,
      'maxValue': ?maxValue,
      'minValue': ?minValue,
      'propertyName': ?propertyName,
      'textValue': ?textValue,
      'unitCode': ?unitCode,
    };
  }
}

/// The co2 emission of the vehicle.
class Co2Emissions {
  /// The unit of the co2 emission.
  /// Possible string values are:
  /// - "UNIT_UNSPECIFIED" : Unspecified unit.
  /// - "GPERKM" : Grams per kilometer.
  core.String? unit;

  /// The co2 emission value.
  core.String? value;

  Co2Emissions({this.unit, this.value});

  Co2Emissions.fromJson(core.Map json_)
    : this(
        unit: json_['unit'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final unit = this.unit;
    final value = this.value;
    return {'unit': ?unit, 'value': ?value};
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

/// The destination status of the product status.
///
/// Equivalent to `StatusPerReportingContext` in Reports API.
class DestinationStatus {
  /// List of country codes (ISO 3166-1 alpha-2) where the offer is approved.
  core.List<core.String>? approvedCountries;

  /// List of country codes (ISO 3166-1 alpha-2) where the offer is disapproved.
  core.List<core.String>? disapprovedCountries;

  /// List of country codes (ISO 3166-1 alpha-2) where the offer is pending
  /// approval.
  core.List<core.String>? pendingCountries;

  /// The name of the reporting context.
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
  /// - "FREE_LISTINGS_UCP_CHECKOUT" :
  /// [Free product listings on UCP checkout](https://developers.google.com/merchant/ucp).
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

  DestinationStatus({
    this.approvedCountries,
    this.disapprovedCountries,
    this.pendingCountries,
    this.reportingContext,
  });

  DestinationStatus.fromJson(core.Map json_)
    : this(
        approvedCountries: (json_['approvedCountries'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        disapprovedCountries: (json_['disapprovedCountries'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        pendingCountries: (json_['pendingCountries'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        reportingContext: json_['reportingContext'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final approvedCountries = this.approvedCountries;
    final disapprovedCountries = this.disapprovedCountries;
    final pendingCountries = this.pendingCountries;
    final reportingContext = this.reportingContext;
    return {
      'approvedCountries': ?approvedCountries,
      'disapprovedCountries': ?disapprovedCountries,
      'pendingCountries': ?pendingCountries,
      'reportingContext': ?reportingContext,
    };
  }
}

/// The display address of the property.
class DisplayAddress {
  /// The city such as Seattle, New York, etc.
  core.String? city;

  /// The postal code, such as 94043.
  core.String? postalCode;

  /// The region(state), such as WA, OH, etc.
  core.String? region;

  /// The street name.
  core.String? streetName;

  /// The street number.
  core.String? streetNumber;

  DisplayAddress({
    this.city,
    this.postalCode,
    this.region,
    this.streetName,
    this.streetNumber,
  });

  DisplayAddress.fromJson(core.Map json_)
    : this(
        city: json_['city'] as core.String?,
        postalCode: json_['postalCode'] as core.String?,
        region: json_['region'] as core.String?,
        streetName: json_['streetName'] as core.String?,
        streetNumber: json_['streetNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final city = this.city;
    final postalCode = this.postalCode;
    final region = this.region;
    final streetName = this.streetName;
    final streetNumber = this.streetNumber;
    return {
      'city': ?city,
      'postalCode': ?postalCode,
      'region': ?region,
      'streetName': ?streetName,
      'streetNumber': ?streetNumber,
    };
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The energy consumption of the vehicle.
class EnergyConsumption {
  /// The unit of the energy consumption.
  /// Possible string values are:
  /// - "UNIT_UNSPECIFIED" : Unspecified unit.
  /// - "KWHPER100KM" : Kilowatt hours per 100 kilometers.
  core.String? unit;

  /// The energy consumption value.
  core.double? value;

  EnergyConsumption({this.unit, this.value});

  EnergyConsumption.fromJson(core.Map json_)
    : this(
        unit: json_['unit'] as core.String?,
        value: (json_['value'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final unit = this.unit;
    final value = this.value;
    return {'unit': ?unit, 'value': ?value};
  }
}

/// Conditions to be met for a product to have free shipping.
class FreeShippingThreshold {
  /// The
  /// [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
  /// of the country to which an item will ship.
  core.String? country;

  /// The minimum product price for the shipping cost to become free.
  ///
  /// Represented as a number.
  Price? priceThreshold;

  FreeShippingThreshold({this.country, this.priceThreshold});

  FreeShippingThreshold.fromJson(core.Map json_)
    : this(
        country: json_['country'] as core.String?,
        priceThreshold: json_.containsKey('priceThreshold')
            ? Price.fromJson(
                json_['priceThreshold'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final country = this.country;
    final priceThreshold = this.priceThreshold;
    return {'country': ?country, 'priceThreshold': ?priceThreshold};
  }
}

/// The fuel consumption of the vehicle.
class FuelConsumption {
  /// The unit of the fuel consumption.
  /// Possible string values are:
  /// - "UNIT_UNSPECIFIED" : Unspecified unit.
  /// - "LPER100KM" : Liter per 100 kilometers.
  /// - "KGPER100KM" : Kilograms per 100 kilometers.
  core.String? unit;

  /// The fuel consumption value.
  core.double? value;

  FuelConsumption({this.unit, this.value});

  FuelConsumption.fromJson(core.Map json_)
    : this(
        unit: json_['unit'] as core.String?,
        value: (json_['value'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final unit = this.unit;
    final value = this.value;
    return {'unit': ?unit, 'value': ?value};
  }
}

/// Configuration for offer or offer-country level shipping handling cutoff
/// time.
class HandlingCutoffTime {
  /// The
  /// [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
  /// of the country to which the handling cutoff time applies.
  core.String? country;

  /// The handling cutoff time until which an order has to be placed to be
  /// processed in the same day.
  ///
  /// This is a string in format of HHMM (e.g. `1530`) for 3:30 PM. If not
  /// configured, the cutoff time will be defaulted to 8AM PST.
  core.String? cutoffTime;

  /// [Timezone identifier](https://developers.google.com/adwords/api/docs/appendix/codes-formats#timezone-ids)
  /// For example 'Europe/Zurich'.
  ///
  /// If not set, the shipping destination timezone will be used.
  core.String? cutoffTimezone;

  /// This field only applies to same-day delivery.
  ///
  /// If true, prevents next-day delivery from being shown for this offer after
  /// the cutoff time. This field only applies to same-day delivery offers, for
  /// merchants who want to explicitly disable it.
  core.bool? disableDeliveryAfterCutoff;

  HandlingCutoffTime({
    this.country,
    this.cutoffTime,
    this.cutoffTimezone,
    this.disableDeliveryAfterCutoff,
  });

  HandlingCutoffTime.fromJson(core.Map json_)
    : this(
        country: json_['country'] as core.String?,
        cutoffTime: json_['cutoffTime'] as core.String?,
        cutoffTimezone: json_['cutoffTimezone'] as core.String?,
        disableDeliveryAfterCutoff:
            json_['disableDeliveryAfterCutoff'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final country = this.country;
    final cutoffTime = this.cutoffTime;
    final cutoffTimezone = this.cutoffTimezone;
    final disableDeliveryAfterCutoff = this.disableDeliveryAfterCutoff;
    return {
      'country': ?country,
      'cutoffTime': ?cutoffTime,
      'cutoffTimezone': ?cutoffTimezone,
      'disableDeliveryAfterCutoff': ?disableDeliveryAfterCutoff,
    };
  }
}

/// Represents a time interval, encoded as a Timestamp start (inclusive) and a
/// Timestamp end (exclusive).
///
/// The start must be less than or equal to the end. When the start equals the
/// end, the interval is empty (matches no time). When both start and end are
/// unspecified, the interval matches any time.
typedef Interval = $Interval;

/// The ItemLevelIssue of the product status.
class ItemLevelIssue {
  /// List of country codes (ISO 3166-1 alpha-2) where issue applies to the
  /// offer.
  core.List<core.String>? applicableCountries;

  /// The attribute's name, if the issue is caused by a single attribute.
  core.String? attribute;

  /// The error code of the issue.
  core.String? code;

  /// A short issue description in English.
  core.String? description;

  /// A detailed issue description in English.
  core.String? detail;

  /// The URL of a web page to help with resolving this issue.
  core.String? documentation;

  /// The reporting context the issue applies to.
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
  /// - "FREE_LISTINGS_UCP_CHECKOUT" :
  /// [Free product listings on UCP checkout](https://developers.google.com/merchant/ucp).
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

  /// Whether the issue can be resolved by the business.
  core.String? resolution;

  /// How this issue affects serving of the offer.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Not specified.
  /// - "NOT_IMPACTED" : This issue represents a warning and does not have a
  /// direct affect on the product.
  /// - "DEMOTED" : The product is demoted and most likely have limited
  /// performance in search results
  /// - "DISAPPROVED" : Issue disapproves the product.
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

/// The lease term of the property.
class LeaseTerm {
  /// The duration unit of the lease term.
  /// Possible string values are:
  /// - "DURATION_UNIT_UNSPECIFIED" : Unspecified duration unit.
  /// - "MONTHS" : Month.
  /// - "WEEKS" : Week.
  core.String? durationUnit;

  /// The duration value of the lease term.
  core.String? durationValue;

  /// The type of lease term.
  /// Possible string values are:
  /// - "LEASE_TERM_TYPE_UNSPECIFIED" : Unspecified lease term type.
  /// - "FIXED_TERM" : Fixed term.
  core.String? type;

  LeaseTerm({this.durationUnit, this.durationValue, this.type});

  LeaseTerm.fromJson(core.Map json_)
    : this(
        durationUnit: json_['durationUnit'] as core.String?,
        durationValue: json_['durationValue'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final durationUnit = this.durationUnit;
    final durationValue = this.durationValue;
    final type = this.type;
    return {
      'durationUnit': ?durationUnit,
      'durationValue': ?durationValue,
      'type': ?type,
    };
  }
}

/// Response message for the ListProducts method.
class ListProductsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The processed products from the specified account.
  ///
  /// These are your processed products after applying rules and supplemental
  /// data sources.
  core.List<Product>? products;

  ListProductsResponse({this.nextPageToken, this.products});

  ListProductsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        products: (json_['products'] as core.List?)
            ?.map(
              (value) => Product.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final products = this.products;
    return {'nextPageToken': ?nextPageToken, 'products': ?products};
  }
}

/// A message that represents loyalty points.
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

  LoyaltyPoints({this.name, this.pointsValue, this.ratio});

  LoyaltyPoints.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        pointsValue: json_['pointsValue'] as core.String?,
        ratio: (json_['ratio'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final pointsValue = this.pointsValue;
    final ratio = this.ratio;
    return {'name': ?name, 'pointsValue': ?pointsValue, 'ratio': ?ratio};
  }
}

/// A message that represents loyalty program.
class LoyaltyProgram {
  /// The cashback that can be used for future purchases.
  Price? cashbackForFutureUse;

  /// The amount of loyalty points earned on a purchase.
  core.String? loyaltyPoints;

  /// A date range during which the item is eligible for member price.
  ///
  /// If not specified, the member price is always applicable. The date range is
  /// represented by a pair of ISO 8601 dates separated by a space, comma, or
  /// slash.
  Interval? memberPriceEffectiveDate;

  /// The price for members of the given tier, that is, the instant discount
  /// price.
  ///
  /// Must be smaller or equal to the regular price.
  Price? price;

  /// The label of the loyalty program.
  ///
  /// This is an internal label that uniquely identifies the relationship
  /// between a business entity and a loyalty program entity. The label must be
  /// provided so that the system can associate the assets below (for example,
  /// price and points) with a business. The corresponding program must be
  /// linked to the Merchant Center account.
  core.String? programLabel;

  /// The label of the shipping benefit.
  ///
  /// If the field has value, this offer has loyalty shipping benefit. If the
  /// field value isn't provided, the item is not eligible for loyalty shipping
  /// for the given loyalty tier.
  core.String? shippingLabel;

  /// The label of the tier within the loyalty program.
  ///
  /// Must match one of the labels within the program.
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
        cashbackForFutureUse: json_.containsKey('cashbackForFutureUse')
            ? Price.fromJson(
                json_['cashbackForFutureUse']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        loyaltyPoints: json_['loyaltyPoints'] as core.String?,
        memberPriceEffectiveDate: json_.containsKey('memberPriceEffectiveDate')
            ? Interval.fromJson(
                json_['memberPriceEffectiveDate']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        price: json_.containsKey('price')
            ? Price.fromJson(
                json_['price'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        programLabel: json_['programLabel'] as core.String?,
        shippingLabel: json_['shippingLabel'] as core.String?,
        tierLabel: json_['tierLabel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cashbackForFutureUse = this.cashbackForFutureUse;
    final loyaltyPoints = this.loyaltyPoints;
    final memberPriceEffectiveDate = this.memberPriceEffectiveDate;
    final price = this.price;
    final programLabel = this.programLabel;
    final shippingLabel = this.shippingLabel;
    final tierLabel = this.tierLabel;
    return {
      'cashbackForFutureUse': ?cashbackForFutureUse,
      'loyaltyPoints': ?loyaltyPoints,
      'memberPriceEffectiveDate': ?memberPriceEffectiveDate,
      'price': ?price,
      'programLabel': ?programLabel,
      'shippingLabel': ?shippingLabel,
      'tierLabel': ?tierLabel,
    };
  }
}

/// The mileage of the vehicle.
class Mileage {
  /// The unit of the mileage.
  /// Possible string values are:
  /// - "UNIT_UNSPECIFIED" : Unspecified unit.
  /// - "MILES" : Miles.
  /// - "KM" : Kilometers.
  core.String? unit;

  /// The distance value.
  core.String? value;

  Mileage({this.unit, this.value});

  Mileage.fromJson(core.Map json_)
    : this(
        unit: json_['unit'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final unit = this.unit;
    final value = this.value;
    return {'unit': ?unit, 'value': ?value};
  }
}

/// The pet policy of the property.
class PetPolicy {
  /// The pet types allowed.
  core.List<core.String>? petTypes;

  /// Whether pets are allowed.
  core.bool? petsAllowed;

  PetPolicy({this.petTypes, this.petsAllowed});

  PetPolicy.fromJson(core.Map json_)
    : this(
        petTypes: (json_['petTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        petsAllowed: json_['petsAllowed'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final petTypes = this.petTypes;
    final petsAllowed = this.petsAllowed;
    return {'petTypes': ?petTypes, 'petsAllowed': ?petsAllowed};
  }
}

/// The pickup cost of the item.
class PickupCost {
  /// The flat rate pickup cost of the item.
  ///
  /// Required.
  Price? flatRate;

  /// The price threshold above which pickup is free of charge.
  ///
  /// Optional.
  Price? freeThreshold;

  PickupCost({this.flatRate, this.freeThreshold});

  PickupCost.fromJson(core.Map json_)
    : this(
        flatRate: json_.containsKey('flatRate')
            ? Price.fromJson(
                json_['flatRate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        freeThreshold: json_.containsKey('freeThreshold')
            ? Price.fromJson(
                json_['freeThreshold'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final flatRate = this.flatRate;
    final freeThreshold = this.freeThreshold;
    return {'flatRate': ?flatRate, 'freeThreshold': ?freeThreshold};
  }
}

/// The price represented as a number and currency.
typedef Price = $Price;

/// The processed product, built from multiple product inputs after applying
/// rules and supplemental data sources.
///
/// This processed product matches what is shown in your Merchant Center
/// account. Each product is built from exactly one primary data source product
/// input, and multiple supplemental data source inputs. After inserting,
/// updating, or deleting a product input, it may take several minutes before
/// the updated processed product can be retrieved. All fields in the processed
/// product and its sub-messages match the name of their corresponding attribute
/// in the
/// [Product data specification](https://support.google.com/merchants/answer/7052112)
/// with some exceptions.
class Product {
  /// Determines whether the product is
  /// [archived](https://support.google.com/merchants/answer/11909930).
  ///
  /// To archive or restore your product, visit Merchant Center products page.
  /// Learn also more about
  /// [offer visibility](https://support.google.com/merchants/answer/12488713).
  ///
  /// Output only.
  core.bool? archived;

  /// The automated discounts information for the product.
  ///
  /// Output only.
  AutomatedDiscounts? automatedDiscounts;

  /// The **unpadded base64url encoded name** of the product.
  ///
  /// Format: `accounts/{account}/products/{product}` where the last section
  /// `product` is the unpadded base64url encoding of the
  /// `content_language~feed_label~offer_id` name. Example:
  /// `accounts/123/products/ZW5-VVN-c2t1LzEyMw` for the decoded product name
  /// `accounts/123/products/en~US~sku/123`. This field can be used directly as
  /// input to the API methods that require the product name to be encoded if it
  /// contains special characters, for example
  /// \[`GetProduct`\](https://developers.google.com/merchant/api/reference/rest/products_v1/accounts.products/get).
  ///
  /// Output only.
  core.String? base64EncodedName;

  /// The two-letter \[ISO 639-1\](http://en.wikipedia.org/wiki/ISO_639-1)
  /// language code for the product.
  ///
  /// Output only.
  core.String? contentLanguage;

  /// A list of custom (merchant-provided) attributes.
  ///
  /// It can also be used to submit any attribute of the data specification in
  /// its generic form (for example, `{ "name": "size type", "value": "regular"
  /// }`). This is useful for submitting attributes not explicitly exposed by
  /// the API, such as additional attributes used for Buy on Google.
  ///
  /// Output only.
  core.List<CustomAttribute>? customAttributes;

  /// The primary data source of the product.
  ///
  /// Output only.
  core.String? dataSource;

  /// The feed label lets you categorize and identify your products.
  ///
  /// The maximum allowed characters is 20 and the supported characters
  /// are`A-Z`, `0-9`, hyphen and underscore. The feed label must not include
  /// any spaces. For more information, see \[Using feed
  /// labels\](//support.google.com/merchants/answer/14994087)
  ///
  /// Output only.
  core.String? feedLabel;

  /// Determines whether the product is **only** targeting local destinations
  /// and whether the product name should be distinguished with a `local~`
  /// prefix.
  ///
  /// For example, `accounts/123/products/local~en~US~sku123`.
  ///
  /// Output only.
  core.bool? legacyLocal;

  /// The name of the product.
  ///
  /// Format: `accounts/{account}/products/{product}` where the last section
  /// `product` consists of: `content_language~feed_label~offer_id` example for
  /// product name is `accounts/123/products/en~US~sku123`. A legacy local
  /// product name would be `accounts/123/products/local~en~US~sku123`. Note:
  /// For calls to the v1beta version, the `product` section consists of:
  /// `channel~content_language~feed_label~offer_id`, for example:
  /// `accounts/123/products/online~en~US~sku123`.
  core.String? name;

  /// Your unique identifier for the product.
  ///
  /// This is the same for the product input and processed product. Leading and
  /// trailing whitespaces are stripped and multiple whitespaces are replaced by
  /// a single whitespace upon submission. See the
  /// [product data specification](https://support.google.com/merchants/answer/188494#id)
  /// for details.
  ///
  /// Output only.
  core.String? offerId;

  /// A list of strongly-typed product attributes.
  ///
  /// Output only.
  ProductAttributes? productAttributes;

  /// The status of a product, data validation issues, that is, information
  /// about a product computed asynchronously.
  ///
  /// Output only.
  ProductStatus? productStatus;

  /// Represents the existing version (freshness) of the product, which can be
  /// used to preserve the right order when multiple updates are done at the
  /// same time.
  ///
  /// If set, the insertion is prevented when version number is lower than the
  /// current version number of the existing product. Re-insertion (for example,
  /// product refresh after 30 days) can be performed with the current
  /// `version_number`. Only supported for insertions into primary data sources.
  /// If the operation is prevented, the aborted exception will be thrown.
  ///
  /// Output only.
  core.String? versionNumber;

  Product({
    this.archived,
    this.automatedDiscounts,
    this.base64EncodedName,
    this.contentLanguage,
    this.customAttributes,
    this.dataSource,
    this.feedLabel,
    this.legacyLocal,
    this.name,
    this.offerId,
    this.productAttributes,
    this.productStatus,
    this.versionNumber,
  });

  Product.fromJson(core.Map json_)
    : this(
        archived: json_['archived'] as core.bool?,
        automatedDiscounts: json_.containsKey('automatedDiscounts')
            ? AutomatedDiscounts.fromJson(
                json_['automatedDiscounts']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        base64EncodedName: json_['base64EncodedName'] as core.String?,
        contentLanguage: json_['contentLanguage'] as core.String?,
        customAttributes: (json_['customAttributes'] as core.List?)
            ?.map(
              (value) => CustomAttribute.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        dataSource: json_['dataSource'] as core.String?,
        feedLabel: json_['feedLabel'] as core.String?,
        legacyLocal: json_['legacyLocal'] as core.bool?,
        name: json_['name'] as core.String?,
        offerId: json_['offerId'] as core.String?,
        productAttributes: json_.containsKey('productAttributes')
            ? ProductAttributes.fromJson(
                json_['productAttributes']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        productStatus: json_.containsKey('productStatus')
            ? ProductStatus.fromJson(
                json_['productStatus'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        versionNumber: json_['versionNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final archived = this.archived;
    final automatedDiscounts = this.automatedDiscounts;
    final base64EncodedName = this.base64EncodedName;
    final contentLanguage = this.contentLanguage;
    final customAttributes = this.customAttributes;
    final dataSource = this.dataSource;
    final feedLabel = this.feedLabel;
    final legacyLocal = this.legacyLocal;
    final name = this.name;
    final offerId = this.offerId;
    final productAttributes = this.productAttributes;
    final productStatus = this.productStatus;
    final versionNumber = this.versionNumber;
    return {
      'archived': ?archived,
      'automatedDiscounts': ?automatedDiscounts,
      'base64EncodedName': ?base64EncodedName,
      'contentLanguage': ?contentLanguage,
      'customAttributes': ?customAttributes,
      'dataSource': ?dataSource,
      'feedLabel': ?feedLabel,
      'legacyLocal': ?legacyLocal,
      'name': ?name,
      'offerId': ?offerId,
      'productAttributes': ?productAttributes,
      'productStatus': ?productStatus,
      'versionNumber': ?versionNumber,
    };
  }
}

/// Product attributes.
class ProductAttributes {
  /// Additional URLs of images of the item.
  core.List<core.String>? additionalImageLinks;

  /// Used to group items in an arbitrary way.
  ///
  /// Only for CPA%, discouraged otherwise. For more information, see
  /// [Display ads attribute](https://support.google.com/merchants/answer/6069387).
  core.String? adsGrouping;

  /// Similar to ads_grouping, but only works on CPC.
  core.List<core.String>? adsLabels;

  /// Allows advertisers to override the item URL when the product is shown
  /// within the context of Product ads.
  core.String? adsRedirect;

  /// Set to true if the item is targeted towards adults.
  core.bool? adult;

  /// Target [age group](https://support.google.com/merchants/answer/6324463) of
  /// the item.
  /// Possible string values are:
  /// - "AGE_GROUP_UNSPECIFIED" : Age group is not specified.
  /// - "ADULT" : Teens or older.
  /// - "KIDS" : 5-13 years old.
  /// - "TODDLER" : 1-5 years old.
  /// - "INFANT" : 3-12 months old.
  /// - "NEWBORN" : 0-3 months old.
  core.String? ageGroup;

  /// The amenity features for the property.
  core.List<core.String>? amenityFeature;

  /// A safeguard in the
  /// [automated discounts](https://support.google.com/merchants/answer/10295759)
  /// and "Dynamic Promotions"
  /// (https://support.google.com/merchants/answer/13949249) projects, ensuring
  /// that discounts on business offers do not fall below this value, thereby
  /// preserving the offer's value and profitability.
  Price? autoPricingMinPrice;

  /// [Availability](https://support.google.com/merchants/answer/6324448) status
  /// of the item.
  /// Possible string values are:
  /// - "AVAILABILITY_UNSPECIFIED" : Availability is not specified.
  /// - "IN_STOCK" : In stock.
  /// - "OUT_OF_STOCK" : Out of stock.
  /// - "PREORDER" : Pre-order.
  /// - "LIMITED_AVAILABILITY" : Limited availability.
  /// - "BACKORDER" : Backorder.
  core.String? availability;

  /// The day a pre-ordered product becomes available for delivery, in
  /// [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format.
  core.String? availabilityDate;

  /// The [body style](https://support.google.com/google-ads/answer/14157085) of
  /// the vehicle.
  /// Possible string values are:
  /// - "VEHICLE_BODY_STYLE_UNSPECIFIED" : Unspecified vehicle body style.
  /// - "ATV_SPORT" : ATV Sport.
  /// - "ATV_TOURING" : ATV Touring.
  /// - "ATV_UTILITY" : ATV Utility.
  /// - "ATV_YOUTH" : ATV Youth.
  /// - "CITY_CAR" : City car.
  /// - "CLASS_A_MOTORHOME" : Class A motorhome.
  /// - "CLASS_B_MOTORHOME" : Class B motorhome.
  /// - "CLASS_C_MOTORHOME" : Class C motorhome.
  /// - "COMPACT_SUV" : Compact SUV.
  /// - "CONVERTIBLE" : Convertible.
  /// - "COUPE" : Coupe.
  /// - "CROSSOVER" : Crossover.
  /// - "FIFTH_WHEEL" : Fifth wheel.
  /// - "FULL_SIZE_VAN" : Full size van.
  /// - "HATCHBACK" : Hatchback.
  /// - "LIMOUSINE" : Limousine.
  /// - "MINIVAN" : Minivan.
  /// - "NOTCHBACK" : Notchback.
  /// - "POP_UP_CAMPER" : Pop up camper.
  /// - "SEDAN" : Sedan.
  /// - "SIDE_BY_SIDE" : Side by side.
  /// - "STATION_WAGON" : Station wagon.
  /// - "SUV" : SUV.
  /// - "TRAVEL_TRAILER" : Travel trailer.
  /// - "TRUCK" : Truck.
  /// - "TRUCK_CAMPER" : Truck camper.
  /// - "UTE" : Ute.
  /// - "UTV_RECREATIONAL_UTILITY" : UTV Recreational utility.
  /// - "UTV_SPORT" : UTV Sport.
  /// - "UTV_UTILITY" : UTV Utility.
  /// - "UTV_YOUTH" : UTV Youth.
  core.String? bodyStyle;

  /// [Brand](https://support.google.com/merchants/answer/6324351) of the item.
  ///
  /// For example, "Google".
  core.String? brand;

  /// URL for the canonical version of your item's landing page.
  core.String? canonicalLink;

  /// Rules for carrier-based shipping.
  core.List<CarrierShipping>? carrierShipping;

  /// Product Certifications, for example for energy efficiency labeling of
  /// products recorded in the
  /// [EU EPREL](https://eprel.ec.europa.eu/screen/home) database.
  ///
  /// See the
  /// [Help Center](https://support.google.com/merchants/answer/13528839)
  /// article for more information.
  core.List<ProductCertification>? certifications;

  /// Whether the vehicle is OEM \[certified
  /// pre-owned\](https://support.google.com/google-ads/answer/14156475).
  core.bool? certifiedPreOwned;

  /// Extra fields to export to the Cloud Retail program.
  core.List<CloudExportAdditionalProperties>? cloudExportAdditionalProperties;

  /// The [co2 emission](https://support.google.com/google-ads/answer/14546146)
  /// of the vehicle.
  Co2Emissions? co2Emissions;

  /// [Color](https://support.google.com/merchants/answer/6324487) of the item.
  ///
  /// For example, "red".
  core.String? color;

  /// [Condition](https://support.google.com/merchants/answer/6324469) or state
  /// of the item.
  /// Possible string values are:
  /// - "CONDITION_UNSPECIFIED" : Default value. This value is unused.
  /// - "NEW" : Brand new, original, unopened packaging.
  /// - "USED" : Previously used, original packaging opened or missing.
  /// - "REFURBISHED" : Professionally restored to working order, comes with a
  /// warranty, may or may not have the original packaging.
  core.String? condition;

  /// Cost of goods sold.
  ///
  /// Used for gross profit reporting.
  Price? costOfGoodsSold;

  /// [Custom label 0](https://support.google.com/merchants/answer/6324473) for
  /// custom grouping of items in a Shopping campaign.
  core.String? customLabel0;

  /// [Custom label 1](https://support.google.com/merchants/answer/6324473) for
  /// custom grouping of items in a Shopping campaign.
  core.String? customLabel1;

  /// [Custom label 2](https://support.google.com/merchants/answer/6324473) for
  /// custom grouping of items in a Shopping campaign.
  core.String? customLabel2;

  /// [Custom label 3](https://support.google.com/merchants/answer/6324473) for
  /// custom grouping of items in a Shopping campaign.
  core.String? customLabel3;

  /// [Custom label 4](https://support.google.com/merchants/answer/6324473) for
  /// custom grouping of items in a Shopping campaign.
  core.String? customLabel4;

  /// The date the vehicle was first registered.
  ///
  /// Format: `YYYY-MM`. See the
  /// [Date first registered](https://support.google.com/google-ads/answer/14546138)
  /// for more information.
  core.String? dateFirstRegistered;

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

  /// The display address of the property.
  DisplayAddress? displayAddress;

  /// An identifier for an item for dynamic remarketing campaigns.
  core.String? displayAdsId;

  /// URL directly to your item's landing page for dynamic remarketing
  /// campaigns.
  core.String? displayAdsLink;

  /// Advertiser-specified recommendations.
  ///
  /// For more information, see
  /// [Display ads attribute specification](https://support.google.com/merchants/answer/6069387).
  core.List<core.String>? displayAdsSimilarIds;

  /// Title of an item for dynamic remarketing campaigns.
  core.String? displayAdsTitle;

  /// Offer margin for dynamic remarketing campaigns.
  ///
  /// For more information, see
  /// [Display ads attribute](https://support.google.com/merchants/answer/6069387).
  core.double? displayAdsValue;

  /// Contains a list of PDF
  /// [document URLs](https://support.google.com/merchants/answer/17084656) for
  /// the product.
  ///
  /// Examples are training manuals, user guides, assembly instructions, package
  /// inserts, etc. Must start with "http://" or "https://"), ASCII characters
  /// only, and RFC 3986 compliant.
  ///
  /// Optional.
  core.List<core.String>? documentLinks;

  /// The
  /// [electric range](https://support.google.com/google-ads/answer/15162232) of
  /// the vehicle in miles/kms.
  Mileage? electricRange;

  /// The
  /// [emission standard](https://support.google.com/google-ads/answer/14869021)
  /// of the vehicle.
  /// Possible string values are:
  /// - "EMISSIONS_STANDARD_UNSPECIFIED" : Unspecified emission standard.
  /// - "ZERO_EMISSIONS" : Zero emissions.
  /// - "EURO1" : Euro 1.
  /// - "EURO2" : Euro 2.
  /// - "EURO3" : Euro 3.
  /// - "EURO4" : Euro 4.
  /// - "EURO5" : Euro 5.
  /// - "EURO5B" : Euro 5b.
  /// - "EURO6" : Euro 6.
  /// - "EURO6C" : Euro 6c.
  /// - "EURO6D" : Euro 6d.
  /// - "EURO6D_TEMP" : Euro 6d-TEMP.
  /// - "EURO6E" : Euro 6e.
  core.String? emissionsStandard;

  /// The
  /// [energy consumption](https://support.google.com/google-ads/answer/14546149)
  /// of the vehicle.
  EnergyConsumption? energyConsumption;

  /// The
  /// [energy efficiency class](https://support.google.com/merchants/answer/7562785)
  /// as defined in EU directive 2010/30/EU.
  /// Possible string values are:
  /// - "ENERGY_EFFICIENCY_CLASS_UNSPECIFIED" : The energy efficiency class is
  /// unspecified.
  /// - "APPP" : A+++.
  /// - "APP" : A++.
  /// - "AP" : A+.
  /// - "A" : A.
  /// - "B" : B.
  /// - "C" : C.
  /// - "D" : D.
  /// - "E" : E.
  /// - "F" : F.
  /// - "G" : G.
  core.String? energyEfficiencyClass;

  /// The [engine](https://support.google.com/google-ads/answer/14156068) type
  /// of the vehicle.
  /// Possible string values are:
  /// - "ENGINE_TYPE_UNSPECIFIED" : Unspecified engine type.
  /// - "GASOLINE" : Gasoline.
  /// - "DIESEL" : Diesel.
  /// - "ELECTRIC" : Electric.
  /// - "HYBRID" : Hybrid.
  /// - "PLUG_IN_HYBRID" : Plug-in hybrid.
  /// - "NATURAL_GAS" : Natural gas.
  /// - "LPG" : LPG.
  /// - "METHANE" : Methane.
  /// - "OTHER" : Other.
  core.String? engine;

  /// The list of destinations to exclude for this target (corresponds to
  /// unchecked check boxes in Merchant Center).
  ///
  /// For more information, see
  /// [Excluded destination](https://support.google.com/merchants/answer/6324486).
  /// Note: We recommend setting destinations on datasources level for most use
  /// cases. Use this field within products to only setup exceptions.
  core.List<core.String>? excludedDestinations;

  /// Date on which the item should expire, as specified upon insertion, in
  /// [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format.
  ///
  /// The actual expiration date is exposed in `productstatuses` as
  /// [googleExpirationDate](https://support.google.com/merchants/answer/6324499)
  /// and might be earlier if `expirationDate` is too far in the future.
  core.String? expirationDate;

  /// Required for multi-seller accounts.
  ///
  /// Use this attribute if you're a marketplace uploading products for various
  /// sellers to your multi-seller account.
  core.String? externalSellerId;

  /// Conditions to be met for a product to have free shipping.
  core.List<FreeShippingThreshold>? freeShippingThreshold;

  /// The
  /// [fuel consumption](https://support.google.com/google-ads/answer/14543580)
  /// of the vehicle.
  FuelConsumption? fuelConsumption;

  /// The fuel consumption of the vehicle when the hybrid battery is discharged.
  ///
  /// See the
  /// [Help Center article](https://support.google.com/google-ads/answer/15162033)
  /// for more information.
  FuelConsumption? fuelConsumptionDischargedBattery;

  /// Target [gender](https://support.google.com/merchants/answer/6324479) of
  /// the item.
  /// Possible string values are:
  /// - "GENDER_UNSPECIFIED" : Gender is not specified.
  /// - "MALE" : Male.
  /// - "FEMALE" : Female.
  /// - "UNISEX" : Unisex.
  core.String? gender;

  /// Google's category of the item (see
  /// [Google product taxonomy](https://support.google.com/merchants/answer/1705911)).
  ///
  /// When querying products, this field will contain the user provided value.
  /// There is currently no way to get back the auto assigned google product
  /// categories through the API.
  core.String? googleProductCategory;

  /// Global Trade Item Numbers
  /// ([GTIN](https://support.google.com/merchants/answer/6324461)) of the item.
  ///
  /// You can provide up to 10 GTINs.
  core.List<core.String>? gtins;

  /// The handling cutoff times for shipping.
  core.List<HandlingCutoffTime>? handlingCutoffTimes;

  /// Set this value to false when the item does not have unique product
  /// identifiers appropriate to its category, such as GTIN, MPN, and brand.
  ///
  /// Defaults to true, if not provided.
  core.bool? identifierExists;

  /// URL of an image of the item.
  core.String? imageLink;

  /// The list of destinations to include for this target (corresponds to
  /// checked check boxes in Merchant Center).
  ///
  /// Default destinations are always included unless provided in
  /// `excludedDestinations`. For more information, see
  /// [Included destination](https://support.google.com/merchants/answer/7501026).
  /// Note: We recommend setting destinations on datasources level for most use
  /// cases. Use this field within products to only setup exceptions.
  core.List<core.String>? includedDestinations;

  /// Number and amount of installments to pay for an item.
  ProductInstallment? installment;

  /// Whether the item is a business-defined sub-API.
  ///
  /// A \[sub-API\](https://support.google.com/merchants/answer/6324449) is a
  /// custom grouping of different products sold by a business for a single
  /// price.
  core.bool? isBundle;

  /// Shared identifier for all variants of the same product.
  core.String? itemGroupId;

  /// Represents the
  /// [title of the product group](https://support.google.com/merchants/answer/17085146)
  /// to which this variant product belongs.
  ///
  /// This can be used along with the
  /// [item group id](https://support.google.com/merchants/answer/6324507)
  /// attribute. It lets you perform better grouping of variant products, and
  /// helps identifying common product characteristics more efficiently.
  ///
  /// Optional.
  core.String? itemGroupTitle;

  /// The latitude of the property.
  ///
  /// The value must be between -90 (inclusive) and 90 (inclusive), up to 6
  /// decimal places.
  core.double? latitude;

  /// The lease term of the property.
  LeaseTerm? leaseTerm;

  /// Additional URLs of lifestyle images of the item, used to explicitly
  /// identify images that showcase your item in a real-world context.
  ///
  /// See the
  /// [Help Center article](https://support.google.com/merchants/answer/9103186)
  /// for more information.
  core.List<core.String>? lifestyleImageLinks;

  /// URL directly linking to your item's page on your online store.
  core.String? link;

  /// [Link template](https://support.google.com/merchants/answer/13871172) for
  /// business hosted local storefront.
  core.String? linkTemplate;

  /// The longitude of the property.
  ///
  /// The value must be between -180 (inclusive) and 180 (inclusive), up to 6
  /// decimal places.
  core.double? longitude;

  /// Loyalty points that users receive after purchasing the item.
  ///
  /// Japan only.
  LoyaltyPoints? loyaltyPoints;

  /// A list of loyalty program information that is used to surface loyalty
  /// benefits (for example, better pricing, points, etc) to the user of this
  /// item.
  core.List<LoyaltyProgram>? loyaltyPrograms;

  /// The [material](https://support.google.com/merchants/answer/6324410) of
  /// which the item is made.
  ///
  /// For example, "Leather" or "Cotton".
  core.String? material;

  /// The
  /// [energy efficiency class](https://support.google.com/merchants/answer/7562785)
  /// as defined in EU directive 2010/30/EU.
  /// Possible string values are:
  /// - "ENERGY_EFFICIENCY_CLASS_UNSPECIFIED" : The energy efficiency class is
  /// unspecified.
  /// - "APPP" : A+++.
  /// - "APP" : A++.
  /// - "AP" : A+.
  /// - "A" : A.
  /// - "B" : B.
  /// - "C" : C.
  /// - "D" : D.
  /// - "E" : E.
  /// - "F" : F.
  /// - "G" : G.
  core.String? maxEnergyEfficiencyClass;

  /// Maximal product handling time (in business days).
  core.String? maxHandlingTime;

  /// Maximum retail price (MRP) of the item.
  ///
  /// Applicable to India only.
  Price? maximumRetailPrice;

  /// The number of miles/kms on the vehicle.
  ///
  /// See the [Mileage](https://support.google.com/google-ads/answer/14156166)
  /// for more information.
  Mileage? mileage;

  /// The
  /// [energy efficiency class](https://support.google.com/merchants/answer/7562785)
  /// as defined in EU directive 2010/30/EU.
  /// Possible string values are:
  /// - "ENERGY_EFFICIENCY_CLASS_UNSPECIFIED" : The energy efficiency class is
  /// unspecified.
  /// - "APPP" : A+++.
  /// - "APP" : A++.
  /// - "AP" : A+.
  /// - "A" : A.
  /// - "B" : B.
  /// - "C" : C.
  /// - "D" : D.
  /// - "E" : E.
  /// - "F" : F.
  /// - "G" : G.
  core.String? minEnergyEfficiencyClass;

  /// Minimal product handling time (in business days).
  core.String? minHandlingTime;

  /// The [minimum value](https://support.google.com/merchants/answer/16989009)
  /// in the cart before a customer can initiate checkout.
  ///
  /// Supports multiple minimum order values. Different minimum order values can
  /// be specified per country, service and surface. Maximum entries: 100.
  core.List<ProductMinimumOrderValue>? minimumOrderValues;

  /// URL for the mobile-optimized version of your item's landing page.
  core.String? mobileLink;

  /// [Link template](https://support.google.com/merchants/answer/13870216) for
  /// business hosted local storefront optimized for mobile devices.
  core.String? mobileLinkTemplate;

  /// The [Model](https://support.google.com/google-ads/answer/14154511) of the
  /// vehicle, such as `LX`, `EX`, and others.
  core.String? model;

  /// Manufacturer Part Number
  /// ([MPN](https://support.google.com/merchants/answer/6324482)) of the item.
  core.String? mpn;

  /// The number of identical products in a business-defined multipack.
  core.String? multipack;

  /// The neighborhood (locality) of the property, such as `Wallingford`,
  /// `Greenwood`, etc.
  core.String? neighborhood;

  /// The number of bathrooms in the property.
  ///
  /// The value must be greater than 0 and a multiple of 0.5.
  core.double? numberOfBathrooms;

  /// The number of bedrooms in the property.
  ///
  /// The value must be greater than or equal to 0 and a multiple of 1.0.
  core.double? numberOfBedrooms;

  /// The number of units available for a specific floor plan of the property.
  ///
  /// The value must be greater than 0.
  core.String? numberOfUnits;

  /// The item's [pattern](https://support.google.com/merchants/answer/6324483).
  ///
  /// For example, polka dots.
  core.String? pattern;

  /// Publication of this item will be temporarily
  /// [paused](https://support.google.com/merchants/answer/11909930).
  /// Possible string values are:
  /// - "PAUSE_UNSPECIFIED" : The pause is unspecified.
  /// - "ADS" : You’re currently pausing your product for all ads locations
  /// (including Shopping Ads, Display Ads, and local inventory ads).
  /// - "ALL" : You’re currently pausing your product for all Shopping locations
  /// (including Shopping Ads, Display Ads, local inventory ads, Buy on Google,
  /// and free listings).
  core.String? pause;

  /// The pet policy for the property.
  PetPolicy? petPolicy;

  /// The [pickup cost](https://support.google.com/merchants/answer/16988704)
  /// for an item when a customer buys it online and picks it up at a store.
  ///
  /// Optional.
  PickupCost? pickupCost;

  /// The [pickup](https://support.google.com/merchants/answer/14634021) option
  /// for the item.
  /// Possible string values are:
  /// - "PICKUP_METHOD_UNSPECIFIED" : Pickup method is not specified.
  /// - "NOT_SUPPORTED" : The item is not available for store pickup.
  /// - "BUY" : The entire transaction occurs online.
  /// - "RESERVE" : The item is reserved online and the transaction occurs
  /// in-store.
  /// - "SHIP_TO_STORE" : The item is purchased online and shipped to a local
  /// store for the customer to pick up.
  core.String? pickupMethod;

  /// Item store pickup timeline.
  ///
  /// For more information, see
  /// [Pickup SLA](https://support.google.com/merchants/answer/14635400).
  /// Possible string values are:
  /// - "PICKUP_SLA_UNSPECIFIED" : Pickup SLA is not specified.
  /// - "SAME_DAY" : Indicates that the product is available for pickup the same
  /// day that the order is placed, subject to cut off times.
  /// - "NEXT_DAY" : Indicates that the product is available for pickup the
  /// following day that the order is placed.
  /// - "TWO_DAY" : Indicates that the product will be shipped to a store for a
  /// customer to pick up in 2 days.
  /// - "THREE_DAY" : Indicates that the product will be shipped to a store for
  /// a customer to pick up in 3 days.
  /// - "FOUR_DAY" : Indicates that the product will be shipped to a store for a
  /// customer to pick up in 4 days
  /// - "FIVE_DAY" : Indicates that the product will be shipped to a store for a
  /// customer to pick up in 5 days.
  /// - "SIX_DAY" : Indicates that the product will be shipped to a store for a
  /// customer to pick up in 6 days.
  /// - "MULTI_WEEK" : Indicates that the product will be shipped to a store for
  /// a customer to pick up in one week or more.
  core.String? pickupSla;

  /// Indicates the
  /// [popularity](https://support.google.com/merchants/answer/17085297) of the
  /// product in a merchant's inventory.
  ///
  /// Using a scale of 0.0 (lowest) to 100.0 (highest).
  ///
  /// Optional.
  core.double? popularityRank;

  /// Price of the item.
  Price? price;

  /// Technical specification or additional product details.
  core.List<ProductDetail>? productDetails;

  /// The product fee for the property.
  core.List<ProductFee>? productFee;

  /// The height of the product in the units provided.
  ///
  /// The value must be between 0 (exclusive) and 3000 (inclusive).
  ProductDimension? productHeight;

  /// Bullet points describing the most relevant
  /// [product highlights](https://support.google.com/merchants/answer/9216100).
  core.List<core.String>? productHighlights;

  /// The length of the product in the units provided.
  ///
  /// The value must be between 0 (exclusive) and 3000 (inclusive).
  ProductDimension? productLength;

  /// Categories of the item (formatted as in
  /// [product data specification](https://support.google.com/merchants/answer/7052112#product_category)).
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

  /// The name of the property.
  core.String? propertyName;

  /// The type of property.
  /// Possible string values are:
  /// - "PROPERTY_TYPE_UNSPECIFIED" : Unspecified property type.
  /// - "APARTMENT" : Apartment.
  /// - "CONDO" : Condo.
  /// - "LOFT" : Loft.
  /// - "MULTI_FAMILY_HOME" : Multi-family home.
  /// - "PENTHOUSE" : Penthouse.
  /// - "ROOM" : Room.
  /// - "SINGLE_FAMILY_HOME" : Single-family home.
  /// - "STUDIO" : Studio.
  /// - "TOWNHOUSE" : Townhouse.
  core.String? propertyType;

  /// Contains user-, merchant-, and manufacturer-authored
  /// [questions and answers](https://support.google.com/merchants/answer/17085211)
  /// about the product.
  ///
  /// Max 30 question and answer pairs. Max 10000 characters total. Each
  /// question can have max 1000 characters. Each answer can have max 1000
  /// characters.
  ///
  /// Optional.
  core.List<QuestionAndAnswer>? questionsAndAnswers;

  /// Specifies how other
  /// [products are related](https://support.google.com/merchants/answer/17085213)
  /// to this product.
  ///
  /// Optional.
  core.List<RelatedProduct>? relatedProducts;

  /// The return label of the product, used to group products in account-level
  /// return policies.
  ///
  /// Max. 100 characters. For more information, see
  /// [Return policy label](https://support.google.com/merchants/answer/9445425).
  core.String? returnPolicyLabel;

  /// [Return rules](https://support.google.com/merchants/answer/17081382) for
  /// the product.
  ///
  /// Optional.
  core.List<Returns>? returns;

  /// Advertised sale price of the item.
  Price? salePrice;

  /// Date range during which the item is on sale, see
  /// [product data specification](https://support.google.com/merchants/answer/7052112#price_and_availability).
  Interval? salePriceEffectiveDate;

  /// The quantity of the product that is available for selling on Google.
  ///
  /// Supported only for online products.
  core.String? sellOnGoogleQuantity;

  /// Shipping rules.
  core.List<Shipping>? shipping;

  /// The business days during which orders can be handled.
  ///
  /// If not provided, Monday to Friday business days will be assumed.
  core.List<ShippingBusinessDaysConfig>? shippingHandlingBusinessDays;

  /// Height of the item for shipping.
  ShippingDimension? shippingHeight;

  /// The shipping label of the product, used to group products in account-level
  /// shipping rules.
  ///
  /// Max. 100 characters. For more information, see
  /// [Shipping label](https://support.google.com/merchants/answer/6324504).
  core.String? shippingLabel;

  /// Length of the item for shipping.
  ShippingDimension? shippingLength;

  /// The business days during which orders are in transit.
  ///
  /// If not provided, Monday to Friday business days will be assumed.
  core.List<ShippingBusinessDaysConfig>? shippingTransitBusinessDays;

  /// Weight of the item for shipping.
  ShippingWeight? shippingWeight;

  /// Width of the item for shipping.
  ShippingDimension? shippingWidth;

  /// List of country codes \[(ISO 3166-1
  /// alpha-2)\](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) to exclude
  /// the offer from Shopping Ads destination.
  ///
  /// Countries from this list are removed from countries configured in data
  /// source settings.
  core.List<core.String>? shoppingAdsExcludedCountries;

  /// The short title of the item.
  core.String? shortTitle;

  /// Size of the item.
  ///
  /// Only one value is allowed. For variants with different sizes, insert a
  /// separate product for each size with the same `itemGroupId` value, see
  /// [Size](https://support.google.com/merchants/answer/6324492).
  core.String? size;

  /// System in which the size is specified.
  ///
  /// Recommended for apparel items. For more information, see
  /// [Size system](https://support.google.com/merchants/answer/6324502).
  /// Possible string values are:
  /// - "SIZE_SYSTEM_UNSPECIFIED" : Unspecified size system.
  /// - "AU" : AU.
  /// - "BR" : BR.
  /// - "CN" : CN.
  /// - "DE" : DE.
  /// - "EU" : EU.
  /// - "FR" : FR.
  /// - "IT" : IT.
  /// - "JP" : JP.
  /// - "MEX" : MEX.
  /// - "UK" : UK.
  /// - "US" : US.
  core.String? sizeSystem;

  /// The cut of the item.
  ///
  /// It can be used to represent combined size types for apparel items. Maximum
  /// two of size types can be provided, see
  /// [Size type](https://support.google.com/merchants/answer/6324497).
  core.List<core.String>? sizeTypes;

  /// The specialty housing type for the property.
  /// Possible string values are:
  /// - "SPECIALTY_HOUSING_TYPE_UNSPECIFIED" : Unspecified specialty housing
  /// type.
  /// - "CORPORATE" : Corporate housing.
  /// - "LOW_INCOME" : Low income housing.
  /// - "MILITARY" : Military housing.
  /// - "SENIOR" : Senior housing.
  /// - "SHORT_TERM" : Short term housing.
  /// - "STUDENT" : Student housing.
  core.String? specialtyHousingType;

  /// Structured description, for algorithmically (AI)-generated descriptions.
  StructuredDescription? structuredDescription;

  /// Structured title, for algorithmically (AI)-generated titles.
  StructuredTitle? structuredTitle;

  /// Number of periods (weeks, months or years) and amount of payment per
  /// period for an item with an associated subscription contract.
  SubscriptionCost? subscriptionCost;

  /// The list of sustainability incentive programs.
  core.List<ProductSustainabilityIncentive>? sustainabilityIncentives;

  /// Title of the item.
  core.String? title;

  /// The transit time label of the product, used to group product in
  /// account-level transit time tables.
  core.String? transitTimeLabel;

  /// The [Trim](https://support.google.com/google-ads/answer/14154176) of the
  /// vehicle model, such as `S`, `SV`, `SL` and others.
  core.String? trim;

  /// The unit area of the property, such as `1000 sqft`.
  UnitArea? unitArea;

  /// The preference of the denominator of the unit price.
  UnitPricingBaseMeasure? unitPricingBaseMeasure;

  /// The measure and dimension of an item.
  UnitPricingMeasure? unitPricingMeasure;

  /// The utilities included for the property.
  core.List<core.String>? utilitiesIncluded;

  /// Contains the \[list of all variant-identifying
  /// options\](https://support.google.com/merchants/answer/17085214) of this
  /// product.
  ///
  /// Optional.
  core.List<VariantOption>? variantOptions;

  /// The all-in advertised price for a vehicle, which includes costs for the
  /// following – any accessories attached to the vehicle, environmental levies,
  /// extra warranty, fuel, freight, pre-delivery inspection (PDI), dealer fees
  /// for handling licensing, provincial regulatory fees, miscellaneous dealer
  /// charges for security etching and nitrogen tire fill, and
  /// factory-to-customer or dealer-to-customer discounts or incentives.
  ///
  /// See the \[Vehicle all-in
  /// price\](https://support.google.com/google-ads/answer/14156981) for more
  /// information.
  Price? vehicleAllInPrice;

  /// The miscellaneous expenses like insurance and registration fees of the
  /// vehicle.
  ///
  /// See the
  /// [Vehicle expenses](https://support.google.com/google-ads/answer/15957154)
  /// for more information.
  Price? vehicleExpenses;

  /// Whether the vehicle is sold with mandatory inspection and maintenance
  /// performed before delivery.
  ///
  /// See the
  /// [Vehicle mandatory inspection included](https://support.google.com/google-ads/answer/15956630)
  /// for more information.\`
  core.bool? vehicleMandatoryInspectionIncluded;

  /// The MSRP (Manufacturer Suggested Retail Price) for the vehicle in its
  /// current configuration.
  ///
  /// See the
  /// [Vehicle MSRP](https://support.google.com/google-ads/answer/14154171) for
  /// more information.
  Price? vehicleMsrp;

  /// The [price type](https://support.google.com/google-ads/answer/14592783) of
  /// the vehicle.
  /// Possible string values are:
  /// - "VEHICLE_PRICE_TYPE_UNSPECIFIED" : Unspecified vehicle price type.
  /// - "ALL_IN_PRICE" : All in price.
  /// - "DRIVE_AWAY_PRICE" : Drive away price.
  /// - "ESTIMATED_DRIVE_AWAY_PRICE" : Estimated drive away price.
  /// - "EXCLUDING_GOVERNMENT_CHARGES_PRICE" : Excluding government charges
  /// price.
  /// - "VEHICLE_BASE_PRICE" : Vehicle base price.
  core.String? vehiclePriceType;

  /// A list of video URLs for the item.
  ///
  /// Use this attribute to provide more visuals for your product beyond your
  /// image attributes. See the
  /// [Help Center article](https://support.google.com/merchants/answer/15216925)
  /// for more information.
  ///
  /// Optional.
  core.List<core.String>? videoLinks;

  /// The \[Vehicle Identification Number
  /// (VIN)\](https://support.google.com/google-ads/answer/14154510) of the
  /// vehicle.
  core.String? vin;

  /// URL of the 3D image of the item.
  ///
  /// See the
  /// [Help Center article](https://support.google.com/merchants/answer/13674896)
  /// for more information.
  core.String? virtualModelLink;

  /// The [warranty](https://support.google.com/google-ads/answer/15957626) of
  /// the vehicle.
  Warranty? warranty;

  /// The [Year](https://support.google.com/google-ads/answer/14152816) of the
  /// vehicle model.
  core.String? year;

  ProductAttributes({
    this.additionalImageLinks,
    this.adsGrouping,
    this.adsLabels,
    this.adsRedirect,
    this.adult,
    this.ageGroup,
    this.amenityFeature,
    this.autoPricingMinPrice,
    this.availability,
    this.availabilityDate,
    this.bodyStyle,
    this.brand,
    this.canonicalLink,
    this.carrierShipping,
    this.certifications,
    this.certifiedPreOwned,
    this.cloudExportAdditionalProperties,
    this.co2Emissions,
    this.color,
    this.condition,
    this.costOfGoodsSold,
    this.customLabel0,
    this.customLabel1,
    this.customLabel2,
    this.customLabel3,
    this.customLabel4,
    this.dateFirstRegistered,
    this.description,
    this.disclosureDate,
    this.displayAddress,
    this.displayAdsId,
    this.displayAdsLink,
    this.displayAdsSimilarIds,
    this.displayAdsTitle,
    this.displayAdsValue,
    this.documentLinks,
    this.electricRange,
    this.emissionsStandard,
    this.energyConsumption,
    this.energyEfficiencyClass,
    this.engine,
    this.excludedDestinations,
    this.expirationDate,
    this.externalSellerId,
    this.freeShippingThreshold,
    this.fuelConsumption,
    this.fuelConsumptionDischargedBattery,
    this.gender,
    this.googleProductCategory,
    this.gtins,
    this.handlingCutoffTimes,
    this.identifierExists,
    this.imageLink,
    this.includedDestinations,
    this.installment,
    this.isBundle,
    this.itemGroupId,
    this.itemGroupTitle,
    this.latitude,
    this.leaseTerm,
    this.lifestyleImageLinks,
    this.link,
    this.linkTemplate,
    this.longitude,
    this.loyaltyPoints,
    this.loyaltyPrograms,
    this.material,
    this.maxEnergyEfficiencyClass,
    this.maxHandlingTime,
    this.maximumRetailPrice,
    this.mileage,
    this.minEnergyEfficiencyClass,
    this.minHandlingTime,
    this.minimumOrderValues,
    this.mobileLink,
    this.mobileLinkTemplate,
    this.model,
    this.mpn,
    this.multipack,
    this.neighborhood,
    this.numberOfBathrooms,
    this.numberOfBedrooms,
    this.numberOfUnits,
    this.pattern,
    this.pause,
    this.petPolicy,
    this.pickupCost,
    this.pickupMethod,
    this.pickupSla,
    this.popularityRank,
    this.price,
    this.productDetails,
    this.productFee,
    this.productHeight,
    this.productHighlights,
    this.productLength,
    this.productTypes,
    this.productWeight,
    this.productWidth,
    this.promotionIds,
    this.propertyName,
    this.propertyType,
    this.questionsAndAnswers,
    this.relatedProducts,
    this.returnPolicyLabel,
    this.returns,
    this.salePrice,
    this.salePriceEffectiveDate,
    this.sellOnGoogleQuantity,
    this.shipping,
    this.shippingHandlingBusinessDays,
    this.shippingHeight,
    this.shippingLabel,
    this.shippingLength,
    this.shippingTransitBusinessDays,
    this.shippingWeight,
    this.shippingWidth,
    this.shoppingAdsExcludedCountries,
    this.shortTitle,
    this.size,
    this.sizeSystem,
    this.sizeTypes,
    this.specialtyHousingType,
    this.structuredDescription,
    this.structuredTitle,
    this.subscriptionCost,
    this.sustainabilityIncentives,
    this.title,
    this.transitTimeLabel,
    this.trim,
    this.unitArea,
    this.unitPricingBaseMeasure,
    this.unitPricingMeasure,
    this.utilitiesIncluded,
    this.variantOptions,
    this.vehicleAllInPrice,
    this.vehicleExpenses,
    this.vehicleMandatoryInspectionIncluded,
    this.vehicleMsrp,
    this.vehiclePriceType,
    this.videoLinks,
    this.vin,
    this.virtualModelLink,
    this.warranty,
    this.year,
  });

  ProductAttributes.fromJson(core.Map json_)
    : this(
        additionalImageLinks: (json_['additionalImageLinks'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        adsGrouping: json_['adsGrouping'] as core.String?,
        adsLabels: (json_['adsLabels'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        adsRedirect: json_['adsRedirect'] as core.String?,
        adult: json_['adult'] as core.bool?,
        ageGroup: json_['ageGroup'] as core.String?,
        amenityFeature: (json_['amenityFeature'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        autoPricingMinPrice: json_.containsKey('autoPricingMinPrice')
            ? Price.fromJson(
                json_['autoPricingMinPrice']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        availability: json_['availability'] as core.String?,
        availabilityDate: json_['availabilityDate'] as core.String?,
        bodyStyle: json_['bodyStyle'] as core.String?,
        brand: json_['brand'] as core.String?,
        canonicalLink: json_['canonicalLink'] as core.String?,
        carrierShipping: (json_['carrierShipping'] as core.List?)
            ?.map(
              (value) => CarrierShipping.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        certifications: (json_['certifications'] as core.List?)
            ?.map(
              (value) => ProductCertification.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        certifiedPreOwned: json_['certifiedPreOwned'] as core.bool?,
        cloudExportAdditionalProperties:
            (json_['cloudExportAdditionalProperties'] as core.List?)
                ?.map(
                  (value) => CloudExportAdditionalProperties.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        co2Emissions: json_.containsKey('co2Emissions')
            ? Co2Emissions.fromJson(
                json_['co2Emissions'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        color: json_['color'] as core.String?,
        condition: json_['condition'] as core.String?,
        costOfGoodsSold: json_.containsKey('costOfGoodsSold')
            ? Price.fromJson(
                json_['costOfGoodsSold'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        customLabel0: json_['customLabel0'] as core.String?,
        customLabel1: json_['customLabel1'] as core.String?,
        customLabel2: json_['customLabel2'] as core.String?,
        customLabel3: json_['customLabel3'] as core.String?,
        customLabel4: json_['customLabel4'] as core.String?,
        dateFirstRegistered: json_['dateFirstRegistered'] as core.String?,
        description: json_['description'] as core.String?,
        disclosureDate: json_['disclosureDate'] as core.String?,
        displayAddress: json_.containsKey('displayAddress')
            ? DisplayAddress.fromJson(
                json_['displayAddress'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        displayAdsId: json_['displayAdsId'] as core.String?,
        displayAdsLink: json_['displayAdsLink'] as core.String?,
        displayAdsSimilarIds: (json_['displayAdsSimilarIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        displayAdsTitle: json_['displayAdsTitle'] as core.String?,
        displayAdsValue: (json_['displayAdsValue'] as core.num?)?.toDouble(),
        documentLinks: (json_['documentLinks'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        electricRange: json_.containsKey('electricRange')
            ? Mileage.fromJson(
                json_['electricRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        emissionsStandard: json_['emissionsStandard'] as core.String?,
        energyConsumption: json_.containsKey('energyConsumption')
            ? EnergyConsumption.fromJson(
                json_['energyConsumption']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        energyEfficiencyClass: json_['energyEfficiencyClass'] as core.String?,
        engine: json_['engine'] as core.String?,
        excludedDestinations: (json_['excludedDestinations'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        expirationDate: json_['expirationDate'] as core.String?,
        externalSellerId: json_['externalSellerId'] as core.String?,
        freeShippingThreshold: (json_['freeShippingThreshold'] as core.List?)
            ?.map(
              (value) => FreeShippingThreshold.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        fuelConsumption: json_.containsKey('fuelConsumption')
            ? FuelConsumption.fromJson(
                json_['fuelConsumption'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        fuelConsumptionDischargedBattery:
            json_.containsKey('fuelConsumptionDischargedBattery')
            ? FuelConsumption.fromJson(
                json_['fuelConsumptionDischargedBattery']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        gender: json_['gender'] as core.String?,
        googleProductCategory: json_['googleProductCategory'] as core.String?,
        gtins: (json_['gtins'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        handlingCutoffTimes: (json_['handlingCutoffTimes'] as core.List?)
            ?.map(
              (value) => HandlingCutoffTime.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        identifierExists: json_['identifierExists'] as core.bool?,
        imageLink: json_['imageLink'] as core.String?,
        includedDestinations: (json_['includedDestinations'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        installment: json_.containsKey('installment')
            ? ProductInstallment.fromJson(
                json_['installment'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        isBundle: json_['isBundle'] as core.bool?,
        itemGroupId: json_['itemGroupId'] as core.String?,
        itemGroupTitle: json_['itemGroupTitle'] as core.String?,
        latitude: (json_['latitude'] as core.num?)?.toDouble(),
        leaseTerm: json_.containsKey('leaseTerm')
            ? LeaseTerm.fromJson(
                json_['leaseTerm'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        lifestyleImageLinks: (json_['lifestyleImageLinks'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        link: json_['link'] as core.String?,
        linkTemplate: json_['linkTemplate'] as core.String?,
        longitude: (json_['longitude'] as core.num?)?.toDouble(),
        loyaltyPoints: json_.containsKey('loyaltyPoints')
            ? LoyaltyPoints.fromJson(
                json_['loyaltyPoints'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        loyaltyPrograms: (json_['loyaltyPrograms'] as core.List?)
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
        maximumRetailPrice: json_.containsKey('maximumRetailPrice')
            ? Price.fromJson(
                json_['maximumRetailPrice']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        mileage: json_.containsKey('mileage')
            ? Mileage.fromJson(
                json_['mileage'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        minEnergyEfficiencyClass:
            json_['minEnergyEfficiencyClass'] as core.String?,
        minHandlingTime: json_['minHandlingTime'] as core.String?,
        minimumOrderValues: (json_['minimumOrderValues'] as core.List?)
            ?.map(
              (value) => ProductMinimumOrderValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        mobileLink: json_['mobileLink'] as core.String?,
        mobileLinkTemplate: json_['mobileLinkTemplate'] as core.String?,
        model: json_['model'] as core.String?,
        mpn: json_['mpn'] as core.String?,
        multipack: json_['multipack'] as core.String?,
        neighborhood: json_['neighborhood'] as core.String?,
        numberOfBathrooms: (json_['numberOfBathrooms'] as core.num?)
            ?.toDouble(),
        numberOfBedrooms: (json_['numberOfBedrooms'] as core.num?)?.toDouble(),
        numberOfUnits: json_['numberOfUnits'] as core.String?,
        pattern: json_['pattern'] as core.String?,
        pause: json_['pause'] as core.String?,
        petPolicy: json_.containsKey('petPolicy')
            ? PetPolicy.fromJson(
                json_['petPolicy'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        pickupCost: json_.containsKey('pickupCost')
            ? PickupCost.fromJson(
                json_['pickupCost'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        pickupMethod: json_['pickupMethod'] as core.String?,
        pickupSla: json_['pickupSla'] as core.String?,
        popularityRank: (json_['popularityRank'] as core.num?)?.toDouble(),
        price: json_.containsKey('price')
            ? Price.fromJson(
                json_['price'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        productDetails: (json_['productDetails'] as core.List?)
            ?.map(
              (value) => ProductDetail.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        productFee: (json_['productFee'] as core.List?)
            ?.map(
              (value) => ProductFee.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        productHeight: json_.containsKey('productHeight')
            ? ProductDimension.fromJson(
                json_['productHeight'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        productHighlights: (json_['productHighlights'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        productLength: json_.containsKey('productLength')
            ? ProductDimension.fromJson(
                json_['productLength'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        productTypes: (json_['productTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        productWeight: json_.containsKey('productWeight')
            ? ProductWeight.fromJson(
                json_['productWeight'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        productWidth: json_.containsKey('productWidth')
            ? ProductDimension.fromJson(
                json_['productWidth'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        promotionIds: (json_['promotionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        propertyName: json_['propertyName'] as core.String?,
        propertyType: json_['propertyType'] as core.String?,
        questionsAndAnswers: (json_['questionsAndAnswers'] as core.List?)
            ?.map(
              (value) => QuestionAndAnswer.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        relatedProducts: (json_['relatedProducts'] as core.List?)
            ?.map(
              (value) => RelatedProduct.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        returnPolicyLabel: json_['returnPolicyLabel'] as core.String?,
        returns: (json_['returns'] as core.List?)
            ?.map(
              (value) => Returns.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        salePrice: json_.containsKey('salePrice')
            ? Price.fromJson(
                json_['salePrice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        salePriceEffectiveDate: json_.containsKey('salePriceEffectiveDate')
            ? Interval.fromJson(
                json_['salePriceEffectiveDate']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        sellOnGoogleQuantity: json_['sellOnGoogleQuantity'] as core.String?,
        shipping: (json_['shipping'] as core.List?)
            ?.map(
              (value) => Shipping.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        shippingHandlingBusinessDays:
            (json_['shippingHandlingBusinessDays'] as core.List?)
                ?.map(
                  (value) => ShippingBusinessDaysConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        shippingHeight: json_.containsKey('shippingHeight')
            ? ShippingDimension.fromJson(
                json_['shippingHeight'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        shippingLabel: json_['shippingLabel'] as core.String?,
        shippingLength: json_.containsKey('shippingLength')
            ? ShippingDimension.fromJson(
                json_['shippingLength'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        shippingTransitBusinessDays:
            (json_['shippingTransitBusinessDays'] as core.List?)
                ?.map(
                  (value) => ShippingBusinessDaysConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        shippingWeight: json_.containsKey('shippingWeight')
            ? ShippingWeight.fromJson(
                json_['shippingWeight'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        shippingWidth: json_.containsKey('shippingWidth')
            ? ShippingDimension.fromJson(
                json_['shippingWidth'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        shoppingAdsExcludedCountries:
            (json_['shoppingAdsExcludedCountries'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        shortTitle: json_['shortTitle'] as core.String?,
        size: json_['size'] as core.String?,
        sizeSystem: json_['sizeSystem'] as core.String?,
        sizeTypes: (json_['sizeTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        specialtyHousingType: json_['specialtyHousingType'] as core.String?,
        structuredDescription: json_.containsKey('structuredDescription')
            ? StructuredDescription.fromJson(
                json_['structuredDescription']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        structuredTitle: json_.containsKey('structuredTitle')
            ? StructuredTitle.fromJson(
                json_['structuredTitle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        subscriptionCost: json_.containsKey('subscriptionCost')
            ? SubscriptionCost.fromJson(
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
        title: json_['title'] as core.String?,
        transitTimeLabel: json_['transitTimeLabel'] as core.String?,
        trim: json_['trim'] as core.String?,
        unitArea: json_.containsKey('unitArea')
            ? UnitArea.fromJson(
                json_['unitArea'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        unitPricingBaseMeasure: json_.containsKey('unitPricingBaseMeasure')
            ? UnitPricingBaseMeasure.fromJson(
                json_['unitPricingBaseMeasure']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        unitPricingMeasure: json_.containsKey('unitPricingMeasure')
            ? UnitPricingMeasure.fromJson(
                json_['unitPricingMeasure']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        utilitiesIncluded: (json_['utilitiesIncluded'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        variantOptions: (json_['variantOptions'] as core.List?)
            ?.map(
              (value) => VariantOption.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        vehicleAllInPrice: json_.containsKey('vehicleAllInPrice')
            ? Price.fromJson(
                json_['vehicleAllInPrice']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        vehicleExpenses: json_.containsKey('vehicleExpenses')
            ? Price.fromJson(
                json_['vehicleExpenses'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        vehicleMandatoryInspectionIncluded:
            json_['vehicleMandatoryInspectionIncluded'] as core.bool?,
        vehicleMsrp: json_.containsKey('vehicleMsrp')
            ? Price.fromJson(
                json_['vehicleMsrp'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        vehiclePriceType: json_['vehiclePriceType'] as core.String?,
        videoLinks: (json_['videoLinks'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        vin: json_['vin'] as core.String?,
        virtualModelLink: json_['virtualModelLink'] as core.String?,
        warranty: json_.containsKey('warranty')
            ? Warranty.fromJson(
                json_['warranty'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        year: json_['year'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionalImageLinks = this.additionalImageLinks;
    final adsGrouping = this.adsGrouping;
    final adsLabels = this.adsLabels;
    final adsRedirect = this.adsRedirect;
    final adult = this.adult;
    final ageGroup = this.ageGroup;
    final amenityFeature = this.amenityFeature;
    final autoPricingMinPrice = this.autoPricingMinPrice;
    final availability = this.availability;
    final availabilityDate = this.availabilityDate;
    final bodyStyle = this.bodyStyle;
    final brand = this.brand;
    final canonicalLink = this.canonicalLink;
    final carrierShipping = this.carrierShipping;
    final certifications = this.certifications;
    final certifiedPreOwned = this.certifiedPreOwned;
    final cloudExportAdditionalProperties =
        this.cloudExportAdditionalProperties;
    final co2Emissions = this.co2Emissions;
    final color = this.color;
    final condition = this.condition;
    final costOfGoodsSold = this.costOfGoodsSold;
    final customLabel0 = this.customLabel0;
    final customLabel1 = this.customLabel1;
    final customLabel2 = this.customLabel2;
    final customLabel3 = this.customLabel3;
    final customLabel4 = this.customLabel4;
    final dateFirstRegistered = this.dateFirstRegistered;
    final description = this.description;
    final disclosureDate = this.disclosureDate;
    final displayAddress = this.displayAddress;
    final displayAdsId = this.displayAdsId;
    final displayAdsLink = this.displayAdsLink;
    final displayAdsSimilarIds = this.displayAdsSimilarIds;
    final displayAdsTitle = this.displayAdsTitle;
    final displayAdsValue = this.displayAdsValue;
    final documentLinks = this.documentLinks;
    final electricRange = this.electricRange;
    final emissionsStandard = this.emissionsStandard;
    final energyConsumption = this.energyConsumption;
    final energyEfficiencyClass = this.energyEfficiencyClass;
    final engine = this.engine;
    final excludedDestinations = this.excludedDestinations;
    final expirationDate = this.expirationDate;
    final externalSellerId = this.externalSellerId;
    final freeShippingThreshold = this.freeShippingThreshold;
    final fuelConsumption = this.fuelConsumption;
    final fuelConsumptionDischargedBattery =
        this.fuelConsumptionDischargedBattery;
    final gender = this.gender;
    final googleProductCategory = this.googleProductCategory;
    final gtins = this.gtins;
    final handlingCutoffTimes = this.handlingCutoffTimes;
    final identifierExists = this.identifierExists;
    final imageLink = this.imageLink;
    final includedDestinations = this.includedDestinations;
    final installment = this.installment;
    final isBundle = this.isBundle;
    final itemGroupId = this.itemGroupId;
    final itemGroupTitle = this.itemGroupTitle;
    final latitude = this.latitude;
    final leaseTerm = this.leaseTerm;
    final lifestyleImageLinks = this.lifestyleImageLinks;
    final link = this.link;
    final linkTemplate = this.linkTemplate;
    final longitude = this.longitude;
    final loyaltyPoints = this.loyaltyPoints;
    final loyaltyPrograms = this.loyaltyPrograms;
    final material = this.material;
    final maxEnergyEfficiencyClass = this.maxEnergyEfficiencyClass;
    final maxHandlingTime = this.maxHandlingTime;
    final maximumRetailPrice = this.maximumRetailPrice;
    final mileage = this.mileage;
    final minEnergyEfficiencyClass = this.minEnergyEfficiencyClass;
    final minHandlingTime = this.minHandlingTime;
    final minimumOrderValues = this.minimumOrderValues;
    final mobileLink = this.mobileLink;
    final mobileLinkTemplate = this.mobileLinkTemplate;
    final model = this.model;
    final mpn = this.mpn;
    final multipack = this.multipack;
    final neighborhood = this.neighborhood;
    final numberOfBathrooms = this.numberOfBathrooms;
    final numberOfBedrooms = this.numberOfBedrooms;
    final numberOfUnits = this.numberOfUnits;
    final pattern = this.pattern;
    final pause = this.pause;
    final petPolicy = this.petPolicy;
    final pickupCost = this.pickupCost;
    final pickupMethod = this.pickupMethod;
    final pickupSla = this.pickupSla;
    final popularityRank = this.popularityRank;
    final price = this.price;
    final productDetails = this.productDetails;
    final productFee = this.productFee;
    final productHeight = this.productHeight;
    final productHighlights = this.productHighlights;
    final productLength = this.productLength;
    final productTypes = this.productTypes;
    final productWeight = this.productWeight;
    final productWidth = this.productWidth;
    final promotionIds = this.promotionIds;
    final propertyName = this.propertyName;
    final propertyType = this.propertyType;
    final questionsAndAnswers = this.questionsAndAnswers;
    final relatedProducts = this.relatedProducts;
    final returnPolicyLabel = this.returnPolicyLabel;
    final returns = this.returns;
    final salePrice = this.salePrice;
    final salePriceEffectiveDate = this.salePriceEffectiveDate;
    final sellOnGoogleQuantity = this.sellOnGoogleQuantity;
    final shipping = this.shipping;
    final shippingHandlingBusinessDays = this.shippingHandlingBusinessDays;
    final shippingHeight = this.shippingHeight;
    final shippingLabel = this.shippingLabel;
    final shippingLength = this.shippingLength;
    final shippingTransitBusinessDays = this.shippingTransitBusinessDays;
    final shippingWeight = this.shippingWeight;
    final shippingWidth = this.shippingWidth;
    final shoppingAdsExcludedCountries = this.shoppingAdsExcludedCountries;
    final shortTitle = this.shortTitle;
    final size = this.size;
    final sizeSystem = this.sizeSystem;
    final sizeTypes = this.sizeTypes;
    final specialtyHousingType = this.specialtyHousingType;
    final structuredDescription = this.structuredDescription;
    final structuredTitle = this.structuredTitle;
    final subscriptionCost = this.subscriptionCost;
    final sustainabilityIncentives = this.sustainabilityIncentives;
    final title = this.title;
    final transitTimeLabel = this.transitTimeLabel;
    final trim = this.trim;
    final unitArea = this.unitArea;
    final unitPricingBaseMeasure = this.unitPricingBaseMeasure;
    final unitPricingMeasure = this.unitPricingMeasure;
    final utilitiesIncluded = this.utilitiesIncluded;
    final variantOptions = this.variantOptions;
    final vehicleAllInPrice = this.vehicleAllInPrice;
    final vehicleExpenses = this.vehicleExpenses;
    final vehicleMandatoryInspectionIncluded =
        this.vehicleMandatoryInspectionIncluded;
    final vehicleMsrp = this.vehicleMsrp;
    final vehiclePriceType = this.vehiclePriceType;
    final videoLinks = this.videoLinks;
    final vin = this.vin;
    final virtualModelLink = this.virtualModelLink;
    final warranty = this.warranty;
    final year = this.year;
    return {
      'additionalImageLinks': ?additionalImageLinks,
      'adsGrouping': ?adsGrouping,
      'adsLabels': ?adsLabels,
      'adsRedirect': ?adsRedirect,
      'adult': ?adult,
      'ageGroup': ?ageGroup,
      'amenityFeature': ?amenityFeature,
      'autoPricingMinPrice': ?autoPricingMinPrice,
      'availability': ?availability,
      'availabilityDate': ?availabilityDate,
      'bodyStyle': ?bodyStyle,
      'brand': ?brand,
      'canonicalLink': ?canonicalLink,
      'carrierShipping': ?carrierShipping,
      'certifications': ?certifications,
      'certifiedPreOwned': ?certifiedPreOwned,
      'cloudExportAdditionalProperties': ?cloudExportAdditionalProperties,
      'co2Emissions': ?co2Emissions,
      'color': ?color,
      'condition': ?condition,
      'costOfGoodsSold': ?costOfGoodsSold,
      'customLabel0': ?customLabel0,
      'customLabel1': ?customLabel1,
      'customLabel2': ?customLabel2,
      'customLabel3': ?customLabel3,
      'customLabel4': ?customLabel4,
      'dateFirstRegistered': ?dateFirstRegistered,
      'description': ?description,
      'disclosureDate': ?disclosureDate,
      'displayAddress': ?displayAddress,
      'displayAdsId': ?displayAdsId,
      'displayAdsLink': ?displayAdsLink,
      'displayAdsSimilarIds': ?displayAdsSimilarIds,
      'displayAdsTitle': ?displayAdsTitle,
      'displayAdsValue': ?displayAdsValue,
      'documentLinks': ?documentLinks,
      'electricRange': ?electricRange,
      'emissionsStandard': ?emissionsStandard,
      'energyConsumption': ?energyConsumption,
      'energyEfficiencyClass': ?energyEfficiencyClass,
      'engine': ?engine,
      'excludedDestinations': ?excludedDestinations,
      'expirationDate': ?expirationDate,
      'externalSellerId': ?externalSellerId,
      'freeShippingThreshold': ?freeShippingThreshold,
      'fuelConsumption': ?fuelConsumption,
      'fuelConsumptionDischargedBattery': ?fuelConsumptionDischargedBattery,
      'gender': ?gender,
      'googleProductCategory': ?googleProductCategory,
      'gtins': ?gtins,
      'handlingCutoffTimes': ?handlingCutoffTimes,
      'identifierExists': ?identifierExists,
      'imageLink': ?imageLink,
      'includedDestinations': ?includedDestinations,
      'installment': ?installment,
      'isBundle': ?isBundle,
      'itemGroupId': ?itemGroupId,
      'itemGroupTitle': ?itemGroupTitle,
      'latitude': ?latitude,
      'leaseTerm': ?leaseTerm,
      'lifestyleImageLinks': ?lifestyleImageLinks,
      'link': ?link,
      'linkTemplate': ?linkTemplate,
      'longitude': ?longitude,
      'loyaltyPoints': ?loyaltyPoints,
      'loyaltyPrograms': ?loyaltyPrograms,
      'material': ?material,
      'maxEnergyEfficiencyClass': ?maxEnergyEfficiencyClass,
      'maxHandlingTime': ?maxHandlingTime,
      'maximumRetailPrice': ?maximumRetailPrice,
      'mileage': ?mileage,
      'minEnergyEfficiencyClass': ?minEnergyEfficiencyClass,
      'minHandlingTime': ?minHandlingTime,
      'minimumOrderValues': ?minimumOrderValues,
      'mobileLink': ?mobileLink,
      'mobileLinkTemplate': ?mobileLinkTemplate,
      'model': ?model,
      'mpn': ?mpn,
      'multipack': ?multipack,
      'neighborhood': ?neighborhood,
      'numberOfBathrooms': ?numberOfBathrooms,
      'numberOfBedrooms': ?numberOfBedrooms,
      'numberOfUnits': ?numberOfUnits,
      'pattern': ?pattern,
      'pause': ?pause,
      'petPolicy': ?petPolicy,
      'pickupCost': ?pickupCost,
      'pickupMethod': ?pickupMethod,
      'pickupSla': ?pickupSla,
      'popularityRank': ?popularityRank,
      'price': ?price,
      'productDetails': ?productDetails,
      'productFee': ?productFee,
      'productHeight': ?productHeight,
      'productHighlights': ?productHighlights,
      'productLength': ?productLength,
      'productTypes': ?productTypes,
      'productWeight': ?productWeight,
      'productWidth': ?productWidth,
      'promotionIds': ?promotionIds,
      'propertyName': ?propertyName,
      'propertyType': ?propertyType,
      'questionsAndAnswers': ?questionsAndAnswers,
      'relatedProducts': ?relatedProducts,
      'returnPolicyLabel': ?returnPolicyLabel,
      'returns': ?returns,
      'salePrice': ?salePrice,
      'salePriceEffectiveDate': ?salePriceEffectiveDate,
      'sellOnGoogleQuantity': ?sellOnGoogleQuantity,
      'shipping': ?shipping,
      'shippingHandlingBusinessDays': ?shippingHandlingBusinessDays,
      'shippingHeight': ?shippingHeight,
      'shippingLabel': ?shippingLabel,
      'shippingLength': ?shippingLength,
      'shippingTransitBusinessDays': ?shippingTransitBusinessDays,
      'shippingWeight': ?shippingWeight,
      'shippingWidth': ?shippingWidth,
      'shoppingAdsExcludedCountries': ?shoppingAdsExcludedCountries,
      'shortTitle': ?shortTitle,
      'size': ?size,
      'sizeSystem': ?sizeSystem,
      'sizeTypes': ?sizeTypes,
      'specialtyHousingType': ?specialtyHousingType,
      'structuredDescription': ?structuredDescription,
      'structuredTitle': ?structuredTitle,
      'subscriptionCost': ?subscriptionCost,
      'sustainabilityIncentives': ?sustainabilityIncentives,
      'title': ?title,
      'transitTimeLabel': ?transitTimeLabel,
      'trim': ?trim,
      'unitArea': ?unitArea,
      'unitPricingBaseMeasure': ?unitPricingBaseMeasure,
      'unitPricingMeasure': ?unitPricingMeasure,
      'utilitiesIncluded': ?utilitiesIncluded,
      'variantOptions': ?variantOptions,
      'vehicleAllInPrice': ?vehicleAllInPrice,
      'vehicleExpenses': ?vehicleExpenses,
      'vehicleMandatoryInspectionIncluded': ?vehicleMandatoryInspectionIncluded,
      'vehicleMsrp': ?vehicleMsrp,
      'vehiclePriceType': ?vehiclePriceType,
      'videoLinks': ?videoLinks,
      'vin': ?vin,
      'virtualModelLink': ?virtualModelLink,
      'warranty': ?warranty,
      'year': ?year,
    };
  }
}

/// Product
/// [certification](https://support.google.com/merchants/answer/13528839),
/// initially introduced for EU energy efficiency labeling compliance using the
/// EU EPREL database.
class ProductCertification {
  /// The certification authority.
  /// Possible string values are:
  /// - "CERTIFICATION_AUTHORITY_UNSPECIFIED" : Certification authority is not
  /// specified.
  /// - "ADEME" : For the French CO2 emissions class for vehicles.
  /// - "BMWK" : For the German CO2 emissions classes for vehicles.
  /// - "EPA" : Environment Protection Agency.
  /// - "EC" : European Commission for energy labels in the EU.
  core.String? certificationAuthority;

  /// The certification code.
  ///
  /// Maximum length is 2000 characters.
  core.String? certificationCode;

  /// The name of the certification.
  /// Possible string values are:
  /// - "CERTIFICATION_NAME_UNSPECIFIED" : Certification name is not specified.
  /// - "ENERGY_STAR" : Energy Star.
  /// - "ENERGY_STAR_MOST_EFFICIENT" : Energy Star Most Efficient.
  /// - "EPREL" : Represents energy efficiency certifications in the EU European
  /// Registry for Energy Labeling (EPREL) database.
  /// - "EU_ECOLABEL" : EU Ecolabel.
  /// - "VEHICLE_ENERGY_EFFICIENCY" : The overall CO2 class of a vehicle
  /// - "VEHICLE_ENERGY_EFFICIENCY_DISCHARGED_BATTERY" : For the CO2 class of a
  /// vehicle with a discharged battery.
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

  core.Map<core.String, core.dynamic> toJson() {
    final certificationAuthority = this.certificationAuthority;
    final certificationCode = this.certificationCode;
    final certificationName = this.certificationName;
    final certificationValue = this.certificationValue;
    return {
      'certificationAuthority': ?certificationAuthority,
      'certificationCode': ?certificationCode,
      'certificationName': ?certificationName,
      'certificationValue': ?certificationValue,
    };
  }
}

/// The product details.
typedef ProductDetail = $ProductDetail;

/// The dimension of the product.
typedef ProductDimension = $ProductDimension;

/// The product fee attribute containing type and amount.
class ProductFee {
  /// The amount of product fee.
  Price? amount;

  /// The type of product fee.
  /// Possible string values are:
  /// - "FEE_TYPE_UNSPECIFIED" : Unspecified fee type.
  /// - "ADMIN_FEE" : Admin fee.
  /// - "APPLICATION_FEE" : Application fee.
  /// - "SECURITY_DEPOSIT" : Security deposit.
  core.String? type;

  ProductFee({this.amount, this.type});

  ProductFee.fromJson(core.Map json_)
    : this(
        amount: json_.containsKey('amount')
            ? Price.fromJson(
                json_['amount'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final amount = this.amount;
    final type = this.type;
    return {'amount': ?amount, 'type': ?type};
  }
}

/// This resource represents input data you submit for a product, not the
/// processed product that you see in Merchant Center, in Shopping ads, or
/// across Google surfaces.
///
/// Product inputs, rules and supplemental data source data are combined to
/// create the processed Product. For more information, see \[Manage
/// products\](/merchant/api/guides/products/overview). Required product input
/// attributes to pass data validation checks are primarily defined in the
/// [Products Data Specification](https://support.google.com/merchants/answer/188494).
/// The following attributes are required: feedLabel, contentLanguage and
/// offerId. After inserting, updating, or deleting a product input, it may take
/// several minutes before the processed product can be retrieved. All fields in
/// the product input and its sub-messages match the English name of their
/// corresponding attribute in the
/// [Products Data Specification](https://support.google.com/merchants/answer/188494)
/// with [some exceptions](https://support.google.com/merchants/answer/7052112).
/// The following reference documentation lists the field names in the
/// **camelCase** casing style while the Products Data Specification lists the
/// names in the **snake_case** casing style.
class ProductInput {
  /// The **unpadded base64url encoded name** of the product input.
  ///
  /// Format: `accounts/{account}/productInputs/{productinput}` where the last
  /// section `productinput` is the unpadded base64url encoding of the
  /// `content_language~feed_label~offer_id` name. Example:
  /// `accounts/123/productInputs/ZW5-VVN-c2t1LzEyMw` for the decoded product
  /// input name `accounts/123/productInputs/en~US~sku/123`. This field can be
  /// used directly as input to the API methods that require the product input
  /// name to be encoded if it contains special characters, for example
  /// \[`GetProductInput`\](https://developers.google.com/merchant/api/reference/rest/products_v1/accounts.productInputs/get).
  ///
  /// Output only.
  core.String? base64EncodedName;

  /// The **unpadded base64url encoded name** of the processed product.
  ///
  /// Format: `accounts/{account}/products/{product}` where the last section
  /// `product` is the unpadded base64url encoding of the
  /// `content_language~feed_label~offer_id` name. Example:
  /// `accounts/123/products/ZW5-VVN-c2t1LzEyMw` for the decoded product name
  /// `accounts/123/products/en~US~sku/123`. This field can be used directly as
  /// input to the API methods that require the product name to be encoded if it
  /// contains special characters, for example
  /// \[`GetProduct`\](https://developers.google.com/merchant/api/reference/rest/products_v1/accounts.products/get).
  ///
  /// Output only.
  core.String? base64EncodedProduct;

  /// The two-letter \[ISO 639-1\](http://en.wikipedia.org/wiki/ISO_639-1)
  /// language code for the product.
  ///
  /// Required. Immutable.
  core.String? contentLanguage;

  /// A list of custom (merchant-provided) attributes.
  ///
  /// It can also be used for submitting any attribute of the data specification
  /// in its generic form (for example, `{ "name": "size type", "value":
  /// "regular" }`). This is useful for submitting attributes not explicitly
  /// exposed by the API. Maximum allowed number of characters for each custom
  /// attribute is 10240 (represents sum of characters for name and value).
  /// Maximum 2500 custom attributes can be set per product, with total size of
  /// 102.4kB. Underscores in custom attribute names are replaced by spaces upon
  /// insertion.
  ///
  /// Optional.
  core.List<CustomAttribute>? customAttributes;

  /// The feed label that lets you categorize and identify your products.
  ///
  /// The maximum allowed characters are 20, and the supported characters are
  /// `A-Z`, `0-9`, hyphen, and underscore. The feed label must not include any
  /// spaces. For more information, see \[Using feed
  /// labels\](//support.google.com/merchants/answer/14994087).
  ///
  /// Required. Immutable.
  core.String? feedLabel;

  /// Determines whether the product is **only** targeting local destinations
  /// and whether the product name should be distinguished with a `local~`
  /// prefix.
  ///
  /// For example, `accounts/123/productInputs/local~en~US~sku123`. If a product
  /// that is not `legacy_local` is already targeting local destinations,
  /// creating a `legacy_local` product with an otherwise matching name will
  /// fail.
  ///
  /// Immutable.
  core.bool? legacyLocal;

  /// Identifier.
  ///
  /// The name of the product. Format:
  /// `accounts/{account}/productInputs/{productinput}` The {productinput}
  /// segment is a unique identifier for the product. This identifier must be
  /// unique within a merchant account and generally follows the structure:
  /// `content_language~feed_label~offer_id`. Example: `en~US~sku123` For legacy
  /// local products, the structure is:
  /// `local~content_language~feed_label~offer_id`. Example:
  /// `local~en~US~sku123` The format of the {productinput} segment in the URL
  /// is automatically detected by the server, supporting two options: 1.
  /// **Encoded Format**: The `{productinput}` segment is an unpadded base64url
  /// encoded string (RFC 4648 Section 5). The decoded string must result in the
  /// `content_language~feed_label~offer_id` structure. This encoding MUST be
  /// used if any part of the product identifier (like `offer_id`) contains
  /// characters such as `/`, `%`, or `~`. * Example: To represent the product
  /// ID `en~US~sku/123`, the `{productinput}` segment must be the unpadded
  /// base64url encoding of this string, which is `ZW5-VVN-c2t1LzEyMw`. The full
  /// resource name for the product would be
  /// `accounts/123/productInputs/ZW5-VVN-c2t1LzEyMw`. 2. **Plain Format**: The
  /// `{productinput}` segment is the tilde-separated string
  /// `content_language~feed_label~offer_id`. This format is suitable only when
  /// `content_language`, `feed_label`, and `offer_id` do not contain
  /// URL-problematic characters like `/`, `%`, or `~`. We recommend using the
  /// **Encoded Format** for all product IDs to ensure correct parsing,
  /// especially those containing special characters. The presence of tilde
  /// (`~`) characters in the `{productinput}` segment is used to differentiate
  /// between the two formats.
  core.String? name;

  /// Your unique identifier for the product.
  ///
  /// This is the same for the product input and processed product. Leading and
  /// trailing whitespaces are stripped and multiple whitespaces are replaced by
  /// a single whitespace upon submission. See the
  /// [products data specification](https://support.google.com/merchants/answer/188494#id)
  /// for details.
  ///
  /// Required. Immutable.
  core.String? offerId;

  /// The name of the processed product.
  ///
  /// Format: `accounts/{account}/products/{product}`
  ///
  /// Output only.
  core.String? product;

  /// A list of strongly-typed product attributes.
  ///
  /// Optional.
  ProductAttributes? productAttributes;

  /// Represents the existing version (freshness) of the product, which can be
  /// used to preserve the right order when multiple updates are done at the
  /// same time.
  ///
  /// If set, the insertion is prevented when version number is lower than the
  /// current version number of the existing product. Re-insertion (for example,
  /// product refresh after 30 days) can be performed with the current
  /// `version_number`. Only supported for insertions into primary data sources.
  /// Do not set this field for updates. Do not set this field for insertions
  /// into supplemental data sources. If the operation is prevented, the aborted
  /// exception will be thrown.
  ///
  /// Optional. Immutable.
  core.String? versionNumber;

  ProductInput({
    this.base64EncodedName,
    this.base64EncodedProduct,
    this.contentLanguage,
    this.customAttributes,
    this.feedLabel,
    this.legacyLocal,
    this.name,
    this.offerId,
    this.product,
    this.productAttributes,
    this.versionNumber,
  });

  ProductInput.fromJson(core.Map json_)
    : this(
        base64EncodedName: json_['base64EncodedName'] as core.String?,
        base64EncodedProduct: json_['base64EncodedProduct'] as core.String?,
        contentLanguage: json_['contentLanguage'] as core.String?,
        customAttributes: (json_['customAttributes'] as core.List?)
            ?.map(
              (value) => CustomAttribute.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        feedLabel: json_['feedLabel'] as core.String?,
        legacyLocal: json_['legacyLocal'] as core.bool?,
        name: json_['name'] as core.String?,
        offerId: json_['offerId'] as core.String?,
        product: json_['product'] as core.String?,
        productAttributes: json_.containsKey('productAttributes')
            ? ProductAttributes.fromJson(
                json_['productAttributes']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        versionNumber: json_['versionNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final base64EncodedName = this.base64EncodedName;
    final base64EncodedProduct = this.base64EncodedProduct;
    final contentLanguage = this.contentLanguage;
    final customAttributes = this.customAttributes;
    final feedLabel = this.feedLabel;
    final legacyLocal = this.legacyLocal;
    final name = this.name;
    final offerId = this.offerId;
    final product = this.product;
    final productAttributes = this.productAttributes;
    final versionNumber = this.versionNumber;
    return {
      'base64EncodedName': ?base64EncodedName,
      'base64EncodedProduct': ?base64EncodedProduct,
      'contentLanguage': ?contentLanguage,
      'customAttributes': ?customAttributes,
      'feedLabel': ?feedLabel,
      'legacyLocal': ?legacyLocal,
      'name': ?name,
      'offerId': ?offerId,
      'product': ?product,
      'productAttributes': ?productAttributes,
      'versionNumber': ?versionNumber,
    };
  }
}

/// A message that represents installment.
class ProductInstallment {
  /// The amount the buyer has to pay per month.
  Price? amount;

  /// Annual percentage rate for `credit_type` finance
  ///
  /// Optional.
  core.double? annualPercentageRate;

  /// Type of installment payments.
  /// Possible string values are:
  /// - "CREDIT_TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "FINANCE" : Finance.
  /// - "LEASE" : Lease.
  core.String? creditType;

  /// The up-front down payment amount the buyer has to pay.
  Price? downpayment;

  /// The number of installments the buyer has to pay.
  core.String? months;

  /// Total amount the buyer has to pay, including interest.
  ///
  /// Optional.
  Price? totalAmount;

  ProductInstallment({
    this.amount,
    this.annualPercentageRate,
    this.creditType,
    this.downpayment,
    this.months,
    this.totalAmount,
  });

  ProductInstallment.fromJson(core.Map json_)
    : this(
        amount: json_.containsKey('amount')
            ? Price.fromJson(
                json_['amount'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        annualPercentageRate: (json_['annualPercentageRate'] as core.num?)
            ?.toDouble(),
        creditType: json_['creditType'] as core.String?,
        downpayment: json_.containsKey('downpayment')
            ? Price.fromJson(
                json_['downpayment'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        months: json_['months'] as core.String?,
        totalAmount: json_.containsKey('totalAmount')
            ? Price.fromJson(
                json_['totalAmount'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final amount = this.amount;
    final annualPercentageRate = this.annualPercentageRate;
    final creditType = this.creditType;
    final downpayment = this.downpayment;
    final months = this.months;
    final totalAmount = this.totalAmount;
    return {
      'amount': ?amount,
      'annualPercentageRate': ?annualPercentageRate,
      'creditType': ?creditType,
      'downpayment': ?downpayment,
      'months': ?months,
      'totalAmount': ?totalAmount,
    };
  }
}

/// The minimum order value in the cart before the checkout is permitted.
class ProductMinimumOrderValue {
  /// The
  /// [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
  /// of the country to which an item will ship.
  ///
  /// Required.
  core.String? country;

  /// The minimum cart or basket value before the checkout is permitted.
  ///
  /// Required.
  Price? price;

  /// A free-form description of the service class or delivery speed.
  ///
  /// This should match the service value set for the Shipping attribute. See
  /// service.
  core.String? service;

  /// The surface to which the minimum order value applies.
  ///
  /// Defaults to `ONLINE_LOCAL` if not configured.
  /// Possible string values are:
  /// - "SURFACE_UNSPECIFIED" : Surface is unspecified.
  /// - "ONLINE" : Surface value to indicate online purchases.
  /// - "LOCAL" : Surface value to indicate local purchases.
  /// - "ONLINE_LOCAL" : Surface value to indicate online and local purchases.
  core.String? surface;

  ProductMinimumOrderValue({
    this.country,
    this.price,
    this.service,
    this.surface,
  });

  ProductMinimumOrderValue.fromJson(core.Map json_)
    : this(
        country: json_['country'] as core.String?,
        price: json_.containsKey('price')
            ? Price.fromJson(
                json_['price'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        service: json_['service'] as core.String?,
        surface: json_['surface'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final country = this.country;
    final price = this.price;
    final service = this.service;
    final surface = this.surface;
    return {
      'country': ?country,
      'price': ?price,
      'service': ?service,
      'surface': ?surface,
    };
  }
}

/// The status of a product, data validation issues, that is, information about
/// a product computed asynchronously.
class ProductStatus {
  /// Date on which the item has been created, in
  /// [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format.
  core.String? creationDate;

  /// The intended destinations for the product.
  core.List<DestinationStatus>? destinationStatuses;

  /// Date on which the item expires, in
  /// [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format.
  core.String? googleExpirationDate;

  /// A list of all issues associated with the product.
  core.List<ItemLevelIssue>? itemLevelIssues;

  /// Date on which the item has been last updated, in
  /// [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format.
  core.String? lastUpdateDate;

  ProductStatus({
    this.creationDate,
    this.destinationStatuses,
    this.googleExpirationDate,
    this.itemLevelIssues,
    this.lastUpdateDate,
  });

  ProductStatus.fromJson(core.Map json_)
    : this(
        creationDate: json_['creationDate'] as core.String?,
        destinationStatuses: (json_['destinationStatuses'] as core.List?)
            ?.map(
              (value) => DestinationStatus.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        googleExpirationDate: json_['googleExpirationDate'] as core.String?,
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
    final googleExpirationDate = this.googleExpirationDate;
    final itemLevelIssues = this.itemLevelIssues;
    final lastUpdateDate = this.lastUpdateDate;
    return {
      'creationDate': ?creationDate,
      'destinationStatuses': ?destinationStatuses,
      'googleExpirationDate': ?googleExpirationDate,
      'itemLevelIssues': ?itemLevelIssues,
      'lastUpdateDate': ?lastUpdateDate,
    };
  }
}

/// Information regarding sustainability-related incentive programs such as
/// rebates or tax relief.
class ProductSustainabilityIncentive {
  /// The fixed amount of the incentive.
  Price? amount;

  /// The percentage of the sale price that the incentive is applied to.
  core.double? percentage;

  /// Sustainability incentive program.
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
        amount: json_.containsKey('amount')
            ? Price.fromJson(
                json_['amount'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        percentage: (json_['percentage'] as core.num?)?.toDouble(),
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final amount = this.amount;
    final percentage = this.percentage;
    final type = this.type;
    return {'amount': ?amount, 'percentage': ?percentage, 'type': ?type};
  }
}

/// The weight of the product.
typedef ProductWeight = $ProductWeight;

/// The question and answer for the product.
class QuestionAndAnswer {
  /// The answer text.
  ///
  /// Required.
  core.String? answer;

  /// The question text.
  ///
  /// Required.
  core.String? question;

  QuestionAndAnswer({this.answer, this.question});

  QuestionAndAnswer.fromJson(core.Map json_)
    : this(
        answer: json_['answer'] as core.String?,
        question: json_['question'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answer = this.answer;
    final question = this.question;
    return {'answer': ?answer, 'question': ?question};
  }
}

/// Specifies how other products are related to this product.
class RelatedProduct {
  /// The identifier of the related product.
  ///
  /// Required.
  core.String? id;

  /// The type of the identifier of the related product.
  ///
  /// For example, [GTIN](https://support.google.com/merchants/answer/6219078)
  /// or [product ID](https://support.google.com/merchants/answer/6324405).
  ///
  /// Required.
  /// Possible string values are:
  /// - "ID_TYPE_UNSPECIFIED" : The identifier type is unspecified.
  /// - "GTIN" : The identifier is a GTIN.
  /// - "ID" : The identifier is a product ID in the feed.
  core.String? idType;

  /// The type of the relationship between this product and the related product.
  ///
  /// Required.
  /// Possible string values are:
  /// - "RELATIONSHIP_TYPE_UNSPECIFIED" : The relationship type is unspecified.
  /// - "PART_OF_SET" : Part of a set of products that are often purchased
  /// together.
  /// - "REQUIRED_PART" : Part that is necessary for the product to function,
  /// for example a battery for a battery-operated lamp.
  /// - "OFTEN_BOUGHT_WITH" : A product that this product is often purchased
  /// together with, for example a phone case with a phone.
  /// - "SUBSTITUTE" : Product that this product can be substituted for. For
  /// example a printer comparable in function to another printer.
  /// - "DIFFERENT_BRAND" : An identical product sold under a different brand,
  /// for example a cheaper house brand.
  /// - "ACCESSORY" : An accessory to this product, for example a side table
  /// that matches the style of a couch.
  core.String? relationshipType;

  RelatedProduct({this.id, this.idType, this.relationshipType});

  RelatedProduct.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        idType: json_['idType'] as core.String?,
        relationshipType: json_['relationshipType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    final idType = this.idType;
    final relationshipType = this.relationshipType;
    return {
      'id': ?id,
      'idType': ?idType,
      'relationshipType': ?relationshipType,
    };
  }
}

/// The returns of the product.
class Returns {
  /// The
  /// [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
  /// of the countries to which an item can be returned.
  core.List<core.String>? countries;

  /// The condition the item must be in to be accepted.
  core.List<core.String>? itemConditions;

  /// The physical methods by which the item can be returned.
  core.List<core.String>? methods;

  /// The financial outcomes available for a return.
  core.List<core.String>? outcomes;

  /// The URL of the return policy.
  core.String? policyUrl;

  /// A flat restocking fee penalty.
  Price? restockingFee;

  /// A percentage restocking fee penalty.
  core.double? restockingPercentageFee;

  /// The fixed cost out-of-pocket for a customer to return an item.
  Price? shippingFee;

  /// The type of return shipping fee.
  /// Possible string values are:
  /// - "RETURN_SHIPPING_FEE_TYPE_UNSPECIFIED" : The return shipping fee type is
  /// unspecified.
  /// - "CUSTOMER_RESPONSIBILITY" : The customer is responsible for shipping
  /// costs.
  /// - "DEDUCTED_FROM_REFUND" : The shipping cost is deducted from the refund.
  core.String? shippingFeeType;

  /// The duration of the return window in days.
  core.String? windowDays;

  /// Special return window behavior.
  /// Possible string values are:
  /// - "RETURN_WINDOW_TYPE_UNSPECIFIED" : The return window type is
  /// unspecified.
  /// - "FINITE_RETURN_WINDOW" : Window with a fixed number of days. If this is
  /// set, the `window_days` field must be set.
  /// - "NO_RETURNS" : No returns accepted.
  /// - "LIFETIME" : Lifetime returns accepted.
  core.String? windowType;

  Returns({
    this.countries,
    this.itemConditions,
    this.methods,
    this.outcomes,
    this.policyUrl,
    this.restockingFee,
    this.restockingPercentageFee,
    this.shippingFee,
    this.shippingFeeType,
    this.windowDays,
    this.windowType,
  });

  Returns.fromJson(core.Map json_)
    : this(
        countries: (json_['countries'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        itemConditions: (json_['itemConditions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        methods: (json_['methods'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        outcomes: (json_['outcomes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        policyUrl: json_['policyUrl'] as core.String?,
        restockingFee: json_.containsKey('restockingFee')
            ? Price.fromJson(
                json_['restockingFee'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        restockingPercentageFee: (json_['restockingPercentageFee'] as core.num?)
            ?.toDouble(),
        shippingFee: json_.containsKey('shippingFee')
            ? Price.fromJson(
                json_['shippingFee'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        shippingFeeType: json_['shippingFeeType'] as core.String?,
        windowDays: json_['windowDays'] as core.String?,
        windowType: json_['windowType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final countries = this.countries;
    final itemConditions = this.itemConditions;
    final methods = this.methods;
    final outcomes = this.outcomes;
    final policyUrl = this.policyUrl;
    final restockingFee = this.restockingFee;
    final restockingPercentageFee = this.restockingPercentageFee;
    final shippingFee = this.shippingFee;
    final shippingFeeType = this.shippingFeeType;
    final windowDays = this.windowDays;
    final windowType = this.windowType;
    return {
      'countries': ?countries,
      'itemConditions': ?itemConditions,
      'methods': ?methods,
      'outcomes': ?outcomes,
      'policyUrl': ?policyUrl,
      'restockingFee': ?restockingFee,
      'restockingPercentageFee': ?restockingPercentageFee,
      'shippingFee': ?shippingFee,
      'shippingFeeType': ?shippingFeeType,
      'windowDays': ?windowDays,
      'windowType': ?windowType,
    };
  }
}

/// The Shipping of the product.
class Shipping {
  /// The
  /// [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
  /// of the country to which an item will ship.
  core.String? country;

  /// The handling cutoff time until which an order has to be placed to be
  /// processed in the same day.
  ///
  /// This is a string in format of HHMM (e.g. `1530`) for 3:30 PM. If not
  /// configured, the cutoff time will be defaulted to 8AM PST and
  /// `handling_cutoff_timezone` will be ignored.
  core.String? handlingCutoffTime;

  /// [Timezone identifier](https://developers.google.com/adwords/api/docs/appendix/codes-formats#timezone-ids)
  /// For example `Europe/Zurich`.
  ///
  /// This field only applies if `handling_cutoff_time` is set. If
  /// `handling_cutoff_time` is set but this field is not set, the shipping
  /// destination timezone will be used. If both fields are not set, the
  /// handling cutoff time will default to 8AM PST.
  core.String? handlingCutoffTimezone;

  /// The location where the shipping is applicable, represented by a location
  /// group name.
  core.String? locationGroupName;

  /// The numeric ID of a location that the shipping rate applies to as defined
  /// in the
  /// [AdWords API](https://developers.google.com/adwords/api/docs/appendix/geotargeting).
  core.String? locationId;

  /// The label of the
  /// [loyalty program](https://support.google.com/merchants/answer/6324484).
  ///
  /// Must match one of the program labels set in loyalty_programs. When set (in
  /// combination with
  /// [loyalty_tier_label](https://support.google.com/merchants/answer/6324484)),
  /// this shipping option is only applicable to loyalty program members of the
  /// specified tier.
  ///
  /// Optional.
  core.String? loyaltyProgramLabel;

  /// The label of the
  /// [loyalty tier](https://support.google.com/merchants/answer/6324484) within
  /// the loyalty program.
  ///
  /// Must match one of the tiers set in the loyalty_programs. When set (in
  /// combination with
  /// [loyalty_program_label](https://support.google.com/merchants/answer/6324484)),
  /// this shipping option is only applicable to loyalty program members of the
  /// specified tier.
  ///
  /// Optional.
  core.String? loyaltyTierLabel;

  /// Maximum handling time (inclusive) between when the order is received and
  /// shipped in business days.
  ///
  /// 0 means that the order is shipped on the same day as it is received if it
  /// happens before the cut-off time. Both maxHandlingTime and maxTransitTime
  /// are required if providing shipping speeds. minHandlingTime is optional if
  /// maxHandlingTime is present.
  core.String? maxHandlingTime;

  /// Maximum transit time (inclusive) between when the order has shipped and
  /// when it is delivered in business days.
  ///
  /// 0 means that the order is delivered on the same day as it ships. Both
  /// maxHandlingTime and maxTransitTime are required if providing shipping
  /// speeds. minTransitTime is optional if maxTransitTime is present.
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
  ///
  /// See [region](https://support.google.com/merchants/answer/6324484) for more
  /// information.
  core.String? region;

  /// A free-form description of the service class or delivery speed.
  core.String? service;

  Shipping({
    this.country,
    this.handlingCutoffTime,
    this.handlingCutoffTimezone,
    this.locationGroupName,
    this.locationId,
    this.loyaltyProgramLabel,
    this.loyaltyTierLabel,
    this.maxHandlingTime,
    this.maxTransitTime,
    this.minHandlingTime,
    this.minTransitTime,
    this.postalCode,
    this.price,
    this.region,
    this.service,
  });

  Shipping.fromJson(core.Map json_)
    : this(
        country: json_['country'] as core.String?,
        handlingCutoffTime: json_['handlingCutoffTime'] as core.String?,
        handlingCutoffTimezone: json_['handlingCutoffTimezone'] as core.String?,
        locationGroupName: json_['locationGroupName'] as core.String?,
        locationId: json_['locationId'] as core.String?,
        loyaltyProgramLabel: json_['loyaltyProgramLabel'] as core.String?,
        loyaltyTierLabel: json_['loyaltyTierLabel'] as core.String?,
        maxHandlingTime: json_['maxHandlingTime'] as core.String?,
        maxTransitTime: json_['maxTransitTime'] as core.String?,
        minHandlingTime: json_['minHandlingTime'] as core.String?,
        minTransitTime: json_['minTransitTime'] as core.String?,
        postalCode: json_['postalCode'] as core.String?,
        price: json_.containsKey('price')
            ? Price.fromJson(
                json_['price'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        region: json_['region'] as core.String?,
        service: json_['service'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final country = this.country;
    final handlingCutoffTime = this.handlingCutoffTime;
    final handlingCutoffTimezone = this.handlingCutoffTimezone;
    final locationGroupName = this.locationGroupName;
    final locationId = this.locationId;
    final loyaltyProgramLabel = this.loyaltyProgramLabel;
    final loyaltyTierLabel = this.loyaltyTierLabel;
    final maxHandlingTime = this.maxHandlingTime;
    final maxTransitTime = this.maxTransitTime;
    final minHandlingTime = this.minHandlingTime;
    final minTransitTime = this.minTransitTime;
    final postalCode = this.postalCode;
    final price = this.price;
    final region = this.region;
    final service = this.service;
    return {
      'country': ?country,
      'handlingCutoffTime': ?handlingCutoffTime,
      'handlingCutoffTimezone': ?handlingCutoffTimezone,
      'locationGroupName': ?locationGroupName,
      'locationId': ?locationId,
      'loyaltyProgramLabel': ?loyaltyProgramLabel,
      'loyaltyTierLabel': ?loyaltyTierLabel,
      'maxHandlingTime': ?maxHandlingTime,
      'maxTransitTime': ?maxTransitTime,
      'minHandlingTime': ?minHandlingTime,
      'minTransitTime': ?minTransitTime,
      'postalCode': ?postalCode,
      'price': ?price,
      'region': ?region,
      'service': ?service,
    };
  }
}

/// The business days during which orders are on their path to fulfillment.
///
/// If not provided, Monday to Friday business days will be assumed.
class ShippingBusinessDaysConfig {
  /// Effective days of the week considered for the delivery time calculation.
  ///
  /// May not be empty. The more business days included the faster the delivery.
  /// Can be set through individual days (e.g. `MTWRF`), or day ranges (e.g.
  /// `Mon-Fri`). For more information about accepted formats, see
  /// [Shipping handling business days](https://support.google.com/merchants/answer/16072859).
  core.String? businessDays;

  /// The
  /// [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
  /// of the country to which an item will ship.
  core.String? country;

  ShippingBusinessDaysConfig({this.businessDays, this.country});

  ShippingBusinessDaysConfig.fromJson(core.Map json_)
    : this(
        businessDays: json_['businessDays'] as core.String?,
        country: json_['country'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final businessDays = this.businessDays;
    final country = this.country;
    return {'businessDays': ?businessDays, 'country': ?country};
  }
}

/// The ShippingDimension of the product.
typedef ShippingDimension = $ShippingDimension;

/// The ShippingWeight of the product.
typedef ShippingWeight = $ShippingWeight;

/// Structured description, for algorithmically (AI)-generated descriptions.
class StructuredDescription {
  /// The description text Maximum length is 5000 characters
  core.String? content;

  /// The digital source type.
  ///
  /// Following [IPTC](https://cv.iptc.org/newscodes/digitalsourcetype).
  /// Possible string values are:
  /// - "DIGITAL_SOURCE_TYPE_UNSPECIFIED" : Digital source type is unspecified.
  /// - "TRAINED_ALGORITHMIC_MEDIA" : Text created algorithmically using a model
  /// derived from sampled content.
  /// - "DEFAULT" : Text NOT created algorithmically using a model derived from
  /// sampled content (the default)
  core.String? digitalSourceType;

  StructuredDescription({this.content, this.digitalSourceType});

  StructuredDescription.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        digitalSourceType: json_['digitalSourceType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final digitalSourceType = this.digitalSourceType;
    return {'content': ?content, 'digitalSourceType': ?digitalSourceType};
  }
}

/// Structured title, for algorithmically (AI)-generated titles.
class StructuredTitle {
  /// The title text Maximum length is 150 characters
  core.String? content;

  /// The digital source type.
  ///
  /// Following [IPTC](https://cv.iptc.org/newscodes/digitalsourcetype).
  /// Possible string values are:
  /// - "DIGITAL_SOURCE_TYPE_UNSPECIFIED" : Digital source type is unspecified.
  /// - "TRAINED_ALGORITHMIC_MEDIA" : Text created algorithmically using a model
  /// derived from sampled content.
  /// - "DEFAULT" : Text NOT created algorithmically using a model derived from
  /// sampled content (the default)
  core.String? digitalSourceType;

  StructuredTitle({this.content, this.digitalSourceType});

  StructuredTitle.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        digitalSourceType: json_['digitalSourceType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final digitalSourceType = this.digitalSourceType;
    return {'content': ?content, 'digitalSourceType': ?digitalSourceType};
  }
}

/// The SubscriptionCost of the product.
class SubscriptionCost {
  /// The amount the buyer has to pay per subscription period.
  Price? amount;

  /// The type of subscription period.
  ///
  /// Supported values are: * "`month`" * "`year`" * "`week`"
  /// Possible string values are:
  /// - "SUBSCRIPTION_PERIOD_UNSPECIFIED" : Indicates that the subscription
  /// period is unspecified.
  /// - "MONTH" : Indicates that the subscription period is month.
  /// - "YEAR" : Indicates that the subscription period is year.
  /// - "WEEK" : Indicates that the subscription period is week.
  core.String? period;

  /// The number of subscription periods the buyer has to pay.
  core.String? periodLength;

  SubscriptionCost({this.amount, this.period, this.periodLength});

  SubscriptionCost.fromJson(core.Map json_)
    : this(
        amount: json_.containsKey('amount')
            ? Price.fromJson(
                json_['amount'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        period: json_['period'] as core.String?,
        periodLength: json_['periodLength'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final amount = this.amount;
    final period = this.period;
    final periodLength = this.periodLength;
    return {
      'amount': ?amount,
      'period': ?period,
      'periodLength': ?periodLength,
    };
  }
}

/// The unit area of the property.
class UnitArea {
  /// The unit of area.
  /// Possible string values are:
  /// - "UNIT_UNSPECIFIED" : Unspecified unit.
  /// - "SQM" : Square meters.
  /// - "SQFT" : Square feet.
  core.String? unit;

  /// The area value.
  core.double? value;

  UnitArea({this.unit, this.value});

  UnitArea.fromJson(core.Map json_)
    : this(
        unit: json_['unit'] as core.String?,
        value: (json_['value'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final unit = this.unit;
    final value = this.value;
    return {'unit': ?unit, 'value': ?value};
  }
}

/// The UnitPricingBaseMeasure of the product.
typedef UnitPricingBaseMeasure = $UnitPricingBaseMeasure;

/// The UnitPricingMeasure of the product.
typedef UnitPricingMeasure = $UnitPricingMeasure;

/// Additional product variants for the product.
class VariantOption {
  /// The name of the variant.
  ///
  /// For example, "Color", "Memory", "Size", "Length"
  ///
  /// Required.
  core.String? name;

  /// The value of the variant.
  ///
  /// For example, "Red", "128GB", "XL", "100cm"
  ///
  /// Required.
  core.String? value;

  VariantOption({this.name, this.value});

  VariantOption.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final value = this.value;
    return {'name': ?name, 'value': ?value};
  }
}

/// The warranty of the vehicle.
class Warranty {
  /// The warranty duration in months.
  core.String? duration;

  /// The warranty mileage.
  Mileage? mileage;

  Warranty({this.duration, this.mileage});

  Warranty.fromJson(core.Map json_)
    : this(
        duration: json_['duration'] as core.String?,
        mileage: json_.containsKey('mileage')
            ? Mileage.fromJson(
                json_['mileage'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final duration = this.duration;
    final mileage = this.mileage;
    return {'duration': ?duration, 'mileage': ?mileage};
  }
}
