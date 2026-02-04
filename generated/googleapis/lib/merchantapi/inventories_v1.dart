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

/// Merchant API - inventories_v1
///
/// Programmatically manage your Merchant Center Accounts.
///
/// For more information, see <https://developers.google.com/merchant/api>
///
/// Create an instance of [MerchantApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsProductsResource]
///     - [AccountsProductsLocalInventoriesResource]
///     - [AccountsProductsRegionalInventoriesResource]
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

  AccountsProductsResource get products => AccountsProductsResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;
}

class AccountsProductsResource {
  final commons.ApiRequester _requester;

  AccountsProductsLocalInventoriesResource get localInventories =>
      AccountsProductsLocalInventoriesResource(_requester);
  AccountsProductsRegionalInventoriesResource get regionalInventories =>
      AccountsProductsRegionalInventoriesResource(_requester);

  AccountsProductsResource(commons.ApiRequester client) : _requester = client;
}

class AccountsProductsLocalInventoriesResource {
  final commons.ApiRequester _requester;

  AccountsProductsLocalInventoriesResource(commons.ApiRequester client)
    : _requester = client;

  /// Deletes the specified `LocalInventory` from the given product in your
  /// merchant account.
  ///
  /// It might take a up to an hour for the `LocalInventory` to be deleted from
  /// the specific product. Once you have received a successful delete response,
  /// wait for that period before attempting a delete again.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the local inventory for the given product
  /// to delete. Format:
  /// `accounts/{account}/products/{product}/localInventories/{store_code}` The
  /// `{product}` segment is a unique identifier for the product. This
  /// identifier must be unique within a merchant account and generally follows
  /// the structure: `content_language~feed_label~offer_id`. Example:
  /// `en~US~sku123` For legacy local products, the structure is:
  /// `local~content_language~feed_label~offer_id`. Example:
  /// `local~en~US~sku123` The format of the `{product}` segment in the URL is
  /// automatically detected by the server, supporting two options: 1. **Encoded
  /// Format**: The `{product}` segment is an unpadded base64url encoded string
  /// (RFC 4648 Section 5). The decoded string must result in the
  /// `content_language~feed_label~offer_id` structure. This encoding MUST be
  /// used if any part of the product identifier (like `offer_id`) contains
  /// characters such as `/`, `%`, or `~`. * Example: To represent the product
  /// ID `en~US~sku/123` for `store_code` "store123", the `{product}` segment
  /// must be the base64url encoding of this string, which is
  /// `ZW5-VVMtc2t1LzEyMw`. The full resource name for the local inventory would
  /// be `accounts/123/products/ZW5-VVMtc2t1LzEyMw/localInventories/store123`.
  /// 2. **Plain Format**: The `{product}` segment is the tilde-separated string
  /// `content_language~feed_label~offer_id`. This format is suitable only when
  /// `content_language`, `feed_label`, and `offer_id` do not contain
  /// URL-problematic characters like `/`, `%`, or `~`. We recommend using the
  /// **Encoded Format** for all product IDs to ensure correct parsing,
  /// especially those containing special characters. The presence of tilde
  /// (`~`) characters in the `{product}` segment is used to differentiate
  /// between the two formats. Note: For calls to the v1beta version, the plain
  /// format for the product segment is
  /// `channel~content_language~feed_label~offer_id`. For example, the full
  /// resource name for a local inventory at `store_code` "store123" would be:
  /// `accounts/123/products/online~en~US~sku123/localInventories/store123`.
  /// Value must have pattern
  /// `^accounts/\[^/\]+/products/\[^/\]+/localInventories/\[^/\]+$`.
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

