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

/// Merchant API - conversions_v1
///
/// Programmatically manage your Merchant Center Accounts.
///
/// For more information, see <https://developers.google.com/merchant/api>
///
/// Create an instance of [MerchantApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsConversionSourcesResource]
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

  AccountsConversionSourcesResource get conversionSources =>
      AccountsConversionSourcesResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;
}

class AccountsConversionSourcesResource {
  final commons.ApiRequester _requester;

  AccountsConversionSourcesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new conversion source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The merchant account that will own the new conversion
  /// source. Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConversionSource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConversionSource> create(
    ConversionSource request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'conversions/v1/' +
        core.Uri.encodeFull('$parent') +
        '/conversionSources';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ConversionSource.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Archives an existing conversion source.
  ///
  /// If the conversion source is a Merchant Center Destination, it will be
  /// recoverable for 30 days. If the conversion source is a Google Analytics
  /// Link, it will be deleted immediately and can be restored by creating a new
  /// one.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the conversion source to be deleted.
  /// Format: `accounts/{account}/conversionSources/{conversion_source}`
  /// Value must have pattern `^accounts/\[^/\]+/conversionSources/\[^/\]+$`.
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'conversions/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Fetches a conversion source.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the conversion source to be fetched.
  /// Format: `accounts/{account}/conversionSources/{conversion_source}`
  /// Value must have pattern `^accounts/\[^/\]+/conversionSources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConversionSource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConversionSource> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'conversions/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ConversionSource.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the list of conversion sources the caller has access to.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The merchant account who owns the collection of
  /// conversion sources. Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of conversion sources to return
  /// in a page. If no `page_size` is specified, `100` is used as the default
  /// value. The maximum value is `200`. Values above `200` will be coerced to
  /// `200`. Regardless of pagination, at most `200` conversion sources are
  /// returned in total.
  ///
  /// [pageToken] - Optional. Page token.
  ///
  /// [showDeleted] - Optional. Show deleted (archived) conversion sources. By
  /// default, deleted conversion sources are not returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConversionSourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConversionSourcesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'showDeleted': ?showDeleted == null ? null : ['${showDeleted}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'conversions/v1/' +
        core.Uri.encodeFull('$parent') +
        '/conversionSources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConversionSourcesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates information of an existing conversion source.
  ///
  /// Available only for Merchant Center Destination conversion sources.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Identifier. Generated by the Content API upon
  /// creation of a new `ConversionSource`. Format: `[a-z]{4}:.+` The four
  /// characters before the colon represent the type of conversion source.
  /// Content after the colon represents the ID of the conversion source within
  /// that type. The ID of two different conversion sources might be the same
  /// across different types. The following type prefixes are supported: *
  /// `galk`: For GoogleAnalyticsLink sources. * `mcdn`: For
  /// MerchantCenterDestination sources.
  /// Value must have pattern `^accounts/\[^/\]+/conversionSources/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. List of fields being updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConversionSource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConversionSource> patch(
    ConversionSource request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'conversions/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ConversionSource.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Re-enables an archived conversion source.
  ///
  /// Only Available for Merchant Center Destination conversion sources.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the conversion source to be undeleted.
  /// Format: `accounts/{account}/conversionSources/{conversion_source}`
  /// Value must have pattern `^accounts/\[^/\]+/conversionSources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConversionSource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConversionSource> undelete(
    UndeleteConversionSourceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'conversions/v1/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ConversionSource.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Represents attribution settings for conversion sources receiving
/// pre-attribution data.
class AttributionSettings {
  /// Lookback window (in days) used for attribution in this source.
  ///
  /// Supported values are `7`, `30` & `40`.
  ///
  /// Required.
  core.int? attributionLookbackWindowDays;

  /// Attribution model.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ATTRIBUTION_MODEL_UNSPECIFIED" : Unspecified model.
  /// - "CROSS_CHANNEL_LAST_CLICK" : Cross-channel Last Click model.
  /// - "ADS_PREFERRED_LAST_CLICK" : Ads-preferred Last Click model.
  /// - "CROSS_CHANNEL_DATA_DRIVEN" : Cross-channel Data Driven model.
  /// - "CROSS_CHANNEL_FIRST_CLICK" : Cross-channel First Click model.
  /// - "CROSS_CHANNEL_LINEAR" : Cross-channel Linear model.
  /// - "CROSS_CHANNEL_POSITION_BASED" : Cross-channel Position Based model.
  /// - "CROSS_CHANNEL_TIME_DECAY" : Cross-channel Time Decay model.
  core.String? attributionModel;

