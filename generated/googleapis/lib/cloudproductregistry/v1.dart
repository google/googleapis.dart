// Copyright 2026 Google LLC
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

/// Cloud Product Registry API - v1
///
/// Cloud Product Registry API provides capabilities to access all first Google
/// Cloud products.
///
/// For more information, see <https://docs.cloud.google.com/product-registry>
///
/// Create an instance of [CloudProductRegistryApi] to access these resources:
///
/// - [LogicalProductsResource]
///   - [LogicalProductsVariantsResource]
/// - [ProductSuitesResource]
library;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Cloud Product Registry API provides capabilities to access all first Google
/// Cloud products.
class CloudProductRegistryApi {
  final commons.ApiRequester _requester;

  LogicalProductsResource get logicalProducts =>
      LogicalProductsResource(_requester);
  ProductSuitesResource get productSuites => ProductSuitesResource(_requester);

  CloudProductRegistryApi(
    http.Client client, {
    core.String rootUrl = 'https://cloudproductregistry.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class LogicalProductsResource {
  final commons.ApiRequester _requester;

  LogicalProductsVariantsResource get variants =>
      LogicalProductsVariantsResource(_requester);

  LogicalProductsResource(commons.ApiRequester client) : _requester = client;

  /// Gets details of a LogicalProduct.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the LogicalProduct to retrieve. Format:
  /// logicalProducts/{logical_product}
  /// Value must have pattern `^logicalProducts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogicalProduct].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogicalProduct> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LogicalProduct.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists LogicalProducts matching given criteria.
  ///
  /// Request parameters:
  ///
  /// [filter] - Optional. The filter expression for listing logical products.
  /// Filter syntax: https://google.aip.dev/160 Supported fields: suite_id
  ///
  /// [pageSize] - Optional. The maximum number of logical products to return.
  /// The service may return fewer than this value. If unspecified, at most 100
  /// logical products will be returned. The maximum value is 500; values above
  /// 500 will be coerced to 500.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListLogicalProducts` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListLogicalProducts`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLogicalProductsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLogicalProductsResponse> list({
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/logicalProducts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLogicalProductsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Look up entities.
  ///
  /// Request parameters:
  ///
  /// [lookupUri] - Required. Entity uri to look up. Supported Formats:
  /// logicalProducts/{logical_product}
  /// logicalProducts/{logical_product}/variants/{variant}
  /// productSuites/{product_suite}
  /// Value must have pattern `^logicalProducts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LookupEntityResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LookupEntityResponse> lookupEntity(
    core.String lookupUri, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$lookupUri') + ':lookupEntity';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LookupEntityResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class LogicalProductsVariantsResource {
  final commons.ApiRequester _requester;

  LogicalProductsVariantsResource(commons.ApiRequester client)
    : _requester = client;

  /// Get details of a LogicalProductVariant.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the LogicalProductVariant to retrieve.
  /// Format: logicalProducts/{logical_product}/variants/{variant}
  /// Value must have pattern `^logicalProducts/\[^/\]+/variants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogicalProductVariant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogicalProductVariant> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LogicalProductVariant.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists LogicalProductVariants matching given criteria.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent logical product id. Format:
  /// logicalProducts/{logical_product}
  /// Value must have pattern `^logicalProducts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of logical product variants to
  /// return. The service may return fewer than this value. If unspecified, at
  /// most 100 logical product variants will be returned. The maximum value is
  /// 500; values above 500 will be coerced to 500.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListLogicalProductVariants` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListLogicalProductVariants` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLogicalProductVariantsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLogicalProductVariantsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/variants';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLogicalProductVariantsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Look up entities.
  ///
  /// Request parameters:
  ///
  /// [lookupUri] - Required. Entity uri to look up. Supported Formats:
  /// logicalProducts/{logical_product}
  /// logicalProducts/{logical_product}/variants/{variant}
  /// productSuites/{product_suite}
  /// Value must have pattern `^logicalProducts/\[^/\]+/variants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LookupEntityResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LookupEntityResponse> lookupEntity(
    core.String lookupUri, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$lookupUri') + ':lookupEntity';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LookupEntityResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProductSuitesResource {
  final commons.ApiRequester _requester;

  ProductSuitesResource(commons.ApiRequester client) : _requester = client;

  /// Get details of a ProductSuite.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ProductSuite to retrieve. Format:
  /// productSuites/{product_suite}
  /// Value must have pattern `^productSuites/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductSuite].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductSuite> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ProductSuite.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists ProductSuites.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Optional. The maximum number of suites to return. The service
  /// may return fewer than this value. If unspecified, at most 100 suites will
  /// be returned. The maximum value is 500; values above 500 will be coerced to
  /// 500.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListProductSuites` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListProductSuites` must
  /// match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProductSuitesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProductSuitesResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/productSuites';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListProductSuitesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Look up entities.
  ///
  /// Request parameters:
  ///
  /// [lookupUri] - Required. Entity uri to look up. Supported Formats:
  /// logicalProducts/{logical_product}
  /// logicalProducts/{logical_product}/variants/{variant}
  /// productSuites/{product_suite}
  /// Value must have pattern `^productSuites/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LookupEntityResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LookupEntityResponse> lookupEntity(
    core.String lookupUri, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$lookupUri') + ':lookupEntity';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LookupEntityResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Response message for ListLogicalProductVariants.
class ListLogicalProductVariantsResponse {
  /// Matched LogicalProductVariants
  core.List<LogicalProductVariant>? logicalProductVariants;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListLogicalProductVariantsResponse({
    this.logicalProductVariants,
    this.nextPageToken,
  });

  ListLogicalProductVariantsResponse.fromJson(core.Map json_)
    : this(
        logicalProductVariants: (json_['logicalProductVariants'] as core.List?)
            ?.map(
              (value) => LogicalProductVariant.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final logicalProductVariants = this.logicalProductVariants;
    final nextPageToken = this.nextPageToken;
    return {
      'logicalProductVariants': ?logicalProductVariants,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Response message for ListLogicalProducts.
class ListLogicalProductsResponse {
  /// Matched LogicalProducts
  core.List<LogicalProduct>? logicalProducts;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListLogicalProductsResponse({this.logicalProducts, this.nextPageToken});

  ListLogicalProductsResponse.fromJson(core.Map json_)
    : this(
        logicalProducts: (json_['logicalProducts'] as core.List?)
            ?.map(
              (value) => LogicalProduct.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final logicalProducts = this.logicalProducts;
    final nextPageToken = this.nextPageToken;
    return {
      'logicalProducts': ?logicalProducts,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Response message for ListProductSuites.
class ListProductSuitesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Matched ProductSuites
  core.List<ProductSuite>? productSuites;

  ListProductSuitesResponse({this.nextPageToken, this.productSuites});

  ListProductSuitesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        productSuites: (json_['productSuites'] as core.List?)
            ?.map(
              (value) => ProductSuite.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final productSuites = this.productSuites;
    return {'nextPageToken': ?nextPageToken, 'productSuites': ?productSuites};
  }
}

/// Represents an independent service offering that can be provisioned by a
/// customer.
class LogicalProduct {
  /// Current Lifecycle state of the logical product.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LIFECYCLE_STATE_UNSPECIFIED" : The default value. This value is used if
  /// the lifecycle state is not set.
  /// - "LIFECYCLE_STATE_PUBLIC_PREVIEW" : The entity is in Public Preview. It
  /// is available to all customers, but may not be feature-complete or have
  /// full support guarantees.
  /// - "LIFECYCLE_STATE_PRIVATE_GA" : The entity is in Private General
  /// Availability. It is fully supported and stable, but only available to a
  /// select group of customers.
  /// - "LIFECYCLE_STATE_GA" : The entity is Generally Available. It is fully
  /// supported, stable, and available to all customers.
  /// - "LIFECYCLE_STATE_DEPRECATED" : The entity is deprecated. It is no longer
  /// recommended for use and may be removed in a future version.
  core.String? lifecycleState;

  /// Identifier.
  ///
  /// The resource name of the LogicalProduct. Format:
  /// logicalProducts/{logical_product}.
  core.String? name;

  /// Product suite associated with the logical product.
  ///
  /// Format: productSuites/{product_suite}.
  core.String? productSuite;

  /// Indicates whether the logical product has been replaced.
  ///
  /// If `false`, the product is active. If `true`, the product has been
  /// replaced by another type, and the `replacement` field contains the
  /// resource name of that replacement.
  ///
  /// Output only.
  core.bool? replaced;

  /// The resource name of the Logical Entity that the logical product is
  /// replaced by.
  ///
  /// This field is only populated when this logical product is replaced by some
  /// other type. Eg: logicalProducts/{logical_product}/variants/{variant},
  /// productSuites/{product_suite}, etc.
  ///
  /// Output only.
  core.String? replacement;

  /// Display name of the LogicalProduct.
  core.String? title;

  /// Child variant resource references.
  ///
  /// Format: logicalProducts/{logical_product}/variants/{variant}
  ///
  /// Output only.
  core.List<core.String>? variants;

  LogicalProduct({
    this.lifecycleState,
    this.name,
    this.productSuite,
    this.replaced,
    this.replacement,
    this.title,
    this.variants,
  });

  LogicalProduct.fromJson(core.Map json_)
    : this(
        lifecycleState: json_['lifecycleState'] as core.String?,
        name: json_['name'] as core.String?,
        productSuite: json_['productSuite'] as core.String?,
        replaced: json_['replaced'] as core.bool?,
        replacement: json_['replacement'] as core.String?,
        title: json_['title'] as core.String?,
        variants: (json_['variants'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final lifecycleState = this.lifecycleState;
    final name = this.name;
    final productSuite = this.productSuite;
    final replaced = this.replaced;
    final replacement = this.replacement;
    final title = this.title;
    final variants = this.variants;
    return {
      'lifecycleState': ?lifecycleState,
      'name': ?name,
      'productSuite': ?productSuite,
      'replaced': ?replaced,
      'replacement': ?replacement,
      'title': ?title,
      'variants': ?variants,
    };
  }
}

/// Represents a distinct offering derived from a primary product that retains
/// core functionalities but offers specialized features for a specific market
/// segment.
class LogicalProductVariant {
  /// Current Lifecycle state of the logical product variant.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LIFECYCLE_STATE_UNSPECIFIED" : The default value. This value is used if
  /// the lifecycle state is not set.
  /// - "LIFECYCLE_STATE_PUBLIC_PREVIEW" : The entity is in Public Preview. It
  /// is available to all customers, but may not be feature-complete or have
  /// full support guarantees.
  /// - "LIFECYCLE_STATE_PRIVATE_GA" : The entity is in Private General
  /// Availability. It is fully supported and stable, but only available to a
  /// select group of customers.
  /// - "LIFECYCLE_STATE_GA" : The entity is Generally Available. It is fully
  /// supported, stable, and available to all customers.
  /// - "LIFECYCLE_STATE_DEPRECATED" : The entity is deprecated. It is no longer
  /// recommended for use and may be removed in a future version.
  core.String? lifecycleState;

  /// Identifier.
  ///
  /// The resource name of the LogicalProductVariant. Format:
  /// logicalProducts/{logical_product}/variants/{variant}
  core.String? name;

  /// Indicates whether the logical product variant has been replaced.
  ///
  /// If `false`, the variant is active. If `true`, the variant has been
  /// replaced by another type, and the `replacement` field contains the
  /// resource name of that replacement.
  ///
  /// Output only.
  core.bool? replaced;

  /// The resource name of the Logical Entity that the logical product variant
  /// is replaced by.
  ///
  /// This field is only populated when this logical product variant is replaced
  /// by some other type. Eg: logicalProducts/{logical_product},
  /// productSuites/{product_suite}, etc.
  ///
  /// Output only.
  core.String? replacement;

  /// Display name of the LogicalProductVariant.
  core.String? title;

  LogicalProductVariant({
    this.lifecycleState,
    this.name,
    this.replaced,
    this.replacement,
    this.title,
  });

  LogicalProductVariant.fromJson(core.Map json_)
    : this(
        lifecycleState: json_['lifecycleState'] as core.String?,
        name: json_['name'] as core.String?,
        replaced: json_['replaced'] as core.bool?,
        replacement: json_['replacement'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final lifecycleState = this.lifecycleState;
    final name = this.name;
    final replaced = this.replaced;
    final replacement = this.replacement;
    final title = this.title;
    return {
      'lifecycleState': ?lifecycleState,
      'name': ?name,
      'replaced': ?replaced,
      'replacement': ?replacement,
      'title': ?title,
    };
  }
}

/// Response message for LookupEntity.
class LookupEntityResponse {
  /// Matched LogicalProduct.
  LogicalProduct? logicalProduct;

  /// Matched LogicalProductVariant.
  LogicalProductVariant? logicalProductVariant;

  /// Matched ProductSuite.
  ProductSuite? productSuite;

  LookupEntityResponse({
    this.logicalProduct,
    this.logicalProductVariant,
    this.productSuite,
  });

  LookupEntityResponse.fromJson(core.Map json_)
    : this(
        logicalProduct: json_.containsKey('logicalProduct')
            ? LogicalProduct.fromJson(
                json_['logicalProduct'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        logicalProductVariant: json_.containsKey('logicalProductVariant')
            ? LogicalProductVariant.fromJson(
                json_['logicalProductVariant']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        productSuite: json_.containsKey('productSuite')
            ? ProductSuite.fromJson(
                json_['productSuite'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final logicalProduct = this.logicalProduct;
    final logicalProductVariant = this.logicalProductVariant;
    final productSuite = this.productSuite;
    return {
      'logicalProduct': ?logicalProduct,
      'logicalProductVariant': ?logicalProductVariant,
      'productSuite': ?productSuite,
    };
  }
}

/// Represents a unified grouping of products sharing a common brand and market
/// positioning.
class ProductSuite {
  /// LogicalProducts under this suite.
  ///
  /// Format: logicalProducts/{logical_product}
  ///
  /// Output only.
  core.List<core.String>? logicalProducts;

  /// Identifier.
  ///
  /// The resource name of the ProductSuite. Format:
  /// productSuites/{product_suite}
  core.String? name;

  /// Indicates whether the product suite has been replaced.
  ///
  /// If `false`, the product suite is active. If `true`, the product suite has
  /// been replaced by another type, and the `replacement` field contains the
  /// resource name of that replacement.
  ///
  /// Output only.
  core.bool? replaced;

  /// The resource name of the Logical Entity that the product suite is replaced
  /// by.
  ///
  /// This field is only populated when this product suite is replaced by some
  /// other type. Eg: logicalProducts/{logical_product},
  /// logicalProducts/{logical_product}/variants/{variant}, etc.
  ///
  /// Output only.
  core.String? replacement;

  /// Title of the ProductSuite.
  core.String? title;

  ProductSuite({
    this.logicalProducts,
    this.name,
    this.replaced,
    this.replacement,
    this.title,
  });

  ProductSuite.fromJson(core.Map json_)
    : this(
        logicalProducts: (json_['logicalProducts'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        name: json_['name'] as core.String?,
        replaced: json_['replaced'] as core.bool?,
        replacement: json_['replacement'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final logicalProducts = this.logicalProducts;
    final name = this.name;
    final replaced = this.replaced;
    final replacement = this.replacement;
    final title = this.title;
    return {
      'logicalProducts': ?logicalProducts,
      'name': ?name,
      'replaced': ?replaced,
      'replacement': ?replacement,
      'title': ?title,
    };
  }
}
