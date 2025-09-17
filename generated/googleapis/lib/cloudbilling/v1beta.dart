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

/// Cloud Billing API - v1beta
///
/// Allows developers to manage billing for their Google Cloud Platform projects
/// programmatically.
///
/// For more information, see <https://cloud.google.com/billing/docs/apis>
///
/// Create an instance of [CloudbillingApi] to access these resources:
///
/// - [BillingAccountsResource]
///   - [BillingAccountsServicesResource]
///   - [BillingAccountsSkuGroupsResource]
///     - [BillingAccountsSkuGroupsSkusResource]
///   - [BillingAccountsSkusResource]
///     - [BillingAccountsSkusPriceResource]
///     - [BillingAccountsSkusPricesResource]
/// - [SkuGroupsResource]
///   - [SkuGroupsSkusResource]
/// - [SkusResource]
///   - [SkusPriceResource]
///   - [SkusPricesResource]
library;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Allows developers to manage billing for their Google Cloud Platform projects
/// programmatically.
class CloudbillingApi {
  /// View and manage your Google Cloud Platform billing accounts
  static const cloudBillingScope =
      'https://www.googleapis.com/auth/cloud-billing';

  /// View your Google Cloud Platform billing accounts
  static const cloudBillingReadonlyScope =
      'https://www.googleapis.com/auth/cloud-billing.readonly';

  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  BillingAccountsResource get billingAccounts =>
      BillingAccountsResource(_requester);
  SkuGroupsResource get skuGroups => SkuGroupsResource(_requester);
  SkusResource get skus => SkusResource(_requester);