  /// Unordered list.
  ///
  /// List of different conversion types a conversion event can be classified
  /// as. A standard "purchase" type will be automatically created if this list
  /// is empty at creation time.
  ///
  /// Immutable.
  core.List<ConversionType>? conversionType;

  AttributionSettings({
    this.attributionLookbackWindowDays,
    this.attributionModel,
    this.conversionType,
  });

  AttributionSettings.fromJson(core.Map json_)
    : this(
        attributionLookbackWindowDays:
            json_['attributionLookbackWindowDays'] as core.int?,
        attributionModel: json_['attributionModel'] as core.String?,
        conversionType: (json_['conversionType'] as core.List?)
            ?.map(
              (value) => ConversionType.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attributionLookbackWindowDays = this.attributionLookbackWindowDays;
    final attributionModel = this.attributionModel;
    final conversionType = this.conversionType;
    return {
      'attributionLookbackWindowDays': ?attributionLookbackWindowDays,
      'attributionModel': ?attributionModel,
      'conversionType': ?conversionType,
    };
  }
}

/// Represents a conversion source owned by a Merchant account.
///
/// A merchant account can have up to 200 conversion sources.
class ConversionSource {
  /// Controller of the conversion source.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CONTROLLER_UNSPECIFIED" : Default value. This value is unused.
  /// - "MERCHANT" : Controlled by the Merchant who owns the Conversion Source.
  /// - "YOUTUBE_AFFILIATES" : Controlled by the Youtube Affiliates program.
  core.String? controller;

  /// The time when an archived conversion source becomes permanently deleted
  /// and is no longer available to undelete.
  ///
  /// Output only.
  core.String? expireTime;

  /// Conversion Source of type "Link to Google Analytics Property".
  ///
  /// Immutable.
  GoogleAnalyticsLink? googleAnalyticsLink;

  /// Conversion Source of type "Merchant Center Tag Destination".
  MerchantCenterDestination? merchantCenterDestination;

  /// Identifier.
  ///
  /// Generated by the Content API upon creation of a new `ConversionSource`.
  /// Format: `[a-z]{4}:.+` The four characters before the colon represent the
  /// type of conversion source. Content after the colon represents the ID of
  /// the conversion source within that type. The ID of two different conversion
  /// sources might be the same across different types. The following type
  /// prefixes are supported: * `galk`: For GoogleAnalyticsLink sources. *
  /// `mcdn`: For MerchantCenterDestination sources.
  ///
  /// Output only.
  core.String? name;

  /// Current state of this conversion source.
  ///
  /// Can't be edited through the API.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Conversion source has unspecified state.
  /// - "ACTIVE" : Conversion source is fully functional.
  /// - "ARCHIVED" : Conversion source has been archived in the last 30 days and
  /// is currently not functional. Can be restored using the undelete method.
  /// - "PENDING" : Conversion source creation has started but not fully
  /// finished yet.
  core.String? state;

  ConversionSource({
    this.controller,
    this.expireTime,
    this.googleAnalyticsLink,
    this.merchantCenterDestination,
    this.name,
    this.state,
  });

