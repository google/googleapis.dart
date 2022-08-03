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

/// Manufacturer Center API - v1
///
/// Public API for managing Manufacturer Center related data.
///
/// For more information, see <https://developers.google.com/manufacturers/>
///
/// Create an instance of [ManufacturerCenterApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsProductsResource]
library manufacturers.v1;

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

/// Public API for managing Manufacturer Center related data.
class ManufacturerCenterApi {
  /// Manage your product listings for Google Manufacturer Center
  static const manufacturercenterScope =
      'https://www.googleapis.com/auth/manufacturercenter';

  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);

  ManufacturerCenterApi(http.Client client,
      {core.String rootUrl = 'https://manufacturers.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsProductsResource get products => AccountsProductsResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;
}

class AccountsProductsResource {
  final commons.ApiRequester _requester;

  AccountsProductsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes the product from a Manufacturer Center account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent ID in the format `accounts/{account_id}`. `account_id` -
  /// The ID of the Manufacturer Center account.
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [name] - Name in the format
  /// `{target_country}:{content_language}:{product_id}`. `target_country` - The
  /// target country of the product as a CLDR territory code (for example, US).
  /// `content_language` - The content language of the product as a two-letter
  /// ISO 639-1 language code (for example, en). `product_id` - The ID of the
  /// product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#id.
  /// Value must have pattern `^\[^/\]+$`.
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
    core.String parent,
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/products/' +
        core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the product from a Manufacturer Center account, including product
  /// issues.
  ///
  /// A recently updated product takes around 15 minutes to process. Changes are
  /// only visible after it has been processed. While some issues may be
  /// available once the product has been processed, other issues may take days
  /// to appear.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent ID in the format `accounts/{account_id}`. `account_id` -
  /// The ID of the Manufacturer Center account.
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [name] - Name in the format
  /// `{target_country}:{content_language}:{product_id}`. `target_country` - The
  /// target country of the product as a CLDR territory code (for example, US).
  /// `content_language` - The content language of the product as a two-letter
  /// ISO 639-1 language code (for example, en). `product_id` - The ID of the
  /// product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#id.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [include] - The information to be included in the response. Only sections
  /// listed here will be returned.
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
    core.String parent,
    core.String name, {
    core.List<core.String>? include,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (include != null) 'include': include,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/products/' +
        core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Product.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the products in a Manufacturer Center account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent ID in the format `accounts/{account_id}`. `account_id` -
  /// The ID of the Manufacturer Center account.
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [include] - The information to be included in the response. Only sections
  /// listed here will be returned.
  ///
  /// [pageSize] - Maximum number of product statuses to return in the response,
  /// used for paging.
  ///
  /// [pageToken] - The token returned by the previous request.
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
    core.List<core.String>? include,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (include != null) 'include': include,
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/products';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListProductsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts or updates the attributes of the product in a Manufacturer Center
  /// account.
  ///
  /// Creates a product with the provided attributes. If the product already
  /// exists, then all attributes are replaced with the new ones. The checks at
  /// upload time are minimal. All required attributes need to be present for a
  /// product to be valid. Issues may show up later after the API has accepted a
  /// new upload for a product and it is possible to overwrite an existing valid
  /// product with an invalid product. To detect this, you should retrieve the
  /// product and check it for issues once the new version is available.
  /// Uploaded attributes first need to be processed before they can be
  /// retrieved. Until then, new products will be unavailable, and retrieval of
  /// previously uploaded products will return the original state of the
  /// product.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent ID in the format `accounts/{account_id}`. `account_id` -
  /// The ID of the Manufacturer Center account.
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [name] - Name in the format
  /// `{target_country}:{content_language}:{product_id}`. `target_country` - The
  /// target country of the product as a CLDR territory code (for example, US).
  /// `content_language` - The content language of the product as a two-letter
  /// ISO 639-1 language code (for example, en). `product_id` - The ID of the
  /// product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#id.
  /// Value must have pattern `^\[^/\]+$`.
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
  async.Future<Empty> update(
    Attributes request,
    core.String parent,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/products/' +
        core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Attributes of the product.
///
/// For more information, see
/// https://support.google.com/manufacturers/answer/6124116.
class Attributes {
  /// The additional images of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#addlimage.
  core.List<Image>? additionalImageLink;

  /// The target age group of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#agegroup.
  core.String? ageGroup;

  /// The brand name of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#brand.
  core.String? brand;

  /// The capacity of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#capacity.
  Capacity? capacity;

  /// The color of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#color.
  core.String? color;

  /// The count of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#count.
  Count? count;

  /// The description of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#description.
  core.String? description;

  /// The disclosure date of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#disclosure.
  core.String? disclosureDate;

  /// A list of excluded destinations such as "ClientExport",
  /// "ClientShoppingCatalog" or "PartnerShoppingCatalog".
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/7443550
  core.List<core.String>? excludedDestination;

  /// The rich format description of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#featuredesc.
  core.List<FeatureDescription>? featureDescription;

  /// The flavor of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#flavor.
  core.String? flavor;

  /// The format of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#format.
  core.String? format;

  /// The target gender of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#gender.
  core.String? gender;

  /// The Global Trade Item Number (GTIN) of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#gtin.
  core.List<core.String>? gtin;

  /// The image of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#image.
  Image? imageLink;

  /// A list of included destinations such as "ClientExport",
  /// "ClientShoppingCatalog" or "PartnerShoppingCatalog".
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/7443550
  core.List<core.String>? includedDestination;

  /// The item group id of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#itemgroupid.
  core.String? itemGroupId;

  /// The material of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#material.
  core.String? material;

  /// The Manufacturer Part Number (MPN) of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#mpn.
  core.String? mpn;

  /// The pattern of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#pattern.
  core.String? pattern;

  /// The details of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#productdetail.
  core.List<ProductDetail>? productDetail;

  /// The product highlights.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/10066942
  core.List<core.String>? productHighlight;

  /// The name of the group of products related to the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#productline.
  core.String? productLine;

  /// The canonical name of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#productname.
  core.String? productName;

  /// The URL of the detail page of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#productpage.
  core.String? productPageUrl;

  /// The type or category of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#producttype.
  core.List<core.String>? productType;

  /// The release date of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#release.
  core.String? releaseDate;

  /// Rich product content.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/9389865
  core.List<core.String>? richProductContent;

  /// The scent of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#scent.
  core.String? scent;

  /// The size of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#size.
  core.String? size;

  /// The size system of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#sizesystem.
  core.String? sizeSystem;

  /// The size type of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#sizetype.
  core.List<core.String>? sizeType;

  /// The suggested retail price (MSRP) of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#price.
  Price? suggestedRetailPrice;

  /// The target client id.
  ///
  /// Should only be used in the accounts of the data partners. For more
  /// information, see https://support.google.com/manufacturers/answer/10857344
  core.String? targetClientId;

  /// The theme of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#theme.
  core.String? theme;

  /// The title of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#title.
  core.String? title;

  /// The videos of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#video.
  core.List<core.String>? videoLink;

  Attributes({
    this.additionalImageLink,
    this.ageGroup,
    this.brand,
    this.capacity,
    this.color,
    this.count,
    this.description,
    this.disclosureDate,
    this.excludedDestination,
    this.featureDescription,
    this.flavor,
    this.format,
    this.gender,
    this.gtin,
    this.imageLink,
    this.includedDestination,
    this.itemGroupId,
    this.material,
    this.mpn,
    this.pattern,
    this.productDetail,
    this.productHighlight,
    this.productLine,
    this.productName,
    this.productPageUrl,
    this.productType,
    this.releaseDate,
    this.richProductContent,
    this.scent,
    this.size,
    this.sizeSystem,
    this.sizeType,
    this.suggestedRetailPrice,
    this.targetClientId,
    this.theme,
    this.title,
    this.videoLink,
  });

  Attributes.fromJson(core.Map json_)
      : this(
          additionalImageLink: json_.containsKey('additionalImageLink')
              ? (json_['additionalImageLink'] as core.List)
                  .map((value) => Image.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          ageGroup: json_.containsKey('ageGroup')
              ? json_['ageGroup'] as core.String
              : null,
          brand:
              json_.containsKey('brand') ? json_['brand'] as core.String : null,
          capacity: json_.containsKey('capacity')
              ? Capacity.fromJson(
                  json_['capacity'] as core.Map<core.String, core.dynamic>)
              : null,
          color:
              json_.containsKey('color') ? json_['color'] as core.String : null,
          count: json_.containsKey('count')
              ? Count.fromJson(
                  json_['count'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          disclosureDate: json_.containsKey('disclosureDate')
              ? json_['disclosureDate'] as core.String
              : null,
          excludedDestination: json_.containsKey('excludedDestination')
              ? (json_['excludedDestination'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          featureDescription: json_.containsKey('featureDescription')
              ? (json_['featureDescription'] as core.List)
                  .map((value) => FeatureDescription.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          flavor: json_.containsKey('flavor')
              ? json_['flavor'] as core.String
              : null,
          format: json_.containsKey('format')
              ? json_['format'] as core.String
              : null,
          gender: json_.containsKey('gender')
              ? json_['gender'] as core.String
              : null,
          gtin: json_.containsKey('gtin')
              ? (json_['gtin'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          imageLink: json_.containsKey('imageLink')
              ? Image.fromJson(
                  json_['imageLink'] as core.Map<core.String, core.dynamic>)
              : null,
          includedDestination: json_.containsKey('includedDestination')
              ? (json_['includedDestination'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          itemGroupId: json_.containsKey('itemGroupId')
              ? json_['itemGroupId'] as core.String
              : null,
          material: json_.containsKey('material')
              ? json_['material'] as core.String
              : null,
          mpn: json_.containsKey('mpn') ? json_['mpn'] as core.String : null,
          pattern: json_.containsKey('pattern')
              ? json_['pattern'] as core.String
              : null,
          productDetail: json_.containsKey('productDetail')
              ? (json_['productDetail'] as core.List)
                  .map((value) => ProductDetail.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          productHighlight: json_.containsKey('productHighlight')
              ? (json_['productHighlight'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          productLine: json_.containsKey('productLine')
              ? json_['productLine'] as core.String
              : null,
          productName: json_.containsKey('productName')
              ? json_['productName'] as core.String
              : null,
          productPageUrl: json_.containsKey('productPageUrl')
              ? json_['productPageUrl'] as core.String
              : null,
          productType: json_.containsKey('productType')
              ? (json_['productType'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          releaseDate: json_.containsKey('releaseDate')
              ? json_['releaseDate'] as core.String
              : null,
          richProductContent: json_.containsKey('richProductContent')
              ? (json_['richProductContent'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          scent:
              json_.containsKey('scent') ? json_['scent'] as core.String : null,
          size: json_.containsKey('size') ? json_['size'] as core.String : null,
          sizeSystem: json_.containsKey('sizeSystem')
              ? json_['sizeSystem'] as core.String
              : null,
          sizeType: json_.containsKey('sizeType')
              ? (json_['sizeType'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          suggestedRetailPrice: json_.containsKey('suggestedRetailPrice')
              ? Price.fromJson(json_['suggestedRetailPrice']
                  as core.Map<core.String, core.dynamic>)
              : null,
          targetClientId: json_.containsKey('targetClientId')
              ? json_['targetClientId'] as core.String
              : null,
          theme:
              json_.containsKey('theme') ? json_['theme'] as core.String : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          videoLink: json_.containsKey('videoLink')
              ? (json_['videoLink'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalImageLink != null)
          'additionalImageLink': additionalImageLink!,
        if (ageGroup != null) 'ageGroup': ageGroup!,
        if (brand != null) 'brand': brand!,
        if (capacity != null) 'capacity': capacity!,
        if (color != null) 'color': color!,
        if (count != null) 'count': count!,
        if (description != null) 'description': description!,
        if (disclosureDate != null) 'disclosureDate': disclosureDate!,
        if (excludedDestination != null)
          'excludedDestination': excludedDestination!,
        if (featureDescription != null)
          'featureDescription': featureDescription!,
        if (flavor != null) 'flavor': flavor!,
        if (format != null) 'format': format!,
        if (gender != null) 'gender': gender!,
        if (gtin != null) 'gtin': gtin!,
        if (imageLink != null) 'imageLink': imageLink!,
        if (includedDestination != null)
          'includedDestination': includedDestination!,
        if (itemGroupId != null) 'itemGroupId': itemGroupId!,
        if (material != null) 'material': material!,
        if (mpn != null) 'mpn': mpn!,
        if (pattern != null) 'pattern': pattern!,
        if (productDetail != null) 'productDetail': productDetail!,
        if (productHighlight != null) 'productHighlight': productHighlight!,
        if (productLine != null) 'productLine': productLine!,
        if (productName != null) 'productName': productName!,
        if (productPageUrl != null) 'productPageUrl': productPageUrl!,
        if (productType != null) 'productType': productType!,
        if (releaseDate != null) 'releaseDate': releaseDate!,
        if (richProductContent != null)
          'richProductContent': richProductContent!,
        if (scent != null) 'scent': scent!,
        if (size != null) 'size': size!,
        if (sizeSystem != null) 'sizeSystem': sizeSystem!,
        if (sizeType != null) 'sizeType': sizeType!,
        if (suggestedRetailPrice != null)
          'suggestedRetailPrice': suggestedRetailPrice!,
        if (targetClientId != null) 'targetClientId': targetClientId!,
        if (theme != null) 'theme': theme!,
        if (title != null) 'title': title!,
        if (videoLink != null) 'videoLink': videoLink!,
      };
}

/// The capacity of a product.
///
/// For more information, see
/// https://support.google.com/manufacturers/answer/6124116#capacity.
class Capacity {
  /// The unit of the capacity, i.e., MB, GB, or TB.
  core.String? unit;

  /// The numeric value of the capacity.
  core.String? value;

  Capacity({
    this.unit,
    this.value,
  });

  Capacity.fromJson(core.Map json_)
      : this(
          unit: json_.containsKey('unit') ? json_['unit'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (unit != null) 'unit': unit!,
        if (value != null) 'value': value!,
      };
}

/// The number of products in a single package.
///
/// For more information, see
/// https://support.google.com/manufacturers/answer/6124116#count.
class Count {
  /// The unit in which these products are counted.
  core.String? unit;

  /// The numeric value of the number of products in a package.
  core.String? value;

  Count({
    this.unit,
    this.value,
  });

  Count.fromJson(core.Map json_)
      : this(
          unit: json_.containsKey('unit') ? json_['unit'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (unit != null) 'unit': unit!,
        if (value != null) 'value': value!,
      };
}

/// The destination status.
class DestinationStatus {
  /// The name of the destination.
  core.String? destination;

  /// The status of the destination.
  /// Possible string values are:
  /// - "UNKNOWN" : Unspecified status, never used.
  /// - "ACTIVE" : The product is used for this destination.
  /// - "PENDING" : The decision is still pending.
  /// - "DISAPPROVED" : The product is disapproved. Please look at the issues.
  core.String? status;

  DestinationStatus({
    this.destination,
    this.status,
  });

  DestinationStatus.fromJson(core.Map json_)
      : this(
          destination: json_.containsKey('destination')
              ? json_['destination'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destination != null) 'destination': destination!,
        if (status != null) 'status': status!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// A feature description of the product.
///
/// For more information, see
/// https://support.google.com/manufacturers/answer/6124116#featuredesc.
class FeatureDescription {
  /// A short description of the feature.
  core.String? headline;

  /// An optional image describing the feature.
  Image? image;

  /// A detailed description of the feature.
  core.String? text;

  FeatureDescription({
    this.headline,
    this.image,
    this.text,
  });

  FeatureDescription.fromJson(core.Map json_)
      : this(
          headline: json_.containsKey('headline')
              ? json_['headline'] as core.String
              : null,
          image: json_.containsKey('image')
              ? Image.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (headline != null) 'headline': headline!,
        if (image != null) 'image': image!,
        if (text != null) 'text': text!,
      };
}

/// An image.
class Image {
  /// The URL of the image.
  ///
  /// For crawled images, this is the provided URL. For uploaded images, this is
  /// a serving URL from Google if the image has been processed successfully.
  core.String? imageUrl;

  /// The status of the image.
  ///
  /// @OutputOnly
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : The image status is unspecified. Should not be
  /// used.
  /// - "PENDING_PROCESSING" : The image was uploaded and is being processed.
  /// - "PENDING_CRAWL" : The image crawl is still pending.
  /// - "OK" : The image was processed and it meets the requirements.
  /// - "ROBOTED" : The image URL is protected by robots.txt file and cannot be
  /// crawled.
  /// - "XROBOTED" : The image URL is protected by X-Robots-Tag and cannot be
  /// crawled.
  /// - "CRAWL_ERROR" : There was an error while crawling the image.
  /// - "PROCESSING_ERROR" : The image cannot be processed.
  /// - "DECODING_ERROR" : The image cannot be decoded.
  /// - "TOO_BIG" : The image is too big.
  /// - "CRAWL_SKIPPED" : The image was manually overridden and will not be
  /// crawled.
  /// - "HOSTLOADED" : The image crawl was postponed to avoid overloading the
  /// host.
  /// - "HTTP_404" : The image URL returned a "404 Not Found" error.
  core.String? status;

  /// The type of the image, i.e., crawled or uploaded.
  ///
  /// @OutputOnly
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Type is unspecified. Should not be used.
  /// - "CRAWLED" : The image was crawled from a provided URL.
  /// - "UPLOADED" : The image was uploaded.
  core.String? type;

  Image({
    this.imageUrl,
    this.status,
    this.type,
  });

  Image.fromJson(core.Map json_)
      : this(
          imageUrl: json_.containsKey('imageUrl')
              ? json_['imageUrl'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imageUrl != null) 'imageUrl': imageUrl!,
        if (status != null) 'status': status!,
        if (type != null) 'type': type!,
      };
}

/// Product issue.
class Issue {
  /// If present, the attribute that triggered the issue.
  ///
  /// For more information about attributes, see
  /// https://support.google.com/manufacturers/answer/6124116.
  core.String? attribute;

  /// Longer description of the issue focused on how to resolve it.
  core.String? description;

  /// The destination this issue applies to.
  core.String? destination;

  /// What needs to happen to resolve the issue.
  /// Possible string values are:
  /// - "RESOLUTION_UNSPECIFIED" : Unspecified resolution, never used.
  /// - "USER_ACTION" : The user who provided the data must act in order to
  /// resolve the issue (for example by correcting some data).
  /// - "PENDING_PROCESSING" : The issue will be resolved automatically (for
  /// example image crawl or Google review). No action is required now.
  /// Resolution might lead to another issue (for example if crawl fails).
  core.String? resolution;

  /// The severity of the issue.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unspecified severity, never used.
  /// - "ERROR" : Error severity. The issue prevents the usage of the whole
  /// item.
  /// - "WARNING" : Warning severity. The issue is either one that prevents the
  /// usage of the attribute that triggered it or one that will soon prevent the
  /// usage of the whole item.
  /// - "INFO" : Info severity. The issue is one that doesn't require immediate
  /// attention. It is, for example, used to communicate which attributes are
  /// still pending review.
  core.String? severity;

  /// The timestamp when this issue appeared.
  core.String? timestamp;

  /// Short title describing the nature of the issue.
  core.String? title;

  /// The server-generated type of the issue, for example,
  /// “INCORRECT_TEXT_FORMATTING”, “IMAGE_NOT_SERVEABLE”, etc.
  core.String? type;

  Issue({
    this.attribute,
    this.description,
    this.destination,
    this.resolution,
    this.severity,
    this.timestamp,
    this.title,
    this.type,
  });

  Issue.fromJson(core.Map json_)
      : this(
          attribute: json_.containsKey('attribute')
              ? json_['attribute'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          destination: json_.containsKey('destination')
              ? json_['destination'] as core.String
              : null,
          resolution: json_.containsKey('resolution')
              ? json_['resolution'] as core.String
              : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
          timestamp: json_.containsKey('timestamp')
              ? json_['timestamp'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attribute != null) 'attribute': attribute!,
        if (description != null) 'description': description!,
        if (destination != null) 'destination': destination!,
        if (resolution != null) 'resolution': resolution!,
        if (severity != null) 'severity': severity!,
        if (timestamp != null) 'timestamp': timestamp!,
        if (title != null) 'title': title!,
        if (type != null) 'type': type!,
      };
}

class ListProductsResponse {
  /// The token for the retrieval of the next page of product statuses.
  core.String? nextPageToken;

  /// List of the products.
  core.List<Product>? products;

  ListProductsResponse({
    this.nextPageToken,
    this.products,
  });

  ListProductsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          products: json_.containsKey('products')
              ? (json_['products'] as core.List)
                  .map((value) => Product.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (products != null) 'products': products!,
      };
}

/// A price.
class Price {
  /// The numeric value of the price.
  core.String? amount;

  /// The currency in which the price is denoted.
  core.String? currency;

  Price({
    this.amount,
    this.currency,
  });

  Price.fromJson(core.Map json_)
      : this(
          amount: json_.containsKey('amount')
              ? json_['amount'] as core.String
              : null,
          currency: json_.containsKey('currency')
              ? json_['currency'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (amount != null) 'amount': amount!,
        if (currency != null) 'currency': currency!,
      };
}

/// Product data.
class Product {
  /// Attributes of the product uploaded to the Manufacturer Center.
  ///
  /// Manually edited attributes are taken into account.
  Attributes? attributes;

  /// The content language of the product as a two-letter ISO 639-1 language
  /// code (for example, en).
  core.String? contentLanguage;

  /// The status of the destinations.
  core.List<DestinationStatus>? destinationStatuses;

  /// A server-generated list of issues associated with the product.
  core.List<Issue>? issues;

  /// Name in the format `{target_country}:{content_language}:{product_id}`.
  ///
  /// `target_country` - The target country of the product as a CLDR territory
  /// code (for example, US). `content_language` - The content language of the
  /// product as a two-letter ISO 639-1 language code (for example, en).
  /// `product_id` - The ID of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#id.
  core.String? name;

  /// Parent ID in the format `accounts/{account_id}`.
  ///
  /// `account_id` - The ID of the Manufacturer Center account.
  core.String? parent;

  /// The ID of the product.
  ///
  /// For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#id.
  core.String? productId;

  /// The target country of the product as a CLDR territory code (for example,
  /// US).
  core.String? targetCountry;

  Product({
    this.attributes,
    this.contentLanguage,
    this.destinationStatuses,
    this.issues,
    this.name,
    this.parent,
    this.productId,
    this.targetCountry,
  });

  Product.fromJson(core.Map json_)
      : this(
          attributes: json_.containsKey('attributes')
              ? Attributes.fromJson(
                  json_['attributes'] as core.Map<core.String, core.dynamic>)
              : null,
          contentLanguage: json_.containsKey('contentLanguage')
              ? json_['contentLanguage'] as core.String
              : null,
          destinationStatuses: json_.containsKey('destinationStatuses')
              ? (json_['destinationStatuses'] as core.List)
                  .map((value) => DestinationStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          issues: json_.containsKey('issues')
              ? (json_['issues'] as core.List)
                  .map((value) => Issue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          productId: json_.containsKey('productId')
              ? json_['productId'] as core.String
              : null,
          targetCountry: json_.containsKey('targetCountry')
              ? json_['targetCountry'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributes != null) 'attributes': attributes!,
        if (contentLanguage != null) 'contentLanguage': contentLanguage!,
        if (destinationStatuses != null)
          'destinationStatuses': destinationStatuses!,
        if (issues != null) 'issues': issues!,
        if (name != null) 'name': name!,
        if (parent != null) 'parent': parent!,
        if (productId != null) 'productId': productId!,
        if (targetCountry != null) 'targetCountry': targetCountry!,
      };
}

/// A product detail of the product.
///
/// For more information, see
/// https://support.google.com/manufacturers/answer/6124116#productdetail.
class ProductDetail {
  /// The name of the attribute.
  core.String? attributeName;

  /// The value of the attribute.
  core.String? attributeValue;

  /// A short section name that can be reused between multiple product details.
  core.String? sectionName;

  ProductDetail({
    this.attributeName,
    this.attributeValue,
    this.sectionName,
  });

  ProductDetail.fromJson(core.Map json_)
      : this(
          attributeName: json_.containsKey('attributeName')
              ? json_['attributeName'] as core.String
              : null,
          attributeValue: json_.containsKey('attributeValue')
              ? json_['attributeValue'] as core.String
              : null,
          sectionName: json_.containsKey('sectionName')
              ? json_['sectionName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributeName != null) 'attributeName': attributeName!,
        if (attributeValue != null) 'attributeValue': attributeValue!,
        if (sectionName != null) 'sectionName': sectionName!,
      };
}
