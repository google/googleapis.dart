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

/// Merchant API - reports_v1
///
/// Programmatically manage your Merchant Center Accounts.
///
/// For more information, see <https://developers.google.com/merchant/api>
///
/// Create an instance of [MerchantApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsReportsResource]
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

  AccountsReportsResource get reports => AccountsReportsResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;
}

class AccountsReportsResource {
  final commons.ApiRequester _requester;

  AccountsReportsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a report defined by a search query.
  ///
  /// The response might contain fewer rows than specified by `page_size`. Rely
  /// on `next_page_token` to determine if there are more rows to be requested.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Id of the account making the call. Must be a
  /// standalone account or an MCA subaccount. Format: accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchResponse> search(
    SearchRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'reports/v1/' + core.Uri.encodeFull('$parent') + '/reports:search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SearchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Fields available for query in `best_sellers_brand_view` table.
///
/// [Best sellers](https://support.google.com/merchants/answer/9488679) report
/// with top brands. Values are only set for fields requested explicitly in the
/// request's search query.
class BestSellersBrandView {
  /// Name of the brand.
  core.String? brand;

  /// Popularity rank in the previous week or month.
  core.String? previousRank;

  /// Estimated demand in relation to the brand with the highest popularity rank
  /// in the same category and country in the previous week or month.
  /// Possible string values are:
  /// - "RELATIVE_DEMAND_ENUM_UNSPECIFIED" : Not specified.
  /// - "VERY_LOW" : Demand is 0-5% of the demand of the highest ranked product
  /// cluster or brand.
  /// - "LOW" : Demand is 6-10% of the demand of the highest ranked product
  /// cluster or brand.
  /// - "MEDIUM" : Demand is 11-20% of the demand of the highest ranked product
  /// cluster or brand.
  /// - "HIGH" : Demand is 21-50% of the demand of the highest ranked product
  /// cluster or brand.
  /// - "VERY_HIGH" : Demand is 51-100% of the demand of the highest ranked
  /// product cluster or brand.
  core.String? previousRelativeDemand;

  /// Popularity of the brand on Ads and organic surfaces, in the selected
  /// category and country, based on the estimated number of units sold.
  core.String? rank;

  /// Estimated demand in relation to the brand with the highest popularity rank
  /// in the same category and country.
  /// Possible string values are:
  /// - "RELATIVE_DEMAND_ENUM_UNSPECIFIED" : Not specified.
  /// - "VERY_LOW" : Demand is 0-5% of the demand of the highest ranked product
  /// cluster or brand.
  /// - "LOW" : Demand is 6-10% of the demand of the highest ranked product
  /// cluster or brand.
  /// - "MEDIUM" : Demand is 11-20% of the demand of the highest ranked product
  /// cluster or brand.
  /// - "HIGH" : Demand is 21-50% of the demand of the highest ranked product
  /// cluster or brand.
  /// - "VERY_HIGH" : Demand is 51-100% of the demand of the highest ranked
  /// product cluster or brand.
  core.String? relativeDemand;

  /// Change in the estimated demand.
  ///
  /// Whether it rose, sank or remained flat.
  /// Possible string values are:
  /// - "RELATIVE_DEMAND_CHANGE_TYPE_ENUM_UNSPECIFIED" : Not specified.
  /// - "SINKER" : Relative demand is lower than the previous time period.
  /// - "FLAT" : Relative demand is equal to the previous time period.
  /// - "RISER" : Relative demand is higher than the previous time period.
  core.String? relativeDemandChange;

  /// Google product category ID to calculate the ranking for, represented in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  ///
  /// Required in the `SELECT` clause. If a `WHERE` condition on
  /// `report_category_id` is not specified in the query, rankings for all
  /// top-level categories are returned.
  core.String? reportCategoryId;

  /// Country where the ranking is calculated.
  ///
  /// Represented in the ISO 3166 format. Required in the `SELECT` clause.
  /// Condition on `report_country_code` is required in the `WHERE` clause.
  core.String? reportCountryCode;

  /// Report date.
  ///
  /// The value of this field can only be one of the following: * The first day
  /// of the week (Monday) for weekly reports, * The first day of the month for
  /// monthly reports. Required in the `SELECT` clause. If a `WHERE` condition
  /// on `report_date` is not specified in the query, the latest available
  /// weekly or monthly report is returned.
  Date? reportDate;

  /// Granularity of the report.
  ///
  /// The ranking can be done over a week or a month timeframe. Required in the
  /// `SELECT` clause. Condition on `report_granularity` is required in the
  /// `WHERE` clause.
  /// Possible string values are:
  /// - "REPORT_GRANULARITY_ENUM_UNSPECIFIED" : Not specified.
  /// - "WEEKLY" : Report is computed over a week timeframe.
  /// - "MONTHLY" : Report is computed over a month timeframe.
  core.String? reportGranularity;

  BestSellersBrandView({
    this.brand,
    this.previousRank,
    this.previousRelativeDemand,
    this.rank,
    this.relativeDemand,
    this.relativeDemandChange,
    this.reportCategoryId,
    this.reportCountryCode,
    this.reportDate,
    this.reportGranularity,
  });