  ConversionSource.fromJson(core.Map json_)
    : this(
        controller: json_['controller'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        googleAnalyticsLink: json_.containsKey('googleAnalyticsLink')
            ? GoogleAnalyticsLink.fromJson(
                json_['googleAnalyticsLink']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        merchantCenterDestination:
            json_.containsKey('merchantCenterDestination')
            ? MerchantCenterDestination.fromJson(
                json_['merchantCenterDestination']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final controller = this.controller;
    final expireTime = this.expireTime;
    final googleAnalyticsLink = this.googleAnalyticsLink;
    final merchantCenterDestination = this.merchantCenterDestination;
    final name = this.name;
    final state = this.state;
    return {
      'controller': ?controller,
      'expireTime': ?expireTime,
      'googleAnalyticsLink': ?googleAnalyticsLink,
      'merchantCenterDestination': ?merchantCenterDestination,
      'name': ?name,
      'state': ?state,
    };
  }
}

/// Message representing the type of a conversion event.
class ConversionType {
  /// Conversion event name, as it'll be reported by the client.
  ///
  /// Output only.
  core.String? name;

  /// Option indicating if the type should be included in Merchant Center
  /// reporting.
  ///
  /// Output only.
  core.bool? report;

  ConversionType({this.name, this.report});

  ConversionType.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        report: json_['report'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final report = this.report;
    return {'name': ?name, 'report': ?report};
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// "Google Analytics Link" sources can be used to get conversion data from an
/// existing Google Analytics property into the linked Merchant Center account.
class GoogleAnalyticsLink {
  /// Attribution settings for the linked Google Analytics property.
  ///
  /// Output only.
  AttributionSettings? attributionSettings;

  /// Name of the Google Analytics property the merchant is linked to.
  ///
  /// Output only.
  core.String? property;

  /// ID of the Google Analytics property the merchant is linked to.
  ///
  /// Required. Immutable.
  core.String? propertyId;

  GoogleAnalyticsLink({
    this.attributionSettings,
    this.property,
    this.propertyId,
  });

  GoogleAnalyticsLink.fromJson(core.Map json_)
    : this(
        attributionSettings: json_.containsKey('attributionSettings')
            ? AttributionSettings.fromJson(
                json_['attributionSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        property: json_['property'] as core.String?,
        propertyId: json_['propertyId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attributionSettings = this.attributionSettings;
    final property = this.property;
    final propertyId = this.propertyId;
    return {
      'attributionSettings': ?attributionSettings,
      'property': ?property,
      'propertyId': ?propertyId,
    };
  }
}

/// Response message for the ListConversionSources method.
class ListConversionSourcesResponse {
  /// List of conversion sources.
  core.List<ConversionSource>? conversionSources;

  /// Token to be used to fetch the next results page.
  core.String? nextPageToken;

  ListConversionSourcesResponse({this.conversionSources, this.nextPageToken});

  ListConversionSourcesResponse.fromJson(core.Map json_)
    : this(
        conversionSources: (json_['conversionSources'] as core.List?)
            ?.map(
              (value) => ConversionSource.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conversionSources = this.conversionSources;
    final nextPageToken = this.nextPageToken;
    return {
      'conversionSources': ?conversionSources,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// "Merchant Center Destination" sources can be used to send conversion events
/// from an online store using a Google tag directly to a Merchant Center
/// account where the source is created.
class MerchantCenterDestination {
  /// Attribution settings used for the Merchant Center Destination.
  ///
  /// Required.
  AttributionSettings? attributionSettings;

  /// Three-letter currency code (ISO 4217).
  ///
  /// The currency code defines in which currency the conversions sent to this
  /// destination will be reported in Merchant Center.
  ///
  /// Required.
  core.String? currencyCode;

  /// Merchant Center Destination ID.
  ///
  /// Output only.
  core.String? destination;

  /// Merchant-specified display name for the destination.
  ///
  /// This is the name that identifies the conversion source within the Merchant
  /// Center UI. The maximum length is 64 characters.
  ///
  /// Required.
  core.String? displayName;

  MerchantCenterDestination({
    this.attributionSettings,
    this.currencyCode,
    this.destination,
    this.displayName,
  });

  MerchantCenterDestination.fromJson(core.Map json_)
    : this(
        attributionSettings: json_.containsKey('attributionSettings')
            ? AttributionSettings.fromJson(
                json_['attributionSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        currencyCode: json_['currencyCode'] as core.String?,
        destination: json_['destination'] as core.String?,
        displayName: json_['displayName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attributionSettings = this.attributionSettings;
    final currencyCode = this.currencyCode;
    final destination = this.destination;
    final displayName = this.displayName;
    return {
      'attributionSettings': ?attributionSettings,
      'currencyCode': ?currencyCode,
      'destination': ?destination,
      'displayName': ?displayName,
    };
  }
}

/// Request message for the UndeleteConversionSource method.
typedef UndeleteConversionSourceRequest = $Empty;
