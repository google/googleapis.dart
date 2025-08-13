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

  AccountsQuotasResource get quotas => AccountsQuotasResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
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
        quotaGroups:
            (json_['quotaGroups'] as core.List?)
                ?.map(
                  (value) => QuotaGroup.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (quotaGroups != null) 'quotaGroups': quotaGroups!,
  };
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

  core.Map<core.String, core.dynamic> toJson() => {
    if (method != null) 'method': method!,
    if (path != null) 'path': path!,
    if (subapi != null) 'subapi': subapi!,
    if (version != null) 'version': version!,
  };
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
        methodDetails:
            (json_['methodDetails'] as core.List?)
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

  core.Map<core.String, core.dynamic> toJson() => {
    if (methodDetails != null) 'methodDetails': methodDetails!,
    if (name != null) 'name': name!,
    if (quotaLimit != null) 'quotaLimit': quotaLimit!,
    if (quotaMinuteLimit != null) 'quotaMinuteLimit': quotaMinuteLimit!,
    if (quotaUsage != null) 'quotaUsage': quotaUsage!,
  };
}
