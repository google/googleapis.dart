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

/// Merchant API - quota_v1
///
/// Programmatically manage your Merchant Center Accounts.
///
/// For more information, see <https://developers.google.com/merchant/api>
///
/// Create an instance of [MerchantApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsLimitsResource]
///   - [AccountsQuotasResource]
library;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

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

  AccountsLimitsResource get limits => AccountsLimitsResource(_requester);
  AccountsQuotasResource get quotas => AccountsQuotasResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;
}

class AccountsLimitsResource {
  final commons.ApiRequester _requester;

  AccountsLimitsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves an account limit.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the limit to retrieve. Format:
  /// `accounts/{account}/limits/{limit}` For example:
  /// `accounts/123/limits/products~ADS_NON_EEA`
  /// Value must have pattern `^accounts/\[^/\]+/limits/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountLimit].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountLimit> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'quota/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccountLimit.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the limits of an account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent account. Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [filter] - Required. A filter on the limit `type` is required, for
  /// example, `type = "products"`.
  ///
  /// [pageSize] - Optional. The maximum number of limits to return. The service
  /// may return fewer than this value. If unspecified, at most 100 limits will
  /// be returned. The maximum value is 100; values above 100 will be coerced to
  /// 100.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListAccountLimits` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListAccountLimits` must
  /// match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAccountLimitsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAccountLimitsResponse> list(
    core.String parent, {
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

    final url_ = 'quota/v1/' + core.Uri.encodeFull('$parent') + '/limits';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAccountLimitsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsQuotasResource {
  final commons.ApiRequester _requester;

  AccountsQuotasResource(commons.ApiRequester client) : _requester = client;

  /// Lists the daily call quota and usage per group for your Merchant Center
  /// account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The merchant account who owns the collection of
  /// method quotas Format: accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of quotas to return in the
  /// response, used for paging. Defaults to 500; values above 1000 will be
  /// coerced to 1000.
  ///
  /// [pageToken] - Optional. Token (if provided) to retrieve the subsequent
  /// page. All other parameters must match the original call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListQuotaGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListQuotaGroupsResponse> list(
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

    final url_ = 'quota/v1/' + core.Uri.encodeFull('$parent') + '/quotas';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListQuotaGroupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// A limit of a certain type that is applied to an account.
class AccountLimit {
  /// Identifier.
  ///
  /// The limit part of the name will be a combination of the type and the
  /// scope. For example: `accounts/123/limits/products~ADS_NON_EEA` Format:
  /// `accounts/{account}/limits/{limit}`
  core.String? name;

  /// The limit for products.
  ProductLimit? products;

  AccountLimit({this.name, this.products});

  AccountLimit.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        products: json_.containsKey('products')
            ? ProductLimit.fromJson(
                json_['products'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final products = this.products;
    return {'name': ?name, 'products': ?products};
  }
}

/// Response message for the `ListAccountLimits` method.
class ListAccountLimitsResponse {
  /// The limits for the given account.
  core.List<AccountLimit>? accountLimits;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListAccountLimitsResponse({this.accountLimits, this.nextPageToken});

  ListAccountLimitsResponse.fromJson(core.Map json_)
    : this(
        accountLimits: (json_['accountLimits'] as core.List?)
            ?.map(
              (value) => AccountLimit.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountLimits = this.accountLimits;
    final nextPageToken = this.nextPageToken;
    return {'accountLimits': ?accountLimits, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for the ListMethodGroups method.
class ListQuotaGroupsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The methods, current quota usage and limits per each group.
  ///
  /// The quota is shared between all methods in the group. The groups are
  /// sorted in descending order based on quota_usage.
  core.List<QuotaGroup>? quotaGroups;

  ListQuotaGroupsResponse({this.nextPageToken, this.quotaGroups});

  ListQuotaGroupsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        quotaGroups: (json_['quotaGroups'] as core.List?)
            ?.map(
              (value) => QuotaGroup.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final quotaGroups = this.quotaGroups;
    return {'nextPageToken': ?nextPageToken, 'quotaGroups': ?quotaGroups};
  }
}

/// The method details per method in the Merchant API.
class MethodDetails {
  /// The name of the method for example `products.list`.
  ///
  /// Output only.
  core.String? method;

  /// The path for the method such as `products/v1/productInputs.insert`
  ///
  /// Output only.
  core.String? path;

  /// The sub-API that the method belongs to.
  ///
  /// Output only.
  core.String? subapi;

  /// The API version that the method belongs to.
  ///
  /// Output only.
  core.String? version;

  MethodDetails({this.method, this.path, this.subapi, this.version});

  MethodDetails.fromJson(core.Map json_)
    : this(
        method: json_['method'] as core.String?,
        path: json_['path'] as core.String?,
        subapi: json_['subapi'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final method = this.method;
    final path = this.path;
    final subapi = this.subapi;
    final version = this.version;
    return {
      'method': ?method,
      'path': ?path,
      'subapi': ?subapi,
      'version': ?version,
    };
  }
}

/// The limit for products.
class ProductLimit {
  /// The maximum number of products that are allowed in the account in the
  /// given scope.
  ///
  /// Required.
  core.String? limit;

  /// The scope of the product limit.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SCOPE_UNSPECIFIED" : Default value. Should not be used.
  /// - "ADS_NON_EEA" : Limit for products in non-EEA countries.
  /// - "ADS_EEA" : Limit for products in EEA countries.
  core.String? scope;

  ProductLimit({this.limit, this.scope});

  ProductLimit.fromJson(core.Map json_)
    : this(
        limit: json_['limit'] as core.String?,
        scope: json_['scope'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final limit = this.limit;
    final scope = this.scope;
    return {'limit': ?limit, 'scope': ?scope};
  }
}

/// The group information for methods in the Merchant API.
///
/// The quota is shared between all methods in the group. Even if none of the
/// methods within the group have usage the information for the group is
/// returned.
class QuotaGroup {
  /// List of all methods group quota applies to.
  ///
  /// Output only.
  core.List<MethodDetails>? methodDetails;

  /// Identifier.
  ///
  /// The resource name of the quota group. Format:
  /// accounts/{account}/quotas/{group} Note: There is no guarantee on the
  /// format of {group}
  core.String? name;

  /// The maximum number of calls allowed per day for the group.
  ///
  /// Output only.
  core.String? quotaLimit;

  /// The maximum number of calls allowed per minute for the group.
  ///
  /// Output only.
  core.String? quotaMinuteLimit;

  /// The current quota usage, meaning the number of calls already made on a
  /// given day to the methods in the group.
  ///
  /// The daily quota limits reset at at 12:00 PM midday UTC.
  ///
  /// Output only.
  core.String? quotaUsage;

  QuotaGroup({
    this.methodDetails,
    this.name,
    this.quotaLimit,
    this.quotaMinuteLimit,
    this.quotaUsage,
  });

  QuotaGroup.fromJson(core.Map json_)
    : this(
        methodDetails: (json_['methodDetails'] as core.List?)
            ?.map(
              (value) => MethodDetails.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        name: json_['name'] as core.String?,
        quotaLimit: json_['quotaLimit'] as core.String?,
        quotaMinuteLimit: json_['quotaMinuteLimit'] as core.String?,
        quotaUsage: json_['quotaUsage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final methodDetails = this.methodDetails;
    final name = this.name;
    final quotaLimit = this.quotaLimit;
    final quotaMinuteLimit = this.quotaMinuteLimit;
    final quotaUsage = this.quotaUsage;
    return {
      'methodDetails': ?methodDetails,
      'name': ?name,
      'quotaLimit': ?quotaLimit,
      'quotaMinuteLimit': ?quotaMinuteLimit,
      'quotaUsage': ?quotaUsage,
    };
  }
}
