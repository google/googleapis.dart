// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.manufacturers.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client manufacturers/v1';

/// Public API for managing Manufacturer Center related data.
class ManufacturersApi {
  /// Manage your product listings for Google Manufacturer Center
  static const ManufacturercenterScope =
      "https://www.googleapis.com/auth/manufacturercenter";

  final commons.ApiRequester _requester;

  AccountsResourceApi get accounts => new AccountsResourceApi(_requester);

  ManufacturersApi(http.Client client,
      {core.String rootUrl = "https://manufacturers.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class AccountsResourceApi {
  final commons.ApiRequester _requester;

  AccountsProductsResourceApi get products =>
      new AccountsProductsResourceApi(_requester);

  AccountsResourceApi(commons.ApiRequester client) : _requester = client;
}

class AccountsProductsResourceApi {
  final commons.ApiRequester _requester;

  AccountsProductsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes the product from a Manufacturer Center account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent ID in the format `accounts/{account_id}`.
  ///
  /// `account_id` - The ID of the Manufacturer Center account.
  /// Value must have pattern "^accounts/[^/]+$".
  ///
  /// [name] - Name in the format
  /// `{target_country}:{content_language}:{product_id}`.
  ///
  /// `target_country`   - The target country of the product as a CLDR territory
  ///                      code (for example, US).
  ///
  /// `content_language` - The content language of the product as a two-letter
  ///                      ISO 639-1 language code (for example, en).
  ///
  /// `product_id`     -   The ID of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#id.
  /// Value must have pattern "^[^/]+$".
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
  async.Future<Empty> delete(core.String parent, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/products/' +
        commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
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
  /// [parent] - Parent ID in the format `accounts/{account_id}`.
  ///
  /// `account_id` - The ID of the Manufacturer Center account.
  /// Value must have pattern "^accounts/[^/]+$".
  ///
  /// [name] - Name in the format
  /// `{target_country}:{content_language}:{product_id}`.
  ///
  /// `target_country`   - The target country of the product as a CLDR territory
  ///                      code (for example, US).
  ///
  /// `content_language` - The content language of the product as a two-letter
  ///                      ISO 639-1 language code (for example, en).
  ///
  /// `product_id`     -   The ID of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#id.
  /// Value must have pattern "^[^/]+$".
  ///
  /// [include] - The information to be included in the response. Only sections
  /// listed here
  /// will be returned.
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
  async.Future<Product> get(core.String parent, core.String name,
      {core.List<core.String> include, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (include != null) {
      _queryParams["include"] = include;
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/products/' +
        commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Product.fromJson(data));
  }

  /// Lists all the products in a Manufacturer Center account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent ID in the format `accounts/{account_id}`.
  ///
  /// `account_id` - The ID of the Manufacturer Center account.
  /// Value must have pattern "^accounts/[^/]+$".
  ///
  /// [include] - The information to be included in the response. Only sections
  /// listed here
  /// will be returned.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [pageSize] - Maximum number of product statuses to return in the response,
  /// used for
  /// paging.
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
  async.Future<ListProductsResponse> list(core.String parent,
      {core.List<core.String> include,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (include != null) {
      _queryParams["include"] = include;
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/products';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListProductsResponse.fromJson(data));
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
  ///
  /// Uploaded attributes first need to be processed before they can be
  /// retrieved. Until then, new products will be unavailable, and retrieval
  /// of previously uploaded products will return the original state of the
  /// product.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent ID in the format `accounts/{account_id}`.
  ///
  /// `account_id` - The ID of the Manufacturer Center account.
  /// Value must have pattern "^accounts/[^/]+$".
  ///
  /// [name] - Name in the format
  /// `{target_country}:{content_language}:{product_id}`.
  ///
  /// `target_country`   - The target country of the product as a CLDR territory
  ///                      code (for example, US).
  ///
  /// `content_language` - The content language of the product as a two-letter
  ///                      ISO 639-1 language code (for example, en).
  ///
  /// `product_id`     -   The ID of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#id.
  /// Value must have pattern "^[^/]+$".
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
      Attributes request, core.String parent, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/products/' +
        commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }
}

/// Attributes of the product. For more information, see
/// https://support.google.com/manufacturers/answer/6124116.
class Attributes {
  /// The additional images of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#addlimage.
  core.List<Image> additionalImageLink;

  /// The target age group of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#agegroup.
  core.String ageGroup;

  /// The brand name of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#brand.
  core.String brand;

  /// The capacity of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#capacity.
  Capacity capacity;

  /// The color of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#color.
  core.String color;

  /// The count of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#count.
  Count count;

  /// The description of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#description.
  core.String description;

  /// The disclosure date of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#disclosure.
  core.String disclosureDate;

  /// A list of excluded destinations.
  core.List<core.String> excludedDestination;

  /// The rich format description of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#featuredesc.
  core.List<FeatureDescription> featureDescription;

  /// The flavor of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#flavor.
  core.String flavor;

  /// The format of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#format.
  core.String format;

  /// The target gender of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#gender.
  core.String gender;

  /// The Global Trade Item Number (GTIN) of the product. For more information,
  /// see https://support.google.com/manufacturers/answer/6124116#gtin.
  core.List<core.String> gtin;

  /// The image of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#image.
  Image imageLink;

  /// A list of included destinations.
  core.List<core.String> includedDestination;

  /// The item group id of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#itemgroupid.
  core.String itemGroupId;

  /// The material of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#material.
  core.String material;

  /// The Manufacturer Part Number (MPN) of the product. For more information,
  /// see https://support.google.com/manufacturers/answer/6124116#mpn.
  core.String mpn;

  /// The pattern of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#pattern.
  core.String pattern;

  /// The details of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#productdetail.
  core.List<ProductDetail> productDetail;

  /// The name of the group of products related to the product. For more
  /// information, see
  /// https://support.google.com/manufacturers/answer/6124116#productline.
  core.String productLine;

  /// The canonical name of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#productname.
  core.String productName;

  /// The URL of the detail page of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#productpage.
  core.String productPageUrl;

  /// The type or category of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#producttype.
  core.List<core.String> productType;

  /// The release date of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#release.
  core.String releaseDate;

  /// The scent of the product. For more information, see
  ///  https://support.google.com/manufacturers/answer/6124116#scent.
  core.String scent;

  /// The size of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#size.
  core.String size;

  /// The size system of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#sizesystem.
  core.String sizeSystem;

  /// The size type of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#sizetype.
  core.String sizeType;

  /// The suggested retail price (MSRP) of the product. For more information,
  /// see https://support.google.com/manufacturers/answer/6124116#price.
  Price suggestedRetailPrice;

  /// The target client id. Should only be used in the accounts of the data
  /// partners.
  core.String targetClientId;

  /// The theme of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#theme.
  core.String theme;

  /// The title of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#title.
  core.String title;

  /// The videos of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#video.
  core.List<core.String> videoLink;

  Attributes();

  Attributes.fromJson(core.Map _json) {
    if (_json.containsKey("additionalImageLink")) {
      additionalImageLink = (_json["additionalImageLink"] as core.List)
          .map<Image>((value) => new Image.fromJson(value))
          .toList();
    }
    if (_json.containsKey("ageGroup")) {
      ageGroup = _json["ageGroup"];
    }
    if (_json.containsKey("brand")) {
      brand = _json["brand"];
    }
    if (_json.containsKey("capacity")) {
      capacity = new Capacity.fromJson(_json["capacity"]);
    }
    if (_json.containsKey("color")) {
      color = _json["color"];
    }
    if (_json.containsKey("count")) {
      count = new Count.fromJson(_json["count"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("disclosureDate")) {
      disclosureDate = _json["disclosureDate"];
    }
    if (_json.containsKey("excludedDestination")) {
      excludedDestination =
          (_json["excludedDestination"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("featureDescription")) {
      featureDescription = (_json["featureDescription"] as core.List)
          .map<FeatureDescription>(
              (value) => new FeatureDescription.fromJson(value))
          .toList();
    }
    if (_json.containsKey("flavor")) {
      flavor = _json["flavor"];
    }
    if (_json.containsKey("format")) {
      format = _json["format"];
    }
    if (_json.containsKey("gender")) {
      gender = _json["gender"];
    }
    if (_json.containsKey("gtin")) {
      gtin = (_json["gtin"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("imageLink")) {
      imageLink = new Image.fromJson(_json["imageLink"]);
    }
    if (_json.containsKey("includedDestination")) {
      includedDestination =
          (_json["includedDestination"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("itemGroupId")) {
      itemGroupId = _json["itemGroupId"];
    }
    if (_json.containsKey("material")) {
      material = _json["material"];
    }
    if (_json.containsKey("mpn")) {
      mpn = _json["mpn"];
    }
    if (_json.containsKey("pattern")) {
      pattern = _json["pattern"];
    }
    if (_json.containsKey("productDetail")) {
      productDetail = (_json["productDetail"] as core.List)
          .map<ProductDetail>((value) => new ProductDetail.fromJson(value))
          .toList();
    }
    if (_json.containsKey("productLine")) {
      productLine = _json["productLine"];
    }
    if (_json.containsKey("productName")) {
      productName = _json["productName"];
    }
    if (_json.containsKey("productPageUrl")) {
      productPageUrl = _json["productPageUrl"];
    }
    if (_json.containsKey("productType")) {
      productType = (_json["productType"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("releaseDate")) {
      releaseDate = _json["releaseDate"];
    }
    if (_json.containsKey("scent")) {
      scent = _json["scent"];
    }
    if (_json.containsKey("size")) {
      size = _json["size"];
    }
    if (_json.containsKey("sizeSystem")) {
      sizeSystem = _json["sizeSystem"];
    }
    if (_json.containsKey("sizeType")) {
      sizeType = _json["sizeType"];
    }
    if (_json.containsKey("suggestedRetailPrice")) {
      suggestedRetailPrice = new Price.fromJson(_json["suggestedRetailPrice"]);
    }
    if (_json.containsKey("targetClientId")) {
      targetClientId = _json["targetClientId"];
    }
    if (_json.containsKey("theme")) {
      theme = _json["theme"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("videoLink")) {
      videoLink = (_json["videoLink"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (additionalImageLink != null) {
      _json["additionalImageLink"] =
          additionalImageLink.map((value) => (value).toJson()).toList();
    }
    if (ageGroup != null) {
      _json["ageGroup"] = ageGroup;
    }
    if (brand != null) {
      _json["brand"] = brand;
    }
    if (capacity != null) {
      _json["capacity"] = (capacity).toJson();
    }
    if (color != null) {
      _json["color"] = color;
    }
    if (count != null) {
      _json["count"] = (count).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (disclosureDate != null) {
      _json["disclosureDate"] = disclosureDate;
    }
    if (excludedDestination != null) {
      _json["excludedDestination"] = excludedDestination;
    }
    if (featureDescription != null) {
      _json["featureDescription"] =
          featureDescription.map((value) => (value).toJson()).toList();
    }
    if (flavor != null) {
      _json["flavor"] = flavor;
    }
    if (format != null) {
      _json["format"] = format;
    }
    if (gender != null) {
      _json["gender"] = gender;
    }
    if (gtin != null) {
      _json["gtin"] = gtin;
    }
    if (imageLink != null) {
      _json["imageLink"] = (imageLink).toJson();
    }
    if (includedDestination != null) {
      _json["includedDestination"] = includedDestination;
    }
    if (itemGroupId != null) {
      _json["itemGroupId"] = itemGroupId;
    }
    if (material != null) {
      _json["material"] = material;
    }
    if (mpn != null) {
      _json["mpn"] = mpn;
    }
    if (pattern != null) {
      _json["pattern"] = pattern;
    }
    if (productDetail != null) {
      _json["productDetail"] =
          productDetail.map((value) => (value).toJson()).toList();
    }
    if (productLine != null) {
      _json["productLine"] = productLine;
    }
    if (productName != null) {
      _json["productName"] = productName;
    }
    if (productPageUrl != null) {
      _json["productPageUrl"] = productPageUrl;
    }
    if (productType != null) {
      _json["productType"] = productType;
    }
    if (releaseDate != null) {
      _json["releaseDate"] = releaseDate;
    }
    if (scent != null) {
      _json["scent"] = scent;
    }
    if (size != null) {
      _json["size"] = size;
    }
    if (sizeSystem != null) {
      _json["sizeSystem"] = sizeSystem;
    }
    if (sizeType != null) {
      _json["sizeType"] = sizeType;
    }
    if (suggestedRetailPrice != null) {
      _json["suggestedRetailPrice"] = (suggestedRetailPrice).toJson();
    }
    if (targetClientId != null) {
      _json["targetClientId"] = targetClientId;
    }
    if (theme != null) {
      _json["theme"] = theme;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (videoLink != null) {
      _json["videoLink"] = videoLink;
    }
    return _json;
  }
}

/// The capacity of a product. For more information, see
/// https://support.google.com/manufacturers/answer/6124116#capacity.
class Capacity {
  /// The unit of the capacity, i.e., MB, GB, or TB.
  core.String unit;

  /// The numeric value of the capacity.
  core.String value;

  Capacity();

  Capacity.fromJson(core.Map _json) {
    if (_json.containsKey("unit")) {
      unit = _json["unit"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (unit != null) {
      _json["unit"] = unit;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// The number of products in a single package. For more information, see
/// https://support.google.com/manufacturers/answer/6124116#count.
class Count {
  /// The unit in which these products are counted.
  core.String unit;

  /// The numeric value of the number of products in a package.
  core.String value;

  Count();

  Count.fromJson(core.Map _json) {
    if (_json.containsKey("unit")) {
      unit = _json["unit"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (unit != null) {
      _json["unit"] = unit;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// The destination status.
class DestinationStatus {
  /// The name of the destination.
  core.String destination;

  /// The status of the destination.
  /// Possible string values are:
  /// - "UNKNOWN" : Unspecified status, never used.
  /// - "ACTIVE" : The product is used for this destination.
  /// - "PENDING" : The decision is still pending.
  /// - "DISAPPROVED" : The product is disapproved. Please look at the issues.
  core.String status;

  DestinationStatus();

  DestinationStatus.fromJson(core.Map _json) {
    if (_json.containsKey("destination")) {
      destination = _json["destination"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (destination != null) {
      _json["destination"] = destination;
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
///
///     service Foo {
///       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
///     }
///
/// The JSON representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// A feature description of the product. For more information, see
/// https://support.google.com/manufacturers/answer/6124116#featuredesc.
class FeatureDescription {
  /// A short description of the feature.
  core.String headline;

  /// An optional image describing the feature.
  Image image;

  /// A detailed description of the feature.
  core.String text;

  FeatureDescription();

  FeatureDescription.fromJson(core.Map _json) {
    if (_json.containsKey("headline")) {
      headline = _json["headline"];
    }
    if (_json.containsKey("image")) {
      image = new Image.fromJson(_json["image"]);
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (headline != null) {
      _json["headline"] = headline;
    }
    if (image != null) {
      _json["image"] = (image).toJson();
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// An image.
class Image {
  /// The URL of the image. For crawled images, this is the provided URL. For
  /// uploaded images, this is a serving URL from Google if the image has been
  /// processed successfully.
  core.String imageUrl;

  /// The status of the image.
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
  core.String status;

  /// The type of the image, i.e., crawled or uploaded.
  /// @OutputOnly
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Type is unspecified. Should not be used.
  /// - "CRAWLED" : The image was crawled from a provided URL.
  /// - "UPLOADED" : The image was uploaded.
  core.String type;

  Image();

  Image.fromJson(core.Map _json) {
    if (_json.containsKey("imageUrl")) {
      imageUrl = _json["imageUrl"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (imageUrl != null) {
      _json["imageUrl"] = imageUrl;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Product issue.
class Issue {
  /// If present, the attribute that triggered the issue. For more information
  /// about attributes, see
  /// https://support.google.com/manufacturers/answer/6124116.
  core.String attribute;

  /// Longer description of the issue focused on how to resolve it.
  core.String description;

  /// The destination this issue applies to.
  core.String destination;

  /// What needs to happen to resolve the issue.
  /// Possible string values are:
  /// - "RESOLUTION_UNSPECIFIED" : Unspecified resolution, never used.
  /// - "USER_ACTION" : The user who provided the data must act in order to
  /// resolve the issue
  /// (for example by correcting some data).
  /// - "PENDING_PROCESSING" : The issue will be resolved automatically (for
  /// example image crawl or
  /// Google review). No action is required now. Resolution might lead to
  /// another issue (for example if crawl fails).
  core.String resolution;

  /// The severity of the issue.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unspecified severity, never used.
  /// - "ERROR" : Error severity. The issue prevents the usage of the whole
  /// item.
  /// - "WARNING" : Warning severity. The issue is either one that prevents the
  /// usage of the
  /// attribute that triggered it or one that will soon prevent the usage of
  /// the whole item.
  /// - "INFO" : Info severity. The issue is one that doesn't require immediate
  /// attention.
  /// It is, for example, used to communicate which attributes are still
  /// pending review.
  core.String severity;

  /// The timestamp when this issue appeared.
  core.String timestamp;

  /// Short title describing the nature of the issue.
  core.String title;

  /// The server-generated type of the issue, for example,
  /// “INCORRECT_TEXT_FORMATTING”, “IMAGE_NOT_SERVEABLE”, etc.
  core.String type;

  Issue();

  Issue.fromJson(core.Map _json) {
    if (_json.containsKey("attribute")) {
      attribute = _json["attribute"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("destination")) {
      destination = _json["destination"];
    }
    if (_json.containsKey("resolution")) {
      resolution = _json["resolution"];
    }
    if (_json.containsKey("severity")) {
      severity = _json["severity"];
    }
    if (_json.containsKey("timestamp")) {
      timestamp = _json["timestamp"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (attribute != null) {
      _json["attribute"] = attribute;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (destination != null) {
      _json["destination"] = destination;
    }
    if (resolution != null) {
      _json["resolution"] = resolution;
    }
    if (severity != null) {
      _json["severity"] = severity;
    }
    if (timestamp != null) {
      _json["timestamp"] = timestamp;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

class ListProductsResponse {
  /// The token for the retrieval of the next page of product statuses.
  core.String nextPageToken;

  /// List of the products.
  core.List<Product> products;

  ListProductsResponse();

  ListProductsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("products")) {
      products = (_json["products"] as core.List)
          .map<Product>((value) => new Product.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (products != null) {
      _json["products"] = products.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A price.
class Price {
  /// The numeric value of the price.
  core.String amount;

  /// The currency in which the price is denoted.
  core.String currency;

  Price();

  Price.fromJson(core.Map _json) {
    if (_json.containsKey("amount")) {
      amount = _json["amount"];
    }
    if (_json.containsKey("currency")) {
      currency = _json["currency"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (amount != null) {
      _json["amount"] = amount;
    }
    if (currency != null) {
      _json["currency"] = currency;
    }
    return _json;
  }
}

/// Product data.
class Product {
  /// Attributes of the product uploaded to the Manufacturer Center. Manually
  /// edited attributes are taken into account.
  Attributes attributes;

  /// The content language of the product as a two-letter ISO 639-1 language
  /// code
  /// (for example, en).
  core.String contentLanguage;

  /// The status of the destinations.
  core.List<DestinationStatus> destinationStatuses;

  /// A server-generated list of issues associated with the product.
  core.List<Issue> issues;

  /// Name in the format `{target_country}:{content_language}:{product_id}`.
  ///
  /// `target_country`   - The target country of the product as a CLDR territory
  ///                      code (for example, US).
  ///
  /// `content_language` - The content language of the product as a two-letter
  ///                      ISO 639-1 language code (for example, en).
  ///
  /// `product_id`     -   The ID of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#id.
  core.String name;

  /// Parent ID in the format `accounts/{account_id}`.
  ///
  /// `account_id` - The ID of the Manufacturer Center account.
  core.String parent;

  /// The ID of the product. For more information, see
  /// https://support.google.com/manufacturers/answer/6124116#id.
  core.String productId;

  /// The target country of the product as a CLDR territory code (for example,
  /// US).
  core.String targetCountry;

  Product();

  Product.fromJson(core.Map _json) {
    if (_json.containsKey("attributes")) {
      attributes = new Attributes.fromJson(_json["attributes"]);
    }
    if (_json.containsKey("contentLanguage")) {
      contentLanguage = _json["contentLanguage"];
    }
    if (_json.containsKey("destinationStatuses")) {
      destinationStatuses = (_json["destinationStatuses"] as core.List)
          .map<DestinationStatus>(
              (value) => new DestinationStatus.fromJson(value))
          .toList();
    }
    if (_json.containsKey("issues")) {
      issues = (_json["issues"] as core.List)
          .map<Issue>((value) => new Issue.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parent")) {
      parent = _json["parent"];
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
    if (_json.containsKey("targetCountry")) {
      targetCountry = _json["targetCountry"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (attributes != null) {
      _json["attributes"] = (attributes).toJson();
    }
    if (contentLanguage != null) {
      _json["contentLanguage"] = contentLanguage;
    }
    if (destinationStatuses != null) {
      _json["destinationStatuses"] =
          destinationStatuses.map((value) => (value).toJson()).toList();
    }
    if (issues != null) {
      _json["issues"] = issues.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (parent != null) {
      _json["parent"] = parent;
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    if (targetCountry != null) {
      _json["targetCountry"] = targetCountry;
    }
    return _json;
  }
}

/// A product detail of the product. For more information, see
/// https://support.google.com/manufacturers/answer/6124116#productdetail.
class ProductDetail {
  /// The name of the attribute.
  core.String attributeName;

  /// The value of the attribute.
  core.String attributeValue;

  /// A short section name that can be reused between multiple product details.
  core.String sectionName;

  ProductDetail();

  ProductDetail.fromJson(core.Map _json) {
    if (_json.containsKey("attributeName")) {
      attributeName = _json["attributeName"];
    }
    if (_json.containsKey("attributeValue")) {
      attributeValue = _json["attributeValue"];
    }
    if (_json.containsKey("sectionName")) {
      sectionName = _json["sectionName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (attributeName != null) {
      _json["attributeName"] = attributeName;
    }
    if (attributeValue != null) {
      _json["attributeValue"] = attributeValue;
    }
    if (sectionName != null) {
      _json["sectionName"] = sectionName;
    }
    return _json;
  }
}