    final url_ = 'inventories/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a `LocalInventory` resource to a product in your merchant account.
  ///
  /// Replaces the full `LocalInventory` resource if an entry with the same
  /// `storeCode` already exists for the product. It might take up to 30 minutes
  /// for the new or updated `LocalInventory` resource to appear in products.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account and product where this inventory will be
  /// inserted. Format: `accounts/{account}/products/{product}` The `{product}`
  /// segment is a unique identifier for the product. This identifier must be
  /// unique within a merchant account and generally follows the structure:
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
  /// ID `en~US~sku/123`, the `{product}` segment must be the base64url encoding
  /// of this string, which is `ZW5-VVMtc2t1LzEyMw`. The full resource name for
  /// the product would be `accounts/123/products/ZW5-VVMtc2t1LzEyMw`. 2.
  /// **Plain Format**: The `{product}` segment is the tilde-separated string
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
  /// Completes with a [LocalInventory].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LocalInventory> insert(
    LocalInventory request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'inventories/v1/' +
        core.Uri.encodeFull('$parent') +
        '/localInventories:insert';

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

  /// Lists the `LocalInventory` resources for the given product in your
  /// merchant account.
  ///
  /// The response might contain fewer items than specified by `pageSize`. If
  /// `pageToken` was returned in previous request, it can be used to obtain
  /// additional results. `LocalInventory` resources are listed per product for
  /// a given account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The `name` of the parent product to list local
  /// inventories for. Format: `accounts/{account}/products/{product}` The
  /// `{product}` segment is a unique identifier for the product. This
  /// identifier must be unique within a merchant account and generally follows
  /// the structure: `content_language~feed_label~offer_id`. Example:
  /// `en~US~sku123` For legacy local products, the structure is:
  /// `local~content_language~feed_label~offer_id`. Example:
  /// `local~en~US~sku123` The format of the `{product}` segment in the URL is
  /// automatically detected by the server, supporting two options: 1. **Encoded
  /// Format**: The `{product}` segment is an unpadded base64url encoded string
  /// (RFC 4648 Section 5). The decoded string must result in the
  /// `content_language~feed_label~offer_id` structure. This encoding MUST be
  /// used if any part of the product identifier (like `offer_id`) contains
  /// characters such as `/`, `%`, or `~`. * Example: To represent the product
  /// ID `en~US~sku/123`, the `{product}` segment must be the base64url encoding
  /// of this string, which is `ZW5-VVMtc2t1LzEyMw`. The full resource name for
  /// the product would be `accounts/123/products/ZW5-VVMtc2t1LzEyMw`. 2.
  /// **Plain Format**: The `{product}` segment is the tilde-separated string
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
  /// [pageSize] - The maximum number of `LocalInventory` resources for the
  /// given product to return. The service returns fewer than this value if the
  /// number of inventories for the given product is less that than the
  /// `pageSize`. The default value is 25000. The maximum value is 25000; If a
  /// value higher than the maximum is specified, then the `pageSize` will
  /// default to the maximum
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListLocalInventories` call. Provide the page token to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListLocalInventories` must match the call that provided the page token.
  /// The token returned as nextPageToken in the response to the previous
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLocalInventoriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocalInventoriesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'inventories/v1/' +
        core.Uri.encodeFull('$parent') +
        '/localInventories';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocalInventoriesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsProductsRegionalInventoriesResource {
  final commons.ApiRequester _requester;

  AccountsProductsRegionalInventoriesResource(commons.ApiRequester client)
    : _requester = client;

  /// Deletes the specified `RegionalInventory` resource from the given product
  /// in your merchant account.
  ///
  /// It might take up to an hour for the `RegionalInventory` to be deleted from
  /// the specific product. Once you have received a successful delete response,
  /// wait for that period before attempting a delete again.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `RegionalInventory` resource to delete.
  /// Format:
  /// `accounts/{account}/products/{product}/regionalInventories/{region}` The
  /// `{product}` segment is a unique identifier for the product. This
  /// identifier must be unique within a merchant account and generally follows
  /// the structure: `content_language~feed_label~offer_id`. Example:
  /// `en~US~sku123` For legacy local products, the structure is:
  /// `local~content_language~feed_label~offer_id`. Example:
  /// `local~en~US~sku123` The format of the `{product}` segment in the URL is
  /// automatically detected by the server, supporting two options: 1. **Encoded
  /// Format**: The `{product}` segment is an unpadded base64url encoded string
  /// (RFC 4648 Section 5). The decoded string must result in the
  /// `content_language~feed_label~offer_id` structure. This encoding MUST be
  /// used if any part of the product identifier (like `offer_id`) contains
  /// characters such as `/`, `%`, or `~`. * Example: To represent the product
  /// ID `en~US~sku/123` for `region` "region123", the `{product}` segment must
  /// be the base64url encoding of this string, which is `ZW5-VVMtc2t1LzEyMw`.
  /// The full resource name for the regional inventory would be
  /// `accounts/123/products/ZW5-VVMtc2t1LzEyMw/regionalInventories/region123`.
  /// 2. **Plain Format**: The `{product}` segment is the tilde-separated string
  /// `content_language~feed_label~offer_id`. This format is suitable only when
  /// `content_language`, `feed_label`, and `offer_id` do not contain
  /// URL-problematic characters like `/`, `%`, or `~`. We recommend using the
  /// **Encoded Format** for all product IDs to ensure correct parsing,
  /// especially those containing special characters. The presence of tilde
  /// (`~`) characters in the `{product}` segment is used to differentiate
  /// between the two formats. Note: For calls to the v1beta version, the plain
  /// format for the product segment is
  /// `channel~content_language~feed_label~offer_id`. For example, the full
  /// resource name for a regional inventory in `region` "region123" would be:
  /// `accounts/123/products/online~en~US~sku123/regionalInventories/region123`.
  /// Value must have pattern
  /// `^accounts/\[^/\]+/products/\[^/\]+/regionalInventories/\[^/\]+$`.
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

    final url_ = 'inventories/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a `RegionalInventory` to a given product in your merchant account.
  ///
  /// Replaces the full `RegionalInventory` resource if an entry with the same
  /// `region` already exists for the product. It might take up to 30 minutes
  /// for the new or updated `RegionalInventory` resource to appear in products.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account and product where this inventory will be
  /// inserted. Format: `accounts/{account}/products/{product}` The `{product}`
  /// segment is a unique identifier for the product. This identifier must be
  /// unique within a merchant account and generally follows the structure:
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
  /// ID `en~US~sku/123`, the `{product}` segment must be the base64url encoding
  /// of this string, which is `ZW5-VVMtc2t1LzEyMw`. The full resource name for
  /// the product would be `accounts/123/products/ZW5-VVMtc2t1LzEyMw`. 2.
  /// **Plain Format**: The `{product}` segment is the tilde-separated string
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
  /// Completes with a [RegionalInventory].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RegionalInventory> insert(
    RegionalInventory request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'inventories/v1/' +
        core.Uri.encodeFull('$parent') +
        '/regionalInventories:insert';

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

  /// Lists the `RegionalInventory` resources for the given product in your
  /// merchant account.
  ///
  /// The response might contain fewer items than specified by `pageSize`. If
  /// `pageToken` was returned in previous request, it can be used to obtain
  /// additional results. `RegionalInventory` resources are listed per product
  /// for a given account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The `name` of the parent product to list
  /// `RegionalInventory` resources for. Format:
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
  /// ID `en~US~sku/123`, the `{product}` segment must be the base64url encoding
  /// of this string, which is `ZW5-VVMtc2t1LzEyMw`. The full resource name for
  /// the product would be `accounts/123/products/ZW5-VVMtc2t1LzEyMw`. 2.
  /// **Plain Format**: The `{product}` segment is the tilde-separated string
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
  /// [pageSize] - The maximum number of `RegionalInventory` resources for the
  /// given product to return. The service returns fewer than this value if the
  /// number of inventories for the given product is less that than the
  /// `pageSize`. The default value is 25000. The maximum value is 100000; If a
  /// value higher than the maximum is specified, then the `pageSize` will
  /// default to the maximum.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListRegionalInventories` call. Provide the page token to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListRegionalInventories` must match the call that provided the page
  /// token. The token returned as nextPageToken in the response to the previous
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRegionalInventoriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRegionalInventoriesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'inventories/v1/' +
        core.Uri.encodeFull('$parent') +
        '/regionalInventories';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRegionalInventoriesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Represents a time interval, encoded as a Timestamp start (inclusive) and a
/// Timestamp end (exclusive).
///
/// The start must be less than or equal to the end. When the start equals the
/// end, the interval is empty (matches no time). When both start and end are
/// unspecified, the interval matches any time.
typedef Interval = $Interval;

/// A message that represents loyalty program.
class InventoryLoyaltyProgram {
  /// The cashback that can be used for future purchases.
  Price? cashbackForFutureUse;

  /// The amount of loyalty points earned on a purchase.
  core.String? loyaltyPoints;

  /// A date range during which the item is eligible for member price.
  ///
  /// If not specified, the member price is always applicable. The date range is
  /// represented by a pair of ISO 8601 dates separated by a space, comma, or
  /// slash.
  Interval? memberPriceEffectiveInterval;

  /// The price for members of the given tier, that is, the instant discount
  /// price.
  ///
  /// Must be smaller or equal to the regular price.
  Price? price;

  /// The label of the loyalty program.
  ///
  /// This is an internal label that uniquely identifies the relationship
  /// between a business entity and a loyalty program entity. The label must be
  /// provided if there are multiple loyalty programs available for the
  /// merchant, so that the system can associate the assets below (for example,
  /// price and points) with the correct business. The corresponding program
  /// must be linked to the Merchant Center account.
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

  InventoryLoyaltyProgram({
    this.cashbackForFutureUse,
    this.loyaltyPoints,
    this.memberPriceEffectiveInterval,
    this.price,
    this.programLabel,
    this.shippingLabel,
    this.tierLabel,
  });

  InventoryLoyaltyProgram.fromJson(core.Map json_)
    : this(
        cashbackForFutureUse:
            json_.containsKey('cashbackForFutureUse')
                ? Price.fromJson(
                  json_['cashbackForFutureUse']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        loyaltyPoints: json_['loyaltyPoints'] as core.String?,
        memberPriceEffectiveInterval:
            json_.containsKey('memberPriceEffectiveInterval')
                ? Interval.fromJson(
                  json_['memberPriceEffectiveInterval']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
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
    if (memberPriceEffectiveInterval != null)
      'memberPriceEffectiveInterval': memberPriceEffectiveInterval!,
    if (price != null) 'price': price!,
    if (programLabel != null) 'programLabel': programLabel!,
    if (shippingLabel != null) 'shippingLabel': shippingLabel!,
    if (tierLabel != null) 'tierLabel': tierLabel!,
  };
}

/// Response message for the `ListLocalInventories` method.
class ListLocalInventoriesResponse {
  /// The `LocalInventory` resources for the given product from the specified
  /// account.
  core.List<LocalInventory>? localInventories;

  /// A token, which can be sent as `pageToken` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListLocalInventoriesResponse({this.localInventories, this.nextPageToken});

  ListLocalInventoriesResponse.fromJson(core.Map json_)
    : this(
        localInventories:
            (json_['localInventories'] as core.List?)
                ?.map(
                  (value) => LocalInventory.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (localInventories != null) 'localInventories': localInventories!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for the `ListRegionalInventories` method.
class ListRegionalInventoriesResponse {
  /// A token, which can be sent as `pageToken` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The `RegionalInventory` resources for the given product from the specified
  /// account.
  core.List<RegionalInventory>? regionalInventories;

  ListRegionalInventoriesResponse({
    this.nextPageToken,
    this.regionalInventories,
  });

  ListRegionalInventoriesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        regionalInventories:
            (json_['regionalInventories'] as core.List?)
                ?.map(
                  (value) => RegionalInventory.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (regionalInventories != null)
      'regionalInventories': regionalInventories!,
  };
}

/// Local inventory information for the product.
///
/// Represents in-store information for a specific product at the store
/// specified by `storeCode`. For a list of all accepted attribute values, see
/// the
/// [local product inventory data specification](https://support.google.com/merchants/answer/3061342).
class LocalInventory {
  /// The account that owns the product.
  ///
  /// This field will be ignored if set by the client.
  ///
  /// Output only.
  core.String? account;

  /// A list of local inventory attributes.
  ///
  /// Optional.
  LocalInventoryAttributes? localInventoryAttributes;

  /// The name of the `LocalInventory` resource.
  ///
  /// Format:
  /// `accounts/{account}/products/{product}/localInventories/{store_code}` The
  /// `{product}` segment is a unique identifier for the product. This
  /// identifier must be unique within a merchant account and generally follows
  /// the structure: `content_language~feed_label~offer_id`. Example:
  /// `en~US~sku123` For legacy local products, the structure is:
  /// `local~content_language~feed_label~offer_id`. Example:
  /// `local~en~US~sku123` The format of the `{product}` segment in the URL is
  /// automatically detected by the server, supporting two options: 1. **Encoded
  /// Format**: The `{product}` segment is an unpadded base64url encoded string
  /// (RFC 4648 Section 5). The decoded string must result in the
  /// `content_language~feed_label~offer_id` structure. This encoding MUST be
  /// used if any part of the product identifier (like `offer_id`) contains
  /// characters such as `/`, `%`, or `~`. * Example: To represent the product
  /// ID `en~US~sku/123` for `store_code` "store123", the `{product}` segment
  /// must be the base64url encoding of this string, which is
  /// `ZW5-VVMtc2t1LzEyMw`. The full resource name for the local inventory would
  /// be `accounts/123/products/ZW5-VVMtc2t1LzEyMw/localInventories/store123`.
  /// 2. **Plain Format**: The `{product}` segment is the tilde-separated string
  /// `content_language~feed_label~offer_id`. This format is suitable only when
  /// `content_language`, `feed_label`, and `offer_id` do not contain
  /// URL-problematic characters like `/`, `%`, or `~`. We recommend using the
  /// **Encoded Format** for all product IDs to ensure correct parsing,
  /// especially those containing special characters. The presence of tilde
  /// (`~`) characters in the `{product}` segment is used to differentiate
  /// between the two formats. Note: For calls to the v1beta version, the plain
  /// format for the product segment is
  /// `channel~content_language~feed_label~offer_id`. For example, the full
  /// resource name for a local inventory at `store_code` "store123" would be:
  /// `accounts/123/products/online~en~US~sku123/localInventories/store123`.
  ///
  /// Output only.
  core.String? name;

  /// Store code (the store ID from your Business Profile) of the physical store
  /// the product is sold in.
  ///
  /// See the
  /// [Local product inventory data specification](https://support.google.com/merchants/answer/3061342)
  /// for more information.
  ///
  /// Required. Immutable.
  core.String? storeCode;

  LocalInventory({
    this.account,
    this.localInventoryAttributes,
    this.name,
    this.storeCode,
  });

  LocalInventory.fromJson(core.Map json_)
    : this(
        account: json_['account'] as core.String?,
        localInventoryAttributes:
            json_.containsKey('localInventoryAttributes')
                ? LocalInventoryAttributes.fromJson(
                  json_['localInventoryAttributes']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        storeCode: json_['storeCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (account != null) 'account': account!,
    if (localInventoryAttributes != null)
      'localInventoryAttributes': localInventoryAttributes!,
    if (name != null) 'name': name!,
    if (storeCode != null) 'storeCode': storeCode!,
  };
}

/// Local inventory attributes.
class LocalInventoryAttributes {
  /// [Availability](https://support.google.com/merchants/answer/3061342) of the
  /// product at this store.
  /// Possible string values are:
  /// - "LOCAL_INVENTORY_AVAILABILITY_UNSPECIFIED" : Indicates that the
  /// availability is unspecified.
  /// - "IN_STOCK" : Indicates that the product is in stock.
  /// - "LIMITED_AVAILABILITY" : Indicates that the product is out of stock.
  /// - "ON_DISPLAY_TO_ORDER" : Indicates that the product is on display to
  /// order.
  /// - "OUT_OF_STOCK" : Indicates that the product is out of stock.
  core.String? availability;

  /// Location of the product inside the store.
  ///
  /// Maximum length is 20 bytes.
  ///
  /// Optional.
  core.String? instoreProductLocation;

  /// An optional list of loyalty programs containing applicable loyalty member
  /// prices for this product at this store.
  ///
  /// This field is used to show store-specific member prices on Local Inventory
  /// Ads (LIA). To use this, the loyalty program must be configured in Google
  /// Merchant Center. The benefits provided must match the merchant's website
  /// and be clear to members. This is only applicable for merchants in
  /// supported countries. See
  /// [Loyalty program](https://support.google.com/merchants/answer/12922446)
  /// for details on supported countries and loyalty program configuration. For
  /// local inventory specific details, see the
  /// [Local inventory data specification](https://support.google.com/merchants/answer/3061342).
  ///
  /// Optional.
  core.List<InventoryLoyaltyProgram>? loyaltyPrograms;

  /// Supported
  /// [pickup method](https://support.google.com/merchants/answer/3061342) for
  /// this product.
  ///
  /// Unless the value is `"not supported"`, this field must be submitted
  /// together with `pickupSla`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PICKUP_METHOD_UNSPECIFIED" : Indicates that the pickup method is
  /// unspecified.
  /// - "BUY" : Indicates that the pickup method is Buy.
  /// - "RESERVE" : Indicates that the pickup method is Reserve.
  /// - "SHIP_TO_STORE" : Indicates that the pickup method is Ship to store.
  /// - "NOT_SUPPORTED" : Indicates that the pickup method is not supported.
  core.String? pickupMethod;

  /// Relative time period from the order date for an order for this product,
  /// from this store, to be ready for pickup.
  ///
  /// Must be submitted with `pickupMethod`. See more details
  /// [here](https://support.google.com/merchants/answer/3061342).
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PICKUP_SLA_UNSPECIFIED" : Indicates that the pickup SLA is unspecified.
  /// - "SAME_DAY" : Indicates that the pickup SLA is same day.
  /// - "NEXT_DAY" : Indicates that the pickup SLA is next day.
  /// - "TWO_DAY" : Indicates that the pickup SLA is two days.
  /// - "THREE_DAY" : Indicates that the pickup SLA is three days.
  /// - "FOUR_DAY" : Indicates that the pickup SLA is four days.
  /// - "FIVE_DAY" : Indicates that the pickup SLA is five days.
  /// - "SIX_DAY" : Indicates that the pickup SLA is six days.
  /// - "SEVEN_DAY" : Indicates that the pickup SLA is seven days.
  /// - "MULTI_WEEK" : Indicates that the pickup SLA is multi-week.
  core.String? pickupSla;

  /// Price of the product at this store.
  ///
  /// Optional.
  Price? price;

  /// Quantity of the product available at this store.
  ///
  /// Must be greater than or equal to zero.
  ///
  /// Optional.
  core.String? quantity;

  /// Sale price of the product at this store.
  ///
  /// Mandatory if `salePriceEffectiveDate` is defined.
  ///
  /// Optional.
  Price? salePrice;

  /// The `TimePeriod` of the sale at this store.
  ///
  /// Optional.
  Interval? salePriceEffectiveDate;

  LocalInventoryAttributes({
    this.availability,
    this.instoreProductLocation,
    this.loyaltyPrograms,
    this.pickupMethod,
    this.pickupSla,
    this.price,
    this.quantity,
    this.salePrice,
    this.salePriceEffectiveDate,
  });

  LocalInventoryAttributes.fromJson(core.Map json_)
    : this(
        availability: json_['availability'] as core.String?,
        instoreProductLocation: json_['instoreProductLocation'] as core.String?,
        loyaltyPrograms:
            (json_['loyaltyPrograms'] as core.List?)
                ?.map(
                  (value) => InventoryLoyaltyProgram.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        pickupMethod: json_['pickupMethod'] as core.String?,
        pickupSla: json_['pickupSla'] as core.String?,
        price:
            json_.containsKey('price')
                ? Price.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        quantity: json_['quantity'] as core.String?,
        salePrice:
            json_.containsKey('salePrice')
                ? Price.fromJson(
                  json_['salePrice'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        salePriceEffectiveDate:
            json_.containsKey('salePriceEffectiveDate')
                ? Interval.fromJson(
                  json_['salePriceEffectiveDate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (availability != null) 'availability': availability!,
    if (instoreProductLocation != null)
      'instoreProductLocation': instoreProductLocation!,
    if (loyaltyPrograms != null) 'loyaltyPrograms': loyaltyPrograms!,
    if (pickupMethod != null) 'pickupMethod': pickupMethod!,
    if (pickupSla != null) 'pickupSla': pickupSla!,
    if (price != null) 'price': price!,
    if (quantity != null) 'quantity': quantity!,
    if (salePrice != null) 'salePrice': salePrice!,
    if (salePriceEffectiveDate != null)
      'salePriceEffectiveDate': salePriceEffectiveDate!,
  };
}

/// The price represented as a number and currency.
typedef Price = $Price;

/// Regional inventory information for the product.
///
/// Represents specific information like price and availability for a given
/// product in a specific `region`. For a list of all accepted attribute values,
/// see the
/// [regional product inventory data specification](https://support.google.com/merchants/answer/9698880).
class RegionalInventory {
  /// The account that owns the product.
  ///
  /// This field will be ignored if set by the client.
  ///
  /// Output only.
  core.String? account;

  /// The name of the `RegionalInventory` resource.
  ///
  /// Format:
  /// `accounts/{account}/products/{product}/regionalInventories/{region}` The
  /// `{product}` segment is a unique identifier for the product. This
  /// identifier must be unique within a merchant account and generally follows
  /// the structure: `content_language~feed_label~offer_id`. Example:
  /// `en~US~sku123` For legacy local products, the structure is:
  /// `local~content_language~feed_label~offer_id`. Example:
  /// `local~en~US~sku123` The format of the `{product}` segment in the URL is
  /// automatically detected by the server, supporting two options: 1. **Encoded
  /// Format**: The `{product}` segment is an unpadded base64url encoded string
  /// (RFC 4648 Section 5). The decoded string must result in the
  /// `content_language~feed_label~offer_id` structure. This encoding MUST be
  /// used if any part of the product identifier (like `offer_id`) contains
  /// characters such as `/`, `%`, or `~`. * Example: To represent the product
  /// ID `en~US~sku/123` for `region` "region123", the `{product}` segment must
  /// be the base64url encoding of this string, which is `ZW5-VVMtc2t1LzEyMw`.
  /// The full resource name for the regional inventory would be
  /// `accounts/123/products/ZW5-VVMtc2t1LzEyMw/regionalInventories/region123`.
  /// 2. **Plain Format**: The `{product}` segment is the tilde-separated string
  /// `content_language~feed_label~offer_id`. This format is suitable only when
  /// `content_language`, `feed_label`, and `offer_id` do not contain
  /// URL-problematic characters like `/`, `%`, or `~`. We recommend using the
  /// **Encoded Format** for all product IDs to ensure correct parsing,
  /// especially those containing special characters. The presence of tilde
  /// (`~`) characters in the `{product}` segment is used to differentiate
  /// between the two formats. Note: For calls to the v1beta version, the plain
  /// format for the product segment is
  /// `channel~content_language~feed_label~offer_id`. For example, the full
  /// resource name for a regional inventory in `region` "region123" would be:
  /// `accounts/123/products/online~en~US~sku123/regionalInventories/region123`.
  ///
  /// Output only.
  core.String? name;

  /// ID of the region for this `RegionalInventory` resource.
  ///
  /// See the
  /// [Regional availability and pricing](https://support.google.com/merchants/answer/9698880)
  /// for more details.
  ///
  /// Required. Immutable.
  core.String? region;

  /// A list of regional inventory attributes.
  ///
  /// Optional.
  RegionalInventoryAttributes? regionalInventoryAttributes;

  RegionalInventory({
    this.account,
    this.name,
    this.region,
    this.regionalInventoryAttributes,
  });

  RegionalInventory.fromJson(core.Map json_)
    : this(
        account: json_['account'] as core.String?,
        name: json_['name'] as core.String?,
        region: json_['region'] as core.String?,
        regionalInventoryAttributes:
            json_.containsKey('regionalInventoryAttributes')
                ? RegionalInventoryAttributes.fromJson(
                  json_['regionalInventoryAttributes']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (account != null) 'account': account!,
    if (name != null) 'name': name!,
    if (region != null) 'region': region!,
    if (regionalInventoryAttributes != null)
      'regionalInventoryAttributes': regionalInventoryAttributes!,
  };
}

/// Regional inventory attributes.
class RegionalInventoryAttributes {
  /// [Availability](https://support.google.com/merchants/answer/14644124) of
  /// the product in this region.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "REGIONAL_INVENTORY_AVAILABILITY_UNSPECIFIED" : Indicates that the
  /// availability is unspecified.
  /// - "IN_STOCK" : Indicates that the product is in stock.
  /// - "OUT_OF_STOCK" : Indicates that the product is out of stock.
  core.String? availability;

  /// An optional list of loyalty programs containing applicable loyalty member
  /// prices for this product in this region.
  ///
  /// This field is used to show region-specific member prices on Product
  /// Listing Ads (PLA). To use this, the loyalty program must be configured in
  /// Google Merchant Center, and the merchant must be using the Regional
  /// Availability and Pricing (RAAP) feature. The benefits provided must match
  /// the merchant's website and be clear to members. This is only applicable
  /// for merchants in supported countries. See
  /// [Loyalty program](https://support.google.com/merchants/answer/12922446)
  /// for details on supported countries and loyalty program configuration. Also
  /// see
  /// [Regional availability and pricing](https://support.google.com/merchants/answer/14644124)
  /// and
  /// [How to set up regional member pricing](https://support.google.com/merchants/answer/16388178)
  /// for more information.
  ///
  /// Optional.
  core.List<InventoryLoyaltyProgram>? loyaltyPrograms;

  /// Price of the product in this region.
  ///
  /// Optional.
  Price? price;

  /// Sale price of the product in this region.
  ///
  /// Mandatory if `salePriceEffectiveDate` is defined.
  ///
  /// Optional.
  Price? salePrice;

  /// The `TimePeriod` of the sale price in this region.
  ///
  /// Optional.
  Interval? salePriceEffectiveDate;

  RegionalInventoryAttributes({
    this.availability,
    this.loyaltyPrograms,
    this.price,
    this.salePrice,
    this.salePriceEffectiveDate,
  });

  RegionalInventoryAttributes.fromJson(core.Map json_)
    : this(
        availability: json_['availability'] as core.String?,
        loyaltyPrograms:
            (json_['loyaltyPrograms'] as core.List?)
                ?.map(
                  (value) => InventoryLoyaltyProgram.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        price:
            json_.containsKey('price')
                ? Price.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        salePrice:
            json_.containsKey('salePrice')
                ? Price.fromJson(
                  json_['salePrice'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        salePriceEffectiveDate:
            json_.containsKey('salePriceEffectiveDate')
                ? Interval.fromJson(
                  json_['salePriceEffectiveDate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (availability != null) 'availability': availability!,
    if (loyaltyPrograms != null) 'loyaltyPrograms': loyaltyPrograms!,
    if (price != null) 'price': price!,
    if (salePrice != null) 'salePrice': salePrice!,
    if (salePriceEffectiveDate != null)
      'salePriceEffectiveDate': salePriceEffectiveDate!,
  };
}
