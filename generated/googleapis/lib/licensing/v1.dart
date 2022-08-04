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

/// Enterprise License Manager API - v1
///
/// The Google Enterprise License Manager API lets you manage Google Workspace
/// and related licenses for all users of a customer that you manage.
///
/// For more information, see
/// <https://developers.google.com/admin-sdk/licensing/>
///
/// Create an instance of [LicensingApi] to access these resources:
///
/// - [LicenseAssignmentsResource]
library licensing.v1;

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

/// The Google Enterprise License Manager API lets you manage Google Workspace
/// and related licenses for all users of a customer that you manage.
class LicensingApi {
  /// View and manage G Suite licenses for your domain
  static const appsLicensingScope =
      'https://www.googleapis.com/auth/apps.licensing';

  final commons.ApiRequester _requester;

  LicenseAssignmentsResource get licenseAssignments =>
      LicenseAssignmentsResource(_requester);

  LicensingApi(http.Client client,
      {core.String rootUrl = 'https://licensing.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class LicenseAssignmentsResource {
  final commons.ApiRequester _requester;

  LicenseAssignmentsResource(commons.ApiRequester client) : _requester = client;

  /// Revoke a license.
  ///
  /// Request parameters:
  ///
  /// [productId] - A product's unique identifier. For more information about
  /// products in this version of the API, see Products and SKUs.
  ///
  /// [skuId] - A product SKU's unique identifier. For more information about
  /// available SKUs in this version of the API, see Products and SKUs.
  ///
  /// [userId] - The user's current primary email address. If the user's email
  /// address changes, use the new email address in your API requests. Since a
  /// `userId` is subject to change, do not use a `userId` value as a key for
  /// persistent data. This key could break if the current user's email address
  /// changes. If the `userId` is suspended, the license status changes.
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
    core.String productId,
    core.String skuId,
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apps/licensing/v1/product/' +
        commons.escapeVariable('$productId') +
        '/sku/' +
        commons.escapeVariable('$skuId') +
        '/user/' +
        commons.escapeVariable('$userId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get a specific user's license by product SKU.
  ///
  /// Request parameters:
  ///
  /// [productId] - A product's unique identifier. For more information about
  /// products in this version of the API, see Products and SKUs.
  ///
  /// [skuId] - A product SKU's unique identifier. For more information about
  /// available SKUs in this version of the API, see Products and SKUs.
  ///
  /// [userId] - The user's current primary email address. If the user's email
  /// address changes, use the new email address in your API requests. Since a
  /// `userId` is subject to change, do not use a `userId` value as a key for
  /// persistent data. This key could break if the current user's email address
  /// changes. If the `userId` is suspended, the license status changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LicenseAssignment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LicenseAssignment> get(
    core.String productId,
    core.String skuId,
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apps/licensing/v1/product/' +
        commons.escapeVariable('$productId') +
        '/sku/' +
        commons.escapeVariable('$skuId') +
        '/user/' +
        commons.escapeVariable('$userId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LicenseAssignment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Assign a license.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [productId] - A product's unique identifier. For more information about
  /// products in this version of the API, see Products and SKUs.
  ///
  /// [skuId] - A product SKU's unique identifier. For more information about
  /// available SKUs in this version of the API, see Products and SKUs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LicenseAssignment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LicenseAssignment> insert(
    LicenseAssignmentInsert request,
    core.String productId,
    core.String skuId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apps/licensing/v1/product/' +
        commons.escapeVariable('$productId') +
        '/sku/' +
        commons.escapeVariable('$skuId') +
        '/user';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LicenseAssignment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all users assigned licenses for a specific product SKU.
  ///
  /// Request parameters:
  ///
  /// [productId] - A product's unique identifier. For more information about
  /// products in this version of the API, see Products and SKUs.
  ///
  /// [customerId] - The customer's unique ID as defined in the Admin console,
  /// such as `C00000000`. If the customer is suspended, the server returns an
  /// error.
  ///
  /// [maxResults] - The `maxResults` query string determines how many entries
  /// are returned on each page of a large response. This is an optional
  /// parameter. The value must be a positive number.
  /// Value must be between "1" and "1000".
  ///
  /// [pageToken] - Token to fetch the next page of data. The `maxResults` query
  /// string is related to the `pageToken` since `maxResults` determines how
  /// many entries are returned on each page. This is an optional query string.
  /// If not specified, the server returns the first page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LicenseAssignmentList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LicenseAssignmentList> listForProduct(
    core.String productId,
    core.String customerId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'customerId': [customerId],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apps/licensing/v1/product/' +
        commons.escapeVariable('$productId') +
        '/users';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LicenseAssignmentList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all users assigned licenses for a specific product SKU.
  ///
  /// Request parameters:
  ///
  /// [productId] - A product's unique identifier. For more information about
  /// products in this version of the API, see Products and SKUs.
  ///
  /// [skuId] - A product SKU's unique identifier. For more information about
  /// available SKUs in this version of the API, see Products and SKUs.
  ///
  /// [customerId] - The customer's unique ID as defined in the Admin console,
  /// such as `C00000000`. If the customer is suspended, the server returns an
  /// error.
  ///
  /// [maxResults] - The `maxResults` query string determines how many entries
  /// are returned on each page of a large response. This is an optional
  /// parameter. The value must be a positive number.
  /// Value must be between "1" and "1000".
  ///
  /// [pageToken] - Token to fetch the next page of data. The `maxResults` query
  /// string is related to the `pageToken` since `maxResults` determines how
  /// many entries are returned on each page. This is an optional query string.
  /// If not specified, the server returns the first page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LicenseAssignmentList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LicenseAssignmentList> listForProductAndSku(
    core.String productId,
    core.String skuId,
    core.String customerId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'customerId': [customerId],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apps/licensing/v1/product/' +
        commons.escapeVariable('$productId') +
        '/sku/' +
        commons.escapeVariable('$skuId') +
        '/users';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LicenseAssignmentList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Reassign a user's product SKU with a different SKU in the same product.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [productId] - A product's unique identifier. For more information about
  /// products in this version of the API, see Products and SKUs.
  ///
  /// [skuId] - A product SKU's unique identifier. For more information about
  /// available SKUs in this version of the API, see Products and SKUs.
  ///
  /// [userId] - The user's current primary email address. If the user's email
  /// address changes, use the new email address in your API requests. Since a
  /// `userId` is subject to change, do not use a `userId` value as a key for
  /// persistent data. This key could break if the current user's email address
  /// changes. If the `userId` is suspended, the license status changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LicenseAssignment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LicenseAssignment> patch(
    LicenseAssignment request,
    core.String productId,
    core.String skuId,
    core.String userId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apps/licensing/v1/product/' +
        commons.escapeVariable('$productId') +
        '/sku/' +
        commons.escapeVariable('$skuId') +
        '/user/' +
        commons.escapeVariable('$userId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return LicenseAssignment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Reassign a user's product SKU with a different SKU in the same product.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [productId] - A product's unique identifier. For more information about
  /// products in this version of the API, see Products and SKUs.
  ///
  /// [skuId] - A product SKU's unique identifier. For more information about
  /// available SKUs in this version of the API, see Products and SKUs.
  ///
  /// [userId] - The user's current primary email address. If the user's email
  /// address changes, use the new email address in your API requests. Since a
  /// `userId` is subject to change, do not use a `userId` value as a key for
  /// persistent data. This key could break if the current user's email address
  /// changes. If the `userId` is suspended, the license status changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LicenseAssignment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LicenseAssignment> update(
    LicenseAssignment request,
    core.String productId,
    core.String skuId,
    core.String userId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apps/licensing/v1/product/' +
        commons.escapeVariable('$productId') +
        '/sku/' +
        commons.escapeVariable('$skuId') +
        '/user/' +
        commons.escapeVariable('$userId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return LicenseAssignment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Representation of a license assignment.
class LicenseAssignment {
  /// ETag of the resource.
  core.String? etags;

  /// Identifies the resource as a LicenseAssignment, which is
  /// `licensing#licenseAssignment`.
  core.String? kind;

  /// A product's unique identifier.
  ///
  /// For more information about products in this version of the API, see
  /// Product and SKU IDs.
  core.String? productId;

  /// Display Name of the product.
  core.String? productName;

  /// Link to this page.
  core.String? selfLink;

  /// A product SKU's unique identifier.
  ///
  /// For more information about available SKUs in this version of the API, see
  /// Products and SKUs.
  core.String? skuId;

  /// Display Name of the sku of the product.
  core.String? skuName;

  /// The user's current primary email address.
  ///
  /// If the user's email address changes, use the new email address in your API
  /// requests. Since a `userId` is subject to change, do not use a `userId`
  /// value as a key for persistent data. This key could break if the current
  /// user's email address changes. If the `userId` is suspended, the license
  /// status changes.
  core.String? userId;

  LicenseAssignment({
    this.etags,
    this.kind,
    this.productId,
    this.productName,
    this.selfLink,
    this.skuId,
    this.skuName,
    this.userId,
  });

  LicenseAssignment.fromJson(core.Map json_)
      : this(
          etags:
              json_.containsKey('etags') ? json_['etags'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          productId: json_.containsKey('productId')
              ? json_['productId'] as core.String
              : null,
          productName: json_.containsKey('productName')
              ? json_['productName'] as core.String
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          skuId:
              json_.containsKey('skuId') ? json_['skuId'] as core.String : null,
          skuName: json_.containsKey('skuName')
              ? json_['skuName'] as core.String
              : null,
          userId: json_.containsKey('userId')
              ? json_['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etags != null) 'etags': etags!,
        if (kind != null) 'kind': kind!,
        if (productId != null) 'productId': productId!,
        if (productName != null) 'productName': productName!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (skuId != null) 'skuId': skuId!,
        if (skuName != null) 'skuName': skuName!,
        if (userId != null) 'userId': userId!,
      };
}

/// Representation of a license assignment.
class LicenseAssignmentInsert {
  /// Email id of the user
  core.String? userId;

  LicenseAssignmentInsert({
    this.userId,
  });

  LicenseAssignmentInsert.fromJson(core.Map json_)
      : this(
          userId: json_.containsKey('userId')
              ? json_['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (userId != null) 'userId': userId!,
      };
}

class LicenseAssignmentList {
  /// ETag of the resource.
  core.String? etag;

  /// The LicenseAssignments in this page of results.
  core.List<LicenseAssignment>? items;

  /// Identifies the resource as a collection of LicenseAssignments.
  core.String? kind;

  /// The token that you must submit in a subsequent request to retrieve
  /// additional license results matching your query parameters.
  ///
  /// The `maxResults` query string is related to the `nextPageToken` since
  /// `maxResults` determines how many entries are returned on each next page.
  core.String? nextPageToken;

  LicenseAssignmentList({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
  });

  LicenseAssignmentList.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => LicenseAssignment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}