  BestSellersBrandView.fromJson(core.Map json_)
    : this(
        brand: json_['brand'] as core.String?,
        previousRank: json_['previousRank'] as core.String?,
        previousRelativeDemand: json_['previousRelativeDemand'] as core.String?,
        rank: json_['rank'] as core.String?,
        relativeDemand: json_['relativeDemand'] as core.String?,
        relativeDemandChange: json_['relativeDemandChange'] as core.String?,
        reportCategoryId: json_['reportCategoryId'] as core.String?,
        reportCountryCode: json_['reportCountryCode'] as core.String?,
        reportDate:
            json_.containsKey('reportDate')
                ? Date.fromJson(
                  json_['reportDate'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        reportGranularity: json_['reportGranularity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (brand != null) 'brand': brand!,
    if (previousRank != null) 'previousRank': previousRank!,
    if (previousRelativeDemand != null)
      'previousRelativeDemand': previousRelativeDemand!,
    if (rank != null) 'rank': rank!,
    if (relativeDemand != null) 'relativeDemand': relativeDemand!,
    if (relativeDemandChange != null)
      'relativeDemandChange': relativeDemandChange!,
    if (reportCategoryId != null) 'reportCategoryId': reportCategoryId!,
    if (reportCountryCode != null) 'reportCountryCode': reportCountryCode!,
    if (reportDate != null) 'reportDate': reportDate!,
    if (reportGranularity != null) 'reportGranularity': reportGranularity!,
  };
}

/// Fields available for query in `best_sellers_product_cluster_view` table.
///
/// [Best sellers](https://support.google.com/merchants/answer/9488679) report
/// with top product clusters. A product cluster is a grouping for different
/// offers and variants that represent the same product, for example, Google
/// Pixel 7. Values are only set for fields requested explicitly in the
/// request's search query.
class BestSellersProductClusterView {
  /// Brand of the product cluster.
  core.String? brand;

  /// Whether there is at least one product of the brand currently `IN_STOCK` in
  /// your product data source in at least one of the countries, all products
  /// are `OUT_OF_STOCK` in your product data source in all countries, or
  /// `NOT_IN_INVENTORY`.
  ///
  /// The field doesn't take the Best sellers report country filter into
  /// account.
  /// Possible string values are:
  /// - "INVENTORY_STATUS_UNSPECIFIED" : Not specified.
  /// - "IN_STOCK" : You have a product for this product cluster or brand in
  /// stock.
  /// - "OUT_OF_STOCK" : You have a product for this product cluster or brand in
  /// inventory but it is currently out of stock.
  /// - "NOT_IN_INVENTORY" : You do not have a product for this product cluster
  /// or brand in inventory.
  core.String? brandInventoryStatus;

  /// Product category (1st level) of the product cluster, represented in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL1;

  /// Product category (2nd level) of the product cluster, represented in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL2;

  /// Product category (3rd level) of the product cluster, represented in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL3;

  /// Product category (4th level) of the product cluster, represented in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL4;

  /// Product category (5th level) of the product cluster, represented in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL5;

  /// Whether the product cluster is `IN_STOCK` in your product data source in
  /// at least one of the countries, `OUT_OF_STOCK` in your product data source
  /// in all countries, or `NOT_IN_INVENTORY` at all.
  ///
  /// The field doesn't take the Best sellers report country filter into
  /// account.
  /// Possible string values are:
  /// - "INVENTORY_STATUS_UNSPECIFIED" : Not specified.
  /// - "IN_STOCK" : You have a product for this product cluster or brand in
  /// stock.
  /// - "OUT_OF_STOCK" : You have a product for this product cluster or brand in
  /// inventory but it is currently out of stock.
  /// - "NOT_IN_INVENTORY" : You do not have a product for this product cluster
  /// or brand in inventory.
  core.String? inventoryStatus;

  /// Popularity rank in the previous week or month.
  core.String? previousRank;

  /// Estimated demand in relation to the product cluster with the highest
  /// popularity rank in the same category and country in the previous week or
  /// month.
  /// Possible string values are:
  /// - "RELATIVE_DEMAND_ENUM_UNSPECIFIED" : Not specified.
  /// - "VERY_LOW" : Demand is 0-5% of the demand of the highest ranked product
  /// cluster or brand.
  /// - "LOW" : Demand is 6-10% of the demand of the highest ranked product
  /// cluster or brand.
  /// - "MEDIUM" : Demand is 11-20% of the demand of the highest ranked product
  /// cluster or brand.
  /// - "HIGH" : Demand is 21-50% of the demand of the highest ranked product
  /// cluster or brand.
  /// - "VERY_HIGH" : Demand is 51-100% of the demand of the highest ranked
  /// product cluster or brand.
  core.String? previousRelativeDemand;

  /// Popularity of the product cluster on Ads and organic surfaces, in the
  /// selected category and country, based on the estimated number of units
  /// sold.
  core.String? rank;

  /// Estimated demand in relation to the product cluster with the highest
  /// popularity rank in the same category and country.
  /// Possible string values are:
  /// - "RELATIVE_DEMAND_ENUM_UNSPECIFIED" : Not specified.
  /// - "VERY_LOW" : Demand is 0-5% of the demand of the highest ranked product
  /// cluster or brand.
  /// - "LOW" : Demand is 6-10% of the demand of the highest ranked product
  /// cluster or brand.
  /// - "MEDIUM" : Demand is 11-20% of the demand of the highest ranked product
  /// cluster or brand.
  /// - "HIGH" : Demand is 21-50% of the demand of the highest ranked product
  /// cluster or brand.
  /// - "VERY_HIGH" : Demand is 51-100% of the demand of the highest ranked
  /// product cluster or brand.
  core.String? relativeDemand;

  /// Change in the estimated demand.
  ///
  /// Whether it rose, sank or remained flat.
  /// Possible string values are:
  /// - "RELATIVE_DEMAND_CHANGE_TYPE_ENUM_UNSPECIFIED" : Not specified.
  /// - "SINKER" : Relative demand is lower than the previous time period.
  /// - "FLAT" : Relative demand is equal to the previous time period.
  /// - "RISER" : Relative demand is higher than the previous time period.
  core.String? relativeDemandChange;

  /// Google product category ID to calculate the ranking for, represented in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  ///
  /// Required in the `SELECT` clause. If a `WHERE` condition on
  /// `report_category_id` is not specified in the query, rankings for all
  /// top-level categories are returned.
  core.String? reportCategoryId;

  /// Country where the ranking is calculated.
  ///
  /// Represented in the ISO 3166 format. Required in the `SELECT` clause.
  /// Condition on `report_country_code` is required in the `WHERE` clause.
  core.String? reportCountryCode;

  /// Report date.
  ///
  /// The value of this field can only be one of the following: * The first day
  /// of the week (Monday) for weekly reports, * The first day of the month for
  /// monthly reports. Required in the `SELECT` clause. If a `WHERE` condition
  /// on `report_date` is not specified in the query, the latest available
  /// weekly or monthly report is returned.
  Date? reportDate;

  /// Granularity of the report.
  ///
  /// The ranking can be done over a week or a month timeframe. Required in the
  /// `SELECT` clause. Condition on `report_granularity` is required in the
  /// `WHERE` clause.
  /// Possible string values are:
  /// - "REPORT_GRANULARITY_ENUM_UNSPECIFIED" : Not specified.
  /// - "WEEKLY" : Report is computed over a week timeframe.
  /// - "MONTHLY" : Report is computed over a month timeframe.
  core.String? reportGranularity;

  /// Title of the product cluster.
  core.String? title;

  /// GTINs of example variants of the product cluster.
  core.List<core.String>? variantGtins;

  BestSellersProductClusterView({
    this.brand,
    this.brandInventoryStatus,
    this.categoryL1,
    this.categoryL2,
    this.categoryL3,
    this.categoryL4,
    this.categoryL5,
    this.inventoryStatus,
    this.previousRank,
    this.previousRelativeDemand,
    this.rank,
    this.relativeDemand,
    this.relativeDemandChange,
    this.reportCategoryId,
    this.reportCountryCode,
    this.reportDate,
    this.reportGranularity,
    this.title,
    this.variantGtins,
  });

  BestSellersProductClusterView.fromJson(core.Map json_)
    : this(
        brand: json_['brand'] as core.String?,
        brandInventoryStatus: json_['brandInventoryStatus'] as core.String?,
        categoryL1: json_['categoryL1'] as core.String?,
        categoryL2: json_['categoryL2'] as core.String?,
        categoryL3: json_['categoryL3'] as core.String?,
        categoryL4: json_['categoryL4'] as core.String?,
        categoryL5: json_['categoryL5'] as core.String?,
        inventoryStatus: json_['inventoryStatus'] as core.String?,
        previousRank: json_['previousRank'] as core.String?,
        previousRelativeDemand: json_['previousRelativeDemand'] as core.String?,
        rank: json_['rank'] as core.String?,
        relativeDemand: json_['relativeDemand'] as core.String?,
        relativeDemandChange: json_['relativeDemandChange'] as core.String?,
        reportCategoryId: json_['reportCategoryId'] as core.String?,
        reportCountryCode: json_['reportCountryCode'] as core.String?,
        reportDate:
            json_.containsKey('reportDate')
                ? Date.fromJson(
                  json_['reportDate'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        reportGranularity: json_['reportGranularity'] as core.String?,
        title: json_['title'] as core.String?,
        variantGtins:
            (json_['variantGtins'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (brand != null) 'brand': brand!,
    if (brandInventoryStatus != null)
      'brandInventoryStatus': brandInventoryStatus!,
    if (categoryL1 != null) 'categoryL1': categoryL1!,
    if (categoryL2 != null) 'categoryL2': categoryL2!,
    if (categoryL3 != null) 'categoryL3': categoryL3!,
    if (categoryL4 != null) 'categoryL4': categoryL4!,
    if (categoryL5 != null) 'categoryL5': categoryL5!,
    if (inventoryStatus != null) 'inventoryStatus': inventoryStatus!,
    if (previousRank != null) 'previousRank': previousRank!,
    if (previousRelativeDemand != null)
      'previousRelativeDemand': previousRelativeDemand!,
    if (rank != null) 'rank': rank!,
    if (relativeDemand != null) 'relativeDemand': relativeDemand!,
    if (relativeDemandChange != null)
      'relativeDemandChange': relativeDemandChange!,
    if (reportCategoryId != null) 'reportCategoryId': reportCategoryId!,
    if (reportCountryCode != null) 'reportCountryCode': reportCountryCode!,
    if (reportDate != null) 'reportDate': reportDate!,
    if (reportGranularity != null) 'reportGranularity': reportGranularity!,
    if (title != null) 'title': title!,
    if (variantGtins != null) 'variantGtins': variantGtins!,
  };
}

/// Fields available for query in `competitive_visibility_benchmark_view` table.
///
/// [Competitive visibility](https://support.google.com/merchants/answer/11366442)
/// report with the category benchmark. Values are only set for fields requested
/// explicitly in the request's search query.
class CompetitiveVisibilityBenchmarkView {
  /// Change in visibility based on impressions with respect to the start of the
  /// selected time range (or first day with non-zero impressions) for a
  /// combined set of merchants with highest visibility approximating the
  /// market.
  ///
  /// Cannot be filtered on in the 'WHERE' clause.
  core.double? categoryBenchmarkVisibilityTrend;

  /// Date of this row.
  ///
  /// Required in the `SELECT` clause. A condition on `date` is required in the
  /// `WHERE` clause.
  Date? date;

  /// Google product category ID to calculate the report for, represented in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  ///
  /// Required in the `SELECT` clause. A condition on `report_category_id` is
  /// required in the `WHERE` clause.
  core.String? reportCategoryId;

  /// Country where impressions appeared.
  ///
  /// Required in the `SELECT` clause. A condition on `report_country_code` is
  /// required in the `WHERE` clause.
  core.String? reportCountryCode;

  /// Traffic source of impressions.
  ///
  /// Required in the `SELECT` clause.
  /// Possible string values are:
  /// - "TRAFFIC_SOURCE_ENUM_UNSPECIFIED" : Not specified.
  /// - "ORGANIC" : Organic traffic.
  /// - "ADS" : Traffic from ads.
  /// - "ALL" : Organic and ads traffic.
  core.String? trafficSource;

  /// Change in visibility based on impressions for your domain with respect to
  /// the start of the selected time range (or first day with non-zero
  /// impressions).
  ///
  /// Cannot be filtered on in the 'WHERE' clause.
  core.double? yourDomainVisibilityTrend;

  CompetitiveVisibilityBenchmarkView({
    this.categoryBenchmarkVisibilityTrend,
    this.date,
    this.reportCategoryId,
    this.reportCountryCode,
    this.trafficSource,
    this.yourDomainVisibilityTrend,
  });

  CompetitiveVisibilityBenchmarkView.fromJson(core.Map json_)
    : this(
        categoryBenchmarkVisibilityTrend:
            (json_['categoryBenchmarkVisibilityTrend'] as core.num?)
                ?.toDouble(),
        date:
            json_.containsKey('date')
                ? Date.fromJson(
                  json_['date'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        reportCategoryId: json_['reportCategoryId'] as core.String?,
        reportCountryCode: json_['reportCountryCode'] as core.String?,
        trafficSource: json_['trafficSource'] as core.String?,
        yourDomainVisibilityTrend:
            (json_['yourDomainVisibilityTrend'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (categoryBenchmarkVisibilityTrend != null)
      'categoryBenchmarkVisibilityTrend': categoryBenchmarkVisibilityTrend!,
    if (date != null) 'date': date!,
    if (reportCategoryId != null) 'reportCategoryId': reportCategoryId!,
    if (reportCountryCode != null) 'reportCountryCode': reportCountryCode!,
    if (trafficSource != null) 'trafficSource': trafficSource!,
    if (yourDomainVisibilityTrend != null)
      'yourDomainVisibilityTrend': yourDomainVisibilityTrend!,
  };
}

/// Fields available for query in `competitive_visibility_competitor_view`
/// table.
///
/// [Competitive visibility](https://support.google.com/merchants/answer/11366442)
/// report with businesses with similar visibility. Values are only set for
/// fields requested explicitly in the request's search query.
class CompetitiveVisibilityCompetitorView {
  /// [Ads / organic ratio](https://support.google.com/merchants/answer/11366442#zippy=%2Cads-free-ratio)
  /// shows how often the domain receives impressions from Shopping ads compared
  /// to organic traffic.
  ///
  /// The number is rounded and bucketed. Cannot be filtered on in the 'WHERE'
  /// clause.
  core.double? adsOrganicRatio;

  /// Date of this row.
  ///
  /// A condition on `date` is required in the `WHERE` clause.
  Date? date;

  /// Domain of your competitor or your domain, if 'is_your_domain' is true.
  ///
  /// Required in the `SELECT` clause. Cannot be filtered on in the 'WHERE'
  /// clause.
  core.String? domain;

  /// [Higher position rate](https://support.google.com/merchants/answer/11366442#zippy=%2Chigher-position-rate)
  /// shows how often a competitor’s offer got placed in a higher position on
  /// the page than your offer.
  ///
  /// Cannot be filtered on in the 'WHERE' clause.
  core.double? higherPositionRate;

  /// True if this row contains data for your domain.
  ///
  /// Cannot be filtered on in the 'WHERE' clause.
  core.bool? isYourDomain;

  /// [Page overlap rate](https://support.google.com/merchants/answer/11366442#zippy=%2Cpage-overlap-rate)
  /// shows how frequently competing retailers’ offers are shown together with
  /// your offers on the same page.
  ///
  /// Cannot be filtered on in the 'WHERE' clause.
  core.double? pageOverlapRate;

  /// Position of the domain in the similar businesses ranking for the selected
  /// keys (`date`, `report_category_id`, `report_country_code`,
  /// `traffic_source`) based on impressions.
  ///
  /// 1 is the highest. Cannot be filtered on in the 'WHERE' clause.
  core.String? rank;

  /// [Relative visibility](https://support.google.com/merchants/answer/11366442#zippy=%2Crelative-visibility)
  /// shows how often your competitors’ offers are shown compared to your
  /// offers.
  ///
  /// In other words, this is the number of displayed impressions of a
  /// competitor retailer divided by the number of your displayed impressions
  /// during a selected time range for a selected product category and country.
  /// Cannot be filtered on in the 'WHERE' clause.
  core.double? relativeVisibility;

  /// Google product category ID to calculate the report for, represented in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  ///
  /// Required in the `SELECT` clause. A condition on `report_category_id` is
  /// required in the `WHERE` clause.
  core.String? reportCategoryId;

  /// Country where impressions appeared.
  ///
  /// Required in the `SELECT` clause. A condition on `report_country_code` is
  /// required in the `WHERE` clause.
  core.String? reportCountryCode;

  /// Traffic source of impressions.
  ///
  /// Required in the `SELECT` clause.
  /// Possible string values are:
  /// - "TRAFFIC_SOURCE_ENUM_UNSPECIFIED" : Not specified.
  /// - "ORGANIC" : Organic traffic.
  /// - "ADS" : Traffic from ads.
  /// - "ALL" : Organic and ads traffic.
  core.String? trafficSource;

  CompetitiveVisibilityCompetitorView({
    this.adsOrganicRatio,
    this.date,
    this.domain,
    this.higherPositionRate,
    this.isYourDomain,
    this.pageOverlapRate,
    this.rank,
    this.relativeVisibility,
    this.reportCategoryId,
    this.reportCountryCode,
    this.trafficSource,
  });

  CompetitiveVisibilityCompetitorView.fromJson(core.Map json_)
    : this(
        adsOrganicRatio: (json_['adsOrganicRatio'] as core.num?)?.toDouble(),
        date:
            json_.containsKey('date')
                ? Date.fromJson(
                  json_['date'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        domain: json_['domain'] as core.String?,
        higherPositionRate:
            (json_['higherPositionRate'] as core.num?)?.toDouble(),
        isYourDomain: json_['isYourDomain'] as core.bool?,
        pageOverlapRate: (json_['pageOverlapRate'] as core.num?)?.toDouble(),
        rank: json_['rank'] as core.String?,
        relativeVisibility:
            (json_['relativeVisibility'] as core.num?)?.toDouble(),
        reportCategoryId: json_['reportCategoryId'] as core.String?,
        reportCountryCode: json_['reportCountryCode'] as core.String?,
        trafficSource: json_['trafficSource'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adsOrganicRatio != null) 'adsOrganicRatio': adsOrganicRatio!,
    if (date != null) 'date': date!,
    if (domain != null) 'domain': domain!,
    if (higherPositionRate != null) 'higherPositionRate': higherPositionRate!,
    if (isYourDomain != null) 'isYourDomain': isYourDomain!,
    if (pageOverlapRate != null) 'pageOverlapRate': pageOverlapRate!,
    if (rank != null) 'rank': rank!,
    if (relativeVisibility != null) 'relativeVisibility': relativeVisibility!,
    if (reportCategoryId != null) 'reportCategoryId': reportCategoryId!,
    if (reportCountryCode != null) 'reportCountryCode': reportCountryCode!,
    if (trafficSource != null) 'trafficSource': trafficSource!,
  };
}

/// Fields available for query in `competitive_visibility_top_merchant_view`
/// table.
///
/// [Competitive visibility](https://support.google.com/merchants/answer/11366442)
/// report with business with highest visibility. Values are only set for fields
/// requested explicitly in the request's search query.
class CompetitiveVisibilityTopMerchantView {
  /// [Ads / organic ratio](https://support.google.com/merchants/answer/11366442#zippy=%2Cads-free-ratio)
  /// shows how often the domain receives impressions from Shopping ads compared
  /// to organic traffic.
  ///
  /// The number is rounded and bucketed. Cannot be filtered on in the 'WHERE'
  /// clause.
  core.double? adsOrganicRatio;

  /// Date of this row.
  ///
  /// Cannot be selected in the `SELECT` clause. A condition on `date` is
  /// required in the `WHERE` clause.
  Date? date;

  /// Domain of your competitor or your domain, if 'is_your_domain' is true.
  ///
  /// Required in the `SELECT` clause. Cannot be filtered on in the 'WHERE'
  /// clause.
  core.String? domain;

  /// [Higher position rate](https://support.google.com/merchants/answer/11366442#zippy=%2Chigher-position-rate)
  /// shows how often a competitor’s offer got placed in a higher position on
  /// the page than your offer.
  ///
  /// Cannot be filtered on in the 'WHERE' clause.
  core.double? higherPositionRate;

  /// True if this row contains data for your domain.
  ///
  /// Cannot be filtered on in the 'WHERE' clause.
  core.bool? isYourDomain;

  /// [Page overlap rate](https://support.google.com/merchants/answer/11366442#zippy=%2Cpage-overlap-rate)
  /// shows how frequently competing retailers’ offers are shown together with
  /// your offers on the same page.
  ///
  /// Cannot be filtered on in the 'WHERE' clause.
  core.double? pageOverlapRate;

  /// Position of the domain in the top merchants ranking for the selected keys
  /// (`date`, `report_category_id`, `report_country_code`, `traffic_source`)
  /// based on impressions.
  ///
  /// 1 is the highest. Cannot be filtered on in the 'WHERE' clause.
  core.String? rank;

  /// Google product category ID to calculate the report for, represented in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  ///
  /// Required in the `SELECT` clause. A condition on `report_category_id` is
  /// required in the `WHERE` clause.
  core.String? reportCategoryId;

  /// Country where impressions appeared.
  ///
  /// Required in the `SELECT` clause. A condition on `report_country_code` is
  /// required in the `WHERE` clause.
  core.String? reportCountryCode;

  /// Traffic source of impressions.
  ///
  /// Required in the `SELECT` clause.
  /// Possible string values are:
  /// - "TRAFFIC_SOURCE_ENUM_UNSPECIFIED" : Not specified.
  /// - "ORGANIC" : Organic traffic.
  /// - "ADS" : Traffic from ads.
  /// - "ALL" : Organic and ads traffic.
  core.String? trafficSource;

  CompetitiveVisibilityTopMerchantView({
    this.adsOrganicRatio,
    this.date,
    this.domain,
    this.higherPositionRate,
    this.isYourDomain,
    this.pageOverlapRate,
    this.rank,
    this.reportCategoryId,
    this.reportCountryCode,
    this.trafficSource,
  });

  CompetitiveVisibilityTopMerchantView.fromJson(core.Map json_)
    : this(
        adsOrganicRatio: (json_['adsOrganicRatio'] as core.num?)?.toDouble(),
        date:
            json_.containsKey('date')
                ? Date.fromJson(
                  json_['date'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        domain: json_['domain'] as core.String?,
        higherPositionRate:
            (json_['higherPositionRate'] as core.num?)?.toDouble(),
        isYourDomain: json_['isYourDomain'] as core.bool?,
        pageOverlapRate: (json_['pageOverlapRate'] as core.num?)?.toDouble(),
        rank: json_['rank'] as core.String?,
        reportCategoryId: json_['reportCategoryId'] as core.String?,
        reportCountryCode: json_['reportCountryCode'] as core.String?,
        trafficSource: json_['trafficSource'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adsOrganicRatio != null) 'adsOrganicRatio': adsOrganicRatio!,
    if (date != null) 'date': date!,
    if (domain != null) 'domain': domain!,
    if (higherPositionRate != null) 'higherPositionRate': higherPositionRate!,
    if (isYourDomain != null) 'isYourDomain': isYourDomain!,
    if (pageOverlapRate != null) 'pageOverlapRate': pageOverlapRate!,
    if (rank != null) 'rank': rank!,
    if (reportCategoryId != null) 'reportCategoryId': reportCategoryId!,
    if (reportCountryCode != null) 'reportCountryCode': reportCountryCode!,
    if (trafficSource != null) 'trafficSource': trafficSource!,
  };
}

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values. * A month and day, with a zero year (for example, an
/// anniversary). * A year on its own, with a zero month and a zero day. * A
/// year and month, with a zero day (for example, a credit card expiration
/// date). Related types: * google.type.TimeOfDay * google.type.DateTime *
/// google.protobuf.Timestamp
typedef Date = $Date;

/// Issue severity per reporting context.
class IssueSeverityPerReportingContext {
  /// List of demoted countries in the reporting context, represented in ISO
  /// 3166 format.
  core.List<core.String>? demotedCountries;

  /// List of disapproved countries in the reporting context, represented in ISO
  /// 3166 format.
  core.List<core.String>? disapprovedCountries;

  /// Reporting context the issue applies to.
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

  IssueSeverityPerReportingContext({
    this.demotedCountries,
    this.disapprovedCountries,
    this.reportingContext,
  });

  IssueSeverityPerReportingContext.fromJson(core.Map json_)
    : this(
        demotedCountries:
            (json_['demotedCountries'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        disapprovedCountries:
            (json_['disapprovedCountries'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        reportingContext: json_['reportingContext'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (demotedCountries != null) 'demotedCountries': demotedCountries!,
    if (disapprovedCountries != null)
      'disapprovedCountries': disapprovedCountries!,
    if (reportingContext != null) 'reportingContext': reportingContext!,
  };
}

/// Item issue associated with the product.
class ItemIssue {
  /// Item issue resolution.
  /// Possible string values are:
  /// - "ITEM_ISSUE_RESOLUTION_UNSPECIFIED" : Not specified.
  /// - "MERCHANT_ACTION" : The merchant has to fix the issue.
  /// - "PENDING_PROCESSING" : The issue will be resolved automatically (for
  /// example, image crawl) or through a Google review. No merchant action is
  /// required now. Resolution might lead to another issue (for example, if
  /// crawl fails).
  core.String? resolution;

  /// Item issue severity.
  ItemIssueSeverity? severity;

  /// Item issue type.
  ItemIssueType? type;

  ItemIssue({this.resolution, this.severity, this.type});

  ItemIssue.fromJson(core.Map json_)
    : this(
        resolution: json_['resolution'] as core.String?,
        severity:
            json_.containsKey('severity')
                ? ItemIssueSeverity.fromJson(
                  json_['severity'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        type:
            json_.containsKey('type')
                ? ItemIssueType.fromJson(
                  json_['type'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (resolution != null) 'resolution': resolution!,
    if (severity != null) 'severity': severity!,
    if (type != null) 'type': type!,
  };
}

/// How the issue affects the serving of the product.
class ItemIssueSeverity {
  /// Aggregated severity of the issue for all reporting contexts it affects.
  ///
  /// **This field can be used for filtering the results.**
  /// Possible string values are:
  /// - "AGGREGATED_ISSUE_SEVERITY_UNSPECIFIED" : Not specified.
  /// - "DISAPPROVED" : Issue disapproves the product in at least one reporting
  /// context.
  /// - "DEMOTED" : Issue demotes the product in all reporting contexts it
  /// affects.
  /// - "PENDING" : Issue resolution is `PENDING_PROCESSING`.
  core.String? aggregatedSeverity;

  /// Issue severity per reporting context.
  core.List<IssueSeverityPerReportingContext>? severityPerReportingContext;

  ItemIssueSeverity({
    this.aggregatedSeverity,
    this.severityPerReportingContext,
  });

  ItemIssueSeverity.fromJson(core.Map json_)
    : this(
        aggregatedSeverity: json_['aggregatedSeverity'] as core.String?,
        severityPerReportingContext:
            (json_['severityPerReportingContext'] as core.List?)
                ?.map(
                  (value) => IssueSeverityPerReportingContext.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregatedSeverity != null) 'aggregatedSeverity': aggregatedSeverity!,
    if (severityPerReportingContext != null)
      'severityPerReportingContext': severityPerReportingContext!,
  };
}

/// Issue type.
class ItemIssueType {
  /// Canonical attribute name for attribute-specific issues.
  core.String? canonicalAttribute;

  /// Error code of the issue, equivalent to the `code` of
  /// [Product issues](https://developers.google.com/shopping-content/guides/product-issues).
  core.String? code;

  ItemIssueType({this.canonicalAttribute, this.code});

  ItemIssueType.fromJson(core.Map json_)
    : this(
        canonicalAttribute: json_['canonicalAttribute'] as core.String?,
        code: json_['code'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (canonicalAttribute != null) 'canonicalAttribute': canonicalAttribute!,
    if (code != null) 'code': code!,
  };
}

/// Fields available for query in `non_product_performance_view` table.
///
/// Performance data on images and online store links leading to your
/// non-product pages. This includes performance metrics (for example, `clicks`)
/// and dimensions according to which performance metrics are segmented (for
/// example, `date`). Segment fields cannot be selected in queries without also
/// selecting at least one metric field. Values are only set for fields
/// requested explicitly in the request's search query.
class NonProductPerformanceView {
  /// Click-through rate - the number of clicks (`clicks`) divided by the number
  /// of impressions (`impressions`) of images and online store links leading to
  /// your non-product pages.
  ///
  /// Metric.
  core.double? clickThroughRate;

  /// Number of clicks on images and online store links leading to your
  /// non-product pages.
  ///
  /// Metric.
  core.String? clicks;

  /// Date in the merchant timezone to which metrics apply.
  ///
  /// Segment. Condition on `date` is required in the `WHERE` clause.
  Date? date;

  /// Number of times images and online store links leading to your non-product
  /// pages were shown.
  ///
  /// Metric.
  core.String? impressions;

  /// First day of the week (Monday) of the metrics date in the merchant
  /// timezone.
  ///
  /// Segment.
  Date? week;

  NonProductPerformanceView({
    this.clickThroughRate,
    this.clicks,
    this.date,
    this.impressions,
    this.week,
  });

  NonProductPerformanceView.fromJson(core.Map json_)
    : this(
        clickThroughRate: (json_['clickThroughRate'] as core.num?)?.toDouble(),
        clicks: json_['clicks'] as core.String?,
        date:
            json_.containsKey('date')
                ? Date.fromJson(
                  json_['date'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        impressions: json_['impressions'] as core.String?,
        week:
            json_.containsKey('week')
                ? Date.fromJson(
                  json_['week'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clickThroughRate != null) 'clickThroughRate': clickThroughRate!,
    if (clicks != null) 'clicks': clicks!,
    if (date != null) 'date': date!,
    if (impressions != null) 'impressions': impressions!,
    if (week != null) 'week': week!,
  };
}

/// The price represented as a number and currency.
typedef Price = $Price;

/// Fields available for query in `price_competitiveness_product_view` table.
///
/// [Price competitiveness](https://support.google.com/merchants/answer/9626903)
/// report. Values are only set for fields requested explicitly in the request's
/// search query.
class PriceCompetitivenessProductView {
  /// Latest available price benchmark for the product's catalog in the
  /// benchmark country.
  Price? benchmarkPrice;

  /// Brand of the product.
  core.String? brand;

  /// Product category (1st level) in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL1;

  /// Product category (2nd level) in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL2;

  /// Product category (3rd level) in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL3;

  /// Product category (4th level) in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL4;

  /// Product category (5th level) in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL5;

  /// REST ID of the product, in the form of
  /// `channel~languageCode~feedLabel~offerId`.
  ///
  /// Can be used to join data with the `product_view` table. Required in the
  /// `SELECT` clause.
  core.String? id;

  /// Merchant-provided id of the product.
  core.String? offerId;

  /// Current price of the product.
  Price? price;

  /// Product type (1st level) in merchant's own
  /// [product taxonomy](https://support.google.com/merchants/answer/6324406).
  core.String? productTypeL1;

  /// Product type (2nd level) in merchant's own
  /// [product taxonomy](https://support.google.com/merchants/answer/6324406).
  core.String? productTypeL2;

  /// Product type (3rd level) in merchant's own
  /// [product taxonomy](https://support.google.com/merchants/answer/6324406).
  core.String? productTypeL3;

  /// Product type (4th level) in merchant's own
  /// [product taxonomy](https://support.google.com/merchants/answer/6324406).
  core.String? productTypeL4;

  /// Product type (5th level) in merchant's own
  /// [product taxonomy](https://support.google.com/merchants/answer/6324406).
  core.String? productTypeL5;

  /// Country of the price benchmark.
  ///
  /// Represented in the ISO 3166 format. Required in the `SELECT` clause.
  core.String? reportCountryCode;

  /// Title of the product.
  core.String? title;

  PriceCompetitivenessProductView({
    this.benchmarkPrice,
    this.brand,
    this.categoryL1,
    this.categoryL2,
    this.categoryL3,
    this.categoryL4,
    this.categoryL5,
    this.id,
    this.offerId,
    this.price,
    this.productTypeL1,
    this.productTypeL2,
    this.productTypeL3,
    this.productTypeL4,
    this.productTypeL5,
    this.reportCountryCode,
    this.title,
  });

  PriceCompetitivenessProductView.fromJson(core.Map json_)
    : this(
        benchmarkPrice:
            json_.containsKey('benchmarkPrice')
                ? Price.fromJson(
                  json_['benchmarkPrice']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        brand: json_['brand'] as core.String?,
        categoryL1: json_['categoryL1'] as core.String?,
        categoryL2: json_['categoryL2'] as core.String?,
        categoryL3: json_['categoryL3'] as core.String?,
        categoryL4: json_['categoryL4'] as core.String?,
        categoryL5: json_['categoryL5'] as core.String?,
        id: json_['id'] as core.String?,
        offerId: json_['offerId'] as core.String?,
        price:
            json_.containsKey('price')
                ? Price.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        productTypeL1: json_['productTypeL1'] as core.String?,
        productTypeL2: json_['productTypeL2'] as core.String?,
        productTypeL3: json_['productTypeL3'] as core.String?,
        productTypeL4: json_['productTypeL4'] as core.String?,
        productTypeL5: json_['productTypeL5'] as core.String?,
        reportCountryCode: json_['reportCountryCode'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (benchmarkPrice != null) 'benchmarkPrice': benchmarkPrice!,
    if (brand != null) 'brand': brand!,
    if (categoryL1 != null) 'categoryL1': categoryL1!,
    if (categoryL2 != null) 'categoryL2': categoryL2!,
    if (categoryL3 != null) 'categoryL3': categoryL3!,
    if (categoryL4 != null) 'categoryL4': categoryL4!,
    if (categoryL5 != null) 'categoryL5': categoryL5!,
    if (id != null) 'id': id!,
    if (offerId != null) 'offerId': offerId!,
    if (price != null) 'price': price!,
    if (productTypeL1 != null) 'productTypeL1': productTypeL1!,
    if (productTypeL2 != null) 'productTypeL2': productTypeL2!,
    if (productTypeL3 != null) 'productTypeL3': productTypeL3!,
    if (productTypeL4 != null) 'productTypeL4': productTypeL4!,
    if (productTypeL5 != null) 'productTypeL5': productTypeL5!,
    if (reportCountryCode != null) 'reportCountryCode': reportCountryCode!,
    if (title != null) 'title': title!,
  };
}

/// Fields available for query in `price_insights_product_view` table.
///
/// [Price insights](https://support.google.com/merchants/answer/11916926)
/// report. Values are only set for fields requested explicitly in the request's
/// search query.
class PriceInsightsProductView {
  /// Brand of the product.
  core.String? brand;

  /// Product category (1st level) in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL1;

  /// Product category (2nd level) in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL2;

  /// Product category (3rd level) in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL3;

  /// Product category (4th level) in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL4;

  /// Product category (5th level) in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL5;

  /// The predicted effectiveness of applying the price suggestion, bucketed.
  /// Possible string values are:
  /// - "EFFECTIVENESS_UNSPECIFIED" : Effectiveness is unknown.
  /// - "LOW" : Effectiveness is low.
  /// - "MEDIUM" : Effectiveness is medium.
  /// - "HIGH" : Effectiveness is high.
  core.String? effectiveness;

  /// REST ID of the product, in the form of
  /// `channel~languageCode~feedLabel~offerId`.
  ///
  /// Can be used to join data with the `product_view` table. Required in the
  /// `SELECT` clause.
  core.String? id;

  /// Merchant-provided id of the product.
  core.String? offerId;

  /// Predicted change in clicks as a fraction after introducing the suggested
  /// price compared to current active price.
  ///
  /// For example, 0.05 is a 5% predicted increase in clicks.
  core.double? predictedClicksChangeFraction;

  /// Predicted change in conversions as a fraction after introducing the
  /// suggested price compared to current active price.
  ///
  /// For example, 0.05 is a 5% predicted increase in conversions).
  core.double? predictedConversionsChangeFraction;

  /// Predicted change in impressions as a fraction after introducing the
  /// suggested price compared to current active price.
  ///
  /// For example, 0.05 is a 5% predicted increase in impressions.
  core.double? predictedImpressionsChangeFraction;

  /// Current price of the product.
  Price? price;

  /// Product type (1st level) in merchant's own
  /// [product taxonomy](https://support.google.com/merchants/answer/6324406).
  core.String? productTypeL1;

  /// Product type (2nd level) in merchant's own
  /// [product taxonomy](https://support.google.com/merchants/answer/6324406).
  core.String? productTypeL2;

  /// Product type (3rd level) in merchant's own
  /// [product taxonomy](https://support.google.com/merchants/answer/6324406).
  core.String? productTypeL3;

  /// Product type (4th level) in merchant's own
  /// [product taxonomy](https://support.google.com/merchants/answer/6324406).
  core.String? productTypeL4;

  /// Product type (5th level) in merchant's own
  /// [product taxonomy](https://support.google.com/merchants/answer/6324406).
  core.String? productTypeL5;

  /// Latest suggested price for the product.
  Price? suggestedPrice;

  /// Title of the product.
  core.String? title;

  PriceInsightsProductView({
    this.brand,
    this.categoryL1,
    this.categoryL2,
    this.categoryL3,
    this.categoryL4,
    this.categoryL5,
    this.effectiveness,
    this.id,
    this.offerId,
    this.predictedClicksChangeFraction,
    this.predictedConversionsChangeFraction,
    this.predictedImpressionsChangeFraction,
    this.price,
    this.productTypeL1,
    this.productTypeL2,
    this.productTypeL3,
    this.productTypeL4,
    this.productTypeL5,
    this.suggestedPrice,
    this.title,
  });

  PriceInsightsProductView.fromJson(core.Map json_)
    : this(
        brand: json_['brand'] as core.String?,
        categoryL1: json_['categoryL1'] as core.String?,
        categoryL2: json_['categoryL2'] as core.String?,
        categoryL3: json_['categoryL3'] as core.String?,
        categoryL4: json_['categoryL4'] as core.String?,
        categoryL5: json_['categoryL5'] as core.String?,
        effectiveness: json_['effectiveness'] as core.String?,
        id: json_['id'] as core.String?,
        offerId: json_['offerId'] as core.String?,
        predictedClicksChangeFraction:
            (json_['predictedClicksChangeFraction'] as core.num?)?.toDouble(),
        predictedConversionsChangeFraction:
            (json_['predictedConversionsChangeFraction'] as core.num?)
                ?.toDouble(),
        predictedImpressionsChangeFraction:
            (json_['predictedImpressionsChangeFraction'] as core.num?)
                ?.toDouble(),
        price:
            json_.containsKey('price')
                ? Price.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        productTypeL1: json_['productTypeL1'] as core.String?,
        productTypeL2: json_['productTypeL2'] as core.String?,
        productTypeL3: json_['productTypeL3'] as core.String?,
        productTypeL4: json_['productTypeL4'] as core.String?,
        productTypeL5: json_['productTypeL5'] as core.String?,
        suggestedPrice:
            json_.containsKey('suggestedPrice')
                ? Price.fromJson(
                  json_['suggestedPrice']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (brand != null) 'brand': brand!,
    if (categoryL1 != null) 'categoryL1': categoryL1!,
    if (categoryL2 != null) 'categoryL2': categoryL2!,
    if (categoryL3 != null) 'categoryL3': categoryL3!,
    if (categoryL4 != null) 'categoryL4': categoryL4!,
    if (categoryL5 != null) 'categoryL5': categoryL5!,
    if (effectiveness != null) 'effectiveness': effectiveness!,
    if (id != null) 'id': id!,
    if (offerId != null) 'offerId': offerId!,
    if (predictedClicksChangeFraction != null)
      'predictedClicksChangeFraction': predictedClicksChangeFraction!,
    if (predictedConversionsChangeFraction != null)
      'predictedConversionsChangeFraction': predictedConversionsChangeFraction!,
    if (predictedImpressionsChangeFraction != null)
      'predictedImpressionsChangeFraction': predictedImpressionsChangeFraction!,
    if (price != null) 'price': price!,
    if (productTypeL1 != null) 'productTypeL1': productTypeL1!,
    if (productTypeL2 != null) 'productTypeL2': productTypeL2!,
    if (productTypeL3 != null) 'productTypeL3': productTypeL3!,
    if (productTypeL4 != null) 'productTypeL4': productTypeL4!,
    if (productTypeL5 != null) 'productTypeL5': productTypeL5!,
    if (suggestedPrice != null) 'suggestedPrice': suggestedPrice!,
    if (title != null) 'title': title!,
  };
}

/// Fields available for query in `product_performance_view` table.
///
/// Product performance data for your account, including performance metrics
/// (for example, `clicks`) and dimensions according to which performance
/// metrics are segmented (for example, `offer_id`). Values of product
/// dimensions, such as `offer_id`, reflect the state of a product at the time
/// of the impression. Segment fields cannot be selected in queries without also
/// selecting at least one metric field. Values are only set for fields
/// requested explicitly in the request's search query.
class ProductPerformanceView {
  /// Brand of the product.
  ///
  /// Segment.
  core.String? brand;

  /// \[Product category (1st
  /// level)\](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type)
  /// in Google's product taxonomy.
  ///
  /// Segment.
  core.String? categoryL1;

  /// \[Product category (2nd
  /// level)\](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type)
  /// in Google's product taxonomy.
  ///
  /// Segment.
  core.String? categoryL2;

  /// \[Product category (3rd
  /// level)\](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type)
  /// in Google's product taxonomy.
  ///
  /// Segment.
  core.String? categoryL3;

  /// \[Product category (4th
  /// level)\](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type)
  /// in Google's product taxonomy.
  ///
  /// Segment.
  core.String? categoryL4;

  /// \[Product category (5th
  /// level)\](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type)
  /// in Google's product taxonomy.
  ///
  /// Segment.
  core.String? categoryL5;

  /// Click-through rate - the number of clicks merchant's products receive
  /// (clicks) divided by the number of times the products are shown
  /// (impressions).
  ///
  /// Metric.
  core.double? clickThroughRate;

  /// Number of clicks.
  ///
  /// Metric.
  core.String? clicks;

  /// Number of conversions divided by the number of clicks, reported on the
  /// impression date.
  ///
  /// Metric. Available only for the `FREE` traffic source.
  core.double? conversionRate;

  /// Value of conversions attributed to the product, reported on the conversion
  /// date.
  ///
  /// Metric. Available only for the `FREE` traffic source.
  Price? conversionValue;

  /// Number of conversions attributed to the product, reported on the
  /// conversion date.
  ///
  /// Depending on the attribution model, a conversion might be distributed
  /// across multiple clicks, where each click gets its own credit assigned.
  /// This metric is a sum of all such credits. Metric. Available only for the
  /// `FREE` traffic source.
  core.double? conversions;

  /// Custom label 0 for custom grouping of products.
  ///
  /// Segment.
  core.String? customLabel0;

  /// Custom label 1 for custom grouping of products.
  ///
  /// Segment.
  core.String? customLabel1;

  /// Custom label 2 for custom grouping of products.
  ///
  /// Segment.
  core.String? customLabel2;

  /// Custom label 3 for custom grouping of products.
  ///
  /// Segment.
  core.String? customLabel3;

  /// Custom label 4 for custom grouping of products.
  ///
  /// Segment.
  core.String? customLabel4;

  /// Code of the country where the customer is located at the time of the
  /// event.
  ///
  /// Represented in the ISO 3166 format. Segment. If the customer country
  /// cannot be determined, a special 'ZZ' code is returned.
  core.String? customerCountryCode;

  /// Date in the merchant timezone to which metrics apply.
  ///
  /// Segment. Condition on `date` is required in the `WHERE` clause.
  Date? date;

  /// Number of times merchant's products are shown.
  ///
  /// Metric.
  core.String? impressions;

  /// Marketing method to which metrics apply.
  ///
  /// Segment.
  /// Possible string values are:
  /// - "MARKETING_METHOD_ENUM_UNSPECIFIED" : Not specified.
  /// - "ORGANIC" : Organic marketing.
  /// - "ADS" : Ads-based marketing.
  core.String? marketingMethod;

  /// Merchant-provided id of the product.
  ///
  /// Segment.
  core.String? offerId;

  /// \[Product type (1st
  /// level)\](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type)
  /// in merchant's own product taxonomy.
  ///
  /// Segment.
  core.String? productTypeL1;

  /// \[Product type (2nd
  /// level)\](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type)
  /// in merchant's own product taxonomy.
  ///
  /// Segment.
  core.String? productTypeL2;

  /// \[Product type (3rd
  /// level)\](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type)
  /// in merchant's own product taxonomy.
  ///
  /// Segment.
  core.String? productTypeL3;

  /// \[Product type (4th
  /// level)\](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type)
  /// in merchant's own product taxonomy.
  ///
  /// Segment.
  core.String? productTypeL4;

  /// \[Product type (5th
  /// level)\](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type)
  /// in merchant's own product taxonomy.
  ///
  /// Segment.
  core.String? productTypeL5;

  /// Title of the product.
  ///
  /// Segment.
  core.String? title;

  /// First day of the week (Monday) of the metrics date in the merchant
  /// timezone.
  ///
  /// Segment.
  Date? week;

  ProductPerformanceView({
    this.brand,
    this.categoryL1,
    this.categoryL2,
    this.categoryL3,
    this.categoryL4,
    this.categoryL5,
    this.clickThroughRate,
    this.clicks,
    this.conversionRate,
    this.conversionValue,
    this.conversions,
    this.customLabel0,
    this.customLabel1,
    this.customLabel2,
    this.customLabel3,
    this.customLabel4,
    this.customerCountryCode,
    this.date,
    this.impressions,
    this.marketingMethod,
    this.offerId,
    this.productTypeL1,
    this.productTypeL2,
    this.productTypeL3,
    this.productTypeL4,
    this.productTypeL5,
    this.title,
    this.week,
  });

  ProductPerformanceView.fromJson(core.Map json_)
    : this(
        brand: json_['brand'] as core.String?,
        categoryL1: json_['categoryL1'] as core.String?,
        categoryL2: json_['categoryL2'] as core.String?,
        categoryL3: json_['categoryL3'] as core.String?,
        categoryL4: json_['categoryL4'] as core.String?,
        categoryL5: json_['categoryL5'] as core.String?,
        clickThroughRate: (json_['clickThroughRate'] as core.num?)?.toDouble(),
        clicks: json_['clicks'] as core.String?,
        conversionRate: (json_['conversionRate'] as core.num?)?.toDouble(),
        conversionValue:
            json_.containsKey('conversionValue')
                ? Price.fromJson(
                  json_['conversionValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        conversions: (json_['conversions'] as core.num?)?.toDouble(),
        customLabel0: json_['customLabel0'] as core.String?,
        customLabel1: json_['customLabel1'] as core.String?,
        customLabel2: json_['customLabel2'] as core.String?,
        customLabel3: json_['customLabel3'] as core.String?,
        customLabel4: json_['customLabel4'] as core.String?,
        customerCountryCode: json_['customerCountryCode'] as core.String?,
        date:
            json_.containsKey('date')
                ? Date.fromJson(
                  json_['date'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        impressions: json_['impressions'] as core.String?,
        marketingMethod: json_['marketingMethod'] as core.String?,
        offerId: json_['offerId'] as core.String?,
        productTypeL1: json_['productTypeL1'] as core.String?,
        productTypeL2: json_['productTypeL2'] as core.String?,
        productTypeL3: json_['productTypeL3'] as core.String?,
        productTypeL4: json_['productTypeL4'] as core.String?,
        productTypeL5: json_['productTypeL5'] as core.String?,
        title: json_['title'] as core.String?,
        week:
            json_.containsKey('week')
                ? Date.fromJson(
                  json_['week'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (brand != null) 'brand': brand!,
    if (categoryL1 != null) 'categoryL1': categoryL1!,
    if (categoryL2 != null) 'categoryL2': categoryL2!,
    if (categoryL3 != null) 'categoryL3': categoryL3!,
    if (categoryL4 != null) 'categoryL4': categoryL4!,
    if (categoryL5 != null) 'categoryL5': categoryL5!,
    if (clickThroughRate != null) 'clickThroughRate': clickThroughRate!,
    if (clicks != null) 'clicks': clicks!,
    if (conversionRate != null) 'conversionRate': conversionRate!,
    if (conversionValue != null) 'conversionValue': conversionValue!,
    if (conversions != null) 'conversions': conversions!,
    if (customLabel0 != null) 'customLabel0': customLabel0!,
    if (customLabel1 != null) 'customLabel1': customLabel1!,
    if (customLabel2 != null) 'customLabel2': customLabel2!,
    if (customLabel3 != null) 'customLabel3': customLabel3!,
    if (customLabel4 != null) 'customLabel4': customLabel4!,
    if (customerCountryCode != null)
      'customerCountryCode': customerCountryCode!,
    if (date != null) 'date': date!,
    if (impressions != null) 'impressions': impressions!,
    if (marketingMethod != null) 'marketingMethod': marketingMethod!,
    if (offerId != null) 'offerId': offerId!,
    if (productTypeL1 != null) 'productTypeL1': productTypeL1!,
    if (productTypeL2 != null) 'productTypeL2': productTypeL2!,
    if (productTypeL3 != null) 'productTypeL3': productTypeL3!,
    if (productTypeL4 != null) 'productTypeL4': productTypeL4!,
    if (productTypeL5 != null) 'productTypeL5': productTypeL5!,
    if (title != null) 'title': title!,
    if (week != null) 'week': week!,
  };
}

/// Fields available for query in `product_view` table.
///
/// Products in the current inventory. Products in this table are the same as in
/// Products sub-API but not all product attributes from Products sub-API are
/// available for query in this table. In contrast to Products sub-API, this
/// table allows to filter the returned list of products by product attributes.
/// To retrieve a single product by `id` or list all products, Products sub-API
/// should be used. Values are only set for fields requested explicitly in the
/// request's search query.
class ProductView {
  /// Aggregated status.
  /// Possible string values are:
  /// - "AGGREGATED_REPORTING_CONTEXT_STATUS_UNSPECIFIED" : Not specified.
  /// - "NOT_ELIGIBLE_OR_DISAPPROVED" : Product is not eligible or is
  /// disapproved for all reporting contexts.
  /// - "PENDING" : Product's status is pending in all reporting contexts.
  /// - "ELIGIBLE_LIMITED" : Product is eligible for some (but not all)
  /// reporting contexts.
  /// - "ELIGIBLE" : Product is eligible for all reporting contexts.
  core.String? aggregatedReportingContextStatus;

  /// [Availability](https://support.google.com/merchants/answer/6324448) of the
  /// product.
  core.String? availability;

  /// Brand of the product.
  core.String? brand;

  /// Product category (1st level) in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL1;

  /// Product category (2nd level) in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL2;

  /// Product category (3rd level) in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL3;

  /// Product category (4th level) in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL4;

  /// Product category (5th level) in
  /// [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  core.String? categoryL5;

  /// Channel of the product.
  ///
  /// Can be `ONLINE` or `LOCAL`.
  /// Possible string values are:
  /// - "CHANNEL_ENUM_UNSPECIFIED" : Not specified.
  /// - "ONLINE" : Online product.
  /// - "LOCAL" : Local product.
  core.String? channel;

  /// Estimated performance potential compared to highest performing products of
  /// the merchant.
  /// Possible string values are:
  /// - "CLICK_POTENTIAL_UNSPECIFIED" : Unknown predicted clicks impact.
  /// - "LOW" : Potential to receive a low number of clicks compared to the
  /// highest performing products of the merchant.
  /// - "MEDIUM" : Potential to receive a moderate number of clicks compared to
  /// the highest performing products of the merchant.
  /// - "HIGH" : Potential to receive a similar number of clicks as the highest
  /// performing products of the merchant.
  core.String? clickPotential;

  /// Rank of the product based on its click potential.
  ///
  /// A product with `click_potential_rank` 1 has the highest click potential
  /// among the merchant's products that fulfill the search query conditions.
  core.String? clickPotentialRank;

  /// [Condition](https://support.google.com/merchants/answer/6324469) of the
  /// product.
  core.String? condition;

  /// The time the merchant created the product in timestamp seconds.
  core.String? creationTime;

  /// Expiration date for the product, specified on insertion.
  Date? expirationDate;

  /// Feed label of the product.
  core.String? feedLabel;

  /// List of Global Trade Item Numbers (GTINs) of the product.
  core.List<core.String>? gtin;

  /// REST ID of the product, in the form of
  /// `channel~languageCode~feedLabel~offerId`.
  ///
  /// Merchant API methods that operate on products take this as their `name`
  /// parameter. Required in the `SELECT` clause.
  core.String? id;

  /// Item group id provided by the merchant for grouping variants together.
  core.String? itemGroupId;

  /// List of item issues for the product.
  ///
  /// **This field cannot be used for sorting the results.** **Only selected
  /// attributes of this field (for example,
  /// `item_issues.severity.aggregated_severity`) can be used for filtering the
  /// results.**
  core.List<ItemIssue>? itemIssues;

  /// Language code of the product in BCP 47 format.
  core.String? languageCode;

  /// Merchant-provided id of the product.
  core.String? offerId;

  /// Product price.
  ///
  /// Absent if the information about the price of the product is not available.
  Price? price;

  /// Product type (1st level) in merchant's own
  /// [product taxonomy](https://support.google.com/merchants/answer/6324406).
  core.String? productTypeL1;

  /// Product type (2nd level) in merchant's own
  /// [product taxonomy](https://support.google.com/merchants/answer/6324406).
  core.String? productTypeL2;

  /// Product type (3rd level) in merchant's own
  /// [product taxonomy](https://support.google.com/merchants/answer/6324406).
  core.String? productTypeL3;

  /// Product type (4th level) in merchant's own
  /// [product taxonomy](https://support.google.com/merchants/answer/6324406).
  core.String? productTypeL4;

  /// Product type (5th level) in merchant's own
  /// [product taxonomy](https://support.google.com/merchants/answer/6324406).
  core.String? productTypeL5;

  /// Normalized
  /// [shipping label](https://support.google.com/merchants/answer/6324504)
  /// specified in the data source.
  core.String? shippingLabel;

  /// Link to the processed image of the product, hosted on the Google
  /// infrastructure.
  core.String? thumbnailLink;

  /// Title of the product.
  core.String? title;

  ProductView({
    this.aggregatedReportingContextStatus,
    this.availability,
    this.brand,
    this.categoryL1,
    this.categoryL2,
    this.categoryL3,
    this.categoryL4,
    this.categoryL5,
    this.channel,
    this.clickPotential,
    this.clickPotentialRank,
    this.condition,
    this.creationTime,
    this.expirationDate,
    this.feedLabel,
    this.gtin,
    this.id,
    this.itemGroupId,
    this.itemIssues,
    this.languageCode,
    this.offerId,
    this.price,
    this.productTypeL1,
    this.productTypeL2,
    this.productTypeL3,
    this.productTypeL4,
    this.productTypeL5,
    this.shippingLabel,
    this.thumbnailLink,
    this.title,
  });

  ProductView.fromJson(core.Map json_)
    : this(
        aggregatedReportingContextStatus:
            json_['aggregatedReportingContextStatus'] as core.String?,
        availability: json_['availability'] as core.String?,
        brand: json_['brand'] as core.String?,
        categoryL1: json_['categoryL1'] as core.String?,
        categoryL2: json_['categoryL2'] as core.String?,
        categoryL3: json_['categoryL3'] as core.String?,
        categoryL4: json_['categoryL4'] as core.String?,
        categoryL5: json_['categoryL5'] as core.String?,
        channel: json_['channel'] as core.String?,
        clickPotential: json_['clickPotential'] as core.String?,
        clickPotentialRank: json_['clickPotentialRank'] as core.String?,
        condition: json_['condition'] as core.String?,
        creationTime: json_['creationTime'] as core.String?,
        expirationDate:
            json_.containsKey('expirationDate')
                ? Date.fromJson(
                  json_['expirationDate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        feedLabel: json_['feedLabel'] as core.String?,
        gtin:
            (json_['gtin'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        id: json_['id'] as core.String?,
        itemGroupId: json_['itemGroupId'] as core.String?,
        itemIssues:
            (json_['itemIssues'] as core.List?)
                ?.map(
                  (value) => ItemIssue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        languageCode: json_['languageCode'] as core.String?,
        offerId: json_['offerId'] as core.String?,
        price:
            json_.containsKey('price')
                ? Price.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        productTypeL1: json_['productTypeL1'] as core.String?,
        productTypeL2: json_['productTypeL2'] as core.String?,
        productTypeL3: json_['productTypeL3'] as core.String?,
        productTypeL4: json_['productTypeL4'] as core.String?,
        productTypeL5: json_['productTypeL5'] as core.String?,
        shippingLabel: json_['shippingLabel'] as core.String?,
        thumbnailLink: json_['thumbnailLink'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregatedReportingContextStatus != null)
      'aggregatedReportingContextStatus': aggregatedReportingContextStatus!,
    if (availability != null) 'availability': availability!,
    if (brand != null) 'brand': brand!,
    if (categoryL1 != null) 'categoryL1': categoryL1!,
    if (categoryL2 != null) 'categoryL2': categoryL2!,
    if (categoryL3 != null) 'categoryL3': categoryL3!,
    if (categoryL4 != null) 'categoryL4': categoryL4!,
    if (categoryL5 != null) 'categoryL5': categoryL5!,
    if (channel != null) 'channel': channel!,
    if (clickPotential != null) 'clickPotential': clickPotential!,
    if (clickPotentialRank != null) 'clickPotentialRank': clickPotentialRank!,
    if (condition != null) 'condition': condition!,
    if (creationTime != null) 'creationTime': creationTime!,
    if (expirationDate != null) 'expirationDate': expirationDate!,
    if (feedLabel != null) 'feedLabel': feedLabel!,
    if (gtin != null) 'gtin': gtin!,
    if (id != null) 'id': id!,
    if (itemGroupId != null) 'itemGroupId': itemGroupId!,
    if (itemIssues != null) 'itemIssues': itemIssues!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (offerId != null) 'offerId': offerId!,
    if (price != null) 'price': price!,
    if (productTypeL1 != null) 'productTypeL1': productTypeL1!,
    if (productTypeL2 != null) 'productTypeL2': productTypeL2!,
    if (productTypeL3 != null) 'productTypeL3': productTypeL3!,
    if (productTypeL4 != null) 'productTypeL4': productTypeL4!,
    if (productTypeL5 != null) 'productTypeL5': productTypeL5!,
    if (shippingLabel != null) 'shippingLabel': shippingLabel!,
    if (thumbnailLink != null) 'thumbnailLink': thumbnailLink!,
    if (title != null) 'title': title!,
  };
}

/// Result row returned from the search query.
///
/// Only the message corresponding to the queried table is populated in the
/// response. Within the populated message, only the fields requested explicitly
/// in the query are populated.
class ReportRow {
  /// Fields available for query in `best_sellers_brand_view` table.
  BestSellersBrandView? bestSellersBrandView;

  /// Fields available for query in `best_sellers_product_cluster_view` table.
  BestSellersProductClusterView? bestSellersProductClusterView;

  /// Fields available for query in `competitive_visibility_benchmark_view`
  /// table.
  CompetitiveVisibilityBenchmarkView? competitiveVisibilityBenchmarkView;

  /// Fields available for query in `competitive_visibility_competitor_view`
  /// table.
  CompetitiveVisibilityCompetitorView? competitiveVisibilityCompetitorView;

  /// Fields available for query in `competitive_visibility_top_merchant_view`
  /// table.
  CompetitiveVisibilityTopMerchantView? competitiveVisibilityTopMerchantView;

  /// Fields available for query in `non_product_performance_view` table.
  NonProductPerformanceView? nonProductPerformanceView;

  /// Fields available for query in `price_competitiveness_product_view` table.
  PriceCompetitivenessProductView? priceCompetitivenessProductView;

  /// Fields available for query in `price_insights_product_view` table.
  PriceInsightsProductView? priceInsightsProductView;

  /// Fields available for query in `product_performance_view` table.
  ProductPerformanceView? productPerformanceView;

  /// Fields available for query in `product_view` table.
  ProductView? productView;

  ReportRow({
    this.bestSellersBrandView,
    this.bestSellersProductClusterView,
    this.competitiveVisibilityBenchmarkView,
    this.competitiveVisibilityCompetitorView,
    this.competitiveVisibilityTopMerchantView,
    this.nonProductPerformanceView,
    this.priceCompetitivenessProductView,
    this.priceInsightsProductView,
    this.productPerformanceView,
    this.productView,
  });

  ReportRow.fromJson(core.Map json_)
    : this(
        bestSellersBrandView:
            json_.containsKey('bestSellersBrandView')
                ? BestSellersBrandView.fromJson(
                  json_['bestSellersBrandView']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        bestSellersProductClusterView:
            json_.containsKey('bestSellersProductClusterView')
                ? BestSellersProductClusterView.fromJson(
                  json_['bestSellersProductClusterView']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        competitiveVisibilityBenchmarkView:
            json_.containsKey('competitiveVisibilityBenchmarkView')
                ? CompetitiveVisibilityBenchmarkView.fromJson(
                  json_['competitiveVisibilityBenchmarkView']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        competitiveVisibilityCompetitorView:
            json_.containsKey('competitiveVisibilityCompetitorView')
                ? CompetitiveVisibilityCompetitorView.fromJson(
                  json_['competitiveVisibilityCompetitorView']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        competitiveVisibilityTopMerchantView:
            json_.containsKey('competitiveVisibilityTopMerchantView')
                ? CompetitiveVisibilityTopMerchantView.fromJson(
                  json_['competitiveVisibilityTopMerchantView']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        nonProductPerformanceView:
            json_.containsKey('nonProductPerformanceView')
                ? NonProductPerformanceView.fromJson(
                  json_['nonProductPerformanceView']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        priceCompetitivenessProductView:
            json_.containsKey('priceCompetitivenessProductView')
                ? PriceCompetitivenessProductView.fromJson(
                  json_['priceCompetitivenessProductView']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        priceInsightsProductView:
            json_.containsKey('priceInsightsProductView')
                ? PriceInsightsProductView.fromJson(
                  json_['priceInsightsProductView']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        productPerformanceView:
            json_.containsKey('productPerformanceView')
                ? ProductPerformanceView.fromJson(
                  json_['productPerformanceView']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        productView:
            json_.containsKey('productView')
                ? ProductView.fromJson(
                  json_['productView'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bestSellersBrandView != null)
      'bestSellersBrandView': bestSellersBrandView!,
    if (bestSellersProductClusterView != null)
      'bestSellersProductClusterView': bestSellersProductClusterView!,
    if (competitiveVisibilityBenchmarkView != null)
      'competitiveVisibilityBenchmarkView': competitiveVisibilityBenchmarkView!,
    if (competitiveVisibilityCompetitorView != null)
      'competitiveVisibilityCompetitorView':
          competitiveVisibilityCompetitorView!,
    if (competitiveVisibilityTopMerchantView != null)
      'competitiveVisibilityTopMerchantView':
          competitiveVisibilityTopMerchantView!,
    if (nonProductPerformanceView != null)
      'nonProductPerformanceView': nonProductPerformanceView!,
    if (priceCompetitivenessProductView != null)
      'priceCompetitivenessProductView': priceCompetitivenessProductView!,
    if (priceInsightsProductView != null)
      'priceInsightsProductView': priceInsightsProductView!,
    if (productPerformanceView != null)
      'productPerformanceView': productPerformanceView!,
    if (productView != null) 'productView': productView!,
  };
}

/// Request message for the `ReportService.Search` method.
class SearchRequest {
  /// Number of `ReportRows` to retrieve in a single page.
  ///
  /// Defaults to 1000. Values above 5000 are coerced to 5000.
  ///
  /// Optional.
  core.int? pageSize;

  /// Token of the page to retrieve.
  ///
  /// If not specified, the first page of results is returned. In order to
  /// request the next page of results, the value obtained from
  /// `next_page_token` in the previous response should be used.
  ///
  /// Optional.
  core.String? pageToken;

  /// Query that defines a report to be retrieved.
  ///
  /// For details on how to construct your query, see the \[Query Language
  /// guide\](/merchant/api/guides/reports/query-language). For the full list of
  /// available tables and fields, see the \[Available
  /// fields\](/merchant/api/reference/rest/reports_{api_version}/accounts.reports).
  ///
  /// Required.
  core.String? query;

  SearchRequest({this.pageSize, this.pageToken, this.query});

  SearchRequest.fromJson(core.Map json_)
    : this(
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        query: json_['query'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pageSize != null) 'pageSize': pageSize!,
    if (pageToken != null) 'pageToken': pageToken!,
    if (query != null) 'query': query!,
  };
}

/// Response message for the `ReportService.Search` method.
class SearchResponse {
  /// Token which can be sent as `page_token` to retrieve the next page.
  ///
  /// If omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Rows that matched the search query.
  core.List<ReportRow>? results;

  SearchResponse({this.nextPageToken, this.results});

  SearchResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        results:
            (json_['results'] as core.List?)
                ?.map(
                  (value) => ReportRow.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (results != null) 'results': results!,
  };
}