  CloudbillingApi(
    http.Client client, {
    core.String rootUrl = 'https://cloudbilling.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class BillingAccountsResource {
  final commons.ApiRequester _requester;

  BillingAccountsServicesResource get services =>
      BillingAccountsServicesResource(_requester);
  BillingAccountsSkuGroupsResource get skuGroups =>
      BillingAccountsSkuGroupsResource(_requester);
  BillingAccountsSkusResource get skus =>
      BillingAccountsSkusResource(_requester);

  BillingAccountsResource(commons.ApiRequester client) : _requester = client;
}

class BillingAccountsServicesResource {
  final commons.ApiRequester _requester;

  BillingAccountsServicesResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets a Google Cloud service visible to a billing account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the billing account service to retrieve.
  /// Format: billingAccounts/{billing_account}/services/{service}
  /// Value must have pattern `^billingAccounts/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService
  >
  get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists services visible to a billing account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The billing account to list billing account service
  /// from. Format: billingAccounts/{billing_account}
  /// Value must have pattern `^billingAccounts/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of billing account service to return. Results
  /// may return fewer than this value. Default value is 50 and maximum value is
  /// 5000.
  ///
  /// [pageToken] - Page token received from a previous
  /// ListBillingAccountServices call to retrieve the next page of results. If
  /// this field is empty, the first page is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse
  >
  list(
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/services';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class BillingAccountsSkuGroupsResource {
  final commons.ApiRequester _requester;

  BillingAccountsSkuGroupsSkusResource get skus =>
      BillingAccountsSkuGroupsSkusResource(_requester);

  BillingAccountsSkuGroupsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets a SKU group visible to a billing account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the BillingAccountSkuGroup to retrieve.
  /// Format: billingAccounts/{billing_account}/skuGroups/{sku_group}
  /// Value must have pattern `^billingAccounts/\[^/\]+/skuGroups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup
  >
  get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists SKU groups visible to a billing account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The billing account to list billing account SKU
  /// groups from. Format: billingAccounts/{billing_account}
  /// Value must have pattern `^billingAccounts/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of billing account SKU groups to return.
  /// Results may return fewer than this value. Default value is 50 and maximum
  /// value is 5000.
  ///
  /// [pageToken] - Page token received from a previous
  /// ListBillingAccountSkuGroups call to retrieve the next page of results. If
  /// this field is empty, the first page is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse
  >
  list(
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/skuGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class BillingAccountsSkuGroupsSkusResource {
  final commons.ApiRequester _requester;

  BillingAccountsSkuGroupsSkusResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets a SKU that is part of a billing account SKU group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the billing account SKU group SKU to
  /// retrieve. Format:
  /// billingAccounts/{billing_account}/skuGroups/{sku_group}/skus/{sku}
  /// Value must have pattern
  /// `^billingAccounts/\[^/\]+/skuGroups/\[^/\]+/skus/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku
  >
  get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists SKUs that is part of billing account SKU groups.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The billing account SKU group to list billing account
  /// SKU group SKUs from. Format:
  /// billingAccounts/{billing_account}/skuGroups/{sku_group}
  /// Value must have pattern `^billingAccounts/\[^/\]+/skuGroups/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of billing account SKU group SKUs to return.
  /// Results may return fewer than this value. Default value is 50 and maximum
  /// value is 5000.
  ///
  /// [pageToken] - Page token received from a previous
  /// ListBillingAccountSkuGroupSkus call to retrieve the next page of results.
  /// If this field is empty, the first page is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse
  >
  list(
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/skus';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class BillingAccountsSkusResource {
  final commons.ApiRequester _requester;

  BillingAccountsSkusPriceResource get price =>
      BillingAccountsSkusPriceResource(_requester);
  BillingAccountsSkusPricesResource get prices =>
      BillingAccountsSkusPricesResource(_requester);

  BillingAccountsSkusResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets a SKU visible to a billing account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the billing account SKU to retrieve.
  /// Format: billingAccounts/{billing_account}/skus/{sku}
  /// Value must have pattern `^billingAccounts/\[^/\]+/skus/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists SKUs visible to a billing account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The billing account to list billing account SKU from.
  /// Format: billingAccounts/{billing_account}
  /// Value must have pattern `^billingAccounts/\[^/\]+$`.
  ///
  /// [filter] - Options for how to filter the billing account SKUs. Currently,
  /// only filter on `billing_account_service` is supported. Only !=, =
  /// operators are supported. Examples: - billing_account_service =
  /// "billingAccounts/012345-567890-ABCDEF/services/DA34-426B-A397"
  ///
  /// [pageSize] - Maximum number of billing account SKUs to return. Results may
  /// return fewer than this value. Default value is 50 and maximum value is
  /// 5000.
  ///
  /// [pageToken] - Page token received from a previous ListBillingAccountSkus
  /// call to retrieve the next page of results. If this field is empty, the
  /// first page is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse
  >
  list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/skus';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class BillingAccountsSkusPriceResource {
  final commons.ApiRequester _requester;

  BillingAccountsSkusPriceResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the latest price for SKUs available to your Cloud Billing account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the billing account price to retrieve. Format:
  /// billingAccounts/{billing_account}/skus/{sku}/price
  /// Value must have pattern `^billingAccounts/\[^/\]+/skus/\[^/\]+/price$`.
  ///
  /// [currencyCode] - Optional. ISO-4217 currency code for the price. If not
  /// specified, the currency of the billing account is used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice>
  get(
    core.String name, {
    core.String? currencyCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (currencyCode != null) 'currencyCode': [currencyCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class BillingAccountsSkusPricesResource {
  final commons.ApiRequester _requester;

  BillingAccountsSkusPricesResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists the latest prices for SKUs available to your Cloud Billing account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. To list all Billing Account SKUs, use `-` as the SKU
  /// ID. Format: `billingAccounts/{billing_account}/skus/-` Note: Specifying an
  /// actual SKU resource id will return a collection of one Billing Account
  /// Price.
  /// Value must have pattern `^billingAccounts/\[^/\]+/skus/\[^/\]+$`.
  ///
  /// [currencyCode] - Optional. ISO-4217 currency code for the price. If not
  /// specified, currency of billing account will be used.
  ///
  /// [pageSize] - Optional. Maximum number of billing account price to return.
  /// Results may return fewer than this value. Default value is 50 and maximum
  /// value is 5000.
  ///
  /// [pageToken] - Optional. Page token received from a previous
  /// ListBillingAccountPrices call to retrieve the next page of results. If
  /// this field is empty, the first page is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse
  >
  list(
    core.String parent, {
    core.String? currencyCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (currencyCode != null) 'currencyCode': [currencyCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/prices';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class SkuGroupsResource {
  final commons.ApiRequester _requester;

  SkuGroupsSkusResource get skus => SkuGroupsSkusResource(_requester);

  SkuGroupsResource(commons.ApiRequester client) : _requester = client;

  /// Gets a publicly listed SKU group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the SKU group to retrieve. Format:
  /// skuGroups/{sku_group}
  /// Value must have pattern `^skuGroups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudBillingSkugroupsV1betaSkuGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBillingSkugroupsV1betaSkuGroup> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBillingSkugroupsV1betaSkuGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all publicly listed SKU groups.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Maximum number of SKU groups to return. Results may return
  /// fewer than this value. Default value is 50 and maximum value is 5000.
  ///
  /// [pageToken] - Page token received from a previous ListSkuGroups call to
  /// retrieve the next page of results. If this field is empty, the first page
  /// is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta/skuGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class SkuGroupsSkusResource {
  final commons.ApiRequester _requester;

  SkuGroupsSkusResource(commons.ApiRequester client) : _requester = client;

  /// Gets a publicly listed SKU that is part of a publicly listed SKU group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the SKU group SKU to retrieve. Format:
  /// skuGroups/{sku_group}/skus/{sku}
  /// Value must have pattern `^skuGroups/\[^/\]+/skus/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudBillingSkugroupskusV1betaSkuGroupSku].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBillingSkugroupskusV1betaSkuGroupSku> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBillingSkugroupskusV1betaSkuGroupSku.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all publicly listed SKUs contained by a publicly listed SKU group.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The SkuGroup to list SkuGroupSku from. Format:
  /// skuGroups/{sku_group}
  /// Value must have pattern `^skuGroups/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of SKU group SKUs to return. Results may
  /// return fewer than this value. Default value is 50 and maximum value is
  /// 5000.
  ///
  /// [pageToken] - Page token received from a previous ListSkuGroupSkus call to
  /// retrieve the next page of results. If this field is empty, the first page
  /// is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse>
  list(
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/skus';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class SkusResource {
  final commons.ApiRequester _requester;

  SkusPriceResource get price => SkusPriceResource(_requester);
  SkusPricesResource get prices => SkusPricesResource(_requester);

  SkusResource(commons.ApiRequester client) : _requester = client;
}

class SkusPriceResource {
  final commons.ApiRequester _requester;

  SkusPriceResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest price for the given SKU.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the latest price to retrieve. Format:
  /// skus/{sku}/price
  /// Value must have pattern `^skus/\[^/\]+/price$`.
  ///
  /// [currencyCode] - Optional. ISO-4217 currency code for the price. If not
  /// specified, USD will be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudBillingPricesV1betaPrice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBillingPricesV1betaPrice> get(
    core.String name, {
    core.String? currencyCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (currencyCode != null) 'currencyCode': [currencyCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBillingPricesV1betaPrice.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class SkusPricesResource {
  final commons.ApiRequester _requester;

  SkusPricesResource(commons.ApiRequester client) : _requester = client;

  /// Lists the latest prices for all SKUs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. To list the prices for all SKUs, use `-` as the SKU
  /// ID. Format: `skus/-` Specifying a specific SKU ID returns a collection
  /// with one Price object for the SKU.
  /// Value must have pattern `^skus/\[^/\]+$`.
  ///
  /// [currencyCode] - Optional. ISO-4217 currency code for the price. If not
  /// specified, USD will be used.
  ///
  /// [pageSize] - Optional. Maximum number of prices to return. Results may
  /// return fewer than this value. Default value is 50 and maximum value is
  /// 5000.
  ///
  /// [pageToken] - Optional. Page token received from a previous ListPrices
  /// call to retrieve the next page of results. If this field is empty, the
  /// first page is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudBillingPricesV1betaListPricesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBillingPricesV1betaListPricesResponse> list(
    core.String parent, {
    core.String? currencyCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (currencyCode != null) 'currencyCode': [currencyCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/prices';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBillingPricesV1betaListPricesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// A representation of a decimal value, such as 2.5.
///
/// Clients may convert values into language-native decimal formats, such as
/// Java's
/// [BigDecimal](https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/math/BigDecimal.html)
/// or Python's
/// [decimal.Decimal](https://docs.python.org/3/library/decimal.html).
typedef Decimal = $Decimal;

/// Encapsulates the aggregation information such as aggregation level and
/// interval for a billing account price.
typedef GoogleCloudBillingBillingaccountpricesV1betaAggregationInfo =
    $V1betaAggregationInfo;

/// Encapsulates the latest price for a billing account SKU.
class GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice {
  /// ISO-4217 currency code for the price.
  core.String? currencyCode;

  /// Resource name for the latest billing account price.
  core.String? name;

  /// Background information on the origin of the price.
  GoogleCloudBillingBillingaccountpricesV1betaPriceReason? priceReason;

  /// Rate price metadata.
  ///
  /// Billing account SKUs with `Rate` price are offered by pricing tiers. The
  /// price can have 1 or more rate pricing tiers.
  GoogleCloudBillingBillingaccountpricesV1betaRate? rate;

  /// Type of the price.
  ///
  /// The possible values are: \["unspecified", "rate"\].
  core.String? valueType;

  GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice({
    this.currencyCode,
    this.name,
    this.priceReason,
    this.rate,
    this.valueType,
  });

  GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice.fromJson(
    core.Map json_,
  ) : this(
        currencyCode: json_['currencyCode'] as core.String?,
        name: json_['name'] as core.String?,
        priceReason:
            json_.containsKey('priceReason')
                ? GoogleCloudBillingBillingaccountpricesV1betaPriceReason.fromJson(
                  json_['priceReason'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        rate:
            json_.containsKey('rate')
                ? GoogleCloudBillingBillingaccountpricesV1betaRate.fromJson(
                  json_['rate'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        valueType: json_['valueType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (currencyCode != null) 'currencyCode': currencyCode!,
    if (name != null) 'name': name!,
    if (priceReason != null) 'priceReason': priceReason!,
    if (rate != null) 'rate': rate!,
    if (valueType != null) 'valueType': valueType!,
  };
}

/// Encapsulates a default price which is the current list price.
typedef GoogleCloudBillingBillingaccountpricesV1betaDefaultPrice = $Empty;

/// Encapsulates a discount off the list price, anchored to the list price as of
/// a fixed time.
class GoogleCloudBillingBillingaccountpricesV1betaFixedDiscount {
  /// Percentage of the fixed discount.
  Decimal? discountPercent;

  /// Type of the fixed discount scope which indicates the source of the
  /// discount.
  ///
  /// It can have values such as 'unspecified' and 'sku-group'.
  core.String? discountScopeType;

  /// Time that the fixed discount is anchored to.
  core.String? fixTime;

  /// SKU group where the fixed discount comes from.
  core.String? skuGroup;

  GoogleCloudBillingBillingaccountpricesV1betaFixedDiscount({
    this.discountPercent,
    this.discountScopeType,
    this.fixTime,
    this.skuGroup,
  });

  GoogleCloudBillingBillingaccountpricesV1betaFixedDiscount.fromJson(
    core.Map json_,
  ) : this(
        discountPercent:
            json_.containsKey('discountPercent')
                ? Decimal.fromJson(
                  json_['discountPercent']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        discountScopeType: json_['discountScopeType'] as core.String?,
        fixTime: json_['fixTime'] as core.String?,
        skuGroup: json_['skuGroup'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (discountPercent != null) 'discountPercent': discountPercent!,
    if (discountScopeType != null) 'discountScopeType': discountScopeType!,
    if (fixTime != null) 'fixTime': fixTime!,
    if (skuGroup != null) 'skuGroup': skuGroup!,
  };
}

/// Encapsulates a set fixed price applicable during the terms of a contract
/// agreement.
typedef GoogleCloudBillingBillingaccountpricesV1betaFixedPrice = $Empty;

/// Encapsulates a discount off the current list price, not anchored to any list
/// price as of a fixed time.
class GoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount {
  /// Percentage of the floating discount.
  Decimal? discountPercent;

  /// Type of the floating discount scope which indicates the source of the
  /// discount.
  ///
  /// It can have values such as 'unspecified' and 'sku-group'.
  core.String? discountScopeType;

  /// SKU group where the floating discount comes from.
  core.String? skuGroup;

  GoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount({
    this.discountPercent,
    this.discountScopeType,
    this.skuGroup,
  });

  GoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount.fromJson(
    core.Map json_,
  ) : this(
        discountPercent:
            json_.containsKey('discountPercent')
                ? Decimal.fromJson(
                  json_['discountPercent']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        discountScopeType: json_['discountScopeType'] as core.String?,
        skuGroup: json_['skuGroup'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (discountPercent != null) 'discountPercent': discountPercent!,
    if (discountScopeType != null) 'discountScopeType': discountScopeType!,
    if (skuGroup != null) 'skuGroup': skuGroup!,
  };
}

/// Response message for ListBillingAccountPrices.
class GoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse {
  /// The returned billing account prices.
  core.List<GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice>?
  billingAccountPrices;

  /// Token that can be sent as `page_token` in the subsequent request to
  /// retrieve the next page.
  ///
  /// If this field is empty, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse({
    this.billingAccountPrices,
    this.nextPageToken,
  });

  GoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse.fromJson(
    core.Map json_,
  ) : this(
        billingAccountPrices:
            (json_['billingAccountPrices'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (billingAccountPrices != null)
      'billingAccountPrices': billingAccountPrices!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Encapsulates a contract feature that the list price (DefaultPrice) will be
/// used for the price if the current list price drops lower than the custom
/// fixed price.
///
/// Available to new contracts after March 21, 2022. Applies to all fixed price
/// SKUs in the contract, including FixedPrice, FixedDiscount, MigratedPrice,
/// and MergedPrice.
typedef GoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling = $Empty;

/// Encapsulates a price after merging from multiple sources.
///
/// With merged tiers, each individual tier can be from a different source with
/// different discount types.
typedef GoogleCloudBillingBillingaccountpricesV1betaMergedPrice = $Empty;

/// Encapsulates a price migrated from other SKUs.
class GoogleCloudBillingBillingaccountpricesV1betaMigratedPrice {
  /// Source SKU where the discount is migrated from.
  ///
  /// Format: billingAccounts/{billing_account}/skus/{sku}
  core.String? sourceSku;

  GoogleCloudBillingBillingaccountpricesV1betaMigratedPrice({this.sourceSku});

  GoogleCloudBillingBillingaccountpricesV1betaMigratedPrice.fromJson(
    core.Map json_,
  ) : this(sourceSku: json_['sourceSku'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (sourceSku != null) 'sourceSku': sourceSku!,
  };
}

/// Encapsulates a price reason which contains background information about the
/// origin of the price.
class GoogleCloudBillingBillingaccountpricesV1betaPriceReason {
  /// Default price which is the current list price.
  GoogleCloudBillingBillingaccountpricesV1betaDefaultPrice? defaultPrice;

  /// Discount off the list price, anchored to the list price as of a fixed
  /// time.
  GoogleCloudBillingBillingaccountpricesV1betaFixedDiscount? fixedDiscount;

  /// Fixed price applicable during the terms of a contract agreement.
  GoogleCloudBillingBillingaccountpricesV1betaFixedPrice? fixedPrice;

  /// Discount off the current list price, not anchored to any list price as of
  /// a fixed time.
  GoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount?
  floatingDiscount;

  /// Contract feature that the list price (DefaultPrice) will be used for the
  /// price if the current list price drops lower than the custom fixed price.
  ///
  /// Available to new contracts after March 21, 2022. Applies to all fixed
  /// price SKUs in the contract, including FixedPrice, FixedDiscount,
  /// MigratedPrice, and MergedPrice.
  GoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling?
  listPriceAsCeiling;

  /// Price after merging from multiple sources.
  GoogleCloudBillingBillingaccountpricesV1betaMergedPrice? mergedPrice;

  /// Price migrated from other SKUs.
  GoogleCloudBillingBillingaccountpricesV1betaMigratedPrice? migratedPrice;

  /// Type of the price reason.
  ///
  /// It can have values such as 'unspecified', 'default-price', 'fixed-price',
  /// 'fixed-discount', 'floating-discount', 'migrated-price', 'merged-price',
  /// 'list-price-as-ceiling'.
  core.String? type;

  GoogleCloudBillingBillingaccountpricesV1betaPriceReason({
    this.defaultPrice,
    this.fixedDiscount,
    this.fixedPrice,
    this.floatingDiscount,
    this.listPriceAsCeiling,
    this.mergedPrice,
    this.migratedPrice,
    this.type,
  });

  GoogleCloudBillingBillingaccountpricesV1betaPriceReason.fromJson(
    core.Map json_,
  ) : this(
        defaultPrice:
            json_.containsKey('defaultPrice')
                ? GoogleCloudBillingBillingaccountpricesV1betaDefaultPrice.fromJson(
                  json_['defaultPrice'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        fixedDiscount:
            json_.containsKey('fixedDiscount')
                ? GoogleCloudBillingBillingaccountpricesV1betaFixedDiscount.fromJson(
                  json_['fixedDiscount'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        fixedPrice:
            json_.containsKey('fixedPrice')
                ? GoogleCloudBillingBillingaccountpricesV1betaFixedPrice.fromJson(
                  json_['fixedPrice'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        floatingDiscount:
            json_.containsKey('floatingDiscount')
                ? GoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount.fromJson(
                  json_['floatingDiscount']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        listPriceAsCeiling:
            json_.containsKey('listPriceAsCeiling')
                ? GoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling.fromJson(
                  json_['listPriceAsCeiling']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        mergedPrice:
            json_.containsKey('mergedPrice')
                ? GoogleCloudBillingBillingaccountpricesV1betaMergedPrice.fromJson(
                  json_['mergedPrice'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        migratedPrice:
            json_.containsKey('migratedPrice')
                ? GoogleCloudBillingBillingaccountpricesV1betaMigratedPrice.fromJson(
                  json_['migratedPrice'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (defaultPrice != null) 'defaultPrice': defaultPrice!,
    if (fixedDiscount != null) 'fixedDiscount': fixedDiscount!,
    if (fixedPrice != null) 'fixedPrice': fixedPrice!,
    if (floatingDiscount != null) 'floatingDiscount': floatingDiscount!,
    if (listPriceAsCeiling != null) 'listPriceAsCeiling': listPriceAsCeiling!,
    if (mergedPrice != null) 'mergedPrice': mergedPrice!,
    if (migratedPrice != null) 'migratedPrice': migratedPrice!,
    if (type != null) 'type': type!,
  };
}

/// Encapsulates a `Rate` price.
///
/// Billing account SKUs with `Rate` price are offered by pricing tiers. The
/// price have 1 or more rate pricing tiers.
class GoogleCloudBillingBillingaccountpricesV1betaRate {
  /// Aggregation info for tiers such as aggregation level and interval.
  GoogleCloudBillingBillingaccountpricesV1betaAggregationInfo? aggregationInfo;

  /// All tiers associated with the `Rate` price.
  core.List<GoogleCloudBillingBillingaccountpricesV1betaRateTier>? tiers;

  /// Unit info such as name and quantity.
  GoogleCloudBillingBillingaccountpricesV1betaUnitInfo? unitInfo;

  GoogleCloudBillingBillingaccountpricesV1betaRate({
    this.aggregationInfo,
    this.tiers,
    this.unitInfo,
  });

  GoogleCloudBillingBillingaccountpricesV1betaRate.fromJson(core.Map json_)
    : this(
        aggregationInfo:
            json_.containsKey('aggregationInfo')
                ? GoogleCloudBillingBillingaccountpricesV1betaAggregationInfo.fromJson(
                  json_['aggregationInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        tiers:
            (json_['tiers'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBillingBillingaccountpricesV1betaRateTier.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        unitInfo:
            json_.containsKey('unitInfo')
                ? GoogleCloudBillingBillingaccountpricesV1betaUnitInfo.fromJson(
                  json_['unitInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregationInfo != null) 'aggregationInfo': aggregationInfo!,
    if (tiers != null) 'tiers': tiers!,
    if (unitInfo != null) 'unitInfo': unitInfo!,
  };
}

/// Encapsulates a rate price tier.
class GoogleCloudBillingBillingaccountpricesV1betaRateTier {
  /// Negotiated contract price specific for a billing account.
  Money? contractPrice;

  /// Percentage of effective discount calculated using the current list price
  /// per pricing tier.
  ///
  /// Formula used: effective_discount_percent = (list_price - contract_price) /
  /// list_price × 100 If list_price and contract_price are zero, this field is
  /// the same as `discount_percent` of FixedDiscount and FloatingDiscount. If
  /// your contract does NOT have the feature LIST_PRICE_AS_CEILING enabled, the
  /// effective_discount_percent can be negative if the SKU has a FixedDiscount
  /// and the current list price is lower than the list price on the date of the
  /// contract agreement. See the `FixedDiscount.fix_time` on when the discount
  /// was set. If you have questions regarding pricing per SKU, contact your
  /// Account team for more details.
  Decimal? effectiveDiscountPercent;

  /// List price of one tier.
  Money? listPrice;

  /// Lower bound amount for a tier.
  ///
  /// Tiers 0-100, 100-200 will be represented with two tiers with
  /// `start_amount` 0 and 100.
  Decimal? startAmount;

  GoogleCloudBillingBillingaccountpricesV1betaRateTier({
    this.contractPrice,
    this.effectiveDiscountPercent,
    this.listPrice,
    this.startAmount,
  });

  GoogleCloudBillingBillingaccountpricesV1betaRateTier.fromJson(core.Map json_)
    : this(
        contractPrice:
            json_.containsKey('contractPrice')
                ? Money.fromJson(
                  json_['contractPrice'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        effectiveDiscountPercent:
            json_.containsKey('effectiveDiscountPercent')
                ? Decimal.fromJson(
                  json_['effectiveDiscountPercent']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        listPrice:
            json_.containsKey('listPrice')
                ? Money.fromJson(
                  json_['listPrice'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        startAmount:
            json_.containsKey('startAmount')
                ? Decimal.fromJson(
                  json_['startAmount'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contractPrice != null) 'contractPrice': contractPrice!,
    if (effectiveDiscountPercent != null)
      'effectiveDiscountPercent': effectiveDiscountPercent!,
    if (listPrice != null) 'listPrice': listPrice!,
    if (startAmount != null) 'startAmount': startAmount!,
  };
}

/// Encapsulates the unit information for a Rate
class GoogleCloudBillingBillingaccountpricesV1betaUnitInfo {
  /// Shorthand for the unit.
  ///
  /// Example: GiBy.mo.
  core.String? unit;

  /// Human-readable description of the unit.
  ///
  /// Example: gibibyte month.
  core.String? unitDescription;

  /// Unit quantity for the tier.
  ///
  /// Example: if the RateTier price is $1 per 1000000 Bytes, then
  /// `unit_quantity` is set to 1000000.
  Decimal? unitQuantity;

  GoogleCloudBillingBillingaccountpricesV1betaUnitInfo({
    this.unit,
    this.unitDescription,
    this.unitQuantity,
  });

  GoogleCloudBillingBillingaccountpricesV1betaUnitInfo.fromJson(core.Map json_)
    : this(
        unit: json_['unit'] as core.String?,
        unitDescription: json_['unitDescription'] as core.String?,
        unitQuantity:
            json_.containsKey('unitQuantity')
                ? Decimal.fromJson(
                  json_['unitQuantity'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (unit != null) 'unit': unit!,
    if (unitDescription != null) 'unitDescription': unitDescription!,
    if (unitQuantity != null) 'unitQuantity': unitQuantity!,
  };
}

/// Encapsulates a Google Cloud service visible to a billing account.
class GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService {
  /// Description of the BillingAccountService.
  ///
  /// Example: "BigQuery", "Compute Engine".
  core.String? displayName;

  /// Resource name for the BillingAccountService.
  ///
  /// Example: "billingAccounts/012345-567890-ABCDEF/services/DA34-426B-A397".
  core.String? name;

  /// Identifier for the service.
  ///
  /// It is the string after the collection identifier "services/". Example:
  /// "DA34-426B-A397".
  core.String? serviceId;

  GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService({
    this.displayName,
    this.name,
    this.serviceId,
  });

  GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService.fromJson(
    core.Map json_,
  ) : this(
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        serviceId: json_['serviceId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (name != null) 'name': name!,
    if (serviceId != null) 'serviceId': serviceId!,
  };
}

/// Response message for ListBillingAccountServices.
class GoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse {
  /// The returned billing account services.
  core.List<
    GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService
  >?
  billingAccountServices;

  /// Token that can be sent as `page_token` in the subsequent request to
  /// retrieve the next page.
  ///
  /// If this field is empty, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse({
    this.billingAccountServices,
    this.nextPageToken,
  });

  GoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse.fromJson(
    core.Map json_,
  ) : this(
        billingAccountServices:
            (json_['billingAccountServices'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (billingAccountServices != null)
      'billingAccountServices': billingAccountServices!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Encapsulates a stock keeping (SKU) group visible to a billing account.
///
/// A SKU group represents a collection of SKUs that are related to each other.
/// For example, the `AI Platform APIs` SKU group includes SKUs from the Cloud
/// Dialogflow API, the Cloud Text-to-Speech API, and additional related APIs.
class GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup {
  /// Description of the BillingAccountSkuGroup.
  ///
  /// Example: "A2 VMs (1 Year CUD)".
  core.String? displayName;

  /// Resource name for the BillingAccountSkuGroup.
  ///
  /// Example:
  /// "billingAccounts/012345-567890-ABCDEF/skuGroups/0e6403d1-4694-44d2-a696-7a78b1a69301".
  core.String? name;

  GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup({
    this.displayName,
    this.name,
  });

  GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup.fromJson(
    core.Map json_,
  ) : this(
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (name != null) 'name': name!,
  };
}

/// Response message for ListBillingAccountSkuGroups.
class GoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse {
  /// The returned publicly listed billing account SKU groups.
  core.List<
    GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup
  >?
  billingAccountSkuGroups;

  /// Token that can be sent as `page_token` in the subsequent request to
  /// retrieve the next page.
  ///
  /// If this field is empty, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse({
    this.billingAccountSkuGroups,
    this.nextPageToken,
  });

  GoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse.fromJson(
    core.Map json_,
  ) : this(
        billingAccountSkuGroups:
            (json_['billingAccountSkuGroups'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (billingAccountSkuGroups != null)
      'billingAccountSkuGroups': billingAccountSkuGroups!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Encapsulates a SKU that is part of a billing account SKU group.
class GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku {
  /// BillingAccountService that the BillingAccountSkuGroupSku belongs to.
  core.String? billingAccountService;

  /// Description of the BillingAccountSkuGroupSku.
  ///
  /// Example: "A2 Instance Core running in Hong Kong".
  core.String? displayName;

  /// Geographic metadata that applies to the BillingAccountSkuGroupSku.
  GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy? geoTaxonomy;

  /// Resource name for the BillingAccountSkuGroupSku.
  ///
  /// Example:
  /// "billingAccounts/012345-567890-ABCDEF/skuGroups/0e6403d1-4694-44d2-a696-7a78b1a69301/skus/AA95-CD31-42FE".
  core.String? name;

  /// List of product categories that apply to the BillingAccountSkuGroupSku.
  GoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy?
  productTaxonomy;

  /// Unique identifier for the SKU.
  ///
  /// It is the string after the collection identifier "skus/" Example:
  /// "AA95-CD31-42FE".
  core.String? skuId;

  GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku({
    this.billingAccountService,
    this.displayName,
    this.geoTaxonomy,
    this.name,
    this.productTaxonomy,
    this.skuId,
  });

  GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku.fromJson(
    core.Map json_,
  ) : this(
        billingAccountService: json_['billingAccountService'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        geoTaxonomy:
            json_.containsKey('geoTaxonomy')
                ? GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy.fromJson(
                  json_['geoTaxonomy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        productTaxonomy:
            json_.containsKey('productTaxonomy')
                ? GoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy.fromJson(
                  json_['productTaxonomy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        skuId: json_['skuId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (billingAccountService != null)
      'billingAccountService': billingAccountService!,
    if (displayName != null) 'displayName': displayName!,
    if (geoTaxonomy != null) 'geoTaxonomy': geoTaxonomy!,
    if (name != null) 'name': name!,
    if (productTaxonomy != null) 'productTaxonomy': productTaxonomy!,
    if (skuId != null) 'skuId': skuId!,
  };
}

/// Encapsulates geographic metadata, such as regions and multi-regions like
/// `us-east4` or `European Union`.
class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy {
  /// Global geographic metadata with no regions.
  GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal?
  globalMetadata;

  /// Multi-regional geographic metadata with 2 or more regions.
  GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional?
  multiRegionalMetadata;

  /// Regional geographic metadata with 1 region.
  GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional?
  regionalMetadata;

  /// Type of geographic taxonomy associated with the billing account SKU group
  /// SKU.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. Unspecified type.
  /// - "TYPE_GLOBAL" : Global geographic taxonomy with no regions.
  /// - "TYPE_REGIONAL" : Regional geographic taxonomy with 1 region.
  /// - "TYPE_MULTI_REGIONAL" : Multi-regional geographic taxonomy with 2 or
  /// more regions.
  core.String? type;

  GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy({
    this.globalMetadata,
    this.multiRegionalMetadata,
    this.regionalMetadata,
    this.type,
  });

  GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy.fromJson(
    core.Map json_,
  ) : this(
        globalMetadata:
            json_.containsKey('globalMetadata')
                ? GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal.fromJson(
                  json_['globalMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        multiRegionalMetadata:
            json_.containsKey('multiRegionalMetadata')
                ? GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional.fromJson(
                  json_['multiRegionalMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        regionalMetadata:
            json_.containsKey('regionalMetadata')
                ? GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional.fromJson(
                  json_['regionalMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (globalMetadata != null) 'globalMetadata': globalMetadata!,
    if (multiRegionalMetadata != null)
      'multiRegionalMetadata': multiRegionalMetadata!,
    if (regionalMetadata != null) 'regionalMetadata': regionalMetadata!,
    if (type != null) 'type': type!,
  };
}

/// Encapsulates a global geographic taxonomy.
typedef GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal =
    $Empty;

/// Encapsulates a multi-regional geographic taxonomy.
class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional {
  /// Google Cloud regions associated with the multi-regional geographic
  /// taxonomy.
  core.List<
    GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion
  >?
  regions;

  GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional({
    this.regions,
  });

  GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional.fromJson(
    core.Map json_,
  ) : this(
        regions:
            (json_['regions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (regions != null) 'regions': regions!,
  };
}

/// Encapsulates a Google Cloud region.
typedef GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion =
    $V1betaGeoTaxonomyRegion;

/// Encapsulates a regional geographic taxonomy.
class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional {
  /// Google Cloud region associated with the regional geographic taxonomy.
  GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion? region;

  GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional({
    this.region,
  });

  GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional.fromJson(
    core.Map json_,
  ) : this(
        region:
            json_.containsKey('region')
                ? GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion.fromJson(
                  json_['region'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (region != null) 'region': region!,
  };
}

/// Response message for ListBillingAccountSkuGroupSkus.
class GoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse {
  /// The returned billing account SKU group SKUs.
  core.List<
    GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku
  >?
  billingAccountSkuGroupSkus;

  /// Token that can be sent as `page_token` in the subsequent request to
  /// retrieve the next page.
  ///
  /// If this field is empty, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse({
    this.billingAccountSkuGroupSkus,
    this.nextPageToken,
  });

  GoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse.fromJson(
    core.Map json_,
  ) : this(
        billingAccountSkuGroupSkus:
            (json_['billingAccountSkuGroupSkus'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (billingAccountSkuGroupSkus != null)
      'billingAccountSkuGroupSkus': billingAccountSkuGroupSkus!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Encapsulates product categories, such as `Serverless`, `Cloud Run`,
/// `TaskQueue`, and others.
class GoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy {
  /// All product categories that the billing account SKU group SKU belong to.
  core.List<GoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory>?
  taxonomyCategories;

  GoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy({
    this.taxonomyCategories,
  });

  GoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy.fromJson(
    core.Map json_,
  ) : this(
        taxonomyCategories:
            (json_['taxonomyCategories'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (taxonomyCategories != null) 'taxonomyCategories': taxonomyCategories!,
  };
}

/// Encapsulates a product category.
typedef GoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory =
    $V1betaTaxonomyCategory;

/// Encapsulates a stock keeping unit (SKU) visible to a billing account.
///
/// A SKU distinctly identifies a resource that you can purchase. For a list of
/// available SKUs, see [SKUs](https://cloud.google.com/skus).
class GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku {
  /// BillingAccountService that the BillingAccountSku belongs to.
  core.String? billingAccountService;

  /// Description of the BillingAccountSku.
  ///
  /// Example: "A2 Instance Core running in Hong Kong".
  core.String? displayName;

  /// Geographic metadata that applies to the BillingAccountSku.
  GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy? geoTaxonomy;

  /// Resource name for the BillingAccountSku.
  ///
  /// Example: "billingAccounts/012345-567890-ABCDEF/skus/AA95-CD31-42FE".
  core.String? name;

  /// List of product categories that apply to the BillingAccountSku.
  GoogleCloudBillingBillingaccountskusV1betaProductTaxonomy? productTaxonomy;

  /// Unique identifier for the SKU.
  ///
  /// It is the string after the collection identifier "skus/" Example:
  /// "AA95-CD31-42FE".
  core.String? skuId;

  GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku({
    this.billingAccountService,
    this.displayName,
    this.geoTaxonomy,
    this.name,
    this.productTaxonomy,
    this.skuId,
  });

  GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku.fromJson(
    core.Map json_,
  ) : this(
        billingAccountService: json_['billingAccountService'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        geoTaxonomy:
            json_.containsKey('geoTaxonomy')
                ? GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy.fromJson(
                  json_['geoTaxonomy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        productTaxonomy:
            json_.containsKey('productTaxonomy')
                ? GoogleCloudBillingBillingaccountskusV1betaProductTaxonomy.fromJson(
                  json_['productTaxonomy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        skuId: json_['skuId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (billingAccountService != null)
      'billingAccountService': billingAccountService!,
    if (displayName != null) 'displayName': displayName!,
    if (geoTaxonomy != null) 'geoTaxonomy': geoTaxonomy!,
    if (name != null) 'name': name!,
    if (productTaxonomy != null) 'productTaxonomy': productTaxonomy!,
    if (skuId != null) 'skuId': skuId!,
  };
}

/// Encapsulates geographic metadata, such as regions and multi-regions like
/// `us-east4` or `European Union`.
class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy {
  /// Global geographic metadata with no regions.
  GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal? globalMetadata;

  /// Multi-regional geographic metadata with 2 or more regions.
  GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional?
  multiRegionalMetadata;

  /// Regional geographic metadata with 1 region.
  GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional?
  regionalMetadata;

  /// Type of geographic taxonomy associated with the billing account SKU.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. Unspecified type.
  /// - "TYPE_GLOBAL" : Global geographic taxonomy with no regions.
  /// - "TYPE_REGIONAL" : Regional geographic taxonomy with 1 region.
  /// - "TYPE_MULTI_REGIONAL" : Multi-regional geographic taxonomy with 2 or
  /// more regions.
  core.String? type;

  GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy({
    this.globalMetadata,
    this.multiRegionalMetadata,
    this.regionalMetadata,
    this.type,
  });

  GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy.fromJson(core.Map json_)
    : this(
        globalMetadata:
            json_.containsKey('globalMetadata')
                ? GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal.fromJson(
                  json_['globalMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        multiRegionalMetadata:
            json_.containsKey('multiRegionalMetadata')
                ? GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional.fromJson(
                  json_['multiRegionalMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        regionalMetadata:
            json_.containsKey('regionalMetadata')
                ? GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional.fromJson(
                  json_['regionalMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (globalMetadata != null) 'globalMetadata': globalMetadata!,
    if (multiRegionalMetadata != null)
      'multiRegionalMetadata': multiRegionalMetadata!,
    if (regionalMetadata != null) 'regionalMetadata': regionalMetadata!,
    if (type != null) 'type': type!,
  };
}

/// Encapsulates a global geographic taxonomy.
typedef GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal = $Empty;

/// Encapsulates a multi-regional geographic taxonomy.
class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional {
  /// Google Cloud regions associated with the multi-regional geographic
  /// taxonomy.
  core.List<GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion>?
  regions;

  GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional({
    this.regions,
  });

  GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional.fromJson(
    core.Map json_,
  ) : this(
        regions:
            (json_['regions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (regions != null) 'regions': regions!,
  };
}

/// Encapsulates a Google Cloud region.
typedef GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion =
    $V1betaGeoTaxonomyRegion;

/// Encapsulates a regional geographic taxonomy.
class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional {
  /// Google Cloud region associated with the regional geographic taxonomy.
  GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion? region;

  GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional({this.region});

  GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional.fromJson(
    core.Map json_,
  ) : this(
        region:
            json_.containsKey('region')
                ? GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion.fromJson(
                  json_['region'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (region != null) 'region': region!,
  };
}

/// Response message for ListBillingAccountSkus.
class GoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse {
  /// The returned billing account SKUs.
  core.List<GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku>?
  billingAccountSkus;

  /// Token that can be sent as `page_token` in the subsequent request to
  /// retrieve the next page.
  ///
  /// If this field is empty, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse({
    this.billingAccountSkus,
    this.nextPageToken,
  });

  GoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse.fromJson(
    core.Map json_,
  ) : this(
        billingAccountSkus:
            (json_['billingAccountSkus'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (billingAccountSkus != null) 'billingAccountSkus': billingAccountSkus!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Encapsulates product categories, such as `Serverless`, `Cloud Run`,
/// `TaskQueue`, and others.
class GoogleCloudBillingBillingaccountskusV1betaProductTaxonomy {
  /// All product categories that the billing account SKU belong to.
  core.List<GoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory>?
  taxonomyCategories;

  GoogleCloudBillingBillingaccountskusV1betaProductTaxonomy({
    this.taxonomyCategories,
  });

  GoogleCloudBillingBillingaccountskusV1betaProductTaxonomy.fromJson(
    core.Map json_,
  ) : this(
        taxonomyCategories:
            (json_['taxonomyCategories'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (taxonomyCategories != null) 'taxonomyCategories': taxonomyCategories!,
  };
}

/// Encapsulates a product category.
typedef GoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory =
    $V1betaTaxonomyCategory;

/// Encapsulates the aggregation information such as aggregation level and
/// interval for a price.
typedef GoogleCloudBillingPricesV1betaAggregationInfo = $V1betaAggregationInfo;

/// Response message for ListPrices.
class GoogleCloudBillingPricesV1betaListPricesResponse {
  /// Token that can be sent as `page_token` in the subsequent request to
  /// retrieve the next page.
  ///
  /// If this field is empty, there are no subsequent pages.
  core.String? nextPageToken;

  /// The returned publicly listed prices.
  core.List<GoogleCloudBillingPricesV1betaPrice>? prices;

  GoogleCloudBillingPricesV1betaListPricesResponse({
    this.nextPageToken,
    this.prices,
  });

  GoogleCloudBillingPricesV1betaListPricesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        prices:
            (json_['prices'] as core.List?)
                ?.map(
                  (value) => GoogleCloudBillingPricesV1betaPrice.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (prices != null) 'prices': prices!,
  };
}

/// Encapsulates the latest price for a SKU.
class GoogleCloudBillingPricesV1betaPrice {
  /// ISO-4217 currency code for the price.
  core.String? currencyCode;

  /// Resource name for the latest price.
  core.String? name;

  /// Rate price metadata.
  ///
  /// SKUs with `Rate` price are offered by pricing tiers. The price can have 1
  /// or more rate pricing tiers.
  GoogleCloudBillingPricesV1betaRate? rate;

  /// Type of the price.
  ///
  /// It can have values: \["unspecified", "rate"\].
  core.String? valueType;

  GoogleCloudBillingPricesV1betaPrice({
    this.currencyCode,
    this.name,
    this.rate,
    this.valueType,
  });

  GoogleCloudBillingPricesV1betaPrice.fromJson(core.Map json_)
    : this(
        currencyCode: json_['currencyCode'] as core.String?,
        name: json_['name'] as core.String?,
        rate:
            json_.containsKey('rate')
                ? GoogleCloudBillingPricesV1betaRate.fromJson(
                  json_['rate'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        valueType: json_['valueType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (currencyCode != null) 'currencyCode': currencyCode!,
    if (name != null) 'name': name!,
    if (rate != null) 'rate': rate!,
    if (valueType != null) 'valueType': valueType!,
  };
}

/// Encapsulates a `Rate` price.
///
/// SKUs with `Rate` price are offered by pricing tiers. The price have 1 or
/// more rate pricing tiers.
class GoogleCloudBillingPricesV1betaRate {
  /// Aggregation info for tiers such as aggregation level and interval.
  GoogleCloudBillingPricesV1betaAggregationInfo? aggregationInfo;

  /// All tiers associated with the `Rate` price.
  core.List<GoogleCloudBillingPricesV1betaRateTier>? tiers;

  /// Unit info such as name and quantity.
  GoogleCloudBillingPricesV1betaUnitInfo? unitInfo;

  GoogleCloudBillingPricesV1betaRate({
    this.aggregationInfo,
    this.tiers,
    this.unitInfo,
  });

  GoogleCloudBillingPricesV1betaRate.fromJson(core.Map json_)
    : this(
        aggregationInfo:
            json_.containsKey('aggregationInfo')
                ? GoogleCloudBillingPricesV1betaAggregationInfo.fromJson(
                  json_['aggregationInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        tiers:
            (json_['tiers'] as core.List?)
                ?.map(
                  (value) => GoogleCloudBillingPricesV1betaRateTier.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        unitInfo:
            json_.containsKey('unitInfo')
                ? GoogleCloudBillingPricesV1betaUnitInfo.fromJson(
                  json_['unitInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregationInfo != null) 'aggregationInfo': aggregationInfo!,
    if (tiers != null) 'tiers': tiers!,
    if (unitInfo != null) 'unitInfo': unitInfo!,
  };
}

/// Encapsulates a rate price tier.
class GoogleCloudBillingPricesV1betaRateTier {
  /// List price of one tier.
  Money? listPrice;

  /// Lower bound amount for a tier.
  ///
  /// Tiers 0-100, 100-200 will be represented with two tiers with
  /// `start_amount` 0 and 100.
  Decimal? startAmount;

  GoogleCloudBillingPricesV1betaRateTier({this.listPrice, this.startAmount});

  GoogleCloudBillingPricesV1betaRateTier.fromJson(core.Map json_)
    : this(
        listPrice:
            json_.containsKey('listPrice')
                ? Money.fromJson(
                  json_['listPrice'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        startAmount:
            json_.containsKey('startAmount')
                ? Decimal.fromJson(
                  json_['startAmount'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (listPrice != null) 'listPrice': listPrice!,
    if (startAmount != null) 'startAmount': startAmount!,
  };
}

/// Encapsulates the unit information for a Rate
class GoogleCloudBillingPricesV1betaUnitInfo {
  /// Shorthand for the unit.
  ///
  /// Example: GiBy.mo.
  core.String? unit;

  /// Human-readable description of the unit.
  ///
  /// Example: gibibyte month.
  core.String? unitDescription;

  /// Unit quantity for the tier.
  ///
  /// Example: if the RateTier price is $1 per 1000000 Bytes, then
  /// `unit_quantity` is set to 1000000.
  Decimal? unitQuantity;

  GoogleCloudBillingPricesV1betaUnitInfo({
    this.unit,
    this.unitDescription,
    this.unitQuantity,
  });

  GoogleCloudBillingPricesV1betaUnitInfo.fromJson(core.Map json_)
    : this(
        unit: json_['unit'] as core.String?,
        unitDescription: json_['unitDescription'] as core.String?,
        unitQuantity:
            json_.containsKey('unitQuantity')
                ? Decimal.fromJson(
                  json_['unitQuantity'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (unit != null) 'unit': unit!,
    if (unitDescription != null) 'unitDescription': unitDescription!,
    if (unitQuantity != null) 'unitQuantity': unitQuantity!,
  };
}

/// Response message for ListSkuGroups.
class GoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse {
  /// Token that can be sent as `page_token` in the subsequent request to
  /// retrieve the next page.
  ///
  /// If this field is empty, there are no subsequent pages.
  core.String? nextPageToken;

  /// The returned publicly listed SKU groups.
  core.List<GoogleCloudBillingSkugroupsV1betaSkuGroup>? skuGroups;

  GoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse({
    this.nextPageToken,
    this.skuGroups,
  });

  GoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        skuGroups:
            (json_['skuGroups'] as core.List?)
                ?.map(
                  (value) => GoogleCloudBillingSkugroupsV1betaSkuGroup.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (skuGroups != null) 'skuGroups': skuGroups!,
  };
}

/// Encapsulates a publicly listed stock keeping unit (SKU) group.
///
/// A SKU group represents a collection of SKUs that are related to each other.
/// For example, the `AI Platform APIs` SKU group includes SKUs from the Cloud
/// Dialogflow API, the Cloud Text-to-Speech API, and additional related APIs.
class GoogleCloudBillingSkugroupsV1betaSkuGroup {
  /// Description of the SKU group.
  ///
  /// Example: "A2 VMs (1 Year CUD)".
  core.String? displayName;

  /// Resource name for the SKU group.
  ///
  /// Example: "skuGroups/0e6403d1-4694-44d2-a696-7a78b1a69301".
  core.String? name;

  GoogleCloudBillingSkugroupsV1betaSkuGroup({this.displayName, this.name});

  GoogleCloudBillingSkugroupsV1betaSkuGroup.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (name != null) 'name': name!,
  };
}

/// Encapsulates geographic metadata, such as regions and multi-regions like
/// `us-east4` or `European Union`.
class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomy {
  /// Global geographic metadata with no regions.
  GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal? globalMetadata;

  /// Multi-regional geographic metadata with 2 or more regions.
  GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional?
  multiRegionalMetadata;

  /// Regional geographic metadata with 1 region.
  GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional? regionalMetadata;

  /// Type of geographic taxonomy associated with the SKU group SKU.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. Unspecified type.
  /// - "TYPE_GLOBAL" : Global geographic taxonomy with no regions.
  /// - "TYPE_REGIONAL" : Regional geographic taxonomy with 1 region.
  /// - "TYPE_MULTI_REGIONAL" : Multi-regional geographic taxonomy with 2 or
  /// more regions.
  core.String? type;

  GoogleCloudBillingSkugroupskusV1betaGeoTaxonomy({
    this.globalMetadata,
    this.multiRegionalMetadata,
    this.regionalMetadata,
    this.type,
  });

  GoogleCloudBillingSkugroupskusV1betaGeoTaxonomy.fromJson(core.Map json_)
    : this(
        globalMetadata:
            json_.containsKey('globalMetadata')
                ? GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal.fromJson(
                  json_['globalMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        multiRegionalMetadata:
            json_.containsKey('multiRegionalMetadata')
                ? GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional.fromJson(
                  json_['multiRegionalMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        regionalMetadata:
            json_.containsKey('regionalMetadata')
                ? GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional.fromJson(
                  json_['regionalMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (globalMetadata != null) 'globalMetadata': globalMetadata!,
    if (multiRegionalMetadata != null)
      'multiRegionalMetadata': multiRegionalMetadata!,
    if (regionalMetadata != null) 'regionalMetadata': regionalMetadata!,
    if (type != null) 'type': type!,
  };
}

/// Encapsulates a global geographic taxonomy.
typedef GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal = $Empty;

/// Encapsulates a multi-regional geographic taxonomy.
class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional {
  /// Google Cloud regions associated with the multi-regional geographic
  /// taxonomy.
  core.List<GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion>? regions;

  GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional({this.regions});

  GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional.fromJson(
    core.Map json_,
  ) : this(
        regions:
            (json_['regions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (regions != null) 'regions': regions!,
  };
}

/// Encapsulates a Google Cloud region.
typedef GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion =
    $V1betaGeoTaxonomyRegion;

/// Encapsulates a regional geographic taxonomy.
class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional {
  /// Google Cloud region associated with the regional geographic taxonomy.
  GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion? region;

  GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional({this.region});

  GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional.fromJson(
    core.Map json_,
  ) : this(
        region:
            json_.containsKey('region')
                ? GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion.fromJson(
                  json_['region'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (region != null) 'region': region!,
  };
}

/// Response message for ListSkuGroupSkus.
class GoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse {
  /// Token that can be sent as `page_token` in the subsequent request to
  /// retrieve the next page.
  ///
  /// If this field is empty, there are no subsequent pages.
  core.String? nextPageToken;

  /// The returned SKU group SKUs.
  core.List<GoogleCloudBillingSkugroupskusV1betaSkuGroupSku>? skuGroupSkus;

  GoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse({
    this.nextPageToken,
    this.skuGroupSkus,
  });

  GoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        skuGroupSkus:
            (json_['skuGroupSkus'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBillingSkugroupskusV1betaSkuGroupSku.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (skuGroupSkus != null) 'skuGroupSkus': skuGroupSkus!,
  };
}

/// Encapsulates product categories, such as `Serverless`, `Cloud Run`,
/// `TaskQueue`, and others.
class GoogleCloudBillingSkugroupskusV1betaProductTaxonomy {
  /// All product categories that the SKU group SKU belongs to.
  core.List<GoogleCloudBillingSkugroupskusV1betaTaxonomyCategory>?
  taxonomyCategories;

  GoogleCloudBillingSkugroupskusV1betaProductTaxonomy({
    this.taxonomyCategories,
  });

  GoogleCloudBillingSkugroupskusV1betaProductTaxonomy.fromJson(core.Map json_)
    : this(
        taxonomyCategories:
            (json_['taxonomyCategories'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBillingSkugroupskusV1betaTaxonomyCategory.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (taxonomyCategories != null) 'taxonomyCategories': taxonomyCategories!,
  };
}

/// Encapsulates a publicly listed stock keeping unit (SKU) that is part of a
/// publicly listed SKU group.
///
/// A SKU group represents a collection of SKUs that are related to each other.
/// For example, the `AI Platform APIs` SKU group includes SKUs from the Cloud
/// Dialogflow API, the Cloud Text-to-Speech API, and additional related APIs.
class GoogleCloudBillingSkugroupskusV1betaSkuGroupSku {
  /// Description of the SkuGroupSku.
  ///
  /// Example: "A2 Instance Core running in Hong Kong".
  core.String? displayName;

  /// Geographic metadata that applies to the SkuGroupSku.
  GoogleCloudBillingSkugroupskusV1betaGeoTaxonomy? geoTaxonomy;

  /// Resource name for the SkuGroupSku.
  ///
  /// Example:
  /// "skuGroups/0e6403d1-4694-44d2-a696-7a78b1a69301/skus/AA95-CD31-42FE".
  core.String? name;

  /// List of product categories that apply to the SkuGroupSku.
  GoogleCloudBillingSkugroupskusV1betaProductTaxonomy? productTaxonomy;

  /// Service that the SkuGroupSku belongs to.
  core.String? service;

  /// Unique identifier for the SKU.
  ///
  /// It is the string after the collection identifier "skus/" Example:
  /// "AA95-CD31-42FE".
  core.String? skuId;

  GoogleCloudBillingSkugroupskusV1betaSkuGroupSku({
    this.displayName,
    this.geoTaxonomy,
    this.name,
    this.productTaxonomy,
    this.service,
    this.skuId,
  });

  GoogleCloudBillingSkugroupskusV1betaSkuGroupSku.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        geoTaxonomy:
            json_.containsKey('geoTaxonomy')
                ? GoogleCloudBillingSkugroupskusV1betaGeoTaxonomy.fromJson(
                  json_['geoTaxonomy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        productTaxonomy:
            json_.containsKey('productTaxonomy')
                ? GoogleCloudBillingSkugroupskusV1betaProductTaxonomy.fromJson(
                  json_['productTaxonomy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        service: json_['service'] as core.String?,
        skuId: json_['skuId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (geoTaxonomy != null) 'geoTaxonomy': geoTaxonomy!,
    if (name != null) 'name': name!,
    if (productTaxonomy != null) 'productTaxonomy': productTaxonomy!,
    if (service != null) 'service': service!,
    if (skuId != null) 'skuId': skuId!,
  };
}

/// Encapsulates a product category.
typedef GoogleCloudBillingSkugroupskusV1betaTaxonomyCategory =
    $V1betaTaxonomyCategory;

/// Represents an amount of money with its currency type.
typedef Money = $Money;
