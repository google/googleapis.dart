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

/// Merchant API - inventories_v1beta
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
  /// `accounts/{account}/products/{product}/localInventories/{store_code}`
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

    final url_ = 'inventories/v1beta/' + core.Uri.encodeFull('$name');

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
  /// inserted. Format: `accounts/{account}/products/{product}`
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
        'inventories/v1beta/' +
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
  /// inventories for. Format: `accounts/{account}/products/{product}`
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
        'inventories/v1beta/' +
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
  /// `accounts/{account}/products/{product}/regionalInventories/{region}`
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

    final url_ = 'inventories/v1beta/' + core.Uri.encodeFull('$name');

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
  /// inserted. Format: `accounts/{account}/products/{product}`
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
        'inventories/v1beta/' +
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
  /// `accounts/{account}/products/{product}`
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
        'inventories/v1beta/' +
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
typedef Interval = $Interval00;

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

  /// Availability of the product at this store.
  ///
  /// For accepted attribute values, see the
  /// [local product inventory data specification](https://support.google.com/merchants/answer/3061342)
  core.String? availability;

  /// A list of custom (merchant-provided) attributes.
  ///
  /// You can also use `CustomAttribute` to submit any attribute of the data
  /// specification in its generic form.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<CustomAttribute>? customAttributes;

  /// Location of the product inside the store.
  ///
  /// Maximum length is 20 bytes.
  core.String? instoreProductLocation;

  /// The name of the `LocalInventory` resource.
  ///
  /// Format:
  /// `accounts/{account}/products/{product}/localInventories/{store_code}`
  ///
  /// Output only.
  core.String? name;

  /// Supported pickup method for this product.
  ///
  /// Unless the value is `"not supported"`, this field must be submitted
  /// together with `pickupSla`. For accepted attribute values, see the
  /// [local product inventory data specification](https://support.google.com/merchants/answer/3061342)
  core.String? pickupMethod;

  /// Relative time period from the order date for an order for this product,
  /// from this store, to be ready for pickup.
  ///
  /// Must be submitted with `pickupMethod`. For accepted attribute values, see
  /// the
  /// [local product inventory data specification](https://support.google.com/merchants/answer/3061342)
  core.String? pickupSla;

  /// Price of the product at this store.
  ///
  /// Optional.
  Price? price;

  /// Quantity of the product available at this store.
  ///
  /// Must be greater than or equal to zero.
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
    this.availability,
    this.customAttributes,
    this.instoreProductLocation,
    this.name,
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
        account: json_['account'] as core.String?,
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
        name: json_['name'] as core.String?,
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
        storeCode: json_['storeCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (account != null) 'account': account!,
    if (availability != null) 'availability': availability!,
    if (customAttributes != null) 'customAttributes': customAttributes!,
    if (instoreProductLocation != null)
      'instoreProductLocation': instoreProductLocation!,
    if (name != null) 'name': name!,
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

  /// Availability of the product in this region.
  ///
  /// For accepted attribute values, see the
  /// [regional product inventory data specification](https://support.google.com/merchants/answer/14644124).
  core.String? availability;

  /// A list of custom (merchant-provided) attributes.
  ///
  /// You can also use `CustomAttribute` to submit any attribute of the data
  /// specification in its generic form.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<CustomAttribute>? customAttributes;

  /// The name of the `RegionalInventory` resource.
  ///
  /// Format:
  /// `{regional_inventory.name=accounts/{account}/products/{product}/regionalInventories/{region}`
  ///
  /// Output only.
  core.String? name;

  /// Price of the product in this region.
  ///
  /// Optional.
  Price? price;

  /// ID of the region for this `RegionalInventory` resource.
  ///
  /// See the
  /// [Regional availability and pricing](https://support.google.com/merchants/answer/9698880)
  /// for more details.
  ///
  /// Required. Immutable.
  core.String? region;

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

  RegionalInventory({
    this.account,
    this.availability,
    this.customAttributes,
    this.name,
    this.price,
    this.region,
    this.salePrice,
    this.salePriceEffectiveDate,
  });

  RegionalInventory.fromJson(core.Map json_)
    : this(
        account: json_['account'] as core.String?,
        availability: json_['availability'] as core.String?,
        customAttributes:
            (json_['customAttributes'] as core.List?)
                ?.map(
                  (value) => CustomAttribute.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        price:
            json_.containsKey('price')
                ? Price.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        region: json_['region'] as core.String?,
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
    if (account != null) 'account': account!,
    if (availability != null) 'availability': availability!,
    if (customAttributes != null) 'customAttributes': customAttributes!,
    if (name != null) 'name': name!,
    if (price != null) 'price': price!,
    if (region != null) 'region': region!,
    if (salePrice != null) 'salePrice': salePrice!,
    if (salePriceEffectiveDate != null)
      'salePriceEffectiveDate': salePriceEffectiveDate!,
  };
}
