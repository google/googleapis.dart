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

  SA360Api(
    http.Client client, {
    core.String rootUrl = 'https://searchads360.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class CustomersResource {
  final commons.ApiRequester _requester;

  CustomersCustomColumnsResource get customColumns =>
      CustomersCustomColumnsResource(_requester);
  CustomersSearchAds360Resource get searchAds360 =>
      CustomersSearchAds360Resource(_requester);

  CustomersResource(commons.ApiRequester client) : _requester = client;

  /// Returns resource names of customers directly accessible by the user
  /// authenticating the call.
  ///
  /// List of thrown errors: \[AuthenticationError\]() \[AuthorizationError\]()
  /// \[HeaderError\]() \[InternalError\]() \[QuotaError\]() \[RequestError\]()
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse>
  listAccessibleCustomers({core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v0/customers:listAccessibleCustomers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ =
        'v0/customers/' +
        core.Uri.encodeFull('$customerId') +
        '/searchAds360:search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAdsSearchads360V0ServicesSearchSearchAds360Response.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns all fields that match the search
  /// \[query\](/search-ads/reporting/concepts/field-service#use_a_query_to_get_field_details).
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
    return GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Represents an AdSchedule criterion.
///
/// AdSchedule is specified as the day of the week and a time interval within
/// which ads will be shown. No more than six AdSchedules can be added for the
/// same day.
class GoogleAdsSearchads360V0CommonAdScheduleInfo {
  /// Day of the week the schedule applies to.
  ///
  /// This field is required for CREATE operations and is prohibited on UPDATE
  /// operations.
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

  /// Ending hour in 24 hour time; 24 signifies end of the day.
  ///
  /// This field must be between 0 and 24, inclusive. This field is required for
  /// CREATE operations and is prohibited on UPDATE operations.
  core.int? endHour;

  /// Minutes after the end hour at which this schedule ends.
  ///
  /// The schedule is exclusive of the end minute. This field is required for
  /// CREATE operations and is prohibited on UPDATE operations.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : The value is unknown in this version.
  /// - "ZERO" : Zero minutes past the hour.
  /// - "FIFTEEN" : Fifteen minutes past the hour.
  /// - "THIRTY" : Thirty minutes past the hour.
  /// - "FORTY_FIVE" : Forty-five minutes past the hour.
  core.String? endMinute;

  /// Starting hour in 24 hour time.
  ///
  /// This field must be between 0 and 23, inclusive. This field is required for
  /// CREATE operations and is prohibited on UPDATE operations.
  core.int? startHour;

  /// Minutes after the start hour at which this schedule starts.
  ///
  /// This field is required for CREATE operations and is prohibited on UPDATE
  /// operations.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : The value is unknown in this version.
  /// - "ZERO" : Zero minutes past the hour.
  /// - "FIFTEEN" : Fifteen minutes past the hour.
  /// - "THIRTY" : Thirty minutes past the hour.
  /// - "FORTY_FIVE" : Forty-five minutes past the hour.
  core.String? startMinute;

  GoogleAdsSearchads360V0CommonAdScheduleInfo({
    this.dayOfWeek,
    this.endHour,
    this.endMinute,
    this.startHour,
    this.startMinute,
  });

  GoogleAdsSearchads360V0CommonAdScheduleInfo.fromJson(core.Map json_)
    : this(
        dayOfWeek: json_['dayOfWeek'] as core.String?,
        endHour: json_['endHour'] as core.int?,
        endMinute: json_['endMinute'] as core.String?,
        startHour: json_['startHour'] as core.int?,
        startMinute: json_['startMinute'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dayOfWeek != null) 'dayOfWeek': dayOfWeek!,
    if (endHour != null) 'endHour': endHour!,
    if (endMinute != null) 'endMinute': endMinute!,
    if (startHour != null) 'startHour': startHour!,
    if (startMinute != null) 'startMinute': startMinute!,
  };
}

/// A text asset used inside an ad.
class GoogleAdsSearchads360V0CommonAdTextAsset {
  /// Asset text.
  core.String? text;

  GoogleAdsSearchads360V0CommonAdTextAsset({this.text});

  GoogleAdsSearchads360V0CommonAdTextAsset.fromJson(core.Map json_)
    : this(text: json_['text'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (text != null) 'text': text!,
  };
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

  GoogleAdsSearchads360V0CommonAgeRangeInfo({this.type});

  GoogleAdsSearchads360V0CommonAgeRangeInfo.fromJson(core.Map json_)
    : this(type: json_['type'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (type != null) 'type': type!,
  };
}

/// An AssetInteractionTarget segment.
class GoogleAdsSearchads360V0CommonAssetInteractionTarget {
  /// The asset resource name.
  core.String? asset;

  /// Only used with CustomerAsset, CampaignAsset and AdGroupAsset metrics.
  ///
  /// Indicates whether the interaction metrics occurred on the asset itself or
  /// a different asset or ad unit.
  core.bool? interactionOnThisAsset;

  GoogleAdsSearchads360V0CommonAssetInteractionTarget({
    this.asset,
    this.interactionOnThisAsset,
  });

  GoogleAdsSearchads360V0CommonAssetInteractionTarget.fromJson(core.Map json_)
    : this(
        asset: json_['asset'] as core.String?,
        interactionOnThisAsset: json_['interactionOnThisAsset'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (asset != null) 'asset': asset!,
    if (interactionOnThisAsset != null)
      'interactionOnThisAsset': interactionOnThisAsset!,
  };
}

/// Contains the usage information of the asset.
class GoogleAdsSearchads360V0CommonAssetUsage {
  /// Resource name of the asset.
  core.String? asset;

  /// The served field type of the asset.
  /// Possible string values are:
  /// - "UNSPECIFIED" : No value has been specified.
  /// - "UNKNOWN" : The received value is not known in this version. This is a
  /// response-only value.
  /// - "HEADLINE_1" : The asset is used in headline 1.
  /// - "HEADLINE_2" : The asset is used in headline 2.
  /// - "HEADLINE_3" : The asset is used in headline 3.
  /// - "DESCRIPTION_1" : The asset is used in description 1.
  /// - "DESCRIPTION_2" : The asset is used in description 2.
  /// - "HEADLINE" : The asset was used in a headline. Use this only if there is
  /// only one headline in the ad. Otherwise, use the HEADLINE_1, HEADLINE_2 or
  /// HEADLINE_3 enums
  /// - "HEADLINE_IN_PORTRAIT" : The asset was used as a headline in portrait
  /// image.
  /// - "LONG_HEADLINE" : The asset was used in a long headline (used in
  /// MultiAssetResponsiveAd).
  /// - "DESCRIPTION" : The asset was used in a description. Use this only if
  /// there is only one description in the ad. Otherwise, use the DESCRIPTION_1
  /// or DESCRIPTION_@ enums
  /// - "DESCRIPTION_IN_PORTRAIT" : The asset was used as description in
  /// portrait image.
  /// - "BUSINESS_NAME_IN_PORTRAIT" : The asset was used as business name in
  /// portrait image.
  /// - "BUSINESS_NAME" : The asset was used as business name.
  /// - "MARKETING_IMAGE" : The asset was used as a marketing image.
  /// - "MARKETING_IMAGE_IN_PORTRAIT" : The asset was used as a marketing image
  /// in portrait image.
  /// - "SQUARE_MARKETING_IMAGE" : The asset was used as a square marketing
  /// image.
  /// - "PORTRAIT_MARKETING_IMAGE" : The asset was used as a portrait marketing
  /// image.
  /// - "LOGO" : The asset was used as a logo.
  /// - "LANDSCAPE_LOGO" : The asset was used as a landscape logo.
  /// - "CALL_TO_ACTION" : The asset was used as a call-to-action.
  /// - "YOU_TUBE_VIDEO" : The asset was used as a YouTube video.
  /// - "SITELINK" : This asset is used as a sitelink.
  /// - "CALL" : This asset is used as a call.
  /// - "MOBILE_APP" : This asset is used as a mobile app.
  /// - "CALLOUT" : This asset is used as a callout.
  /// - "STRUCTURED_SNIPPET" : This asset is used as a structured snippet.
  /// - "PRICE" : This asset is used as a price.
  /// - "PROMOTION" : This asset is used as a promotion.
  /// - "AD_IMAGE" : This asset is used as an image.
  /// - "LEAD_FORM" : The asset is used as a lead form.
  /// - "BUSINESS_LOGO" : The asset is used as a business logo.
  /// - "DESCRIPTION_PREFIX" : The asset is used as a description prefix.
  core.String? servedAssetFieldType;

  GoogleAdsSearchads360V0CommonAssetUsage({
    this.asset,
    this.servedAssetFieldType,
  });

  GoogleAdsSearchads360V0CommonAssetUsage.fromJson(core.Map json_)
    : this(
        asset: json_['asset'] as core.String?,
        servedAssetFieldType: json_['servedAssetFieldType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (asset != null) 'asset': asset!,
    if (servedAssetFieldType != null)
      'servedAssetFieldType': servedAssetFieldType!,
  };
}

/// An audience criterion.
class GoogleAdsSearchads360V0CommonAudienceInfo {
  /// The Audience resource name.
  core.String? audience;

  GoogleAdsSearchads360V0CommonAudienceInfo({this.audience});

  GoogleAdsSearchads360V0CommonAudienceInfo.fromJson(core.Map json_)
    : this(audience: json_['audience'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (audience != null) 'audience': audience!,
  };
}

/// Business Profile location data synced from the linked Business Profile
/// account.
class GoogleAdsSearchads360V0CommonBusinessProfileLocation {
  /// Advertiser specified label for the location on the Business Profile
  /// account.
  ///
  /// This is synced from the Business Profile account.
  core.List<core.String>? labels;

  /// Listing ID of this Business Profile location.
  ///
  /// This is synced from the linked Business Profile account.
  core.String? listingId;

  /// Business Profile store code of this location.
  ///
  /// This is synced from the Business Profile account.
  core.String? storeCode;

  GoogleAdsSearchads360V0CommonBusinessProfileLocation({
    this.labels,
    this.listingId,
    this.storeCode,
  });

  GoogleAdsSearchads360V0CommonBusinessProfileLocation.fromJson(core.Map json_)
    : this(
        labels:
            (json_['labels'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        listingId: json_['listingId'] as core.String?,
        storeCode: json_['storeCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (labels != null) 'labels': labels!,
    if (listingId != null) 'listingId': listingId!,
    if (storeCode != null) 'storeCode': storeCode!,
  };
}

/// A call to action asset.
class GoogleAdsSearchads360V0CommonCallToActionAsset {
  /// Call to action.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "LEARN_MORE" : The call to action type is learn more.
  /// - "GET_QUOTE" : The call to action type is get quote.
  /// - "APPLY_NOW" : The call to action type is apply now.
  /// - "SIGN_UP" : The call to action type is sign up.
  /// - "CONTACT_US" : The call to action type is contact us.
  /// - "SUBSCRIBE" : The call to action type is subscribe.
  /// - "DOWNLOAD" : The call to action type is download.
  /// - "BOOK_NOW" : The call to action type is book now.
  /// - "SHOP_NOW" : The call to action type is shop now.
  /// - "BUY_NOW" : The call to action type is buy now.
  /// - "DONATE_NOW" : The call to action type is donate now.
  /// - "ORDER_NOW" : The call to action type is order now.
  /// - "PLAY_NOW" : The call to action type is play now.
  /// - "SEE_MORE" : The call to action type is see more.
  /// - "START_NOW" : The call to action type is start now.
  /// - "VISIT_SITE" : The call to action type is visit site.
  /// - "WATCH_NOW" : The call to action type is watch now.
  core.String? callToAction;

  GoogleAdsSearchads360V0CommonCallToActionAsset({this.callToAction});

  GoogleAdsSearchads360V0CommonCallToActionAsset.fromJson(core.Map json_)
    : this(callToAction: json_['callToAction'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (callToAction != null) 'callToAction': callToAction!,
  };
}

/// A mapping that can be used by custom parameter tags in a
/// `tracking_url_template`, `final_urls`, or `mobile_final_urls`.
class GoogleAdsSearchads360V0CommonCustomParameter {
  /// The key matching the parameter tag name.
  core.String? key;

  /// The value to be substituted.
  core.String? value;

  GoogleAdsSearchads360V0CommonCustomParameter({this.key, this.value});

  GoogleAdsSearchads360V0CommonCustomParameter.fromJson(core.Map json_)
    : this(
        key: json_['key'] as core.String?,
        value: json_['value'] as core.String?,
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

  GoogleAdsSearchads360V0CommonDeviceInfo({this.type});

  GoogleAdsSearchads360V0CommonDeviceInfo.fromJson(core.Map json_)
    : this(type: json_['type'] as core.String?);

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

  GoogleAdsSearchads360V0CommonGenderInfo({this.type});

  GoogleAdsSearchads360V0CommonGenderInfo.fromJson(core.Map json_)
    : this(type: json_['type'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (type != null) 'type': type!,
  };
}

/// An Image asset.
class GoogleAdsSearchads360V0CommonImageAsset {
  /// File size of the image asset in bytes.
  core.String? fileSize;

  /// Metadata for this image at its original size.
  GoogleAdsSearchads360V0CommonImageDimension? fullSize;

  /// MIME type of the image asset.
  /// Possible string values are:
  /// - "UNSPECIFIED" : The mime type has not been specified.
  /// - "UNKNOWN" : The received value is not known in this version. This is a
  /// response-only value.
  /// - "IMAGE_JPEG" : MIME type of image/jpeg.
  /// - "IMAGE_GIF" : MIME type of image/gif.
  /// - "IMAGE_PNG" : MIME type of image/png.
  /// - "FLASH" : MIME type of application/x-shockwave-flash.
  /// - "TEXT_HTML" : MIME type of text/html.
  /// - "PDF" : MIME type of application/pdf.
  /// - "MSWORD" : MIME type of application/msword.
  /// - "MSEXCEL" : MIME type of application/vnd.ms-excel.
  /// - "RTF" : MIME type of application/rtf.
  /// - "AUDIO_WAV" : MIME type of audio/wav.
  /// - "AUDIO_MP3" : MIME type of audio/mp3.
  /// - "HTML5_AD_ZIP" : MIME type of application/x-html5-ad-zip.
  core.String? mimeType;

  GoogleAdsSearchads360V0CommonImageAsset({
    this.fileSize,
    this.fullSize,
    this.mimeType,
  });

  GoogleAdsSearchads360V0CommonImageAsset.fromJson(core.Map json_)
    : this(
        fileSize: json_['fileSize'] as core.String?,
        fullSize:
            json_.containsKey('fullSize')
                ? GoogleAdsSearchads360V0CommonImageDimension.fromJson(
                  json_['fullSize'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        mimeType: json_['mimeType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fileSize != null) 'fileSize': fileSize!,
    if (fullSize != null) 'fullSize': fullSize!,
    if (mimeType != null) 'mimeType': mimeType!,
  };
}

/// Metadata for an image at a certain size, either original or resized.
class GoogleAdsSearchads360V0CommonImageDimension {
  /// Height of the image.
  core.String? heightPixels;

  /// A URL that returns the image with this height and width.
  core.String? url;

  /// Width of the image.
  core.String? widthPixels;

  GoogleAdsSearchads360V0CommonImageDimension({
    this.heightPixels,
    this.url,
    this.widthPixels,
  });

  GoogleAdsSearchads360V0CommonImageDimension.fromJson(core.Map json_)
    : this(
        heightPixels: json_['heightPixels'] as core.String?,
        url: json_['url'] as core.String?,
        widthPixels: json_['widthPixels'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (heightPixels != null) 'heightPixels': heightPixels!,
    if (url != null) 'url': url!,
    if (widthPixels != null) 'widthPixels': widthPixels!,
  };
}

/// A Keyword criterion segment.
class GoogleAdsSearchads360V0CommonKeyword {
  /// The AdGroupCriterion resource name.
  core.String? adGroupCriterion;

  /// Keyword info.
  GoogleAdsSearchads360V0CommonKeywordInfo? info;

  GoogleAdsSearchads360V0CommonKeyword({this.adGroupCriterion, this.info});

  GoogleAdsSearchads360V0CommonKeyword.fromJson(core.Map json_)
    : this(
        adGroupCriterion: json_['adGroupCriterion'] as core.String?,
        info:
            json_.containsKey('info')
                ? GoogleAdsSearchads360V0CommonKeywordInfo.fromJson(
                  json_['info'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adGroupCriterion != null) 'adGroupCriterion': adGroupCriterion!,
    if (info != null) 'info': info!,
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

  GoogleAdsSearchads360V0CommonKeywordInfo({this.matchType, this.text});

  GoogleAdsSearchads360V0CommonKeywordInfo.fromJson(core.Map json_)
    : this(
        matchType: json_['matchType'] as core.String?,
        text: json_['text'] as core.String?,
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

  GoogleAdsSearchads360V0CommonLanguageInfo({this.languageConstant});

  GoogleAdsSearchads360V0CommonLanguageInfo.fromJson(core.Map json_)
    : this(languageConstant: json_['languageConstant'] as core.String?);

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

  GoogleAdsSearchads360V0CommonListingGroupInfo({this.type});

  GoogleAdsSearchads360V0CommonListingGroupInfo.fromJson(core.Map json_)
    : this(type: json_['type'] as core.String?);

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
        feedItemSets:
            (json_['feedItemSets'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        geoTargetConstants:
            (json_['geoTargetConstants'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        radius: json_['radius'] as core.String?,
        radiusUnits: json_['radiusUnits'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (feedItemSets != null) 'feedItemSets': feedItemSets!,
    if (geoTargetConstants != null) 'geoTargetConstants': geoTargetConstants!,
    if (radius != null) 'radius': radius!,
    if (radiusUnits != null) 'radiusUnits': radiusUnits!,
  };
}

/// A location criterion.
class GoogleAdsSearchads360V0CommonLocationInfo {
  /// The geo target constant resource name.
  core.String? geoTargetConstant;

  GoogleAdsSearchads360V0CommonLocationInfo({this.geoTargetConstant});

  GoogleAdsSearchads360V0CommonLocationInfo.fromJson(core.Map json_)
    : this(geoTargetConstant: json_['geoTargetConstant'] as core.String?);

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

  GoogleAdsSearchads360V0CommonManualCpc({this.enhancedCpcEnabled});

  GoogleAdsSearchads360V0CommonManualCpc.fromJson(core.Map json_)
    : this(enhancedCpcEnabled: json_['enhancedCpcEnabled'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (enhancedCpcEnabled != null) 'enhancedCpcEnabled': enhancedCpcEnabled!,
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
        cpcBidCeilingMicros: json_['cpcBidCeilingMicros'] as core.String?,
        cpcBidFloorMicros: json_['cpcBidFloorMicros'] as core.String?,
        targetRoas: (json_['targetRoas'] as core.num?)?.toDouble(),
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
        cpcBidCeilingMicros: json_['cpcBidCeilingMicros'] as core.String?,
        cpcBidFloorMicros: json_['cpcBidFloorMicros'] as core.String?,
        targetCpaMicros: json_['targetCpaMicros'] as core.String?,
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
  /// Search absolute top impression share is the percentage of your Search ad
  /// impressions that are shown in the most prominent Search position.
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
  ///
  /// This metric is a monetary value and returned in the customer's currency by
  /// default. See the metrics_currency parameter at
  /// https://developers.google.com/search-ads/reporting/query/query-structure#parameters_clause
  core.double? averageCpc;

  /// Average cost-per-thousand impressions (CPM).
  ///
  /// This metric is a monetary value and returned in the customer's currency by
  /// default. See the metrics_currency parameter at
  /// https://developers.google.com/search-ads/reporting/query/query-structure#parameters_clause
  core.double? averageCpm;

  /// The average quality score.
  core.double? averageQualityScore;

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

  /// Client account cross-sell cost of goods sold (COGS) is the total cost of
  /// products sold as a result of advertising a different product.
  ///
  /// How it works: You report conversions with cart data for completed
  /// purchases on your website. If the ad that was interacted with before the
  /// purchase has an associated product (see Shopping Ads) then this product is
  /// considered the advertised product. Any product included in the order the
  /// customer places is a sold product. If these products don't match then this
  /// is considered cross-sell. Cross-sell cost of goods sold is the total cost
  /// of the products sold that weren't advertised. Example: Someone clicked on
  /// a Shopping ad for a hat then bought the same hat and a shirt. The hat has
  /// a cost of goods sold value of $3, the shirt has a cost of goods sold value
  /// of $5. The cross-sell cost of goods sold for this order is $5. This metric
  /// is only available if you report conversions with cart data. This metric is
  /// a monetary value and returned in the customer's currency by default. See
  /// the metrics_currency parameter at
  /// https://developers.google.com/search-ads/reporting/query/query-structure#parameters_clause
  core.String? clientAccountCrossSellCostOfGoodsSoldMicros;

  /// Client account cross-sell gross profit is the profit you made from
  /// products sold as a result of advertising a different product, minus cost
  /// of goods sold (COGS).
  ///
  /// How it works: You report conversions with cart data for completed
  /// purchases on your website. If the ad that was interacted with before the
  /// purchase has an associated product (see Shopping Ads) then this product is
  /// considered the advertised product. Any product included in the purchase is
  /// a sold product. If these products don't match then this is considered
  /// cross-sell. Cross-sell gross profit is the revenue you made from
  /// cross-sell attributed to your ads minus the cost of the goods sold.
  /// Example: Someone clicked on a Shopping ad for a hat then bought the same
  /// hat and a shirt. The shirt is priced $20 and has a cost of goods sold
  /// value of $5. The cross-sell gross profit of this order is $15 = $20 - $5.
  /// This metric is only available if you report conversions with cart data.
  /// This metric is a monetary value and returned in the customer's currency by
  /// default. See the metrics_currency parameter at
  /// https://developers.google.com/search-ads/reporting/query/query-structure#parameters_clause
  core.String? clientAccountCrossSellGrossProfitMicros;

  /// Client account cross-sell revenue is the total amount you made from
  /// products sold as a result of advertising a different product.
  ///
  /// How it works: You report conversions with cart data for completed
  /// purchases on your website. If the ad that was interacted with before the
  /// purchase has an associated product (see Shopping Ads) then this product is
  /// considered the advertised product. Any product included in the order the
  /// customer places is a sold product. If these products don't match then this
  /// is considered cross-sell. Cross-sell revenue is the total value you made
  /// from cross-sell attributed to your ads. Example: Someone clicked on a
  /// Shopping ad for a hat then bought the same hat and a shirt. The hat is
  /// priced $10 and the shirt is priced $20. The cross-sell revenue of this
  /// order is $20. This metric is only available if you report conversions with
  /// cart data. This metric is a monetary value and returned in the customer's
  /// currency by default. See the metrics_currency parameter at
  /// https://developers.google.com/search-ads/reporting/query/query-structure#parameters_clause
  core.String? clientAccountCrossSellRevenueMicros;

  /// Client account cross-sell units sold is the total number of products sold
  /// as a result of advertising a different product.
  ///
  /// How it works: You report conversions with cart data for completed
  /// purchases on your website. If the ad that was interacted with before the
  /// purchase has an associated product (see Shopping Ads) then this product is
  /// considered the advertised product. Any product included in the order the
  /// customer places is a sold product. If these products don't match then this
  /// is considered cross-sell. Cross-sell units sold is the total number of
  /// cross-sold products from all orders attributed to your ads. Example:
  /// Someone clicked on a Shopping ad for a hat then bought the same hat, a
  /// shirt and a jacket. The cross-sell units sold in this order is 2. This
  /// metric is only available if you report conversions with cart data.
  core.double? clientAccountCrossSellUnitsSold;

  /// Client account lead cost of goods sold (COGS) is the total cost of
  /// products sold as a result of advertising the same product.
  ///
  /// How it works: You report conversions with cart data for completed
  /// purchases on your website. If the ad that was interacted with has an
  /// associated product (see Shopping Ads) then this product is considered the
  /// advertised product. Any product included in the order the customer places
  /// is a sold product. If the advertised and sold products match, then the
  /// cost of these goods is counted under lead cost of goods sold. Example:
  /// Someone clicked on a Shopping ad for a hat then bought the same hat and a
  /// shirt. The hat has a cost of goods sold value of $3, the shirt has a cost
  /// of goods sold value of $5. The lead cost of goods sold for this order is
  /// $3. This metric is only available if you report conversions with cart
  /// data. This metric is a monetary value and returned in the customer's
  /// currency by default. See the metrics_currency parameter at
  /// https://developers.google.com/search-ads/reporting/query/query-structure#parameters_clause
  core.String? clientAccountLeadCostOfGoodsSoldMicros;

  /// Client account lead gross profit is the profit you made from products sold
  /// as a result of advertising the same product, minus cost of goods sold
  /// (COGS).
  ///
  /// How it works: You report conversions with cart data for completed
  /// purchases on your website. If the ad that was interacted with before the
  /// purchase has an associated product (see Shopping Ads) then this product is
  /// considered the advertised product. Any product included in the order the
  /// customer places is a sold product. If the advertised and sold products
  /// match, then the revenue you made from these sales minus the cost of goods
  /// sold is your lead gross profit. Example: Someone clicked on a Shopping ad
  /// for a hat then bought the same hat and a shirt. The hat is priced $10 and
  /// has a cost of goods sold value of $3. The lead gross profit of this order
  /// is $7 = $10 - $3. This metric is only available if you report conversions
  /// with cart data. This metric is a monetary value and returned in the
  /// customer's currency by default. See the metrics_currency parameter at
  /// https://developers.google.com/search-ads/reporting/query/query-structure#parameters_clause
  core.String? clientAccountLeadGrossProfitMicros;

  /// Client account lead revenue is the total amount you made from products
  /// sold as a result of advertising the same product.
  ///
  /// How it works: You report conversions with cart data for completed
  /// purchases on your website. If the ad that was interacted with before the
  /// purchase has an associated product (see Shopping Ads) then this product is
  /// considered the advertised product. Any product included in the order the
  /// customer places is a sold product. If the advertised and sold products
  /// match, then the total value you made from the sales of these products is
  /// shown under lead revenue. Example: Someone clicked on a Shopping ad for a
  /// hat then bought the same hat and a shirt. The hat is priced $10 and the
  /// shirt is priced $20. The lead revenue of this order is $10. This metric is
  /// only available if you report conversions with cart data. This metric is a
  /// monetary value and returned in the customer's currency by default. See the
  /// metrics_currency parameter at
  /// https://developers.google.com/search-ads/reporting/query/query-structure#parameters_clause
  core.String? clientAccountLeadRevenueMicros;

  /// Client account lead units sold is the total number of products sold as a
  /// result of advertising the same product.
  ///
  /// How it works: You report conversions with cart data for completed
  /// purchases on your website. If the ad that was interacted with before the
  /// purchase has an associated product (see Shopping Ads) then this product is
  /// considered the advertised product. Any product included in the order the
  /// customer places is a sold product. If the advertised and sold products
  /// match, then the total number of these products sold is shown under lead
  /// units sold. Example: Someone clicked on a Shopping ad for a hat then
  /// bought the same hat, a shirt and a jacket. The lead units sold in this
  /// order is 1. This metric is only available if you report conversions with
  /// cart data.
  core.double? clientAccountLeadUnitsSold;

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

  /// The conversion custom metrics.
  core.List<GoogleAdsSearchads360V0CommonValue>? conversionCustomMetrics;

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
  ///
  /// This metric is a monetary value and returned in the customer's currency by
  /// default. See the metrics_currency parameter at
  /// https://developers.google.com/search-ads/reporting/query/query-structure#parameters_clause
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

  /// The number of cross-device conversions by conversion date.
  ///
  /// Details for the by_conversion_date columns are available at
  /// https://support.google.com/sa360/answer/9250611.
  core.double? crossDeviceConversionsByConversionDate;

  /// The sum of the value of cross-device conversions.
  core.double? crossDeviceConversionsValue;

  /// The sum of cross-device conversions value by conversion date.
  ///
  /// Details for the by_conversion_date columns are available at
  /// https://support.google.com/sa360/answer/9250611.
  core.double? crossDeviceConversionsValueByConversionDate;

  /// Cross-sell cost of goods sold (COGS) is the total cost of products sold as
  /// a result of advertising a different product.
  ///
  /// How it works: You report conversions with cart data for completed
  /// purchases on your website. If the ad that was interacted with before the
  /// purchase has an associated product (see Shopping Ads) then this product is
  /// considered the advertised product. Any product included in the order the
  /// customer places is a sold product. If these products don't match then this
  /// is considered cross-sell. Cross-sell cost of goods sold is the total cost
  /// of the products sold that weren't advertised. Example: Someone clicked on
  /// a Shopping ad for a hat then bought the same hat and a shirt. The hat has
  /// a cost of goods sold value of $3, the shirt has a cost of goods sold value
  /// of $5. The cross-sell cost of goods sold for this order is $5. This metric
  /// is only available if you report conversions with cart data. This metric is
  /// a monetary value and returned in the customer's currency by default. See
  /// the metrics_currency parameter at
  /// https://developers.google.com/search-ads/reporting/query/query-structure#parameters_clause
  core.String? crossSellCostOfGoodsSoldMicros;

  /// Cross-sell gross profit is the profit you made from products sold as a
  /// result of advertising a different product, minus cost of goods sold
  /// (COGS).
  ///
  /// How it works: You report conversions with cart data for completed
  /// purchases on your website. If the ad that was interacted with before the
  /// purchase has an associated product (see Shopping Ads) then this product is
  /// considered the advertised product. Any product included in the purchase is
  /// a sold product. If these products don't match then this is considered
  /// cross-sell. Cross-sell gross profit is the revenue you made from
  /// cross-sell attributed to your ads minus the cost of the goods sold.
  /// Example: Someone clicked on a Shopping ad for a hat then bought the same
  /// hat and a shirt. The shirt is priced $20 and has a cost of goods sold
  /// value of $5. The cross-sell gross profit of this order is $15 = $20 - $5.
  /// This metric is only available if you report conversions with cart data.
  /// This metric is a monetary value and returned in the customer's currency by
  /// default. See the metrics_currency parameter at
  /// https://developers.google.com/search-ads/reporting/query/query-structure#parameters_clause
  core.String? crossSellGrossProfitMicros;

  /// Cross-sell revenue is the total amount you made from products sold as a
  /// result of advertising a different product.
  ///
  /// How it works: You report conversions with cart data for completed
  /// purchases on your website. If the ad that was interacted with before the
  /// purchase has an associated product (see Shopping Ads) then this product is
  /// considered the advertised product. Any product included in the order the
  /// customer places is a sold product. If these products don't match then this
  /// is considered cross-sell. Cross-sell revenue is the total value you made
  /// from cross-sell attributed to your ads. Example: Someone clicked on a
  /// Shopping ad for a hat then bought the same hat and a shirt. The hat is
  /// priced $10 and the shirt is priced $20. The cross-sell revenue of this
  /// order is $20. This metric is only available if you report conversions with
  /// cart data. This metric is a monetary value and returned in the customer's
  /// currency by default. See the metrics_currency parameter at
  /// https://developers.google.com/search-ads/reporting/query/query-structure#parameters_clause
  core.String? crossSellRevenueMicros;

  /// Cross-sell units sold is the total number of products sold as a result of
  /// advertising a different product.
  ///
  /// How it works: You report conversions with cart data for completed
  /// purchases on your website. If the ad that was interacted with before the
  /// purchase has an associated product (see Shopping Ads) then this product is
  /// considered the advertised product. Any product included in the order the
  /// customer places is a sold product. If these products don't match then this
  /// is considered cross-sell. Cross-sell units sold is the total number of
  /// cross-sold products from all orders attributed to your ads. Example:
  /// Someone clicked on a Shopping ad for a hat then bought the same hat, a
  /// shirt and a jacket. The cross-sell units sold in this order is 2. This
  /// metric is only available if you report conversions with cart data.
  core.double? crossSellUnitsSold;

  /// The number of clicks your ad receives (Clicks) divided by the number of
  /// times your ad is shown (Impressions).
  core.double? ctr;

  /// The percentage of clicks that have been filtered out of your total number
  /// of clicks (filtered + non-filtered clicks) due to being general invalid
  /// clicks.
  ///
  /// These are clicks Google considers illegitimate that are detected through
  /// routine means of filtration (that is, known invalid data-center traffic,
  /// bots and spiders or other crawlers, irregular patterns, etc). You're not
  /// charged for them, and they don't affect your account statistics. See the
  /// help page at https://support.google.com/campaignmanager/answer/6076504 for
  /// details.
  core.double? generalInvalidClickRate;

  /// Number of general invalid clicks.
  ///
  /// These are a subset of your invalid clicks that are detected through
  /// routine means of filtration (such as known invalid data-center traffic,
  /// bots and spiders or other crawlers, irregular patterns, etc.). You're not
  /// charged for them, and they don't affect your account statistics. See the
  /// help page at https://support.google.com/campaignmanager/answer/6076504 for
  /// details.
  core.String? generalInvalidClicks;

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

  /// Lead cost of goods sold (COGS) is the total cost of products sold as a
  /// result of advertising the same product.
  ///
  /// How it works: You report conversions with cart data for completed
  /// purchases on your website. If the ad that was interacted with has an
  /// associated product (see Shopping Ads) then this product is considered the
  /// advertised product. Any product included in the order the customer places
  /// is a sold product. If the advertised and sold products match, then the
  /// cost of these goods is counted under lead cost of goods sold. Example:
  /// Someone clicked on a Shopping ad for a hat then bought the same hat and a
  /// shirt. The hat has a cost of goods sold value of $3, the shirt has a cost
  /// of goods sold value of $5. The lead cost of goods sold for this order is
  /// $3. This metric is only available if you report conversions with cart
  /// data. This metric is a monetary value and returned in the customer's
  /// currency by default. See the metrics_currency parameter at
  /// https://developers.google.com/search-ads/reporting/query/query-structure#parameters_clause
  core.String? leadCostOfGoodsSoldMicros;

  /// Lead gross profit is the profit you made from products sold as a result of
  /// advertising the same product, minus cost of goods sold (COGS).
  ///
  /// How it works: You report conversions with cart data for completed
  /// purchases on your website. If the ad that was interacted with before the
  /// purchase has an associated product (see Shopping Ads) then this product is
  /// considered the advertised product. Any product included in the order the
  /// customer places is a sold product. If the advertised and sold products
  /// match, then the revenue you made from these sales minus the cost of goods
  /// sold is your lead gross profit. Example: Someone clicked on a Shopping ad
  /// for a hat then bought the same hat and a shirt. The hat is priced $10 and
  /// has a cost of goods sold value of $3. The lead gross profit of this order
  /// is $7 = $10 - $3. This metric is only available if you report conversions
  /// with cart data. This metric is a monetary value and returned in the
  /// customer's currency by default. See the metrics_currency parameter at
  /// https://developers.google.com/search-ads/reporting/query/query-structure#parameters_clause
  core.String? leadGrossProfitMicros;

  /// Lead revenue is the total amount you made from products sold as a result
  /// of advertising the same product.
  ///
  /// How it works: You report conversions with cart data for completed
  /// purchases on your website. If the ad that was interacted with before the
  /// purchase has an associated product (see Shopping Ads) then this product is
  /// considered the advertised product. Any product included in the order the
  /// customer places is a sold product. If the advertised and sold products
  /// match, then the total value you made from the sales of these products is
  /// shown under lead revenue. Example: Someone clicked on a Shopping ad for a
  /// hat then bought the same hat and a shirt. The hat is priced $10 and the
  /// shirt is priced $20. The lead revenue of this order is $10. This metric is
  /// only available if you report conversions with cart data. This metric is a
  /// monetary value and returned in the customer's currency by default. See the
  /// metrics_currency parameter at
  /// https://developers.google.com/search-ads/reporting/query/query-structure#parameters_clause
  core.String? leadRevenueMicros;

  /// Lead units sold is the total number of products sold as a result of
  /// advertising the same product.
  ///
  /// How it works: You report conversions with cart data for completed
  /// purchases on your website. If the ad that was interacted with before the
  /// purchase has an associated product (see Shopping Ads) then this product is
  /// considered the advertised product. Any product included in the order the
  /// customer places is a sold product. If the advertised and sold products
  /// match, then the total number of these products sold is shown under lead
  /// units sold. Example: Someone clicked on a Shopping ad for a hat then
  /// bought the same hat, a shirt and a jacket. The lead units sold in this
  /// order is 1. This metric is only available if you report conversions with
  /// cart data.
  core.double? leadUnitsSold;

  /// The percentage of mobile clicks that go to a mobile-friendly page.
  core.double? mobileFriendlyClicksPercentage;

  /// The raw event conversion metrics.
  core.List<GoogleAdsSearchads360V0CommonValue>? rawEventConversionMetrics;

  /// The percentage of the customer's Shopping or Search ad impressions that
  /// are shown in the most prominent Shopping position.
  ///
  /// See https://support.google.com/sa360/answer/9566729 for details. Any value
  /// below 0.1 is reported as 0.0999.
  core.double? searchAbsoluteTopImpressionShare;

  /// The number estimating how often your ad wasn't the very first ad among the
  /// top ads in the search results due to a low budget.
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

  /// The number estimating how often your ad didn't show adjacent to the top
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

  /// The number estimating how often your ad wasn't the very first ad among the
  /// top ads in the search results due to poor Ad Rank.
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

  /// The number estimating how often your ad didn't show adjacent to the top
  /// organic search results due to poor Ad Rank.
  ///
  /// Note: Search rank lost top impression share is reported in the range of 0
  /// to 0.9. Any value above 0.9 is reported as 0.9001.
  core.double? searchRankLostTopImpressionShare;

  /// The impressions you've received among the top ads compared to the
  /// estimated number of impressions you were eligible to receive among the top
  /// ads.
  ///
  /// Note: Search top impression share is reported in the range of 0.1 to 1.
  /// Any value below 0.1 is reported as 0.0999. Top ads are generally above the
  /// top organic results, although they may show below the top organic results
  /// on certain queries.
  core.double? searchTopImpressionShare;

  /// The percent of your ad impressions that are shown adjacent to the top
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

  /// Clicks that Search Ads 360 has successfully recorded and forwarded to an
  /// advertiser's landing page.
  core.double? visits;

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
    this.averageQualityScore,
    this.clicks,
    this.clientAccountConversions,
    this.clientAccountConversionsValue,
    this.clientAccountCrossSellCostOfGoodsSoldMicros,
    this.clientAccountCrossSellGrossProfitMicros,
    this.clientAccountCrossSellRevenueMicros,
    this.clientAccountCrossSellUnitsSold,
    this.clientAccountLeadCostOfGoodsSoldMicros,
    this.clientAccountLeadGrossProfitMicros,
    this.clientAccountLeadRevenueMicros,
    this.clientAccountLeadUnitsSold,
    this.clientAccountViewThroughConversions,
    this.contentBudgetLostImpressionShare,
    this.contentImpressionShare,
    this.contentRankLostImpressionShare,
    this.conversionCustomMetrics,
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
    this.crossDeviceConversionsByConversionDate,
    this.crossDeviceConversionsValue,
    this.crossDeviceConversionsValueByConversionDate,
    this.crossSellCostOfGoodsSoldMicros,
    this.crossSellGrossProfitMicros,
    this.crossSellRevenueMicros,
    this.crossSellUnitsSold,
    this.ctr,
    this.generalInvalidClickRate,
    this.generalInvalidClicks,
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
    this.leadCostOfGoodsSoldMicros,
    this.leadGrossProfitMicros,
    this.leadRevenueMicros,
    this.leadUnitsSold,
    this.mobileFriendlyClicksPercentage,
    this.rawEventConversionMetrics,
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
    this.visits,
  });

  GoogleAdsSearchads360V0CommonMetrics.fromJson(core.Map json_)
    : this(
        absoluteTopImpressionPercentage:
            (json_['absoluteTopImpressionPercentage'] as core.num?)?.toDouble(),
        allConversions: (json_['allConversions'] as core.num?)?.toDouble(),
        allConversionsByConversionDate:
            (json_['allConversionsByConversionDate'] as core.num?)?.toDouble(),
        allConversionsFromClickToCall:
            (json_['allConversionsFromClickToCall'] as core.num?)?.toDouble(),
        allConversionsFromDirections:
            (json_['allConversionsFromDirections'] as core.num?)?.toDouble(),
        allConversionsFromInteractionsRate:
            (json_['allConversionsFromInteractionsRate'] as core.num?)
                ?.toDouble(),
        allConversionsFromInteractionsValuePerInteraction:
            (json_['allConversionsFromInteractionsValuePerInteraction']
                    as core.num?)
                ?.toDouble(),
        allConversionsFromMenu:
            (json_['allConversionsFromMenu'] as core.num?)?.toDouble(),
        allConversionsFromOrder:
            (json_['allConversionsFromOrder'] as core.num?)?.toDouble(),
        allConversionsFromOtherEngagement:
            (json_['allConversionsFromOtherEngagement'] as core.num?)
                ?.toDouble(),
        allConversionsFromStoreVisit:
            (json_['allConversionsFromStoreVisit'] as core.num?)?.toDouble(),
        allConversionsFromStoreWebsite:
            (json_['allConversionsFromStoreWebsite'] as core.num?)?.toDouble(),
        allConversionsValue:
            (json_['allConversionsValue'] as core.num?)?.toDouble(),
        allConversionsValueByConversionDate:
            (json_['allConversionsValueByConversionDate'] as core.num?)
                ?.toDouble(),
        allConversionsValuePerCost:
            (json_['allConversionsValuePerCost'] as core.num?)?.toDouble(),
        averageCost: (json_['averageCost'] as core.num?)?.toDouble(),
        averageCpc: (json_['averageCpc'] as core.num?)?.toDouble(),
        averageCpm: (json_['averageCpm'] as core.num?)?.toDouble(),
        averageQualityScore:
            (json_['averageQualityScore'] as core.num?)?.toDouble(),
        clicks: json_['clicks'] as core.String?,
        clientAccountConversions:
            (json_['clientAccountConversions'] as core.num?)?.toDouble(),
        clientAccountConversionsValue:
            (json_['clientAccountConversionsValue'] as core.num?)?.toDouble(),
        clientAccountCrossSellCostOfGoodsSoldMicros:
            json_['clientAccountCrossSellCostOfGoodsSoldMicros']
                as core.String?,
        clientAccountCrossSellGrossProfitMicros:
            json_['clientAccountCrossSellGrossProfitMicros'] as core.String?,
        clientAccountCrossSellRevenueMicros:
            json_['clientAccountCrossSellRevenueMicros'] as core.String?,
        clientAccountCrossSellUnitsSold:
            (json_['clientAccountCrossSellUnitsSold'] as core.num?)?.toDouble(),
        clientAccountLeadCostOfGoodsSoldMicros:
            json_['clientAccountLeadCostOfGoodsSoldMicros'] as core.String?,
        clientAccountLeadGrossProfitMicros:
            json_['clientAccountLeadGrossProfitMicros'] as core.String?,
        clientAccountLeadRevenueMicros:
            json_['clientAccountLeadRevenueMicros'] as core.String?,
        clientAccountLeadUnitsSold:
            (json_['clientAccountLeadUnitsSold'] as core.num?)?.toDouble(),
        clientAccountViewThroughConversions:
            json_['clientAccountViewThroughConversions'] as core.String?,
        contentBudgetLostImpressionShare:
            (json_['contentBudgetLostImpressionShare'] as core.num?)
                ?.toDouble(),
        contentImpressionShare:
            (json_['contentImpressionShare'] as core.num?)?.toDouble(),
        contentRankLostImpressionShare:
            (json_['contentRankLostImpressionShare'] as core.num?)?.toDouble(),
        conversionCustomMetrics:
            (json_['conversionCustomMetrics'] as core.List?)
                ?.map(
                  (value) => GoogleAdsSearchads360V0CommonValue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        conversions: (json_['conversions'] as core.num?)?.toDouble(),
        conversionsByConversionDate:
            (json_['conversionsByConversionDate'] as core.num?)?.toDouble(),
        conversionsFromInteractionsRate:
            (json_['conversionsFromInteractionsRate'] as core.num?)?.toDouble(),
        conversionsFromInteractionsValuePerInteraction:
            (json_['conversionsFromInteractionsValuePerInteraction']
                    as core.num?)
                ?.toDouble(),
        conversionsValue: (json_['conversionsValue'] as core.num?)?.toDouble(),
        conversionsValueByConversionDate:
            (json_['conversionsValueByConversionDate'] as core.num?)
                ?.toDouble(),
        conversionsValuePerCost:
            (json_['conversionsValuePerCost'] as core.num?)?.toDouble(),
        costMicros: json_['costMicros'] as core.String?,
        costPerAllConversions:
            (json_['costPerAllConversions'] as core.num?)?.toDouble(),
        costPerConversion:
            (json_['costPerConversion'] as core.num?)?.toDouble(),
        costPerCurrentModelAttributedConversion:
            (json_['costPerCurrentModelAttributedConversion'] as core.num?)
                ?.toDouble(),
        crossDeviceConversions:
            (json_['crossDeviceConversions'] as core.num?)?.toDouble(),
        crossDeviceConversionsByConversionDate:
            (json_['crossDeviceConversionsByConversionDate'] as core.num?)
                ?.toDouble(),
        crossDeviceConversionsValue:
            (json_['crossDeviceConversionsValue'] as core.num?)?.toDouble(),
        crossDeviceConversionsValueByConversionDate:
            (json_['crossDeviceConversionsValueByConversionDate'] as core.num?)
                ?.toDouble(),
        crossSellCostOfGoodsSoldMicros:
            json_['crossSellCostOfGoodsSoldMicros'] as core.String?,
        crossSellGrossProfitMicros:
            json_['crossSellGrossProfitMicros'] as core.String?,
        crossSellRevenueMicros: json_['crossSellRevenueMicros'] as core.String?,
        crossSellUnitsSold:
            (json_['crossSellUnitsSold'] as core.num?)?.toDouble(),
        ctr: (json_['ctr'] as core.num?)?.toDouble(),
        generalInvalidClickRate:
            (json_['generalInvalidClickRate'] as core.num?)?.toDouble(),
        generalInvalidClicks: json_['generalInvalidClicks'] as core.String?,
        historicalCreativeQualityScore:
            json_['historicalCreativeQualityScore'] as core.String?,
        historicalLandingPageQualityScore:
            json_['historicalLandingPageQualityScore'] as core.String?,
        historicalQualityScore: json_['historicalQualityScore'] as core.String?,
        historicalSearchPredictedCtr:
            json_['historicalSearchPredictedCtr'] as core.String?,
        impressions: json_['impressions'] as core.String?,
        interactionEventTypes:
            (json_['interactionEventTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        interactionRate: (json_['interactionRate'] as core.num?)?.toDouble(),
        interactions: json_['interactions'] as core.String?,
        invalidClickRate: (json_['invalidClickRate'] as core.num?)?.toDouble(),
        invalidClicks: json_['invalidClicks'] as core.String?,
        leadCostOfGoodsSoldMicros:
            json_['leadCostOfGoodsSoldMicros'] as core.String?,
        leadGrossProfitMicros: json_['leadGrossProfitMicros'] as core.String?,
        leadRevenueMicros: json_['leadRevenueMicros'] as core.String?,
        leadUnitsSold: (json_['leadUnitsSold'] as core.num?)?.toDouble(),
        mobileFriendlyClicksPercentage:
            (json_['mobileFriendlyClicksPercentage'] as core.num?)?.toDouble(),
        rawEventConversionMetrics:
            (json_['rawEventConversionMetrics'] as core.List?)
                ?.map(
                  (value) => GoogleAdsSearchads360V0CommonValue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        searchAbsoluteTopImpressionShare:
            (json_['searchAbsoluteTopImpressionShare'] as core.num?)
                ?.toDouble(),
        searchBudgetLostAbsoluteTopImpressionShare:
            (json_['searchBudgetLostAbsoluteTopImpressionShare'] as core.num?)
                ?.toDouble(),
        searchBudgetLostImpressionShare:
            (json_['searchBudgetLostImpressionShare'] as core.num?)?.toDouble(),
        searchBudgetLostTopImpressionShare:
            (json_['searchBudgetLostTopImpressionShare'] as core.num?)
                ?.toDouble(),
        searchClickShare: (json_['searchClickShare'] as core.num?)?.toDouble(),
        searchExactMatchImpressionShare:
            (json_['searchExactMatchImpressionShare'] as core.num?)?.toDouble(),
        searchImpressionShare:
            (json_['searchImpressionShare'] as core.num?)?.toDouble(),
        searchRankLostAbsoluteTopImpressionShare:
            (json_['searchRankLostAbsoluteTopImpressionShare'] as core.num?)
                ?.toDouble(),
        searchRankLostImpressionShare:
            (json_['searchRankLostImpressionShare'] as core.num?)?.toDouble(),
        searchRankLostTopImpressionShare:
            (json_['searchRankLostTopImpressionShare'] as core.num?)
                ?.toDouble(),
        searchTopImpressionShare:
            (json_['searchTopImpressionShare'] as core.num?)?.toDouble(),
        topImpressionPercentage:
            (json_['topImpressionPercentage'] as core.num?)?.toDouble(),
        valuePerAllConversions:
            (json_['valuePerAllConversions'] as core.num?)?.toDouble(),
        valuePerAllConversionsByConversionDate:
            (json_['valuePerAllConversionsByConversionDate'] as core.num?)
                ?.toDouble(),
        valuePerConversion:
            (json_['valuePerConversion'] as core.num?)?.toDouble(),
        valuePerConversionsByConversionDate:
            (json_['valuePerConversionsByConversionDate'] as core.num?)
                ?.toDouble(),
        visits: (json_['visits'] as core.num?)?.toDouble(),
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
      'allConversionsFromInteractionsRate': allConversionsFromInteractionsRate!,
    if (allConversionsFromInteractionsValuePerInteraction != null)
      'allConversionsFromInteractionsValuePerInteraction':
          allConversionsFromInteractionsValuePerInteraction!,
    if (allConversionsFromMenu != null)
      'allConversionsFromMenu': allConversionsFromMenu!,
    if (allConversionsFromOrder != null)
      'allConversionsFromOrder': allConversionsFromOrder!,
    if (allConversionsFromOtherEngagement != null)
      'allConversionsFromOtherEngagement': allConversionsFromOtherEngagement!,
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
    if (averageQualityScore != null)
      'averageQualityScore': averageQualityScore!,
    if (clicks != null) 'clicks': clicks!,
    if (clientAccountConversions != null)
      'clientAccountConversions': clientAccountConversions!,
    if (clientAccountConversionsValue != null)
      'clientAccountConversionsValue': clientAccountConversionsValue!,
    if (clientAccountCrossSellCostOfGoodsSoldMicros != null)
      'clientAccountCrossSellCostOfGoodsSoldMicros':
          clientAccountCrossSellCostOfGoodsSoldMicros!,
    if (clientAccountCrossSellGrossProfitMicros != null)
      'clientAccountCrossSellGrossProfitMicros':
          clientAccountCrossSellGrossProfitMicros!,
    if (clientAccountCrossSellRevenueMicros != null)
      'clientAccountCrossSellRevenueMicros':
          clientAccountCrossSellRevenueMicros!,
    if (clientAccountCrossSellUnitsSold != null)
      'clientAccountCrossSellUnitsSold': clientAccountCrossSellUnitsSold!,
    if (clientAccountLeadCostOfGoodsSoldMicros != null)
      'clientAccountLeadCostOfGoodsSoldMicros':
          clientAccountLeadCostOfGoodsSoldMicros!,
    if (clientAccountLeadGrossProfitMicros != null)
      'clientAccountLeadGrossProfitMicros': clientAccountLeadGrossProfitMicros!,
    if (clientAccountLeadRevenueMicros != null)
      'clientAccountLeadRevenueMicros': clientAccountLeadRevenueMicros!,
    if (clientAccountLeadUnitsSold != null)
      'clientAccountLeadUnitsSold': clientAccountLeadUnitsSold!,
    if (clientAccountViewThroughConversions != null)
      'clientAccountViewThroughConversions':
          clientAccountViewThroughConversions!,
    if (contentBudgetLostImpressionShare != null)
      'contentBudgetLostImpressionShare': contentBudgetLostImpressionShare!,
    if (contentImpressionShare != null)
      'contentImpressionShare': contentImpressionShare!,
    if (contentRankLostImpressionShare != null)
      'contentRankLostImpressionShare': contentRankLostImpressionShare!,
    if (conversionCustomMetrics != null)
      'conversionCustomMetrics': conversionCustomMetrics!,
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
    if (crossDeviceConversionsByConversionDate != null)
      'crossDeviceConversionsByConversionDate':
          crossDeviceConversionsByConversionDate!,
    if (crossDeviceConversionsValue != null)
      'crossDeviceConversionsValue': crossDeviceConversionsValue!,
    if (crossDeviceConversionsValueByConversionDate != null)
      'crossDeviceConversionsValueByConversionDate':
          crossDeviceConversionsValueByConversionDate!,
    if (crossSellCostOfGoodsSoldMicros != null)
      'crossSellCostOfGoodsSoldMicros': crossSellCostOfGoodsSoldMicros!,
    if (crossSellGrossProfitMicros != null)
      'crossSellGrossProfitMicros': crossSellGrossProfitMicros!,
    if (crossSellRevenueMicros != null)
      'crossSellRevenueMicros': crossSellRevenueMicros!,
    if (crossSellUnitsSold != null) 'crossSellUnitsSold': crossSellUnitsSold!,
    if (ctr != null) 'ctr': ctr!,
    if (generalInvalidClickRate != null)
      'generalInvalidClickRate': generalInvalidClickRate!,
    if (generalInvalidClicks != null)
      'generalInvalidClicks': generalInvalidClicks!,
    if (historicalCreativeQualityScore != null)
      'historicalCreativeQualityScore': historicalCreativeQualityScore!,
    if (historicalLandingPageQualityScore != null)
      'historicalLandingPageQualityScore': historicalLandingPageQualityScore!,
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
    if (leadCostOfGoodsSoldMicros != null)
      'leadCostOfGoodsSoldMicros': leadCostOfGoodsSoldMicros!,
    if (leadGrossProfitMicros != null)
      'leadGrossProfitMicros': leadGrossProfitMicros!,
    if (leadRevenueMicros != null) 'leadRevenueMicros': leadRevenueMicros!,
    if (leadUnitsSold != null) 'leadUnitsSold': leadUnitsSold!,
    if (mobileFriendlyClicksPercentage != null)
      'mobileFriendlyClicksPercentage': mobileFriendlyClicksPercentage!,
    if (rawEventConversionMetrics != null)
      'rawEventConversionMetrics': rawEventConversionMetrics!,
    if (searchAbsoluteTopImpressionShare != null)
      'searchAbsoluteTopImpressionShare': searchAbsoluteTopImpressionShare!,
    if (searchBudgetLostAbsoluteTopImpressionShare != null)
      'searchBudgetLostAbsoluteTopImpressionShare':
          searchBudgetLostAbsoluteTopImpressionShare!,
    if (searchBudgetLostImpressionShare != null)
      'searchBudgetLostImpressionShare': searchBudgetLostImpressionShare!,
    if (searchBudgetLostTopImpressionShare != null)
      'searchBudgetLostTopImpressionShare': searchBudgetLostTopImpressionShare!,
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
    if (valuePerConversion != null) 'valuePerConversion': valuePerConversion!,
    if (valuePerConversionsByConversionDate != null)
      'valuePerConversionsByConversionDate':
          valuePerConversionsByConversionDate!,
    if (visits != null) 'visits': visits!,
  };
}

/// An asset representing a mobile app.
class GoogleAdsSearchads360V0CommonMobileAppAsset {
  /// A string that uniquely identifies a mobile application.
  ///
  /// It should just contain the platform native id, like "com.android.ebay" for
  /// Android or "12345689" for iOS.
  ///
  /// Required.
  core.String? appId;

  /// The application store that distributes this specific app.
  ///
  /// Required.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "APPLE_APP_STORE" : Mobile app vendor for Apple app store.
  /// - "GOOGLE_APP_STORE" : Mobile app vendor for Google app store.
  core.String? appStore;

  GoogleAdsSearchads360V0CommonMobileAppAsset({this.appId, this.appStore});

  GoogleAdsSearchads360V0CommonMobileAppAsset.fromJson(core.Map json_)
    : this(
        appId: json_['appId'] as core.String?,
        appStore: json_['appStore'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appId != null) 'appId': appId!,
    if (appStore != null) 'appStore': appStore!,
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
        cpcBidCeilingMicros: json_['cpcBidCeilingMicros'] as core.String?,
        enhancedCpcEnabled: json_['enhancedCpcEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cpcBidCeilingMicros != null)
      'cpcBidCeilingMicros': cpcBidCeilingMicros!,
    if (enhancedCpcEnabled != null) 'enhancedCpcEnabled': enhancedCpcEnabled!,
  };
}

/// Settings for Real-Time Bidding, a feature only available for campaigns
/// targeting the Ad Exchange network.
class GoogleAdsSearchads360V0CommonRealTimeBiddingSetting {
  /// Whether the campaign is opted in to real-time bidding.
  core.bool? optIn;

  GoogleAdsSearchads360V0CommonRealTimeBiddingSetting({this.optIn});

  GoogleAdsSearchads360V0CommonRealTimeBiddingSetting.fromJson(core.Map json_)
    : this(optIn: json_['optIn'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (optIn != null) 'optIn': optIn!,
  };
}

/// An expanded dynamic search ad.
class GoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo {
  /// The tracking id of the ad.
  core.String? adTrackingId;

  /// The first line of the ad's description.
  core.String? description1;

  /// The second line of the ad's description.
  core.String? description2;

  GoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo({
    this.adTrackingId,
    this.description1,
    this.description2,
  });

  GoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo.fromJson(
    core.Map json_,
  ) : this(
        adTrackingId: json_['adTrackingId'] as core.String?,
        description1: json_['description1'] as core.String?,
        description2: json_['description2'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adTrackingId != null) 'adTrackingId': adTrackingId!,
    if (description1 != null) 'description1': description1!,
    if (description2 != null) 'description2': description2!,
  };
}

/// A Search Ads 360 expanded text ad.
class GoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo {
  /// The tracking id of the ad.
  core.String? adTrackingId;

  /// The first line of the ad's description.
  core.String? description1;

  /// The second line of the ad's description.
  core.String? description2;

  /// The headline of the ad.
  core.String? headline;

  /// The second headline of the ad.
  core.String? headline2;

  /// The third headline of the ad.
  core.String? headline3;

  /// Text appended to the auto-generated visible URL with a delimiter.
  core.String? path1;

  /// Text appended to path1 with a delimiter.
  core.String? path2;

  GoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo({
    this.adTrackingId,
    this.description1,
    this.description2,
    this.headline,
    this.headline2,
    this.headline3,
    this.path1,
    this.path2,
  });

  GoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo.fromJson(
    core.Map json_,
  ) : this(
        adTrackingId: json_['adTrackingId'] as core.String?,
        description1: json_['description1'] as core.String?,
        description2: json_['description2'] as core.String?,
        headline: json_['headline'] as core.String?,
        headline2: json_['headline2'] as core.String?,
        headline3: json_['headline3'] as core.String?,
        path1: json_['path1'] as core.String?,
        path2: json_['path2'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adTrackingId != null) 'adTrackingId': adTrackingId!,
    if (description1 != null) 'description1': description1!,
    if (description2 != null) 'description2': description2!,
    if (headline != null) 'headline': headline!,
    if (headline2 != null) 'headline2': headline2!,
    if (headline3 != null) 'headline3': headline3!,
    if (path1 != null) 'path1': path1!,
    if (path2 != null) 'path2': path2!,
  };
}

/// A Search Ads 360 product ad.
typedef GoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo = $Empty;

/// A Search Ads 360 responsive search ad.
class GoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo {
  /// The tracking id of the ad.
  core.String? adTrackingId;

  /// List of text assets for descriptions.
  ///
  /// When the ad serves the descriptions will be selected from this list.
  core.List<GoogleAdsSearchads360V0CommonAdTextAsset>? descriptions;

  /// List of text assets for headlines.
  ///
  /// When the ad serves the headlines will be selected from this list.
  core.List<GoogleAdsSearchads360V0CommonAdTextAsset>? headlines;

  /// Text appended to the auto-generated visible URL with a delimiter.
  core.String? path1;

  /// Text appended to path1 with a delimiter.
  core.String? path2;

  GoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo({
    this.adTrackingId,
    this.descriptions,
    this.headlines,
    this.path1,
    this.path2,
  });

  GoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo.fromJson(
    core.Map json_,
  ) : this(
        adTrackingId: json_['adTrackingId'] as core.String?,
        descriptions:
            (json_['descriptions'] as core.List?)
                ?.map(
                  (value) => GoogleAdsSearchads360V0CommonAdTextAsset.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        headlines:
            (json_['headlines'] as core.List?)
                ?.map(
                  (value) => GoogleAdsSearchads360V0CommonAdTextAsset.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        path1: json_['path1'] as core.String?,
        path2: json_['path2'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adTrackingId != null) 'adTrackingId': adTrackingId!,
    if (descriptions != null) 'descriptions': descriptions!,
    if (headlines != null) 'headlines': headlines!,
    if (path1 != null) 'path1': path1!,
    if (path2 != null) 'path2': path2!,
  };
}

/// A Search Ads 360 text ad.
class GoogleAdsSearchads360V0CommonSearchAds360TextAdInfo {
  /// The tracking id of the ad.
  core.String? adTrackingId;

  /// The first line of the ad's description.
  core.String? description1;

  /// The second line of the ad's description.
  core.String? description2;

  /// The displayed mobile URL of the ad.
  core.String? displayMobileUrl;

  /// The displayed URL of the ad.
  core.String? displayUrl;

  /// The headline of the ad.
  core.String? headline;

  GoogleAdsSearchads360V0CommonSearchAds360TextAdInfo({
    this.adTrackingId,
    this.description1,
    this.description2,
    this.displayMobileUrl,
    this.displayUrl,
    this.headline,
  });

  GoogleAdsSearchads360V0CommonSearchAds360TextAdInfo.fromJson(core.Map json_)
    : this(
        adTrackingId: json_['adTrackingId'] as core.String?,
        description1: json_['description1'] as core.String?,
        description2: json_['description2'] as core.String?,
        displayMobileUrl: json_['displayMobileUrl'] as core.String?,
        displayUrl: json_['displayUrl'] as core.String?,
        headline: json_['headline'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adTrackingId != null) 'adTrackingId': adTrackingId!,
    if (description1 != null) 'description1': description1!,
    if (description2 != null) 'description2': description2!,
    if (displayMobileUrl != null) 'displayMobileUrl': displayMobileUrl!,
    if (displayUrl != null) 'displayUrl': displayUrl!,
    if (headline != null) 'headline': headline!,
  };
}

/// Segment only fields.
class GoogleAdsSearchads360V0CommonSegments {
  /// Ad network type.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : The value is unknown in this version.
  /// - "SEARCH" : Google search.
  /// - "SEARCH_PARTNERS" : Search partners.
  /// - "CONTENT" : Display Network.
  /// - "YOUTUBE_SEARCH" : YouTube Search.
  /// - "YOUTUBE_WATCH" : YouTube Videos
  /// - "MIXED" : Cross-network.
  core.String? adNetworkType;

  /// Only used with CustomerAsset, CampaignAsset and AdGroupAsset metrics.
  ///
  /// Indicates whether the interaction metrics occurred on the asset itself or
  /// a different asset or ad unit. Interactions (for example, clicks) are
  /// counted across all the parts of the served ad (for example, Ad itself and
  /// other components like Sitelinks) when they are served together. When
  /// interaction_on_this_asset is true, it means the interactions are on this
  /// specific asset and when interaction_on_this_asset is false, it means the
  /// interactions is not on this specific asset but on other parts of the
  /// served ad this asset is served with.
  GoogleAdsSearchads360V0CommonAssetInteractionTarget? assetInteractionTarget;

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

  /// The conversion custom dimensions.
  core.List<GoogleAdsSearchads360V0CommonValue>? conversionCustomDimensions;

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

  /// Resource name of the geo target constant that represents a city.
  core.String? geoTargetCity;

  /// Resource name of the geo target constant that represents a country.
  core.String? geoTargetCountry;

  /// Resource name of the geo target constant that represents a metro.
  core.String? geoTargetMetro;

  /// Resource name of the geo target constant that represents a region.
  core.String? geoTargetRegion;

  /// Hour of day as a number between 0 and 23, inclusive.
  core.int? hour;

  /// Keyword criterion.
  GoogleAdsSearchads360V0CommonKeyword? keyword;

  /// Month as represented by the date of the first day of a month.
  ///
  /// Formatted as yyyy-MM-dd.
  core.String? month;

  /// Bidding category (level 1) of the product.
  core.String? productBiddingCategoryLevel1;

  /// Bidding category (level 2) of the product.
  core.String? productBiddingCategoryLevel2;

  /// Bidding category (level 3) of the product.
  core.String? productBiddingCategoryLevel3;

  /// Bidding category (level 4) of the product.
  core.String? productBiddingCategoryLevel4;

  /// Bidding category (level 5) of the product.
  core.String? productBiddingCategoryLevel5;

  /// Brand of the product.
  core.String? productBrand;

  /// Channel of the product.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "ONLINE" : The item is sold online.
  /// - "LOCAL" : The item is sold in local stores.
  core.String? productChannel;

  /// Channel exclusivity of the product.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "SINGLE_CHANNEL" : The item is sold through one channel only, either
  /// local stores or online as indicated by its ProductChannel.
  /// - "MULTI_CHANNEL" : The item is matched to its online or local stores
  /// counterpart, indicating it is available for purchase in both
  /// ShoppingProductChannels.
  core.String? productChannelExclusivity;

  /// Condition of the product.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "OLD" : The product condition is old.
  /// - "NEW" : The product condition is new.
  /// - "REFURBISHED" : The product condition is refurbished.
  /// - "USED" : The product condition is used.
  core.String? productCondition;

  /// Resource name of the geo target constant for the country of sale of the
  /// product.
  core.String? productCountry;

  /// Custom attribute 0 of the product.
  core.String? productCustomAttribute0;

  /// Custom attribute 1 of the product.
  core.String? productCustomAttribute1;

  /// Custom attribute 2 of the product.
  core.String? productCustomAttribute2;

  /// Custom attribute 3 of the product.
  core.String? productCustomAttribute3;

  /// Custom attribute 4 of the product.
  core.String? productCustomAttribute4;

  /// Item ID of the product.
  core.String? productItemId;

  /// Resource name of the language constant for the language of the product.
  core.String? productLanguage;

  /// Bidding category (level 1) of the product sold.
  core.String? productSoldBiddingCategoryLevel1;

  /// Bidding category (level 2) of the product sold.
  core.String? productSoldBiddingCategoryLevel2;

  /// Bidding category (level 3) of the product sold.
  core.String? productSoldBiddingCategoryLevel3;

  /// Bidding category (level 4) of the product sold.
  core.String? productSoldBiddingCategoryLevel4;

  /// Bidding category (level 5) of the product sold.
  core.String? productSoldBiddingCategoryLevel5;

  /// Brand of the product sold.
  core.String? productSoldBrand;

  /// Condition of the product sold.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "OLD" : The product condition is old.
  /// - "NEW" : The product condition is new.
  /// - "REFURBISHED" : The product condition is refurbished.
  /// - "USED" : The product condition is used.
  core.String? productSoldCondition;

  /// Custom attribute 0 of the product sold.
  core.String? productSoldCustomAttribute0;

  /// Custom attribute 1 of the product sold.
  core.String? productSoldCustomAttribute1;

  /// Custom attribute 2 of the product sold.
  core.String? productSoldCustomAttribute2;

  /// Custom attribute 3 of the product sold.
  core.String? productSoldCustomAttribute3;

  /// Custom attribute 4 of the product sold.
  core.String? productSoldCustomAttribute4;

  /// Item ID of the product sold.
  core.String? productSoldItemId;

  /// Title of the product sold.
  core.String? productSoldTitle;

  /// Type (level 1) of the product sold.
  core.String? productSoldTypeL1;

  /// Type (level 2) of the product sold.
  core.String? productSoldTypeL2;

  /// Type (level 3) of the product sold.
  core.String? productSoldTypeL3;

  /// Type (level 4) of the product sold.
  core.String? productSoldTypeL4;

  /// Type (level 5) of the product sold.
  core.String? productSoldTypeL5;

  /// Store ID of the product.
  core.String? productStoreId;

  /// Title of the product.
  core.String? productTitle;

  /// Type (level 1) of the product.
  core.String? productTypeL1;

  /// Type (level 2) of the product.
  core.String? productTypeL2;

  /// Type (level 3) of the product.
  core.String? productTypeL3;

  /// Type (level 4) of the product.
  core.String? productTypeL4;

  /// Type (level 5) of the product.
  core.String? productTypeL5;

  /// Quarter as represented by the date of the first day of a quarter.
  ///
  /// Uses the calendar year for quarters, for example, the second quarter of
  /// 2018 starts on 2018-04-01. Formatted as yyyy-MM-dd.
  core.String? quarter;

  /// The raw event conversion dimensions.
  core.List<GoogleAdsSearchads360V0CommonValue>? rawEventConversionDimensions;

  /// Week as defined as Monday through Sunday, and represented by the date of
  /// Monday.
  ///
  /// Formatted as yyyy-MM-dd.
  core.String? week;

  /// Year, formatted as yyyy.
  core.int? year;

  GoogleAdsSearchads360V0CommonSegments({
    this.adNetworkType,
    this.assetInteractionTarget,
    this.conversionAction,
    this.conversionActionCategory,
    this.conversionActionName,
    this.conversionCustomDimensions,
    this.date,
    this.dayOfWeek,
    this.device,
    this.geoTargetCity,
    this.geoTargetCountry,
    this.geoTargetMetro,
    this.geoTargetRegion,
    this.hour,
    this.keyword,
    this.month,
    this.productBiddingCategoryLevel1,
    this.productBiddingCategoryLevel2,
    this.productBiddingCategoryLevel3,
    this.productBiddingCategoryLevel4,
    this.productBiddingCategoryLevel5,
    this.productBrand,
    this.productChannel,
    this.productChannelExclusivity,
    this.productCondition,
    this.productCountry,
    this.productCustomAttribute0,
    this.productCustomAttribute1,
    this.productCustomAttribute2,
    this.productCustomAttribute3,
    this.productCustomAttribute4,
    this.productItemId,
    this.productLanguage,
    this.productSoldBiddingCategoryLevel1,
    this.productSoldBiddingCategoryLevel2,
    this.productSoldBiddingCategoryLevel3,
    this.productSoldBiddingCategoryLevel4,
    this.productSoldBiddingCategoryLevel5,
    this.productSoldBrand,
    this.productSoldCondition,
    this.productSoldCustomAttribute0,
    this.productSoldCustomAttribute1,
    this.productSoldCustomAttribute2,
    this.productSoldCustomAttribute3,
    this.productSoldCustomAttribute4,
    this.productSoldItemId,
    this.productSoldTitle,
    this.productSoldTypeL1,
    this.productSoldTypeL2,
    this.productSoldTypeL3,
    this.productSoldTypeL4,
    this.productSoldTypeL5,
    this.productStoreId,
    this.productTitle,
    this.productTypeL1,
    this.productTypeL2,
    this.productTypeL3,
    this.productTypeL4,
    this.productTypeL5,
    this.quarter,
    this.rawEventConversionDimensions,
    this.week,
    this.year,
  });

  GoogleAdsSearchads360V0CommonSegments.fromJson(core.Map json_)
    : this(
        adNetworkType: json_['adNetworkType'] as core.String?,
        assetInteractionTarget:
            json_.containsKey('assetInteractionTarget')
                ? GoogleAdsSearchads360V0CommonAssetInteractionTarget.fromJson(
                  json_['assetInteractionTarget']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        conversionAction: json_['conversionAction'] as core.String?,
        conversionActionCategory:
            json_['conversionActionCategory'] as core.String?,
        conversionActionName: json_['conversionActionName'] as core.String?,
        conversionCustomDimensions:
            (json_['conversionCustomDimensions'] as core.List?)
                ?.map(
                  (value) => GoogleAdsSearchads360V0CommonValue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        date: json_['date'] as core.String?,
        dayOfWeek: json_['dayOfWeek'] as core.String?,
        device: json_['device'] as core.String?,
        geoTargetCity: json_['geoTargetCity'] as core.String?,
        geoTargetCountry: json_['geoTargetCountry'] as core.String?,
        geoTargetMetro: json_['geoTargetMetro'] as core.String?,
        geoTargetRegion: json_['geoTargetRegion'] as core.String?,
        hour: json_['hour'] as core.int?,
        keyword:
            json_.containsKey('keyword')
                ? GoogleAdsSearchads360V0CommonKeyword.fromJson(
                  json_['keyword'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        month: json_['month'] as core.String?,
        productBiddingCategoryLevel1:
            json_['productBiddingCategoryLevel1'] as core.String?,
        productBiddingCategoryLevel2:
            json_['productBiddingCategoryLevel2'] as core.String?,
        productBiddingCategoryLevel3:
            json_['productBiddingCategoryLevel3'] as core.String?,
        productBiddingCategoryLevel4:
            json_['productBiddingCategoryLevel4'] as core.String?,
        productBiddingCategoryLevel5:
            json_['productBiddingCategoryLevel5'] as core.String?,
        productBrand: json_['productBrand'] as core.String?,
        productChannel: json_['productChannel'] as core.String?,
        productChannelExclusivity:
            json_['productChannelExclusivity'] as core.String?,
        productCondition: json_['productCondition'] as core.String?,
        productCountry: json_['productCountry'] as core.String?,
        productCustomAttribute0:
            json_['productCustomAttribute0'] as core.String?,
        productCustomAttribute1:
            json_['productCustomAttribute1'] as core.String?,
        productCustomAttribute2:
            json_['productCustomAttribute2'] as core.String?,
        productCustomAttribute3:
            json_['productCustomAttribute3'] as core.String?,
        productCustomAttribute4:
            json_['productCustomAttribute4'] as core.String?,
        productItemId: json_['productItemId'] as core.String?,
        productLanguage: json_['productLanguage'] as core.String?,
        productSoldBiddingCategoryLevel1:
            json_['productSoldBiddingCategoryLevel1'] as core.String?,
        productSoldBiddingCategoryLevel2:
            json_['productSoldBiddingCategoryLevel2'] as core.String?,
        productSoldBiddingCategoryLevel3:
            json_['productSoldBiddingCategoryLevel3'] as core.String?,
        productSoldBiddingCategoryLevel4:
            json_['productSoldBiddingCategoryLevel4'] as core.String?,
        productSoldBiddingCategoryLevel5:
            json_['productSoldBiddingCategoryLevel5'] as core.String?,
        productSoldBrand: json_['productSoldBrand'] as core.String?,
        productSoldCondition: json_['productSoldCondition'] as core.String?,
        productSoldCustomAttribute0:
            json_['productSoldCustomAttribute0'] as core.String?,
        productSoldCustomAttribute1:
            json_['productSoldCustomAttribute1'] as core.String?,
        productSoldCustomAttribute2:
            json_['productSoldCustomAttribute2'] as core.String?,
        productSoldCustomAttribute3:
            json_['productSoldCustomAttribute3'] as core.String?,
        productSoldCustomAttribute4:
            json_['productSoldCustomAttribute4'] as core.String?,
        productSoldItemId: json_['productSoldItemId'] as core.String?,
        productSoldTitle: json_['productSoldTitle'] as core.String?,
        productSoldTypeL1: json_['productSoldTypeL1'] as core.String?,
        productSoldTypeL2: json_['productSoldTypeL2'] as core.String?,
        productSoldTypeL3: json_['productSoldTypeL3'] as core.String?,
        productSoldTypeL4: json_['productSoldTypeL4'] as core.String?,
        productSoldTypeL5: json_['productSoldTypeL5'] as core.String?,
        productStoreId: json_['productStoreId'] as core.String?,
        productTitle: json_['productTitle'] as core.String?,
        productTypeL1: json_['productTypeL1'] as core.String?,
        productTypeL2: json_['productTypeL2'] as core.String?,
        productTypeL3: json_['productTypeL3'] as core.String?,
        productTypeL4: json_['productTypeL4'] as core.String?,
        productTypeL5: json_['productTypeL5'] as core.String?,
        quarter: json_['quarter'] as core.String?,
        rawEventConversionDimensions:
            (json_['rawEventConversionDimensions'] as core.List?)
                ?.map(
                  (value) => GoogleAdsSearchads360V0CommonValue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        week: json_['week'] as core.String?,
        year: json_['year'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adNetworkType != null) 'adNetworkType': adNetworkType!,
    if (assetInteractionTarget != null)
      'assetInteractionTarget': assetInteractionTarget!,
    if (conversionAction != null) 'conversionAction': conversionAction!,
    if (conversionActionCategory != null)
      'conversionActionCategory': conversionActionCategory!,
    if (conversionActionName != null)
      'conversionActionName': conversionActionName!,
    if (conversionCustomDimensions != null)
      'conversionCustomDimensions': conversionCustomDimensions!,
    if (date != null) 'date': date!,
    if (dayOfWeek != null) 'dayOfWeek': dayOfWeek!,
    if (device != null) 'device': device!,
    if (geoTargetCity != null) 'geoTargetCity': geoTargetCity!,
    if (geoTargetCountry != null) 'geoTargetCountry': geoTargetCountry!,
    if (geoTargetMetro != null) 'geoTargetMetro': geoTargetMetro!,
    if (geoTargetRegion != null) 'geoTargetRegion': geoTargetRegion!,
    if (hour != null) 'hour': hour!,
    if (keyword != null) 'keyword': keyword!,
    if (month != null) 'month': month!,
    if (productBiddingCategoryLevel1 != null)
      'productBiddingCategoryLevel1': productBiddingCategoryLevel1!,
    if (productBiddingCategoryLevel2 != null)
      'productBiddingCategoryLevel2': productBiddingCategoryLevel2!,
    if (productBiddingCategoryLevel3 != null)
      'productBiddingCategoryLevel3': productBiddingCategoryLevel3!,
    if (productBiddingCategoryLevel4 != null)
      'productBiddingCategoryLevel4': productBiddingCategoryLevel4!,
    if (productBiddingCategoryLevel5 != null)
      'productBiddingCategoryLevel5': productBiddingCategoryLevel5!,
    if (productBrand != null) 'productBrand': productBrand!,
    if (productChannel != null) 'productChannel': productChannel!,
    if (productChannelExclusivity != null)
      'productChannelExclusivity': productChannelExclusivity!,
    if (productCondition != null) 'productCondition': productCondition!,
    if (productCountry != null) 'productCountry': productCountry!,
    if (productCustomAttribute0 != null)
      'productCustomAttribute0': productCustomAttribute0!,
    if (productCustomAttribute1 != null)
      'productCustomAttribute1': productCustomAttribute1!,
    if (productCustomAttribute2 != null)
      'productCustomAttribute2': productCustomAttribute2!,
    if (productCustomAttribute3 != null)
      'productCustomAttribute3': productCustomAttribute3!,
    if (productCustomAttribute4 != null)
      'productCustomAttribute4': productCustomAttribute4!,
    if (productItemId != null) 'productItemId': productItemId!,
    if (productLanguage != null) 'productLanguage': productLanguage!,
    if (productSoldBiddingCategoryLevel1 != null)
      'productSoldBiddingCategoryLevel1': productSoldBiddingCategoryLevel1!,
    if (productSoldBiddingCategoryLevel2 != null)
      'productSoldBiddingCategoryLevel2': productSoldBiddingCategoryLevel2!,
    if (productSoldBiddingCategoryLevel3 != null)
      'productSoldBiddingCategoryLevel3': productSoldBiddingCategoryLevel3!,
    if (productSoldBiddingCategoryLevel4 != null)
      'productSoldBiddingCategoryLevel4': productSoldBiddingCategoryLevel4!,
    if (productSoldBiddingCategoryLevel5 != null)
      'productSoldBiddingCategoryLevel5': productSoldBiddingCategoryLevel5!,
    if (productSoldBrand != null) 'productSoldBrand': productSoldBrand!,
    if (productSoldCondition != null)
      'productSoldCondition': productSoldCondition!,
    if (productSoldCustomAttribute0 != null)
      'productSoldCustomAttribute0': productSoldCustomAttribute0!,
    if (productSoldCustomAttribute1 != null)
      'productSoldCustomAttribute1': productSoldCustomAttribute1!,
    if (productSoldCustomAttribute2 != null)
      'productSoldCustomAttribute2': productSoldCustomAttribute2!,
    if (productSoldCustomAttribute3 != null)
      'productSoldCustomAttribute3': productSoldCustomAttribute3!,
    if (productSoldCustomAttribute4 != null)
      'productSoldCustomAttribute4': productSoldCustomAttribute4!,
    if (productSoldItemId != null) 'productSoldItemId': productSoldItemId!,
    if (productSoldTitle != null) 'productSoldTitle': productSoldTitle!,
    if (productSoldTypeL1 != null) 'productSoldTypeL1': productSoldTypeL1!,
    if (productSoldTypeL2 != null) 'productSoldTypeL2': productSoldTypeL2!,
    if (productSoldTypeL3 != null) 'productSoldTypeL3': productSoldTypeL3!,
    if (productSoldTypeL4 != null) 'productSoldTypeL4': productSoldTypeL4!,
    if (productSoldTypeL5 != null) 'productSoldTypeL5': productSoldTypeL5!,
    if (productStoreId != null) 'productStoreId': productStoreId!,
    if (productTitle != null) 'productTitle': productTitle!,
    if (productTypeL1 != null) 'productTypeL1': productTypeL1!,
    if (productTypeL2 != null) 'productTypeL2': productTypeL2!,
    if (productTypeL3 != null) 'productTypeL3': productTypeL3!,
    if (productTypeL4 != null) 'productTypeL4': productTypeL4!,
    if (productTypeL5 != null) 'productTypeL5': productTypeL5!,
    if (quarter != null) 'quarter': quarter!,
    if (rawEventConversionDimensions != null)
      'rawEventConversionDimensions': rawEventConversionDimensions!,
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
        cpcBidCeilingMicros: json_['cpcBidCeilingMicros'] as core.String?,
        cpcBidFloorMicros: json_['cpcBidFloorMicros'] as core.String?,
        targetCpaMicros: json_['targetCpaMicros'] as core.String?,
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
        cpcBidCeilingMicros: json_['cpcBidCeilingMicros'] as core.String?,
        location: json_['location'] as core.String?,
        locationFractionMicros: json_['locationFractionMicros'] as core.String?,
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

  GoogleAdsSearchads360V0CommonTargetOutrankShare({this.cpcBidCeilingMicros});

  GoogleAdsSearchads360V0CommonTargetOutrankShare.fromJson(core.Map json_)
    : this(cpcBidCeilingMicros: json_['cpcBidCeilingMicros'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (cpcBidCeilingMicros != null)
      'cpcBidCeilingMicros': cpcBidCeilingMicros!,
  };
}

/// The list of per-targeting-dimension targeting settings.
class GoogleAdsSearchads360V0CommonTargetRestriction {
  /// Indicates whether to restrict your ads to show only for the criteria you
  /// have selected for this targeting_dimension, or to target all values for
  /// this targeting_dimension and show ads based on your targeting in other
  /// TargetingDimensions.
  ///
  /// A value of `true` means that these criteria will only apply bid modifiers,
  /// and not affect targeting. A value of `false` means that these criteria
  /// will restrict targeting as well as applying bid modifiers.
  core.bool? bidOnly;

  /// The targeting dimension that these settings apply to.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "KEYWORD" : Keyword criteria, for example, 'mars cruise'. KEYWORD may be
  /// used as a custom bid dimension. Keywords are always a targeting dimension,
  /// so may not be set as a target "ALL" dimension with TargetRestriction.
  /// - "AUDIENCE" : Audience criteria, which include user list, user interest,
  /// custom affinity, and custom in market.
  /// - "TOPIC" : Topic criteria for targeting categories of content, for
  /// example, 'category::Animals\>Pets' Used for Display and Video targeting.
  /// - "GENDER" : Criteria for targeting gender.
  /// - "AGE_RANGE" : Criteria for targeting age ranges.
  /// - "PLACEMENT" : Placement criteria, which include websites like
  /// 'www.flowers4sale.com', as well as mobile applications, mobile app
  /// categories, YouTube videos, and YouTube channels.
  /// - "PARENTAL_STATUS" : Criteria for parental status targeting.
  /// - "INCOME_RANGE" : Criteria for income range targeting.
  core.String? targetingDimension;

  GoogleAdsSearchads360V0CommonTargetRestriction({
    this.bidOnly,
    this.targetingDimension,
  });

  GoogleAdsSearchads360V0CommonTargetRestriction.fromJson(core.Map json_)
    : this(
        bidOnly: json_['bidOnly'] as core.bool?,
        targetingDimension: json_['targetingDimension'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bidOnly != null) 'bidOnly': bidOnly!,
    if (targetingDimension != null) 'targetingDimension': targetingDimension!,
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
        cpcBidCeilingMicros: json_['cpcBidCeilingMicros'] as core.String?,
        cpcBidFloorMicros: json_['cpcBidFloorMicros'] as core.String?,
        targetRoas: (json_['targetRoas'] as core.num?)?.toDouble(),
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

  /// Deprecated: The spend target under which to maximize clicks.
  ///
  /// A TargetSpend bidder will attempt to spend the smaller of this value or
  /// the natural throttling spend amount. If not specified, the budget is used
  /// as the spend target. This field is deprecated and should no longer be
  /// used. See
  /// https://ads-developers.googleblog.com/2020/05/reminder-about-sunset-creation-of.html
  /// for details.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? targetSpendMicros;

  GoogleAdsSearchads360V0CommonTargetSpend({
    this.cpcBidCeilingMicros,
    this.targetSpendMicros,
  });

  GoogleAdsSearchads360V0CommonTargetSpend.fromJson(core.Map json_)
    : this(
        cpcBidCeilingMicros: json_['cpcBidCeilingMicros'] as core.String?,
        targetSpendMicros: json_['targetSpendMicros'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cpcBidCeilingMicros != null)
      'cpcBidCeilingMicros': cpcBidCeilingMicros!,
    if (targetSpendMicros != null) 'targetSpendMicros': targetSpendMicros!,
  };
}

/// Settings for the targeting-related features, at the campaign and ad group
/// levels.
///
/// For more details about the targeting setting, visit
/// https://support.google.com/google-ads/answer/7365594
class GoogleAdsSearchads360V0CommonTargetingSetting {
  /// The per-targeting-dimension setting to restrict the reach of your campaign
  /// or ad group.
  core.List<GoogleAdsSearchads360V0CommonTargetRestriction>? targetRestrictions;

  GoogleAdsSearchads360V0CommonTargetingSetting({this.targetRestrictions});

  GoogleAdsSearchads360V0CommonTargetingSetting.fromJson(core.Map json_)
    : this(
        targetRestrictions:
            (json_['targetRestrictions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAdsSearchads360V0CommonTargetRestriction.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (targetRestrictions != null) 'targetRestrictions': targetRestrictions!,
  };
}

/// A Text asset.
class GoogleAdsSearchads360V0CommonTextAsset {
  /// Text content of the text asset.
  core.String? text;

  GoogleAdsSearchads360V0CommonTextAsset({this.text});

  GoogleAdsSearchads360V0CommonTextAsset.fromJson(core.Map json_)
    : this(text: json_['text'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (text != null) 'text': text!,
  };
}

/// A type of label displaying text on a colored background.
class GoogleAdsSearchads360V0CommonTextLabel {
  /// Background color of the label in HEX format.
  ///
  /// This string must match the regular expression
  /// '^\#(\[a-fA-F0-9\]{6}|\[a-fA-F0-9\]{3})$'. Note: The background color may
  /// not be visible for manager accounts.
  core.String? backgroundColor;

  /// A short description of the label.
  ///
  /// The length must be no more than 200 characters.
  core.String? description;

  GoogleAdsSearchads360V0CommonTextLabel({
    this.backgroundColor,
    this.description,
  });

  GoogleAdsSearchads360V0CommonTextLabel.fromJson(core.Map json_)
    : this(
        backgroundColor: json_['backgroundColor'] as core.String?,
        description: json_['description'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (backgroundColor != null) 'backgroundColor': backgroundColor!,
    if (description != null) 'description': description!,
  };
}

/// A unified call asset.
class GoogleAdsSearchads360V0CommonUnifiedCallAsset {
  /// List of non-overlapping schedules specifying all time intervals for which
  /// the asset may serve.
  ///
  /// There can be a maximum of 6 schedules per day, 42 in total.
  core.List<GoogleAdsSearchads360V0CommonAdScheduleInfo>? adScheduleTargets;

  /// The conversion action to attribute a call conversion to.
  ///
  /// If not set, the default conversion action is used. This field only has
  /// effect if call_conversion_reporting_state is set to
  /// USE_RESOURCE_LEVEL_CALL_CONVERSION_ACTION.
  core.String? callConversionAction;

  /// Indicates whether this CallAsset should use its own call conversion
  /// setting, follow the account level setting, or disable call conversion.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "DISABLED" : Call conversion action is disabled.
  /// - "USE_ACCOUNT_LEVEL_CALL_CONVERSION_ACTION" : Call conversion action will
  /// use call conversion type set at the account level.
  /// - "USE_RESOURCE_LEVEL_CALL_CONVERSION_ACTION" : Call conversion action
  /// will use call conversion type set at the resource (call only ads/call
  /// extensions) level.
  core.String? callConversionReportingState;

  /// Whether the call only shows the phone number without a link to the
  /// website.
  ///
  /// Applies to Microsoft Ads.
  core.bool? callOnly;

  /// Whether the call should be enabled on call tracking.
  ///
  /// Applies to Microsoft Ads.
  core.bool? callTrackingEnabled;

  /// Two-letter country code of the phone number.
  ///
  /// Examples: 'US', 'us'.
  core.String? countryCode;

  /// Last date of when this asset is effective and still serving, in yyyy-MM-dd
  /// format.
  core.String? endDate;

  /// The advertiser's raw phone number.
  ///
  /// Examples: '1234567890', '(123)456-7890'
  core.String? phoneNumber;

  /// Start date of when this asset is effective and can begin serving, in
  /// yyyy-MM-dd format.
  core.String? startDate;

  /// Whether to show the call extension in search user's time zone.
  ///
  /// Applies to Microsoft Ads.
  core.bool? useSearcherTimeZone;

  GoogleAdsSearchads360V0CommonUnifiedCallAsset({
    this.adScheduleTargets,
    this.callConversionAction,
    this.callConversionReportingState,
    this.callOnly,
    this.callTrackingEnabled,
    this.countryCode,
    this.endDate,
    this.phoneNumber,
    this.startDate,
    this.useSearcherTimeZone,
  });

  GoogleAdsSearchads360V0CommonUnifiedCallAsset.fromJson(core.Map json_)
    : this(
        adScheduleTargets:
            (json_['adScheduleTargets'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAdsSearchads360V0CommonAdScheduleInfo.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        callConversionAction: json_['callConversionAction'] as core.String?,
        callConversionReportingState:
            json_['callConversionReportingState'] as core.String?,
        callOnly: json_['callOnly'] as core.bool?,
        callTrackingEnabled: json_['callTrackingEnabled'] as core.bool?,
        countryCode: json_['countryCode'] as core.String?,
        endDate: json_['endDate'] as core.String?,
        phoneNumber: json_['phoneNumber'] as core.String?,
        startDate: json_['startDate'] as core.String?,
        useSearcherTimeZone: json_['useSearcherTimeZone'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adScheduleTargets != null) 'adScheduleTargets': adScheduleTargets!,
    if (callConversionAction != null)
      'callConversionAction': callConversionAction!,
    if (callConversionReportingState != null)
      'callConversionReportingState': callConversionReportingState!,
    if (callOnly != null) 'callOnly': callOnly!,
    if (callTrackingEnabled != null)
      'callTrackingEnabled': callTrackingEnabled!,
    if (countryCode != null) 'countryCode': countryCode!,
    if (endDate != null) 'endDate': endDate!,
    if (phoneNumber != null) 'phoneNumber': phoneNumber!,
    if (startDate != null) 'startDate': startDate!,
    if (useSearcherTimeZone != null)
      'useSearcherTimeZone': useSearcherTimeZone!,
  };
}

/// A unified callout asset.
class GoogleAdsSearchads360V0CommonUnifiedCalloutAsset {
  /// List of non-overlapping schedules specifying all time intervals for which
  /// the asset may serve.
  ///
  /// There can be a maximum of 6 schedules per day, 42 in total.
  core.List<GoogleAdsSearchads360V0CommonAdScheduleInfo>? adScheduleTargets;

  /// The callout text.
  ///
  /// The length of this string should be between 1 and 25, inclusive.
  core.String? calloutText;

  /// Last date of when this asset is effective and still serving, in yyyy-MM-dd
  /// format.
  core.String? endDate;

  /// Start date of when this asset is effective and can begin serving, in
  /// yyyy-MM-dd format.
  core.String? startDate;

  /// Whether to show the asset in search user's time zone.
  ///
  /// Applies to Microsoft Ads.
  core.bool? useSearcherTimeZone;

  GoogleAdsSearchads360V0CommonUnifiedCalloutAsset({
    this.adScheduleTargets,
    this.calloutText,
    this.endDate,
    this.startDate,
    this.useSearcherTimeZone,
  });

  GoogleAdsSearchads360V0CommonUnifiedCalloutAsset.fromJson(core.Map json_)
    : this(
        adScheduleTargets:
            (json_['adScheduleTargets'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAdsSearchads360V0CommonAdScheduleInfo.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        calloutText: json_['calloutText'] as core.String?,
        endDate: json_['endDate'] as core.String?,
        startDate: json_['startDate'] as core.String?,
        useSearcherTimeZone: json_['useSearcherTimeZone'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adScheduleTargets != null) 'adScheduleTargets': adScheduleTargets!,
    if (calloutText != null) 'calloutText': calloutText!,
    if (endDate != null) 'endDate': endDate!,
    if (startDate != null) 'startDate': startDate!,
    if (useSearcherTimeZone != null)
      'useSearcherTimeZone': useSearcherTimeZone!,
  };
}

/// A unified location asset.
class GoogleAdsSearchads360V0CommonUnifiedLocationAsset {
  /// The list of business locations for the customer.
  ///
  /// This will only be returned if the Location Asset is syncing from the
  /// Business Profile account. It is possible to have multiple Business Profile
  /// listings under the same account that point to the same Place ID.
  core.List<GoogleAdsSearchads360V0CommonBusinessProfileLocation>?
  businessProfileLocations;

  /// The type of location ownership.
  ///
  /// If the type is BUSINESS_OWNER, it will be served as a location extension.
  /// If the type is AFFILIATE, it will be served as an affiliate location.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "BUSINESS_OWNER" : Business Owner of location(legacy location extension
  /// - LE).
  /// - "AFFILIATE" : Affiliate location(Third party location extension - ALE).
  core.String? locationOwnershipType;

  /// Place IDs uniquely identify a place in the Google Places database and on
  /// Google Maps.
  ///
  /// This field is unique for a given customer ID and asset type. See
  /// https://developers.google.com/places/web-service/place-id to learn more
  /// about Place ID.
  core.String? placeId;

  GoogleAdsSearchads360V0CommonUnifiedLocationAsset({
    this.businessProfileLocations,
    this.locationOwnershipType,
    this.placeId,
  });

  GoogleAdsSearchads360V0CommonUnifiedLocationAsset.fromJson(core.Map json_)
    : this(
        businessProfileLocations:
            (json_['businessProfileLocations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAdsSearchads360V0CommonBusinessProfileLocation.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        locationOwnershipType: json_['locationOwnershipType'] as core.String?,
        placeId: json_['placeId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (businessProfileLocations != null)
      'businessProfileLocations': businessProfileLocations!,
    if (locationOwnershipType != null)
      'locationOwnershipType': locationOwnershipType!,
    if (placeId != null) 'placeId': placeId!,
  };
}

/// A Unified Page Feed asset.
class GoogleAdsSearchads360V0CommonUnifiedPageFeedAsset {
  /// Labels used to group the page urls.
  core.List<core.String>? labels;

  /// The webpage that advertisers want to target.
  core.String? pageUrl;

  GoogleAdsSearchads360V0CommonUnifiedPageFeedAsset({
    this.labels,
    this.pageUrl,
  });

  GoogleAdsSearchads360V0CommonUnifiedPageFeedAsset.fromJson(core.Map json_)
    : this(
        labels:
            (json_['labels'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        pageUrl: json_['pageUrl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (labels != null) 'labels': labels!,
    if (pageUrl != null) 'pageUrl': pageUrl!,
  };
}

/// A unified sitelink asset.
class GoogleAdsSearchads360V0CommonUnifiedSitelinkAsset {
  /// List of non-overlapping schedules specifying all time intervals for which
  /// the asset may serve.
  ///
  /// There can be a maximum of 6 schedules per day, 42 in total.
  core.List<GoogleAdsSearchads360V0CommonAdScheduleInfo>? adScheduleTargets;

  /// First line of the description for the sitelink.
  ///
  /// If set, the length should be between 1 and 35, inclusive, and description2
  /// must also be set.
  core.String? description1;

  /// Second line of the description for the sitelink.
  ///
  /// If set, the length should be between 1 and 35, inclusive, and description1
  /// must also be set.
  core.String? description2;

  /// Last date of when this asset is effective and still serving, in yyyy-MM-dd
  /// format.
  core.String? endDate;

  /// URL display text for the sitelink.
  ///
  /// The length of this string should be between 1 and 25, inclusive.
  core.String? linkText;

  /// Whether the preference is for the sitelink asset to be displayed on mobile
  /// devices.
  ///
  /// Applies to Microsoft Ads.
  core.bool? mobilePreferred;

  /// Start date of when this asset is effective and can begin serving, in
  /// yyyy-MM-dd format.
  core.String? startDate;

  /// ID used for tracking clicks for the sitelink asset.
  ///
  /// This is a Yahoo! Japan only field.
  core.String? trackingId;

  /// Whether to show the sitelink asset in search user's time zone.
  ///
  /// Applies to Microsoft Ads.
  core.bool? useSearcherTimeZone;

  GoogleAdsSearchads360V0CommonUnifiedSitelinkAsset({
    this.adScheduleTargets,
    this.description1,
    this.description2,
    this.endDate,
    this.linkText,
    this.mobilePreferred,
    this.startDate,
    this.trackingId,
    this.useSearcherTimeZone,
  });

  GoogleAdsSearchads360V0CommonUnifiedSitelinkAsset.fromJson(core.Map json_)
    : this(
        adScheduleTargets:
            (json_['adScheduleTargets'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAdsSearchads360V0CommonAdScheduleInfo.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        description1: json_['description1'] as core.String?,
        description2: json_['description2'] as core.String?,
        endDate: json_['endDate'] as core.String?,
        linkText: json_['linkText'] as core.String?,
        mobilePreferred: json_['mobilePreferred'] as core.bool?,
        startDate: json_['startDate'] as core.String?,
        trackingId: json_['trackingId'] as core.String?,
        useSearcherTimeZone: json_['useSearcherTimeZone'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adScheduleTargets != null) 'adScheduleTargets': adScheduleTargets!,
    if (description1 != null) 'description1': description1!,
    if (description2 != null) 'description2': description2!,
    if (endDate != null) 'endDate': endDate!,
    if (linkText != null) 'linkText': linkText!,
    if (mobilePreferred != null) 'mobilePreferred': mobilePreferred!,
    if (startDate != null) 'startDate': startDate!,
    if (trackingId != null) 'trackingId': trackingId!,
    if (useSearcherTimeZone != null)
      'useSearcherTimeZone': useSearcherTimeZone!,
  };
}

/// A User List criterion.
///
/// Represents a user list that is defined by the advertiser to be targeted.
class GoogleAdsSearchads360V0CommonUserListInfo {
  /// The User List resource name.
  core.String? userList;

  GoogleAdsSearchads360V0CommonUserListInfo({this.userList});

  GoogleAdsSearchads360V0CommonUserListInfo.fromJson(core.Map json_)
    : this(userList: json_['userList'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (userList != null) 'userList': userList!,
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
        booleanValue: json_['booleanValue'] as core.bool?,
        doubleValue: (json_['doubleValue'] as core.num?)?.toDouble(),
        floatValue: (json_['floatValue'] as core.num?)?.toDouble(),
        int64Value: json_['int64Value'] as core.String?,
        stringValue: json_['stringValue'] as core.String?,
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
        argument: json_['argument'] as core.String?,
        operand: json_['operand'] as core.String?,
        operator: json_['operator'] as core.String?,
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
        conditions:
            (json_['conditions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAdsSearchads360V0CommonWebpageConditionInfo.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        coveragePercentage:
            (json_['coveragePercentage'] as core.num?)?.toDouble(),
        criterionName: json_['criterionName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conditions != null) 'conditions': conditions!,
    if (coveragePercentage != null) 'coveragePercentage': coveragePercentage!,
    if (criterionName != null) 'criterionName': criterionName!,
  };
}

/// A YouTube asset.
class GoogleAdsSearchads360V0CommonYoutubeVideoAsset {
  /// YouTube video id.
  ///
  /// This is the 11 character string value used in the YouTube video URL.
  core.String? youtubeVideoId;

  /// YouTube video title.
  core.String? youtubeVideoTitle;

  GoogleAdsSearchads360V0CommonYoutubeVideoAsset({
    this.youtubeVideoId,
    this.youtubeVideoTitle,
  });

  GoogleAdsSearchads360V0CommonYoutubeVideoAsset.fromJson(core.Map json_)
    : this(
        youtubeVideoId: json_['youtubeVideoId'] as core.String?,
        youtubeVideoTitle: json_['youtubeVideoTitle'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (youtubeVideoId != null) 'youtubeVideoId': youtubeVideoId!,
    if (youtubeVideoTitle != null) 'youtubeVideoTitle': youtubeVideoTitle!,
  };
}

/// An automated bidding strategy to help get the most conversion value for your
/// campaigns while spending your budget.
class GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue {
  /// The target return on ad spend (ROAS) option.
  ///
  /// If set, the bid strategy will maximize revenue while averaging the target
  /// return on ad spend. If the target ROAS is high, the bid strategy may not
  /// be able to spend the full budget. If the target ROAS is not set, the bid
  /// strategy will aim to achieve the highest possible ROAS for the budget.
  ///
  /// Output only.
  core.double? targetRoas;

  GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue({
    this.targetRoas,
  });

  GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue.fromJson(
    core.Map json_,
  ) : this(targetRoas: (json_['targetRoas'] as core.num?)?.toDouble());

  core.Map<core.String, core.dynamic> toJson() => {
    if (targetRoas != null) 'targetRoas': targetRoas!,
  };
}

/// An automated bidding strategy to help get the most conversions for your
/// campaigns while spending your budget.
class GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions {
  /// The target cost per acquisition (CPA) option.
  ///
  /// This is the average amount that you would like to spend per acquisition.
  ///
  /// Output only.
  core.String? targetCpa;

  /// The target cost per acquisition (CPA) option.
  ///
  /// This is the average amount that you would like to spend per acquisition.
  ///
  /// Output only.
  core.String? targetCpaMicros;

  GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions({
    this.targetCpa,
    this.targetCpaMicros,
  });

  GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions.fromJson(
    core.Map json_,
  ) : this(
        targetCpa: json_['targetCpa'] as core.String?,
        targetCpaMicros: json_['targetCpaMicros'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (targetCpa != null) 'targetCpa': targetCpa!,
    if (targetCpaMicros != null) 'targetCpaMicros': targetCpaMicros!,
  };
}

/// An automated bid strategy that sets bids to help get as many conversions as
/// possible at the target cost-per-acquisition (CPA) you set.
class GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa {
  /// Average CPA target.
  ///
  /// This target should be greater than or equal to minimum billable unit based
  /// on the currency for the account.
  ///
  /// Output only.
  core.String? targetCpaMicros;

  GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa({
    this.targetCpaMicros,
  });

  GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa.fromJson(
    core.Map json_,
  ) : this(targetCpaMicros: json_['targetCpaMicros'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (targetCpaMicros != null) 'targetCpaMicros': targetCpaMicros!,
  };
}

/// An automated bidding strategy that sets bids so that a certain percentage of
/// search ads are shown at the top of the first page (or other targeted
/// location).
class GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare {
  /// The highest CPC bid the automated bidding system is permitted to specify.
  ///
  /// This is a required field entered by the advertiser that sets the ceiling
  /// and specified in local micros.
  ///
  /// Output only.
  core.String? cpcBidCeilingMicros;

  /// The targeted location on the search results page.
  ///
  /// Output only.
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

  GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare({
    this.cpcBidCeilingMicros,
    this.location,
    this.locationFractionMicros,
  });

  GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare.fromJson(
    core.Map json_,
  ) : this(
        cpcBidCeilingMicros: json_['cpcBidCeilingMicros'] as core.String?,
        location: json_['location'] as core.String?,
        locationFractionMicros: json_['locationFractionMicros'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cpcBidCeilingMicros != null)
      'cpcBidCeilingMicros': cpcBidCeilingMicros!,
    if (location != null) 'location': location!,
    if (locationFractionMicros != null)
      'locationFractionMicros': locationFractionMicros!,
  };
}

/// An automated bidding strategy that helps you maximize revenue while
/// averaging a specific target return on ad spend (ROAS).
class GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas {
  /// The chosen revenue (based on conversion data) per unit of spend.
  ///
  /// Output only.
  core.double? targetRoas;

  GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas({
    this.targetRoas,
  });

  GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas.fromJson(
    core.Map json_,
  ) : this(targetRoas: (json_['targetRoas'] as core.num?)?.toDouble());

  core.Map<core.String, core.dynamic> toJson() => {
    if (targetRoas != null) 'targetRoas': targetRoas!,
  };
}

/// An automated bid strategy that sets your bids to help get as many clicks as
/// possible within your budget.
class GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend {
  /// Maximum bid limit that can be set by the bid strategy.
  ///
  /// The limit applies to all keywords managed by the strategy.
  ///
  /// Output only.
  core.String? cpcBidCeilingMicros;

  /// The spend target under which to maximize clicks.
  ///
  /// A TargetSpend bidder will attempt to spend the smaller of this value or
  /// the natural throttling spend amount. If not specified, the budget is used
  /// as the spend target. This field is deprecated and should no longer be
  /// used. See
  /// https://ads-developers.googleblog.com/2020/05/reminder-about-sunset-creation-of.html
  /// for details.
  ///
  /// Output only.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? targetSpendMicros;

  GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend({
    this.cpcBidCeilingMicros,
    this.targetSpendMicros,
  });

  GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend.fromJson(
    core.Map json_,
  ) : this(
        cpcBidCeilingMicros: json_['cpcBidCeilingMicros'] as core.String?,
        targetSpendMicros: json_['targetSpendMicros'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cpcBidCeilingMicros != null)
      'cpcBidCeilingMicros': cpcBidCeilingMicros!,
    if (targetSpendMicros != null) 'targetSpendMicros': targetSpendMicros!,
  };
}

/// Estimates for criterion bids at various positions.
class GoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates {
  /// The estimate of the CPC bid required for ad to be displayed at the top of
  /// the first page of search results.
  ///
  /// Output only.
  core.String? topOfPageCpcMicros;

  GoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates({
    this.topOfPageCpcMicros,
  });

  GoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates.fromJson(
    core.Map json_,
  ) : this(topOfPageCpcMicros: json_['topOfPageCpcMicros'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (topOfPageCpcMicros != null) 'topOfPageCpcMicros': topOfPageCpcMicros!,
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
    core.Map json_,
  ) : this(qualityScore: json_['qualityScore'] as core.int?);

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
    core.Map json_,
  ) : this(
        domainName: json_['domainName'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        useSuppliedUrlsOnly: json_['useSuppliedUrlsOnly'] as core.bool?,
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
    core.Map json_,
  ) : this(
        negativeGeoTargetType: json_['negativeGeoTargetType'] as core.String?,
        positiveGeoTargetType: json_['positiveGeoTargetType'] as core.String?,
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
    core.Map json_,
  ) : this(
        targetContentNetwork: json_['targetContentNetwork'] as core.bool?,
        targetGoogleSearch: json_['targetGoogleSearch'] as core.bool?,
        targetPartnerSearchNetwork:
            json_['targetPartnerSearchNetwork'] as core.bool?,
        targetSearchNetwork: json_['targetSearchNetwork'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (targetContentNetwork != null)
      'targetContentNetwork': targetContentNetwork!,
    if (targetGoogleSearch != null) 'targetGoogleSearch': targetGoogleSearch!,
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
    core.Map json_,
  ) : this(
        optimizationGoalTypes:
            (json_['optimizationGoalTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (optimizationGoalTypes != null)
      'optimizationGoalTypes': optimizationGoalTypes!,
  };
}

/// Selective optimization setting for this campaign, which includes a set of
/// conversion actions to optimize this campaign towards.
///
/// This feature only applies to app campaigns that use MULTI_CHANNEL as
/// AdvertisingChannelType and APP_CAMPAIGN or APP_CAMPAIGN_FOR_ENGAGEMENT as
/// AdvertisingChannelSubType.
class GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization {
  /// The selected set of resource names for conversion actions for optimizing
  /// this campaign.
  core.List<core.String>? conversionActions;

  GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization({
    this.conversionActions,
  });

  GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization.fromJson(
    core.Map json_,
  ) : this(
        conversionActions:
            (json_['conversionActions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
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
    core.Map json_,
  ) : this(
        campaignPriority: json_['campaignPriority'] as core.int?,
        enableLocal: json_['enableLocal'] as core.bool?,
        feedLabel: json_['feedLabel'] as core.String?,
        merchantId: json_['merchantId'] as core.String?,
        salesCountry: json_['salesCountry'] as core.String?,
        useVehicleInventory: json_['useVehicleInventory'] as core.bool?,
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

  GoogleAdsSearchads360V0ResourcesCampaignTrackingSetting({this.trackingUrl});

  GoogleAdsSearchads360V0ResourcesCampaignTrackingSetting.fromJson(
    core.Map json_,
  ) : this(trackingUrl: json_['trackingUrl'] as core.String?);

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
    core.Map json_,
  ) : this(
        attributionModel: json_['attributionModel'] as core.String?,
        dataDrivenModelStatus: json_['dataDrivenModelStatus'] as core.String?,
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
    core.Map json_,
  ) : this(
        activityGroupTag: json_['activityGroupTag'] as core.String?,
        activityId: json_['activityId'] as core.String?,
        activityTag: json_['activityTag'] as core.String?,
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
    core.Map json_,
  ) : this(
        alwaysUseDefaultValue: json_['alwaysUseDefaultValue'] as core.bool?,
        defaultCurrencyCode: json_['defaultCurrencyCode'] as core.String?,
        defaultValue: (json_['defaultValue'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (alwaysUseDefaultValue != null)
      'alwaysUseDefaultValue': alwaysUseDefaultValue!,
    if (defaultCurrencyCode != null)
      'defaultCurrencyCode': defaultCurrencyCode!,
    if (defaultValue != null) 'defaultValue': defaultValue!,
  };
}

/// Information for Search Ads 360 Floodlight Conversion Custom Variables.
class GoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo {
  /// Floodlight variable data type defined in Search Ads 360.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "NUMBER" : Represents a floodlight variable of "Number" type. This
  /// variable may be assigned to floodlight variables of DIMENSION or METRIC
  /// types.
  /// - "STRING" : Represents a floodlight variable of "String" type. This
  /// variable may be assigned to floodlight variables of DIMENSION type.
  core.String? floodlightVariableDataType;

  /// Floodlight variable type defined in Search Ads 360.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "DIMENSION" : Dimension floodlight variable type.
  /// - "METRIC" : Metric floodlight variable type.
  /// - "UNSET" : Floodlight variable type is unset.
  core.String? floodlightVariableType;

  GoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo({
    this.floodlightVariableDataType,
    this.floodlightVariableType,
  });

  GoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo.fromJson(
    core.Map json_,
  ) : this(
        floodlightVariableDataType:
            json_['floodlightVariableDataType'] as core.String?,
        floodlightVariableType: json_['floodlightVariableType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (floodlightVariableDataType != null)
      'floodlightVariableDataType': floodlightVariableDataType!,
    if (floodlightVariableType != null)
      'floodlightVariableType': floodlightVariableType!,
  };
}

/// One element of a bidding category at a certain level.
///
/// Top-level categories are at level 1, their children at level 2, and so on.
/// We currently support up to 5 levels. The user must specify a dimension type
/// that indicates the level of the category. All cases of the same subdivision
/// must have the same dimension type (category level).
class GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory {
  /// ID of the product bidding category.
  ///
  /// This ID is equivalent to the google_product_category ID as described in
  /// this article: https://support.google.com/merchants/answer/6324436
  core.String? id;

  /// Indicates the level of the category in the taxonomy.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "LEVEL1" : Level 1.
  /// - "LEVEL2" : Level 2.
  /// - "LEVEL3" : Level 3.
  /// - "LEVEL4" : Level 4.
  /// - "LEVEL5" : Level 5.
  core.String? level;

  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory({
    this.id,
    this.level,
  });

  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory.fromJson(
    core.Map json_,
  ) : this(
        id: json_['id'] as core.String?,
        level: json_['level'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (id != null) 'id': id!,
    if (level != null) 'level': level!,
  };
}

/// Brand of the product.
class GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand {
  /// String value of the product brand.
  core.String? value;

  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand({
    this.value,
  });

  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand.fromJson(
    core.Map json_,
  ) : this(value: json_['value'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (value != null) 'value': value!,
  };
}

/// Locality of a product offer.
class GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel {
  /// Value of the locality.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "ONLINE" : The item is sold online.
  /// - "LOCAL" : The item is sold in local stores.
  core.String? channel;

  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel({
    this.channel,
  });

  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel.fromJson(
    core.Map json_,
  ) : this(channel: json_['channel'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (channel != null) 'channel': channel!,
  };
}

/// Condition of a product offer.
class GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition {
  /// Value of the condition.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "NEW" : The product condition is new.
  /// - "REFURBISHED" : The product condition is refurbished.
  /// - "USED" : The product condition is used.
  core.String? condition;

  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition({
    this.condition,
  });

  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition.fromJson(
    core.Map json_,
  ) : this(condition: json_['condition'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (condition != null) 'condition': condition!,
  };
}

/// Custom attribute of a product offer.
class GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute {
  /// Indicates the index of the custom attribute.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "INDEX0" : First listing group filter custom attribute.
  /// - "INDEX1" : Second listing group filter custom attribute.
  /// - "INDEX2" : Third listing group filter custom attribute.
  /// - "INDEX3" : Fourth listing group filter custom attribute.
  /// - "INDEX4" : Fifth listing group filter custom attribute.
  core.String? index;

  /// String value of the product custom attribute.
  core.String? value;

  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute({
    this.index,
    this.value,
  });

  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute.fromJson(
    core.Map json_,
  ) : this(
        index: json_['index'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (index != null) 'index': index!,
    if (value != null) 'value': value!,
  };
}

/// Item id of a product offer.
class GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId {
  /// Value of the id.
  core.String? value;

  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId({
    this.value,
  });

  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId.fromJson(
    core.Map json_,
  ) : this(value: json_['value'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (value != null) 'value': value!,
  };
}

/// Type of a product offer.
class GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType {
  /// Level of the type.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "LEVEL1" : Level 1.
  /// - "LEVEL2" : Level 2.
  /// - "LEVEL3" : Level 3.
  /// - "LEVEL4" : Level 4.
  /// - "LEVEL5" : Level 5.
  core.String? level;

  /// Value of the type.
  core.String? value;

  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType({
    this.level,
    this.value,
  });

  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType.fromJson(
    core.Map json_,
  ) : this(
        level: json_['level'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (level != null) 'level': level!,
    if (value != null) 'value': value!,
  };
}

/// Represents a view of BiddingStrategies owned by and shared with the
/// customer.
///
/// In contrast to BiddingStrategy, this resource includes strategies owned by
/// managers of the customer and shared with this customer - in addition to
/// strategies owned by this customer. This resource does not provide metrics
/// and only exposes a limited subset of the BiddingStrategy attributes.
class GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy {
  /// The ID of the bidding strategy.
  ///
  /// Output only.
  core.String? id;

  /// An automated bidding strategy to help get the most conversion value for
  /// your campaigns while spending your budget.
  ///
  /// Output only.
  GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue?
  maximizeConversionValue;

  /// An automated bidding strategy to help get the most conversions for your
  /// campaigns while spending your budget.
  ///
  /// Output only.
  GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions?
  maximizeConversions;

  /// The name of the bidding strategy.
  ///
  /// Output only.
  core.String? name;

  /// The ID of the Customer which owns the bidding strategy.
  ///
  /// Output only.
  core.String? ownerCustomerId;

  /// descriptive_name of the Customer which owns the bidding strategy.
  ///
  /// Output only.
  core.String? ownerDescriptiveName;

  /// The resource name of the accessible bidding strategy.
  ///
  /// AccessibleBiddingStrategy resource names have the form:
  /// `customers/{customer_id}/accessibleBiddingStrategies/{bidding_strategy_id}`
  ///
  /// Output only.
  core.String? resourceName;

  /// A bidding strategy that sets bids to help get as many conversions as
  /// possible at the target cost-per-acquisition (CPA) you set.
  ///
  /// Output only.
  GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa? targetCpa;

  /// A bidding strategy that automatically optimizes towards a chosen
  /// percentage of impressions.
  ///
  /// Output only.
  GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare?
  targetImpressionShare;

  /// A bidding strategy that helps you maximize revenue while averaging a
  /// specific target Return On Ad Spend (ROAS).
  ///
  /// Output only.
  GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas?
  targetRoas;

  /// A bid strategy that sets your bids to help get as many clicks as possible
  /// within your budget.
  ///
  /// Output only.
  GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend?
  targetSpend;

  /// The type of the bidding strategy.
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

  GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy({
    this.id,
    this.maximizeConversionValue,
    this.maximizeConversions,
    this.name,
    this.ownerCustomerId,
    this.ownerDescriptiveName,
    this.resourceName,
    this.targetCpa,
    this.targetImpressionShare,
    this.targetRoas,
    this.targetSpend,
    this.type,
  });

  GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy.fromJson(
    core.Map json_,
  ) : this(
        id: json_['id'] as core.String?,
        maximizeConversionValue:
            json_.containsKey('maximizeConversionValue')
                ? GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue.fromJson(
                  json_['maximizeConversionValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        maximizeConversions:
            json_.containsKey('maximizeConversions')
                ? GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions.fromJson(
                  json_['maximizeConversions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        ownerCustomerId: json_['ownerCustomerId'] as core.String?,
        ownerDescriptiveName: json_['ownerDescriptiveName'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        targetCpa:
            json_.containsKey('targetCpa')
                ? GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa.fromJson(
                  json_['targetCpa'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        targetImpressionShare:
            json_.containsKey('targetImpressionShare')
                ? GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare.fromJson(
                  json_['targetImpressionShare']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        targetRoas:
            json_.containsKey('targetRoas')
                ? GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas.fromJson(
                  json_['targetRoas'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        targetSpend:
            json_.containsKey('targetSpend')
                ? GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend.fromJson(
                  json_['targetSpend'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (id != null) 'id': id!,
    if (maximizeConversionValue != null)
      'maximizeConversionValue': maximizeConversionValue!,
    if (maximizeConversions != null)
      'maximizeConversions': maximizeConversions!,
    if (name != null) 'name': name!,
    if (ownerCustomerId != null) 'ownerCustomerId': ownerCustomerId!,
    if (ownerDescriptiveName != null)
      'ownerDescriptiveName': ownerDescriptiveName!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (targetCpa != null) 'targetCpa': targetCpa!,
    if (targetImpressionShare != null)
      'targetImpressionShare': targetImpressionShare!,
    if (targetRoas != null) 'targetRoas': targetRoas!,
    if (targetSpend != null) 'targetSpend': targetSpend!,
    if (type != null) 'type': type!,
  };
}

/// An ad.
class GoogleAdsSearchads360V0ResourcesAd {
  /// The URL that appears in the ad description for some ad formats.
  core.String? displayUrl;

  /// Details pertaining to an expanded dynamic search ad.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo?
  expandedDynamicSearchAd;

  /// Details pertaining to an expanded text ad.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo? expandedTextAd;

  /// The list of possible final URLs after all cross-domain redirects for the
  /// ad.
  core.List<core.String>? finalUrls;

  /// The ID of the ad.
  ///
  /// Output only.
  core.String? id;

  /// The name of the ad.
  ///
  /// This is only used to be able to identify the ad. It does not need to be
  /// unique and does not affect the served ad.
  ///
  /// Immutable.
  core.String? name;

  /// Details pertaining to a product ad.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo? productAd;

  /// The resource name of the ad.
  ///
  /// Ad resource names have the form: `customers/{customer_id}/ads/{ad_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// Details pertaining to a responsive search ad.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo?
  responsiveSearchAd;

  /// Details pertaining to a text ad.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonSearchAds360TextAdInfo? textAd;

  /// The type of ad.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : No value has been specified.
  /// - "UNKNOWN" : The received value is not known in this version. This is a
  /// response-only value.
  /// - "TEXT_AD" : The ad is a text ad.
  /// - "EXPANDED_TEXT_AD" : The ad is an expanded text ad.
  /// - "CALL_ONLY_AD" : The ad is a call only ad.
  /// - "EXPANDED_DYNAMIC_SEARCH_AD" : The ad is an expanded dynamic search ad.
  /// - "HOTEL_AD" : The ad is a hotel ad.
  /// - "SHOPPING_SMART_AD" : The ad is a Smart Shopping ad.
  /// - "SHOPPING_PRODUCT_AD" : The ad is a standard Shopping ad.
  /// - "VIDEO_AD" : The ad is a video ad.
  /// - "GMAIL_AD" : This ad is a Gmail ad.
  /// - "IMAGE_AD" : This ad is an Image ad.
  /// - "RESPONSIVE_SEARCH_AD" : The ad is a responsive search ad.
  /// - "LEGACY_RESPONSIVE_DISPLAY_AD" : The ad is a legacy responsive display
  /// ad.
  /// - "APP_AD" : The ad is an app ad.
  /// - "LEGACY_APP_INSTALL_AD" : The ad is a legacy app install ad.
  /// - "RESPONSIVE_DISPLAY_AD" : The ad is a responsive display ad.
  /// - "LOCAL_AD" : The ad is a local ad.
  /// - "HTML5_UPLOAD_AD" : The ad is a display upload ad with the
  /// HTML5_UPLOAD_AD product type.
  /// - "DYNAMIC_HTML5_AD" : The ad is a display upload ad with one of the
  /// DYNAMIC_HTML5_* product types.
  /// - "APP_ENGAGEMENT_AD" : The ad is an app engagement ad.
  /// - "SHOPPING_COMPARISON_LISTING_AD" : The ad is a Shopping Comparison
  /// Listing ad.
  /// - "VIDEO_BUMPER_AD" : Video bumper ad.
  /// - "VIDEO_NON_SKIPPABLE_IN_STREAM_AD" : Video non-skippable in-stream ad.
  /// - "VIDEO_OUTSTREAM_AD" : Video outstream ad.
  /// - "VIDEO_TRUEVIEW_DISCOVERY_AD" : Video TrueView in-display ad.
  /// - "VIDEO_TRUEVIEW_IN_STREAM_AD" : Video TrueView in-stream ad.
  /// - "VIDEO_RESPONSIVE_AD" : Video responsive ad.
  /// - "SMART_CAMPAIGN_AD" : Smart campaign ad.
  /// - "APP_PRE_REGISTRATION_AD" : Universal app pre-registration ad.
  /// - "DISCOVERY_MULTI_ASSET_AD" : Discovery multi asset ad.
  /// - "DISCOVERY_CAROUSEL_AD" : Discovery carousel ad.
  /// - "TRAVEL_AD" : Travel ad.
  /// - "DISCOVERY_VIDEO_RESPONSIVE_AD" : Discovery video responsive ad.
  /// - "MULTIMEDIA_AD" : Multimedia ad.
  core.String? type;

  GoogleAdsSearchads360V0ResourcesAd({
    this.displayUrl,
    this.expandedDynamicSearchAd,
    this.expandedTextAd,
    this.finalUrls,
    this.id,
    this.name,
    this.productAd,
    this.resourceName,
    this.responsiveSearchAd,
    this.textAd,
    this.type,
  });

  GoogleAdsSearchads360V0ResourcesAd.fromJson(core.Map json_)
    : this(
        displayUrl: json_['displayUrl'] as core.String?,
        expandedDynamicSearchAd:
            json_.containsKey('expandedDynamicSearchAd')
                ? GoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo.fromJson(
                  json_['expandedDynamicSearchAd']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        expandedTextAd:
            json_.containsKey('expandedTextAd')
                ? GoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo.fromJson(
                  json_['expandedTextAd']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        finalUrls:
            (json_['finalUrls'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
        productAd:
            json_.containsKey('productAd')
                ? GoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo.fromJson(
                  json_['productAd'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        resourceName: json_['resourceName'] as core.String?,
        responsiveSearchAd:
            json_.containsKey('responsiveSearchAd')
                ? GoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo.fromJson(
                  json_['responsiveSearchAd']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        textAd:
            json_.containsKey('textAd')
                ? GoogleAdsSearchads360V0CommonSearchAds360TextAdInfo.fromJson(
                  json_['textAd'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayUrl != null) 'displayUrl': displayUrl!,
    if (expandedDynamicSearchAd != null)
      'expandedDynamicSearchAd': expandedDynamicSearchAd!,
    if (expandedTextAd != null) 'expandedTextAd': expandedTextAd!,
    if (finalUrls != null) 'finalUrls': finalUrls!,
    if (id != null) 'id': id!,
    if (name != null) 'name': name!,
    if (productAd != null) 'productAd': productAd!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (responsiveSearchAd != null) 'responsiveSearchAd': responsiveSearchAd!,
    if (textAd != null) 'textAd': textAd!,
    if (type != null) 'type': type!,
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

  /// The timestamp when this ad_group was created.
  ///
  /// The timestamp is in the customer's time zone and in "yyyy-MM-dd HH:mm:ss"
  /// format.
  ///
  /// Output only.
  core.String? creationTime;

  /// The resource names of effective labels attached to this ad group.
  ///
  /// An effective label is a label inherited or directly assigned to this ad
  /// group.
  ///
  /// Output only.
  core.List<core.String>? effectiveLabels;

  /// Date when the ad group ends serving ads.
  ///
  /// By default, the ad group ends on the ad group's end date. If this field is
  /// set, then the ad group ends at the end of the specified date in the
  /// customer's time zone. This field is only available for Microsoft
  /// Advertising and Facebook gateway accounts. Format: YYYY-MM-DD Example:
  /// 2019-03-14
  ///
  /// Output only.
  core.String? endDate;

  /// ID of the ad group in the external engine account.
  ///
  /// This field is for non-Google Ads account only, for example, Yahoo Japan,
  /// Microsoft, Baidu etc. For Google Ads entity, use "ad_group.id" instead.
  ///
  /// Output only.
  core.String? engineId;

  /// The Engine Status for ad group.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "AD_GROUP_ELIGIBLE" : Deprecated. Do not use.
  /// - "AD_GROUP_EXPIRED" : No ads are running for this ad group, because the
  /// ad group's end date has passed.
  /// - "AD_GROUP_REMOVED" : The ad group has been deleted.
  /// - "AD_GROUP_DRAFT" : No ads are running for this ad group because the
  /// associated ad group is still in draft form.
  /// - "AD_GROUP_PAUSED" : The ad group has been paused.
  /// - "AD_GROUP_SERVING" : The ad group is active and currently serving ads.
  /// - "AD_GROUP_SUBMITTED" : The ad group has been submitted (Microsoft Bing
  /// Ads legacy status).
  /// - "CAMPAIGN_PAUSED" : No ads are running for this ad group, because the
  /// campaign has been paused.
  /// - "ACCOUNT_PAUSED" : No ads are running for this ad group, because the
  /// account has been paused.
  core.String? engineStatus;

  /// The ID of the ad group.
  ///
  /// Output only.
  core.String? id;

  /// The resource names of labels attached to this ad group.
  ///
  /// Output only.
  core.List<core.String>? labels;

  /// The language of the ads and keywords in an ad group.
  ///
  /// This field is only available for Microsoft Advertising accounts. More
  /// details:
  /// https://docs.microsoft.com/en-us/advertising/guides/ad-languages?view=bingads-13#adlanguage
  ///
  /// Output only.
  core.String? languageCode;

  /// The datetime when this ad group was last modified.
  ///
  /// The datetime is in the customer's time zone and in "yyyy-MM-dd
  /// HH:mm:ss.ssssss" format.
  ///
  /// Output only.
  core.String? lastModifiedTime;

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

  /// Date when this ad group starts serving ads.
  ///
  /// By default, the ad group starts now or the ad group's start date,
  /// whichever is later. If this field is set, then the ad group starts at the
  /// beginning of the specified date in the customer's time zone. This field is
  /// only available for Microsoft Advertising and Facebook gateway accounts.
  /// Format: YYYY-MM-DD Example: 2019-03-14
  ///
  /// Output only.
  core.String? startDate;

  /// The status of the ad group.
  /// Possible string values are:
  /// - "UNSPECIFIED" : The status has not been specified.
  /// - "UNKNOWN" : The received value is not known in this version. This is a
  /// response-only value.
  /// - "ENABLED" : The ad group is enabled.
  /// - "PAUSED" : The ad group is paused.
  /// - "REMOVED" : The ad group is removed.
  core.String? status;

  /// Setting for targeting related features.
  GoogleAdsSearchads360V0CommonTargetingSetting? targetingSetting;

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
  /// - "TRAVEL_ADS" : Ad group type for Travel campaigns.
  core.String? type;

  GoogleAdsSearchads360V0ResourcesAdGroup({
    this.adRotationMode,
    this.cpcBidMicros,
    this.creationTime,
    this.effectiveLabels,
    this.endDate,
    this.engineId,
    this.engineStatus,
    this.id,
    this.labels,
    this.languageCode,
    this.lastModifiedTime,
    this.name,
    this.resourceName,
    this.startDate,
    this.status,
    this.targetingSetting,
    this.type,
  });

  GoogleAdsSearchads360V0ResourcesAdGroup.fromJson(core.Map json_)
    : this(
        adRotationMode: json_['adRotationMode'] as core.String?,
        cpcBidMicros: json_['cpcBidMicros'] as core.String?,
        creationTime: json_['creationTime'] as core.String?,
        effectiveLabels:
            (json_['effectiveLabels'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        endDate: json_['endDate'] as core.String?,
        engineId: json_['engineId'] as core.String?,
        engineStatus: json_['engineStatus'] as core.String?,
        id: json_['id'] as core.String?,
        labels:
            (json_['labels'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        languageCode: json_['languageCode'] as core.String?,
        lastModifiedTime: json_['lastModifiedTime'] as core.String?,
        name: json_['name'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        startDate: json_['startDate'] as core.String?,
        status: json_['status'] as core.String?,
        targetingSetting:
            json_.containsKey('targetingSetting')
                ? GoogleAdsSearchads360V0CommonTargetingSetting.fromJson(
                  json_['targetingSetting']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adRotationMode != null) 'adRotationMode': adRotationMode!,
    if (cpcBidMicros != null) 'cpcBidMicros': cpcBidMicros!,
    if (creationTime != null) 'creationTime': creationTime!,
    if (effectiveLabels != null) 'effectiveLabels': effectiveLabels!,
    if (endDate != null) 'endDate': endDate!,
    if (engineId != null) 'engineId': engineId!,
    if (engineStatus != null) 'engineStatus': engineStatus!,
    if (id != null) 'id': id!,
    if (labels != null) 'labels': labels!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (lastModifiedTime != null) 'lastModifiedTime': lastModifiedTime!,
    if (name != null) 'name': name!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (startDate != null) 'startDate': startDate!,
    if (status != null) 'status': status!,
    if (targetingSetting != null) 'targetingSetting': targetingSetting!,
    if (type != null) 'type': type!,
  };
}

/// An ad group ad.
class GoogleAdsSearchads360V0ResourcesAdGroupAd {
  /// The ad.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0ResourcesAd? ad;

  /// The timestamp when this ad_group_ad was created.
  ///
  /// The datetime is in the customer's time zone and in "yyyy-MM-dd
  /// HH:mm:ss.ssssss" format.
  ///
  /// Output only.
  core.String? creationTime;

  /// The resource names of effective labels attached to this ad.
  ///
  /// An effective label is a label inherited or directly assigned to this ad.
  ///
  /// Output only.
  core.List<core.String>? effectiveLabels;

  /// ID of the ad in the external engine account.
  ///
  /// This field is for Search Ads 360 account only, for example, Yahoo Japan,
  /// Microsoft, Baidu etc. For non-Search Ads 360 entity, use
  /// "ad_group_ad.ad.id" instead.
  ///
  /// Output only.
  core.String? engineId;

  /// Additional status of the ad in the external engine account.
  ///
  /// Possible statuses (depending on the type of external account) include
  /// active, eligible, pending review, etc.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : No value has been specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "AD_GROUP_AD_ELIGIBLE" : Deprecated. Do not use.
  /// - "AD_GROUP_AD_INAPPROPRIATE_FOR_CAMPAIGN" : Baidu: Creative was not
  /// approved.
  /// - "AD_GROUP_AD_MOBILE_URL_UNDER_REVIEW" : Baidu: Mobile URL in process to
  /// be reviewed.
  /// - "AD_GROUP_AD_PARTIALLY_INVALID" : Baidu: Creative is invalid on mobile
  /// device but valid on desktop.
  /// - "AD_GROUP_AD_TO_BE_ACTIVATED" : Baidu: Creative is ready for activation.
  /// - "AD_GROUP_AD_NOT_REVIEWED" : Baidu: Creative not reviewed.
  /// - "AD_GROUP_AD_ON_HOLD" : Deprecated. Do not use. Previously used by
  /// Gemini
  /// - "AD_GROUP_AD_PAUSED" : Creative has been paused.
  /// - "AD_GROUP_AD_REMOVED" : Creative has been removed.
  /// - "AD_GROUP_AD_PENDING_REVIEW" : Creative is pending review.
  /// - "AD_GROUP_AD_UNDER_REVIEW" : Creative is under review.
  /// - "AD_GROUP_AD_APPROVED" : Creative has been approved.
  /// - "AD_GROUP_AD_DISAPPROVED" : Creative has been disapproved.
  /// - "AD_GROUP_AD_SERVING" : Creative is serving.
  /// - "AD_GROUP_AD_ACCOUNT_PAUSED" : Creative has been paused because the
  /// account is paused.
  /// - "AD_GROUP_AD_CAMPAIGN_PAUSED" : Creative has been paused because the
  /// campaign is paused.
  /// - "AD_GROUP_AD_AD_GROUP_PAUSED" : Creative has been paused because the ad
  /// group is paused.
  core.String? engineStatus;

  /// The resource names of labels attached to this ad group ad.
  ///
  /// Output only.
  core.List<core.String>? labels;

  /// The datetime when this ad group ad was last modified.
  ///
  /// The datetime is in the customer's time zone and in "yyyy-MM-dd
  /// HH:mm:ss.ssssss" format.
  ///
  /// Output only.
  core.String? lastModifiedTime;

  /// The resource name of the ad.
  ///
  /// Ad group ad resource names have the form:
  /// `customers/{customer_id}/adGroupAds/{ad_group_id}~{ad_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// The status of the ad.
  /// Possible string values are:
  /// - "UNSPECIFIED" : No value has been specified.
  /// - "UNKNOWN" : The received value is not known in this version. This is a
  /// response-only value.
  /// - "ENABLED" : The ad group ad is enabled.
  /// - "PAUSED" : The ad group ad is paused.
  /// - "REMOVED" : The ad group ad is removed.
  core.String? status;

  GoogleAdsSearchads360V0ResourcesAdGroupAd({
    this.ad,
    this.creationTime,
    this.effectiveLabels,
    this.engineId,
    this.engineStatus,
    this.labels,
    this.lastModifiedTime,
    this.resourceName,
    this.status,
  });

  GoogleAdsSearchads360V0ResourcesAdGroupAd.fromJson(core.Map json_)
    : this(
        ad:
            json_.containsKey('ad')
                ? GoogleAdsSearchads360V0ResourcesAd.fromJson(
                  json_['ad'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        creationTime: json_['creationTime'] as core.String?,
        effectiveLabels:
            (json_['effectiveLabels'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        engineId: json_['engineId'] as core.String?,
        engineStatus: json_['engineStatus'] as core.String?,
        labels:
            (json_['labels'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        lastModifiedTime: json_['lastModifiedTime'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ad != null) 'ad': ad!,
    if (creationTime != null) 'creationTime': creationTime!,
    if (effectiveLabels != null) 'effectiveLabels': effectiveLabels!,
    if (engineId != null) 'engineId': engineId!,
    if (engineStatus != null) 'engineStatus': engineStatus!,
    if (labels != null) 'labels': labels!,
    if (lastModifiedTime != null) 'lastModifiedTime': lastModifiedTime!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (status != null) 'status': status!,
  };
}

/// A relationship between an ad group ad and an effective label.
///
/// An effective label is a label inherited or directly assigned to this ad
/// group ad.
class GoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel {
  /// The ad group ad to which the effective label is attached.
  ///
  /// Immutable.
  core.String? adGroupAd;

  /// The effective label assigned to the ad group ad.
  ///
  /// Immutable.
  core.String? label;

  /// The ID of the Customer which owns the effective label.
  ///
  /// Output only.
  core.String? ownerCustomerId;

  /// The resource name of the ad group ad effective label.
  ///
  /// Ad group ad effective label resource names have the form:
  /// `customers/{customer_id}/adGroupAdEffectiveLabels/{ad_group_id}~{ad_id}~{label_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel({
    this.adGroupAd,
    this.label,
    this.ownerCustomerId,
    this.resourceName,
  });

  GoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel.fromJson(
    core.Map json_,
  ) : this(
        adGroupAd: json_['adGroupAd'] as core.String?,
        label: json_['label'] as core.String?,
        ownerCustomerId: json_['ownerCustomerId'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adGroupAd != null) 'adGroupAd': adGroupAd!,
    if (label != null) 'label': label!,
    if (ownerCustomerId != null) 'ownerCustomerId': ownerCustomerId!,
    if (resourceName != null) 'resourceName': resourceName!,
  };
}

/// A relationship between an ad group ad and a label.
class GoogleAdsSearchads360V0ResourcesAdGroupAdLabel {
  /// The ad group ad to which the label is attached.
  ///
  /// Immutable.
  core.String? adGroupAd;

  /// The label assigned to the ad group ad.
  ///
  /// Immutable.
  core.String? label;

  /// The ID of the Customer which owns the label.
  ///
  /// Output only.
  core.String? ownerCustomerId;

  /// The resource name of the ad group ad label.
  ///
  /// Ad group ad label resource names have the form:
  /// `customers/{customer_id}/adGroupAdLabels/{ad_group_id}~{ad_id}~{label_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesAdGroupAdLabel({
    this.adGroupAd,
    this.label,
    this.ownerCustomerId,
    this.resourceName,
  });

  GoogleAdsSearchads360V0ResourcesAdGroupAdLabel.fromJson(core.Map json_)
    : this(
        adGroupAd: json_['adGroupAd'] as core.String?,
        label: json_['label'] as core.String?,
        ownerCustomerId: json_['ownerCustomerId'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adGroupAd != null) 'adGroupAd': adGroupAd!,
    if (label != null) 'label': label!,
    if (ownerCustomerId != null) 'ownerCustomerId': ownerCustomerId!,
    if (resourceName != null) 'resourceName': resourceName!,
  };
}

/// A link between an ad group and an asset.
class GoogleAdsSearchads360V0ResourcesAdGroupAsset {
  /// The ad group to which the asset is linked.
  ///
  /// Required. Immutable.
  core.String? adGroup;

  /// The asset which is linked to the ad group.
  ///
  /// Required. Immutable.
  core.String? asset;

  /// The resource name of the ad group asset.
  ///
  /// AdGroupAsset resource names have the form:
  /// `customers/{customer_id}/adGroupAssets/{ad_group_id}~{asset_id}~{field_type}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// Status of the ad group asset.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "ENABLED" : Asset link is enabled.
  /// - "REMOVED" : Asset link has been removed.
  /// - "PAUSED" : Asset link is paused.
  core.String? status;

  GoogleAdsSearchads360V0ResourcesAdGroupAsset({
    this.adGroup,
    this.asset,
    this.resourceName,
    this.status,
  });

  GoogleAdsSearchads360V0ResourcesAdGroupAsset.fromJson(core.Map json_)
    : this(
        adGroup: json_['adGroup'] as core.String?,
        asset: json_['asset'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adGroup != null) 'adGroup': adGroup!,
    if (asset != null) 'asset': asset!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (status != null) 'status': status!,
  };
}

/// AdGroupAssetSet is the linkage between an ad group and an asset set.
///
/// Creating an AdGroupAssetSet links an asset set with an ad group.
class GoogleAdsSearchads360V0ResourcesAdGroupAssetSet {
  /// The ad group to which this asset set is linked.
  ///
  /// Immutable.
  core.String? adGroup;

  /// The asset set which is linked to the ad group.
  ///
  /// Immutable.
  core.String? assetSet;

  /// The resource name of the ad group asset set.
  ///
  /// Ad group asset set resource names have the form:
  /// `customers/{customer_id}/adGroupAssetSets/{ad_group_id}~{asset_set_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// The status of the ad group asset set.
  ///
  /// Read-only.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : The status has not been specified.
  /// - "UNKNOWN" : The received value is not known in this version. This is a
  /// response-only value.
  /// - "ENABLED" : The linkage between asset set and its container is enabled.
  /// - "REMOVED" : The linkage between asset set and its container is removed.
  core.String? status;

  GoogleAdsSearchads360V0ResourcesAdGroupAssetSet({
    this.adGroup,
    this.assetSet,
    this.resourceName,
    this.status,
  });

  GoogleAdsSearchads360V0ResourcesAdGroupAssetSet.fromJson(core.Map json_)
    : this(
        adGroup: json_['adGroup'] as core.String?,
        assetSet: json_['assetSet'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adGroup != null) 'adGroup': adGroup!,
    if (assetSet != null) 'assetSet': assetSet!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (status != null) 'status': status!,
  };
}

/// An ad group audience view.
///
/// Includes performance data from interests and remarketing lists for Display
/// Network and YouTube Network ads, and remarketing lists for search ads
/// (RLSA), aggregated at the audience level.
class GoogleAdsSearchads360V0ResourcesAdGroupAudienceView {
  /// The resource name of the ad group audience view.
  ///
  /// Ad group audience view resource names have the form:
  /// `customers/{customer_id}/adGroupAudienceViews/{ad_group_id}~{criterion_id}`
  ///
  /// Output only.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesAdGroupAudienceView({this.resourceName});

  GoogleAdsSearchads360V0ResourcesAdGroupAudienceView.fromJson(core.Map json_)
    : this(resourceName: json_['resourceName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (resourceName != null) 'resourceName': resourceName!,
  };
}

/// Represents an ad group bid modifier.
class GoogleAdsSearchads360V0ResourcesAdGroupBidModifier {
  /// The modifier for the bid when the criterion matches.
  ///
  /// The modifier must be in the range: 0.1 - 10.0. The range is 1.0 - 6.0 for
  /// PreferredContent. Use 0 to opt out of a Device type.
  core.double? bidModifier;

  /// A device criterion.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonDeviceInfo? device;

  /// The resource name of the ad group bid modifier.
  ///
  /// Ad group bid modifier resource names have the form:
  /// `customers/{customer_id}/adGroupBidModifiers/{ad_group_id}~{criterion_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesAdGroupBidModifier({
    this.bidModifier,
    this.device,
    this.resourceName,
  });

  GoogleAdsSearchads360V0ResourcesAdGroupBidModifier.fromJson(core.Map json_)
    : this(
        bidModifier: (json_['bidModifier'] as core.num?)?.toDouble(),
        device:
            json_.containsKey('device')
                ? GoogleAdsSearchads360V0CommonDeviceInfo.fromJson(
                  json_['device'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        resourceName: json_['resourceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bidModifier != null) 'bidModifier': bidModifier!,
    if (device != null) 'device': device!,
    if (resourceName != null) 'resourceName': resourceName!,
  };
}

/// An ad group criterion.
///
/// The ad_group_criterion report only returns criteria that were explicitly
/// added to the ad group.
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

  /// The timestamp when this ad group criterion was created.
  ///
  /// The timestamp is in the customer's time zone and in "yyyy-MM-dd HH:mm:ss"
  /// format.
  ///
  /// Output only.
  core.String? creationTime;

  /// The ID of the criterion.
  ///
  /// Output only.
  core.String? criterionId;

  /// The effective CPC (cost-per-click) bid.
  ///
  /// Output only.
  core.String? effectiveCpcBidMicros;

  /// The resource names of effective labels attached to this ad group
  /// criterion.
  ///
  /// An effective label is a label inherited or directly assigned to this ad
  /// group criterion.
  ///
  /// Output only.
  core.List<core.String>? effectiveLabels;

  /// ID of the ad group criterion in the external engine account.
  ///
  /// This field is for non-Google Ads account only, for example, Yahoo Japan,
  /// Microsoft, Baidu etc. For Google Ads entity, use
  /// "ad_group_criterion.criterion_id" instead.
  ///
  /// Output only.
  core.String? engineId;

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

  /// The resource names of labels attached to this ad group criterion.
  ///
  /// Output only.
  core.List<core.String>? labels;

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

  /// Location.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonLocationInfo? location;

  /// Whether to target (`false`) or exclude (`true`) the criterion.
  ///
  /// This field is immutable. To switch a criterion from positive to negative,
  /// remove then re-add it.
  ///
  /// Immutable.
  core.bool? negative;

  /// Estimates for criterion bids at various positions.
  ///
  /// Output only.
  GoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates?
  positionEstimates;

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
  /// - "LOCAL_SERVICE_ID" : Local Services Ads Service ID.
  /// - "BRAND" : Brand
  /// - "BRAND_LIST" : Brand List
  /// - "LIFE_EVENT" : Life Event
  core.String? type;

  /// User List.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonUserListInfo? userList;

  /// Webpage
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonWebpageInfo? webpage;

  GoogleAdsSearchads360V0ResourcesAdGroupCriterion({
    this.adGroup,
    this.ageRange,
    this.bidModifier,
    this.cpcBidMicros,
    this.creationTime,
    this.criterionId,
    this.effectiveCpcBidMicros,
    this.effectiveLabels,
    this.engineId,
    this.engineStatus,
    this.finalUrlSuffix,
    this.finalUrls,
    this.gender,
    this.keyword,
    this.labels,
    this.lastModifiedTime,
    this.listingGroup,
    this.location,
    this.negative,
    this.positionEstimates,
    this.qualityInfo,
    this.resourceName,
    this.status,
    this.trackingUrlTemplate,
    this.type,
    this.userList,
    this.webpage,
  });

  GoogleAdsSearchads360V0ResourcesAdGroupCriterion.fromJson(core.Map json_)
    : this(
        adGroup: json_['adGroup'] as core.String?,
        ageRange:
            json_.containsKey('ageRange')
                ? GoogleAdsSearchads360V0CommonAgeRangeInfo.fromJson(
                  json_['ageRange'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        bidModifier: (json_['bidModifier'] as core.num?)?.toDouble(),
        cpcBidMicros: json_['cpcBidMicros'] as core.String?,
        creationTime: json_['creationTime'] as core.String?,
        criterionId: json_['criterionId'] as core.String?,
        effectiveCpcBidMicros: json_['effectiveCpcBidMicros'] as core.String?,
        effectiveLabels:
            (json_['effectiveLabels'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        engineId: json_['engineId'] as core.String?,
        engineStatus: json_['engineStatus'] as core.String?,
        finalUrlSuffix: json_['finalUrlSuffix'] as core.String?,
        finalUrls:
            (json_['finalUrls'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        gender:
            json_.containsKey('gender')
                ? GoogleAdsSearchads360V0CommonGenderInfo.fromJson(
                  json_['gender'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        keyword:
            json_.containsKey('keyword')
                ? GoogleAdsSearchads360V0CommonKeywordInfo.fromJson(
                  json_['keyword'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels:
            (json_['labels'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        lastModifiedTime: json_['lastModifiedTime'] as core.String?,
        listingGroup:
            json_.containsKey('listingGroup')
                ? GoogleAdsSearchads360V0CommonListingGroupInfo.fromJson(
                  json_['listingGroup'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        location:
            json_.containsKey('location')
                ? GoogleAdsSearchads360V0CommonLocationInfo.fromJson(
                  json_['location'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        negative: json_['negative'] as core.bool?,
        positionEstimates:
            json_.containsKey('positionEstimates')
                ? GoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates.fromJson(
                  json_['positionEstimates']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        qualityInfo:
            json_.containsKey('qualityInfo')
                ? GoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo.fromJson(
                  json_['qualityInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        resourceName: json_['resourceName'] as core.String?,
        status: json_['status'] as core.String?,
        trackingUrlTemplate: json_['trackingUrlTemplate'] as core.String?,
        type: json_['type'] as core.String?,
        userList:
            json_.containsKey('userList')
                ? GoogleAdsSearchads360V0CommonUserListInfo.fromJson(
                  json_['userList'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        webpage:
            json_.containsKey('webpage')
                ? GoogleAdsSearchads360V0CommonWebpageInfo.fromJson(
                  json_['webpage'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adGroup != null) 'adGroup': adGroup!,
    if (ageRange != null) 'ageRange': ageRange!,
    if (bidModifier != null) 'bidModifier': bidModifier!,
    if (cpcBidMicros != null) 'cpcBidMicros': cpcBidMicros!,
    if (creationTime != null) 'creationTime': creationTime!,
    if (criterionId != null) 'criterionId': criterionId!,
    if (effectiveCpcBidMicros != null)
      'effectiveCpcBidMicros': effectiveCpcBidMicros!,
    if (effectiveLabels != null) 'effectiveLabels': effectiveLabels!,
    if (engineId != null) 'engineId': engineId!,
    if (engineStatus != null) 'engineStatus': engineStatus!,
    if (finalUrlSuffix != null) 'finalUrlSuffix': finalUrlSuffix!,
    if (finalUrls != null) 'finalUrls': finalUrls!,
    if (gender != null) 'gender': gender!,
    if (keyword != null) 'keyword': keyword!,
    if (labels != null) 'labels': labels!,
    if (lastModifiedTime != null) 'lastModifiedTime': lastModifiedTime!,
    if (listingGroup != null) 'listingGroup': listingGroup!,
    if (location != null) 'location': location!,
    if (negative != null) 'negative': negative!,
    if (positionEstimates != null) 'positionEstimates': positionEstimates!,
    if (qualityInfo != null) 'qualityInfo': qualityInfo!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (status != null) 'status': status!,
    if (trackingUrlTemplate != null)
      'trackingUrlTemplate': trackingUrlTemplate!,
    if (type != null) 'type': type!,
    if (userList != null) 'userList': userList!,
    if (webpage != null) 'webpage': webpage!,
  };
}

/// A relationship between an ad group criterion and an effective label.
///
/// An effective label is a label inherited or directly assigned to this ad
/// group criterion.
class GoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel {
  /// The ad group criterion to which the effective label is attached.
  ///
  /// Immutable.
  core.String? adGroupCriterion;

  /// The effective label assigned to the ad group criterion.
  ///
  /// Immutable.
  core.String? label;

  /// The ID of the Customer which owns the effective label.
  ///
  /// Output only.
  core.String? ownerCustomerId;

  /// The resource name of the ad group criterion effective label.
  ///
  /// Ad group criterion effective label resource names have the form:
  /// `customers/{customer_id}/adGroupCriterionEffectiveLabels/{ad_group_id}~{criterion_id}~{label_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel({
    this.adGroupCriterion,
    this.label,
    this.ownerCustomerId,
    this.resourceName,
  });

  GoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel.fromJson(
    core.Map json_,
  ) : this(
        adGroupCriterion: json_['adGroupCriterion'] as core.String?,
        label: json_['label'] as core.String?,
        ownerCustomerId: json_['ownerCustomerId'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adGroupCriterion != null) 'adGroupCriterion': adGroupCriterion!,
    if (label != null) 'label': label!,
    if (ownerCustomerId != null) 'ownerCustomerId': ownerCustomerId!,
    if (resourceName != null) 'resourceName': resourceName!,
  };
}

/// A relationship between an ad group criterion and a label.
class GoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel {
  /// The ad group criterion to which the label is attached.
  ///
  /// Immutable.
  core.String? adGroupCriterion;

  /// The label assigned to the ad group criterion.
  ///
  /// Immutable.
  core.String? label;

  /// The ID of the Customer which owns the label.
  ///
  /// Output only.
  core.String? ownerCustomerId;

  /// The resource name of the ad group criterion label.
  ///
  /// Ad group criterion label resource names have the form:
  /// `customers/{customer_id}/adGroupCriterionLabels/{ad_group_id}~{criterion_id}~{label_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel({
    this.adGroupCriterion,
    this.label,
    this.ownerCustomerId,
    this.resourceName,
  });

  GoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel.fromJson(core.Map json_)
    : this(
        adGroupCriterion: json_['adGroupCriterion'] as core.String?,
        label: json_['label'] as core.String?,
        ownerCustomerId: json_['ownerCustomerId'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adGroupCriterion != null) 'adGroupCriterion': adGroupCriterion!,
    if (label != null) 'label': label!,
    if (ownerCustomerId != null) 'ownerCustomerId': ownerCustomerId!,
    if (resourceName != null) 'resourceName': resourceName!,
  };
}

/// A relationship between an ad group and an effective label.
///
/// An effective label is a label inherited or directly assigned to this ad
/// group.
class GoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel {
  /// The ad group to which the effective label is attached.
  ///
  /// Immutable.
  core.String? adGroup;

  /// The effective label assigned to the ad group.
  ///
  /// Immutable.
  core.String? label;

  /// The ID of the Customer which owns the effective label.
  ///
  /// Output only.
  core.String? ownerCustomerId;

  /// The resource name of the ad group effective label.
  ///
  /// Ad group effective label resource names have the form:
  /// `customers/{customer_id}/adGroupEffectiveLabels/{ad_group_id}~{label_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel({
    this.adGroup,
    this.label,
    this.ownerCustomerId,
    this.resourceName,
  });

  GoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel.fromJson(core.Map json_)
    : this(
        adGroup: json_['adGroup'] as core.String?,
        label: json_['label'] as core.String?,
        ownerCustomerId: json_['ownerCustomerId'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adGroup != null) 'adGroup': adGroup!,
    if (label != null) 'label': label!,
    if (ownerCustomerId != null) 'ownerCustomerId': ownerCustomerId!,
    if (resourceName != null) 'resourceName': resourceName!,
  };
}

/// A relationship between an ad group and a label.
class GoogleAdsSearchads360V0ResourcesAdGroupLabel {
  /// The ad group to which the label is attached.
  ///
  /// Immutable.
  core.String? adGroup;

  /// The label assigned to the ad group.
  ///
  /// Immutable.
  core.String? label;

  /// The ID of the Customer which owns the label.
  ///
  /// Output only.
  core.String? ownerCustomerId;

  /// The resource name of the ad group label.
  ///
  /// Ad group label resource names have the form:
  /// `customers/{customer_id}/adGroupLabels/{ad_group_id}~{label_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesAdGroupLabel({
    this.adGroup,
    this.label,
    this.ownerCustomerId,
    this.resourceName,
  });

  GoogleAdsSearchads360V0ResourcesAdGroupLabel.fromJson(core.Map json_)
    : this(
        adGroup: json_['adGroup'] as core.String?,
        label: json_['label'] as core.String?,
        ownerCustomerId: json_['ownerCustomerId'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adGroup != null) 'adGroup': adGroup!,
    if (label != null) 'label': label!,
    if (ownerCustomerId != null) 'ownerCustomerId': ownerCustomerId!,
    if (resourceName != null) 'resourceName': resourceName!,
  };
}

/// An age range view.
class GoogleAdsSearchads360V0ResourcesAgeRangeView {
  /// The resource name of the age range view.
  ///
  /// Age range view resource names have the form:
  /// `customers/{customer_id}/ageRangeViews/{ad_group_id}~{criterion_id}`
  ///
  /// Output only.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesAgeRangeView({this.resourceName});

  GoogleAdsSearchads360V0ResourcesAgeRangeView.fromJson(core.Map json_)
    : this(resourceName: json_['resourceName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (resourceName != null) 'resourceName': resourceName!,
  };
}

/// Asset is a part of an ad which can be shared across multiple ads.
///
/// It can be an image (ImageAsset), a video (YoutubeVideoAsset), etc. Assets
/// are immutable and cannot be removed. To stop an asset from serving, remove
/// the asset from the entity that is using it.
class GoogleAdsSearchads360V0ResourcesAsset {
  /// A unified call asset.
  ///
  /// Output only.
  GoogleAdsSearchads360V0CommonUnifiedCallAsset? callAsset;

  /// A call to action asset.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonCallToActionAsset? callToActionAsset;

  /// A unified callout asset.
  ///
  /// Output only.
  GoogleAdsSearchads360V0CommonUnifiedCalloutAsset? calloutAsset;

  /// The timestamp when this asset was created.
  ///
  /// The timestamp is in the customer's time zone and in "yyyy-MM-dd HH:mm:ss"
  /// format.
  ///
  /// Output only.
  core.String? creationTime;

  /// The Engine Status for an asset.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "SERVING" : The asset is active.
  /// - "SERVING_LIMITED" : The asset is active limited.
  /// - "DISAPPROVED" : The asset is disapproved (not eligible).
  /// - "DISABLED" : The asset is inactive (pending).
  /// - "REMOVED" : The asset has been removed.
  core.String? engineStatus;

  /// A list of possible final URLs after all cross domain redirects.
  core.List<core.String>? finalUrls;

  /// The ID of the asset.
  ///
  /// Output only.
  core.String? id;

  /// An image asset.
  ///
  /// Output only.
  GoogleAdsSearchads360V0CommonImageAsset? imageAsset;

  /// The datetime when this asset was last modified.
  ///
  /// The datetime is in the customer's time zone and in "yyyy-MM-dd
  /// HH:mm:ss.ssssss" format.
  ///
  /// Output only.
  core.String? lastModifiedTime;

  /// A unified location asset.
  ///
  /// Output only.
  GoogleAdsSearchads360V0CommonUnifiedLocationAsset? locationAsset;

  /// A mobile app asset.
  GoogleAdsSearchads360V0CommonMobileAppAsset? mobileAppAsset;

  /// Optional name of the asset.
  core.String? name;

  /// A unified page feed asset.
  ///
  /// Output only.
  GoogleAdsSearchads360V0CommonUnifiedPageFeedAsset? pageFeedAsset;

  /// The resource name of the asset.
  ///
  /// Asset resource names have the form:
  /// `customers/{customer_id}/assets/{asset_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// A unified sitelink asset.
  ///
  /// Output only.
  GoogleAdsSearchads360V0CommonUnifiedSitelinkAsset? sitelinkAsset;

  /// The status of the asset.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : The status has not been specified.
  /// - "UNKNOWN" : The received value is not known in this version. This is a
  /// response-only value.
  /// - "ENABLED" : The asset is enabled.
  /// - "REMOVED" : The asset is removed.
  /// - "ARCHIVED" : The asset is archived.
  /// - "PENDING_SYSTEM_GENERATED" : The asset is system generated pending user
  /// review.
  core.String? status;

  /// A text asset.
  ///
  /// Output only.
  GoogleAdsSearchads360V0CommonTextAsset? textAsset;

  /// URL template for constructing a tracking URL.
  core.String? trackingUrlTemplate;

  /// Type of the asset.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "YOUTUBE_VIDEO" : YouTube video asset.
  /// - "MEDIA_BUNDLE" : Media bundle asset.
  /// - "IMAGE" : Image asset.
  /// - "TEXT" : Text asset.
  /// - "LEAD_FORM" : Lead form asset.
  /// - "BOOK_ON_GOOGLE" : Book on Google asset.
  /// - "PROMOTION" : Promotion asset.
  /// - "CALLOUT" : Callout asset.
  /// - "STRUCTURED_SNIPPET" : Structured Snippet asset.
  /// - "SITELINK" : Sitelink asset.
  /// - "PAGE_FEED" : Page Feed asset.
  /// - "DYNAMIC_EDUCATION" : Dynamic Education asset.
  /// - "MOBILE_APP" : Mobile app asset.
  /// - "HOTEL_CALLOUT" : Hotel callout asset.
  /// - "CALL" : Call asset.
  /// - "PRICE" : Price asset.
  /// - "CALL_TO_ACTION" : Call to action asset.
  /// - "DYNAMIC_REAL_ESTATE" : Dynamic real estate asset.
  /// - "DYNAMIC_CUSTOM" : Dynamic custom asset.
  /// - "DYNAMIC_HOTELS_AND_RENTALS" : Dynamic hotels and rentals asset.
  /// - "DYNAMIC_FLIGHTS" : Dynamic flights asset.
  /// - "DISCOVERY_CAROUSEL_CARD" : Discovery Carousel Card asset.
  /// - "DYNAMIC_TRAVEL" : Dynamic travel asset.
  /// - "DYNAMIC_LOCAL" : Dynamic local asset.
  /// - "DYNAMIC_JOBS" : Dynamic jobs asset.
  /// - "LOCATION" : Location asset.
  /// - "HOTEL_PROPERTY" : Hotel property asset.
  core.String? type;

  /// A YouTube video asset.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonYoutubeVideoAsset? youtubeVideoAsset;

  GoogleAdsSearchads360V0ResourcesAsset({
    this.callAsset,
    this.callToActionAsset,
    this.calloutAsset,
    this.creationTime,
    this.engineStatus,
    this.finalUrls,
    this.id,
    this.imageAsset,
    this.lastModifiedTime,
    this.locationAsset,
    this.mobileAppAsset,
    this.name,
    this.pageFeedAsset,
    this.resourceName,
    this.sitelinkAsset,
    this.status,
    this.textAsset,
    this.trackingUrlTemplate,
    this.type,
    this.youtubeVideoAsset,
  });

  GoogleAdsSearchads360V0ResourcesAsset.fromJson(core.Map json_)
    : this(
        callAsset:
            json_.containsKey('callAsset')
                ? GoogleAdsSearchads360V0CommonUnifiedCallAsset.fromJson(
                  json_['callAsset'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        callToActionAsset:
            json_.containsKey('callToActionAsset')
                ? GoogleAdsSearchads360V0CommonCallToActionAsset.fromJson(
                  json_['callToActionAsset']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        calloutAsset:
            json_.containsKey('calloutAsset')
                ? GoogleAdsSearchads360V0CommonUnifiedCalloutAsset.fromJson(
                  json_['calloutAsset'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        creationTime: json_['creationTime'] as core.String?,
        engineStatus: json_['engineStatus'] as core.String?,
        finalUrls:
            (json_['finalUrls'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        id: json_['id'] as core.String?,
        imageAsset:
            json_.containsKey('imageAsset')
                ? GoogleAdsSearchads360V0CommonImageAsset.fromJson(
                  json_['imageAsset'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        lastModifiedTime: json_['lastModifiedTime'] as core.String?,
        locationAsset:
            json_.containsKey('locationAsset')
                ? GoogleAdsSearchads360V0CommonUnifiedLocationAsset.fromJson(
                  json_['locationAsset'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        mobileAppAsset:
            json_.containsKey('mobileAppAsset')
                ? GoogleAdsSearchads360V0CommonMobileAppAsset.fromJson(
                  json_['mobileAppAsset']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        pageFeedAsset:
            json_.containsKey('pageFeedAsset')
                ? GoogleAdsSearchads360V0CommonUnifiedPageFeedAsset.fromJson(
                  json_['pageFeedAsset'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        resourceName: json_['resourceName'] as core.String?,
        sitelinkAsset:
            json_.containsKey('sitelinkAsset')
                ? GoogleAdsSearchads360V0CommonUnifiedSitelinkAsset.fromJson(
                  json_['sitelinkAsset'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        status: json_['status'] as core.String?,
        textAsset:
            json_.containsKey('textAsset')
                ? GoogleAdsSearchads360V0CommonTextAsset.fromJson(
                  json_['textAsset'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        trackingUrlTemplate: json_['trackingUrlTemplate'] as core.String?,
        type: json_['type'] as core.String?,
        youtubeVideoAsset:
            json_.containsKey('youtubeVideoAsset')
                ? GoogleAdsSearchads360V0CommonYoutubeVideoAsset.fromJson(
                  json_['youtubeVideoAsset']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (callAsset != null) 'callAsset': callAsset!,
    if (callToActionAsset != null) 'callToActionAsset': callToActionAsset!,
    if (calloutAsset != null) 'calloutAsset': calloutAsset!,
    if (creationTime != null) 'creationTime': creationTime!,
    if (engineStatus != null) 'engineStatus': engineStatus!,
    if (finalUrls != null) 'finalUrls': finalUrls!,
    if (id != null) 'id': id!,
    if (imageAsset != null) 'imageAsset': imageAsset!,
    if (lastModifiedTime != null) 'lastModifiedTime': lastModifiedTime!,
    if (locationAsset != null) 'locationAsset': locationAsset!,
    if (mobileAppAsset != null) 'mobileAppAsset': mobileAppAsset!,
    if (name != null) 'name': name!,
    if (pageFeedAsset != null) 'pageFeedAsset': pageFeedAsset!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (sitelinkAsset != null) 'sitelinkAsset': sitelinkAsset!,
    if (status != null) 'status': status!,
    if (textAsset != null) 'textAsset': textAsset!,
    if (trackingUrlTemplate != null)
      'trackingUrlTemplate': trackingUrlTemplate!,
    if (type != null) 'type': type!,
    if (youtubeVideoAsset != null) 'youtubeVideoAsset': youtubeVideoAsset!,
  };
}

/// An asset group.
///
/// AssetGroupAsset is used to link an asset to the asset group.
/// AssetGroupSignal is used to associate a signal to an asset group.
class GoogleAdsSearchads360V0ResourcesAssetGroup {
  /// Overall ad strength of this asset group.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "PENDING" : The ad strength is currently pending.
  /// - "NO_ADS" : No ads could be generated.
  /// - "POOR" : Poor strength.
  /// - "AVERAGE" : Average strength.
  /// - "GOOD" : Good strength.
  /// - "EXCELLENT" : Excellent strength.
  core.String? adStrength;

  /// The campaign with which this asset group is associated.
  ///
  /// The asset which is linked to the asset group.
  ///
  /// Immutable.
  core.String? campaign;

  /// A list of final mobile URLs after all cross domain redirects.
  ///
  /// In performance max, by default, the urls are eligible for expansion unless
  /// opted out.
  core.List<core.String>? finalMobileUrls;

  /// A list of final URLs after all cross domain redirects.
  ///
  /// In performance max, by default, the urls are eligible for expansion unless
  /// opted out.
  core.List<core.String>? finalUrls;

  /// The ID of the asset group.
  ///
  /// Output only.
  core.String? id;

  /// Name of the asset group.
  ///
  /// Required. It must have a minimum length of 1 and maximum length of 128. It
  /// must be unique under a campaign.
  ///
  /// Required.
  core.String? name;

  /// First part of text that may appear appended to the url displayed in the
  /// ad.
  core.String? path1;

  /// Second part of text that may appear appended to the url displayed in the
  /// ad.
  ///
  /// This field can only be set when path1 is set.
  core.String? path2;

  /// The resource name of the asset group.
  ///
  /// Asset group resource names have the form:
  /// `customers/{customer_id}/assetGroups/{asset_group_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// The status of the asset group.
  /// Possible string values are:
  /// - "UNSPECIFIED" : The status has not been specified.
  /// - "UNKNOWN" : The received value is not known in this version.
  /// - "ENABLED" : The asset group is enabled.
  /// - "PAUSED" : The asset group is paused.
  /// - "REMOVED" : The asset group is removed.
  core.String? status;

  GoogleAdsSearchads360V0ResourcesAssetGroup({
    this.adStrength,
    this.campaign,
    this.finalMobileUrls,
    this.finalUrls,
    this.id,
    this.name,
    this.path1,
    this.path2,
    this.resourceName,
    this.status,
  });

  GoogleAdsSearchads360V0ResourcesAssetGroup.fromJson(core.Map json_)
    : this(
        adStrength: json_['adStrength'] as core.String?,
        campaign: json_['campaign'] as core.String?,
        finalMobileUrls:
            (json_['finalMobileUrls'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        finalUrls:
            (json_['finalUrls'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
        path1: json_['path1'] as core.String?,
        path2: json_['path2'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adStrength != null) 'adStrength': adStrength!,
    if (campaign != null) 'campaign': campaign!,
    if (finalMobileUrls != null) 'finalMobileUrls': finalMobileUrls!,
    if (finalUrls != null) 'finalUrls': finalUrls!,
    if (id != null) 'id': id!,
    if (name != null) 'name': name!,
    if (path1 != null) 'path1': path1!,
    if (path2 != null) 'path2': path2!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (status != null) 'status': status!,
  };
}

/// AssetGroupAsset is the link between an asset and an asset group.
///
/// Adding an AssetGroupAsset links an asset with an asset group.
class GoogleAdsSearchads360V0ResourcesAssetGroupAsset {
  /// The asset which this asset group asset is linking.
  ///
  /// Immutable.
  core.String? asset;

  /// The asset group which this asset group asset is linking.
  ///
  /// Immutable.
  core.String? assetGroup;

  /// The description of the placement of the asset within the asset group.
  ///
  /// For example: HEADLINE, YOUTUBE_VIDEO etc
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "HEADLINE" : The asset is linked for use as a headline.
  /// - "DESCRIPTION" : The asset is linked for use as a description.
  /// - "MANDATORY_AD_TEXT" : The asset is linked for use as mandatory ad text.
  /// - "MARKETING_IMAGE" : The asset is linked for use as a marketing image.
  /// - "MEDIA_BUNDLE" : The asset is linked for use as a media bundle.
  /// - "YOUTUBE_VIDEO" : The asset is linked for use as a YouTube video.
  /// - "BOOK_ON_GOOGLE" : The asset is linked to indicate that a hotels
  /// campaign is "Book on Google" enabled.
  /// - "LEAD_FORM" : The asset is linked for use as a Lead Form extension.
  /// - "PROMOTION" : The asset is linked for use as a Promotion extension.
  /// - "CALLOUT" : The asset is linked for use as a Callout extension.
  /// - "STRUCTURED_SNIPPET" : The asset is linked for use as a Structured
  /// Snippet extension.
  /// - "SITELINK" : The asset is linked for use as a Sitelink.
  /// - "MOBILE_APP" : The asset is linked for use as a Mobile App extension.
  /// - "HOTEL_CALLOUT" : The asset is linked for use as a Hotel Callout
  /// extension.
  /// - "CALL" : The asset is linked for use as a Call extension.
  /// - "PRICE" : The asset is linked for use as a Price extension.
  /// - "LONG_HEADLINE" : The asset is linked for use as a long headline.
  /// - "BUSINESS_NAME" : The asset is linked for use as a business name.
  /// - "SQUARE_MARKETING_IMAGE" : The asset is linked for use as a square
  /// marketing image.
  /// - "PORTRAIT_MARKETING_IMAGE" : The asset is linked for use as a portrait
  /// marketing image.
  /// - "LOGO" : The asset is linked for use as a logo.
  /// - "LANDSCAPE_LOGO" : The asset is linked for use as a landscape logo.
  /// - "VIDEO" : The asset is linked for use as a non YouTube logo.
  /// - "CALL_TO_ACTION_SELECTION" : The asset is linked for use to select a
  /// call-to-action.
  /// - "AD_IMAGE" : The asset is linked for use to select an ad image.
  /// - "BUSINESS_LOGO" : The asset is linked for use as a business logo.
  /// - "HOTEL_PROPERTY" : The asset is linked for use as a hotel property in a
  /// Performance Max for travel goals campaign.
  /// - "DISCOVERY_CAROUSEL_CARD" : The asset is linked for use as a discovery
  /// carousel card.
  core.String? fieldType;

  /// The resource name of the asset group asset.
  ///
  /// Asset group asset resource name have the form:
  /// `customers/{customer_id}/assetGroupAssets/{asset_group_id}~{asset_id}~{field_type}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// The status of the link between an asset and asset group.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "ENABLED" : Asset link is enabled.
  /// - "REMOVED" : Asset link has been removed.
  /// - "PAUSED" : Asset link is paused.
  core.String? status;

  GoogleAdsSearchads360V0ResourcesAssetGroupAsset({
    this.asset,
    this.assetGroup,
    this.fieldType,
    this.resourceName,
    this.status,
  });

  GoogleAdsSearchads360V0ResourcesAssetGroupAsset.fromJson(core.Map json_)
    : this(
        asset: json_['asset'] as core.String?,
        assetGroup: json_['assetGroup'] as core.String?,
        fieldType: json_['fieldType'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (asset != null) 'asset': asset!,
    if (assetGroup != null) 'assetGroup': assetGroup!,
    if (fieldType != null) 'fieldType': fieldType!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (status != null) 'status': status!,
  };
}

/// Asset group asset combination data
class GoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData {
  /// Served assets.
  ///
  /// Output only.
  core.List<GoogleAdsSearchads360V0CommonAssetUsage>?
  assetCombinationServedAssets;

  GoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData({
    this.assetCombinationServedAssets,
  });

  GoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData.fromJson(
    core.Map json_,
  ) : this(
        assetCombinationServedAssets:
            (json_['assetCombinationServedAssets'] as core.List?)
                ?.map(
                  (value) => GoogleAdsSearchads360V0CommonAssetUsage.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assetCombinationServedAssets != null)
      'assetCombinationServedAssets': assetCombinationServedAssets!,
  };
}

/// AssetGroupListingGroupFilter represents a listing group filter tree node in
/// an asset group.
class GoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter {
  /// The asset group which this asset group listing group filter is part of.
  ///
  /// Immutable.
  core.String? assetGroup;

  /// Dimension value with which this listing group is refining its parent.
  ///
  /// Undefined for the root group.
  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimension? caseValue;

  /// The ID of the ListingGroupFilter.
  ///
  /// Output only.
  core.String? id;

  /// Resource name of the parent listing group subdivision.
  ///
  /// Null for the root listing group filter node.
  ///
  /// Immutable.
  core.String? parentListingGroupFilter;

  /// The path of dimensions defining this listing group filter.
  ///
  /// Output only.
  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath? path;

  /// The resource name of the asset group listing group filter.
  ///
  /// Asset group listing group filter resource name have the form:
  /// `customers/{customer_id}/assetGroupListingGroupFilters/{asset_group_id}~{listing_group_filter_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// Type of a listing group filter node.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "SUBDIVISION" : Subdivision of products along some listing dimensions.
  /// - "UNIT_INCLUDED" : An included listing group filter leaf node.
  /// - "UNIT_EXCLUDED" : An excluded listing group filter leaf node.
  core.String? type;

  /// The vertical the current node tree represents.
  ///
  /// All nodes in the same tree must belong to the same vertical.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "SHOPPING" : Represents the shopping vertical. The vertical is allowed
  /// only in Performance Max for Retail campaigns.
  core.String? vertical;

  GoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter({
    this.assetGroup,
    this.caseValue,
    this.id,
    this.parentListingGroupFilter,
    this.path,
    this.resourceName,
    this.type,
    this.vertical,
  });

  GoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter.fromJson(
    core.Map json_,
  ) : this(
        assetGroup: json_['assetGroup'] as core.String?,
        caseValue:
            json_.containsKey('caseValue')
                ? GoogleAdsSearchads360V0ResourcesListingGroupFilterDimension.fromJson(
                  json_['caseValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        parentListingGroupFilter:
            json_['parentListingGroupFilter'] as core.String?,
        path:
            json_.containsKey('path')
                ? GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath.fromJson(
                  json_['path'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        resourceName: json_['resourceName'] as core.String?,
        type: json_['type'] as core.String?,
        vertical: json_['vertical'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assetGroup != null) 'assetGroup': assetGroup!,
    if (caseValue != null) 'caseValue': caseValue!,
    if (id != null) 'id': id!,
    if (parentListingGroupFilter != null)
      'parentListingGroupFilter': parentListingGroupFilter!,
    if (path != null) 'path': path!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (type != null) 'type': type!,
    if (vertical != null) 'vertical': vertical!,
  };
}

/// AssetGroupSignal represents a signal in an asset group.
///
/// The existence of a signal tells the performance max campaign who's most
/// likely to convert. Performance Max uses the signal to look for new people
/// with similar or stronger intent to find conversions across Search, Display,
/// Video, and more.
class GoogleAdsSearchads360V0ResourcesAssetGroupSignal {
  /// The asset group which this asset group signal belongs to.
  ///
  /// Immutable.
  core.String? assetGroup;

  /// The audience signal to be used by the performance max campaign.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonAudienceInfo? audience;

  /// The resource name of the asset group signal.
  ///
  /// Asset group signal resource name have the form:
  /// `customers/{customer_id}/assetGroupSignals/{asset_group_id}~{signal_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesAssetGroupSignal({
    this.assetGroup,
    this.audience,
    this.resourceName,
  });

  GoogleAdsSearchads360V0ResourcesAssetGroupSignal.fromJson(core.Map json_)
    : this(
        assetGroup: json_['assetGroup'] as core.String?,
        audience:
            json_.containsKey('audience')
                ? GoogleAdsSearchads360V0CommonAudienceInfo.fromJson(
                  json_['audience'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        resourceName: json_['resourceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assetGroup != null) 'assetGroup': assetGroup!,
    if (audience != null) 'audience': audience!,
    if (resourceName != null) 'resourceName': resourceName!,
  };
}

/// A view on the usage of asset group asset top combinations.
class GoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView {
  /// The top combinations of assets that served together.
  ///
  /// Output only.
  core.List<GoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData>?
  assetGroupTopCombinations;

  /// The resource name of the asset group top combination view.
  ///
  /// AssetGroup Top Combination view resource names have the form:
  /// \`"customers/{customer_id}/assetGroupTopCombinationViews/{asset_group_id}~{asset_combination_category}"
  ///
  /// Output only.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView({
    this.assetGroupTopCombinations,
    this.resourceName,
  });

  GoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView.fromJson(
    core.Map json_,
  ) : this(
        assetGroupTopCombinations:
            (json_['assetGroupTopCombinations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        resourceName: json_['resourceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assetGroupTopCombinations != null)
      'assetGroupTopCombinations': assetGroupTopCombinations!,
    if (resourceName != null) 'resourceName': resourceName!,
  };
}

/// An asset set representing a collection of assets.
///
/// Use AssetSetAsset to link an asset to the asset set.
class GoogleAdsSearchads360V0ResourcesAssetSet {
  /// The ID of the asset set.
  ///
  /// Output only.
  core.String? id;

  /// The resource name of the asset set.
  ///
  /// Asset set resource names have the form:
  /// `customers/{customer_id}/assetSets/{asset_set_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesAssetSet({this.id, this.resourceName});

  GoogleAdsSearchads360V0ResourcesAssetSet.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (id != null) 'id': id!,
    if (resourceName != null) 'resourceName': resourceName!,
  };
}

/// AssetSetAsset is the link between an asset and an asset set.
///
/// Adding an AssetSetAsset links an asset with an asset set.
class GoogleAdsSearchads360V0ResourcesAssetSetAsset {
  /// The asset which this asset set asset is linking to.
  ///
  /// Immutable.
  core.String? asset;

  /// The asset set which this asset set asset is linking to.
  ///
  /// Immutable.
  core.String? assetSet;

  /// The resource name of the asset set asset.
  ///
  /// Asset set asset resource names have the form:
  /// `customers/{customer_id}/assetSetAssets/{asset_set_id}~{asset_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// The status of the asset set asset.
  ///
  /// Read-only.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : The status has not been specified.
  /// - "UNKNOWN" : The received value is not known in this version. This is a
  /// response-only value.
  /// - "ENABLED" : The asset set asset is enabled.
  /// - "REMOVED" : The asset set asset is removed.
  core.String? status;

  GoogleAdsSearchads360V0ResourcesAssetSetAsset({
    this.asset,
    this.assetSet,
    this.resourceName,
    this.status,
  });

  GoogleAdsSearchads360V0ResourcesAssetSetAsset.fromJson(core.Map json_)
    : this(
        asset: json_['asset'] as core.String?,
        assetSet: json_['assetSet'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (asset != null) 'asset': asset!,
    if (assetSet != null) 'assetSet': assetSet!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (status != null) 'status': status!,
  };
}

/// Audience is an effective targeting option that lets you intersect different
/// segment attributes, such as detailed demographics and affinities, to create
/// audiences that represent sections of your target segments.
class GoogleAdsSearchads360V0ResourcesAudience {
  /// Description of this audience.
  core.String? description;

  /// ID of the audience.
  ///
  /// Output only.
  core.String? id;

  /// Name of the audience.
  ///
  /// It should be unique across all audiences. It must have a minimum length of
  /// 1 and maximum length of 255.
  ///
  /// Required.
  core.String? name;

  /// The resource name of the audience.
  ///
  /// Audience names have the form:
  /// `customers/{customer_id}/audiences/{audience_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesAudience({
    this.description,
    this.id,
    this.name,
    this.resourceName,
  });

  GoogleAdsSearchads360V0ResourcesAudience.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (id != null) 'id': id!,
    if (name != null) 'name': name!,
    if (resourceName != null) 'resourceName': resourceName!,
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
        campaignCount: json_['campaignCount'] as core.String?,
        currencyCode: json_['currencyCode'] as core.String?,
        effectiveCurrencyCode: json_['effectiveCurrencyCode'] as core.String?,
        enhancedCpc:
            json_.containsKey('enhancedCpc')
                ? GoogleAdsSearchads360V0CommonEnhancedCpc.fromJson(
                  json_['enhancedCpc'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        maximizeConversionValue:
            json_.containsKey('maximizeConversionValue')
                ? GoogleAdsSearchads360V0CommonMaximizeConversionValue.fromJson(
                  json_['maximizeConversionValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        maximizeConversions:
            json_.containsKey('maximizeConversions')
                ? GoogleAdsSearchads360V0CommonMaximizeConversions.fromJson(
                  json_['maximizeConversions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        nonRemovedCampaignCount:
            json_['nonRemovedCampaignCount'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        status: json_['status'] as core.String?,
        targetCpa:
            json_.containsKey('targetCpa')
                ? GoogleAdsSearchads360V0CommonTargetCpa.fromJson(
                  json_['targetCpa'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        targetImpressionShare:
            json_.containsKey('targetImpressionShare')
                ? GoogleAdsSearchads360V0CommonTargetImpressionShare.fromJson(
                  json_['targetImpressionShare']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        targetOutrankShare:
            json_.containsKey('targetOutrankShare')
                ? GoogleAdsSearchads360V0CommonTargetOutrankShare.fromJson(
                  json_['targetOutrankShare']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        targetRoas:
            json_.containsKey('targetRoas')
                ? GoogleAdsSearchads360V0CommonTargetRoas.fromJson(
                  json_['targetRoas'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        targetSpend:
            json_.containsKey('targetSpend')
                ? GoogleAdsSearchads360V0CommonTargetSpend.fromJson(
                  json_['targetSpend'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
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
    if (targetOutrankShare != null) 'targetOutrankShare': targetOutrankShare!,
    if (targetRoas != null) 'targetRoas': targetRoas!,
    if (targetSpend != null) 'targetSpend': targetSpend!,
    if (type != null) 'type': type!,
  };
}

/// A campaign.
class GoogleAdsSearchads360V0ResourcesCampaign {
  /// Resource name of AccessibleBiddingStrategy, a read-only view of the
  /// unrestricted attributes of the attached portfolio bidding strategy
  /// identified by 'bidding_strategy'.
  ///
  /// Empty, if the campaign does not use a portfolio strategy. Unrestricted
  /// strategy attributes are available to all customers with whom the strategy
  /// is shared and are read from the AccessibleBiddingStrategy resource. In
  /// contrast, restricted attributes are only available to the owner customer
  /// of the strategy and their managers. Restricted attributes can only be read
  /// from the BiddingStrategy resource.
  ///
  /// Output only.
  core.String? accessibleBiddingStrategy;

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
  /// - "DISPLAY_SMART_CAMPAIGN" : Smart display campaigns. New campaigns of
  /// this sub type cannot be created.
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
  /// - "TRAVEL_ACTIVITIES" : Travel Activities campaigns.
  /// - "SOCIAL_FACEBOOK_TRACKING_ONLY" : Facebook tracking only social
  /// campaigns.
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
  /// - "TRAVEL" : Travel campaigns.
  /// - "SOCIAL" : Social campaigns.
  core.String? advertisingChannelType;

  /// The resource name of the portfolio bidding strategy used by the campaign.
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

  /// The resource name of the campaign budget of the campaign.
  core.String? campaignBudget;

  /// The timestamp when this campaign was created.
  ///
  /// The timestamp is in the customer's time zone and in "yyyy-MM-dd HH:mm:ss"
  /// format. create_time will be deprecated in v1. Use creation_time instead.
  ///
  /// Output only.
  core.String? createTime;

  /// The timestamp when this campaign was created.
  ///
  /// The timestamp is in the customer's time zone and in "yyyy-MM-dd HH:mm:ss"
  /// format.
  ///
  /// Output only.
  core.String? creationTime;

  /// The setting for controlling Dynamic Search Ads (DSA).
  GoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting?
  dynamicSearchAdsSetting;

  /// The resource names of effective labels attached to this campaign.
  ///
  /// An effective label is a label inherited or directly assigned to this
  /// campaign.
  ///
  /// Output only.
  core.List<core.String>? effectiveLabels;

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
  ///
  /// This feature only applies to app campaigns that use MULTI_CHANNEL as
  /// AdvertisingChannelType and APP_CAMPAIGN or APP_CAMPAIGN_FOR_ENGAGEMENT as
  /// AdvertisingChannelSubType.
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
    this.accessibleBiddingStrategy,
    this.adServingOptimizationStatus,
    this.advertisingChannelSubType,
    this.advertisingChannelType,
    this.biddingStrategy,
    this.biddingStrategySystemStatus,
    this.biddingStrategyType,
    this.campaignBudget,
    this.createTime,
    this.creationTime,
    this.dynamicSearchAdsSetting,
    this.effectiveLabels,
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
        accessibleBiddingStrategy:
            json_['accessibleBiddingStrategy'] as core.String?,
        adServingOptimizationStatus:
            json_['adServingOptimizationStatus'] as core.String?,
        advertisingChannelSubType:
            json_['advertisingChannelSubType'] as core.String?,
        advertisingChannelType: json_['advertisingChannelType'] as core.String?,
        biddingStrategy: json_['biddingStrategy'] as core.String?,
        biddingStrategySystemStatus:
            json_['biddingStrategySystemStatus'] as core.String?,
        biddingStrategyType: json_['biddingStrategyType'] as core.String?,
        campaignBudget: json_['campaignBudget'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        creationTime: json_['creationTime'] as core.String?,
        dynamicSearchAdsSetting:
            json_.containsKey('dynamicSearchAdsSetting')
                ? GoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting.fromJson(
                  json_['dynamicSearchAdsSetting']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        effectiveLabels:
            (json_['effectiveLabels'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        endDate: json_['endDate'] as core.String?,
        engineId: json_['engineId'] as core.String?,
        excludedParentAssetFieldTypes:
            (json_['excludedParentAssetFieldTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        finalUrlSuffix: json_['finalUrlSuffix'] as core.String?,
        frequencyCaps:
            (json_['frequencyCaps'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAdsSearchads360V0CommonFrequencyCapEntry.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        geoTargetTypeSetting:
            json_.containsKey('geoTargetTypeSetting')
                ? GoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting.fromJson(
                  json_['geoTargetTypeSetting']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        labels:
            (json_['labels'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        lastModifiedTime: json_['lastModifiedTime'] as core.String?,
        manualCpa:
            json_.containsKey('manualCpa')
                ? GoogleAdsSearchads360V0CommonManualCpa.fromJson(
                  json_['manualCpa'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        manualCpc:
            json_.containsKey('manualCpc')
                ? GoogleAdsSearchads360V0CommonManualCpc.fromJson(
                  json_['manualCpc'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        manualCpm:
            json_.containsKey('manualCpm')
                ? GoogleAdsSearchads360V0CommonManualCpm.fromJson(
                  json_['manualCpm'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        maximizeConversionValue:
            json_.containsKey('maximizeConversionValue')
                ? GoogleAdsSearchads360V0CommonMaximizeConversionValue.fromJson(
                  json_['maximizeConversionValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        maximizeConversions:
            json_.containsKey('maximizeConversions')
                ? GoogleAdsSearchads360V0CommonMaximizeConversions.fromJson(
                  json_['maximizeConversions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        networkSettings:
            json_.containsKey('networkSettings')
                ? GoogleAdsSearchads360V0ResourcesCampaignNetworkSettings.fromJson(
                  json_['networkSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        optimizationGoalSetting:
            json_.containsKey('optimizationGoalSetting')
                ? GoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting.fromJson(
                  json_['optimizationGoalSetting']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        percentCpc:
            json_.containsKey('percentCpc')
                ? GoogleAdsSearchads360V0CommonPercentCpc.fromJson(
                  json_['percentCpc'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        realTimeBiddingSetting:
            json_.containsKey('realTimeBiddingSetting')
                ? GoogleAdsSearchads360V0CommonRealTimeBiddingSetting.fromJson(
                  json_['realTimeBiddingSetting']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        resourceName: json_['resourceName'] as core.String?,
        selectiveOptimization:
            json_.containsKey('selectiveOptimization')
                ? GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization.fromJson(
                  json_['selectiveOptimization']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        servingStatus: json_['servingStatus'] as core.String?,
        shoppingSetting:
            json_.containsKey('shoppingSetting')
                ? GoogleAdsSearchads360V0ResourcesCampaignShoppingSetting.fromJson(
                  json_['shoppingSetting']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        startDate: json_['startDate'] as core.String?,
        status: json_['status'] as core.String?,
        targetCpa:
            json_.containsKey('targetCpa')
                ? GoogleAdsSearchads360V0CommonTargetCpa.fromJson(
                  json_['targetCpa'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        targetCpm:
            json_.containsKey('targetCpm')
                ? GoogleAdsSearchads360V0CommonTargetCpm.fromJson(
                  json_['targetCpm'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        targetImpressionShare:
            json_.containsKey('targetImpressionShare')
                ? GoogleAdsSearchads360V0CommonTargetImpressionShare.fromJson(
                  json_['targetImpressionShare']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        targetRoas:
            json_.containsKey('targetRoas')
                ? GoogleAdsSearchads360V0CommonTargetRoas.fromJson(
                  json_['targetRoas'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        targetSpend:
            json_.containsKey('targetSpend')
                ? GoogleAdsSearchads360V0CommonTargetSpend.fromJson(
                  json_['targetSpend'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        trackingSetting:
            json_.containsKey('trackingSetting')
                ? GoogleAdsSearchads360V0ResourcesCampaignTrackingSetting.fromJson(
                  json_['trackingSetting']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        trackingUrlTemplate: json_['trackingUrlTemplate'] as core.String?,
        urlCustomParameters:
            (json_['urlCustomParameters'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAdsSearchads360V0CommonCustomParameter.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        urlExpansionOptOut: json_['urlExpansionOptOut'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accessibleBiddingStrategy != null)
      'accessibleBiddingStrategy': accessibleBiddingStrategy!,
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
    if (creationTime != null) 'creationTime': creationTime!,
    if (dynamicSearchAdsSetting != null)
      'dynamicSearchAdsSetting': dynamicSearchAdsSetting!,
    if (effectiveLabels != null) 'effectiveLabels': effectiveLabels!,
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
    if (urlExpansionOptOut != null) 'urlExpansionOptOut': urlExpansionOptOut!,
  };
}

/// A link between a Campaign and an Asset.
class GoogleAdsSearchads360V0ResourcesCampaignAsset {
  /// The asset which is linked to the campaign.
  ///
  /// Immutable.
  core.String? asset;

  /// The campaign to which the asset is linked.
  ///
  /// Immutable.
  core.String? campaign;

  /// The resource name of the campaign asset.
  ///
  /// CampaignAsset resource names have the form:
  /// `customers/{customer_id}/campaignAssets/{campaign_id}~{asset_id}~{field_type}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// Status of the campaign asset.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "ENABLED" : Asset link is enabled.
  /// - "REMOVED" : Asset link has been removed.
  /// - "PAUSED" : Asset link is paused.
  core.String? status;

  GoogleAdsSearchads360V0ResourcesCampaignAsset({
    this.asset,
    this.campaign,
    this.resourceName,
    this.status,
  });

  GoogleAdsSearchads360V0ResourcesCampaignAsset.fromJson(core.Map json_)
    : this(
        asset: json_['asset'] as core.String?,
        campaign: json_['campaign'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (asset != null) 'asset': asset!,
    if (campaign != null) 'campaign': campaign!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (status != null) 'status': status!,
  };
}

/// CampaignAssetSet is the linkage between a campaign and an asset set.
///
/// Adding a CampaignAssetSet links an asset set with a campaign.
class GoogleAdsSearchads360V0ResourcesCampaignAssetSet {
  /// The asset set which is linked to the campaign.
  ///
  /// Immutable.
  core.String? assetSet;

  /// The campaign to which this asset set is linked.
  ///
  /// Immutable.
  core.String? campaign;

  /// The resource name of the campaign asset set.
  ///
  /// Asset set asset resource names have the form:
  /// `customers/{customer_id}/campaignAssetSets/{campaign_id}~{asset_set_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// The status of the campaign asset set asset.
  ///
  /// Read-only.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : The status has not been specified.
  /// - "UNKNOWN" : The received value is not known in this version. This is a
  /// response-only value.
  /// - "ENABLED" : The linkage between asset set and its container is enabled.
  /// - "REMOVED" : The linkage between asset set and its container is removed.
  core.String? status;

  GoogleAdsSearchads360V0ResourcesCampaignAssetSet({
    this.assetSet,
    this.campaign,
    this.resourceName,
    this.status,
  });

  GoogleAdsSearchads360V0ResourcesCampaignAssetSet.fromJson(core.Map json_)
    : this(
        assetSet: json_['assetSet'] as core.String?,
        campaign: json_['campaign'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assetSet != null) 'assetSet': assetSet!,
    if (campaign != null) 'campaign': campaign!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (status != null) 'status': status!,
  };
}

/// A campaign audience view.
///
/// Includes performance data from interests and remarketing lists for Display
/// Network and YouTube Network ads, and remarketing lists for search ads
/// (RLSA), aggregated by campaign and audience criterion. This view only
/// includes audiences attached at the campaign level.
class GoogleAdsSearchads360V0ResourcesCampaignAudienceView {
  /// The resource name of the campaign audience view.
  ///
  /// Campaign audience view resource names have the form:
  /// `customers/{customer_id}/campaignAudienceViews/{campaign_id}~{criterion_id}`
  ///
  /// Output only.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesCampaignAudienceView({this.resourceName});

  GoogleAdsSearchads360V0ResourcesCampaignAudienceView.fromJson(core.Map json_)
    : this(resourceName: json_['resourceName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (resourceName != null) 'resourceName': resourceName!,
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
  /// - "CUSTOM_PERIOD" : Custom budget can be used with total_amount to specify
  /// lifetime budget limit.
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
        amountMicros: json_['amountMicros'] as core.String?,
        deliveryMethod: json_['deliveryMethod'] as core.String?,
        period: json_['period'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
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
  /// Age range.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonAgeRangeInfo? ageRange;

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

  /// Gender.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonGenderInfo? gender;

  /// Keyword.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonKeywordInfo? keyword;

  /// Language.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonLanguageInfo? language;

  /// The datetime when this campaign criterion was last modified.
  ///
  /// The datetime is in the customer's time zone and in "yyyy-MM-dd
  /// HH:mm:ss.ssssss" format.
  ///
  /// Output only.
  core.String? lastModifiedTime;

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

  /// The status of the criterion.
  /// Possible string values are:
  /// - "UNSPECIFIED" : No value has been specified.
  /// - "UNKNOWN" : The received value is not known in this version. This is a
  /// response-only value.
  /// - "ENABLED" : The campaign criterion is enabled.
  /// - "PAUSED" : The campaign criterion is paused.
  /// - "REMOVED" : The campaign criterion is removed.
  core.String? status;

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
  /// - "LOCAL_SERVICE_ID" : Local Services Ads Service ID.
  /// - "BRAND" : Brand
  /// - "BRAND_LIST" : Brand List
  /// - "LIFE_EVENT" : Life Event
  core.String? type;

  /// User List.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonUserListInfo? userList;

  /// Webpage.
  ///
  /// Immutable.
  GoogleAdsSearchads360V0CommonWebpageInfo? webpage;

  GoogleAdsSearchads360V0ResourcesCampaignCriterion({
    this.ageRange,
    this.bidModifier,
    this.criterionId,
    this.device,
    this.displayName,
    this.gender,
    this.keyword,
    this.language,
    this.lastModifiedTime,
    this.location,
    this.locationGroup,
    this.negative,
    this.resourceName,
    this.status,
    this.type,
    this.userList,
    this.webpage,
  });

  GoogleAdsSearchads360V0ResourcesCampaignCriterion.fromJson(core.Map json_)
    : this(
        ageRange:
            json_.containsKey('ageRange')
                ? GoogleAdsSearchads360V0CommonAgeRangeInfo.fromJson(
                  json_['ageRange'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        bidModifier: (json_['bidModifier'] as core.num?)?.toDouble(),
        criterionId: json_['criterionId'] as core.String?,
        device:
            json_.containsKey('device')
                ? GoogleAdsSearchads360V0CommonDeviceInfo.fromJson(
                  json_['device'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        displayName: json_['displayName'] as core.String?,
        gender:
            json_.containsKey('gender')
                ? GoogleAdsSearchads360V0CommonGenderInfo.fromJson(
                  json_['gender'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        keyword:
            json_.containsKey('keyword')
                ? GoogleAdsSearchads360V0CommonKeywordInfo.fromJson(
                  json_['keyword'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        language:
            json_.containsKey('language')
                ? GoogleAdsSearchads360V0CommonLanguageInfo.fromJson(
                  json_['language'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        lastModifiedTime: json_['lastModifiedTime'] as core.String?,
        location:
            json_.containsKey('location')
                ? GoogleAdsSearchads360V0CommonLocationInfo.fromJson(
                  json_['location'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        locationGroup:
            json_.containsKey('locationGroup')
                ? GoogleAdsSearchads360V0CommonLocationGroupInfo.fromJson(
                  json_['locationGroup'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        negative: json_['negative'] as core.bool?,
        resourceName: json_['resourceName'] as core.String?,
        status: json_['status'] as core.String?,
        type: json_['type'] as core.String?,
        userList:
            json_.containsKey('userList')
                ? GoogleAdsSearchads360V0CommonUserListInfo.fromJson(
                  json_['userList'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        webpage:
            json_.containsKey('webpage')
                ? GoogleAdsSearchads360V0CommonWebpageInfo.fromJson(
                  json_['webpage'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ageRange != null) 'ageRange': ageRange!,
    if (bidModifier != null) 'bidModifier': bidModifier!,
    if (criterionId != null) 'criterionId': criterionId!,
    if (device != null) 'device': device!,
    if (displayName != null) 'displayName': displayName!,
    if (gender != null) 'gender': gender!,
    if (keyword != null) 'keyword': keyword!,
    if (language != null) 'language': language!,
    if (lastModifiedTime != null) 'lastModifiedTime': lastModifiedTime!,
    if (location != null) 'location': location!,
    if (locationGroup != null) 'locationGroup': locationGroup!,
    if (negative != null) 'negative': negative!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (status != null) 'status': status!,
    if (type != null) 'type': type!,
    if (userList != null) 'userList': userList!,
    if (webpage != null) 'webpage': webpage!,
  };
}

/// Represents a relationship between a campaign and an effective label.
///
/// An effective label is a label inherited or directly assigned to this
/// campaign.
class GoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel {
  /// The campaign to which the effective label is attached.
  ///
  /// Immutable.
  core.String? campaign;

  /// The effective label assigned to the campaign.
  ///
  /// Immutable.
  core.String? label;

  /// The ID of the Customer which owns the effective label.
  ///
  /// Output only.
  core.String? ownerCustomerId;

  /// Name of the resource.
  ///
  /// CampaignEffectivelabel resource names have the form:
  /// `customers/{customer_id}/campaignEffectiveLabels/{campaign_id}~{label_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel({
    this.campaign,
    this.label,
    this.ownerCustomerId,
    this.resourceName,
  });

  GoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel.fromJson(
    core.Map json_,
  ) : this(
        campaign: json_['campaign'] as core.String?,
        label: json_['label'] as core.String?,
        ownerCustomerId: json_['ownerCustomerId'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (campaign != null) 'campaign': campaign!,
    if (label != null) 'label': label!,
    if (ownerCustomerId != null) 'ownerCustomerId': ownerCustomerId!,
    if (resourceName != null) 'resourceName': resourceName!,
  };
}

/// Represents a relationship between a campaign and a label.
class GoogleAdsSearchads360V0ResourcesCampaignLabel {
  /// The campaign to which the label is attached.
  ///
  /// Immutable.
  core.String? campaign;

  /// The label assigned to the campaign.
  ///
  /// Immutable.
  core.String? label;

  /// The ID of the Customer which owns the label.
  ///
  /// Output only.
  core.String? ownerCustomerId;

  /// Name of the resource.
  ///
  /// Campaign label resource names have the form:
  /// `customers/{customer_id}/campaignLabels/{campaign_id}~{label_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesCampaignLabel({
    this.campaign,
    this.label,
    this.ownerCustomerId,
    this.resourceName,
  });

  GoogleAdsSearchads360V0ResourcesCampaignLabel.fromJson(core.Map json_)
    : this(
        campaign: json_['campaign'] as core.String?,
        label: json_['label'] as core.String?,
        ownerCustomerId: json_['ownerCustomerId'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (campaign != null) 'campaign': campaign!,
    if (label != null) 'label': label!,
    if (ownerCustomerId != null) 'ownerCustomerId': ownerCustomerId!,
    if (resourceName != null) 'resourceName': resourceName!,
  };
}

/// Cart data sales view.
class GoogleAdsSearchads360V0ResourcesCartDataSalesView {
  /// The resource name of the Cart data sales view.
  ///
  /// Cart data sales view resource names have the form:
  /// `customers/{customer_id}/cartDataSalesView`
  ///
  /// Output only.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesCartDataSalesView({this.resourceName});

  GoogleAdsSearchads360V0ResourcesCartDataSalesView.fromJson(core.Map json_)
    : this(resourceName: json_['resourceName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (resourceName != null) 'resourceName': resourceName!,
  };
}

/// A conversion.
class GoogleAdsSearchads360V0ResourcesConversion {
  /// Ad ID.
  ///
  /// A value of 0 indicates that the ad is unattributed.
  ///
  /// Output only.
  core.String? adId;

  /// For offline conversions, this is an ID provided by advertisers.
  ///
  /// If an advertiser doesn't specify such an ID, Search Ads 360 generates one.
  /// For online conversions, this is equal to the id column or the
  /// floodlight_order_id column depending on the advertiser's Floodlight
  /// instructions.
  ///
  /// Output only.
  core.String? advertiserConversionId;

  /// Asset field type of the conversion event.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "HEADLINE" : The asset is linked for use as a headline.
  /// - "DESCRIPTION" : The asset is linked for use as a description.
  /// - "MANDATORY_AD_TEXT" : The asset is linked for use as mandatory ad text.
  /// - "MARKETING_IMAGE" : The asset is linked for use as a marketing image.
  /// - "MEDIA_BUNDLE" : The asset is linked for use as a media bundle.
  /// - "YOUTUBE_VIDEO" : The asset is linked for use as a YouTube video.
  /// - "BOOK_ON_GOOGLE" : The asset is linked to indicate that a hotels
  /// campaign is "Book on Google" enabled.
  /// - "LEAD_FORM" : The asset is linked for use as a Lead Form extension.
  /// - "PROMOTION" : The asset is linked for use as a Promotion extension.
  /// - "CALLOUT" : The asset is linked for use as a Callout extension.
  /// - "STRUCTURED_SNIPPET" : The asset is linked for use as a Structured
  /// Snippet extension.
  /// - "SITELINK" : The asset is linked for use as a Sitelink.
  /// - "MOBILE_APP" : The asset is linked for use as a Mobile App extension.
  /// - "HOTEL_CALLOUT" : The asset is linked for use as a Hotel Callout
  /// extension.
  /// - "CALL" : The asset is linked for use as a Call extension.
  /// - "PRICE" : The asset is linked for use as a Price extension.
  /// - "LONG_HEADLINE" : The asset is linked for use as a long headline.
  /// - "BUSINESS_NAME" : The asset is linked for use as a business name.
  /// - "SQUARE_MARKETING_IMAGE" : The asset is linked for use as a square
  /// marketing image.
  /// - "PORTRAIT_MARKETING_IMAGE" : The asset is linked for use as a portrait
  /// marketing image.
  /// - "LOGO" : The asset is linked for use as a logo.
  /// - "LANDSCAPE_LOGO" : The asset is linked for use as a landscape logo.
  /// - "VIDEO" : The asset is linked for use as a non YouTube logo.
  /// - "CALL_TO_ACTION_SELECTION" : The asset is linked for use to select a
  /// call-to-action.
  /// - "AD_IMAGE" : The asset is linked for use to select an ad image.
  /// - "BUSINESS_LOGO" : The asset is linked for use as a business logo.
  /// - "HOTEL_PROPERTY" : The asset is linked for use as a hotel property in a
  /// Performance Max for travel goals campaign.
  /// - "DISCOVERY_CAROUSEL_CARD" : The asset is linked for use as a discovery
  /// carousel card.
  core.String? assetFieldType;

  /// ID of the asset which was interacted with during the conversion event.
  ///
  /// Output only.
  core.String? assetId;

  /// What the conversion is attributed to: Visit or Keyword+Ad.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "VISIT" : The conversion is attributed to a visit.
  /// - "CRITERION_AD" : The conversion is attributed to a criterion and ad
  /// pair.
  core.String? attributionType;

  /// A unique string, for the visit that the conversion is attributed to, that
  /// is passed to the landing page as the click id URL parameter.
  ///
  /// Output only.
  core.String? clickId;

  /// The timestamp of the conversion event.
  ///
  /// Output only.
  core.String? conversionDateTime;

  /// The timestamp of the last time the conversion was modified.
  ///
  /// Output only.
  core.String? conversionLastModifiedDateTime;

  /// The quantity of items recorded by the conversion, as determined by the qty
  /// url parameter.
  ///
  /// The advertiser is responsible for dynamically populating the parameter
  /// (such as number of items sold in the conversion), otherwise it defaults to
  /// 1.
  ///
  /// Output only.
  core.String? conversionQuantity;

  /// The adjusted revenue in micros for the conversion event.
  ///
  /// This will always be in the currency of the serving account.
  ///
  /// Output only.
  core.String? conversionRevenueMicros;

  /// The timestamp of the visit that the conversion is attributed to.
  ///
  /// Output only.
  core.String? conversionVisitDateTime;

  /// Search Ads 360 criterion ID.
  ///
  /// A value of 0 indicates that the criterion is unattributed.
  ///
  /// Output only.
  core.String? criterionId;

  /// The Floodlight order ID provided by the advertiser for the conversion.
  ///
  /// Output only.
  core.String? floodlightOrderId;

  /// The original, unchanged revenue associated with the Floodlight event (in
  /// the currency of the current report), before Floodlight currency
  /// instruction modifications.
  ///
  /// Output only.
  core.String? floodlightOriginalRevenue;

  /// The ID of the conversion
  ///
  /// Output only.
  core.String? id;

  /// The Search Ads 360 inventory account ID containing the product that was
  /// clicked on.
  ///
  /// Search Ads 360 generates this ID when you link an inventory account in
  /// Search Ads 360.
  ///
  /// Output only.
  core.String? merchantId;

  /// The sales channel of the product that was clicked on: Online or Local.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "ONLINE" : The item is sold online.
  /// - "LOCAL" : The item is sold in local stores.
  core.String? productChannel;

  /// The country (ISO-3166-format) registered for the inventory feed that
  /// contains the product clicked on.
  ///
  /// Output only.
  core.String? productCountryCode;

  /// The ID of the product clicked on.
  ///
  /// Output only.
  core.String? productId;

  /// The language (ISO-639-1) that has been set for the Merchant Center feed
  /// containing data about the product.
  ///
  /// Output only.
  core.String? productLanguageCode;

  /// The store in the Local Inventory Ad that was clicked on.
  ///
  /// This should match the store IDs used in your local products feed.
  ///
  /// Output only.
  core.String? productStoreId;

  /// The resource name of the conversion.
  ///
  /// Conversion resource names have the form:
  /// `customers/{customer_id}/conversions/{ad_group_id}~{criterion_id}~{ds_conversion_id}`
  ///
  /// Output only.
  core.String? resourceName;

  /// The status of the conversion, either ENABLED or REMOVED..
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "ENABLED" : The conversion is enabled.
  /// - "REMOVED" : The conversion has been removed.
  core.String? status;

  /// The Search Ads 360 visit ID that the conversion is attributed to.
  ///
  /// Output only.
  core.String? visitId;

  GoogleAdsSearchads360V0ResourcesConversion({
    this.adId,
    this.advertiserConversionId,
    this.assetFieldType,
    this.assetId,
    this.attributionType,
    this.clickId,
    this.conversionDateTime,
    this.conversionLastModifiedDateTime,
    this.conversionQuantity,
    this.conversionRevenueMicros,
    this.conversionVisitDateTime,
    this.criterionId,
    this.floodlightOrderId,
    this.floodlightOriginalRevenue,
    this.id,
    this.merchantId,
    this.productChannel,
    this.productCountryCode,
    this.productId,
    this.productLanguageCode,
    this.productStoreId,
    this.resourceName,
    this.status,
    this.visitId,
  });

  GoogleAdsSearchads360V0ResourcesConversion.fromJson(core.Map json_)
    : this(
        adId: json_['adId'] as core.String?,
        advertiserConversionId: json_['advertiserConversionId'] as core.String?,
        assetFieldType: json_['assetFieldType'] as core.String?,
        assetId: json_['assetId'] as core.String?,
        attributionType: json_['attributionType'] as core.String?,
        clickId: json_['clickId'] as core.String?,
        conversionDateTime: json_['conversionDateTime'] as core.String?,
        conversionLastModifiedDateTime:
            json_['conversionLastModifiedDateTime'] as core.String?,
        conversionQuantity: json_['conversionQuantity'] as core.String?,
        conversionRevenueMicros:
            json_['conversionRevenueMicros'] as core.String?,
        conversionVisitDateTime:
            json_['conversionVisitDateTime'] as core.String?,
        criterionId: json_['criterionId'] as core.String?,
        floodlightOrderId: json_['floodlightOrderId'] as core.String?,
        floodlightOriginalRevenue:
            json_['floodlightOriginalRevenue'] as core.String?,
        id: json_['id'] as core.String?,
        merchantId: json_['merchantId'] as core.String?,
        productChannel: json_['productChannel'] as core.String?,
        productCountryCode: json_['productCountryCode'] as core.String?,
        productId: json_['productId'] as core.String?,
        productLanguageCode: json_['productLanguageCode'] as core.String?,
        productStoreId: json_['productStoreId'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        status: json_['status'] as core.String?,
        visitId: json_['visitId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adId != null) 'adId': adId!,
    if (advertiserConversionId != null)
      'advertiserConversionId': advertiserConversionId!,
    if (assetFieldType != null) 'assetFieldType': assetFieldType!,
    if (assetId != null) 'assetId': assetId!,
    if (attributionType != null) 'attributionType': attributionType!,
    if (clickId != null) 'clickId': clickId!,
    if (conversionDateTime != null) 'conversionDateTime': conversionDateTime!,
    if (conversionLastModifiedDateTime != null)
      'conversionLastModifiedDateTime': conversionLastModifiedDateTime!,
    if (conversionQuantity != null) 'conversionQuantity': conversionQuantity!,
    if (conversionRevenueMicros != null)
      'conversionRevenueMicros': conversionRevenueMicros!,
    if (conversionVisitDateTime != null)
      'conversionVisitDateTime': conversionVisitDateTime!,
    if (criterionId != null) 'criterionId': criterionId!,
    if (floodlightOrderId != null) 'floodlightOrderId': floodlightOrderId!,
    if (floodlightOriginalRevenue != null)
      'floodlightOriginalRevenue': floodlightOriginalRevenue!,
    if (id != null) 'id': id!,
    if (merchantId != null) 'merchantId': merchantId!,
    if (productChannel != null) 'productChannel': productChannel!,
    if (productCountryCode != null) 'productCountryCode': productCountryCode!,
    if (productId != null) 'productId': productId!,
    if (productLanguageCode != null)
      'productLanguageCode': productLanguageCode!,
    if (productStoreId != null) 'productStoreId': productStoreId!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (status != null) 'status': status!,
    if (visitId != null) 'visitId': visitId!,
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
  /// - "SALESFORCE" : Deprecated: The Salesforce integration will be going away
  /// and replaced with an improved way to import your conversions from
  /// Salesforce. - see https://support.google.com/google-ads/answer/14728349
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
  /// - "WEBPAGE_CODELESS" : Conversions created from website events (such as
  /// form submissions or page loads), that don't use individually coded event
  /// snippets. Read only.
  /// - "UNIVERSAL_ANALYTICS_GOAL" : Conversions that come from linked Universal
  /// Analytics goals.
  /// - "UNIVERSAL_ANALYTICS_TRANSACTION" : Conversions that come from linked
  /// Universal Analytics transactions.
  /// - "GOOGLE_ANALYTICS_4_CUSTOM" : Conversions that come from linked Google
  /// Analytics 4 custom event conversions.
  /// - "GOOGLE_ANALYTICS_4_PURCHASE" : Conversions that come from linked Google
  /// Analytics 4 purchase conversions.
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
        appId: json_['appId'] as core.String?,
        attributionModelSettings:
            json_.containsKey('attributionModelSettings')
                ? GoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings.fromJson(
                  json_['attributionModelSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        category: json_['category'] as core.String?,
        clickThroughLookbackWindowDays:
            json_['clickThroughLookbackWindowDays'] as core.String?,
        creationTime: json_['creationTime'] as core.String?,
        floodlightSettings:
            json_.containsKey('floodlightSettings')
                ? GoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings.fromJson(
                  json_['floodlightSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        includeInClientAccountConversionsMetric:
            json_['includeInClientAccountConversionsMetric'] as core.bool?,
        includeInConversionsMetric:
            json_['includeInConversionsMetric'] as core.bool?,
        name: json_['name'] as core.String?,
        ownerCustomer: json_['ownerCustomer'] as core.String?,
        primaryForGoal: json_['primaryForGoal'] as core.bool?,
        resourceName: json_['resourceName'] as core.String?,
        status: json_['status'] as core.String?,
        type: json_['type'] as core.String?,
        valueSettings:
            json_.containsKey('valueSettings')
                ? GoogleAdsSearchads360V0ResourcesConversionActionValueSettings.fromJson(
                  json_['valueSettings'] as core.Map<core.String, core.dynamic>,
                )
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
    if (floodlightSettings != null) 'floodlightSettings': floodlightSettings!,
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

/// A conversion custom variable.
///
/// See "About custom Floodlight metrics and dimensions in the new Search Ads
/// 360" at https://support.google.com/sa360/answer/13567857
class GoogleAdsSearchads360V0ResourcesConversionCustomVariable {
  /// Cardinality of the conversion custom variable.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "BELOW_ALL_LIMITS" : The conversion custom variable has cardinality
  /// below all limits. The variable can be used for segmentation, and stats can
  /// accrue for new values if the variable is enabled.
  /// - "EXCEEDS_SEGMENTATION_LIMIT_BUT_NOT_STATS_LIMIT" : The conversion custom
  /// variable has cardinality that exceeds the segmentation limit, but does not
  /// exceed the stats limit. Segmentation will be disabled, but stats can
  /// accrue for new values if the variable is enabled.
  /// - "APPROACHES_STATS_LIMIT" : The conversion custom variable has exceeded
  /// the segmentation limits, and is approaching the stats limits (\> 90%).
  /// Segmentation will be disabled, but stats can accrue for new values if the
  /// variable is enabled.
  /// - "EXCEEDS_STATS_LIMIT" : The conversion custom variable has exceeded both
  /// the segmentation limits and stats limits. Segmentation will be disabled,
  /// and stats for enabled variables can accrue only if the existing values do
  /// not increase the cardinality of the variable any further.
  core.String? cardinality;

  /// The IDs of custom columns that use this conversion custom variable.
  ///
  /// Output only.
  core.List<core.String>? customColumnIds;

  /// Family of the conversion custom variable.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "STANDARD" : The standard conversion custom variable. Customers are
  /// required to activate before use.
  /// - "FLOODLIGHT" : The conversion custom variable imported from a custom
  /// floodlight variable.
  core.String? family;

  /// Fields for Search Ads 360 floodlight conversion custom variables.
  ///
  /// Output only.
  GoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo?
  floodlightConversionCustomVariableInfo;

  /// The ID of the conversion custom variable.
  ///
  /// Output only.
  core.String? id;

  /// The name of the conversion custom variable.
  ///
  /// Name should be unique. The maximum length of name is 100 characters. There
  /// should not be any extra spaces before and after.
  ///
  /// Required.
  core.String? name;

  /// The resource name of the customer that owns the conversion custom
  /// variable.
  ///
  /// Output only.
  core.String? ownerCustomer;

  /// The resource name of the conversion custom variable.
  ///
  /// Conversion custom variable resource names have the form:
  /// `customers/{customer_id}/conversionCustomVariables/{conversion_custom_variable_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// The status of the conversion custom variable for conversion event accrual.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "ACTIVATION_NEEDED" : The conversion custom variable is pending
  /// activation and will not accrue stats until set to ENABLED. This status
  /// can't be used in CREATE and UPDATE requests.
  /// - "ENABLED" : The conversion custom variable is enabled and will accrue
  /// stats.
  /// - "PAUSED" : The conversion custom variable is paused and will not accrue
  /// stats until set to ENABLED again.
  core.String? status;

  /// The tag of the conversion custom variable.
  ///
  /// Tag should be unique and consist of a "u" character directly followed with
  /// a number less than ormequal to 100. For example: "u4".
  ///
  /// Required. Immutable.
  core.String? tag;

  GoogleAdsSearchads360V0ResourcesConversionCustomVariable({
    this.cardinality,
    this.customColumnIds,
    this.family,
    this.floodlightConversionCustomVariableInfo,
    this.id,
    this.name,
    this.ownerCustomer,
    this.resourceName,
    this.status,
    this.tag,
  });

  GoogleAdsSearchads360V0ResourcesConversionCustomVariable.fromJson(
    core.Map json_,
  ) : this(
        cardinality: json_['cardinality'] as core.String?,
        customColumnIds:
            (json_['customColumnIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        family: json_['family'] as core.String?,
        floodlightConversionCustomVariableInfo:
            json_.containsKey('floodlightConversionCustomVariableInfo')
                ? GoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo.fromJson(
                  json_['floodlightConversionCustomVariableInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
        ownerCustomer: json_['ownerCustomer'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        status: json_['status'] as core.String?,
        tag: json_['tag'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cardinality != null) 'cardinality': cardinality!,
    if (customColumnIds != null) 'customColumnIds': customColumnIds!,
    if (family != null) 'family': family!,
    if (floodlightConversionCustomVariableInfo != null)
      'floodlightConversionCustomVariableInfo':
          floodlightConversionCustomVariableInfo!,
    if (id != null) 'id': id!,
    if (name != null) 'name': name!,
    if (ownerCustomer != null) 'ownerCustomer': ownerCustomer!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (status != null) 'status': status!,
    if (tag != null) 'tag': tag!,
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
    core.Map json_,
  ) : this(
        acceptedCustomerDataTerms:
            json_['acceptedCustomerDataTerms'] as core.bool?,
        conversionTrackingId: json_['conversionTrackingId'] as core.String?,
        conversionTrackingStatus:
            json_['conversionTrackingStatus'] as core.String?,
        crossAccountConversionTrackingId:
            json_['crossAccountConversionTrackingId'] as core.String?,
        enhancedConversionsForLeadsEnabled:
            json_['enhancedConversionsForLeadsEnabled'] as core.bool?,
        googleAdsConversionCustomer:
            json_['googleAdsConversionCustomer'] as core.String?,
        googleAdsCrossAccountConversionTrackingId:
            json_['googleAdsCrossAccountConversionTrackingId'] as core.String?,
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
      'enhancedConversionsForLeadsEnabled': enhancedConversionsForLeadsEnabled!,
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

  /// How the result value of the custom column should be interpreted.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Unknown.
  /// - "NUMBER" : The custom column is a raw numerical value. See value_type
  /// field to determine if it is an integer or a double.
  /// - "PERCENT" : The custom column should be multiplied by 100 to retrieve
  /// the percentage value.
  /// - "MONEY" : The custom column value is a monetary value and is in micros.
  /// - "STRING" : The custom column value is a string.
  /// - "BOOLEAN" : The custom column value is a boolean.
  /// - "DATE" : The custom column value is a date represented as an integer in
  /// YYYYMMDD format.
  core.String? renderType;

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
  /// - "DATE" : The custom column value is a date, in YYYYMMDD format.
  core.String? valueType;

  GoogleAdsSearchads360V0ResourcesCustomColumn({
    this.description,
    this.id,
    this.name,
    this.queryable,
    this.referencedSystemColumns,
    this.referencesAttributes,
    this.referencesMetrics,
    this.renderType,
    this.resourceName,
    this.valueType,
  });

  GoogleAdsSearchads360V0ResourcesCustomColumn.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
        queryable: json_['queryable'] as core.bool?,
        referencedSystemColumns:
            (json_['referencedSystemColumns'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        referencesAttributes: json_['referencesAttributes'] as core.bool?,
        referencesMetrics: json_['referencesMetrics'] as core.bool?,
        renderType: json_['renderType'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        valueType: json_['valueType'] as core.String?,
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
    if (renderType != null) 'renderType': renderType!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (valueType != null) 'valueType': valueType!,
  };
}

/// A customer.
class GoogleAdsSearchads360V0ResourcesCustomer {
  /// The account level of the customer: Manager, Sub-manager, Associate
  /// manager, Service account.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "CLIENT_ACCOUNT_FACEBOOK" : Client account (Facebook)
  /// - "CLIENT_ACCOUNT_GOOGLE_ADS" : Client account (Google Ads)
  /// - "CLIENT_ACCOUNT_MICROSOFT" : Client account (Microsoft)
  /// - "CLIENT_ACCOUNT_YAHOO_JAPAN" : Client account (Yahoo Japan)
  /// - "CLIENT_ACCOUNT_ENGINE_TRACK" : Client account (Engine Track)
  /// - "MANAGER" : Top-level manager.
  /// - "SUB_MANAGER" : Sub manager.
  /// - "ASSOCIATE_MANAGER" : Associate manager.
  core.String? accountLevel;

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

  /// The descriptive name of the associate manager.
  ///
  /// Output only.
  core.String? associateManagerDescriptiveName;

  /// The customer ID of the associate manager.
  ///
  /// A 0 value indicates that the customer has no SA360 associate manager.
  ///
  /// Output only.
  core.String? associateManagerId;

  /// Whether auto-tagging is enabled for the customer.
  core.bool? autoTaggingEnabled;

  /// Conversion tracking setting for a customer.
  ///
  /// Output only.
  GoogleAdsSearchads360V0ResourcesConversionTrackingSetting?
  conversionTrackingSetting;

  /// The timestamp when this customer was created.
  ///
  /// The timestamp is in the customer's time zone and in "yyyy-MM-dd HH:mm:ss"
  /// format.
  ///
  /// Output only.
  core.String? creationTime;

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

  /// The URL template for appending params to the final URL.
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

  /// The descriptive name of the manager.
  ///
  /// Output only.
  core.String? managerDescriptiveName;

  /// The customer ID of the manager.
  ///
  /// A 0 value indicates that the customer has no SA360 manager.
  ///
  /// Output only.
  core.String? managerId;

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

  /// The descriptive name of the sub manager.
  ///
  /// Output only.
  core.String? subManagerDescriptiveName;

  /// The customer ID of the sub manager.
  ///
  /// A 0 value indicates that the customer has no sub SA360 manager.
  ///
  /// Output only.
  core.String? subManagerId;

  /// The local timezone ID of the customer.
  ///
  /// Immutable.
  core.String? timeZone;

  /// The URL template for constructing a tracking URL out of parameters.
  core.String? trackingUrlTemplate;

  GoogleAdsSearchads360V0ResourcesCustomer({
    this.accountLevel,
    this.accountStatus,
    this.accountType,
    this.associateManagerDescriptiveName,
    this.associateManagerId,
    this.autoTaggingEnabled,
    this.conversionTrackingSetting,
    this.creationTime,
    this.currencyCode,
    this.descriptiveName,
    this.doubleClickCampaignManagerSetting,
    this.engineId,
    this.finalUrlSuffix,
    this.id,
    this.lastModifiedTime,
    this.manager,
    this.managerDescriptiveName,
    this.managerId,
    this.resourceName,
    this.status,
    this.subManagerDescriptiveName,
    this.subManagerId,
    this.timeZone,
    this.trackingUrlTemplate,
  });

  GoogleAdsSearchads360V0ResourcesCustomer.fromJson(core.Map json_)
    : this(
        accountLevel: json_['accountLevel'] as core.String?,
        accountStatus: json_['accountStatus'] as core.String?,
        accountType: json_['accountType'] as core.String?,
        associateManagerDescriptiveName:
            json_['associateManagerDescriptiveName'] as core.String?,
        associateManagerId: json_['associateManagerId'] as core.String?,
        autoTaggingEnabled: json_['autoTaggingEnabled'] as core.bool?,
        conversionTrackingSetting:
            json_.containsKey('conversionTrackingSetting')
                ? GoogleAdsSearchads360V0ResourcesConversionTrackingSetting.fromJson(
                  json_['conversionTrackingSetting']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        creationTime: json_['creationTime'] as core.String?,
        currencyCode: json_['currencyCode'] as core.String?,
        descriptiveName: json_['descriptiveName'] as core.String?,
        doubleClickCampaignManagerSetting:
            json_.containsKey('doubleClickCampaignManagerSetting')
                ? GoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting.fromJson(
                  json_['doubleClickCampaignManagerSetting']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        engineId: json_['engineId'] as core.String?,
        finalUrlSuffix: json_['finalUrlSuffix'] as core.String?,
        id: json_['id'] as core.String?,
        lastModifiedTime: json_['lastModifiedTime'] as core.String?,
        manager: json_['manager'] as core.bool?,
        managerDescriptiveName: json_['managerDescriptiveName'] as core.String?,
        managerId: json_['managerId'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        status: json_['status'] as core.String?,
        subManagerDescriptiveName:
            json_['subManagerDescriptiveName'] as core.String?,
        subManagerId: json_['subManagerId'] as core.String?,
        timeZone: json_['timeZone'] as core.String?,
        trackingUrlTemplate: json_['trackingUrlTemplate'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accountLevel != null) 'accountLevel': accountLevel!,
    if (accountStatus != null) 'accountStatus': accountStatus!,
    if (accountType != null) 'accountType': accountType!,
    if (associateManagerDescriptiveName != null)
      'associateManagerDescriptiveName': associateManagerDescriptiveName!,
    if (associateManagerId != null) 'associateManagerId': associateManagerId!,
    if (autoTaggingEnabled != null) 'autoTaggingEnabled': autoTaggingEnabled!,
    if (conversionTrackingSetting != null)
      'conversionTrackingSetting': conversionTrackingSetting!,
    if (creationTime != null) 'creationTime': creationTime!,
    if (currencyCode != null) 'currencyCode': currencyCode!,
    if (descriptiveName != null) 'descriptiveName': descriptiveName!,
    if (doubleClickCampaignManagerSetting != null)
      'doubleClickCampaignManagerSetting': doubleClickCampaignManagerSetting!,
    if (engineId != null) 'engineId': engineId!,
    if (finalUrlSuffix != null) 'finalUrlSuffix': finalUrlSuffix!,
    if (id != null) 'id': id!,
    if (lastModifiedTime != null) 'lastModifiedTime': lastModifiedTime!,
    if (manager != null) 'manager': manager!,
    if (managerDescriptiveName != null)
      'managerDescriptiveName': managerDescriptiveName!,
    if (managerId != null) 'managerId': managerId!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (status != null) 'status': status!,
    if (subManagerDescriptiveName != null)
      'subManagerDescriptiveName': subManagerDescriptiveName!,
    if (subManagerId != null) 'subManagerId': subManagerId!,
    if (timeZone != null) 'timeZone': timeZone!,
    if (trackingUrlTemplate != null)
      'trackingUrlTemplate': trackingUrlTemplate!,
  };
}

/// A link between a customer and an asset.
class GoogleAdsSearchads360V0ResourcesCustomerAsset {
  /// The asset which is linked to the customer.
  ///
  /// Required. Immutable.
  core.String? asset;

  /// The resource name of the customer asset.
  ///
  /// CustomerAsset resource names have the form:
  /// `customers/{customer_id}/customerAssets/{asset_id}~{field_type}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// Status of the customer asset.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "ENABLED" : Asset link is enabled.
  /// - "REMOVED" : Asset link has been removed.
  /// - "PAUSED" : Asset link is paused.
  core.String? status;

  GoogleAdsSearchads360V0ResourcesCustomerAsset({
    this.asset,
    this.resourceName,
    this.status,
  });

  GoogleAdsSearchads360V0ResourcesCustomerAsset.fromJson(core.Map json_)
    : this(
        asset: json_['asset'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (asset != null) 'asset': asset!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (status != null) 'status': status!,
  };
}

/// CustomerAssetSet is the linkage between a customer and an asset set.
///
/// Adding a CustomerAssetSet links an asset set with a customer.
class GoogleAdsSearchads360V0ResourcesCustomerAssetSet {
  /// The asset set which is linked to the customer.
  ///
  /// Immutable.
  core.String? assetSet;

  /// The customer to which this asset set is linked.
  ///
  /// Immutable.
  core.String? customer;

  /// The resource name of the customer asset set.
  ///
  /// Asset set asset resource names have the form:
  /// `customers/{customer_id}/customerAssetSets/{asset_set_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// The status of the customer asset set asset.
  ///
  /// Read-only.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : The status has not been specified.
  /// - "UNKNOWN" : The received value is not known in this version. This is a
  /// response-only value.
  /// - "ENABLED" : The linkage between asset set and its container is enabled.
  /// - "REMOVED" : The linkage between asset set and its container is removed.
  core.String? status;

  GoogleAdsSearchads360V0ResourcesCustomerAssetSet({
    this.assetSet,
    this.customer,
    this.resourceName,
    this.status,
  });

  GoogleAdsSearchads360V0ResourcesCustomerAssetSet.fromJson(core.Map json_)
    : this(
        assetSet: json_['assetSet'] as core.String?,
        customer: json_['customer'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assetSet != null) 'assetSet': assetSet!,
    if (customer != null) 'customer': customer!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (status != null) 'status': status!,
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
        appliedLabels:
            (json_['appliedLabels'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        clientCustomer: json_['clientCustomer'] as core.String?,
        currencyCode: json_['currencyCode'] as core.String?,
        descriptiveName: json_['descriptiveName'] as core.String?,
        hidden: json_['hidden'] as core.bool?,
        id: json_['id'] as core.String?,
        level: json_['level'] as core.String?,
        manager: json_['manager'] as core.bool?,
        resourceName: json_['resourceName'] as core.String?,
        status: json_['status'] as core.String?,
        testAccount: json_['testAccount'] as core.bool?,
        timeZone: json_['timeZone'] as core.String?,
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

  /// The timestamp when the CustomerManagerLink was created.
  ///
  /// The timestamp is in the customer's time zone and in "yyyy-MM-dd HH:mm:ss"
  /// format.
  ///
  /// Output only.
  core.String? startTime;

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
    this.startTime,
    this.status,
  });

  GoogleAdsSearchads360V0ResourcesCustomerManagerLink.fromJson(core.Map json_)
    : this(
        managerCustomer: json_['managerCustomer'] as core.String?,
        managerLinkId: json_['managerLinkId'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (managerCustomer != null) 'managerCustomer': managerCustomer!,
    if (managerLinkId != null) 'managerLinkId': managerLinkId!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (startTime != null) 'startTime': startTime!,
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
    core.Map json_,
  ) : this(
        advertiserId: json_['advertiserId'] as core.String?,
        networkId: json_['networkId'] as core.String?,
        timeZone: json_['timeZone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (advertiserId != null) 'advertiserId': advertiserId!,
    if (networkId != null) 'networkId': networkId!,
    if (timeZone != null) 'timeZone': timeZone!,
  };
}

/// A dynamic search ads search term view.
class GoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView {
  /// The dynamically selected landing page URL of the impression.
  ///
  /// This field is read-only.
  ///
  /// Output only.
  core.String? landingPage;

  /// The resource name of the dynamic search ads search term view.
  ///
  /// Dynamic search ads search term view resource names have the form:
  /// `customers/{customer_id}/dynamicSearchAdsSearchTermViews/{ad_group_id}~{search_term_fingerprint}~{headline_fingerprint}~{landing_page_fingerprint}~{page_url_fingerprint}`
  ///
  /// Output only.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView({
    this.landingPage,
    this.resourceName,
  });

  GoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView.fromJson(
    core.Map json_,
  ) : this(
        landingPage: json_['landingPage'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (landingPage != null) 'landingPage': landingPage!,
    if (resourceName != null) 'resourceName': resourceName!,
  };
}

/// A gender view.
///
/// The gender_view resource reflects the effective serving state, rather than
/// what criteria were added. An ad group without gender criteria by default
/// shows to all genders, so all genders appear in gender_view with stats.
class GoogleAdsSearchads360V0ResourcesGenderView {
  /// The resource name of the gender view.
  ///
  /// Gender view resource names have the form:
  /// `customers/{customer_id}/genderViews/{ad_group_id}~{criterion_id}`
  ///
  /// Output only.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesGenderView({this.resourceName});

  GoogleAdsSearchads360V0ResourcesGenderView.fromJson(core.Map json_)
    : this(resourceName: json_['resourceName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (resourceName != null) 'resourceName': resourceName!,
  };
}

/// A geo target constant.
class GoogleAdsSearchads360V0ResourcesGeoTargetConstant {
  /// The fully qualified English name, consisting of the target's name and that
  /// of its parent and country.
  ///
  /// Output only.
  core.String? canonicalName;

  /// The ISO-3166-1 alpha-2 country code that is associated with the target.
  ///
  /// Output only.
  core.String? countryCode;

  /// The ID of the geo target constant.
  ///
  /// Output only.
  core.String? id;

  /// Geo target constant English name.
  ///
  /// Output only.
  core.String? name;

  /// The resource name of the parent geo target constant.
  ///
  /// Geo target constant resource names have the form:
  /// `geoTargetConstants/{parent_geo_target_constant_id}`
  ///
  /// Output only.
  core.String? parentGeoTarget;

  /// The resource name of the geo target constant.
  ///
  /// Geo target constant resource names have the form:
  /// `geoTargetConstants/{geo_target_constant_id}`
  ///
  /// Output only.
  core.String? resourceName;

  /// Geo target constant status.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : No value has been specified.
  /// - "UNKNOWN" : The received value is not known in this version. This is a
  /// response-only value.
  /// - "ENABLED" : The geo target constant is valid.
  /// - "REMOVAL_PLANNED" : The geo target constant is obsolete and will be
  /// removed.
  core.String? status;

  /// Geo target constant target type.
  ///
  /// Output only.
  core.String? targetType;

  GoogleAdsSearchads360V0ResourcesGeoTargetConstant({
    this.canonicalName,
    this.countryCode,
    this.id,
    this.name,
    this.parentGeoTarget,
    this.resourceName,
    this.status,
    this.targetType,
  });

  GoogleAdsSearchads360V0ResourcesGeoTargetConstant.fromJson(core.Map json_)
    : this(
        canonicalName: json_['canonicalName'] as core.String?,
        countryCode: json_['countryCode'] as core.String?,
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
        parentGeoTarget: json_['parentGeoTarget'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        status: json_['status'] as core.String?,
        targetType: json_['targetType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (canonicalName != null) 'canonicalName': canonicalName!,
    if (countryCode != null) 'countryCode': countryCode!,
    if (id != null) 'id': id!,
    if (name != null) 'name': name!,
    if (parentGeoTarget != null) 'parentGeoTarget': parentGeoTarget!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (status != null) 'status': status!,
    if (targetType != null) 'targetType': targetType!,
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

  GoogleAdsSearchads360V0ResourcesKeywordView({this.resourceName});

  GoogleAdsSearchads360V0ResourcesKeywordView.fromJson(core.Map json_)
    : this(resourceName: json_['resourceName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (resourceName != null) 'resourceName': resourceName!,
  };
}

/// A label.
class GoogleAdsSearchads360V0ResourcesLabel {
  /// ID of the label.
  ///
  /// Read only.
  ///
  /// Output only.
  core.String? id;

  /// The name of the label.
  ///
  /// This field is required and should not be empty when creating a new label.
  /// The length of this string should be between 1 and 80, inclusive.
  core.String? name;

  /// Name of the resource.
  ///
  /// Label resource names have the form:
  /// `customers/{customer_id}/labels/{label_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// Status of the label.
  ///
  /// Read only.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "ENABLED" : Label is enabled.
  /// - "REMOVED" : Label is removed.
  core.String? status;

  /// A type of label displaying text on a colored background.
  GoogleAdsSearchads360V0CommonTextLabel? textLabel;

  GoogleAdsSearchads360V0ResourcesLabel({
    this.id,
    this.name,
    this.resourceName,
    this.status,
    this.textLabel,
  });

  GoogleAdsSearchads360V0ResourcesLabel.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        status: json_['status'] as core.String?,
        textLabel:
            json_.containsKey('textLabel')
                ? GoogleAdsSearchads360V0CommonTextLabel.fromJson(
                  json_['textLabel'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (id != null) 'id': id!,
    if (name != null) 'name': name!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (status != null) 'status': status!,
    if (textLabel != null) 'textLabel': textLabel!,
  };
}

/// A language.
class GoogleAdsSearchads360V0ResourcesLanguageConstant {
  /// The language code, for example, "en_US", "en_AU", "es", "fr", etc.
  ///
  /// Output only.
  core.String? code;

  /// The ID of the language constant.
  ///
  /// Output only.
  core.String? id;

  /// The full name of the language in English, for example, "English (US)",
  /// "Spanish", etc.
  ///
  /// Output only.
  core.String? name;

  /// The resource name of the language constant.
  ///
  /// Language constant resource names have the form:
  /// `languageConstants/{criterion_id}`
  ///
  /// Output only.
  core.String? resourceName;

  /// Whether the language is targetable.
  ///
  /// Output only.
  core.bool? targetable;

  GoogleAdsSearchads360V0ResourcesLanguageConstant({
    this.code,
    this.id,
    this.name,
    this.resourceName,
    this.targetable,
  });

  GoogleAdsSearchads360V0ResourcesLanguageConstant.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        targetable: json_['targetable'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (code != null) 'code': code!,
    if (id != null) 'id': id!,
    if (name != null) 'name': name!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (targetable != null) 'targetable': targetable!,
  };
}

/// Listing dimensions for the asset group listing group filter.
class GoogleAdsSearchads360V0ResourcesListingGroupFilterDimension {
  /// Bidding category of a product offer.
  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory?
  productBiddingCategory;

  /// Brand of a product offer.
  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand?
  productBrand;

  /// Locality of a product offer.
  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel?
  productChannel;

  /// Condition of a product offer.
  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition?
  productCondition;

  /// Custom attribute of a product offer.
  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute?
  productCustomAttribute;

  /// Item id of a product offer.
  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId?
  productItemId;

  /// Type of a product offer.
  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType?
  productType;

  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimension({
    this.productBiddingCategory,
    this.productBrand,
    this.productChannel,
    this.productCondition,
    this.productCustomAttribute,
    this.productItemId,
    this.productType,
  });

  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimension.fromJson(
    core.Map json_,
  ) : this(
        productBiddingCategory:
            json_.containsKey('productBiddingCategory')
                ? GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory.fromJson(
                  json_['productBiddingCategory']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        productBrand:
            json_.containsKey('productBrand')
                ? GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand.fromJson(
                  json_['productBrand'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        productChannel:
            json_.containsKey('productChannel')
                ? GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel.fromJson(
                  json_['productChannel']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        productCondition:
            json_.containsKey('productCondition')
                ? GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition.fromJson(
                  json_['productCondition']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        productCustomAttribute:
            json_.containsKey('productCustomAttribute')
                ? GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute.fromJson(
                  json_['productCustomAttribute']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        productItemId:
            json_.containsKey('productItemId')
                ? GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId.fromJson(
                  json_['productItemId'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        productType:
            json_.containsKey('productType')
                ? GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType.fromJson(
                  json_['productType'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (productBiddingCategory != null)
      'productBiddingCategory': productBiddingCategory!,
    if (productBrand != null) 'productBrand': productBrand!,
    if (productChannel != null) 'productChannel': productChannel!,
    if (productCondition != null) 'productCondition': productCondition!,
    if (productCustomAttribute != null)
      'productCustomAttribute': productCustomAttribute!,
    if (productItemId != null) 'productItemId': productItemId!,
    if (productType != null) 'productType': productType!,
  };
}

/// The path defining of dimensions defining a listing group filter.
class GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath {
  /// The complete path of dimensions through the listing group filter hierarchy
  /// (excluding the root node) to this listing group filter.
  ///
  /// Output only.
  core.List<GoogleAdsSearchads360V0ResourcesListingGroupFilterDimension>?
  dimensions;

  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath({
    this.dimensions,
  });

  GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath.fromJson(
    core.Map json_,
  ) : this(
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAdsSearchads360V0ResourcesListingGroupFilterDimension.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dimensions != null) 'dimensions': dimensions!,
  };
}

/// A location view summarizes the performance of campaigns by a Location
/// criterion.
class GoogleAdsSearchads360V0ResourcesLocationView {
  /// The resource name of the location view.
  ///
  /// Location view resource names have the form:
  /// `customers/{customer_id}/locationViews/{campaign_id}~{criterion_id}`
  ///
  /// Output only.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesLocationView({this.resourceName});

  GoogleAdsSearchads360V0ResourcesLocationView.fromJson(core.Map json_)
    : this(resourceName: json_['resourceName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (resourceName != null) 'resourceName': resourceName!,
  };
}

/// A Product Bidding Category.
class GoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant {
  /// Two-letter upper-case country code of the product bidding category.
  ///
  /// Output only.
  core.String? countryCode;

  /// ID of the product bidding category.
  ///
  /// This ID is equivalent to the google_product_category ID as described in
  /// this article: https://support.google.com/merchants/answer/6324436.
  ///
  /// Output only.
  core.String? id;

  /// Language code of the product bidding category.
  ///
  /// Output only.
  core.String? languageCode;

  /// Level of the product bidding category.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "LEVEL1" : Level 1.
  /// - "LEVEL2" : Level 2.
  /// - "LEVEL3" : Level 3.
  /// - "LEVEL4" : Level 4.
  /// - "LEVEL5" : Level 5.
  core.String? level;

  /// Display value of the product bidding category localized according to
  /// language_code.
  ///
  /// Output only.
  core.String? localizedName;

  /// Resource name of the parent product bidding category.
  ///
  /// Output only.
  core.String? productBiddingCategoryConstantParent;

  /// The resource name of the product bidding category.
  ///
  /// Product bidding category resource names have the form:
  /// `productBiddingCategoryConstants/{country_code}~{level}~{id}`
  ///
  /// Output only.
  core.String? resourceName;

  /// Status of the product bidding category.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "ACTIVE" : The category is active and can be used for bidding.
  /// - "OBSOLETE" : The category is obsolete. Used only for reporting purposes.
  core.String? status;

  GoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant({
    this.countryCode,
    this.id,
    this.languageCode,
    this.level,
    this.localizedName,
    this.productBiddingCategoryConstantParent,
    this.resourceName,
    this.status,
  });

  GoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant.fromJson(
    core.Map json_,
  ) : this(
        countryCode: json_['countryCode'] as core.String?,
        id: json_['id'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        level: json_['level'] as core.String?,
        localizedName: json_['localizedName'] as core.String?,
        productBiddingCategoryConstantParent:
            json_['productBiddingCategoryConstantParent'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (countryCode != null) 'countryCode': countryCode!,
    if (id != null) 'id': id!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (level != null) 'level': level!,
    if (localizedName != null) 'localizedName': localizedName!,
    if (productBiddingCategoryConstantParent != null)
      'productBiddingCategoryConstantParent':
          productBiddingCategoryConstantParent!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (status != null) 'status': status!,
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

  GoogleAdsSearchads360V0ResourcesProductGroupView({this.resourceName});

  GoogleAdsSearchads360V0ResourcesProductGroupView.fromJson(core.Map json_)
    : this(resourceName: json_['resourceName'] as core.String?);

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
        attributeResources:
            (json_['attributeResources'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        category: json_['category'] as core.String?,
        dataType: json_['dataType'] as core.String?,
        enumValues:
            (json_['enumValues'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        filterable: json_['filterable'] as core.bool?,
        isRepeated: json_['isRepeated'] as core.bool?,
        metrics:
            (json_['metrics'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        name: json_['name'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        segments:
            (json_['segments'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        selectable: json_['selectable'] as core.bool?,
        selectableWith:
            (json_['selectableWith'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        sortable: json_['sortable'] as core.bool?,
        typeUrl: json_['typeUrl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributeResources != null) 'attributeResources': attributeResources!,
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

/// Shopping performance view.
///
/// Provides Shopping campaign statistics aggregated at several product
/// dimension levels. Product dimension values from Merchant Center such as
/// brand, category, custom attributes, product condition and product type will
/// reflect the state of each dimension as of the date and time when the
/// corresponding event was recorded.
class GoogleAdsSearchads360V0ResourcesShoppingPerformanceView {
  /// The resource name of the Shopping performance view.
  ///
  /// Shopping performance view resource names have the form:
  /// `customers/{customer_id}/shoppingPerformanceView`
  ///
  /// Output only.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesShoppingPerformanceView({this.resourceName});

  GoogleAdsSearchads360V0ResourcesShoppingPerformanceView.fromJson(
    core.Map json_,
  ) : this(resourceName: json_['resourceName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (resourceName != null) 'resourceName': resourceName!,
  };
}

/// A user list.
///
/// This is a list of users a customer may target.
class GoogleAdsSearchads360V0ResourcesUserList {
  /// Id of the user list.
  ///
  /// Output only.
  core.String? id;

  /// Name of this user list.
  ///
  /// Depending on its access_reason, the user list name may not be unique (for
  /// example, if access_reason=SHARED)
  core.String? name;

  /// The resource name of the user list.
  ///
  /// User list resource names have the form:
  /// `customers/{customer_id}/userLists/{user_list_id}`
  ///
  /// Immutable.
  core.String? resourceName;

  /// Type of this list.
  ///
  /// This field is read-only.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "REMARKETING" : UserList represented as a collection of conversion
  /// types.
  /// - "LOGICAL" : UserList represented as a combination of other user
  /// lists/interests.
  /// - "EXTERNAL_REMARKETING" : UserList created in the Google Ad Manager
  /// platform.
  /// - "RULE_BASED" : UserList associated with a rule.
  /// - "SIMILAR" : UserList with users similar to users of another UserList.
  /// - "CRM_BASED" : UserList of first-party CRM data provided by advertiser in
  /// the form of emails or other formats.
  core.String? type;

  GoogleAdsSearchads360V0ResourcesUserList({
    this.id,
    this.name,
    this.resourceName,
    this.type,
  });

  GoogleAdsSearchads360V0ResourcesUserList.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (id != null) 'id': id!,
    if (name != null) 'name': name!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (type != null) 'type': type!,
  };
}

/// A user location view.
///
/// User Location View includes all metrics aggregated at the country level, one
/// row per country. It reports metrics at the actual physical location of the
/// user by targeted or not targeted location. If other segment fields are used,
/// you may get more than one row per country.
class GoogleAdsSearchads360V0ResourcesUserLocationView {
  /// Criterion Id for the country.
  ///
  /// Output only.
  core.String? countryCriterionId;

  /// The resource name of the user location view.
  ///
  /// UserLocation view resource names have the form:
  /// `customers/{customer_id}/userLocationViews/{country_criterion_id}~{targeting_location}`
  ///
  /// Output only.
  core.String? resourceName;

  /// Indicates whether location was targeted or not.
  ///
  /// Output only.
  core.bool? targetingLocation;

  GoogleAdsSearchads360V0ResourcesUserLocationView({
    this.countryCriterionId,
    this.resourceName,
    this.targetingLocation,
  });

  GoogleAdsSearchads360V0ResourcesUserLocationView.fromJson(core.Map json_)
    : this(
        countryCriterionId: json_['countryCriterionId'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        targetingLocation: json_['targetingLocation'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (countryCriterionId != null) 'countryCriterionId': countryCriterionId!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (targetingLocation != null) 'targetingLocation': targetingLocation!,
  };
}

/// A visit.
class GoogleAdsSearchads360V0ResourcesVisit {
  /// Ad ID.
  ///
  /// A value of 0 indicates that the ad is unattributed.
  ///
  /// Output only.
  core.String? adId;

  /// Asset field type of the visit event.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "HEADLINE" : The asset is linked for use as a headline.
  /// - "DESCRIPTION" : The asset is linked for use as a description.
  /// - "MANDATORY_AD_TEXT" : The asset is linked for use as mandatory ad text.
  /// - "MARKETING_IMAGE" : The asset is linked for use as a marketing image.
  /// - "MEDIA_BUNDLE" : The asset is linked for use as a media bundle.
  /// - "YOUTUBE_VIDEO" : The asset is linked for use as a YouTube video.
  /// - "BOOK_ON_GOOGLE" : The asset is linked to indicate that a hotels
  /// campaign is "Book on Google" enabled.
  /// - "LEAD_FORM" : The asset is linked for use as a Lead Form extension.
  /// - "PROMOTION" : The asset is linked for use as a Promotion extension.
  /// - "CALLOUT" : The asset is linked for use as a Callout extension.
  /// - "STRUCTURED_SNIPPET" : The asset is linked for use as a Structured
  /// Snippet extension.
  /// - "SITELINK" : The asset is linked for use as a Sitelink.
  /// - "MOBILE_APP" : The asset is linked for use as a Mobile App extension.
  /// - "HOTEL_CALLOUT" : The asset is linked for use as a Hotel Callout
  /// extension.
  /// - "CALL" : The asset is linked for use as a Call extension.
  /// - "PRICE" : The asset is linked for use as a Price extension.
  /// - "LONG_HEADLINE" : The asset is linked for use as a long headline.
  /// - "BUSINESS_NAME" : The asset is linked for use as a business name.
  /// - "SQUARE_MARKETING_IMAGE" : The asset is linked for use as a square
  /// marketing image.
  /// - "PORTRAIT_MARKETING_IMAGE" : The asset is linked for use as a portrait
  /// marketing image.
  /// - "LOGO" : The asset is linked for use as a logo.
  /// - "LANDSCAPE_LOGO" : The asset is linked for use as a landscape logo.
  /// - "VIDEO" : The asset is linked for use as a non YouTube logo.
  /// - "CALL_TO_ACTION_SELECTION" : The asset is linked for use to select a
  /// call-to-action.
  /// - "AD_IMAGE" : The asset is linked for use to select an ad image.
  /// - "BUSINESS_LOGO" : The asset is linked for use as a business logo.
  /// - "HOTEL_PROPERTY" : The asset is linked for use as a hotel property in a
  /// Performance Max for travel goals campaign.
  /// - "DISCOVERY_CAROUSEL_CARD" : The asset is linked for use as a discovery
  /// carousel card.
  core.String? assetFieldType;

  /// ID of the asset which was interacted with during the visit event.
  ///
  /// Output only.
  core.String? assetId;

  /// A unique string for each visit that is passed to the landing page as the
  /// click id URL parameter.
  ///
  /// Output only.
  core.String? clickId;

  /// Search Ads 360 keyword ID.
  ///
  /// A value of 0 indicates that the keyword is unattributed.
  ///
  /// Output only.
  core.String? criterionId;

  /// The ID of the visit.
  ///
  /// Output only.
  core.String? id;

  /// The Search Ads 360 inventory account ID containing the product that was
  /// clicked on.
  ///
  /// Search Ads 360 generates this ID when you link an inventory account in
  /// Search Ads 360.
  ///
  /// Output only.
  core.String? merchantId;

  /// The sales channel of the product that was clicked on: Online or Local.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "ONLINE" : The item is sold online.
  /// - "LOCAL" : The item is sold in local stores.
  core.String? productChannel;

  /// The country (ISO-3166 format) registered for the inventory feed that
  /// contains the product clicked on.
  ///
  /// Output only.
  core.String? productCountryCode;

  /// The ID of the product clicked on.
  ///
  /// Output only.
  core.String? productId;

  /// The language (ISO-639-1) that has been set for the Merchant Center feed
  /// containing data about the product.
  ///
  /// Output only.
  core.String? productLanguageCode;

  /// The store in the Local Inventory Ad that was clicked on.
  ///
  /// This should match the store IDs used in your local products feed.
  ///
  /// Output only.
  core.String? productStoreId;

  /// The resource name of the visit.
  ///
  /// Visit resource names have the form:
  /// `customers/{customer_id}/visits/{ad_group_id}~{criterion_id}~{ds_visit_id}`
  ///
  /// Output only.
  core.String? resourceName;

  /// The timestamp of the visit event.
  ///
  /// The timestamp is in the customer's time zone and in "yyyy-MM-dd HH:mm:ss"
  /// format.
  ///
  /// Output only.
  core.String? visitDateTime;

  GoogleAdsSearchads360V0ResourcesVisit({
    this.adId,
    this.assetFieldType,
    this.assetId,
    this.clickId,
    this.criterionId,
    this.id,
    this.merchantId,
    this.productChannel,
    this.productCountryCode,
    this.productId,
    this.productLanguageCode,
    this.productStoreId,
    this.resourceName,
    this.visitDateTime,
  });

  GoogleAdsSearchads360V0ResourcesVisit.fromJson(core.Map json_)
    : this(
        adId: json_['adId'] as core.String?,
        assetFieldType: json_['assetFieldType'] as core.String?,
        assetId: json_['assetId'] as core.String?,
        clickId: json_['clickId'] as core.String?,
        criterionId: json_['criterionId'] as core.String?,
        id: json_['id'] as core.String?,
        merchantId: json_['merchantId'] as core.String?,
        productChannel: json_['productChannel'] as core.String?,
        productCountryCode: json_['productCountryCode'] as core.String?,
        productId: json_['productId'] as core.String?,
        productLanguageCode: json_['productLanguageCode'] as core.String?,
        productStoreId: json_['productStoreId'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        visitDateTime: json_['visitDateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adId != null) 'adId': adId!,
    if (assetFieldType != null) 'assetFieldType': assetFieldType!,
    if (assetId != null) 'assetId': assetId!,
    if (clickId != null) 'clickId': clickId!,
    if (criterionId != null) 'criterionId': criterionId!,
    if (id != null) 'id': id!,
    if (merchantId != null) 'merchantId': merchantId!,
    if (productChannel != null) 'productChannel': productChannel!,
    if (productCountryCode != null) 'productCountryCode': productCountryCode!,
    if (productId != null) 'productId': productId!,
    if (productLanguageCode != null)
      'productLanguageCode': productLanguageCode!,
    if (productStoreId != null) 'productStoreId': productStoreId!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (visitDateTime != null) 'visitDateTime': visitDateTime!,
  };
}

/// A webpage view.
class GoogleAdsSearchads360V0ResourcesWebpageView {
  /// The resource name of the webpage view.
  ///
  /// Webpage view resource names have the form:
  /// `customers/{customer_id}/webpageViews/{ad_group_id}~{criterion_id}`
  ///
  /// Output only.
  core.String? resourceName;

  GoogleAdsSearchads360V0ResourcesWebpageView({this.resourceName});

  GoogleAdsSearchads360V0ResourcesWebpageView.fromJson(core.Map json_)
    : this(resourceName: json_['resourceName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (resourceName != null) 'resourceName': resourceName!,
  };
}

/// Message for conversion custom dimension header.
class GoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader {
  /// The conversion custom dimension ID.
  core.String? id;

  /// The user defined name of the conversion custom dimension.
  core.String? name;

  GoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader({
    this.id,
    this.name,
  });

  GoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader.fromJson(
    core.Map json_,
  ) : this(
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (id != null) 'id': id!,
    if (name != null) 'name': name!,
  };
}

/// Message for conversion custom metric header.
class GoogleAdsSearchads360V0ServicesConversionCustomMetricHeader {
  /// The conversion custom metric ID.
  core.String? id;

  /// The user defined name of the conversion custom metric.
  core.String? name;

  GoogleAdsSearchads360V0ServicesConversionCustomMetricHeader({
    this.id,
    this.name,
  });

  GoogleAdsSearchads360V0ServicesConversionCustomMetricHeader.fromJson(
    core.Map json_,
  ) : this(
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (id != null) 'id': id!,
    if (name != null) 'name': name!,
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
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
        referencesMetrics: json_['referencesMetrics'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (id != null) 'id': id!,
    if (name != null) 'name': name!,
    if (referencesMetrics != null) 'referencesMetrics': referencesMetrics!,
  };
}

/// Response message for CustomerService.ListAccessibleCustomers.
class GoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse {
  /// Resource name of customers directly accessible by the user authenticating
  /// the call.
  core.List<core.String>? resourceNames;

  GoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse({
    this.resourceNames,
  });

  GoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse.fromJson(
    core.Map json_,
  ) : this(
        resourceNames:
            (json_['resourceNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (resourceNames != null) 'resourceNames': resourceNames!,
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
    core.Map json_,
  ) : this(
        customColumns:
            (json_['customColumns'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAdsSearchads360V0ResourcesCustomColumn.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customColumns != null) 'customColumns': customColumns!,
  };
}

/// Message for raw event conversion dimension header.
class GoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader {
  /// The conversion custom variable ID.
  core.String? id;

  /// The user defined name of the raw event dimension.
  core.String? name;

  GoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader({
    this.id,
    this.name,
  });

  GoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader.fromJson(
    core.Map json_,
  ) : this(
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (id != null) 'id': id!,
    if (name != null) 'name': name!,
  };
}

/// Message for raw event conversion metric header.
class GoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader {
  /// The conversion custom variable ID.
  core.String? id;

  /// The user defined name of the raw event metric.
  core.String? name;

  GoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader({
    this.id,
    this.name,
  });

  GoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader.fromJson(
    core.Map json_,
  ) : this(
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (id != null) 'id': id!,
    if (name != null) 'name': name!,
  };
}

/// A returned row from the query.
class GoogleAdsSearchads360V0ServicesSearchAds360Row {
  /// The accessible bidding strategy referenced in the query.
  GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy?
  accessibleBiddingStrategy;

  /// The ad group referenced in the query.
  GoogleAdsSearchads360V0ResourcesAdGroup? adGroup;

  /// The ad referenced in the query.
  GoogleAdsSearchads360V0ResourcesAdGroupAd? adGroupAd;

  /// The ad group ad effective label referenced in the query.
  GoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel?
  adGroupAdEffectiveLabel;

  /// The ad group ad label referenced in the query.
  GoogleAdsSearchads360V0ResourcesAdGroupAdLabel? adGroupAdLabel;

  /// The ad group asset referenced in the query.
  GoogleAdsSearchads360V0ResourcesAdGroupAsset? adGroupAsset;

  /// The ad group asset set referenced in the query.
  GoogleAdsSearchads360V0ResourcesAdGroupAssetSet? adGroupAssetSet;

  /// The ad group audience view referenced in the query.
  GoogleAdsSearchads360V0ResourcesAdGroupAudienceView? adGroupAudienceView;

  /// The bid modifier referenced in the query.
  GoogleAdsSearchads360V0ResourcesAdGroupBidModifier? adGroupBidModifier;

  /// The criterion referenced in the query.
  GoogleAdsSearchads360V0ResourcesAdGroupCriterion? adGroupCriterion;

  /// The ad group criterion effective label referenced in the query.
  GoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel?
  adGroupCriterionEffectiveLabel;

  /// The ad group criterion label referenced in the query.
  GoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel? adGroupCriterionLabel;

  /// The ad group effective label referenced in the query.
  GoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel? adGroupEffectiveLabel;

  /// The ad group label referenced in the query.
  GoogleAdsSearchads360V0ResourcesAdGroupLabel? adGroupLabel;

  /// The age range view referenced in the query.
  GoogleAdsSearchads360V0ResourcesAgeRangeView? ageRangeView;

  /// The asset referenced in the query.
  GoogleAdsSearchads360V0ResourcesAsset? asset;

  /// The asset group referenced in the query.
  GoogleAdsSearchads360V0ResourcesAssetGroup? assetGroup;

  /// The asset group asset referenced in the query.
  GoogleAdsSearchads360V0ResourcesAssetGroupAsset? assetGroupAsset;

  /// The asset group listing group filter referenced in the query.
  GoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter?
  assetGroupListingGroupFilter;

  /// The asset group signal referenced in the query.
  GoogleAdsSearchads360V0ResourcesAssetGroupSignal? assetGroupSignal;

  /// The asset group top combination view referenced in the query.
  GoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView?
  assetGroupTopCombinationView;

  /// The asset set referenced in the query.
  GoogleAdsSearchads360V0ResourcesAssetSet? assetSet;

  /// The asset set asset referenced in the query.
  GoogleAdsSearchads360V0ResourcesAssetSetAsset? assetSetAsset;

  /// The Audience referenced in the query.
  GoogleAdsSearchads360V0ResourcesAudience? audience;

  /// The bidding strategy referenced in the query.
  GoogleAdsSearchads360V0ResourcesBiddingStrategy? biddingStrategy;

  /// The campaign referenced in the query.
  GoogleAdsSearchads360V0ResourcesCampaign? campaign;

  /// The campaign asset referenced in the query.
  GoogleAdsSearchads360V0ResourcesCampaignAsset? campaignAsset;

  /// The campaign asset set referenced in the query.
  GoogleAdsSearchads360V0ResourcesCampaignAssetSet? campaignAssetSet;

  /// The campaign audience view referenced in the query.
  GoogleAdsSearchads360V0ResourcesCampaignAudienceView? campaignAudienceView;

  /// The campaign budget referenced in the query.
  GoogleAdsSearchads360V0ResourcesCampaignBudget? campaignBudget;

  /// The campaign criterion referenced in the query.
  GoogleAdsSearchads360V0ResourcesCampaignCriterion? campaignCriterion;

  /// The campaign effective label referenced in the query.
  GoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel?
  campaignEffectiveLabel;

  /// The campaign label referenced in the query.
  GoogleAdsSearchads360V0ResourcesCampaignLabel? campaignLabel;

  /// The cart data sales view referenced in the query.
  GoogleAdsSearchads360V0ResourcesCartDataSalesView? cartDataSalesView;

  /// The event level conversion referenced in the query.
  GoogleAdsSearchads360V0ResourcesConversion? conversion;

  /// The conversion action referenced in the query.
  GoogleAdsSearchads360V0ResourcesConversionAction? conversionAction;

  /// The conversion custom variable referenced in the query.
  GoogleAdsSearchads360V0ResourcesConversionCustomVariable?
  conversionCustomVariable;

  /// The custom columns.
  core.List<GoogleAdsSearchads360V0CommonValue>? customColumns;

  /// The customer referenced in the query.
  GoogleAdsSearchads360V0ResourcesCustomer? customer;

  /// The customer asset referenced in the query.
  GoogleAdsSearchads360V0ResourcesCustomerAsset? customerAsset;

  /// The customer asset set referenced in the query.
  GoogleAdsSearchads360V0ResourcesCustomerAssetSet? customerAssetSet;

  /// The CustomerClient referenced in the query.
  GoogleAdsSearchads360V0ResourcesCustomerClient? customerClient;

  /// The CustomerManagerLink referenced in the query.
  GoogleAdsSearchads360V0ResourcesCustomerManagerLink? customerManagerLink;

  /// The dynamic search ads search term view referenced in the query.
  GoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView?
  dynamicSearchAdsSearchTermView;

  /// The gender view referenced in the query.
  GoogleAdsSearchads360V0ResourcesGenderView? genderView;

  /// The geo target constant referenced in the query.
  GoogleAdsSearchads360V0ResourcesGeoTargetConstant? geoTargetConstant;

  /// The keyword view referenced in the query.
  GoogleAdsSearchads360V0ResourcesKeywordView? keywordView;

  /// The label referenced in the query.
  GoogleAdsSearchads360V0ResourcesLabel? label;

  /// The language constant referenced in the query.
  GoogleAdsSearchads360V0ResourcesLanguageConstant? languageConstant;

  /// The location view referenced in the query.
  GoogleAdsSearchads360V0ResourcesLocationView? locationView;

  /// The metrics.
  GoogleAdsSearchads360V0CommonMetrics? metrics;

  /// The Product Bidding Category referenced in the query.
  GoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant?
  productBiddingCategoryConstant;

  /// The product group view referenced in the query.
  GoogleAdsSearchads360V0ResourcesProductGroupView? productGroupView;

  /// The segments.
  GoogleAdsSearchads360V0CommonSegments? segments;

  /// The shopping performance view referenced in the query.
  GoogleAdsSearchads360V0ResourcesShoppingPerformanceView?
  shoppingPerformanceView;

  /// The user list referenced in the query.
  GoogleAdsSearchads360V0ResourcesUserList? userList;

  /// The user location view referenced in the query.
  GoogleAdsSearchads360V0ResourcesUserLocationView? userLocationView;

  /// The event level visit referenced in the query.
  GoogleAdsSearchads360V0ResourcesVisit? visit;

  /// The webpage view referenced in the query.
  GoogleAdsSearchads360V0ResourcesWebpageView? webpageView;

  GoogleAdsSearchads360V0ServicesSearchAds360Row({
    this.accessibleBiddingStrategy,
    this.adGroup,
    this.adGroupAd,
    this.adGroupAdEffectiveLabel,
    this.adGroupAdLabel,
    this.adGroupAsset,
    this.adGroupAssetSet,
    this.adGroupAudienceView,
    this.adGroupBidModifier,
    this.adGroupCriterion,
    this.adGroupCriterionEffectiveLabel,
    this.adGroupCriterionLabel,
    this.adGroupEffectiveLabel,
    this.adGroupLabel,
    this.ageRangeView,
    this.asset,
    this.assetGroup,
    this.assetGroupAsset,
    this.assetGroupListingGroupFilter,
    this.assetGroupSignal,
    this.assetGroupTopCombinationView,
    this.assetSet,
    this.assetSetAsset,
    this.audience,
    this.biddingStrategy,
    this.campaign,
    this.campaignAsset,
    this.campaignAssetSet,
    this.campaignAudienceView,
    this.campaignBudget,
    this.campaignCriterion,
    this.campaignEffectiveLabel,
    this.campaignLabel,
    this.cartDataSalesView,
    this.conversion,
    this.conversionAction,
    this.conversionCustomVariable,
    this.customColumns,
    this.customer,
    this.customerAsset,
    this.customerAssetSet,
    this.customerClient,
    this.customerManagerLink,
    this.dynamicSearchAdsSearchTermView,
    this.genderView,
    this.geoTargetConstant,
    this.keywordView,
    this.label,
    this.languageConstant,
    this.locationView,
    this.metrics,
    this.productBiddingCategoryConstant,
    this.productGroupView,
    this.segments,
    this.shoppingPerformanceView,
    this.userList,
    this.userLocationView,
    this.visit,
    this.webpageView,
  });

  GoogleAdsSearchads360V0ServicesSearchAds360Row.fromJson(core.Map json_)
    : this(
        accessibleBiddingStrategy:
            json_.containsKey('accessibleBiddingStrategy')
                ? GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy.fromJson(
                  json_['accessibleBiddingStrategy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        adGroup:
            json_.containsKey('adGroup')
                ? GoogleAdsSearchads360V0ResourcesAdGroup.fromJson(
                  json_['adGroup'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        adGroupAd:
            json_.containsKey('adGroupAd')
                ? GoogleAdsSearchads360V0ResourcesAdGroupAd.fromJson(
                  json_['adGroupAd'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        adGroupAdEffectiveLabel:
            json_.containsKey('adGroupAdEffectiveLabel')
                ? GoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel.fromJson(
                  json_['adGroupAdEffectiveLabel']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        adGroupAdLabel:
            json_.containsKey('adGroupAdLabel')
                ? GoogleAdsSearchads360V0ResourcesAdGroupAdLabel.fromJson(
                  json_['adGroupAdLabel']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        adGroupAsset:
            json_.containsKey('adGroupAsset')
                ? GoogleAdsSearchads360V0ResourcesAdGroupAsset.fromJson(
                  json_['adGroupAsset'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        adGroupAssetSet:
            json_.containsKey('adGroupAssetSet')
                ? GoogleAdsSearchads360V0ResourcesAdGroupAssetSet.fromJson(
                  json_['adGroupAssetSet']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        adGroupAudienceView:
            json_.containsKey('adGroupAudienceView')
                ? GoogleAdsSearchads360V0ResourcesAdGroupAudienceView.fromJson(
                  json_['adGroupAudienceView']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        adGroupBidModifier:
            json_.containsKey('adGroupBidModifier')
                ? GoogleAdsSearchads360V0ResourcesAdGroupBidModifier.fromJson(
                  json_['adGroupBidModifier']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        adGroupCriterion:
            json_.containsKey('adGroupCriterion')
                ? GoogleAdsSearchads360V0ResourcesAdGroupCriterion.fromJson(
                  json_['adGroupCriterion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        adGroupCriterionEffectiveLabel:
            json_.containsKey('adGroupCriterionEffectiveLabel')
                ? GoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel.fromJson(
                  json_['adGroupCriterionEffectiveLabel']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        adGroupCriterionLabel:
            json_.containsKey('adGroupCriterionLabel')
                ? GoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel.fromJson(
                  json_['adGroupCriterionLabel']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        adGroupEffectiveLabel:
            json_.containsKey('adGroupEffectiveLabel')
                ? GoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel.fromJson(
                  json_['adGroupEffectiveLabel']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        adGroupLabel:
            json_.containsKey('adGroupLabel')
                ? GoogleAdsSearchads360V0ResourcesAdGroupLabel.fromJson(
                  json_['adGroupLabel'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        ageRangeView:
            json_.containsKey('ageRangeView')
                ? GoogleAdsSearchads360V0ResourcesAgeRangeView.fromJson(
                  json_['ageRangeView'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        asset:
            json_.containsKey('asset')
                ? GoogleAdsSearchads360V0ResourcesAsset.fromJson(
                  json_['asset'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        assetGroup:
            json_.containsKey('assetGroup')
                ? GoogleAdsSearchads360V0ResourcesAssetGroup.fromJson(
                  json_['assetGroup'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        assetGroupAsset:
            json_.containsKey('assetGroupAsset')
                ? GoogleAdsSearchads360V0ResourcesAssetGroupAsset.fromJson(
                  json_['assetGroupAsset']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        assetGroupListingGroupFilter:
            json_.containsKey('assetGroupListingGroupFilter')
                ? GoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter.fromJson(
                  json_['assetGroupListingGroupFilter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        assetGroupSignal:
            json_.containsKey('assetGroupSignal')
                ? GoogleAdsSearchads360V0ResourcesAssetGroupSignal.fromJson(
                  json_['assetGroupSignal']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        assetGroupTopCombinationView:
            json_.containsKey('assetGroupTopCombinationView')
                ? GoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView.fromJson(
                  json_['assetGroupTopCombinationView']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        assetSet:
            json_.containsKey('assetSet')
                ? GoogleAdsSearchads360V0ResourcesAssetSet.fromJson(
                  json_['assetSet'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        assetSetAsset:
            json_.containsKey('assetSetAsset')
                ? GoogleAdsSearchads360V0ResourcesAssetSetAsset.fromJson(
                  json_['assetSetAsset'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        audience:
            json_.containsKey('audience')
                ? GoogleAdsSearchads360V0ResourcesAudience.fromJson(
                  json_['audience'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        biddingStrategy:
            json_.containsKey('biddingStrategy')
                ? GoogleAdsSearchads360V0ResourcesBiddingStrategy.fromJson(
                  json_['biddingStrategy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        campaign:
            json_.containsKey('campaign')
                ? GoogleAdsSearchads360V0ResourcesCampaign.fromJson(
                  json_['campaign'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        campaignAsset:
            json_.containsKey('campaignAsset')
                ? GoogleAdsSearchads360V0ResourcesCampaignAsset.fromJson(
                  json_['campaignAsset'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        campaignAssetSet:
            json_.containsKey('campaignAssetSet')
                ? GoogleAdsSearchads360V0ResourcesCampaignAssetSet.fromJson(
                  json_['campaignAssetSet']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        campaignAudienceView:
            json_.containsKey('campaignAudienceView')
                ? GoogleAdsSearchads360V0ResourcesCampaignAudienceView.fromJson(
                  json_['campaignAudienceView']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        campaignBudget:
            json_.containsKey('campaignBudget')
                ? GoogleAdsSearchads360V0ResourcesCampaignBudget.fromJson(
                  json_['campaignBudget']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        campaignCriterion:
            json_.containsKey('campaignCriterion')
                ? GoogleAdsSearchads360V0ResourcesCampaignCriterion.fromJson(
                  json_['campaignCriterion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        campaignEffectiveLabel:
            json_.containsKey('campaignEffectiveLabel')
                ? GoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel.fromJson(
                  json_['campaignEffectiveLabel']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        campaignLabel:
            json_.containsKey('campaignLabel')
                ? GoogleAdsSearchads360V0ResourcesCampaignLabel.fromJson(
                  json_['campaignLabel'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        cartDataSalesView:
            json_.containsKey('cartDataSalesView')
                ? GoogleAdsSearchads360V0ResourcesCartDataSalesView.fromJson(
                  json_['cartDataSalesView']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        conversion:
            json_.containsKey('conversion')
                ? GoogleAdsSearchads360V0ResourcesConversion.fromJson(
                  json_['conversion'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        conversionAction:
            json_.containsKey('conversionAction')
                ? GoogleAdsSearchads360V0ResourcesConversionAction.fromJson(
                  json_['conversionAction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        conversionCustomVariable:
            json_.containsKey('conversionCustomVariable')
                ? GoogleAdsSearchads360V0ResourcesConversionCustomVariable.fromJson(
                  json_['conversionCustomVariable']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        customColumns:
            (json_['customColumns'] as core.List?)
                ?.map(
                  (value) => GoogleAdsSearchads360V0CommonValue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        customer:
            json_.containsKey('customer')
                ? GoogleAdsSearchads360V0ResourcesCustomer.fromJson(
                  json_['customer'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        customerAsset:
            json_.containsKey('customerAsset')
                ? GoogleAdsSearchads360V0ResourcesCustomerAsset.fromJson(
                  json_['customerAsset'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        customerAssetSet:
            json_.containsKey('customerAssetSet')
                ? GoogleAdsSearchads360V0ResourcesCustomerAssetSet.fromJson(
                  json_['customerAssetSet']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        customerClient:
            json_.containsKey('customerClient')
                ? GoogleAdsSearchads360V0ResourcesCustomerClient.fromJson(
                  json_['customerClient']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        customerManagerLink:
            json_.containsKey('customerManagerLink')
                ? GoogleAdsSearchads360V0ResourcesCustomerManagerLink.fromJson(
                  json_['customerManagerLink']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        dynamicSearchAdsSearchTermView:
            json_.containsKey('dynamicSearchAdsSearchTermView')
                ? GoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView.fromJson(
                  json_['dynamicSearchAdsSearchTermView']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        genderView:
            json_.containsKey('genderView')
                ? GoogleAdsSearchads360V0ResourcesGenderView.fromJson(
                  json_['genderView'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        geoTargetConstant:
            json_.containsKey('geoTargetConstant')
                ? GoogleAdsSearchads360V0ResourcesGeoTargetConstant.fromJson(
                  json_['geoTargetConstant']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        keywordView:
            json_.containsKey('keywordView')
                ? GoogleAdsSearchads360V0ResourcesKeywordView.fromJson(
                  json_['keywordView'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        label:
            json_.containsKey('label')
                ? GoogleAdsSearchads360V0ResourcesLabel.fromJson(
                  json_['label'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        languageConstant:
            json_.containsKey('languageConstant')
                ? GoogleAdsSearchads360V0ResourcesLanguageConstant.fromJson(
                  json_['languageConstant']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        locationView:
            json_.containsKey('locationView')
                ? GoogleAdsSearchads360V0ResourcesLocationView.fromJson(
                  json_['locationView'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metrics:
            json_.containsKey('metrics')
                ? GoogleAdsSearchads360V0CommonMetrics.fromJson(
                  json_['metrics'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        productBiddingCategoryConstant:
            json_.containsKey('productBiddingCategoryConstant')
                ? GoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant.fromJson(
                  json_['productBiddingCategoryConstant']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        productGroupView:
            json_.containsKey('productGroupView')
                ? GoogleAdsSearchads360V0ResourcesProductGroupView.fromJson(
                  json_['productGroupView']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        segments:
            json_.containsKey('segments')
                ? GoogleAdsSearchads360V0CommonSegments.fromJson(
                  json_['segments'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        shoppingPerformanceView:
            json_.containsKey('shoppingPerformanceView')
                ? GoogleAdsSearchads360V0ResourcesShoppingPerformanceView.fromJson(
                  json_['shoppingPerformanceView']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        userList:
            json_.containsKey('userList')
                ? GoogleAdsSearchads360V0ResourcesUserList.fromJson(
                  json_['userList'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userLocationView:
            json_.containsKey('userLocationView')
                ? GoogleAdsSearchads360V0ResourcesUserLocationView.fromJson(
                  json_['userLocationView']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        visit:
            json_.containsKey('visit')
                ? GoogleAdsSearchads360V0ResourcesVisit.fromJson(
                  json_['visit'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        webpageView:
            json_.containsKey('webpageView')
                ? GoogleAdsSearchads360V0ResourcesWebpageView.fromJson(
                  json_['webpageView'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accessibleBiddingStrategy != null)
      'accessibleBiddingStrategy': accessibleBiddingStrategy!,
    if (adGroup != null) 'adGroup': adGroup!,
    if (adGroupAd != null) 'adGroupAd': adGroupAd!,
    if (adGroupAdEffectiveLabel != null)
      'adGroupAdEffectiveLabel': adGroupAdEffectiveLabel!,
    if (adGroupAdLabel != null) 'adGroupAdLabel': adGroupAdLabel!,
    if (adGroupAsset != null) 'adGroupAsset': adGroupAsset!,
    if (adGroupAssetSet != null) 'adGroupAssetSet': adGroupAssetSet!,
    if (adGroupAudienceView != null)
      'adGroupAudienceView': adGroupAudienceView!,
    if (adGroupBidModifier != null) 'adGroupBidModifier': adGroupBidModifier!,
    if (adGroupCriterion != null) 'adGroupCriterion': adGroupCriterion!,
    if (adGroupCriterionEffectiveLabel != null)
      'adGroupCriterionEffectiveLabel': adGroupCriterionEffectiveLabel!,
    if (adGroupCriterionLabel != null)
      'adGroupCriterionLabel': adGroupCriterionLabel!,
    if (adGroupEffectiveLabel != null)
      'adGroupEffectiveLabel': adGroupEffectiveLabel!,
    if (adGroupLabel != null) 'adGroupLabel': adGroupLabel!,
    if (ageRangeView != null) 'ageRangeView': ageRangeView!,
    if (asset != null) 'asset': asset!,
    if (assetGroup != null) 'assetGroup': assetGroup!,
    if (assetGroupAsset != null) 'assetGroupAsset': assetGroupAsset!,
    if (assetGroupListingGroupFilter != null)
      'assetGroupListingGroupFilter': assetGroupListingGroupFilter!,
    if (assetGroupSignal != null) 'assetGroupSignal': assetGroupSignal!,
    if (assetGroupTopCombinationView != null)
      'assetGroupTopCombinationView': assetGroupTopCombinationView!,
    if (assetSet != null) 'assetSet': assetSet!,
    if (assetSetAsset != null) 'assetSetAsset': assetSetAsset!,
    if (audience != null) 'audience': audience!,
    if (biddingStrategy != null) 'biddingStrategy': biddingStrategy!,
    if (campaign != null) 'campaign': campaign!,
    if (campaignAsset != null) 'campaignAsset': campaignAsset!,
    if (campaignAssetSet != null) 'campaignAssetSet': campaignAssetSet!,
    if (campaignAudienceView != null)
      'campaignAudienceView': campaignAudienceView!,
    if (campaignBudget != null) 'campaignBudget': campaignBudget!,
    if (campaignCriterion != null) 'campaignCriterion': campaignCriterion!,
    if (campaignEffectiveLabel != null)
      'campaignEffectiveLabel': campaignEffectiveLabel!,
    if (campaignLabel != null) 'campaignLabel': campaignLabel!,
    if (cartDataSalesView != null) 'cartDataSalesView': cartDataSalesView!,
    if (conversion != null) 'conversion': conversion!,
    if (conversionAction != null) 'conversionAction': conversionAction!,
    if (conversionCustomVariable != null)
      'conversionCustomVariable': conversionCustomVariable!,
    if (customColumns != null) 'customColumns': customColumns!,
    if (customer != null) 'customer': customer!,
    if (customerAsset != null) 'customerAsset': customerAsset!,
    if (customerAssetSet != null) 'customerAssetSet': customerAssetSet!,
    if (customerClient != null) 'customerClient': customerClient!,
    if (customerManagerLink != null)
      'customerManagerLink': customerManagerLink!,
    if (dynamicSearchAdsSearchTermView != null)
      'dynamicSearchAdsSearchTermView': dynamicSearchAdsSearchTermView!,
    if (genderView != null) 'genderView': genderView!,
    if (geoTargetConstant != null) 'geoTargetConstant': geoTargetConstant!,
    if (keywordView != null) 'keywordView': keywordView!,
    if (label != null) 'label': label!,
    if (languageConstant != null) 'languageConstant': languageConstant!,
    if (locationView != null) 'locationView': locationView!,
    if (metrics != null) 'metrics': metrics!,
    if (productBiddingCategoryConstant != null)
      'productBiddingCategoryConstant': productBiddingCategoryConstant!,
    if (productGroupView != null) 'productGroupView': productGroupView!,
    if (segments != null) 'segments': segments!,
    if (shoppingPerformanceView != null)
      'shoppingPerformanceView': shoppingPerformanceView!,
    if (userList != null) 'userList': userList!,
    if (userLocationView != null) 'userLocationView': userLocationView!,
    if (visit != null) 'visit': visit!,
    if (webpageView != null) 'webpageView': webpageView!,
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
    core.Map json_,
  ) : this(
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
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        results:
            (json_['results'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAdsSearchads360V0ResourcesSearchAds360Field.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        totalResultsCount: json_['totalResultsCount'] as core.String?,
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
    core.Map json_,
  ) : this(
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        query: json_['query'] as core.String?,
        returnTotalResultsCount: json_['returnTotalResultsCount'] as core.bool?,
        summaryRowSetting: json_['summaryRowSetting'] as core.String?,
        validateOnly: json_['validateOnly'] as core.bool?,
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
  /// The headers of the conversion custom dimensions in the results.
  core.List<GoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader>?
  conversionCustomDimensionHeaders;

  /// The headers of the conversion custom metrics in the results.
  core.List<GoogleAdsSearchads360V0ServicesConversionCustomMetricHeader>?
  conversionCustomMetricHeaders;

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

  /// The headers of the raw event conversion dimensions in the results.
  core.List<GoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader>?
  rawEventConversionDimensionHeaders;

  /// The headers of the raw event conversion metrics in the results.
  core.List<GoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader>?
  rawEventConversionMetricHeaders;

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
    this.conversionCustomDimensionHeaders,
    this.conversionCustomMetricHeaders,
    this.customColumnHeaders,
    this.fieldMask,
    this.nextPageToken,
    this.rawEventConversionDimensionHeaders,
    this.rawEventConversionMetricHeaders,
    this.results,
    this.summaryRow,
    this.totalResultsCount,
  });

  GoogleAdsSearchads360V0ServicesSearchSearchAds360Response.fromJson(
    core.Map json_,
  ) : this(
        conversionCustomDimensionHeaders:
            (json_['conversionCustomDimensionHeaders'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        conversionCustomMetricHeaders:
            (json_['conversionCustomMetricHeaders'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAdsSearchads360V0ServicesConversionCustomMetricHeader.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        customColumnHeaders:
            (json_['customColumnHeaders'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAdsSearchads360V0ServicesCustomColumnHeader.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        fieldMask: json_['fieldMask'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
        rawEventConversionDimensionHeaders:
            (json_['rawEventConversionDimensionHeaders'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        rawEventConversionMetricHeaders:
            (json_['rawEventConversionMetricHeaders'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        results:
            (json_['results'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAdsSearchads360V0ServicesSearchAds360Row.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        summaryRow:
            json_.containsKey('summaryRow')
                ? GoogleAdsSearchads360V0ServicesSearchAds360Row.fromJson(
                  json_['summaryRow'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        totalResultsCount: json_['totalResultsCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conversionCustomDimensionHeaders != null)
      'conversionCustomDimensionHeaders': conversionCustomDimensionHeaders!,
    if (conversionCustomMetricHeaders != null)
      'conversionCustomMetricHeaders': conversionCustomMetricHeaders!,
    if (customColumnHeaders != null)
      'customColumnHeaders': customColumnHeaders!,
    if (fieldMask != null) 'fieldMask': fieldMask!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (rawEventConversionDimensionHeaders != null)
      'rawEventConversionDimensionHeaders': rawEventConversionDimensionHeaders!,
    if (rawEventConversionMetricHeaders != null)
      'rawEventConversionMetricHeaders': rawEventConversionMetricHeaders!,
    if (results != null) 'results': results!,
    if (summaryRow != null) 'summaryRow': summaryRow!,
    if (totalResultsCount != null) 'totalResultsCount': totalResultsCount!,
  };
}
