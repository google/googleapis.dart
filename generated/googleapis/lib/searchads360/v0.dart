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

/// Search Ads 360 Reporting API - v0
///
/// The Search Ads 360 API allows developers to automate downloading reports
/// from Search Ads 360.
///
/// For more information, see
/// <https://developers.google.com/search-ads/reporting>
///
/// Create an instance of [SA360Api] to access these resources:
///
/// - [CustomersResource]
///   - [CustomersCustomColumnsResource]
///   - [CustomersSearchAds360Resource]
/// - [SearchAds360FieldsResource]
library searchads360.v0;

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

/// The Search Ads 360 API allows developers to automate downloading reports
/// from Search Ads 360.
class SA360Api {
  /// View and manage your advertising data in DoubleClick Search
  static const doubleclicksearchScope =
      'https://www.googleapis.com/auth/doubleclicksearch';

  final commons.ApiRequester _requester;

  CustomersResource get customers => CustomersResource(_requester);
  SearchAds360FieldsResource get searchAds360Fields =>
      SearchAds360FieldsResource(_requester);

  SA360Api(http.Client client,
      {core.String rootUrl = 'https://searchads360.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class CustomersResource {
  final commons.ApiRequester _requester;

  CustomersCustomColumnsResource get customColumns =>
      CustomersCustomColumnsResource(_requester);
  CustomersSearchAds360Resource get searchAds360 =>
      CustomersSearchAds360Resource(_requester);

  CustomersResource(commons.ApiRequester client) : _requester = client;
}

class CustomersCustomColumnsResource {
  final commons.ApiRequester _requester;

  CustomersCustomColumnsResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns the requested custom column in full detail.
  ///
  /// Request parameters:
  ///
  /// [resourceName] - Required. The resource name of the custom column to
  /// fetch.
  /// Value must have pattern `^customers/\[^/\]+/customColumns/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAdsSearchads360V0ResourcesCustomColumn].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAdsSearchads360V0ResourcesCustomColumn> get(
    core.String resourceName, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v0/' + core.Uri.encodeFull('$resourceName');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAdsSearchads360V0ResourcesCustomColumn.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns all the custom columns associated with the customer in full
  /// detail.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Required. The ID of the customer to apply the CustomColumn
  /// list operation to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAdsSearchads360V0ServicesListCustomColumnsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAdsSearchads360V0ServicesListCustomColumnsResponse> list(
    core.String customerId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v0/customers/' + core.Uri.encodeFull('$customerId') + '/customColumns';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAdsSearchads360V0ServicesListCustomColumnsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CustomersSearchAds360Resource {
  final commons.ApiRequester _requester;

  CustomersSearchAds360Resource(commons.ApiRequester client)
      : _requester = client;

  /// Returns all rows that match the search query.
  ///
  /// List of thrown errors: \[AuthenticationError\]() \[AuthorizationError\]()
  /// \[HeaderError\]() \[InternalError\]() \[QueryError\]() \[QuotaError\]()
  /// \[RequestError\]()
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Required. The ID of the customer being queried.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAdsSearchads360V0ServicesSearchSearchAds360Response].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAdsSearchads360V0ServicesSearchSearchAds360Response>
      search(
    GoogleAdsSearchads360V0ServicesSearchSearchAds360Request request,
    core.String customerId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v0/customers/' +
        core.Uri.encodeFull('$customerId') +
        '/searchAds360:search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAdsSearchads360V0ServicesSearchSearchAds360Response.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns all rows that match the search stream query.
  ///
  /// List of thrown errors: \[AuthenticationError\]() \[AuthorizationError\]()
  /// \[HeaderError\]() \[InternalError\]() \[QueryError\]() \[QuotaError\]()
  /// \[RequestError\]()
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Required. The ID of the customer being queried.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse>
      searchStream(
    GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest request,
    core.String customerId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v0/customers/' +
        core.Uri.encodeFull('$customerId') +
        '/searchAds360:searchStream';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class SearchAds360FieldsResource {
  final commons.ApiRequester _requester;

  SearchAds360FieldsResource(commons.ApiRequester client) : _requester = client;

  /// Returns just the requested field.
  ///
  /// List of thrown errors: \[AuthenticationError\]() \[AuthorizationError\]()
  /// \[HeaderError\]() \[InternalError\]() \[QuotaError\]() \[RequestError\]()
  ///
  /// Request parameters:
  ///
  /// [resourceName] - Required. The resource name of the field to get.
  /// Value must have pattern `^searchAds360Fields/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAdsSearchads360V0ResourcesSearchAds360Field].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAdsSearchads360V0ResourcesSearchAds360Field> get(
    core.String resourceName, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v0/' + core.Uri.encodeFull('$resourceName');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAdsSearchads360V0ResourcesSearchAds360Field.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns all fields that match the search query.
  ///
  /// List of thrown errors: \[AuthenticationError\]() \[AuthorizationError\]()
  /// \[HeaderError\]() \[InternalError\]() \[QueryError\]() \[QuotaError\]()
  /// \[RequestError\]()
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse>
      search(
    GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v0/searchAds360Fields:search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// An age range criterion.
class GoogleAdsSearchads360V0CommonAgeRangeInfo {
  /// Type of the age range.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "AGE_RANGE_18_24" : Between 18 and 24 years old.
  /// - "AGE_RANGE_25_34" : Between 25 and 34 years old.
  /// - "AGE_RANGE_35_44" : Between 35 and 44 years old.
  /// - "AGE_RANGE_45_54" : Between 45 and 54 years old.
  /// - "AGE_RANGE_55_64" : Between 55 and 64 years old.
  /// - "AGE_RANGE_65_UP" : 65 years old and beyond.
  /// - "AGE_RANGE_UNDETERMINED" : Undetermined age range.
  core.String? type;

  GoogleAdsSearchads360V0CommonAgeRangeInfo({
    this.type,
  });

  GoogleAdsSearchads360V0CommonAgeRangeInfo.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// A mapping that can be used by custom parameter tags in a
/// `tracking_url_template`, `final_urls`, or `mobile_final_urls`.
class GoogleAdsSearchads360V0CommonCustomParameter {
  /// The key matching the parameter tag name.
  core.String? key;

  /// The value to be substituted.
  core.String? value;

  GoogleAdsSearchads360V0CommonCustomParameter({
    this.key,
    this.value,
  });

  GoogleAdsSearchads360V0CommonCustomParameter.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// A device criterion.
class GoogleAdsSearchads360V0CommonDeviceInfo {
  /// Type of the device.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : The value is unknown in this version.
  /// - "MOBILE" : Mobile devices with full browsers.
  /// - "TABLET" : Tablets with full browsers.
  /// - "DESKTOP" : Computers.
  /// - "CONNECTED_TV" : Smart TVs and game consoles.
  /// - "OTHER" : Other device types.
  core.String? type;

  GoogleAdsSearchads360V0CommonDeviceInfo({
    this.type,
  });

  GoogleAdsSearchads360V0CommonDeviceInfo.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// An automated bidding strategy that raises bids for clicks that seem more
/// likely to lead to a conversion and lowers them for clicks where they seem
/// less likely.
///
/// This bidding strategy is deprecated and cannot be created anymore. Use
/// ManualCpc with enhanced_cpc_enabled set to true for equivalent
/// functionality.
typedef GoogleAdsSearchads360V0CommonEnhancedCpc = $Empty;

/// A rule specifying the maximum number of times an ad (or some set of ads) can
/// be shown to a user over a particular time period.
typedef GoogleAdsSearchads360V0CommonFrequencyCapEntry = $Empty;

/// A gender criterion.
class GoogleAdsSearchads360V0CommonGenderInfo {
  /// Type of the gender.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "MALE" : Male.
  /// - "FEMALE" : Female.
  /// - "UNDETERMINED" : Undetermined gender.
  core.String? type;

  GoogleAdsSearchads360V0CommonGenderInfo({
    this.type,
  });

  GoogleAdsSearchads360V0CommonGenderInfo.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// A keyword criterion.
class GoogleAdsSearchads360V0CommonKeywordInfo {
  /// The match type of the keyword.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "EXACT" : Exact match.
  /// - "PHRASE" : Phrase match.
  /// - "BROAD" : Broad match.
  core.String? matchType;

  /// The text of the keyword (at most 80 characters and 10 words).
  core.String? text;

  GoogleAdsSearchads360V0CommonKeywordInfo({
    this.matchType,
    this.text,
  });

  GoogleAdsSearchads360V0CommonKeywordInfo.fromJson(core.Map json_)
      : this(
          matchType: json_.containsKey('matchType')
              ? json_['matchType'] as core.String
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (matchType != null) 'matchType': matchType!,
        if (text != null) 'text': text!,
      };
}

/// A language criterion.
class GoogleAdsSearchads360V0CommonLanguageInfo {
  /// The language constant resource name.
  core.String? languageConstant;

  GoogleAdsSearchads360V0CommonLanguageInfo({
    this.languageConstant,
  });

  GoogleAdsSearchads360V0CommonLanguageInfo.fromJson(core.Map json_)
      : this(
          languageConstant: json_.containsKey('languageConstant')
              ? json_['languageConstant'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageConstant != null) 'languageConstant': languageConstant!,
      };
}

/// A listing group criterion.
class GoogleAdsSearchads360V0CommonListingGroupInfo {
  /// Type of the listing group.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "SUBDIVISION" : Subdivision of products along some listing dimension.
  /// These nodes are not used by serving to target listing entries, but is
  /// purely to define the structure of the tree.
  /// - "UNIT" : Listing group unit that defines a bid.
  core.String? type;

  GoogleAdsSearchads360V0CommonListingGroupInfo({
    this.type,
  });

  GoogleAdsSearchads360V0CommonListingGroupInfo.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// A radius around a list of locations specified through a feed.
class GoogleAdsSearchads360V0CommonLocationGroupInfo {
  /// FeedItemSets whose FeedItems are targeted.
  ///
  /// If multiple IDs are specified, then all items that appear in at least one
  /// set are targeted. This field cannot be used with geo_target_constants.
  /// This is optional and can only be set in CREATE operations.
  core.List<core.String>? feedItemSets;

  /// Geo target constant(s) restricting the scope of the geographic area within
  /// the feed.
  ///
  /// Currently only one geo target constant is allowed.
  core.List<core.String>? geoTargetConstants;

  /// Distance in units specifying the radius around targeted locations.
  ///
  /// This is required and must be set in CREATE operations.
  core.String? radius;

  /// Unit of the radius.
  ///
  /// Miles and meters are supported for geo target constants. Milli miles and
  /// meters are supported for feed item sets. This is required and must be set
  /// in CREATE operations.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "METERS" : Meters
  /// - "MILES" : Miles
  /// - "MILLI_MILES" : Milli Miles
  core.String? radiusUnits;

  GoogleAdsSearchads360V0CommonLocationGroupInfo({
    this.feedItemSets,
    this.geoTargetConstants,
    this.radius,
    this.radiusUnits,
  });

  GoogleAdsSearchads360V0CommonLocationGroupInfo.fromJson(core.Map json_)
      : this(
          feedItemSets: json_.containsKey('feedItemSets')
              ? (json_['feedItemSets'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          geoTargetConstants: json_.containsKey('geoTargetConstants')
              ? (json_['geoTargetConstants'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          radius: json_.containsKey('radius')
              ? json_['radius'] as core.String
              : null,
          radiusUnits: json_.containsKey('radiusUnits')
              ? json_['radiusUnits'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (feedItemSets != null) 'feedItemSets': feedItemSets!,
        if (geoTargetConstants != null)
          'geoTargetConstants': geoTargetConstants!,
        if (radius != null) 'radius': radius!,
        if (radiusUnits != null) 'radiusUnits': radiusUnits!,
      };
}

/// A location criterion.
class GoogleAdsSearchads360V0CommonLocationInfo {
  /// The geo target constant resource name.
  core.String? geoTargetConstant;

  GoogleAdsSearchads360V0CommonLocationInfo({
    this.geoTargetConstant,
  });

  GoogleAdsSearchads360V0CommonLocationInfo.fromJson(core.Map json_)
      : this(
          geoTargetConstant: json_.containsKey('geoTargetConstant')
              ? json_['geoTargetConstant'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (geoTargetConstant != null) 'geoTargetConstant': geoTargetConstant!,
      };
}

/// Manual bidding strategy that allows advertiser to set the bid per
/// advertiser-specified action.
typedef GoogleAdsSearchads360V0CommonManualCpa = $Empty;

/// Manual click-based bidding where user pays per click.
class GoogleAdsSearchads360V0CommonManualCpc {
  /// Whether bids are to be enhanced based on conversion optimizer data.
  core.bool? enhancedCpcEnabled;

  GoogleAdsSearchads360V0CommonManualCpc({
    this.enhancedCpcEnabled,
  });

  GoogleAdsSearchads360V0CommonManualCpc.fromJson(core.Map json_)
      : this(
          enhancedCpcEnabled: json_.containsKey('enhancedCpcEnabled')
              ? json_['enhancedCpcEnabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enhancedCpcEnabled != null)
          'enhancedCpcEnabled': enhancedCpcEnabled!,
      };
}

/// Manual impression-based bidding where user pays per thousand impressions.
typedef GoogleAdsSearchads360V0CommonManualCpm = $Empty;

/// An automated bidding strategy to help get the most conversion value for your
/// campaigns while spending your budget.
class GoogleAdsSearchads360V0CommonMaximizeConversionValue {
  /// Maximum bid limit that can be set by the bid strategy.
  ///
  /// The limit applies to all keywords managed by the strategy. Mutable for
  /// portfolio bidding strategies only.
  core.String? cpcBidCeilingMicros;

  /// Minimum bid limit that can be set by the bid strategy.
  ///
  /// The limit applies to all keywords managed by the strategy. Mutable for
  /// portfolio bidding strategies only.
  core.String? cpcBidFloorMicros;

  /// The target return on ad spend (ROAS) option.
  ///
  /// If set, the bid strategy will maximize revenue while averaging the target
  /// return on ad spend. If the target ROAS is high, the bid strategy may not
  /// be able to spend the full budget. If the target ROAS is not set, the bid
  /// strategy will aim to achieve the highest possible ROAS for the budget.
  core.double? targetRoas;

  GoogleAdsSearchads360V0CommonMaximizeConversionValue({
    this.cpcBidCeilingMicros,
    this.cpcBidFloorMicros,
    this.targetRoas,
  });

  GoogleAdsSearchads360V0CommonMaximizeConversionValue.fromJson(core.Map json_)
      : this(
          cpcBidCeilingMicros: json_.containsKey('cpcBidCeilingMicros')
              ? json_['cpcBidCeilingMicros'] as core.String
              : null,
          cpcBidFloorMicros: json_.containsKey('cpcBidFloorMicros')
              ? json_['cpcBidFloorMicros'] as core.String
              : null,
          targetRoas: json_.containsKey('targetRoas')
              ? (json_['targetRoas'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpcBidCeilingMicros != null)
          'cpcBidCeilingMicros': cpcBidCeilingMicros!,
        if (cpcBidFloorMicros != null) 'cpcBidFloorMicros': cpcBidFloorMicros!,
        if (targetRoas != null) 'targetRoas': targetRoas!,
      };
}

/// An automated bidding strategy to help get the most conversions for your
/// campaigns while spending your budget.
class GoogleAdsSearchads360V0CommonMaximizeConversions {
  /// Maximum bid limit that can be set by the bid strategy.
  ///
  /// The limit applies to all keywords managed by the strategy. Mutable for
  /// portfolio bidding strategies only.
  core.String? cpcBidCeilingMicros;

  /// Minimum bid limit that can be set by the bid strategy.
  ///
  /// The limit applies to all keywords managed by the strategy. Mutable for
  /// portfolio bidding strategies only.
  core.String? cpcBidFloorMicros;

  /// The target cost-per-action (CPA) option.
  ///
  /// This is the average amount that you would like to spend per conversion
  /// action specified in micro units of the bidding strategy's currency. If
  /// set, the bid strategy will get as many conversions as possible at or below
  /// the target cost-per-action. If the target CPA is not set, the bid strategy
  /// will aim to achieve the lowest possible CPA given the budget.
  core.String? targetCpaMicros;

  GoogleAdsSearchads360V0CommonMaximizeConversions({
    this.cpcBidCeilingMicros,
    this.cpcBidFloorMicros,
    this.targetCpaMicros,
  });

  GoogleAdsSearchads360V0CommonMaximizeConversions.fromJson(core.Map json_)
      : this(
          cpcBidCeilingMicros: json_.containsKey('cpcBidCeilingMicros')
              ? json_['cpcBidCeilingMicros'] as core.String
              : null,
          cpcBidFloorMicros: json_.containsKey('cpcBidFloorMicros')
              ? json_['cpcBidFloorMicros'] as core.String
              : null,
          targetCpaMicros: json_.containsKey('targetCpaMicros')
              ? json_['targetCpaMicros'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpcBidCeilingMicros != null)
          'cpcBidCeilingMicros': cpcBidCeilingMicros!,
        if (cpcBidFloorMicros != null) 'cpcBidFloorMicros': cpcBidFloorMicros!,
        if (targetCpaMicros != null) 'targetCpaMicros': targetCpaMicros!,
      };
}

/// Metrics data.
class GoogleAdsSearchads360V0CommonMetrics {
  /// The percent of your ad impressions that are shown as the very first ad
  /// above the organic search results.
  core.double? absoluteTopImpressionPercentage;

  /// The total number of conversions.
  ///
  /// This includes all conversions regardless of the value of
  /// include_in_conversions_metric.
  core.double? allConversions;

  /// The total number of conversions.
  ///
  /// This includes all conversions regardless of the value of
  /// include_in_conversions_metric. When this column is selected with date, the
  /// values in date column means the conversion date. Details for the
  /// by_conversion_date columns are available at
  /// https://support.google.com/sa360/answer/9250611.
  core.double? allConversionsByConversionDate;

  /// The number of times people clicked the "Call" button to call a store
  /// during or after clicking an ad.
  ///
  /// This number doesn't include whether or not calls were connected, or the
  /// duration of any calls. This metric applies to feed items only.
  core.double? allConversionsFromClickToCall;

  /// The number of times people clicked a "Get directions" button to navigate
  /// to a store after clicking an ad.
  ///
  /// This metric applies to feed items only.
  core.double? allConversionsFromDirections;

  /// All conversions from interactions (as oppose to view through conversions)
  /// divided by the number of ad interactions.
  core.double? allConversionsFromInteractionsRate;

  /// The value of all conversions from interactions divided by the total number
  /// of interactions.
  core.double? allConversionsFromInteractionsValuePerInteraction;

  /// The number of times people clicked a link to view a store's menu after
  /// clicking an ad.
  ///
  /// This metric applies to feed items only.
  core.double? allConversionsFromMenu;

  /// The number of times people placed an order at a store after clicking an
  /// ad.
  ///
  /// This metric applies to feed items only.
  core.double? allConversionsFromOrder;

  /// The number of other conversions (for example, posting a review or saving a
  /// location for a store) that occurred after people clicked an ad.
  ///
  /// This metric applies to feed items only.
  core.double? allConversionsFromOtherEngagement;

  /// Estimated number of times people visited a store after clicking an ad.
  ///
  /// This metric applies to feed items only.
  core.double? allConversionsFromStoreVisit;

  /// The number of times that people were taken to a store's URL after clicking
  /// an ad.
  ///
  /// This metric applies to feed items only.
  core.double? allConversionsFromStoreWebsite;

  /// The value of all conversions.
  core.double? allConversionsValue;

  /// The value of all conversions.
  ///
  /// When this column is selected with date, the values in date column means
  /// the conversion date. Details for the by_conversion_date columns are
  /// available at https://support.google.com/sa360/answer/9250611.
  core.double? allConversionsValueByConversionDate;

  /// The value of all conversions divided by the total cost of ad interactions
  /// (such as clicks for text ads or views for video ads).
  core.double? allConversionsValuePerCost;

  /// The average amount you pay per interaction.
  ///
  /// This amount is the total cost of your ads divided by the total number of
  /// interactions.
  core.double? averageCost;

  /// The total cost of all clicks divided by the total number of clicks
  /// received.
  core.double? averageCpc;

  /// Average cost-per-thousand impressions (CPM).
  core.double? averageCpm;

  /// The number of clicks.
  core.String? clicks;

  /// The number of client account conversions.
  ///
  /// This only includes conversion actions which
  /// include_in_client_account_conversions_metric attribute is set to true. If
  /// you use conversion-based bidding, your bid strategies will optimize for
  /// these conversions.
  core.double? clientAccountConversions;

  /// The value of client account conversions.
  ///
  /// This only includes conversion actions which
  /// include_in_client_account_conversions_metric attribute is set to true. If
  /// you use conversion-based bidding, your bid strategies will optimize for
  /// these conversions.
  core.double? clientAccountConversionsValue;

  /// The total number of view-through conversions.
  ///
  /// These happen when a customer sees an image or rich media ad, then later
  /// completes a conversion on your site without interacting with (for example,
  /// clicking on) another ad.
  core.String? clientAccountViewThroughConversions;

  /// The estimated percent of times that your ad was eligible to show on the
  /// Display Network but didn't because your budget was too low.
  ///
  /// Note: Content budget lost impression share is reported in the range of 0
  /// to 0.9. Any value above 0.9 is reported as 0.9001.
  core.double? contentBudgetLostImpressionShare;

  /// The impressions you've received on the Display Network divided by the
  /// estimated number of impressions you were eligible to receive.
  ///
  /// Note: Content impression share is reported in the range of 0.1 to 1. Any
  /// value below 0.1 is reported as 0.0999.
  core.double? contentImpressionShare;

  /// The estimated percentage of impressions on the Display Network that your
  /// ads didn't receive due to poor Ad Rank.
  ///
  /// Note: Content rank lost impression share is reported in the range of 0 to
  /// 0.9. Any value above 0.9 is reported as 0.9001.
  core.double? contentRankLostImpressionShare;

  /// The number of conversions.
  ///
  /// This only includes conversion actions which include_in_conversions_metric
  /// attribute is set to true. If you use conversion-based bidding, your bid
  /// strategies will optimize for these conversions.
  core.double? conversions;

  /// The sum of conversions by conversion date for biddable conversion types.
  ///
  /// Can be fractional due to attribution modeling. When this column is
  /// selected with date, the values in date column means the conversion date.
  core.double? conversionsByConversionDate;

  /// Average biddable conversions (from interaction) per conversion eligible
  /// interaction.
  ///
  /// Shows how often, on average, an ad interaction leads to a biddable
  /// conversion.
  core.double? conversionsFromInteractionsRate;

  /// The value of conversions from interactions divided by the number of ad
  /// interactions.
  ///
  /// This only includes conversion actions which include_in_conversions_metric
  /// attribute is set to true. If you use conversion-based bidding, your bid
  /// strategies will optimize for these conversions.
  core.double? conversionsFromInteractionsValuePerInteraction;

  /// The sum of conversion values for the conversions included in the
  /// "conversions" field.
  ///
  /// This metric is useful only if you entered a value for your conversion
  /// actions.
  core.double? conversionsValue;

  /// The sum of biddable conversions value by conversion date.
  ///
  /// When this column is selected with date, the values in date column means
  /// the conversion date.
  core.double? conversionsValueByConversionDate;

  /// The value of biddable conversion divided by the total cost of conversion
  /// eligible interactions.
  core.double? conversionsValuePerCost;

  /// The sum of your cost-per-click (CPC) and cost-per-thousand impressions
  /// (CPM) costs during this period.
  core.String? costMicros;

  /// The cost of ad interactions divided by all conversions.
  core.double? costPerAllConversions;

  /// Average conversion eligible cost per biddable conversion.
  core.double? costPerConversion;

  /// The cost of ad interactions divided by current model attributed
  /// conversions.
  ///
  /// This only includes conversion actions which include_in_conversions_metric
  /// attribute is set to true. If you use conversion-based bidding, your bid
  /// strategies will optimize for these conversions.
  core.double? costPerCurrentModelAttributedConversion;

  /// Conversions from when a customer clicks on an ad on one device, then
  /// converts on a different device or browser.
  ///
  /// Cross-device conversions are already included in all_conversions.
  core.double? crossDeviceConversions;

  /// The sum of the value of cross-device conversions.
  core.double? crossDeviceConversionsValue;

  /// The number of clicks your ad receives (Clicks) divided by the number of
  /// times your ad is shown (Impressions).
  core.double? ctr;

  /// The creative historical quality score.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "BELOW_AVERAGE" : Quality of the creative is below average.
  /// - "AVERAGE" : Quality of the creative is average.
  /// - "ABOVE_AVERAGE" : Quality of the creative is above average.
  core.String? historicalCreativeQualityScore;

  /// The quality of historical landing page experience.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "BELOW_AVERAGE" : Quality of the creative is below average.
  /// - "AVERAGE" : Quality of the creative is average.
  /// - "ABOVE_AVERAGE" : Quality of the creative is above average.
  core.String? historicalLandingPageQualityScore;

  /// The historical quality score.
  core.String? historicalQualityScore;

  /// The historical search predicted click through rate (CTR).
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "BELOW_AVERAGE" : Quality of the creative is below average.
  /// - "AVERAGE" : Quality of the creative is average.
  /// - "ABOVE_AVERAGE" : Quality of the creative is above average.
  core.String? historicalSearchPredictedCtr;

  /// Count of how often your ad has appeared on a search results page or
  /// website on the Google Network.
  core.String? impressions;

  /// The types of payable and free interactions.
  core.List<core.String>? interactionEventTypes;

  /// How often people interact with your ad after it is shown to them.
  ///
  /// This is the number of interactions divided by the number of times your ad
  /// is shown.
  core.double? interactionRate;

  /// The number of interactions.
  ///
  /// An interaction is the main user action associated with an ad format-clicks
  /// for text and shopping ads, views for video ads, and so on.
  core.String? interactions;

  /// The percentage of clicks filtered out of your total number of clicks
  /// (filtered + non-filtered clicks) during the reporting period.
  core.double? invalidClickRate;

  /// Number of clicks Google considers illegitimate and doesn't charge you for.
  core.String? invalidClicks;

  /// The percentage of mobile clicks that go to a mobile-friendly page.
  core.double? mobileFriendlyClicksPercentage;

  /// The percentage of the customer's Shopping or Search ad impressions that
  /// are shown in the most prominent Shopping position.
  ///
  /// See https://support.google.com/sa360/answer/9566729 for details. Any value
  /// below 0.1 is reported as 0.0999.
  core.double? searchAbsoluteTopImpressionShare;

  /// The number estimating how often your ad wasn't the very first ad above the
  /// organic search results due to a low budget.
  ///
  /// Note: Search budget lost absolute top impression share is reported in the
  /// range of 0 to 0.9. Any value above 0.9 is reported as 0.9001.
  core.double? searchBudgetLostAbsoluteTopImpressionShare;

  /// The estimated percent of times that your ad was eligible to show on the
  /// Search Network but didn't because your budget was too low.
  ///
  /// Note: Search budget lost impression share is reported in the range of 0 to
  /// 0.9. Any value above 0.9 is reported as 0.9001.
  core.double? searchBudgetLostImpressionShare;

  /// The number estimating how often your ad didn't show anywhere above the
  /// organic search results due to a low budget.
  ///
  /// Note: Search budget lost top impression share is reported in the range of
  /// 0 to 0.9. Any value above 0.9 is reported as 0.9001.
  core.double? searchBudgetLostTopImpressionShare;

  /// The number of clicks you've received on the Search Network divided by the
  /// estimated number of clicks you were eligible to receive.
  ///
  /// Note: Search click share is reported in the range of 0.1 to 1. Any value
  /// below 0.1 is reported as 0.0999.
  core.double? searchClickShare;

  /// The impressions you've received divided by the estimated number of
  /// impressions you were eligible to receive on the Search Network for search
  /// terms that matched your keywords exactly (or were close variants of your
  /// keyword), regardless of your keyword match types.
  ///
  /// Note: Search exact match impression share is reported in the range of 0.1
  /// to 1. Any value below 0.1 is reported as 0.0999.
  core.double? searchExactMatchImpressionShare;

  /// The impressions you've received on the Search Network divided by the
  /// estimated number of impressions you were eligible to receive.
  ///
  /// Note: Search impression share is reported in the range of 0.1 to 1. Any
  /// value below 0.1 is reported as 0.0999.
  core.double? searchImpressionShare;

  /// The number estimating how often your ad wasn't the very first ad above the
  /// organic search results due to poor Ad Rank.
  ///
  /// Note: Search rank lost absolute top impression share is reported in the
  /// range of 0 to 0.9. Any value above 0.9 is reported as 0.9001.
  core.double? searchRankLostAbsoluteTopImpressionShare;

  /// The estimated percentage of impressions on the Search Network that your
  /// ads didn't receive due to poor Ad Rank.
  ///
  /// Note: Search rank lost impression share is reported in the range of 0 to
  /// 0.9. Any value above 0.9 is reported as 0.9001.
  core.double? searchRankLostImpressionShare;

  /// The number estimating how often your ad didn't show anywhere above the
  /// organic search results due to poor Ad Rank.
  ///
  /// Note: Search rank lost top impression share is reported in the range of 0
  /// to 0.9. Any value above 0.9 is reported as 0.9001.
  core.double? searchRankLostTopImpressionShare;

  /// The impressions you've received in the top location (anywhere above the
  /// organic search results) compared to the estimated number of impressions
  /// you were eligible to receive in the top location.
  ///
  /// Note: Search top impression share is reported in the range of 0.1 to 1.
  /// Any value below 0.1 is reported as 0.0999.
  core.double? searchTopImpressionShare;

  /// The percent of your ad impressions that are shown anywhere above the
  /// organic search results.
  core.double? topImpressionPercentage;

  /// The value of all conversions divided by the number of all conversions.
  core.double? valuePerAllConversions;

  /// The value of all conversions divided by the number of all conversions.
  ///
  /// When this column is selected with date, the values in date column means
  /// the conversion date. Details for the by_conversion_date columns are
  /// available at https://support.google.com/sa360/answer/9250611.
  core.double? valuePerAllConversionsByConversionDate;

  /// The value of biddable conversion divided by the number of biddable
  /// conversions.
  ///
  /// Shows how much, on average, each of the biddable conversions is worth.
  core.double? valuePerConversion;

  /// Biddable conversions value by conversion date divided by biddable
  /// conversions by conversion date.
  ///
  /// Shows how much, on average, each of the biddable conversions is worth (by
  /// conversion date). When this column is selected with date, the values in
  /// date column means the conversion date.
  core.double? valuePerConversionsByConversionDate;

  GoogleAdsSearchads360V0CommonMetrics({
    this.absoluteTopImpressionPercentage,
    this.allConversions,
    this.allConversionsByConversionDate,
    this.allConversionsFromClickToCall,
    this.allConversionsFromDirections,
    this.allConversionsFromInteractionsRate,
    this.allConversionsFromInteractionsValuePerInteraction,
    this.allConversionsFromMenu,
    this.allConversionsFromOrder,
    this.allConversionsFromOtherEngagement,
    this.allConversionsFromStoreVisit,
    this.allConversionsFromStoreWebsite,
    this.allConversionsValue,
    this.allConversionsValueByConversionDate,
    this.allConversionsValuePerCost,
    this.averageCost,
    this.averageCpc,
    this.averageCpm,
    this.clicks,
    this.clientAccountConversions,
    this.clientAccountConversionsValue,
    this.clientAccountViewThroughConversions,
    this.contentBudgetLostImpressionShare,
    this.contentImpressionShare,
    this.contentRankLostImpressionShare,
    this.conversions,
    this.conversionsByConversionDate,
    this.conversionsFromInteractionsRate,
    this.conversionsFromInteractionsValuePerInteraction,
    this.conversionsValue,
    this.conversionsValueByConversionDate,
    this.conversionsValuePerCost,
    this.costMicros,
    this.costPerAllConversions,
    this.costPerConversion,
    this.costPerCurrentModelAttributedConversion,
    this.crossDeviceConversions,
    this.crossDeviceConversionsValue,
    this.ctr,
    this.historicalCreativeQualityScore,
    this.historicalLandingPageQualityScore,
    this.historicalQualityScore,
    this.historicalSearchPredictedCtr,
    this.impressions,
    this.interactionEventTypes,
    this.interactionRate,
    this.interactions,
    this.invalidClickRate,
    this.invalidClicks,
    this.mobileFriendlyClicksPercentage,
    this.searchAbsoluteTopImpressionShare,
    this.searchBudgetLostAbsoluteTopImpressionShare,
    this.searchBudgetLostImpressionShare,
    this.searchBudgetLostTopImpressionShare,
    this.searchClickShare,
    this.searchExactMatchImpressionShare,
    this.searchImpressionShare,
    this.searchRankLostAbsoluteTopImpressionShare,
    this.searchRankLostImpressionShare,
    this.searchRankLostTopImpressionShare,
    this.searchTopImpressionShare,
    this.topImpressionPercentage,
    this.valuePerAllConversions,
    this.valuePerAllConversionsByConversionDate,
    this.valuePerConversion,
    this.valuePerConversionsByConversionDate,
  });

  GoogleAdsSearchads360V0CommonMetrics.fromJson(core.Map json_)
      : this(
          absoluteTopImpressionPercentage:
              json_.containsKey('absoluteTopImpressionPercentage')
                  ? (json_['absoluteTopImpressionPercentage'] as core.num)
                      .toDouble()
                  : null,
          allConversions: json_.containsKey('allConversions')
              ? (json_['allConversions'] as core.num).toDouble()
              : null,
          allConversionsByConversionDate: json_
                  .containsKey('allConversionsByConversionDate')
              ? (json_['allConversionsByConversionDate'] as core.num).toDouble()
              : null,
          allConversionsFromClickToCall: json_
                  .containsKey('allConversionsFromClickToCall')
              ? (json_['allConversionsFromClickToCall'] as core.num).toDouble()
              : null,
          allConversionsFromDirections: json_
                  .containsKey('allConversionsFromDirections')
              ? (json_['allConversionsFromDirections'] as core.num).toDouble()
              : null,
          allConversionsFromInteractionsRate:
              json_.containsKey('allConversionsFromInteractionsRate')
                  ? (json_['allConversionsFromInteractionsRate'] as core.num)
                      .toDouble()
                  : null,
          allConversionsFromInteractionsValuePerInteraction: json_.containsKey(
                  'allConversionsFromInteractionsValuePerInteraction')
              ? (json_['allConversionsFromInteractionsValuePerInteraction']
                      as core.num)
                  .toDouble()
              : null,
          allConversionsFromMenu: json_.containsKey('allConversionsFromMenu')
              ? (json_['allConversionsFromMenu'] as core.num).toDouble()
              : null,
          allConversionsFromOrder: json_.containsKey('allConversionsFromOrder')
              ? (json_['allConversionsFromOrder'] as core.num).toDouble()
              : null,
          allConversionsFromOtherEngagement:
              json_.containsKey('allConversionsFromOtherEngagement')
                  ? (json_['allConversionsFromOtherEngagement'] as core.num)
                      .toDouble()
                  : null,
          allConversionsFromStoreVisit: json_
                  .containsKey('allConversionsFromStoreVisit')
              ? (json_['allConversionsFromStoreVisit'] as core.num).toDouble()
              : null,
          allConversionsFromStoreWebsite: json_
                  .containsKey('allConversionsFromStoreWebsite')
              ? (json_['allConversionsFromStoreWebsite'] as core.num).toDouble()
              : null,
          allConversionsValue: json_.containsKey('allConversionsValue')
              ? (json_['allConversionsValue'] as core.num).toDouble()
              : null,
          allConversionsValueByConversionDate:
              json_.containsKey('allConversionsValueByConversionDate')
                  ? (json_['allConversionsValueByConversionDate'] as core.num)
                      .toDouble()
                  : null,
          allConversionsValuePerCost:
              json_.containsKey('allConversionsValuePerCost')
                  ? (json_['allConversionsValuePerCost'] as core.num).toDouble()
                  : null,
          averageCost: json_.containsKey('averageCost')
              ? (json_['averageCost'] as core.num).toDouble()
              : null,
          averageCpc: json_.containsKey('averageCpc')
              ? (json_['averageCpc'] as core.num).toDouble()
              : null,
          averageCpm: json_.containsKey('averageCpm')
              ? (json_['averageCpm'] as core.num).toDouble()
              : null,
          clicks: json_.containsKey('clicks')
              ? json_['clicks'] as core.String
              : null,
          clientAccountConversions:
              json_.containsKey('clientAccountConversions')
                  ? (json_['clientAccountConversions'] as core.num).toDouble()
                  : null,
          clientAccountConversionsValue: json_
                  .containsKey('clientAccountConversionsValue')
              ? (json_['clientAccountConversionsValue'] as core.num).toDouble()
              : null,
          clientAccountViewThroughConversions:
              json_.containsKey('clientAccountViewThroughConversions')
                  ? json_['clientAccountViewThroughConversions'] as core.String
                  : null,
          contentBudgetLostImpressionShare:
              json_.containsKey('contentBudgetLostImpressionShare')
                  ? (json_['contentBudgetLostImpressionShare'] as core.num)
                      .toDouble()
                  : null,
          contentImpressionShare: json_.containsKey('contentImpressionShare')
              ? (json_['contentImpressionShare'] as core.num).toDouble()
              : null,
          contentRankLostImpressionShare: json_
                  .containsKey('contentRankLostImpressionShare')
              ? (json_['contentRankLostImpressionShare'] as core.num).toDouble()
              : null,
          conversions: json_.containsKey('conversions')
              ? (json_['conversions'] as core.num).toDouble()
              : null,
          conversionsByConversionDate: json_
                  .containsKey('conversionsByConversionDate')
              ? (json_['conversionsByConversionDate'] as core.num).toDouble()
              : null,
          conversionsFromInteractionsRate:
              json_.containsKey('conversionsFromInteractionsRate')
                  ? (json_['conversionsFromInteractionsRate'] as core.num)
                      .toDouble()
                  : null,
          conversionsFromInteractionsValuePerInteraction: json_
                  .containsKey('conversionsFromInteractionsValuePerInteraction')
              ? (json_['conversionsFromInteractionsValuePerInteraction']
                      as core.num)
                  .toDouble()
              : null,
          conversionsValue: json_.containsKey('conversionsValue')
              ? (json_['conversionsValue'] as core.num).toDouble()
              : null,
          conversionsValueByConversionDate:
              json_.containsKey('conversionsValueByConversionDate')
                  ? (json_['conversionsValueByConversionDate'] as core.num)
                      .toDouble()
                  : null,
          conversionsValuePerCost: json_.containsKey('conversionsValuePerCost')
              ? (json_['conversionsValuePerCost'] as core.num).toDouble()
              : null,
          costMicros: json_.containsKey('costMicros')
              ? json_['costMicros'] as core.String
              : null,
          costPerAllConversions: json_.containsKey('costPerAllConversions')
              ? (json_['costPerAllConversions'] as core.num).toDouble()
              : null,
          costPerConversion: json_.containsKey('costPerConversion')
              ? (json_['costPerConversion'] as core.num).toDouble()
              : null,
          costPerCurrentModelAttributedConversion: json_
                  .containsKey('costPerCurrentModelAttributedConversion')
              ? (json_['costPerCurrentModelAttributedConversion'] as core.num)
                  .toDouble()
              : null,
          crossDeviceConversions: json_.containsKey('crossDeviceConversions')
              ? (json_['crossDeviceConversions'] as core.num).toDouble()
              : null,
          crossDeviceConversionsValue: json_
                  .containsKey('crossDeviceConversionsValue')
              ? (json_['crossDeviceConversionsValue'] as core.num).toDouble()
              : null,
          ctr: json_.containsKey('ctr')
              ? (json_['ctr'] as core.num).toDouble()
              : null,
          historicalCreativeQualityScore:
              json_.containsKey('historicalCreativeQualityScore')
                  ? json_['historicalCreativeQualityScore'] as core.String
                  : null,
          historicalLandingPageQualityScore:
              json_.containsKey('historicalLandingPageQualityScore')
                  ? json_['historicalLandingPageQualityScore'] as core.String
                  : null,
          historicalQualityScore: json_.containsKey('historicalQualityScore')
              ? json_['historicalQualityScore'] as core.String
              : null,
          historicalSearchPredictedCtr:
              json_.containsKey('historicalSearchPredictedCtr')
                  ? json_['historicalSearchPredictedCtr'] as core.String
                  : null,
          impressions: json_.containsKey('impressions')
              ? json_['impressions'] as core.String
              : null,
          interactionEventTypes: json_.containsKey('interactionEventTypes')
              ? (json_['interactionEventTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          interactionRate: json_.containsKey('interactionRate')
              ? (json_['interactionRate'] as core.num).toDouble()
              : null,
          interactions: json_.containsKey('interactions')
              ? json_['interactions'] as core.String
              : null,
          invalidClickRate: json_.containsKey('invalidClickRate')
              ? (json_['invalidClickRate'] as core.num).toDouble()
              : null,
          invalidClicks: json_.containsKey('invalidClicks')
              ? json_['invalidClicks'] as core.String
              : null,
          mobileFriendlyClicksPercentage: json_
                  .containsKey('mobileFriendlyClicksPercentage')
              ? (json_['mobileFriendlyClicksPercentage'] as core.num).toDouble()
              : null,
          searchAbsoluteTopImpressionShare:
              json_.containsKey('searchAbsoluteTopImpressionShare')
                  ? (json_['searchAbsoluteTopImpressionShare'] as core.num)
                      .toDouble()
                  : null,
          searchBudgetLostAbsoluteTopImpressionShare:
              json_.containsKey('searchBudgetLostAbsoluteTopImpressionShare')
                  ? (json_['searchBudgetLostAbsoluteTopImpressionShare']
                          as core.num)
                      .toDouble()
                  : null,
          searchBudgetLostImpressionShare:
              json_.containsKey('searchBudgetLostImpressionShare')
                  ? (json_['searchBudgetLostImpressionShare'] as core.num)
                      .toDouble()
                  : null,
          searchBudgetLostTopImpressionShare:
              json_.containsKey('searchBudgetLostTopImpressionShare')
                  ? (json_['searchBudgetLostTopImpressionShare'] as core.num)
                      .toDouble()
                  : null,
          searchClickShare: json_.containsKey('searchClickShare')
              ? (json_['searchClickShare'] as core.num).toDouble()
              : null,
          searchExactMatchImpressionShare:
              json_.containsKey('searchExactMatchImpressionShare')
                  ? (json_['searchExactMatchImpressionShare'] as core.num)
                      .toDouble()
                  : null,
          searchImpressionShare: json_.containsKey('searchImpressionShare')
              ? (json_['searchImpressionShare'] as core.num).toDouble()
              : null,
          searchRankLostAbsoluteTopImpressionShare: json_
                  .containsKey('searchRankLostAbsoluteTopImpressionShare')
              ? (json_['searchRankLostAbsoluteTopImpressionShare'] as core.num)
                  .toDouble()
              : null,
          searchRankLostImpressionShare: json_
                  .containsKey('searchRankLostImpressionShare')
              ? (json_['searchRankLostImpressionShare'] as core.num).toDouble()
              : null,
          searchRankLostTopImpressionShare:
              json_.containsKey('searchRankLostTopImpressionShare')
                  ? (json_['searchRankLostTopImpressionShare'] as core.num)
                      .toDouble()
                  : null,
          searchTopImpressionShare:
              json_.containsKey('searchTopImpressionShare')
                  ? (json_['searchTopImpressionShare'] as core.num).toDouble()
                  : null,
          topImpressionPercentage: json_.containsKey('topImpressionPercentage')
              ? (json_['topImpressionPercentage'] as core.num).toDouble()
              : null,
          valuePerAllConversions: json_.containsKey('valuePerAllConversions')
              ? (json_['valuePerAllConversions'] as core.num).toDouble()
              : null,
          valuePerAllConversionsByConversionDate: json_
                  .containsKey('valuePerAllConversionsByConversionDate')
              ? (json_['valuePerAllConversionsByConversionDate'] as core.num)
                  .toDouble()
              : null,
          valuePerConversion: json_.containsKey('valuePerConversion')
              ? (json_['valuePerConversion'] as core.num).toDouble()
              : null,
          valuePerConversionsByConversionDate:
              json_.containsKey('valuePerConversionsByConversionDate')
                  ? (json_['valuePerConversionsByConversionDate'] as core.num)
                      .toDouble()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (absoluteTopImpressionPercentage != null)
          'absoluteTopImpressionPercentage': absoluteTopImpressionPercentage!,
        if (allConversions != null) 'allConversions': allConversions!,
        if (allConversionsByConversionDate != null)
          'allConversionsByConversionDate': allConversionsByConversionDate!,
        if (allConversionsFromClickToCall != null)
          'allConversionsFromClickToCall': allConversionsFromClickToCall!,
        if (allConversionsFromDirections != null)
          'allConversionsFromDirections': allConversionsFromDirections!,
        if (allConversionsFromInteractionsRate != null)
          'allConversionsFromInteractionsRate':
              allConversionsFromInteractionsRate!,
        if (allConversionsFromInteractionsValuePerInteraction != null)
          'allConversionsFromInteractionsValuePerInteraction':
              allConversionsFromInteractionsValuePerInteraction!,
        if (allConversionsFromMenu != null)
          'allConversionsFromMenu': allConversionsFromMenu!,
        if (allConversionsFromOrder != null)
          'allConversionsFromOrder': allConversionsFromOrder!,
        if (allConversionsFromOtherEngagement != null)
          'allConversionsFromOtherEngagement':
              allConversionsFromOtherEngagement!,
        if (allConversionsFromStoreVisit != null)
          'allConversionsFromStoreVisit': allConversionsFromStoreVisit!,
        if (allConversionsFromStoreWebsite != null)
          'allConversionsFromStoreWebsite': allConversionsFromStoreWebsite!,
        if (allConversionsValue != null)
          'allConversionsValue': allConversionsValue!,
        if (allConversionsValueByConversionDate != null)
          'allConversionsValueByConversionDate':
              allConversionsValueByConversionDate!,
        if (allConversionsValuePerCost != null)
          'allConversionsValuePerCost': allConversionsValuePerCost!,
        if (averageCost != null) 'averageCost': averageCost!,
        if (averageCpc != null) 'averageCpc': averageCpc!,
        if (averageCpm != null) 'averageCpm': averageCpm!,
        if (clicks != null) 'clicks': clicks!,
        if (clientAccountConversions != null)
          'clientAccountConversions': clientAccountConversions!,
        if (clientAccountConversionsValue != null)
          'clientAccountConversionsValue': clientAccountConversionsValue!,
        if (clientAccountViewThroughConversions != null)
          'clientAccountViewThroughConversions':
              clientAccountViewThroughConversions!,
        if (contentBudgetLostImpressionShare != null)
          'contentBudgetLostImpressionShare': contentBudgetLostImpressionShare!,
        if (contentImpressionShare != null)
          'contentImpressionShare': contentImpressionShare!,
        if (contentRankLostImpressionShare != null)
          'contentRankLostImpressionShare': contentRankLostImpressionShare!,
        if (conversions != null) 'conversions': conversions!,
        if (conversionsByConversionDate != null)
          'conversionsByConversionDate': conversionsByConversionDate!,
        if (conversionsFromInteractionsRate != null)
          'conversionsFromInteractionsRate': conversionsFromInteractionsRate!,
        if (conversionsFromInteractionsValuePerInteraction != null)
          'conversionsFromInteractionsValuePerInteraction':
              conversionsFromInteractionsValuePerInteraction!,
        if (conversionsValue != null) 'conversionsValue': conversionsValue!,
        if (conversionsValueByConversionDate != null)
          'conversionsValueByConversionDate': conversionsValueByConversionDate!,
        if (conversionsValuePerCost != null)
          'conversionsValuePerCost': conversionsValuePerCost!,
        if (costMicros != null) 'costMicros': costMicros!,
        if (costPerAllConversions != null)
          'costPerAllConversions': costPerAllConversions!,
        if (costPerConversion != null) 'costPerConversion': costPerConversion!,
        if (costPerCurrentModelAttributedConversion != null)
          'costPerCurrentModelAttributedConversion':
              costPerCurrentModelAttributedConversion!,
        if (crossDeviceConversions != null)
          'crossDeviceConversions': crossDeviceConversions!,
        if (crossDeviceConversionsValue != null)
          'crossDeviceConversionsValue': crossDeviceConversionsValue!,
        if (ctr != null) 'ctr': ctr!,
        if (historicalCreativeQualityScore != null)
          'historicalCreativeQualityScore': historicalCreativeQualityScore!,
        if (historicalLandingPageQualityScore != null)
          'historicalLandingPageQualityScore':
              historicalLandingPageQualityScore!,
        if (historicalQualityScore != null)
          'historicalQualityScore': historicalQualityScore!,
        if (historicalSearchPredictedCtr != null)
          'historicalSearchPredictedCtr': historicalSearchPredictedCtr!,
        if (impressions != null) 'impressions': impressions!,
        if (interactionEventTypes != null)
          'interactionEventTypes': interactionEventTypes!,
        if (interactionRate != null) 'interactionRate': interactionRate!,
        if (interactions != null) 'interactions': interactions!,
        if (invalidClickRate != null) 'invalidClickRate': invalidClickRate!,
        if (invalidClicks != null) 'invalidClicks': invalidClicks!,
        if (mobileFriendlyClicksPercentage != null)
          'mobileFriendlyClicksPercentage': mobileFriendlyClicksPercentage!,
        if (searchAbsoluteTopImpressionShare != null)
          'searchAbsoluteTopImpressionShare': searchAbsoluteTopImpressionShare!,
        if (searchBudgetLostAbsoluteTopImpressionShare != null)
          'searchBudgetLostAbsoluteTopImpressionShare':
              searchBudgetLostAbsoluteTopImpressionShare!,
        if (searchBudgetLostImpressionShare != null)
          'searchBudgetLostImpressionShare': searchBudgetLostImpressionShare!,
        if (searchBudgetLostTopImpressionShare != null)
          'searchBudgetLostTopImpressionShare':
              searchBudgetLostTopImpressionShare!,
        if (searchClickShare != null) 'searchClickShare': searchClickShare!,
        if (searchExactMatchImpressionShare != null)
          'searchExactMatchImpressionShare': searchExactMatchImpressionShare!,
        if (searchImpressionShare != null)
          'searchImpressionShare': searchImpressionShare!,
        if (searchRankLostAbsoluteTopImpressionShare != null)
          'searchRankLostAbsoluteTopImpressionShare':
              searchRankLostAbsoluteTopImpressionShare!,
        if (searchRankLostImpressionShare != null)
          'searchRankLostImpressionShare': searchRankLostImpressionShare!,
        if (searchRankLostTopImpressionShare != null)
          'searchRankLostTopImpressionShare': searchRankLostTopImpressionShare!,
        if (searchTopImpressionShare != null)
          'searchTopImpressionShare': searchTopImpressionShare!,
        if (topImpressionPercentage != null)
          'topImpressionPercentage': topImpressionPercentage!,
        if (valuePerAllConversions != null)
          'valuePerAllConversions': valuePerAllConversions!,
        if (valuePerAllConversionsByConversionDate != null)
          'valuePerAllConversionsByConversionDate':
              valuePerAllConversionsByConversionDate!,
        if (valuePerConversion != null)
          'valuePerConversion': valuePerConversion!,
        if (valuePerConversionsByConversionDate != null)
          'valuePerConversionsByConversionDate':
              valuePerConversionsByConversionDate!,
      };
}

/// A bidding strategy where bids are a fraction of the advertised price for
/// some good or service.
class GoogleAdsSearchads360V0CommonPercentCpc {
  /// Maximum bid limit that can be set by the bid strategy.
  ///
  /// This is an optional field entered by the advertiser and specified in local
  /// micros. Note: A zero value is interpreted in the same way as having
  /// bid_ceiling undefined.
  core.String? cpcBidCeilingMicros;

  /// Adjusts the bid for each auction upward or downward, depending on the
  /// likelihood of a conversion.
  ///
  /// Individual bids may exceed cpc_bid_ceiling_micros, but the average bid
  /// amount for a campaign should not.
  core.bool? enhancedCpcEnabled;

  GoogleAdsSearchads360V0CommonPercentCpc({
    this.cpcBidCeilingMicros,
    this.enhancedCpcEnabled,
  });

  GoogleAdsSearchads360V0CommonPercentCpc.fromJson(core.Map json_)
      : this(
          cpcBidCeilingMicros: json_.containsKey('cpcBidCeilingMicros')
              ? json_['cpcBidCeilingMicros'] as core.String
              : null,
          enhancedCpcEnabled: json_.containsKey('enhancedCpcEnabled')
              ? json_['enhancedCpcEnabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpcBidCeilingMicros != null)
          'cpcBidCeilingMicros': cpcBidCeilingMicros!,
        if (enhancedCpcEnabled != null)
          'enhancedCpcEnabled': enhancedCpcEnabled!,
      };
}

/// Settings for Real-Time Bidding, a feature only available for campaigns
/// targeting the Ad Exchange network.
class GoogleAdsSearchads360V0CommonRealTimeBiddingSetting {
  /// Whether the campaign is opted in to real-time bidding.
  core.bool? optIn;

  GoogleAdsSearchads360V0CommonRealTimeBiddingSetting({
    this.optIn,
  });

  GoogleAdsSearchads360V0CommonRealTimeBiddingSetting.fromJson(core.Map json_)
      : this(
          optIn:
              json_.containsKey('optIn') ? json_['optIn'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (optIn != null) 'optIn': optIn!,
      };
}

/// Segment only fields.
class GoogleAdsSearchads360V0CommonSegments {
  /// Resource name of the conversion action.
  core.String? conversionAction;

  /// Conversion action category.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "DEFAULT" : Default category.
  /// - "PAGE_VIEW" : User visiting a page.
  /// - "PURCHASE" : Purchase, sales, or "order placed" event.
  /// - "SIGNUP" : Signup user action.
  /// - "LEAD" : Lead-generating action.
  /// - "DOWNLOAD" : Software download action (as for an app).
  /// - "ADD_TO_CART" : The addition of items to a shopping cart or bag on an
  /// advertiser site.
  /// - "BEGIN_CHECKOUT" : When someone enters the checkout flow on an
  /// advertiser site.
  /// - "SUBSCRIBE_PAID" : The start of a paid subscription for a product or
  /// service.
  /// - "PHONE_CALL_LEAD" : A call to indicate interest in an advertiser's
  /// offering.
  /// - "IMPORTED_LEAD" : A lead conversion imported from an external source
  /// into Google Ads.
  /// - "SUBMIT_LEAD_FORM" : A submission of a form on an advertiser site
  /// indicating business interest.
  /// - "BOOK_APPOINTMENT" : A booking of an appointment with an advertiser's
  /// business.
  /// - "REQUEST_QUOTE" : A quote or price estimate request.
  /// - "GET_DIRECTIONS" : A search for an advertiser's business location with
  /// intention to visit.
  /// - "OUTBOUND_CLICK" : A click to an advertiser's partner's site.
  /// - "CONTACT" : A call, SMS, email, chat or other type of contact to an
  /// advertiser.
  /// - "ENGAGEMENT" : A website engagement event such as long site time or a
  /// Google Analytics (GA) Smart Goal. Intended to be used for GA, Firebase, GA
  /// Gold goal imports.
  /// - "STORE_VISIT" : A visit to a physical store location.
  /// - "STORE_SALE" : A sale occurring in a physical store.
  /// - "QUALIFIED_LEAD" : A lead conversion imported from an external source
  /// into Google Ads, that has been further qualified by the advertiser
  /// (marketing/sales team). In the lead-to-sale journey, advertisers get
  /// leads, then act on them by reaching out to the consumer. If the consumer
  /// is interested and may end up buying their product, the advertiser marks
  /// such leads as "qualified leads".
  /// - "CONVERTED_LEAD" : A lead conversion imported from an external source
  /// into Google Ads, that has further completed a chosen stage as defined by
  /// the lead gen advertiser.
  core.String? conversionActionCategory;

  /// Conversion action name.
  core.String? conversionActionName;

  /// Date to which metrics apply.
  ///
  /// yyyy-MM-dd format, for example, 2018-04-17.
  core.String? date;

  /// Day of the week, for example, MONDAY.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : The value is unknown in this version.
  /// - "MONDAY" : Monday.
  /// - "TUESDAY" : Tuesday.
  /// - "WEDNESDAY" : Wednesday.
  /// - "THURSDAY" : Thursday.
  /// - "FRIDAY" : Friday.
  /// - "SATURDAY" : Saturday.
  /// - "SUNDAY" : Sunday.
  core.String? dayOfWeek;

  /// Device to which metrics apply.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : The value is unknown in this version.
  /// - "MOBILE" : Mobile devices with full browsers.
  /// - "TABLET" : Tablets with full browsers.
  /// - "DESKTOP" : Computers.
  /// - "CONNECTED_TV" : Smart TVs and game consoles.
  /// - "OTHER" : Other device types.
  core.String? device;

  /// Month as represented by the date of the first day of a month.
  ///
  /// Formatted as yyyy-MM-dd.
  core.String? month;

  /// Quarter as represented by the date of the first day of a quarter.
  ///
  /// Uses the calendar year for quarters, for example, the second quarter of
  /// 2018 starts on 2018-04-01. Formatted as yyyy-MM-dd.
  core.String? quarter;

  /// Week as defined as Monday through Sunday, and represented by the date of
  /// Monday.
  ///
  /// Formatted as yyyy-MM-dd.
  core.String? week;

  /// Year, formatted as yyyy.
  core.int? year;

  GoogleAdsSearchads360V0CommonSegments({
    this.conversionAction,
    this.conversionActionCategory,
    this.conversionActionName,
    this.date,
    this.dayOfWeek,
    this.device,
    this.month,
    this.quarter,
    this.week,
    this.year,
  });

  GoogleAdsSearchads360V0CommonSegments.fromJson(core.Map json_)
      : this(
          conversionAction: json_.containsKey('conversionAction')
              ? json_['conversionAction'] as core.String
              : null,
          conversionActionCategory:
              json_.containsKey('conversionActionCategory')
                  ? json_['conversionActionCategory'] as core.String
                  : null,
          conversionActionName: json_.containsKey('conversionActionName')
              ? json_['conversionActionName'] as core.String
              : null,
          date: json_.containsKey('date') ? json_['date'] as core.String : null,
          dayOfWeek: json_.containsKey('dayOfWeek')
              ? json_['dayOfWeek'] as core.String
              : null,
          device: json_.containsKey('device')
              ? json_['device'] as core.String
              : null,
          month:
              json_.containsKey('month') ? json_['month'] as core.String : null,
          quarter: json_.containsKey('quarter')
              ? json_['quarter'] as core.String
              : null,
          week: json_.containsKey('week') ? json_['week'] as core.String : null,
          year: json_.containsKey('year') ? json_['year'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversionAction != null) 'conversionAction': conversionAction!,
        if (conversionActionCategory != null)
          'conversionActionCategory': conversionActionCategory!,
        if (conversionActionName != null)
          'conversionActionName': conversionActionName!,
        if (date != null) 'date': date!,
        if (dayOfWeek != null) 'dayOfWeek': dayOfWeek!,
        if (device != null) 'device': device!,
        if (month != null) 'month': month!,
        if (quarter != null) 'quarter': quarter!,
        if (week != null) 'week': week!,
        if (year != null) 'year': year!,
      };
}

/// An automated bid strategy that sets bids to help get as many conversions as
/// possible at the target cost-per-acquisition (CPA) you set.
class GoogleAdsSearchads360V0CommonTargetCpa {
  /// Maximum bid limit that can be set by the bid strategy.
  ///
  /// The limit applies to all keywords managed by the strategy. This should
  /// only be set for portfolio bid strategies.
  core.String? cpcBidCeilingMicros;

  /// Minimum bid limit that can be set by the bid strategy.
  ///
  /// The limit applies to all keywords managed by the strategy. This should
  /// only be set for portfolio bid strategies.
  core.String? cpcBidFloorMicros;

  /// Average CPA target.
  ///
  /// This target should be greater than or equal to minimum billable unit based
  /// on the currency for the account.
  core.String? targetCpaMicros;

  GoogleAdsSearchads360V0CommonTargetCpa({
    this.cpcBidCeilingMicros,
    this.cpcBidFloorMicros,
    this.targetCpaMicros,
  });

  GoogleAdsSearchads360V0CommonTargetCpa.fromJson(core.Map json_)
      : this(
          cpcBidCeilingMicros: json_.containsKey('cpcBidCeilingMicros')
              ? json_['cpcBidCeilingMicros'] as core.String
              : null,
          cpcBidFloorMicros: json_.containsKey('cpcBidFloorMicros')
              ? json_['cpcBidFloorMicros'] as core.String
              : null,
          targetCpaMicros: json_.containsKey('targetCpaMicros')
              ? json_['targetCpaMicros'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpcBidCeilingMicros != null)
          'cpcBidCeilingMicros': cpcBidCeilingMicros!,
        if (cpcBidFloorMicros != null) 'cpcBidFloorMicros': cpcBidFloorMicros!,
        if (targetCpaMicros != null) 'targetCpaMicros': targetCpaMicros!,
      };
}

/// Target CPM (cost per thousand impressions) is an automated bidding strategy
/// that sets bids to optimize performance given the target CPM you set.
typedef GoogleAdsSearchads360V0CommonTargetCpm = $Empty;

/// An automated bidding strategy that sets bids so that a certain percentage of
/// search ads are shown at the top of the first page (or other targeted
/// location).
class GoogleAdsSearchads360V0CommonTargetImpressionShare {
  /// The highest CPC bid the automated bidding system is permitted to specify.
  ///
  /// This is a required field entered by the advertiser that sets the ceiling
  /// and specified in local micros.
  core.String? cpcBidCeilingMicros;

  /// The targeted location on the search results page.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "ANYWHERE_ON_PAGE" : Any location on the web page.
  /// - "TOP_OF_PAGE" : Top box of ads.
  /// - "ABSOLUTE_TOP_OF_PAGE" : Top slot in the top box of ads.
  core.String? location;

  /// The chosen fraction of ads to be shown in the targeted location in micros.
  ///
  /// For example, 1% equals 10,000.
  core.String? locationFractionMicros;

  GoogleAdsSearchads360V0CommonTargetImpressionShare({
    this.cpcBidCeilingMicros,
    this.location,
    this.locationFractionMicros,
  });

  GoogleAdsSearchads360V0CommonTargetImpressionShare.fromJson(core.Map json_)
      : this(
          cpcBidCeilingMicros: json_.containsKey('cpcBidCeilingMicros')
              ? json_['cpcBidCeilingMicros'] as core.String
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          locationFractionMicros: json_.containsKey('locationFractionMicros')
              ? json_['locationFractionMicros'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpcBidCeilingMicros != null)
          'cpcBidCeilingMicros': cpcBidCeilingMicros!,
        if (location != null) 'location': location!,
        if (locationFractionMicros != null)
          'locationFractionMicros': locationFractionMicros!,
      };
}

/// An automated bidding strategy that sets bids based on the target fraction of
/// auctions where the advertiser should outrank a specific competitor.
///
/// This strategy is deprecated.
class GoogleAdsSearchads360V0CommonTargetOutrankShare {
  /// Maximum bid limit that can be set by the bid strategy.
  ///
  /// The limit applies to all keywords managed by the strategy.
  core.String? cpcBidCeilingMicros;

  GoogleAdsSearchads360V0CommonTargetOutrankShare({
    this.cpcBidCeilingMicros,
  });

  GoogleAdsSearchads360V0CommonTargetOutrankShare.fromJson(core.Map json_)
      : this(
          cpcBidCeilingMicros: json_.containsKey('cpcBidCeilingMicros')
              ? json_['cpcBidCeilingMicros'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpcBidCeilingMicros != null)
          'cpcBidCeilingMicros': cpcBidCeilingMicros!,
      };
}

/// An automated bidding strategy that helps you maximize revenue while
/// averaging a specific target return on ad spend (ROAS).
class GoogleAdsSearchads360V0CommonTargetRoas {
  /// Maximum bid limit that can be set by the bid strategy.
  ///
  /// The limit applies to all keywords managed by the strategy. This should
  /// only be set for portfolio bid strategies.
  core.String? cpcBidCeilingMicros;

  /// Minimum bid limit that can be set by the bid strategy.
  ///
  /// The limit applies to all keywords managed by the strategy. This should
  /// only be set for portfolio bid strategies.
  core.String? cpcBidFloorMicros;

  /// The chosen revenue (based on conversion data) per unit of spend.
  ///
  /// Value must be between 0.01 and 1000.0, inclusive.
  ///
  /// Required.
  core.double? targetRoas;

  GoogleAdsSearchads360V0CommonTargetRoas({
    this.cpcBidCeilingMicros,
    this.cpcBidFloorMicros,
    this.targetRoas,
  });

  GoogleAdsSearchads360V0CommonTargetRoas.fromJson(core.Map json_)
      : this(
          cpcBidCeilingMicros: json_.containsKey('cpcBidCeilingMicros')
              ? json_['cpcBidCeilingMicros'] as core.String
              : null,
          cpcBidFloorMicros: json_.containsKey('cpcBidFloorMicros')
              ? json_['cpcBidFloorMicros'] as core.String
              : null,
          targetRoas: json_.containsKey('targetRoas')
              ? (json_['targetRoas'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpcBidCeilingMicros != null)
          'cpcBidCeilingMicros': cpcBidCeilingMicros!,
        if (cpcBidFloorMicros != null) 'cpcBidFloorMicros': cpcBidFloorMicros!,
        if (targetRoas != null) 'targetRoas': targetRoas!,
      };
}

/// An automated bid strategy that sets your bids to help get as many clicks as
/// possible within your budget.
class GoogleAdsSearchads360V0CommonTargetSpend {
  /// Maximum bid limit that can be set by the bid strategy.
  ///
  /// The limit applies to all keywords managed by the strategy.
  core.String? cpcBidCeilingMicros;

  /// The spend target under which to maximize clicks.
  ///
  /// A TargetSpend bidder will attempt to spend the smaller of this value or
  /// the natural throttling spend amount. If not specified, the budget is used
  /// as the spend target. This field is deprecated and should no longer be
  /// used. See
  /// https://ads-developers.googleblog.com/2020/05/reminder-about-sunset-creation-of.html
  /// for details.
  core.String? targetSpendMicros;

  GoogleAdsSearchads360V0CommonTargetSpend({
    this.cpcBidCeilingMicros,
    this.targetSpendMicros,
  });

  GoogleAdsSearchads360V0CommonTargetSpend.fromJson(core.Map json_)
      : this(
          cpcBidCeilingMicros: json_.containsKey('cpcBidCeilingMicros')
              ? json_['cpcBidCeilingMicros'] as core.String
              : null,
          targetSpendMicros: json_.containsKey('targetSpendMicros')
              ? json_['targetSpendMicros'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpcBidCeilingMicros != null)
          'cpcBidCeilingMicros': cpcBidCeilingMicros!,
        if (targetSpendMicros != null) 'targetSpendMicros': targetSpendMicros!,
      };
}

/// A generic data container.
class GoogleAdsSearchads360V0CommonValue {
  /// A boolean.
  core.bool? booleanValue;

  /// A double.
  core.double? doubleValue;

  /// A float.
  core.double? floatValue;

  /// An int64.
  core.String? int64Value;

  /// A string.
  core.String? stringValue;

  GoogleAdsSearchads360V0CommonValue({
    this.booleanValue,
    this.doubleValue,
    this.floatValue,
    this.int64Value,
    this.stringValue,
  });

  GoogleAdsSearchads360V0CommonValue.fromJson(core.Map json_)
      : this(
          booleanValue: json_.containsKey('booleanValue')
              ? json_['booleanValue'] as core.bool
              : null,
          doubleValue: json_.containsKey('doubleValue')
              ? (json_['doubleValue'] as core.num).toDouble()
              : null,
          floatValue: json_.containsKey('floatValue')
              ? (json_['floatValue'] as core.num).toDouble()
              : null,
          int64Value: json_.containsKey('int64Value')
              ? json_['int64Value'] as core.String
              : null,
          stringValue: json_.containsKey('stringValue')
              ? json_['stringValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (booleanValue != null) 'booleanValue': booleanValue!,
        if (doubleValue != null) 'doubleValue': doubleValue!,
        if (floatValue != null) 'floatValue': floatValue!,
        if (int64Value != null) 'int64Value': int64Value!,
        if (stringValue != null) 'stringValue': stringValue!,
      };
}

/// Logical expression for targeting webpages of an advertiser's website.
class GoogleAdsSearchads360V0CommonWebpageConditionInfo {
  /// Argument of webpage targeting condition.
  core.String? argument;

  /// Operand of webpage targeting condition.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "URL" : Operand denoting a webpage URL targeting condition.
  /// - "CATEGORY" : Operand denoting a webpage category targeting condition.
  /// - "PAGE_TITLE" : Operand denoting a webpage title targeting condition.
  /// - "PAGE_CONTENT" : Operand denoting a webpage content targeting condition.
  /// - "CUSTOM_LABEL" : Operand denoting a webpage custom label targeting
  /// condition.
  core.String? operand;

  /// Operator of webpage targeting condition.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "EQUALS" : The argument web condition is equal to the compared web
  /// condition.
  /// - "CONTAINS" : The argument web condition is part of the compared web
  /// condition.
  core.String? operator;

  GoogleAdsSearchads360V0CommonWebpageConditionInfo({
    this.argument,
    this.operand,
    this.operator,
  });

  GoogleAdsSearchads360V0CommonWebpageConditionInfo.fromJson(core.Map json_)
      : this(
          argument: json_.containsKey('argument')
              ? json_['argument'] as core.String
              : null,
          operand: json_.containsKey('operand')
              ? json_['operand'] as core.String
              : null,
          operator: json_.containsKey('operator')
              ? json_['operator'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (argument != null) 'argument': argument!,
        if (operand != null) 'operand': operand!,
        if (operator != null) 'operator': operator!,
      };
}

/// Represents a criterion for targeting webpages of an advertiser's website.
class GoogleAdsSearchads360V0CommonWebpageInfo {
  /// Conditions, or logical expressions, for webpage targeting.
  ///
  /// The list of webpage targeting conditions are and-ed together when
  /// evaluated for targeting. An empty list of conditions indicates all pages
  /// of the campaign's website are targeted. This field is required for CREATE
  /// operations and is prohibited on UPDATE operations.
  core.List<GoogleAdsSearchads360V0CommonWebpageConditionInfo>? conditions;

  /// Website criteria coverage percentage.
  ///
  /// This is the computed percentage of website coverage based on the website
  /// target, negative website target and negative keywords in the ad group and
  /// campaign. For instance, when coverage returns as 1, it indicates it has
  /// 100% coverage. This field is read-only.
  core.double? coveragePercentage;

  /// The name of the criterion that is defined by this parameter.
  ///
  /// The name value will be used for identifying, sorting and filtering
  /// criteria with this type of parameters. This field is required for CREATE
  /// operations and is prohibited on UPDATE operations.
  core.String? criterionName;

  GoogleAdsSearchads360V0CommonWebpageInfo({
    this.conditions,
    this.coveragePercentage,
    this.criterionName,
  });

  GoogleAdsSearchads360V0CommonWebpageInfo.fromJson(core.Map json_)
      : this(
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) =>
                      GoogleAdsSearchads360V0CommonWebpageConditionInfo
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          coveragePercentage: json_.containsKey('coveragePercentage')
              ? (json_['coveragePercentage'] as core.num).toDouble()
              : null,
          criterionName: json_.containsKey('criterionName')
              ? json_['criterionName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conditions != null) 'conditions': conditions!,
        if (coveragePercentage != null)
          'coveragePercentage': coveragePercentage!,
        if (criterionName != null) 'criterionName': criterionName!,
      };
}

/// A container for ad group criterion quality information.
class GoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo {
  /// The quality score.
  ///
  /// This field may not be populated if Google does not have enough information
  /// to determine a value.
  ///
  /// Output only.
  core.int? qualityScore;

  GoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo({
    this.qualityScore,
  });

  GoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo.fromJson(
      core.Map json_)
      : this(
          qualityScore: json_.containsKey('qualityScore')
              ? json_['qualityScore'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (qualityScore != null) 'qualityScore': qualityScore!,
      };
}

/// The setting for controlling Dynamic Search Ads (DSA).
class GoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting {
  /// The Internet domain name that this setting represents, for example,
  /// "google.com" or "www.google.com".
  ///
  /// Required.
  core.String? domainName;

  /// The language code specifying the language of the domain, for example,
  /// "en".
  ///
  /// Required.
  core.String? languageCode;

  /// Whether the campaign uses advertiser supplied URLs exclusively.
  core.bool? useSuppliedUrlsOnly;

  GoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting({
    this.domainName,
    this.languageCode,
    this.useSuppliedUrlsOnly,
  });

  GoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting.fromJson(
      core.Map json_)
      : this(
          domainName: json_.containsKey('domainName')
              ? json_['domainName'] as core.String
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          useSuppliedUrlsOnly: json_.containsKey('useSuppliedUrlsOnly')
              ? json_['useSuppliedUrlsOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domainName != null) 'domainName': domainName!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (useSuppliedUrlsOnly != null)
          'useSuppliedUrlsOnly': useSuppliedUrlsOnly!,
      };
}

/// Represents a collection of settings related to ads geotargeting.
class GoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting {
  /// The setting used for negative geotargeting in this particular campaign.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : The value is unknown in this version.
  /// - "PRESENCE_OR_INTEREST" : Specifies that a user is excluded from seeing
  /// the ad if they are in, or show interest in, advertiser's excluded
  /// locations.
  /// - "PRESENCE" : Specifies that a user is excluded from seeing the ad if
  /// they are in advertiser's excluded locations.
  core.String? negativeGeoTargetType;

  /// The setting used for positive geotargeting in this particular campaign.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : The value is unknown in this version.
  /// - "PRESENCE_OR_INTEREST" : Specifies that an ad is triggered if the user
  /// is in, or shows interest in, advertiser's targeted locations.
  /// - "SEARCH_INTEREST" : Specifies that an ad is triggered if the user
  /// searches for advertiser's targeted locations. This can only be used with
  /// Search and standard Shopping campaigns.
  /// - "PRESENCE" : Specifies that an ad is triggered if the user is in or
  /// regularly in advertiser's targeted locations.
  core.String? positiveGeoTargetType;

  GoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting({
    this.negativeGeoTargetType,
    this.positiveGeoTargetType,
  });

  GoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting.fromJson(
      core.Map json_)
      : this(
          negativeGeoTargetType: json_.containsKey('negativeGeoTargetType')
              ? json_['negativeGeoTargetType'] as core.String
              : null,
          positiveGeoTargetType: json_.containsKey('positiveGeoTargetType')
              ? json_['positiveGeoTargetType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (negativeGeoTargetType != null)
          'negativeGeoTargetType': negativeGeoTargetType!,
        if (positiveGeoTargetType != null)
          'positiveGeoTargetType': positiveGeoTargetType!,
      };
}

/// The network settings for the campaign.
class GoogleAdsSearchads360V0ResourcesCampaignNetworkSettings {
  /// Whether ads will be served on specified placements in the Google Display
  /// Network.
  ///
  /// Placements are specified using the Placement criterion.
  core.bool? targetContentNetwork;

  /// Whether ads will be served with google.com search results.
  core.bool? targetGoogleSearch;

  /// Whether ads will be served on the Google Partner Network.
  ///
  /// This is available only to some select Google partner accounts.
  core.bool? targetPartnerSearchNetwork;

  /// Whether ads will be served on partner sites in the Google Search Network
  /// (requires `target_google_search` to also be `true`).
  core.bool? targetSearchNetwork;

  GoogleAdsSearchads360V0ResourcesCampaignNetworkSettings({
    this.targetContentNetwork,
    this.targetGoogleSearch,
    this.targetPartnerSearchNetwork,
    this.targetSearchNetwork,
  });

  GoogleAdsSearchads360V0ResourcesCampaignNetworkSettings.fromJson(
      core.Map json_)
      : this(
          targetContentNetwork: json_.containsKey('targetContentNetwork')
              ? json_['targetContentNetwork'] as core.bool
              : null,
          targetGoogleSearch: json_.containsKey('targetGoogleSearch')
              ? json_['targetGoogleSearch'] as core.bool
              : null,
          targetPartnerSearchNetwork:
              json_.containsKey('targetPartnerSearchNetwork')
                  ? json_['targetPartnerSearchNetwork'] as core.bool
                  : null,
          targetSearchNetwork: json_.containsKey('targetSearchNetwork')
              ? json_['targetSearchNetwork'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (targetContentNetwork != null)
          'targetContentNetwork': targetContentNetwork!,
        if (targetGoogleSearch != null)
          'targetGoogleSearch': targetGoogleSearch!,
        if (targetPartnerSearchNetwork != null)
          'targetPartnerSearchNetwork': targetPartnerSearchNetwork!,
        if (targetSearchNetwork != null)
          'targetSearchNetwork': targetSearchNetwork!,
      };
}

/// Optimization goal setting for this campaign, which includes a set of
/// optimization goal types.
class GoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting {
  /// The list of optimization goal types.
  core.List<core.String>? optimizationGoalTypes;

  GoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting({
    this.optimizationGoalTypes,
  });

  GoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting.fromJson(
      core.Map json_)
      : this(
          optimizationGoalTypes: json_.containsKey('optimizationGoalTypes')
              ? (json_['optimizationGoalTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (optimizationGoalTypes != null)
          'optimizationGoalTypes': optimizationGoalTypes!,
      };
}

/// Selective optimization setting for this campaign, which includes a set of
/// conversion actions to optimize this campaign towards.
class GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization {
  /// The selected set of conversion actions for optimizing this campaign.
  core.List<core.String>? conversionActions;

  GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization({
    this.conversionActions,
  });

  GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization.fromJson(
      core.Map json_)
      : this(
          conversionActions: json_.containsKey('conversionActions')
              ? (json_['conversionActions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversionActions != null) 'conversionActions': conversionActions!,
      };
}

/// The setting for Shopping campaigns.
///
/// Defines the universe of products that can be advertised by the campaign, and
/// how this campaign interacts with other Shopping campaigns.
class GoogleAdsSearchads360V0ResourcesCampaignShoppingSetting {
  /// Priority of the campaign.
  ///
  /// Campaigns with numerically higher priorities take precedence over those
  /// with lower priorities. This field is required for Shopping campaigns, with
  /// values between 0 and 2, inclusive. This field is optional for Smart
  /// Shopping campaigns, but must be equal to 3 if set.
  core.int? campaignPriority;

  /// Whether to include local products.
  core.bool? enableLocal;

  /// Feed label of products to include in the campaign.
  ///
  /// Only one of feed_label or sales_country can be set. If used instead of
  /// sales_country, the feed_label field accepts country codes in the same
  /// format for example: 'XX'. Otherwise can be any string used for feed label
  /// in Google Merchant Center.
  core.String? feedLabel;

  /// ID of the Merchant Center account.
  ///
  /// This field is required for create operations. This field is immutable for
  /// Shopping campaigns.
  ///
  /// Immutable.
  core.String? merchantId;

  /// Sales country of products to include in the campaign.
  core.String? salesCountry;

  /// Whether to target Vehicle Listing inventory.
  ///
  /// Immutable.
  core.bool? useVehicleInventory;

  GoogleAdsSearchads360V0ResourcesCampaignShoppingSetting({
    this.campaignPriority,
    this.enableLocal,
    this.feedLabel,
    this.merchantId,
    this.salesCountry,
    this.useVehicleInventory,
  });

  GoogleAdsSearchads360V0ResourcesCampaignShoppingSetting.fromJson(
      core.Map json_)
      : this(
          campaignPriority: json_.containsKey('campaignPriority')
              ? json_['campaignPriority'] as core.int
              : null,
          enableLocal: json_.containsKey('enableLocal')
              ? json_['enableLocal'] as core.bool
              : null,
          feedLabel: json_.containsKey('feedLabel')
              ? json_['feedLabel'] as core.String
              : null,
          merchantId: json_.containsKey('merchantId')
              ? json_['merchantId'] as core.String
              : null,
          salesCountry: json_.containsKey('salesCountry')
              ? json_['salesCountry'] as core.String
              : null,
          useVehicleInventory: json_.containsKey('useVehicleInventory')
              ? json_['useVehicleInventory'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (campaignPriority != null) 'campaignPriority': campaignPriority!,
        if (enableLocal != null) 'enableLocal': enableLocal!,
        if (feedLabel != null) 'feedLabel': feedLabel!,
        if (merchantId != null) 'merchantId': merchantId!,
        if (salesCountry != null) 'salesCountry': salesCountry!,
        if (useVehicleInventory != null)
          'useVehicleInventory': useVehicleInventory!,
      };
}

/// Campaign-level settings for tracking information.
class GoogleAdsSearchads360V0ResourcesCampaignTrackingSetting {
  /// The url used for dynamic tracking.
  ///
  /// Output only.
  core.String? trackingUrl;

  GoogleAdsSearchads360V0ResourcesCampaignTrackingSetting({
    this.trackingUrl,
  });

  GoogleAdsSearchads360V0ResourcesCampaignTrackingSetting.fromJson(
      core.Map json_)
      : this(
          trackingUrl: json_.containsKey('trackingUrl')
              ? json_['trackingUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (trackingUrl != null) 'trackingUrl': trackingUrl!,
      };
}

/// Settings related to this conversion action's attribution model.
class GoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings {
  /// The attribution model type of this conversion action.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "EXTERNAL" : Uses external attribution.
  /// - "GOOGLE_ADS_LAST_CLICK" : Attributes all credit for a conversion to its
  /// last click.
  /// - "GOOGLE_SEARCH_ATTRIBUTION_FIRST_CLICK" : Attributes all credit for a
  /// conversion to its first click using Google Search attribution.
  /// - "GOOGLE_SEARCH_ATTRIBUTION_LINEAR" : Attributes credit for a conversion
  /// equally across all of its clicks using Google Search attribution.
  /// - "GOOGLE_SEARCH_ATTRIBUTION_TIME_DECAY" : Attributes exponentially more
  /// credit for a conversion to its more recent clicks using Google Search
  /// attribution (half-life is 1 week).
  /// - "GOOGLE_SEARCH_ATTRIBUTION_POSITION_BASED" : Attributes 40% of the
  /// credit for a conversion to its first and last clicks. Remaining 20% is
  /// evenly distributed across all other clicks. This uses Google Search
  /// attribution.
  /// - "GOOGLE_SEARCH_ATTRIBUTION_DATA_DRIVEN" : Flexible model that uses
  /// machine learning to determine the appropriate distribution of credit among
  /// clicks using Google Search attribution.
  core.String? attributionModel;

  /// The status of the data-driven attribution model for the conversion action.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "AVAILABLE" : The data driven model is available.
  /// - "STALE" : The data driven model is stale. It hasn't been updated for at
  /// least 7 days. It is still being used, but will become expired if it does
  /// not get updated for 30 days.
  /// - "EXPIRED" : The data driven model expired. It hasn't been updated for at
  /// least 30 days and cannot be used. Most commonly this is because there
  /// hasn't been the required number of events in a recent 30-day period.
  /// - "NEVER_GENERATED" : The data driven model has never been generated. Most
  /// commonly this is because there has never been the required number of
  /// events in any 30-day period.
  core.String? dataDrivenModelStatus;

  GoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings({
    this.attributionModel,
    this.dataDrivenModelStatus,
  });

  GoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings.fromJson(
      core.Map json_)
      : this(
          attributionModel: json_.containsKey('attributionModel')
              ? json_['attributionModel'] as core.String
              : null,
          dataDrivenModelStatus: json_.containsKey('dataDrivenModelStatus')
              ? json_['dataDrivenModelStatus'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributionModel != null) 'attributionModel': attributionModel!,
        if (dataDrivenModelStatus != null)
          'dataDrivenModelStatus': dataDrivenModelStatus!,
      };
}

/// Settings related to a Floodlight conversion action.
class GoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings {
  /// String used to identify a Floodlight activity group when reporting
  /// conversions.
  ///
  /// Output only.
  core.String? activityGroupTag;

  /// ID of the Floodlight activity in DoubleClick Campaign Manager (DCM).
  ///
  /// Output only.
  core.String? activityId;

  /// String used to identify a Floodlight activity when reporting conversions.
  ///
  /// Output only.
  core.String? activityTag;

  GoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings({
    this.activityGroupTag,
    this.activityId,
    this.activityTag,
  });

  GoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings.fromJson(
      core.Map json_)
      : this(
          activityGroupTag: json_.containsKey('activityGroupTag')
              ? json_['activityGroupTag'] as core.String
              : null,
          activityId: json_.containsKey('activityId')
              ? json_['activityId'] as core.String
              : null,
          activityTag: json_.containsKey('activityTag')
              ? json_['activityTag'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activityGroupTag != null) 'activityGroupTag': activityGroupTag!,
        if (activityId != null) 'activityId': activityId!,
        if (activityTag != null) 'activityTag': activityTag!,
      };
}

/// Settings related to the value for conversion events associated with this
/// conversion action.
class GoogleAdsSearchads360V0ResourcesConversionActionValueSettings {
  /// Controls whether the default value and default currency code are used in
  /// place of the value and currency code specified in conversion events for
  /// this conversion action.
  core.bool? alwaysUseDefaultValue;

  /// The currency code to use when conversion events for this conversion action
  /// are sent with an invalid or missing currency code, or when this conversion
  /// action is configured to always use the default value.
  core.String? defaultCurrencyCode;

  /// The value to use when conversion events for this conversion action are
  /// sent with an invalid, disallowed or missing value, or when this conversion
  /// action is configured to always use the default value.
  core.double? defaultValue;

  GoogleAdsSearchads360V0ResourcesConversionActionValueSettings({
    this.alwaysUseDefaultValue,
    this.defaultCurrencyCode,
    this.defaultValue,
  });

  GoogleAdsSearchads360V0ResourcesConversionActionValueSettings.fromJson(
      core.Map json_)
      : this(
          alwaysUseDefaultValue: json_.containsKey('alwaysUseDefaultValue')
              ? json_['alwaysUseDefaultValue'] as core.bool
              : null,
          defaultCurrencyCode: json_.containsKey('defaultCurrencyCode')
              ? json_['defaultCurrencyCode'] as core.String
              : null,
          defaultValue: json_.containsKey('defaultValue')
              ? (json_['defaultValue'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alwaysUseDefaultValue != null)
          'alwaysUseDefaultValue': alwaysUseDefaultValue!,
        if (defaultCurrencyCode != null)
          'defaultCurrencyCode': defaultCurrencyCode!,
        if (defaultValue != null) 'defaultValue': defaultValue!,
      };
}

/// An ad group.
class GoogleAdsSearchads360V0ResourcesAdGroup {
  /// The ad rotation mode of the ad group.
  /// Possible string values are:
  /// - "UNSPECIFIED" : The ad rotation mode has not been specified.
  /// - "UNKNOWN" : The received value is not known in this version. This is a
  /// response-only value.
  /// - "OPTIMIZE" : Optimize ad group ads based on clicks or conversions.
  /// - "ROTATE_FOREVER" : Rotate evenly forever.
  core.String? adRotationMode;

  /// The maximum CPC (cost-per-click) bid.
  core.String? cpcBidMicros;

  /// The ID of the ad group.
  ///
  /// Output only.
  core.String? id;

  /// The name of the ad group.
  ///
  /// This field is required and should not be empty when creating new ad
  /// groups. It must contain fewer than 255 UTF-8 full-width characters. It
  /// must not contain any null (code point 0x0), NL line feed (code point 0xA)
  /// or carriage return (code point 0xD) characters.
  core.String? name;

  /// The resource name of the ad group.
  ///
  /// Ad group resource names have the form:
  /// `customers/{customer_id}/adGroups/{ad_group_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// The status of the ad group.
  /// Possible string values are:
  /// - "UNSPECIFIED" : The status has not been specified.
  /// - "UNKNOWN" : The received value is not known in this version. This is a
  /// response-only value.
  /// - "ENABLED" : The ad group is enabled.
  /// - "PAUSED" : The ad group is paused.
  /// - "REMOVED" : The ad group is removed.
  core.String? status;

  /// The type of the ad group.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "UNSPECIFIED" : The type has not been specified.
  /// - "UNKNOWN" : The received value is not known in this version. This is a
  /// response-only value.
  /// - "SEARCH_STANDARD" : The default ad group type for Search campaigns.
  /// - "DISPLAY_STANDARD" : The default ad group type for Display campaigns.
  /// - "SHOPPING_PRODUCT_ADS" : The ad group type for Shopping campaigns
  /// serving standard product ads.
  /// - "SHOPPING_SHOWCASE_ADS" : The type for ad groups that are limited to
  /// serving Showcase or Merchant ads in Shopping results.
  /// - "HOTEL_ADS" : The default ad group type for Hotel campaigns.
  /// - "SHOPPING_SMART_ADS" : The type for ad groups in Smart Shopping
  /// campaigns.
  /// - "VIDEO_BUMPER" : Short unskippable in-stream video ads.
  /// - "VIDEO_TRUE_VIEW_IN_STREAM" : TrueView (skippable) in-stream video ads.
  /// - "VIDEO_TRUE_VIEW_IN_DISPLAY" : TrueView in-display video ads.
  /// - "VIDEO_NON_SKIPPABLE_IN_STREAM" : Unskippable in-stream video ads.
  /// - "VIDEO_OUTSTREAM" : Outstream video ads.
  /// - "SEARCH_DYNAMIC_ADS" : Ad group type for Dynamic Search Ads ad groups.
  /// - "SHOPPING_COMPARISON_LISTING_ADS" : The type for ad groups in Shopping
  /// Comparison Listing campaigns.
  /// - "PROMOTED_HOTEL_ADS" : The ad group type for Promoted Hotel ad groups.
  /// - "VIDEO_RESPONSIVE" : Video responsive ad groups.
  /// - "VIDEO_EFFICIENT_REACH" : Video efficient reach ad groups.
  /// - "SMART_CAMPAIGN_ADS" : Ad group type for Smart campaigns.
  core.String? type;

  GoogleAdsSearchads360V0ResourcesAdGroup({
    this.adRotationMode,
    this.cpcBidMicros,
    this.id,
    this.name,
    this.resourceName,
    this.status,
    this.type,
  });

  GoogleAdsSearchads360V0ResourcesAdGroup.fromJson(core.Map json_)
      : this(
          adRotationMode: json_.containsKey('adRotationMode')
              ? json_['adRotationMode'] as core.String
              : null,
          cpcBidMicros: json_.containsKey('cpcBidMicros')
              ? json_['cpcBidMicros'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adRotationMode != null) 'adRotationMode': adRotationMode!,
        if (cpcBidMicros != null) 'cpcBidMicros': cpcBidMicros!,
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (resourceName != null) 'resourceName': resourceName!,
        if (status != null) 'status': status!,
        if (type != null) 'type': type!,
      };
}

/// Represents an ad group bid modifier.
class GoogleAdsSearchads360V0ResourcesAdGroupBidModifier {
  /// The modifier for the bid when the criterion matches.
  ///
  /// The modifier must be in the range: 0.1 - 10.0. The range is 1.0 - 6.0 for
  /// PreferredContent. Use 0 to opt out of a Device type.
  core.double? bidModifier;

  /// The resource name of the ad group bid modifier.
  ///
  /// Ad group bid modifier resource names have the form:
  /// `customers/{customer_id}/adGroupBidModifiers/{ad_group_id}~{criterion_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesAdGroupBidModifier({
    this.bidModifier,
    this.resourceName,
  });

  GoogleAdsSearchads360V0ResourcesAdGroupBidModifier.fromJson(core.Map json_)
      : this(
          bidModifier: json_.containsKey('bidModifier')
              ? (json_['bidModifier'] as core.num).toDouble()
              : null,
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bidModifier != null) 'bidModifier': bidModifier!,
        if (resourceName != null) 'resourceName': resourceName!,
      };
}

/// An ad group criterion.
class GoogleAdsSearchads360V0ResourcesAdGroupCriterion {
  /// The ad group to which the criterion belongs.
  ///
  /// Immutable.
  core.String? adGroup;

  /// Age range.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonAgeRangeInfo? ageRange;

  /// The modifier for the bid when the criterion matches.
  ///
  /// The modifier must be in the range: 0.1 - 10.0. Most targetable criteria
  /// types support modifiers.
  core.double? bidModifier;

  /// The CPC (cost-per-click) bid.
  core.String? cpcBidMicros;

  /// The ID of the criterion.
  ///
  /// Output only.
  core.String? criterionId;

  /// The effective CPC (cost-per-click) bid.
  ///
  /// Output only.
  core.String? effectiveCpcBidMicros;

  /// The Engine Status for ad group criterion.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "AD_GROUP_CRITERION_ELIGIBLE" : Deprecated. Do not use.
  /// - "AD_GROUP_CRITERION_INAPPROPRIATE_FOR_CAMPAIGN" : Baidu: Bid or quality
  /// too low to be displayed.
  /// - "AD_GROUP_CRITERION_INVALID_MOBILE_SEARCH" : Baidu: Bid or quality too
  /// low for mobile, but eligible to display for desktop.
  /// - "AD_GROUP_CRITERION_INVALID_PC_SEARCH" : Baidu: Bid or quality too low
  /// for desktop, but eligible to display for mobile.
  /// - "AD_GROUP_CRITERION_INVALID_SEARCH" : Baidu: Bid or quality too low to
  /// be displayed.
  /// - "AD_GROUP_CRITERION_LOW_SEARCH_VOLUME" : Baidu: Paused by Baidu due to
  /// low search volume.
  /// - "AD_GROUP_CRITERION_MOBILE_URL_UNDER_REVIEW" : Baidu: Mobile URL in
  /// process to be reviewed.
  /// - "AD_GROUP_CRITERION_PARTIALLY_INVALID" : Baidu: The landing page for one
  /// device is invalid, while the landing page for the other device is valid.
  /// - "AD_GROUP_CRITERION_TO_BE_ACTIVATED" : Baidu: Keyword has been created
  /// and paused by Baidu account management, and is now ready for you to
  /// activate it.
  /// - "AD_GROUP_CRITERION_UNDER_REVIEW" : Baidu: In process to be reviewed by
  /// Baidu. Gemini: Criterion under review.
  /// - "AD_GROUP_CRITERION_NOT_REVIEWED" : Baidu: Criterion to be reviewed.
  /// - "AD_GROUP_CRITERION_ON_HOLD" : Deprecated. Do not use. Previously used
  /// by Gemini
  /// - "AD_GROUP_CRITERION_PENDING_REVIEW" : Y!J : Criterion pending review
  /// - "AD_GROUP_CRITERION_PAUSED" : Criterion has been paused.
  /// - "AD_GROUP_CRITERION_REMOVED" : Criterion has been removed.
  /// - "AD_GROUP_CRITERION_APPROVED" : Criterion has been approved.
  /// - "AD_GROUP_CRITERION_DISAPPROVED" : Criterion has been disapproved.
  /// - "AD_GROUP_CRITERION_SERVING" : Criterion is active and serving.
  /// - "AD_GROUP_CRITERION_ACCOUNT_PAUSED" : Criterion has been paused since
  /// the account is paused.
  core.String? engineStatus;

  /// URL template for appending params to final URL.
  core.String? finalUrlSuffix;

  /// The list of possible final URLs after all cross-domain redirects for the
  /// ad.
  core.List<core.String>? finalUrls;

  /// Gender.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonGenderInfo? gender;

  /// Keyword.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonKeywordInfo? keyword;

  /// The datetime when this ad group criterion was last modified.
  ///
  /// The datetime is in the customer's time zone and in "yyyy-MM-dd
  /// HH:mm:ss.ssssss" format.
  ///
  /// Output only.
  core.String? lastModifiedTime;

  /// Listing group.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonListingGroupInfo? listingGroup;

  /// Information regarding the quality of the criterion.
  ///
  /// Output only.
  GoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo? qualityInfo;

  /// The resource name of the ad group criterion.
  ///
  /// Ad group criterion resource names have the form:
  /// `customers/{customer_id}/adGroupCriteria/{ad_group_id}~{criterion_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// The status of the criterion.
  ///
  /// This is the status of the ad group criterion entity, set by the client.
  /// Note: UI reports may incorporate additional information that affects
  /// whether a criterion is eligible to run. In some cases a criterion that's
  /// REMOVED in the API can still show as enabled in the UI. For example,
  /// campaigns by default show to users of all age ranges unless excluded. The
  /// UI will show each age range as "enabled", since they're eligible to see
  /// the ads; but AdGroupCriterion.status will show "removed", since no
  /// positive criterion was added.
  /// Possible string values are:
  /// - "UNSPECIFIED" : No value has been specified.
  /// - "UNKNOWN" : The received value is not known in this version. This is a
  /// response-only value.
  /// - "ENABLED" : The ad group criterion is enabled.
  /// - "PAUSED" : The ad group criterion is paused.
  /// - "REMOVED" : The ad group criterion is removed.
  core.String? status;

  /// The URL template for constructing a tracking URL.
  core.String? trackingUrlTemplate;

  /// The type of the criterion.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "KEYWORD" : Keyword, for example, 'mars cruise'.
  /// - "PLACEMENT" : Placement, also known as Website, for example,
  /// 'www.flowers4sale.com'
  /// - "MOBILE_APP_CATEGORY" : Mobile application categories to target.
  /// - "MOBILE_APPLICATION" : Mobile applications to target.
  /// - "DEVICE" : Devices to target.
  /// - "LOCATION" : Locations to target.
  /// - "LISTING_GROUP" : Listing groups to target.
  /// - "AD_SCHEDULE" : Ad Schedule.
  /// - "AGE_RANGE" : Age range.
  /// - "GENDER" : Gender.
  /// - "INCOME_RANGE" : Income Range.
  /// - "PARENTAL_STATUS" : Parental status.
  /// - "YOUTUBE_VIDEO" : YouTube Video.
  /// - "YOUTUBE_CHANNEL" : YouTube Channel.
  /// - "USER_LIST" : User list.
  /// - "PROXIMITY" : Proximity.
  /// - "TOPIC" : A topic target on the display network (for example, "Pets &
  /// Animals").
  /// - "LISTING_SCOPE" : Listing scope to target.
  /// - "LANGUAGE" : Language.
  /// - "IP_BLOCK" : IpBlock.
  /// - "CONTENT_LABEL" : Content Label for category exclusion.
  /// - "CARRIER" : Carrier.
  /// - "USER_INTEREST" : A category the user is interested in.
  /// - "WEBPAGE" : Webpage criterion for dynamic search ads.
  /// - "OPERATING_SYSTEM_VERSION" : Operating system version.
  /// - "APP_PAYMENT_MODEL" : App payment model.
  /// - "MOBILE_DEVICE" : Mobile device.
  /// - "CUSTOM_AFFINITY" : Custom affinity.
  /// - "CUSTOM_INTENT" : Custom intent.
  /// - "LOCATION_GROUP" : Location group.
  /// - "CUSTOM_AUDIENCE" : Custom audience
  /// - "COMBINED_AUDIENCE" : Combined audience
  /// - "KEYWORD_THEME" : Smart Campaign keyword theme
  /// - "AUDIENCE" : Audience
  /// - "LOCAL_SERVICE_ID" : Google Local Services (GLS) Service ID.
  core.String? type;

  /// Webpage
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonWebpageInfo? webpage;

  GoogleAdsSearchads360V0ResourcesAdGroupCriterion({
    this.adGroup,
    this.ageRange,
    this.bidModifier,
    this.cpcBidMicros,
    this.criterionId,
    this.effectiveCpcBidMicros,
    this.engineStatus,
    this.finalUrlSuffix,
    this.finalUrls,
    this.gender,
    this.keyword,
    this.lastModifiedTime,
    this.listingGroup,
    this.qualityInfo,
    this.resourceName,
    this.status,
    this.trackingUrlTemplate,
    this.type,
    this.webpage,
  });

  GoogleAdsSearchads360V0ResourcesAdGroupCriterion.fromJson(core.Map json_)
      : this(
          adGroup: json_.containsKey('adGroup')
              ? json_['adGroup'] as core.String
              : null,
          ageRange: json_.containsKey('ageRange')
              ? GoogleAdsSearchads360V0CommonAgeRangeInfo.fromJson(
                  json_['ageRange'] as core.Map<core.String, core.dynamic>)
              : null,
          bidModifier: json_.containsKey('bidModifier')
              ? (json_['bidModifier'] as core.num).toDouble()
              : null,
          cpcBidMicros: json_.containsKey('cpcBidMicros')
              ? json_['cpcBidMicros'] as core.String
              : null,
          criterionId: json_.containsKey('criterionId')
              ? json_['criterionId'] as core.String
              : null,
          effectiveCpcBidMicros: json_.containsKey('effectiveCpcBidMicros')
              ? json_['effectiveCpcBidMicros'] as core.String
              : null,
          engineStatus: json_.containsKey('engineStatus')
              ? json_['engineStatus'] as core.String
              : null,
          finalUrlSuffix: json_.containsKey('finalUrlSuffix')
              ? json_['finalUrlSuffix'] as core.String
              : null,
          finalUrls: json_.containsKey('finalUrls')
              ? (json_['finalUrls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          gender: json_.containsKey('gender')
              ? GoogleAdsSearchads360V0CommonGenderInfo.fromJson(
                  json_['gender'] as core.Map<core.String, core.dynamic>)
              : null,
          keyword: json_.containsKey('keyword')
              ? GoogleAdsSearchads360V0CommonKeywordInfo.fromJson(
                  json_['keyword'] as core.Map<core.String, core.dynamic>)
              : null,
          lastModifiedTime: json_.containsKey('lastModifiedTime')
              ? json_['lastModifiedTime'] as core.String
              : null,
          listingGroup: json_.containsKey('listingGroup')
              ? GoogleAdsSearchads360V0CommonListingGroupInfo.fromJson(
                  json_['listingGroup'] as core.Map<core.String, core.dynamic>)
              : null,
          qualityInfo: json_.containsKey('qualityInfo')
              ? GoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo
                  .fromJson(json_['qualityInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          trackingUrlTemplate: json_.containsKey('trackingUrlTemplate')
              ? json_['trackingUrlTemplate'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          webpage: json_.containsKey('webpage')
              ? GoogleAdsSearchads360V0CommonWebpageInfo.fromJson(
                  json_['webpage'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adGroup != null) 'adGroup': adGroup!,
        if (ageRange != null) 'ageRange': ageRange!,
        if (bidModifier != null) 'bidModifier': bidModifier!,
        if (cpcBidMicros != null) 'cpcBidMicros': cpcBidMicros!,
        if (criterionId != null) 'criterionId': criterionId!,
        if (effectiveCpcBidMicros != null)
          'effectiveCpcBidMicros': effectiveCpcBidMicros!,
        if (engineStatus != null) 'engineStatus': engineStatus!,
        if (finalUrlSuffix != null) 'finalUrlSuffix': finalUrlSuffix!,
        if (finalUrls != null) 'finalUrls': finalUrls!,
        if (gender != null) 'gender': gender!,
        if (keyword != null) 'keyword': keyword!,
        if (lastModifiedTime != null) 'lastModifiedTime': lastModifiedTime!,
        if (listingGroup != null) 'listingGroup': listingGroup!,
        if (qualityInfo != null) 'qualityInfo': qualityInfo!,
        if (resourceName != null) 'resourceName': resourceName!,
        if (status != null) 'status': status!,
        if (trackingUrlTemplate != null)
          'trackingUrlTemplate': trackingUrlTemplate!,
        if (type != null) 'type': type!,
        if (webpage != null) 'webpage': webpage!,
      };
}

/// A bidding strategy.
class GoogleAdsSearchads360V0ResourcesBiddingStrategy {
  /// The number of campaigns attached to this bidding strategy.
  ///
  /// This field is read-only.
  ///
  /// Output only.
  core.String? campaignCount;

  /// The currency used by the bidding strategy (ISO 4217 three-letter code).
  ///
  /// For bidding strategies in manager customers, this currency can be set on
  /// creation and defaults to the manager customer's currency. For serving
  /// customers, this field cannot be set; all strategies in a serving customer
  /// implicitly use the serving customer's currency. In all cases the
  /// effective_currency_code field returns the currency used by the strategy.
  ///
  /// Immutable.
  core.String? currencyCode;

  /// The currency used by the bidding strategy (ISO 4217 three-letter code).
  ///
  /// For bidding strategies in manager customers, this is the currency set by
  /// the advertiser when creating the strategy. For serving customers, this is
  /// the customer's currency_code. Bidding strategy metrics are reported in
  /// this currency. This field is read-only.
  ///
  /// Output only.
  core.String? effectiveCurrencyCode;

  /// A bidding strategy that raises bids for clicks that seem more likely to
  /// lead to a conversion and lowers them for clicks where they seem less
  /// likely.
  GoogleAdsSearchads360V0CommonEnhancedCpc? enhancedCpc;

  /// The ID of the bidding strategy.
  ///
  /// Output only.
  core.String? id;

  /// An automated bidding strategy to help get the most conversion value for
  /// your campaigns while spending your budget.
  GoogleAdsSearchads360V0CommonMaximizeConversionValue? maximizeConversionValue;

  /// An automated bidding strategy to help get the most conversions for your
  /// campaigns while spending your budget.
  GoogleAdsSearchads360V0CommonMaximizeConversions? maximizeConversions;

  /// The name of the bidding strategy.
  ///
  /// All bidding strategies within an account must be named distinctly. The
  /// length of this string should be between 1 and 255, inclusive, in UTF-8
  /// bytes, (trimmed).
  core.String? name;

  /// The number of non-removed campaigns attached to this bidding strategy.
  ///
  /// This field is read-only.
  ///
  /// Output only.
  core.String? nonRemovedCampaignCount;

  /// The resource name of the bidding strategy.
  ///
  /// Bidding strategy resource names have the form:
  /// `customers/{customer_id}/biddingStrategies/{bidding_strategy_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// The status of the bidding strategy.
  ///
  /// This field is read-only.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : No value has been specified.
  /// - "UNKNOWN" : The received value is not known in this version. This is a
  /// response-only value.
  /// - "ENABLED" : The bidding strategy is enabled.
  /// - "REMOVED" : The bidding strategy is removed.
  core.String? status;

  /// A bidding strategy that sets bids to help get as many conversions as
  /// possible at the target cost-per-acquisition (CPA) you set.
  GoogleAdsSearchads360V0CommonTargetCpa? targetCpa;

  /// A bidding strategy that automatically optimizes towards a chosen
  /// percentage of impressions.
  GoogleAdsSearchads360V0CommonTargetImpressionShare? targetImpressionShare;

  /// A bidding strategy that sets bids based on the target fraction of auctions
  /// where the advertiser should outrank a specific competitor.
  ///
  /// This field is deprecated. Creating a new bidding strategy with this field
  /// or attaching bidding strategies with this field to a campaign will fail.
  /// Mutates to strategies that already have this scheme populated are allowed.
  GoogleAdsSearchads360V0CommonTargetOutrankShare? targetOutrankShare;

  /// A bidding strategy that helps you maximize revenue while averaging a
  /// specific target Return On Ad Spend (ROAS).
  GoogleAdsSearchads360V0CommonTargetRoas? targetRoas;

  /// A bid strategy that sets your bids to help get as many clicks as possible
  /// within your budget.
  GoogleAdsSearchads360V0CommonTargetSpend? targetSpend;

  /// The type of the bidding strategy.
  ///
  /// Create a bidding strategy by setting the bidding scheme. This field is
  /// read-only.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "COMMISSION" : Commission is an automatic bidding strategy in which the
  /// advertiser pays a certain portion of the conversion value.
  /// - "ENHANCED_CPC" : Enhanced CPC is a bidding strategy that raises bids for
  /// clicks that seem more likely to lead to a conversion and lowers them for
  /// clicks where they seem less likely.
  /// - "INVALID" : Used for return value only. Indicates that a campaign does
  /// not have a bidding strategy. This prevents the campaign from serving. For
  /// example, a campaign may be attached to a manager bidding strategy and the
  /// serving account is subsequently unlinked from the manager account. In this
  /// case the campaign will automatically be detached from the now inaccessible
  /// manager bidding strategy and transition to the INVALID bidding strategy
  /// type.
  /// - "MANUAL_CPA" : Manual bidding strategy that allows advertiser to set the
  /// bid per advertiser-specified action.
  /// - "MANUAL_CPC" : Manual click based bidding where user pays per click.
  /// - "MANUAL_CPM" : Manual impression based bidding where user pays per
  /// thousand impressions.
  /// - "MANUAL_CPV" : A bidding strategy that pays a configurable amount per
  /// video view.
  /// - "MAXIMIZE_CONVERSIONS" : A bidding strategy that automatically maximizes
  /// number of conversions given a daily budget.
  /// - "MAXIMIZE_CONVERSION_VALUE" : An automated bidding strategy that
  /// automatically sets bids to maximize revenue while spending your budget.
  /// - "PAGE_ONE_PROMOTED" : Page-One Promoted bidding scheme, which sets max
  /// cpc bids to target impressions on page one or page one promoted slots on
  /// google.com. This enum value is deprecated.
  /// - "PERCENT_CPC" : Percent Cpc is bidding strategy where bids are a
  /// fraction of the advertised price for some good or service.
  /// - "TARGET_CPA" : Target CPA is an automated bid strategy that sets bids to
  /// help get as many conversions as possible at the target
  /// cost-per-acquisition (CPA) you set.
  /// - "TARGET_CPM" : Target CPM is an automated bid strategy that sets bids to
  /// help get as many impressions as possible at the target cost per one
  /// thousand impressions (CPM) you set.
  /// - "TARGET_IMPRESSION_SHARE" : An automated bidding strategy that sets bids
  /// so that a certain percentage of search ads are shown at the top of the
  /// first page (or other targeted location).
  /// - "TARGET_OUTRANK_SHARE" : Target Outrank Share is an automated bidding
  /// strategy that sets bids based on the target fraction of auctions where the
  /// advertiser should outrank a specific competitor. This enum value is
  /// deprecated.
  /// - "TARGET_ROAS" : Target ROAS is an automated bidding strategy that helps
  /// you maximize revenue while averaging a specific target Return On Average
  /// Spend (ROAS).
  /// - "TARGET_SPEND" : Target Spend is an automated bid strategy that sets
  /// your bids to help get as many clicks as possible within your budget.
  core.String? type;

  GoogleAdsSearchads360V0ResourcesBiddingStrategy({
    this.campaignCount,
    this.currencyCode,
    this.effectiveCurrencyCode,
    this.enhancedCpc,
    this.id,
    this.maximizeConversionValue,
    this.maximizeConversions,
    this.name,
    this.nonRemovedCampaignCount,
    this.resourceName,
    this.status,
    this.targetCpa,
    this.targetImpressionShare,
    this.targetOutrankShare,
    this.targetRoas,
    this.targetSpend,
    this.type,
  });

  GoogleAdsSearchads360V0ResourcesBiddingStrategy.fromJson(core.Map json_)
      : this(
          campaignCount: json_.containsKey('campaignCount')
              ? json_['campaignCount'] as core.String
              : null,
          currencyCode: json_.containsKey('currencyCode')
              ? json_['currencyCode'] as core.String
              : null,
          effectiveCurrencyCode: json_.containsKey('effectiveCurrencyCode')
              ? json_['effectiveCurrencyCode'] as core.String
              : null,
          enhancedCpc: json_.containsKey('enhancedCpc')
              ? GoogleAdsSearchads360V0CommonEnhancedCpc.fromJson(
                  json_['enhancedCpc'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          maximizeConversionValue: json_.containsKey('maximizeConversionValue')
              ? GoogleAdsSearchads360V0CommonMaximizeConversionValue.fromJson(
                  json_['maximizeConversionValue']
                      as core.Map<core.String, core.dynamic>)
              : null,
          maximizeConversions: json_.containsKey('maximizeConversions')
              ? GoogleAdsSearchads360V0CommonMaximizeConversions.fromJson(
                  json_['maximizeConversions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nonRemovedCampaignCount: json_.containsKey('nonRemovedCampaignCount')
              ? json_['nonRemovedCampaignCount'] as core.String
              : null,
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          targetCpa: json_.containsKey('targetCpa')
              ? GoogleAdsSearchads360V0CommonTargetCpa.fromJson(
                  json_['targetCpa'] as core.Map<core.String, core.dynamic>)
              : null,
          targetImpressionShare: json_.containsKey('targetImpressionShare')
              ? GoogleAdsSearchads360V0CommonTargetImpressionShare.fromJson(
                  json_['targetImpressionShare']
                      as core.Map<core.String, core.dynamic>)
              : null,
          targetOutrankShare: json_.containsKey('targetOutrankShare')
              ? GoogleAdsSearchads360V0CommonTargetOutrankShare.fromJson(
                  json_['targetOutrankShare']
                      as core.Map<core.String, core.dynamic>)
              : null,
          targetRoas: json_.containsKey('targetRoas')
              ? GoogleAdsSearchads360V0CommonTargetRoas.fromJson(
                  json_['targetRoas'] as core.Map<core.String, core.dynamic>)
              : null,
          targetSpend: json_.containsKey('targetSpend')
              ? GoogleAdsSearchads360V0CommonTargetSpend.fromJson(
                  json_['targetSpend'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (campaignCount != null) 'campaignCount': campaignCount!,
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (effectiveCurrencyCode != null)
          'effectiveCurrencyCode': effectiveCurrencyCode!,
        if (enhancedCpc != null) 'enhancedCpc': enhancedCpc!,
        if (id != null) 'id': id!,
        if (maximizeConversionValue != null)
          'maximizeConversionValue': maximizeConversionValue!,
        if (maximizeConversions != null)
          'maximizeConversions': maximizeConversions!,
        if (name != null) 'name': name!,
        if (nonRemovedCampaignCount != null)
          'nonRemovedCampaignCount': nonRemovedCampaignCount!,
        if (resourceName != null) 'resourceName': resourceName!,
        if (status != null) 'status': status!,
        if (targetCpa != null) 'targetCpa': targetCpa!,
        if (targetImpressionShare != null)
          'targetImpressionShare': targetImpressionShare!,
        if (targetOutrankShare != null)
          'targetOutrankShare': targetOutrankShare!,
        if (targetRoas != null) 'targetRoas': targetRoas!,
        if (targetSpend != null) 'targetSpend': targetSpend!,
        if (type != null) 'type': type!,
      };
}

/// A campaign.
class GoogleAdsSearchads360V0ResourcesCampaign {
  /// The ad serving optimization status of the campaign.
  /// Possible string values are:
  /// - "UNSPECIFIED" : No value has been specified.
  /// - "UNKNOWN" : The received value is not known in this version. This is a
  /// response-only value.
  /// - "OPTIMIZE" : Ad serving is optimized based on CTR for the campaign.
  /// - "CONVERSION_OPTIMIZE" : Ad serving is optimized based on CTR *
  /// Conversion for the campaign. If the campaign is not in the conversion
  /// optimizer bidding strategy, it will default to OPTIMIZED.
  /// - "ROTATE" : Ads are rotated evenly for 90 days, then optimized for
  /// clicks.
  /// - "ROTATE_INDEFINITELY" : Show lower performing ads more evenly with
  /// higher performing ads, and do not optimize.
  /// - "UNAVAILABLE" : Ad serving optimization status is not available.
  core.String? adServingOptimizationStatus;

  /// Optional refinement to `advertising_channel_type`.
  ///
  /// Must be a valid sub-type of the parent channel type. Can be set only when
  /// creating campaigns. After campaign is created, the field can not be
  /// changed.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used as a return value only. Represents value unknown in
  /// this version.
  /// - "SEARCH_MOBILE_APP" : Mobile app campaigns for Search.
  /// - "DISPLAY_MOBILE_APP" : Mobile app campaigns for Display.
  /// - "SEARCH_EXPRESS" : AdWords express campaigns for search.
  /// - "DISPLAY_EXPRESS" : AdWords Express campaigns for display.
  /// - "SHOPPING_SMART_ADS" : Smart Shopping campaigns.
  /// - "DISPLAY_GMAIL_AD" : Gmail Ad campaigns.
  /// - "DISPLAY_SMART_CAMPAIGN" : Smart display campaigns.
  /// - "VIDEO_OUTSTREAM" : Video Outstream campaigns.
  /// - "VIDEO_ACTION" : Video TrueView for Action campaigns.
  /// - "VIDEO_NON_SKIPPABLE" : Video campaigns with non-skippable video ads.
  /// - "APP_CAMPAIGN" : App Campaign that lets you easily promote your Android
  /// or iOS app across Google's top properties including Search, Play, YouTube,
  /// and the Google Display Network.
  /// - "APP_CAMPAIGN_FOR_ENGAGEMENT" : App Campaign for engagement, focused on
  /// driving re-engagement with the app across several of Google's top
  /// properties including Search, YouTube, and the Google Display Network.
  /// - "LOCAL_CAMPAIGN" : Campaigns specialized for local advertising.
  /// - "SHOPPING_COMPARISON_LISTING_ADS" : Shopping Comparison Listing
  /// campaigns.
  /// - "SMART_CAMPAIGN" : Standard Smart campaigns.
  /// - "VIDEO_SEQUENCE" : Video campaigns with sequence video ads.
  /// - "APP_CAMPAIGN_FOR_PRE_REGISTRATION" : App Campaign for pre registration,
  /// specialized for advertising mobile app pre-registration, that targets
  /// multiple advertising channels across Google Play, YouTube and Display
  /// Network.
  /// - "VIDEO_REACH_TARGET_FREQUENCY" : Video reach campaign with Target
  /// Frequency bidding strategy.
  core.String? advertisingChannelSubType;

  /// The primary serving target for ads within the campaign.
  ///
  /// The targeting options can be refined in `network_settings`. This field is
  /// required and should not be empty when creating new campaigns. Can be set
  /// only when creating campaigns. After the campaign is created, the field can
  /// not be changed.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "SEARCH" : Search Network. Includes display bundled, and Search+
  /// campaigns.
  /// - "DISPLAY" : Google Display Network only.
  /// - "SHOPPING" : Shopping campaigns serve on the shopping property and on
  /// google.com search results.
  /// - "HOTEL" : Hotel Ads campaigns.
  /// - "VIDEO" : Video campaigns.
  /// - "MULTI_CHANNEL" : App Campaigns, and App Campaigns for Engagement, that
  /// run across multiple channels.
  /// - "LOCAL" : Local ads campaigns.
  /// - "SMART" : Smart campaigns.
  /// - "PERFORMANCE_MAX" : Performance Max campaigns.
  /// - "LOCAL_SERVICES" : Local services campaigns.
  /// - "DISCOVERY" : Discovery campaigns.
  core.String? advertisingChannelType;

  /// Portfolio bidding strategy used by campaign.
  core.String? biddingStrategy;

  /// The system status of the campaign's bidding strategy.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Signals that an unexpected error occurred, for example,
  /// no bidding strategy type was found, or no status information was found.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "ENABLED" : The bid strategy is active, and AdWords cannot find any
  /// specific issues with the strategy.
  /// - "LEARNING_NEW" : The bid strategy is learning because it has been
  /// recently created or recently reactivated.
  /// - "LEARNING_SETTING_CHANGE" : The bid strategy is learning because of a
  /// recent setting change.
  /// - "LEARNING_BUDGET_CHANGE" : The bid strategy is learning because of a
  /// recent budget change.
  /// - "LEARNING_COMPOSITION_CHANGE" : The bid strategy is learning because of
  /// recent change in number of campaigns, ad groups or keywords attached to
  /// it.
  /// - "LEARNING_CONVERSION_TYPE_CHANGE" : The bid strategy depends on
  /// conversion reporting and the customer recently modified conversion types
  /// that were relevant to the bid strategy.
  /// - "LEARNING_CONVERSION_SETTING_CHANGE" : The bid strategy depends on
  /// conversion reporting and the customer recently changed their conversion
  /// settings.
  /// - "LIMITED_BY_CPC_BID_CEILING" : The bid strategy is limited by its bid
  /// ceiling.
  /// - "LIMITED_BY_CPC_BID_FLOOR" : The bid strategy is limited by its bid
  /// floor.
  /// - "LIMITED_BY_DATA" : The bid strategy is limited because there was not
  /// enough conversion traffic over the past weeks.
  /// - "LIMITED_BY_BUDGET" : A significant fraction of keywords in this bid
  /// strategy are limited by budget.
  /// - "LIMITED_BY_LOW_PRIORITY_SPEND" : The bid strategy cannot reach its
  /// target spend because its spend has been de-prioritized.
  /// - "LIMITED_BY_LOW_QUALITY" : A significant fraction of keywords in this
  /// bid strategy have a low Quality Score.
  /// - "LIMITED_BY_INVENTORY" : The bid strategy cannot fully spend its budget
  /// because of narrow targeting.
  /// - "MISCONFIGURED_ZERO_ELIGIBILITY" : Missing conversion tracking (no pings
  /// present) and/or remarketing lists for SSC.
  /// - "MISCONFIGURED_CONVERSION_TYPES" : The bid strategy depends on
  /// conversion reporting and the customer is lacking conversion types that
  /// might be reported against this strategy.
  /// - "MISCONFIGURED_CONVERSION_SETTINGS" : The bid strategy depends on
  /// conversion reporting and the customer's conversion settings are
  /// misconfigured.
  /// - "MISCONFIGURED_SHARED_BUDGET" : There are campaigns outside the bid
  /// strategy that share budgets with campaigns included in the strategy.
  /// - "MISCONFIGURED_STRATEGY_TYPE" : The campaign has an invalid strategy
  /// type and is not serving.
  /// - "PAUSED" : The bid strategy is not active. Either there are no active
  /// campaigns, ad groups or keywords attached to the bid strategy. Or there
  /// are no active budgets connected to the bid strategy.
  /// - "UNAVAILABLE" : This bid strategy currently does not support status
  /// reporting.
  /// - "MULTIPLE_LEARNING" : There were multiple LEARNING_* system statuses for
  /// this bid strategy during the time in question.
  /// - "MULTIPLE_LIMITED" : There were multiple LIMITED_* system statuses for
  /// this bid strategy during the time in question.
  /// - "MULTIPLE_MISCONFIGURED" : There were multiple MISCONFIGURED_* system
  /// statuses for this bid strategy during the time in question.
  /// - "MULTIPLE" : There were multiple system statuses for this bid strategy
  /// during the time in question.
  core.String? biddingStrategySystemStatus;

  /// The type of bidding strategy.
  ///
  /// A bidding strategy can be created by setting either the bidding scheme to
  /// create a standard bidding strategy or the `bidding_strategy` field to
  /// create a portfolio bidding strategy. This field is read-only.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "COMMISSION" : Commission is an automatic bidding strategy in which the
  /// advertiser pays a certain portion of the conversion value.
  /// - "ENHANCED_CPC" : Enhanced CPC is a bidding strategy that raises bids for
  /// clicks that seem more likely to lead to a conversion and lowers them for
  /// clicks where they seem less likely.
  /// - "INVALID" : Used for return value only. Indicates that a campaign does
  /// not have a bidding strategy. This prevents the campaign from serving. For
  /// example, a campaign may be attached to a manager bidding strategy and the
  /// serving account is subsequently unlinked from the manager account. In this
  /// case the campaign will automatically be detached from the now inaccessible
  /// manager bidding strategy and transition to the INVALID bidding strategy
  /// type.
  /// - "MANUAL_CPA" : Manual bidding strategy that allows advertiser to set the
  /// bid per advertiser-specified action.
  /// - "MANUAL_CPC" : Manual click based bidding where user pays per click.
  /// - "MANUAL_CPM" : Manual impression based bidding where user pays per
  /// thousand impressions.
  /// - "MANUAL_CPV" : A bidding strategy that pays a configurable amount per
  /// video view.
  /// - "MAXIMIZE_CONVERSIONS" : A bidding strategy that automatically maximizes
  /// number of conversions given a daily budget.
  /// - "MAXIMIZE_CONVERSION_VALUE" : An automated bidding strategy that
  /// automatically sets bids to maximize revenue while spending your budget.
  /// - "PAGE_ONE_PROMOTED" : Page-One Promoted bidding scheme, which sets max
  /// cpc bids to target impressions on page one or page one promoted slots on
  /// google.com. This enum value is deprecated.
  /// - "PERCENT_CPC" : Percent Cpc is bidding strategy where bids are a
  /// fraction of the advertised price for some good or service.
  /// - "TARGET_CPA" : Target CPA is an automated bid strategy that sets bids to
  /// help get as many conversions as possible at the target
  /// cost-per-acquisition (CPA) you set.
  /// - "TARGET_CPM" : Target CPM is an automated bid strategy that sets bids to
  /// help get as many impressions as possible at the target cost per one
  /// thousand impressions (CPM) you set.
  /// - "TARGET_IMPRESSION_SHARE" : An automated bidding strategy that sets bids
  /// so that a certain percentage of search ads are shown at the top of the
  /// first page (or other targeted location).
  /// - "TARGET_OUTRANK_SHARE" : Target Outrank Share is an automated bidding
  /// strategy that sets bids based on the target fraction of auctions where the
  /// advertiser should outrank a specific competitor. This enum value is
  /// deprecated.
  /// - "TARGET_ROAS" : Target ROAS is an automated bidding strategy that helps
  /// you maximize revenue while averaging a specific target Return On Average
  /// Spend (ROAS).
  /// - "TARGET_SPEND" : Target Spend is an automated bid strategy that sets
  /// your bids to help get as many clicks as possible within your budget.
  core.String? biddingStrategyType;

  /// The budget of the campaign.
  core.String? campaignBudget;

  /// Timestamp of the campaign's creation time, formatted in ISO 8601.
  ///
  /// Output only.
  core.String? createTime;

  /// The setting for controlling Dynamic Search Ads (DSA).
  GoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting?
      dynamicSearchAdsSetting;

  /// The last day of the campaign in serving customer's timezone in YYYY-MM-DD
  /// format.
  ///
  /// On create, defaults to 2037-12-30, which means the campaign will run
  /// indefinitely. To set an existing campaign to run indefinitely, set this
  /// field to 2037-12-30.
  core.String? endDate;

  /// ID of the campaign in the external engine account.
  ///
  /// This field is for non-Google Ads account only, for example, Yahoo Japan,
  /// Microsoft, Baidu etc. For Google Ads entity, use "campaign.id" instead.
  ///
  /// Output only.
  core.String? engineId;

  /// The asset field types that should be excluded from this campaign.
  ///
  /// Asset links with these field types will not be inherited by this campaign
  /// from the upper level.
  core.List<core.String>? excludedParentAssetFieldTypes;

  /// Suffix used to append query parameters to landing pages that are served
  /// with parallel tracking.
  core.String? finalUrlSuffix;

  /// A list that limits how often each user will see this campaign's ads.
  core.List<GoogleAdsSearchads360V0CommonFrequencyCapEntry>? frequencyCaps;

  /// The setting for ads geotargeting.
  GoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting?
      geoTargetTypeSetting;

  /// The ID of the campaign.
  ///
  /// Output only.
  core.String? id;

  /// The resource names of labels attached to this campaign.
  ///
  /// Output only.
  core.List<core.String>? labels;

  /// The datetime when this campaign was last modified.
  ///
  /// The datetime is in the customer's time zone and in "yyyy-MM-dd
  /// HH:mm:ss.ssssss" format.
  ///
  /// Output only.
  core.String? lastModifiedTime;

  /// Standard Manual CPA bidding strategy.
  ///
  /// Manual bidding strategy that allows advertiser to set the bid per
  /// advertiser-specified action. Supported only for Local Services campaigns.
  GoogleAdsSearchads360V0CommonManualCpa? manualCpa;

  /// Standard Manual CPC bidding strategy.
  ///
  /// Manual click-based bidding where user pays per click.
  GoogleAdsSearchads360V0CommonManualCpc? manualCpc;

  /// Standard Manual CPM bidding strategy.
  ///
  /// Manual impression-based bidding where user pays per thousand impressions.
  GoogleAdsSearchads360V0CommonManualCpm? manualCpm;

  /// Standard Maximize Conversion Value bidding strategy that automatically
  /// sets bids to maximize revenue while spending your budget.
  GoogleAdsSearchads360V0CommonMaximizeConversionValue? maximizeConversionValue;

  /// Standard Maximize Conversions bidding strategy that automatically
  /// maximizes number of conversions while spending your budget.
  GoogleAdsSearchads360V0CommonMaximizeConversions? maximizeConversions;

  /// The name of the campaign.
  ///
  /// This field is required and should not be empty when creating new
  /// campaigns. It must not contain any null (code point 0x0), NL line feed
  /// (code point 0xA) or carriage return (code point 0xD) characters.
  core.String? name;

  /// The network settings for the campaign.
  GoogleAdsSearchads360V0ResourcesCampaignNetworkSettings? networkSettings;

  /// Optimization goal setting for this campaign, which includes a set of
  /// optimization goal types.
  GoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting?
      optimizationGoalSetting;

  /// Standard Percent Cpc bidding strategy where bids are a fraction of the
  /// advertised price for some good or service.
  GoogleAdsSearchads360V0CommonPercentCpc? percentCpc;

  /// Settings for Real-Time Bidding, a feature only available for campaigns
  /// targeting the Ad Exchange network.
  GoogleAdsSearchads360V0CommonRealTimeBiddingSetting? realTimeBiddingSetting;

  /// The resource name of the campaign.
  ///
  /// Campaign resource names have the form:
  /// `customers/{customer_id}/campaigns/{campaign_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// Selective optimization setting for this campaign, which includes a set of
  /// conversion actions to optimize this campaign towards.
  GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization?
      selectiveOptimization;

  /// The ad serving status of the campaign.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : No value has been specified.
  /// - "UNKNOWN" : The received value is not known in this version. This is a
  /// response-only value.
  /// - "SERVING" : Serving.
  /// - "NONE" : None.
  /// - "ENDED" : Ended.
  /// - "PENDING" : Pending.
  /// - "SUSPENDED" : Suspended.
  core.String? servingStatus;

  /// The setting for controlling Shopping campaigns.
  GoogleAdsSearchads360V0ResourcesCampaignShoppingSetting? shoppingSetting;

  /// The date when campaign started in serving customer's timezone in
  /// YYYY-MM-DD format.
  core.String? startDate;

  /// The status of the campaign.
  ///
  /// When a new campaign is added, the status defaults to ENABLED.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "ENABLED" : Campaign is active and can show ads.
  /// - "PAUSED" : Campaign has been paused by the user.
  /// - "REMOVED" : Campaign has been removed.
  core.String? status;

  /// Standard Target CPA bidding strategy that automatically sets bids to help
  /// get as many conversions as possible at the target cost-per-acquisition
  /// (CPA) you set.
  GoogleAdsSearchads360V0CommonTargetCpa? targetCpa;

  /// A bidding strategy that automatically optimizes cost per thousand
  /// impressions.
  GoogleAdsSearchads360V0CommonTargetCpm? targetCpm;

  /// Target Impression Share bidding strategy.
  ///
  /// An automated bidding strategy that sets bids to achieve a chosen
  /// percentage of impressions.
  GoogleAdsSearchads360V0CommonTargetImpressionShare? targetImpressionShare;

  /// Standard Target ROAS bidding strategy that automatically maximizes revenue
  /// while averaging a specific target return on ad spend (ROAS).
  GoogleAdsSearchads360V0CommonTargetRoas? targetRoas;

  /// Standard Target Spend bidding strategy that automatically sets your bids
  /// to help get as many clicks as possible within your budget.
  GoogleAdsSearchads360V0CommonTargetSpend? targetSpend;

  /// Campaign-level settings for tracking information.
  ///
  /// Output only.
  GoogleAdsSearchads360V0ResourcesCampaignTrackingSetting? trackingSetting;

  /// The URL template for constructing a tracking URL.
  core.String? trackingUrlTemplate;

  /// The list of mappings used to substitute custom parameter tags in a
  /// `tracking_url_template`, `final_urls`, or `mobile_final_urls`.
  core.List<GoogleAdsSearchads360V0CommonCustomParameter>? urlCustomParameters;

  /// Represents opting out of URL expansion to more targeted URLs.
  ///
  /// If opted out (true), only the final URLs in the asset group or URLs
  /// specified in the advertiser's Google Merchant Center or business data
  /// feeds are targeted. If opted in (false), the entire domain will be
  /// targeted. This field can only be set for Performance Max campaigns, where
  /// the default value is false.
  core.bool? urlExpansionOptOut;

  GoogleAdsSearchads360V0ResourcesCampaign({
    this.adServingOptimizationStatus,
    this.advertisingChannelSubType,
    this.advertisingChannelType,
    this.biddingStrategy,
    this.biddingStrategySystemStatus,
    this.biddingStrategyType,
    this.campaignBudget,
    this.createTime,
    this.dynamicSearchAdsSetting,
    this.endDate,
    this.engineId,
    this.excludedParentAssetFieldTypes,
    this.finalUrlSuffix,
    this.frequencyCaps,
    this.geoTargetTypeSetting,
    this.id,
    this.labels,
    this.lastModifiedTime,
    this.manualCpa,
    this.manualCpc,
    this.manualCpm,
    this.maximizeConversionValue,
    this.maximizeConversions,
    this.name,
    this.networkSettings,
    this.optimizationGoalSetting,
    this.percentCpc,
    this.realTimeBiddingSetting,
    this.resourceName,
    this.selectiveOptimization,
    this.servingStatus,
    this.shoppingSetting,
    this.startDate,
    this.status,
    this.targetCpa,
    this.targetCpm,
    this.targetImpressionShare,
    this.targetRoas,
    this.targetSpend,
    this.trackingSetting,
    this.trackingUrlTemplate,
    this.urlCustomParameters,
    this.urlExpansionOptOut,
  });

  GoogleAdsSearchads360V0ResourcesCampaign.fromJson(core.Map json_)
      : this(
          adServingOptimizationStatus:
              json_.containsKey('adServingOptimizationStatus')
                  ? json_['adServingOptimizationStatus'] as core.String
                  : null,
          advertisingChannelSubType:
              json_.containsKey('advertisingChannelSubType')
                  ? json_['advertisingChannelSubType'] as core.String
                  : null,
          advertisingChannelType: json_.containsKey('advertisingChannelType')
              ? json_['advertisingChannelType'] as core.String
              : null,
          biddingStrategy: json_.containsKey('biddingStrategy')
              ? json_['biddingStrategy'] as core.String
              : null,
          biddingStrategySystemStatus:
              json_.containsKey('biddingStrategySystemStatus')
                  ? json_['biddingStrategySystemStatus'] as core.String
                  : null,
          biddingStrategyType: json_.containsKey('biddingStrategyType')
              ? json_['biddingStrategyType'] as core.String
              : null,
          campaignBudget: json_.containsKey('campaignBudget')
              ? json_['campaignBudget'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          dynamicSearchAdsSetting: json_.containsKey('dynamicSearchAdsSetting')
              ? GoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting
                  .fromJson(json_['dynamicSearchAdsSetting']
                      as core.Map<core.String, core.dynamic>)
              : null,
          endDate: json_.containsKey('endDate')
              ? json_['endDate'] as core.String
              : null,
          engineId: json_.containsKey('engineId')
              ? json_['engineId'] as core.String
              : null,
          excludedParentAssetFieldTypes:
              json_.containsKey('excludedParentAssetFieldTypes')
                  ? (json_['excludedParentAssetFieldTypes'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          finalUrlSuffix: json_.containsKey('finalUrlSuffix')
              ? json_['finalUrlSuffix'] as core.String
              : null,
          frequencyCaps: json_.containsKey('frequencyCaps')
              ? (json_['frequencyCaps'] as core.List)
                  .map((value) =>
                      GoogleAdsSearchads360V0CommonFrequencyCapEntry.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          geoTargetTypeSetting: json_.containsKey('geoTargetTypeSetting')
              ? GoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting
                  .fromJson(json_['geoTargetTypeSetting']
                      as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          lastModifiedTime: json_.containsKey('lastModifiedTime')
              ? json_['lastModifiedTime'] as core.String
              : null,
          manualCpa: json_.containsKey('manualCpa')
              ? GoogleAdsSearchads360V0CommonManualCpa.fromJson(
                  json_['manualCpa'] as core.Map<core.String, core.dynamic>)
              : null,
          manualCpc: json_.containsKey('manualCpc')
              ? GoogleAdsSearchads360V0CommonManualCpc.fromJson(
                  json_['manualCpc'] as core.Map<core.String, core.dynamic>)
              : null,
          manualCpm: json_.containsKey('manualCpm')
              ? GoogleAdsSearchads360V0CommonManualCpm.fromJson(
                  json_['manualCpm'] as core.Map<core.String, core.dynamic>)
              : null,
          maximizeConversionValue: json_.containsKey('maximizeConversionValue')
              ? GoogleAdsSearchads360V0CommonMaximizeConversionValue.fromJson(
                  json_['maximizeConversionValue']
                      as core.Map<core.String, core.dynamic>)
              : null,
          maximizeConversions: json_.containsKey('maximizeConversions')
              ? GoogleAdsSearchads360V0CommonMaximizeConversions.fromJson(
                  json_['maximizeConversions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          networkSettings: json_.containsKey('networkSettings')
              ? GoogleAdsSearchads360V0ResourcesCampaignNetworkSettings
                  .fromJson(json_['networkSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          optimizationGoalSetting: json_.containsKey('optimizationGoalSetting')
              ? GoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting
                  .fromJson(json_['optimizationGoalSetting']
                      as core.Map<core.String, core.dynamic>)
              : null,
          percentCpc: json_.containsKey('percentCpc')
              ? GoogleAdsSearchads360V0CommonPercentCpc.fromJson(
                  json_['percentCpc'] as core.Map<core.String, core.dynamic>)
              : null,
          realTimeBiddingSetting: json_.containsKey('realTimeBiddingSetting')
              ? GoogleAdsSearchads360V0CommonRealTimeBiddingSetting.fromJson(
                  json_['realTimeBiddingSetting']
                      as core.Map<core.String, core.dynamic>)
              : null,
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
          selectiveOptimization: json_.containsKey('selectiveOptimization')
              ? GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization
                  .fromJson(json_['selectiveOptimization']
                      as core.Map<core.String, core.dynamic>)
              : null,
          servingStatus: json_.containsKey('servingStatus')
              ? json_['servingStatus'] as core.String
              : null,
          shoppingSetting: json_.containsKey('shoppingSetting')
              ? GoogleAdsSearchads360V0ResourcesCampaignShoppingSetting
                  .fromJson(json_['shoppingSetting']
                      as core.Map<core.String, core.dynamic>)
              : null,
          startDate: json_.containsKey('startDate')
              ? json_['startDate'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          targetCpa: json_.containsKey('targetCpa')
              ? GoogleAdsSearchads360V0CommonTargetCpa.fromJson(
                  json_['targetCpa'] as core.Map<core.String, core.dynamic>)
              : null,
          targetCpm: json_.containsKey('targetCpm')
              ? GoogleAdsSearchads360V0CommonTargetCpm.fromJson(
                  json_['targetCpm'] as core.Map<core.String, core.dynamic>)
              : null,
          targetImpressionShare: json_.containsKey('targetImpressionShare')
              ? GoogleAdsSearchads360V0CommonTargetImpressionShare.fromJson(
                  json_['targetImpressionShare']
                      as core.Map<core.String, core.dynamic>)
              : null,
          targetRoas: json_.containsKey('targetRoas')
              ? GoogleAdsSearchads360V0CommonTargetRoas.fromJson(
                  json_['targetRoas'] as core.Map<core.String, core.dynamic>)
              : null,
          targetSpend: json_.containsKey('targetSpend')
              ? GoogleAdsSearchads360V0CommonTargetSpend.fromJson(
                  json_['targetSpend'] as core.Map<core.String, core.dynamic>)
              : null,
          trackingSetting: json_.containsKey('trackingSetting')
              ? GoogleAdsSearchads360V0ResourcesCampaignTrackingSetting
                  .fromJson(json_['trackingSetting']
                      as core.Map<core.String, core.dynamic>)
              : null,
          trackingUrlTemplate: json_.containsKey('trackingUrlTemplate')
              ? json_['trackingUrlTemplate'] as core.String
              : null,
          urlCustomParameters: json_.containsKey('urlCustomParameters')
              ? (json_['urlCustomParameters'] as core.List)
                  .map((value) =>
                      GoogleAdsSearchads360V0CommonCustomParameter.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          urlExpansionOptOut: json_.containsKey('urlExpansionOptOut')
              ? json_['urlExpansionOptOut'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adServingOptimizationStatus != null)
          'adServingOptimizationStatus': adServingOptimizationStatus!,
        if (advertisingChannelSubType != null)
          'advertisingChannelSubType': advertisingChannelSubType!,
        if (advertisingChannelType != null)
          'advertisingChannelType': advertisingChannelType!,
        if (biddingStrategy != null) 'biddingStrategy': biddingStrategy!,
        if (biddingStrategySystemStatus != null)
          'biddingStrategySystemStatus': biddingStrategySystemStatus!,
        if (biddingStrategyType != null)
          'biddingStrategyType': biddingStrategyType!,
        if (campaignBudget != null) 'campaignBudget': campaignBudget!,
        if (createTime != null) 'createTime': createTime!,
        if (dynamicSearchAdsSetting != null)
          'dynamicSearchAdsSetting': dynamicSearchAdsSetting!,
        if (endDate != null) 'endDate': endDate!,
        if (engineId != null) 'engineId': engineId!,
        if (excludedParentAssetFieldTypes != null)
          'excludedParentAssetFieldTypes': excludedParentAssetFieldTypes!,
        if (finalUrlSuffix != null) 'finalUrlSuffix': finalUrlSuffix!,
        if (frequencyCaps != null) 'frequencyCaps': frequencyCaps!,
        if (geoTargetTypeSetting != null)
          'geoTargetTypeSetting': geoTargetTypeSetting!,
        if (id != null) 'id': id!,
        if (labels != null) 'labels': labels!,
        if (lastModifiedTime != null) 'lastModifiedTime': lastModifiedTime!,
        if (manualCpa != null) 'manualCpa': manualCpa!,
        if (manualCpc != null) 'manualCpc': manualCpc!,
        if (manualCpm != null) 'manualCpm': manualCpm!,
        if (maximizeConversionValue != null)
          'maximizeConversionValue': maximizeConversionValue!,
        if (maximizeConversions != null)
          'maximizeConversions': maximizeConversions!,
        if (name != null) 'name': name!,
        if (networkSettings != null) 'networkSettings': networkSettings!,
        if (optimizationGoalSetting != null)
          'optimizationGoalSetting': optimizationGoalSetting!,
        if (percentCpc != null) 'percentCpc': percentCpc!,
        if (realTimeBiddingSetting != null)
          'realTimeBiddingSetting': realTimeBiddingSetting!,
        if (resourceName != null) 'resourceName': resourceName!,
        if (selectiveOptimization != null)
          'selectiveOptimization': selectiveOptimization!,
        if (servingStatus != null) 'servingStatus': servingStatus!,
        if (shoppingSetting != null) 'shoppingSetting': shoppingSetting!,
        if (startDate != null) 'startDate': startDate!,
        if (status != null) 'status': status!,
        if (targetCpa != null) 'targetCpa': targetCpa!,
        if (targetCpm != null) 'targetCpm': targetCpm!,
        if (targetImpressionShare != null)
          'targetImpressionShare': targetImpressionShare!,
        if (targetRoas != null) 'targetRoas': targetRoas!,
        if (targetSpend != null) 'targetSpend': targetSpend!,
        if (trackingSetting != null) 'trackingSetting': trackingSetting!,
        if (trackingUrlTemplate != null)
          'trackingUrlTemplate': trackingUrlTemplate!,
        if (urlCustomParameters != null)
          'urlCustomParameters': urlCustomParameters!,
        if (urlExpansionOptOut != null)
          'urlExpansionOptOut': urlExpansionOptOut!,
      };
}

/// A campaign budget.
class GoogleAdsSearchads360V0ResourcesCampaignBudget {
  /// The amount of the budget, in the local currency for the account.
  ///
  /// Amount is specified in micros, where one million is equivalent to one
  /// currency unit. Monthly spend is capped at 30.4 times this amount.
  core.String? amountMicros;

  /// The delivery method that determines the rate at which the campaign budget
  /// is spent.
  ///
  /// Defaults to STANDARD if unspecified in a create operation.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "STANDARD" : The budget server will throttle serving evenly across the
  /// entire time period.
  /// - "ACCELERATED" : The budget server will not throttle serving, and ads
  /// will serve as fast as possible.
  core.String? deliveryMethod;

  /// Period over which to spend the budget.
  ///
  /// Defaults to DAILY if not specified.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "DAILY" : Daily budget.
  /// - "FIXED_DAILY" : Fixed daily budget.
  /// - "CUSTOM_PERIOD" : Custom budget, added back in V5. Custom bugdet can be
  /// used with total_amount to specify lifetime budget limit.
  core.String? period;

  /// The resource name of the campaign budget.
  ///
  /// Campaign budget resource names have the form:
  /// `customers/{customer_id}/campaignBudgets/{campaign_budget_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesCampaignBudget({
    this.amountMicros,
    this.deliveryMethod,
    this.period,
    this.resourceName,
  });

  GoogleAdsSearchads360V0ResourcesCampaignBudget.fromJson(core.Map json_)
      : this(
          amountMicros: json_.containsKey('amountMicros')
              ? json_['amountMicros'] as core.String
              : null,
          deliveryMethod: json_.containsKey('deliveryMethod')
              ? json_['deliveryMethod'] as core.String
              : null,
          period: json_.containsKey('period')
              ? json_['period'] as core.String
              : null,
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (amountMicros != null) 'amountMicros': amountMicros!,
        if (deliveryMethod != null) 'deliveryMethod': deliveryMethod!,
        if (period != null) 'period': period!,
        if (resourceName != null) 'resourceName': resourceName!,
      };
}

/// A campaign criterion.
class GoogleAdsSearchads360V0ResourcesCampaignCriterion {
  /// The modifier for the bids when the criterion matches.
  ///
  /// The modifier must be in the range: 0.1 - 10.0. Most targetable criteria
  /// types support modifiers. Use 0 to opt out of a Device type.
  core.double? bidModifier;

  /// The ID of the criterion.
  ///
  /// This field is ignored during mutate.
  ///
  /// Output only.
  core.String? criterionId;

  /// Device.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonDeviceInfo? device;

  /// The display name of the criterion.
  ///
  /// This field is ignored for mutates.
  ///
  /// Output only.
  core.String? displayName;

  /// Language.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonLanguageInfo? language;

  /// Location.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonLocationInfo? location;

  /// Location Group
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonLocationGroupInfo? locationGroup;

  /// Whether to target (`false`) or exclude (`true`) the criterion.
  ///
  /// Immutable.
  core.bool? negative;

  /// The resource name of the campaign criterion.
  ///
  /// Campaign criterion resource names have the form:
  /// `customers/{customer_id}/campaignCriteria/{campaign_id}~{criterion_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// The type of the criterion.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "KEYWORD" : Keyword, for example, 'mars cruise'.
  /// - "PLACEMENT" : Placement, also known as Website, for example,
  /// 'www.flowers4sale.com'
  /// - "MOBILE_APP_CATEGORY" : Mobile application categories to target.
  /// - "MOBILE_APPLICATION" : Mobile applications to target.
  /// - "DEVICE" : Devices to target.
  /// - "LOCATION" : Locations to target.
  /// - "LISTING_GROUP" : Listing groups to target.
  /// - "AD_SCHEDULE" : Ad Schedule.
  /// - "AGE_RANGE" : Age range.
  /// - "GENDER" : Gender.
  /// - "INCOME_RANGE" : Income Range.
  /// - "PARENTAL_STATUS" : Parental status.
  /// - "YOUTUBE_VIDEO" : YouTube Video.
  /// - "YOUTUBE_CHANNEL" : YouTube Channel.
  /// - "USER_LIST" : User list.
  /// - "PROXIMITY" : Proximity.
  /// - "TOPIC" : A topic target on the display network (for example, "Pets &
  /// Animals").
  /// - "LISTING_SCOPE" : Listing scope to target.
  /// - "LANGUAGE" : Language.
  /// - "IP_BLOCK" : IpBlock.
  /// - "CONTENT_LABEL" : Content Label for category exclusion.
  /// - "CARRIER" : Carrier.
  /// - "USER_INTEREST" : A category the user is interested in.
  /// - "WEBPAGE" : Webpage criterion for dynamic search ads.
  /// - "OPERATING_SYSTEM_VERSION" : Operating system version.
  /// - "APP_PAYMENT_MODEL" : App payment model.
  /// - "MOBILE_DEVICE" : Mobile device.
  /// - "CUSTOM_AFFINITY" : Custom affinity.
  /// - "CUSTOM_INTENT" : Custom intent.
  /// - "LOCATION_GROUP" : Location group.
  /// - "CUSTOM_AUDIENCE" : Custom audience
  /// - "COMBINED_AUDIENCE" : Combined audience
  /// - "KEYWORD_THEME" : Smart Campaign keyword theme
  /// - "AUDIENCE" : Audience
  /// - "LOCAL_SERVICE_ID" : Google Local Services (GLS) Service ID.
  core.String? type;

  GoogleAdsSearchads360V0ResourcesCampaignCriterion({
    this.bidModifier,
    this.criterionId,
    this.device,
    this.displayName,
    this.language,
    this.location,
    this.locationGroup,
    this.negative,
    this.resourceName,
    this.type,
  });

  GoogleAdsSearchads360V0ResourcesCampaignCriterion.fromJson(core.Map json_)
      : this(
          bidModifier: json_.containsKey('bidModifier')
              ? (json_['bidModifier'] as core.num).toDouble()
              : null,
          criterionId: json_.containsKey('criterionId')
              ? json_['criterionId'] as core.String
              : null,
          device: json_.containsKey('device')
              ? GoogleAdsSearchads360V0CommonDeviceInfo.fromJson(
                  json_['device'] as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          language: json_.containsKey('language')
              ? GoogleAdsSearchads360V0CommonLanguageInfo.fromJson(
                  json_['language'] as core.Map<core.String, core.dynamic>)
              : null,
          location: json_.containsKey('location')
              ? GoogleAdsSearchads360V0CommonLocationInfo.fromJson(
                  json_['location'] as core.Map<core.String, core.dynamic>)
              : null,
          locationGroup: json_.containsKey('locationGroup')
              ? GoogleAdsSearchads360V0CommonLocationGroupInfo.fromJson(
                  json_['locationGroup'] as core.Map<core.String, core.dynamic>)
              : null,
          negative: json_.containsKey('negative')
              ? json_['negative'] as core.bool
              : null,
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bidModifier != null) 'bidModifier': bidModifier!,
        if (criterionId != null) 'criterionId': criterionId!,
        if (device != null) 'device': device!,
        if (displayName != null) 'displayName': displayName!,
        if (language != null) 'language': language!,
        if (location != null) 'location': location!,
        if (locationGroup != null) 'locationGroup': locationGroup!,
        if (negative != null) 'negative': negative!,
        if (resourceName != null) 'resourceName': resourceName!,
        if (type != null) 'type': type!,
      };
}

/// A conversion action.
class GoogleAdsSearchads360V0ResourcesConversionAction {
  /// App ID for an app conversion action.
  core.String? appId;

  /// Settings related to this conversion action's attribution model.
  GoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings?
      attributionModelSettings;

  /// The category of conversions reported for this conversion action.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "DEFAULT" : Default category.
  /// - "PAGE_VIEW" : User visiting a page.
  /// - "PURCHASE" : Purchase, sales, or "order placed" event.
  /// - "SIGNUP" : Signup user action.
  /// - "LEAD" : Lead-generating action.
  /// - "DOWNLOAD" : Software download action (as for an app).
  /// - "ADD_TO_CART" : The addition of items to a shopping cart or bag on an
  /// advertiser site.
  /// - "BEGIN_CHECKOUT" : When someone enters the checkout flow on an
  /// advertiser site.
  /// - "SUBSCRIBE_PAID" : The start of a paid subscription for a product or
  /// service.
  /// - "PHONE_CALL_LEAD" : A call to indicate interest in an advertiser's
  /// offering.
  /// - "IMPORTED_LEAD" : A lead conversion imported from an external source
  /// into Google Ads.
  /// - "SUBMIT_LEAD_FORM" : A submission of a form on an advertiser site
  /// indicating business interest.
  /// - "BOOK_APPOINTMENT" : A booking of an appointment with an advertiser's
  /// business.
  /// - "REQUEST_QUOTE" : A quote or price estimate request.
  /// - "GET_DIRECTIONS" : A search for an advertiser's business location with
  /// intention to visit.
  /// - "OUTBOUND_CLICK" : A click to an advertiser's partner's site.
  /// - "CONTACT" : A call, SMS, email, chat or other type of contact to an
  /// advertiser.
  /// - "ENGAGEMENT" : A website engagement event such as long site time or a
  /// Google Analytics (GA) Smart Goal. Intended to be used for GA, Firebase, GA
  /// Gold goal imports.
  /// - "STORE_VISIT" : A visit to a physical store location.
  /// - "STORE_SALE" : A sale occurring in a physical store.
  /// - "QUALIFIED_LEAD" : A lead conversion imported from an external source
  /// into Google Ads, that has been further qualified by the advertiser
  /// (marketing/sales team). In the lead-to-sale journey, advertisers get
  /// leads, then act on them by reaching out to the consumer. If the consumer
  /// is interested and may end up buying their product, the advertiser marks
  /// such leads as "qualified leads".
  /// - "CONVERTED_LEAD" : A lead conversion imported from an external source
  /// into Google Ads, that has further completed a chosen stage as defined by
  /// the lead gen advertiser.
  core.String? category;

  /// The maximum number of days that may elapse between an interaction (for
  /// example, a click) and a conversion event.
  core.String? clickThroughLookbackWindowDays;

  /// Timestamp of the Floodlight activity's creation, formatted in ISO 8601.
  ///
  /// Output only.
  core.String? creationTime;

  /// Floodlight settings for Floodlight conversion types.
  ///
  /// Output only.
  GoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings?
      floodlightSettings;

  /// The ID of the conversion action.
  ///
  /// Output only.
  core.String? id;

  /// Whether this conversion action should be included in the
  /// "client_account_conversions" metric.
  core.bool? includeInClientAccountConversionsMetric;

  /// Whether this conversion action should be included in the "conversions"
  /// metric.
  ///
  /// Output only.
  core.bool? includeInConversionsMetric;

  /// The name of the conversion action.
  ///
  /// This field is required and should not be empty when creating new
  /// conversion actions.
  core.String? name;

  /// The resource name of the conversion action owner customer, or null if this
  /// is a system-defined conversion action.
  ///
  /// Output only.
  core.String? ownerCustomer;

  /// If a conversion action's primary_for_goal bit is false, the conversion
  /// action is non-biddable for all campaigns regardless of their customer
  /// conversion goal or campaign conversion goal.
  ///
  /// However, custom conversion goals do not respect primary_for_goal, so if a
  /// campaign has a custom conversion goal configured with a primary_for_goal =
  /// false conversion action, that conversion action is still biddable. By
  /// default, primary_for_goal will be true if not set. In V9, primary_for_goal
  /// can only be set to false after creation through an 'update' operation
  /// because it's not declared as optional.
  core.bool? primaryForGoal;

  /// The resource name of the conversion action.
  ///
  /// Conversion action resource names have the form:
  /// `customers/{customer_id}/conversionActions/{conversion_action_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// The status of this conversion action for conversion event accrual.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "ENABLED" : Conversions will be recorded.
  /// - "REMOVED" : Conversions will not be recorded.
  /// - "HIDDEN" : Conversions will not be recorded and the conversion action
  /// will not appear in the UI.
  core.String? status;

  /// The type of this conversion action.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "AD_CALL" : Conversions that occur when a user clicks on an ad's call
  /// extension.
  /// - "CLICK_TO_CALL" : Conversions that occur when a user on a mobile device
  /// clicks a phone number.
  /// - "GOOGLE_PLAY_DOWNLOAD" : Conversions that occur when a user downloads a
  /// mobile app from the Google Play Store.
  /// - "GOOGLE_PLAY_IN_APP_PURCHASE" : Conversions that occur when a user makes
  /// a purchase in an app through Android billing.
  /// - "UPLOAD_CALLS" : Call conversions that are tracked by the advertiser and
  /// uploaded.
  /// - "UPLOAD_CLICKS" : Conversions that are tracked by the advertiser and
  /// uploaded with attributed clicks.
  /// - "WEBPAGE" : Conversions that occur on a webpage.
  /// - "WEBSITE_CALL" : Conversions that occur when a user calls a
  /// dynamically-generated phone number from an advertiser's website.
  /// - "STORE_SALES_DIRECT_UPLOAD" : Store Sales conversion based on
  /// first-party or third-party merchant data uploads. Only customers on the
  /// allowlist can use store sales direct upload types.
  /// - "STORE_SALES" : Store Sales conversion based on first-party or
  /// third-party merchant data uploads and/or from in-store purchases using
  /// cards from payment networks. Only customers on the allowlist can use store
  /// sales types. Read only.
  /// - "FIREBASE_ANDROID_FIRST_OPEN" : Android app first open conversions
  /// tracked through Firebase.
  /// - "FIREBASE_ANDROID_IN_APP_PURCHASE" : Android app in app purchase
  /// conversions tracked through Firebase.
  /// - "FIREBASE_ANDROID_CUSTOM" : Android app custom conversions tracked
  /// through Firebase.
  /// - "FIREBASE_IOS_FIRST_OPEN" : iOS app first open conversions tracked
  /// through Firebase.
  /// - "FIREBASE_IOS_IN_APP_PURCHASE" : iOS app in app purchase conversions
  /// tracked through Firebase.
  /// - "FIREBASE_IOS_CUSTOM" : iOS app custom conversions tracked through
  /// Firebase.
  /// - "THIRD_PARTY_APP_ANALYTICS_ANDROID_FIRST_OPEN" : Android app first open
  /// conversions tracked through Third Party App Analytics.
  /// - "THIRD_PARTY_APP_ANALYTICS_ANDROID_IN_APP_PURCHASE" : Android app in app
  /// purchase conversions tracked through Third Party App Analytics.
  /// - "THIRD_PARTY_APP_ANALYTICS_ANDROID_CUSTOM" : Android app custom
  /// conversions tracked through Third Party App Analytics.
  /// - "THIRD_PARTY_APP_ANALYTICS_IOS_FIRST_OPEN" : iOS app first open
  /// conversions tracked through Third Party App Analytics.
  /// - "THIRD_PARTY_APP_ANALYTICS_IOS_IN_APP_PURCHASE" : iOS app in app
  /// purchase conversions tracked through Third Party App Analytics.
  /// - "THIRD_PARTY_APP_ANALYTICS_IOS_CUSTOM" : iOS app custom conversions
  /// tracked through Third Party App Analytics.
  /// - "ANDROID_APP_PRE_REGISTRATION" : Conversions that occur when a user
  /// pre-registers a mobile app from the Google Play Store. Read only.
  /// - "ANDROID_INSTALLS_ALL_OTHER_APPS" : Conversions that track all Google
  /// Play downloads which aren't tracked by an app-specific type. Read only.
  /// - "FLOODLIGHT_ACTION" : Floodlight activity that counts the number of
  /// times that users have visited a particular webpage after seeing or
  /// clicking on one of an advertiser's ads. Read only.
  /// - "FLOODLIGHT_TRANSACTION" : Floodlight activity that tracks the number of
  /// sales made or the number of items purchased. Can also capture the total
  /// value of each sale. Read only.
  /// - "GOOGLE_HOSTED" : Conversions that track local actions from Google's
  /// products and services after interacting with an ad. Read only.
  /// - "LEAD_FORM_SUBMIT" : Conversions reported when a user submits a lead
  /// form. Read only.
  /// - "SALESFORCE" : Conversions that come from Salesforce. Read only.
  /// - "SEARCH_ADS_360" : Conversions imported from Search Ads 360 Floodlight
  /// data. Read only.
  /// - "SMART_CAMPAIGN_AD_CLICKS_TO_CALL" : Call conversions that occur on
  /// Smart campaign Ads without call tracking setup, using Smart campaign
  /// custom criteria. Read only.
  /// - "SMART_CAMPAIGN_MAP_CLICKS_TO_CALL" : The user clicks on a call element
  /// within Google Maps. Smart campaign only. Read only.
  /// - "SMART_CAMPAIGN_MAP_DIRECTIONS" : The user requests directions to a
  /// business location within Google Maps. Smart campaign only. Read only.
  /// - "SMART_CAMPAIGN_TRACKED_CALLS" : Call conversions that occur on Smart
  /// campaign Ads with call tracking setup, using Smart campaign custom
  /// criteria. Read only.
  /// - "STORE_VISITS" : Conversions that occur when a user visits an
  /// advertiser's retail store. Read only.
  core.String? type;

  /// Settings related to the value for conversion events associated with this
  /// conversion action.
  GoogleAdsSearchads360V0ResourcesConversionActionValueSettings? valueSettings;

  GoogleAdsSearchads360V0ResourcesConversionAction({
    this.appId,
    this.attributionModelSettings,
    this.category,
    this.clickThroughLookbackWindowDays,
    this.creationTime,
    this.floodlightSettings,
    this.id,
    this.includeInClientAccountConversionsMetric,
    this.includeInConversionsMetric,
    this.name,
    this.ownerCustomer,
    this.primaryForGoal,
    this.resourceName,
    this.status,
    this.type,
    this.valueSettings,
  });

  GoogleAdsSearchads360V0ResourcesConversionAction.fromJson(core.Map json_)
      : this(
          appId:
              json_.containsKey('appId') ? json_['appId'] as core.String : null,
          attributionModelSettings: json_
                  .containsKey('attributionModelSettings')
              ? GoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings
                  .fromJson(json_['attributionModelSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          category: json_.containsKey('category')
              ? json_['category'] as core.String
              : null,
          clickThroughLookbackWindowDays:
              json_.containsKey('clickThroughLookbackWindowDays')
                  ? json_['clickThroughLookbackWindowDays'] as core.String
                  : null,
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          floodlightSettings: json_.containsKey('floodlightSettings')
              ? GoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings
                  .fromJson(json_['floodlightSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          includeInClientAccountConversionsMetric: json_
                  .containsKey('includeInClientAccountConversionsMetric')
              ? json_['includeInClientAccountConversionsMetric'] as core.bool
              : null,
          includeInConversionsMetric:
              json_.containsKey('includeInConversionsMetric')
                  ? json_['includeInConversionsMetric'] as core.bool
                  : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          ownerCustomer: json_.containsKey('ownerCustomer')
              ? json_['ownerCustomer'] as core.String
              : null,
          primaryForGoal: json_.containsKey('primaryForGoal')
              ? json_['primaryForGoal'] as core.bool
              : null,
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          valueSettings: json_.containsKey('valueSettings')
              ? GoogleAdsSearchads360V0ResourcesConversionActionValueSettings
                  .fromJson(json_['valueSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appId != null) 'appId': appId!,
        if (attributionModelSettings != null)
          'attributionModelSettings': attributionModelSettings!,
        if (category != null) 'category': category!,
        if (clickThroughLookbackWindowDays != null)
          'clickThroughLookbackWindowDays': clickThroughLookbackWindowDays!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (floodlightSettings != null)
          'floodlightSettings': floodlightSettings!,
        if (id != null) 'id': id!,
        if (includeInClientAccountConversionsMetric != null)
          'includeInClientAccountConversionsMetric':
              includeInClientAccountConversionsMetric!,
        if (includeInConversionsMetric != null)
          'includeInConversionsMetric': includeInConversionsMetric!,
        if (name != null) 'name': name!,
        if (ownerCustomer != null) 'ownerCustomer': ownerCustomer!,
        if (primaryForGoal != null) 'primaryForGoal': primaryForGoal!,
        if (resourceName != null) 'resourceName': resourceName!,
        if (status != null) 'status': status!,
        if (type != null) 'type': type!,
        if (valueSettings != null) 'valueSettings': valueSettings!,
      };
}

/// A collection of customer-wide settings related to Search Ads 360 Conversion
/// Tracking.
class GoogleAdsSearchads360V0ResourcesConversionTrackingSetting {
  /// Whether the customer has accepted customer data terms.
  ///
  /// If using cross-account conversion tracking, this value is inherited from
  /// the manager. This field is read-only. For more information, see
  /// https://support.google.com/adspolicy/answer/7475709.
  ///
  /// Output only.
  core.bool? acceptedCustomerDataTerms;

  /// The conversion tracking id used for this account.
  ///
  /// This id doesn't indicate whether the customer uses conversion tracking
  /// (conversion_tracking_status does). This field is read-only.
  ///
  /// Output only.
  core.String? conversionTrackingId;

  /// Conversion tracking status.
  ///
  /// It indicates whether the customer is using conversion tracking, and who is
  /// the conversion tracking owner of this customer. If this customer is using
  /// cross-account conversion tracking, the value returned will differ based on
  /// the `login-customer-id` of the request.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "NOT_CONVERSION_TRACKED" : Customer does not use any conversion
  /// tracking.
  /// - "CONVERSION_TRACKING_MANAGED_BY_SELF" : The conversion actions are
  /// created and managed by this customer.
  /// - "CONVERSION_TRACKING_MANAGED_BY_THIS_MANAGER" : The conversion actions
  /// are created and managed by the manager specified in the request's
  /// `login-customer-id`.
  /// - "CONVERSION_TRACKING_MANAGED_BY_ANOTHER_MANAGER" : The conversion
  /// actions are created and managed by a manager different from the customer
  /// or manager specified in the request's `login-customer-id`.
  core.String? conversionTrackingStatus;

  /// The conversion tracking id of the customer's manager.
  ///
  /// This is set when the customer is opted into cross-account conversion
  /// tracking, and it overrides conversion_tracking_id.
  ///
  /// Output only.
  core.String? crossAccountConversionTrackingId;

  /// Whether the customer is opted-in for enhanced conversions for leads.
  ///
  /// If using cross-account conversion tracking, this value is inherited from
  /// the manager. This field is read-only.
  ///
  /// Output only.
  core.bool? enhancedConversionsForLeadsEnabled;

  /// The resource name of the customer where conversions are created and
  /// managed.
  ///
  /// This field is read-only.
  ///
  /// Output only.
  core.String? googleAdsConversionCustomer;

  /// The conversion tracking id of the customer's manager.
  ///
  /// This is set when the customer is opted into conversion tracking, and it
  /// overrides conversion_tracking_id. This field can only be managed through
  /// the Google Ads UI. This field is read-only.
  ///
  /// Output only.
  core.String? googleAdsCrossAccountConversionTrackingId;

  GoogleAdsSearchads360V0ResourcesConversionTrackingSetting({
    this.acceptedCustomerDataTerms,
    this.conversionTrackingId,
    this.conversionTrackingStatus,
    this.crossAccountConversionTrackingId,
    this.enhancedConversionsForLeadsEnabled,
    this.googleAdsConversionCustomer,
    this.googleAdsCrossAccountConversionTrackingId,
  });

  GoogleAdsSearchads360V0ResourcesConversionTrackingSetting.fromJson(
      core.Map json_)
      : this(
          acceptedCustomerDataTerms:
              json_.containsKey('acceptedCustomerDataTerms')
                  ? json_['acceptedCustomerDataTerms'] as core.bool
                  : null,
          conversionTrackingId: json_.containsKey('conversionTrackingId')
              ? json_['conversionTrackingId'] as core.String
              : null,
          conversionTrackingStatus:
              json_.containsKey('conversionTrackingStatus')
                  ? json_['conversionTrackingStatus'] as core.String
                  : null,
          crossAccountConversionTrackingId:
              json_.containsKey('crossAccountConversionTrackingId')
                  ? json_['crossAccountConversionTrackingId'] as core.String
                  : null,
          enhancedConversionsForLeadsEnabled:
              json_.containsKey('enhancedConversionsForLeadsEnabled')
                  ? json_['enhancedConversionsForLeadsEnabled'] as core.bool
                  : null,
          googleAdsConversionCustomer:
              json_.containsKey('googleAdsConversionCustomer')
                  ? json_['googleAdsConversionCustomer'] as core.String
                  : null,
          googleAdsCrossAccountConversionTrackingId:
              json_.containsKey('googleAdsCrossAccountConversionTrackingId')
                  ? json_['googleAdsCrossAccountConversionTrackingId']
                      as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acceptedCustomerDataTerms != null)
          'acceptedCustomerDataTerms': acceptedCustomerDataTerms!,
        if (conversionTrackingId != null)
          'conversionTrackingId': conversionTrackingId!,
        if (conversionTrackingStatus != null)
          'conversionTrackingStatus': conversionTrackingStatus!,
        if (crossAccountConversionTrackingId != null)
          'crossAccountConversionTrackingId': crossAccountConversionTrackingId!,
        if (enhancedConversionsForLeadsEnabled != null)
          'enhancedConversionsForLeadsEnabled':
              enhancedConversionsForLeadsEnabled!,
        if (googleAdsConversionCustomer != null)
          'googleAdsConversionCustomer': googleAdsConversionCustomer!,
        if (googleAdsCrossAccountConversionTrackingId != null)
          'googleAdsCrossAccountConversionTrackingId':
              googleAdsCrossAccountConversionTrackingId!,
      };
}

/// A custom column.
///
/// See Search Ads 360 custom column at
/// https://support.google.com/sa360/answer/9633916
class GoogleAdsSearchads360V0ResourcesCustomColumn {
  /// User-defined description of the custom column.
  ///
  /// Output only.
  core.String? description;

  /// ID of the custom column.
  ///
  /// Output only.
  core.String? id;

  /// User-defined name of the custom column.
  ///
  /// Output only.
  core.String? name;

  /// True when the custom column is available to be used in the query of
  /// SearchAds360Service.Search and SearchAds360Service.SearchStream.
  ///
  /// Output only.
  core.bool? queryable;

  /// The list of the referenced system columns of this custom column.
  ///
  /// For example, A custom column "sum of impressions and clicks" has
  /// referenced system columns of {"metrics.clicks", "metrics.impressions"}.
  ///
  /// Output only.
  core.List<core.String>? referencedSystemColumns;

  /// True when the custom column is referring to one or more attributes.
  ///
  /// Output only.
  core.bool? referencesAttributes;

  /// True when the custom column is referring to one or more metrics.
  ///
  /// Output only.
  core.bool? referencesMetrics;

  /// The resource name of the custom column.
  ///
  /// Custom column resource names have the form:
  /// `customers/{customer_id}/customColumns/{custom_column_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// The type of the result value of the custom column.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Unknown.
  /// - "STRING" : The custom column value is a string.
  /// - "INT64" : The custom column value is an int64 number.
  /// - "DOUBLE" : The custom column value is a double number.
  /// - "BOOLEAN" : The custom column value is a boolean.
  core.String? valueType;

  GoogleAdsSearchads360V0ResourcesCustomColumn({
    this.description,
    this.id,
    this.name,
    this.queryable,
    this.referencedSystemColumns,
    this.referencesAttributes,
    this.referencesMetrics,
    this.resourceName,
    this.valueType,
  });

  GoogleAdsSearchads360V0ResourcesCustomColumn.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          queryable: json_.containsKey('queryable')
              ? json_['queryable'] as core.bool
              : null,
          referencedSystemColumns: json_.containsKey('referencedSystemColumns')
              ? (json_['referencedSystemColumns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          referencesAttributes: json_.containsKey('referencesAttributes')
              ? json_['referencesAttributes'] as core.bool
              : null,
          referencesMetrics: json_.containsKey('referencesMetrics')
              ? json_['referencesMetrics'] as core.bool
              : null,
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
          valueType: json_.containsKey('valueType')
              ? json_['valueType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (queryable != null) 'queryable': queryable!,
        if (referencedSystemColumns != null)
          'referencedSystemColumns': referencedSystemColumns!,
        if (referencesAttributes != null)
          'referencesAttributes': referencesAttributes!,
        if (referencesMetrics != null) 'referencesMetrics': referencesMetrics!,
        if (resourceName != null) 'resourceName': resourceName!,
        if (valueType != null) 'valueType': valueType!,
      };
}

/// A customer.
class GoogleAdsSearchads360V0ResourcesCustomer {
  /// Account status, for example, Enabled, Paused, Removed, etc.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Default value.
  /// - "UNKNOWN" : Unknown value.
  /// - "ENABLED" : Account is able to serve ads.
  /// - "PAUSED" : Account is deactivated by the user.
  /// - "SUSPENDED" : Account is deactivated by an internal process.
  /// - "REMOVED" : Account is irrevocably deactivated.
  /// - "DRAFT" : Account is still in the process of setup, not ENABLED yet.
  core.String? accountStatus;

  /// Engine account type, for example, Google Ads, Microsoft Advertising, Yahoo
  /// Japan, Baidu, Facebook, Engine Track, etc.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "BAIDU" : Baidu account.
  /// - "ENGINE_TRACK" : Engine track account.
  /// - "FACEBOOK" : Facebook account.
  /// - "FACEBOOK_GATEWAY" : Facebook account managed through gateway.
  /// - "GOOGLE_ADS" : Google Ads account.
  /// - "MICROSOFT" : Microsoft Advertising account.
  /// - "SEARCH_ADS_360" : Search Ads 360 manager account.
  /// - "YAHOO_JAPAN" : Yahoo Japan account.
  core.String? accountType;

  /// Whether auto-tagging is enabled for the customer.
  core.bool? autoTaggingEnabled;

  /// Conversion tracking setting for a customer.
  ///
  /// Output only.
  GoogleAdsSearchads360V0ResourcesConversionTrackingSetting?
      conversionTrackingSetting;

  /// The currency in which the account operates.
  ///
  /// A subset of the currency codes from the ISO 4217 standard is supported.
  ///
  /// Immutable.
  core.String? currencyCode;

  /// Optional, non-unique descriptive name of the customer.
  core.String? descriptiveName;

  /// DoubleClick Campaign Manager (DCM) setting for a manager customer.
  ///
  /// Output only.
  GoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting?
      doubleClickCampaignManagerSetting;

  /// ID of the account in the external engine account.
  ///
  /// Output only.
  core.String? engineId;

  /// The URL template for appending params to the final URL
  core.String? finalUrlSuffix;

  /// The ID of the customer.
  ///
  /// Output only.
  core.String? id;

  /// The datetime when this customer was last modified.
  ///
  /// The datetime is in the customer's time zone and in "yyyy-MM-dd
  /// HH:mm:ss.ssssss" format.
  ///
  /// Output only.
  core.String? lastModifiedTime;

  /// Whether the customer is a manager.
  ///
  /// Output only.
  core.bool? manager;

  /// The resource name of the customer.
  ///
  /// Customer resource names have the form: `customers/{customer_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// The status of the customer.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "ENABLED" : Indicates an active account able to serve ads.
  /// - "CANCELED" : Indicates a canceled account unable to serve ads. Can be
  /// reactivated by an admin user.
  /// - "SUSPENDED" : Indicates a suspended account unable to serve ads. May
  /// only be activated by Google support.
  /// - "CLOSED" : Indicates a closed account unable to serve ads. Test account
  /// will also have CLOSED status. Status is permanent and may not be reopened.
  core.String? status;

  /// The local timezone ID of the customer.
  ///
  /// Immutable.
  core.String? timeZone;

  /// The URL template for constructing a tracking URL out of parameters.
  core.String? trackingUrlTemplate;

  GoogleAdsSearchads360V0ResourcesCustomer({
    this.accountStatus,
    this.accountType,
    this.autoTaggingEnabled,
    this.conversionTrackingSetting,
    this.currencyCode,
    this.descriptiveName,
    this.doubleClickCampaignManagerSetting,
    this.engineId,
    this.finalUrlSuffix,
    this.id,
    this.lastModifiedTime,
    this.manager,
    this.resourceName,
    this.status,
    this.timeZone,
    this.trackingUrlTemplate,
  });

  GoogleAdsSearchads360V0ResourcesCustomer.fromJson(core.Map json_)
      : this(
          accountStatus: json_.containsKey('accountStatus')
              ? json_['accountStatus'] as core.String
              : null,
          accountType: json_.containsKey('accountType')
              ? json_['accountType'] as core.String
              : null,
          autoTaggingEnabled: json_.containsKey('autoTaggingEnabled')
              ? json_['autoTaggingEnabled'] as core.bool
              : null,
          conversionTrackingSetting:
              json_.containsKey('conversionTrackingSetting')
                  ? GoogleAdsSearchads360V0ResourcesConversionTrackingSetting
                      .fromJson(json_['conversionTrackingSetting']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          currencyCode: json_.containsKey('currencyCode')
              ? json_['currencyCode'] as core.String
              : null,
          descriptiveName: json_.containsKey('descriptiveName')
              ? json_['descriptiveName'] as core.String
              : null,
          doubleClickCampaignManagerSetting: json_
                  .containsKey('doubleClickCampaignManagerSetting')
              ? GoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting
                  .fromJson(json_['doubleClickCampaignManagerSetting']
                      as core.Map<core.String, core.dynamic>)
              : null,
          engineId: json_.containsKey('engineId')
              ? json_['engineId'] as core.String
              : null,
          finalUrlSuffix: json_.containsKey('finalUrlSuffix')
              ? json_['finalUrlSuffix'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          lastModifiedTime: json_.containsKey('lastModifiedTime')
              ? json_['lastModifiedTime'] as core.String
              : null,
          manager: json_.containsKey('manager')
              ? json_['manager'] as core.bool
              : null,
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
          trackingUrlTemplate: json_.containsKey('trackingUrlTemplate')
              ? json_['trackingUrlTemplate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountStatus != null) 'accountStatus': accountStatus!,
        if (accountType != null) 'accountType': accountType!,
        if (autoTaggingEnabled != null)
          'autoTaggingEnabled': autoTaggingEnabled!,
        if (conversionTrackingSetting != null)
          'conversionTrackingSetting': conversionTrackingSetting!,
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (descriptiveName != null) 'descriptiveName': descriptiveName!,
        if (doubleClickCampaignManagerSetting != null)
          'doubleClickCampaignManagerSetting':
              doubleClickCampaignManagerSetting!,
        if (engineId != null) 'engineId': engineId!,
        if (finalUrlSuffix != null) 'finalUrlSuffix': finalUrlSuffix!,
        if (id != null) 'id': id!,
        if (lastModifiedTime != null) 'lastModifiedTime': lastModifiedTime!,
        if (manager != null) 'manager': manager!,
        if (resourceName != null) 'resourceName': resourceName!,
        if (status != null) 'status': status!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (trackingUrlTemplate != null)
          'trackingUrlTemplate': trackingUrlTemplate!,
      };
}

/// A link between the given customer and a client customer.
///
/// CustomerClients only exist for manager customers. All direct and indirect
/// client customers are included, as well as the manager itself.
class GoogleAdsSearchads360V0ResourcesCustomerClient {
  /// The resource names of the labels owned by the requesting customer that are
  /// applied to the client customer.
  ///
  /// Label resource names have the form:
  /// `customers/{customer_id}/labels/{label_id}`
  ///
  /// Output only.
  core.List<core.String>? appliedLabels;

  /// The resource name of the client-customer which is linked to the given
  /// customer.
  ///
  /// Read only.
  ///
  /// Output only.
  core.String? clientCustomer;

  /// Currency code (for example, 'USD', 'EUR') for the client.
  ///
  /// Read only.
  ///
  /// Output only.
  core.String? currencyCode;

  /// Descriptive name for the client.
  ///
  /// Read only.
  ///
  /// Output only.
  core.String? descriptiveName;

  /// Specifies whether this is a hidden account.
  ///
  /// Read only.
  ///
  /// Output only.
  core.bool? hidden;

  /// The ID of the client customer.
  ///
  /// Read only.
  ///
  /// Output only.
  core.String? id;

  /// Distance between given customer and client.
  ///
  /// For self link, the level value will be 0. Read only.
  ///
  /// Output only.
  core.String? level;

  /// Identifies if the client is a manager.
  ///
  /// Read only.
  ///
  /// Output only.
  core.bool? manager;

  /// The resource name of the customer client.
  ///
  /// CustomerClient resource names have the form:
  /// `customers/{customer_id}/customerClients/{client_customer_id}`
  ///
  /// Output only.
  core.String? resourceName;

  /// The status of the client customer.
  ///
  /// Read only.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "ENABLED" : Indicates an active account able to serve ads.
  /// - "CANCELED" : Indicates a canceled account unable to serve ads. Can be
  /// reactivated by an admin user.
  /// - "SUSPENDED" : Indicates a suspended account unable to serve ads. May
  /// only be activated by Google support.
  /// - "CLOSED" : Indicates a closed account unable to serve ads. Test account
  /// will also have CLOSED status. Status is permanent and may not be reopened.
  core.String? status;

  /// Identifies if the client is a test account.
  ///
  /// Read only.
  ///
  /// Output only.
  core.bool? testAccount;

  /// Common Locale Data Repository (CLDR) string representation of the time
  /// zone of the client, for example, America/Los_Angeles.
  ///
  /// Read only.
  ///
  /// Output only.
  core.String? timeZone;

  GoogleAdsSearchads360V0ResourcesCustomerClient({
    this.appliedLabels,
    this.clientCustomer,
    this.currencyCode,
    this.descriptiveName,
    this.hidden,
    this.id,
    this.level,
    this.manager,
    this.resourceName,
    this.status,
    this.testAccount,
    this.timeZone,
  });

  GoogleAdsSearchads360V0ResourcesCustomerClient.fromJson(core.Map json_)
      : this(
          appliedLabels: json_.containsKey('appliedLabels')
              ? (json_['appliedLabels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          clientCustomer: json_.containsKey('clientCustomer')
              ? json_['clientCustomer'] as core.String
              : null,
          currencyCode: json_.containsKey('currencyCode')
              ? json_['currencyCode'] as core.String
              : null,
          descriptiveName: json_.containsKey('descriptiveName')
              ? json_['descriptiveName'] as core.String
              : null,
          hidden:
              json_.containsKey('hidden') ? json_['hidden'] as core.bool : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          level:
              json_.containsKey('level') ? json_['level'] as core.String : null,
          manager: json_.containsKey('manager')
              ? json_['manager'] as core.bool
              : null,
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          testAccount: json_.containsKey('testAccount')
              ? json_['testAccount'] as core.bool
              : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appliedLabels != null) 'appliedLabels': appliedLabels!,
        if (clientCustomer != null) 'clientCustomer': clientCustomer!,
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (descriptiveName != null) 'descriptiveName': descriptiveName!,
        if (hidden != null) 'hidden': hidden!,
        if (id != null) 'id': id!,
        if (level != null) 'level': level!,
        if (manager != null) 'manager': manager!,
        if (resourceName != null) 'resourceName': resourceName!,
        if (status != null) 'status': status!,
        if (testAccount != null) 'testAccount': testAccount!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

/// Represents customer-manager link relationship.
class GoogleAdsSearchads360V0ResourcesCustomerManagerLink {
  /// The manager customer linked to the customer.
  ///
  /// Output only.
  core.String? managerCustomer;

  /// ID of the customer-manager link.
  ///
  /// This field is read only.
  ///
  /// Output only.
  core.String? managerLinkId;

  /// Name of the resource.
  ///
  /// CustomerManagerLink resource names have the form:
  /// `customers/{customer_id}/customerManagerLinks/{manager_customer_id}~{manager_link_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// Status of the link between the customer and the manager.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "ACTIVE" : Indicates current in-effect relationship
  /// - "INACTIVE" : Indicates terminated relationship
  /// - "PENDING" : Indicates relationship has been requested by manager, but
  /// the client hasn't accepted yet.
  /// - "REFUSED" : Relationship was requested by the manager, but the client
  /// has refused.
  /// - "CANCELED" : Indicates relationship has been requested by manager, but
  /// manager canceled it.
  core.String? status;

  GoogleAdsSearchads360V0ResourcesCustomerManagerLink({
    this.managerCustomer,
    this.managerLinkId,
    this.resourceName,
    this.status,
  });

  GoogleAdsSearchads360V0ResourcesCustomerManagerLink.fromJson(core.Map json_)
      : this(
          managerCustomer: json_.containsKey('managerCustomer')
              ? json_['managerCustomer'] as core.String
              : null,
          managerLinkId: json_.containsKey('managerLinkId')
              ? json_['managerLinkId'] as core.String
              : null,
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (managerCustomer != null) 'managerCustomer': managerCustomer!,
        if (managerLinkId != null) 'managerLinkId': managerLinkId!,
        if (resourceName != null) 'resourceName': resourceName!,
        if (status != null) 'status': status!,
      };
}

/// DoubleClick Campaign Manager (DCM) setting for a manager customer.
class GoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting {
  /// ID of the Campaign Manager advertiser associated with this customer.
  ///
  /// Output only.
  core.String? advertiserId;

  /// ID of the Campaign Manager network associated with this customer.
  ///
  /// Output only.
  core.String? networkId;

  /// Time zone of the Campaign Manager network associated with this customer in
  /// IANA Time Zone Database format, such as America/New_York.
  ///
  /// Output only.
  core.String? timeZone;

  GoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting({
    this.advertiserId,
    this.networkId,
    this.timeZone,
  });

  GoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting.fromJson(
      core.Map json_)
      : this(
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          networkId: json_.containsKey('networkId')
              ? json_['networkId'] as core.String
              : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (networkId != null) 'networkId': networkId!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

/// A keyword view.
class GoogleAdsSearchads360V0ResourcesKeywordView {
  /// The resource name of the keyword view.
  ///
  /// Keyword view resource names have the form:
  /// `customers/{customer_id}/keywordViews/{ad_group_id}~{criterion_id}`
  ///
  /// Output only.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesKeywordView({
    this.resourceName,
  });

  GoogleAdsSearchads360V0ResourcesKeywordView.fromJson(core.Map json_)
      : this(
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceName != null) 'resourceName': resourceName!,
      };
}

/// A product group view.
class GoogleAdsSearchads360V0ResourcesProductGroupView {
  /// The resource name of the product group view.
  ///
  /// Product group view resource names have the form:
  /// `customers/{customer_id}/productGroupViews/{ad_group_id}~{criterion_id}`
  ///
  /// Output only.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesProductGroupView({
    this.resourceName,
  });

  GoogleAdsSearchads360V0ResourcesProductGroupView.fromJson(core.Map json_)
      : this(
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceName != null) 'resourceName': resourceName!,
      };
}

/// A field or resource (artifact) used by SearchAds360Service.
class GoogleAdsSearchads360V0ResourcesSearchAds360Field {
  /// The names of all resources that are selectable with the described
  /// artifact.
  ///
  /// Fields from these resources do not segment metrics when included in search
  /// queries. This field is only set for artifacts whose category is RESOURCE.
  ///
  /// Output only.
  core.List<core.String>? attributeResources;

  /// The category of the artifact.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Unspecified
  /// - "UNKNOWN" : Unknown
  /// - "RESOURCE" : The described artifact is a resource.
  /// - "ATTRIBUTE" : The described artifact is a field and is an attribute of a
  /// resource. Including a resource attribute field in a query may segment the
  /// query if the resource to which it is attributed segments the resource
  /// found in the FROM clause.
  /// - "SEGMENT" : The described artifact is a field and always segments search
  /// queries.
  /// - "METRIC" : The described artifact is a field and is a metric. It never
  /// segments search queries.
  core.String? category;

  /// This field determines the operators that can be used with the artifact in
  /// WHERE clauses.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Unspecified
  /// - "UNKNOWN" : Unknown
  /// - "BOOLEAN" : Maps to google.protobuf.BoolValue Applicable operators: =,
  /// !=
  /// - "DATE" : Maps to google.protobuf.StringValue. It can be compared using
  /// the set of operators specific to dates however. Applicable operators: =,
  /// \<, \>, \<=, \>=, BETWEEN, DURING, and IN
  /// - "DOUBLE" : Maps to google.protobuf.DoubleValue Applicable operators: =,
  /// !=, \<, \>, IN, NOT IN
  /// - "ENUM" : Maps to an enum. It's specific definition can be found at
  /// type_url. Applicable operators: =, !=, IN, NOT IN
  /// - "FLOAT" : Maps to google.protobuf.FloatValue Applicable operators: =,
  /// !=, \<, \>, IN, NOT IN
  /// - "INT32" : Maps to google.protobuf.Int32Value Applicable operators: =,
  /// !=, \<, \>, \<=, \>=, BETWEEN, IN, NOT IN
  /// - "INT64" : Maps to google.protobuf.Int64Value Applicable operators: =,
  /// !=, \<, \>, \<=, \>=, BETWEEN, IN, NOT IN
  /// - "MESSAGE" : Maps to a protocol buffer message type. The data type's
  /// details can be found in type_url. No operators work with MESSAGE fields.
  /// - "RESOURCE_NAME" : Maps to google.protobuf.StringValue. Represents the
  /// resource name (unique id) of a resource or one of its foreign keys. No
  /// operators work with RESOURCE_NAME fields.
  /// - "STRING" : Maps to google.protobuf.StringValue. Applicable operators: =,
  /// !=, LIKE, NOT LIKE, IN, NOT IN
  /// - "UINT64" : Maps to google.protobuf.UInt64Value Applicable operators: =,
  /// !=, \<, \>, \<=, \>=, BETWEEN, IN, NOT IN
  core.String? dataType;

  /// Values the artifact can assume if it is a field of type ENUM.
  ///
  /// This field is only set for artifacts of category SEGMENT or ATTRIBUTE.
  ///
  /// Output only.
  core.List<core.String>? enumValues;

  /// Whether the artifact can be used in a WHERE clause in search queries.
  ///
  /// Output only.
  core.bool? filterable;

  /// Whether the field artifact is repeated.
  ///
  /// Output only.
  core.bool? isRepeated;

  /// This field lists the names of all metrics that are selectable with the
  /// described artifact when it is used in the FROM clause.
  ///
  /// It is only set for artifacts whose category is RESOURCE.
  ///
  /// Output only.
  core.List<core.String>? metrics;

  /// The name of the artifact.
  ///
  /// Output only.
  core.String? name;

  /// The resource name of the artifact.
  ///
  /// Artifact resource names have the form: `SearchAds360Fields/{name}`
  ///
  /// Output only.
  core.String? resourceName;

  /// This field lists the names of all artifacts, whether a segment or another
  /// resource, that segment metrics when included in search queries and when
  /// the described artifact is used in the FROM clause.
  ///
  /// It is only set for artifacts whose category is RESOURCE.
  ///
  /// Output only.
  core.List<core.String>? segments;

  /// Whether the artifact can be used in a SELECT clause in search queries.
  ///
  /// Output only.
  core.bool? selectable;

  /// The names of all resources, segments, and metrics that are selectable with
  /// the described artifact.
  ///
  /// Output only.
  core.List<core.String>? selectableWith;

  /// Whether the artifact can be used in a ORDER BY clause in search queries.
  ///
  /// Output only.
  core.bool? sortable;

  /// The URL of proto describing the artifact's data type.
  ///
  /// Output only.
  core.String? typeUrl;

  GoogleAdsSearchads360V0ResourcesSearchAds360Field({
    this.attributeResources,
    this.category,
    this.dataType,
    this.enumValues,
    this.filterable,
    this.isRepeated,
    this.metrics,
    this.name,
    this.resourceName,
    this.segments,
    this.selectable,
    this.selectableWith,
    this.sortable,
    this.typeUrl,
  });

  GoogleAdsSearchads360V0ResourcesSearchAds360Field.fromJson(core.Map json_)
      : this(
          attributeResources: json_.containsKey('attributeResources')
              ? (json_['attributeResources'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          category: json_.containsKey('category')
              ? json_['category'] as core.String
              : null,
          dataType: json_.containsKey('dataType')
              ? json_['dataType'] as core.String
              : null,
          enumValues: json_.containsKey('enumValues')
              ? (json_['enumValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          filterable: json_.containsKey('filterable')
              ? json_['filterable'] as core.bool
              : null,
          isRepeated: json_.containsKey('isRepeated')
              ? json_['isRepeated'] as core.bool
              : null,
          metrics: json_.containsKey('metrics')
              ? (json_['metrics'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
          segments: json_.containsKey('segments')
              ? (json_['segments'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          selectable: json_.containsKey('selectable')
              ? json_['selectable'] as core.bool
              : null,
          selectableWith: json_.containsKey('selectableWith')
              ? (json_['selectableWith'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          sortable: json_.containsKey('sortable')
              ? json_['sortable'] as core.bool
              : null,
          typeUrl: json_.containsKey('typeUrl')
              ? json_['typeUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributeResources != null)
          'attributeResources': attributeResources!,
        if (category != null) 'category': category!,
        if (dataType != null) 'dataType': dataType!,
        if (enumValues != null) 'enumValues': enumValues!,
        if (filterable != null) 'filterable': filterable!,
        if (isRepeated != null) 'isRepeated': isRepeated!,
        if (metrics != null) 'metrics': metrics!,
        if (name != null) 'name': name!,
        if (resourceName != null) 'resourceName': resourceName!,
        if (segments != null) 'segments': segments!,
        if (selectable != null) 'selectable': selectable!,
        if (selectableWith != null) 'selectableWith': selectableWith!,
        if (sortable != null) 'sortable': sortable!,
        if (typeUrl != null) 'typeUrl': typeUrl!,
      };
}

/// Message for custom column header.
class GoogleAdsSearchads360V0ServicesCustomColumnHeader {
  /// The custom column ID.
  core.String? id;

  /// The user defined name of the custom column.
  core.String? name;

  /// True when the custom column references metrics.
  core.bool? referencesMetrics;

  GoogleAdsSearchads360V0ServicesCustomColumnHeader({
    this.id,
    this.name,
    this.referencesMetrics,
  });

  GoogleAdsSearchads360V0ServicesCustomColumnHeader.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          referencesMetrics: json_.containsKey('referencesMetrics')
              ? json_['referencesMetrics'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (referencesMetrics != null) 'referencesMetrics': referencesMetrics!,
      };
}

/// Response message for fetching all custom columns associated with a customer.
class GoogleAdsSearchads360V0ServicesListCustomColumnsResponse {
  /// The CustomColumns owned by the provided customer.
  core.List<GoogleAdsSearchads360V0ResourcesCustomColumn>? customColumns;

  GoogleAdsSearchads360V0ServicesListCustomColumnsResponse({
    this.customColumns,
  });

  GoogleAdsSearchads360V0ServicesListCustomColumnsResponse.fromJson(
      core.Map json_)
      : this(
          customColumns: json_.containsKey('customColumns')
              ? (json_['customColumns'] as core.List)
                  .map((value) =>
                      GoogleAdsSearchads360V0ResourcesCustomColumn.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customColumns != null) 'customColumns': customColumns!,
      };
}

/// A returned row from the query.
class GoogleAdsSearchads360V0ServicesSearchAds360Row {
  /// The ad group referenced in the query.
  GoogleAdsSearchads360V0ResourcesAdGroup? adGroup;

  /// The bid modifier referenced in the query.
  GoogleAdsSearchads360V0ResourcesAdGroupBidModifier? adGroupBidModifier;

  /// The criterion referenced in the query.
  GoogleAdsSearchads360V0ResourcesAdGroupCriterion? adGroupCriterion;

  /// The bidding strategy referenced in the query.
  GoogleAdsSearchads360V0ResourcesBiddingStrategy? biddingStrategy;

  /// The campaign referenced in the query.
  GoogleAdsSearchads360V0ResourcesCampaign? campaign;

  /// The campaign budget referenced in the query.
  GoogleAdsSearchads360V0ResourcesCampaignBudget? campaignBudget;

  /// The campaign criterion referenced in the query.
  GoogleAdsSearchads360V0ResourcesCampaignCriterion? campaignCriterion;

  /// The conversion action referenced in the query.
  GoogleAdsSearchads360V0ResourcesConversionAction? conversionAction;

  /// The custom columns.
  core.List<GoogleAdsSearchads360V0CommonValue>? customColumns;

  /// The customer referenced in the query.
  GoogleAdsSearchads360V0ResourcesCustomer? customer;

  /// The CustomerClient referenced in the query.
  GoogleAdsSearchads360V0ResourcesCustomerClient? customerClient;

  /// The CustomerManagerLink referenced in the query.
  GoogleAdsSearchads360V0ResourcesCustomerManagerLink? customerManagerLink;

  /// The keyword view referenced in the query.
  GoogleAdsSearchads360V0ResourcesKeywordView? keywordView;

  /// The metrics.
  GoogleAdsSearchads360V0CommonMetrics? metrics;

  /// The product group view referenced in the query.
  GoogleAdsSearchads360V0ResourcesProductGroupView? productGroupView;

  /// The segments.
  GoogleAdsSearchads360V0CommonSegments? segments;

  GoogleAdsSearchads360V0ServicesSearchAds360Row({
    this.adGroup,
    this.adGroupBidModifier,
    this.adGroupCriterion,
    this.biddingStrategy,
    this.campaign,
    this.campaignBudget,
    this.campaignCriterion,
    this.conversionAction,
    this.customColumns,
    this.customer,
    this.customerClient,
    this.customerManagerLink,
    this.keywordView,
    this.metrics,
    this.productGroupView,
    this.segments,
  });

  GoogleAdsSearchads360V0ServicesSearchAds360Row.fromJson(core.Map json_)
      : this(
          adGroup: json_.containsKey('adGroup')
              ? GoogleAdsSearchads360V0ResourcesAdGroup.fromJson(
                  json_['adGroup'] as core.Map<core.String, core.dynamic>)
              : null,
          adGroupBidModifier: json_.containsKey('adGroupBidModifier')
              ? GoogleAdsSearchads360V0ResourcesAdGroupBidModifier.fromJson(
                  json_['adGroupBidModifier']
                      as core.Map<core.String, core.dynamic>)
              : null,
          adGroupCriterion: json_.containsKey('adGroupCriterion')
              ? GoogleAdsSearchads360V0ResourcesAdGroupCriterion.fromJson(
                  json_['adGroupCriterion']
                      as core.Map<core.String, core.dynamic>)
              : null,
          biddingStrategy: json_.containsKey('biddingStrategy')
              ? GoogleAdsSearchads360V0ResourcesBiddingStrategy.fromJson(
                  json_['biddingStrategy']
                      as core.Map<core.String, core.dynamic>)
              : null,
          campaign: json_.containsKey('campaign')
              ? GoogleAdsSearchads360V0ResourcesCampaign.fromJson(
                  json_['campaign'] as core.Map<core.String, core.dynamic>)
              : null,
          campaignBudget: json_.containsKey('campaignBudget')
              ? GoogleAdsSearchads360V0ResourcesCampaignBudget.fromJson(
                  json_['campaignBudget']
                      as core.Map<core.String, core.dynamic>)
              : null,
          campaignCriterion: json_.containsKey('campaignCriterion')
              ? GoogleAdsSearchads360V0ResourcesCampaignCriterion.fromJson(
                  json_['campaignCriterion']
                      as core.Map<core.String, core.dynamic>)
              : null,
          conversionAction: json_.containsKey('conversionAction')
              ? GoogleAdsSearchads360V0ResourcesConversionAction.fromJson(
                  json_['conversionAction']
                      as core.Map<core.String, core.dynamic>)
              : null,
          customColumns: json_.containsKey('customColumns')
              ? (json_['customColumns'] as core.List)
                  .map((value) => GoogleAdsSearchads360V0CommonValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          customer: json_.containsKey('customer')
              ? GoogleAdsSearchads360V0ResourcesCustomer.fromJson(
                  json_['customer'] as core.Map<core.String, core.dynamic>)
              : null,
          customerClient: json_.containsKey('customerClient')
              ? GoogleAdsSearchads360V0ResourcesCustomerClient.fromJson(
                  json_['customerClient']
                      as core.Map<core.String, core.dynamic>)
              : null,
          customerManagerLink: json_.containsKey('customerManagerLink')
              ? GoogleAdsSearchads360V0ResourcesCustomerManagerLink.fromJson(
                  json_['customerManagerLink']
                      as core.Map<core.String, core.dynamic>)
              : null,
          keywordView: json_.containsKey('keywordView')
              ? GoogleAdsSearchads360V0ResourcesKeywordView.fromJson(
                  json_['keywordView'] as core.Map<core.String, core.dynamic>)
              : null,
          metrics: json_.containsKey('metrics')
              ? GoogleAdsSearchads360V0CommonMetrics.fromJson(
                  json_['metrics'] as core.Map<core.String, core.dynamic>)
              : null,
          productGroupView: json_.containsKey('productGroupView')
              ? GoogleAdsSearchads360V0ResourcesProductGroupView.fromJson(
                  json_['productGroupView']
                      as core.Map<core.String, core.dynamic>)
              : null,
          segments: json_.containsKey('segments')
              ? GoogleAdsSearchads360V0CommonSegments.fromJson(
                  json_['segments'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adGroup != null) 'adGroup': adGroup!,
        if (adGroupBidModifier != null)
          'adGroupBidModifier': adGroupBidModifier!,
        if (adGroupCriterion != null) 'adGroupCriterion': adGroupCriterion!,
        if (biddingStrategy != null) 'biddingStrategy': biddingStrategy!,
        if (campaign != null) 'campaign': campaign!,
        if (campaignBudget != null) 'campaignBudget': campaignBudget!,
        if (campaignCriterion != null) 'campaignCriterion': campaignCriterion!,
        if (conversionAction != null) 'conversionAction': conversionAction!,
        if (customColumns != null) 'customColumns': customColumns!,
        if (customer != null) 'customer': customer!,
        if (customerClient != null) 'customerClient': customerClient!,
        if (customerManagerLink != null)
          'customerManagerLink': customerManagerLink!,
        if (keywordView != null) 'keywordView': keywordView!,
        if (metrics != null) 'metrics': metrics!,
        if (productGroupView != null) 'productGroupView': productGroupView!,
        if (segments != null) 'segments': segments!,
      };
}

/// Request message for SearchAds360FieldService.SearchSearchAds360Fields.
class GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest {
  /// Number of elements to retrieve in a single page.
  ///
  /// When too large a page is requested, the server may decide to further limit
  /// the number of returned resources.
  core.int? pageSize;

  /// Token of the page to retrieve.
  ///
  /// If not specified, the first page of results will be returned. Use the
  /// value obtained from `next_page_token` in the previous response in order to
  /// request the next page of results.
  core.String? pageToken;

  /// The query string.
  ///
  /// Required.
  core.String? query;

  GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest({
    this.pageSize,
    this.pageToken,
    this.query,
  });

  GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest.fromJson(
      core.Map json_)
      : this(
          pageSize: json_.containsKey('pageSize')
              ? json_['pageSize'] as core.int
              : null,
          pageToken: json_.containsKey('pageToken')
              ? json_['pageToken'] as core.String
              : null,
          query:
              json_.containsKey('query') ? json_['query'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (query != null) 'query': query!,
      };
}

/// Response message for SearchAds360FieldService.SearchSearchAds360Fields.
class GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse {
  /// Pagination token used to retrieve the next page of results.
  ///
  /// Pass the content of this string as the `page_token` attribute of the next
  /// request. `next_page_token` is not returned for the last page.
  core.String? nextPageToken;

  /// The list of fields that matched the query.
  core.List<GoogleAdsSearchads360V0ResourcesSearchAds360Field>? results;

  /// Total number of results that match the query ignoring the LIMIT clause.
  core.String? totalResultsCount;

  GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse({
    this.nextPageToken,
    this.results,
    this.totalResultsCount,
  });

  GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse.fromJson(
      core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          results: json_.containsKey('results')
              ? (json_['results'] as core.List)
                  .map((value) =>
                      GoogleAdsSearchads360V0ResourcesSearchAds360Field
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalResultsCount: json_.containsKey('totalResultsCount')
              ? json_['totalResultsCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (results != null) 'results': results!,
        if (totalResultsCount != null) 'totalResultsCount': totalResultsCount!,
      };
}

/// Request message for SearchAds360Service.Search.
class GoogleAdsSearchads360V0ServicesSearchSearchAds360Request {
  /// Number of elements to retrieve in a single page.
  ///
  /// When too large a page is requested, the server may decide to further limit
  /// the number of returned resources.
  core.int? pageSize;

  /// Token of the page to retrieve.
  ///
  /// If not specified, the first page of results will be returned. Use the
  /// value obtained from `next_page_token` in the previous response in order to
  /// request the next page of results.
  core.String? pageToken;

  /// The query string.
  ///
  /// Required.
  core.String? query;

  /// If true, the total number of results that match the query ignoring the
  /// LIMIT clause will be included in the response.
  ///
  /// Default is false.
  core.bool? returnTotalResultsCount;

  /// Determines whether a summary row will be returned.
  ///
  /// By default, summary row is not returned. If requested, the summary row
  /// will be sent in a response by itself after all other query results are
  /// returned.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Represent unknown values of return summary row.
  /// - "NO_SUMMARY_ROW" : Do not return summary row.
  /// - "SUMMARY_ROW_WITH_RESULTS" : Return summary row along with results. The
  /// summary row will be returned in the last batch alone (last batch will
  /// contain no results).
  /// - "SUMMARY_ROW_ONLY" : Return summary row only and return no results.
  core.String? summaryRowSetting;

  /// If true, the request is validated but not executed.
  core.bool? validateOnly;

  GoogleAdsSearchads360V0ServicesSearchSearchAds360Request({
    this.pageSize,
    this.pageToken,
    this.query,
    this.returnTotalResultsCount,
    this.summaryRowSetting,
    this.validateOnly,
  });

  GoogleAdsSearchads360V0ServicesSearchSearchAds360Request.fromJson(
      core.Map json_)
      : this(
          pageSize: json_.containsKey('pageSize')
              ? json_['pageSize'] as core.int
              : null,
          pageToken: json_.containsKey('pageToken')
              ? json_['pageToken'] as core.String
              : null,
          query:
              json_.containsKey('query') ? json_['query'] as core.String : null,
          returnTotalResultsCount: json_.containsKey('returnTotalResultsCount')
              ? json_['returnTotalResultsCount'] as core.bool
              : null,
          summaryRowSetting: json_.containsKey('summaryRowSetting')
              ? json_['summaryRowSetting'] as core.String
              : null,
          validateOnly: json_.containsKey('validateOnly')
              ? json_['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (query != null) 'query': query!,
        if (returnTotalResultsCount != null)
          'returnTotalResultsCount': returnTotalResultsCount!,
        if (summaryRowSetting != null) 'summaryRowSetting': summaryRowSetting!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// Response message for SearchAds360Service.Search.
class GoogleAdsSearchads360V0ServicesSearchSearchAds360Response {
  /// The headers of the custom columns in the results.
  core.List<GoogleAdsSearchads360V0ServicesCustomColumnHeader>?
      customColumnHeaders;

  /// FieldMask that represents what fields were requested by the user.
  core.String? fieldMask;

  /// Pagination token used to retrieve the next page of results.
  ///
  /// Pass the content of this string as the `page_token` attribute of the next
  /// request. `next_page_token` is not returned for the last page.
  core.String? nextPageToken;

  /// The list of rows that matched the query.
  core.List<GoogleAdsSearchads360V0ServicesSearchAds360Row>? results;

  /// Summary row that contains summary of metrics in results.
  ///
  /// Summary of metrics means aggregation of metrics across all results, here
  /// aggregation could be sum, average, rate, etc.
  GoogleAdsSearchads360V0ServicesSearchAds360Row? summaryRow;

  /// Total number of results that match the query ignoring the LIMIT clause.
  core.String? totalResultsCount;

  GoogleAdsSearchads360V0ServicesSearchSearchAds360Response({
    this.customColumnHeaders,
    this.fieldMask,
    this.nextPageToken,
    this.results,
    this.summaryRow,
    this.totalResultsCount,
  });

  GoogleAdsSearchads360V0ServicesSearchSearchAds360Response.fromJson(
      core.Map json_)
      : this(
          customColumnHeaders: json_.containsKey('customColumnHeaders')
              ? (json_['customColumnHeaders'] as core.List)
                  .map((value) =>
                      GoogleAdsSearchads360V0ServicesCustomColumnHeader
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          fieldMask: json_.containsKey('fieldMask')
              ? json_['fieldMask'] as core.String
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          results: json_.containsKey('results')
              ? (json_['results'] as core.List)
                  .map((value) =>
                      GoogleAdsSearchads360V0ServicesSearchAds360Row.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          summaryRow: json_.containsKey('summaryRow')
              ? GoogleAdsSearchads360V0ServicesSearchAds360Row.fromJson(
                  json_['summaryRow'] as core.Map<core.String, core.dynamic>)
              : null,
          totalResultsCount: json_.containsKey('totalResultsCount')
              ? json_['totalResultsCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customColumnHeaders != null)
          'customColumnHeaders': customColumnHeaders!,
        if (fieldMask != null) 'fieldMask': fieldMask!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (results != null) 'results': results!,
        if (summaryRow != null) 'summaryRow': summaryRow!,
        if (totalResultsCount != null) 'totalResultsCount': totalResultsCount!,
      };
}

/// Request message for SearchAds360Service.SearchStream.
class GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest {
  /// The number of rows that are returned in each stream response batch.
  ///
  /// When too large batch is requested, the server may decide to further limit
  /// the number of returned rows.
  core.int? batchSize;

  /// The query string.
  ///
  /// Required.
  core.String? query;

  /// Determines whether a summary row will be returned.
  ///
  /// By default, summary row is not returned. If requested, the summary row
  /// will be sent in a response by itself after all other query results are
  /// returned.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Represent unknown values of return summary row.
  /// - "NO_SUMMARY_ROW" : Do not return summary row.
  /// - "SUMMARY_ROW_WITH_RESULTS" : Return summary row along with results. The
  /// summary row will be returned in the last batch alone (last batch will
  /// contain no results).
  /// - "SUMMARY_ROW_ONLY" : Return summary row only and return no results.
  core.String? summaryRowSetting;

  GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest({
    this.batchSize,
    this.query,
    this.summaryRowSetting,
  });

  GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest.fromJson(
      core.Map json_)
      : this(
          batchSize: json_.containsKey('batchSize')
              ? json_['batchSize'] as core.int
              : null,
          query:
              json_.containsKey('query') ? json_['query'] as core.String : null,
          summaryRowSetting: json_.containsKey('summaryRowSetting')
              ? json_['summaryRowSetting'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchSize != null) 'batchSize': batchSize!,
        if (query != null) 'query': query!,
        if (summaryRowSetting != null) 'summaryRowSetting': summaryRowSetting!,
      };
}

/// Response message for SearchAds360Service.SearchStream.
class GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse {
  /// The headers of the custom columns in the results.
  core.List<GoogleAdsSearchads360V0ServicesCustomColumnHeader>?
      customColumnHeaders;

  /// FieldMask that represents what fields were requested by the user.
  core.String? fieldMask;

  /// The unique id of the request that is used for debugging purposes.
  core.String? requestId;

  /// The list of rows that matched the query.
  core.List<GoogleAdsSearchads360V0ServicesSearchAds360Row>? results;

  /// Summary row that contains summary of metrics in results.
  ///
  /// Summary of metrics means aggregation of metrics across all results, here
  /// aggregation could be sum, average, rate, etc.
  GoogleAdsSearchads360V0ServicesSearchAds360Row? summaryRow;

  GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse({
    this.customColumnHeaders,
    this.fieldMask,
    this.requestId,
    this.results,
    this.summaryRow,
  });

  GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse.fromJson(
      core.Map json_)
      : this(
          customColumnHeaders: json_.containsKey('customColumnHeaders')
              ? (json_['customColumnHeaders'] as core.List)
                  .map((value) =>
                      GoogleAdsSearchads360V0ServicesCustomColumnHeader
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          fieldMask: json_.containsKey('fieldMask')
              ? json_['fieldMask'] as core.String
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
          results: json_.containsKey('results')
              ? (json_['results'] as core.List)
                  .map((value) =>
                      GoogleAdsSearchads360V0ServicesSearchAds360Row.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          summaryRow: json_.containsKey('summaryRow')
              ? GoogleAdsSearchads360V0ServicesSearchAds360Row.fromJson(
                  json_['summaryRow'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customColumnHeaders != null)
          'customColumnHeaders': customColumnHeaders!,
        if (fieldMask != null) 'fieldMask': fieldMask!,
        if (requestId != null) 'requestId': requestId!,
        if (results != null) 'results': results!,
        if (summaryRow != null) 'summaryRow': summaryRow!,
      };
}
