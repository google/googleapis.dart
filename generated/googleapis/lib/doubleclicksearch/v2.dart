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

/// Search Ads 360 API - v2
///
/// The Search Ads 360 API allows developers to automate uploading conversions
/// and downloading reports from Search Ads 360.
///
/// For more information, see <https://developers.google.com/search-ads>
///
/// Create an instance of [DoubleclicksearchApi] to access these resources:
///
/// - [ConversionResource]
/// - [ReportsResource]
/// - [SavedColumnsResource]
library doubleclicksearch.v2;

import 'dart:async' as async;
import 'dart:collection' as collection;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        DetailedApiRequestError,
        Media,
        UploadOptions,
        ResumableUploadOptions,
        DownloadOptions,
        PartialDownloadOptions,
        ByteRange;

/// The Search Ads 360 API allows developers to automate uploading conversions
/// and downloading reports from Search Ads 360.
class DoubleclicksearchApi {
  /// View and manage your advertising data in DoubleClick Search
  static const doubleclicksearchScope =
      'https://www.googleapis.com/auth/doubleclicksearch';

  final commons.ApiRequester _requester;

  ConversionResource get conversion => ConversionResource(_requester);
  ReportsResource get reports => ReportsResource(_requester);
  SavedColumnsResource get savedColumns => SavedColumnsResource(_requester);

  DoubleclicksearchApi(http.Client client,
      {core.String rootUrl = 'https://doubleclicksearch.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ConversionResource {
  final commons.ApiRequester _requester;

  ConversionResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of conversions from a DoubleClick Search engine account.
  ///
  /// Request parameters:
  ///
  /// [agencyId] - Numeric ID of the agency.
  ///
  /// [advertiserId] - Numeric ID of the advertiser.
  ///
  /// [engineAccountId] - Numeric ID of the engine account.
  ///
  /// [endDate] - Last date (inclusive) on which to retrieve conversions. Format
  /// is yyyymmdd.
  /// Value must be between "20091101" and "99991231".
  ///
  /// [rowCount] - The number of conversions to return per call.
  /// Value must be between "1" and "1000".
  ///
  /// [startDate] - First date (inclusive) on which to retrieve conversions.
  /// Format is yyyymmdd.
  /// Value must be between "20091101" and "99991231".
  ///
  /// [startRow] - The 0-based starting index for retrieving conversions
  /// results.
  ///
  /// [adGroupId] - Numeric ID of the ad group.
  ///
  /// [adId] - Numeric ID of the ad.
  ///
  /// [campaignId] - Numeric ID of the campaign.
  ///
  /// [criterionId] - Numeric ID of the criterion.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConversionList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConversionList> get(
    core.String agencyId,
    core.String advertiserId,
    core.String engineAccountId,
    core.int endDate,
    core.int rowCount,
    core.int startDate,
    core.int startRow, {
    core.String? adGroupId,
    core.String? adId,
    core.String? campaignId,
    core.String? criterionId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'endDate': ['${endDate}'],
      'rowCount': ['${rowCount}'],
      'startDate': ['${startDate}'],
      'startRow': ['${startRow}'],
      if (adGroupId != null) 'adGroupId': [adGroupId],
      if (adId != null) 'adId': [adId],
      if (campaignId != null) 'campaignId': [campaignId],
      if (criterionId != null) 'criterionId': [criterionId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'doubleclicksearch/v2/agency/' +
        commons.escapeVariable('$agencyId') +
        '/advertiser/' +
        commons.escapeVariable('$advertiserId') +
        '/engine/' +
        commons.escapeVariable('$engineAccountId') +
        '/conversion';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ConversionList.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a batch of new conversions into DoubleClick Search.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConversionList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConversionList> insert(
    ConversionList request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'doubleclicksearch/v2/conversion';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ConversionList.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a batch of conversions in DoubleClick Search.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConversionList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConversionList> update(
    ConversionList request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'doubleclicksearch/v2/conversion';

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return ConversionList.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the availabilities of a batch of floodlight activities in
  /// DoubleClick Search.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UpdateAvailabilityResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UpdateAvailabilityResponse> updateAvailability(
    UpdateAvailabilityRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'doubleclicksearch/v2/conversion/updateAvailability';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return UpdateAvailabilityResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ReportsResource {
  final commons.ApiRequester _requester;

  ReportsResource(commons.ApiRequester client) : _requester = client;

  /// Generates and returns a report immediately.
  ///
  /// [request_1] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Report].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Report> generate(
    ReportRequest request_1, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request_1);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'doubleclicksearch/v2/reports/generate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Report.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Polls for the status of a report request.
  ///
  /// Request parameters:
  ///
  /// [reportId] - ID of the report request being polled.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Report].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Report> get(
    core.String reportId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'doubleclicksearch/v2/reports/' + commons.escapeVariable('$reportId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Report.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Downloads a report file encoded in UTF-8.
  ///
  /// Request parameters:
  ///
  /// [reportId] - ID of the report.
  ///
  /// [reportFragment] - The index of the report fragment to download.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<commons.Media?> getFile(
    core.String reportId,
    core.int reportFragment, {
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'doubleclicksearch/v2/reports/' +
        commons.escapeVariable('$reportId') +
        '/files/' +
        commons.escapeVariable('$reportFragment');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return null;
    } else {
      return _response as commons.Media;
    }
  }

  /// Downloads a csv file(encoded in UTF-8) that contains ID mappings between
  /// legacy SA360 and new SA360.
  ///
  /// The file includes all children entities of the given advertiser(e.g.
  /// engine accounts, campaigns, ad groups, etc.) that exist in both legacy
  /// SA360 and new SA360.
  ///
  /// Request parameters:
  ///
  /// [agencyId] - Legacy SA360 agency ID.
  ///
  /// [advertiserId] - Legacy SA360 advertiser ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a
  ///
  /// - [IdMappingFile] for Metadata downloads (see [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Object> getIdMappingFile(
    core.String agencyId,
    core.String advertiserId, {
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'doubleclicksearch/v2/agency/' +
        commons.escapeVariable('$agencyId') +
        '/advertiser/' +
        commons.escapeVariable('$advertiserId') +
        '/idmapping';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return IdMappingFile.fromJson(
          _response as core.Map<core.String, core.dynamic>);
    } else {
      return _response as commons.Media;
    }
  }

  /// Inserts a report request into the reporting system.
  ///
  /// [request_1] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Report].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Report> request(
    ReportRequest request_1, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request_1);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'doubleclicksearch/v2/reports';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Report.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class SavedColumnsResource {
  final commons.ApiRequester _requester;

  SavedColumnsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieve the list of saved columns for a specified advertiser.
  ///
  /// Request parameters:
  ///
  /// [agencyId] - DS ID of the agency.
  ///
  /// [advertiserId] - DS ID of the advertiser.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SavedColumnList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SavedColumnList> list(
    core.String agencyId,
    core.String advertiserId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'doubleclicksearch/v2/agency/' +
        commons.escapeVariable('$agencyId') +
        '/advertiser/' +
        commons.escapeVariable('$advertiserId') +
        '/savedcolumns';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SavedColumnList.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// A message containing availability data relevant to DoubleClick Search.
class Availability {
  /// DS advertiser ID.
  core.String? advertiserId;

  /// DS agency ID.
  core.String? agencyId;

  /// The time by which all conversions have been uploaded, in epoch millis UTC.
  core.String? availabilityTimestamp;

  /// The numeric segmentation identifier (for example, DoubleClick Search
  /// Floodlight activity ID).
  core.String? segmentationId;

  /// The friendly segmentation identifier (for example, DoubleClick Search
  /// Floodlight activity name).
  core.String? segmentationName;

  /// The segmentation type that this availability is for (its default value is
  /// `FLOODLIGHT`).
  core.String? segmentationType;

  Availability({
    this.advertiserId,
    this.agencyId,
    this.availabilityTimestamp,
    this.segmentationId,
    this.segmentationName,
    this.segmentationType,
  });

  Availability.fromJson(core.Map _json)
      : this(
          advertiserId: _json.containsKey('advertiserId')
              ? _json['advertiserId'] as core.String
              : null,
          agencyId: _json.containsKey('agencyId')
              ? _json['agencyId'] as core.String
              : null,
          availabilityTimestamp: _json.containsKey('availabilityTimestamp')
              ? _json['availabilityTimestamp'] as core.String
              : null,
          segmentationId: _json.containsKey('segmentationId')
              ? _json['segmentationId'] as core.String
              : null,
          segmentationName: _json.containsKey('segmentationName')
              ? _json['segmentationName'] as core.String
              : null,
          segmentationType: _json.containsKey('segmentationType')
              ? _json['segmentationType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (agencyId != null) 'agencyId': agencyId!,
        if (availabilityTimestamp != null)
          'availabilityTimestamp': availabilityTimestamp!,
        if (segmentationId != null) 'segmentationId': segmentationId!,
        if (segmentationName != null) 'segmentationName': segmentationName!,
        if (segmentationType != null) 'segmentationType': segmentationType!,
      };
}

/// A conversion containing data relevant to DoubleClick Search.
class Conversion {
  /// DS ad group ID.
  core.String? adGroupId;

  /// DS ad ID.
  core.String? adId;

  /// DS advertiser ID.
  core.String? advertiserId;

  /// DS agency ID.
  core.String? agencyId;

  /// Available to advertisers only after contacting DoubleClick Search customer
  /// support.
  core.String? attributionModel;

  /// DS campaign ID.
  core.String? campaignId;

  /// Sales channel for the product.
  ///
  /// Acceptable values are: - "`local`": a physical store - "`online`": an
  /// online store
  core.String? channel;

  /// DS click ID for the conversion.
  core.String? clickId;

  /// For offline conversions, advertisers provide this ID.
  ///
  /// Advertisers can specify any ID that is meaningful to them. Each conversion
  /// in a request must specify a unique ID, and the combination of ID and
  /// timestamp must be unique amongst all conversions within the advertiser.
  /// For online conversions, DS copies the `dsConversionId` or
  /// `floodlightOrderId` into this property depending on the advertiser's
  /// Floodlight instructions.
  core.String? conversionId;

  /// The time at which the conversion was last modified, in epoch millis UTC.
  core.String? conversionModifiedTimestamp;

  /// The time at which the conversion took place, in epoch millis UTC.
  core.String? conversionTimestamp;

  /// Available to advertisers only after contacting DoubleClick Search customer
  /// support.
  core.String? countMillis;

  /// DS criterion (keyword) ID.
  core.String? criterionId;

  /// The currency code for the conversion's revenue.
  ///
  /// Should be in ISO 4217 alphabetic (3-char) format.
  core.String? currencyCode;

  /// Custom dimensions for the conversion, which can be used to filter data in
  /// a report.
  core.List<CustomDimension>? customDimension;

  /// Custom metrics for the conversion.
  core.List<CustomMetric>? customMetric;

  /// The type of device on which the conversion occurred.
  core.String? deviceType;

  /// ID that DoubleClick Search generates for each conversion.
  core.String? dsConversionId;

  /// DS engine account ID.
  core.String? engineAccountId;

  /// The Floodlight order ID provided by the advertiser for the conversion.
  core.String? floodlightOrderId;

  /// ID that DS generates and uses to uniquely identify the inventory account
  /// that contains the product.
  core.String? inventoryAccountId;

  /// The country registered for the Merchant Center feed that contains the
  /// product.
  ///
  /// Use an ISO 3166 code to specify a country.
  core.String? productCountry;

  /// DS product group ID.
  core.String? productGroupId;

  /// The product ID (SKU).
  core.String? productId;

  /// The language registered for the Merchant Center feed that contains the
  /// product.
  ///
  /// Use an ISO 639 code to specify a language.
  core.String? productLanguage;

  /// The quantity of this conversion, in millis.
  core.String? quantityMillis;

  /// The revenue amount of this `TRANSACTION` conversion, in micros (value
  /// multiplied by 1000000, no decimal).
  ///
  /// For example, to specify a revenue value of "10" enter "10000000" (10
  /// million) in your request.
  core.String? revenueMicros;

  /// The numeric segmentation identifier (for example, DoubleClick Search
  /// Floodlight activity ID).
  core.String? segmentationId;

  /// The friendly segmentation identifier (for example, DoubleClick Search
  /// Floodlight activity name).
  core.String? segmentationName;

  /// The segmentation type of this conversion (for example, `FLOODLIGHT`).
  core.String? segmentationType;

  /// The state of the conversion, that is, either `ACTIVE` or `REMOVED`.
  ///
  /// Note: state DELETED is deprecated.
  core.String? state;

  /// The ID of the local store for which the product was advertised.
  ///
  /// Applicable only when the channel is "`local`".
  core.String? storeId;

  /// The type of the conversion, that is, either `ACTION` or `TRANSACTION`.
  ///
  /// An `ACTION` conversion is an action by the user that has no monetarily
  /// quantifiable value, while a `TRANSACTION` conversion is an action that
  /// does have a monetarily quantifiable value. Examples are email list signups
  /// (`ACTION`) versus ecommerce purchases (`TRANSACTION`).
  core.String? type;

  Conversion({
    this.adGroupId,
    this.adId,
    this.advertiserId,
    this.agencyId,
    this.attributionModel,
    this.campaignId,
    this.channel,
    this.clickId,
    this.conversionId,
    this.conversionModifiedTimestamp,
    this.conversionTimestamp,
    this.countMillis,
    this.criterionId,
    this.currencyCode,
    this.customDimension,
    this.customMetric,
    this.deviceType,
    this.dsConversionId,
    this.engineAccountId,
    this.floodlightOrderId,
    this.inventoryAccountId,
    this.productCountry,
    this.productGroupId,
    this.productId,
    this.productLanguage,
    this.quantityMillis,
    this.revenueMicros,
    this.segmentationId,
    this.segmentationName,
    this.segmentationType,
    this.state,
    this.storeId,
    this.type,
  });

  Conversion.fromJson(core.Map _json)
      : this(
          adGroupId: _json.containsKey('adGroupId')
              ? _json['adGroupId'] as core.String
              : null,
          adId: _json.containsKey('adId') ? _json['adId'] as core.String : null,
          advertiserId: _json.containsKey('advertiserId')
              ? _json['advertiserId'] as core.String
              : null,
          agencyId: _json.containsKey('agencyId')
              ? _json['agencyId'] as core.String
              : null,
          attributionModel: _json.containsKey('attributionModel')
              ? _json['attributionModel'] as core.String
              : null,
          campaignId: _json.containsKey('campaignId')
              ? _json['campaignId'] as core.String
              : null,
          channel: _json.containsKey('channel')
              ? _json['channel'] as core.String
              : null,
          clickId: _json.containsKey('clickId')
              ? _json['clickId'] as core.String
              : null,
          conversionId: _json.containsKey('conversionId')
              ? _json['conversionId'] as core.String
              : null,
          conversionModifiedTimestamp:
              _json.containsKey('conversionModifiedTimestamp')
                  ? _json['conversionModifiedTimestamp'] as core.String
                  : null,
          conversionTimestamp: _json.containsKey('conversionTimestamp')
              ? _json['conversionTimestamp'] as core.String
              : null,
          countMillis: _json.containsKey('countMillis')
              ? _json['countMillis'] as core.String
              : null,
          criterionId: _json.containsKey('criterionId')
              ? _json['criterionId'] as core.String
              : null,
          currencyCode: _json.containsKey('currencyCode')
              ? _json['currencyCode'] as core.String
              : null,
          customDimension: _json.containsKey('customDimension')
              ? (_json['customDimension'] as core.List)
                  .map((value) => CustomDimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          customMetric: _json.containsKey('customMetric')
              ? (_json['customMetric'] as core.List)
                  .map((value) => CustomMetric.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          deviceType: _json.containsKey('deviceType')
              ? _json['deviceType'] as core.String
              : null,
          dsConversionId: _json.containsKey('dsConversionId')
              ? _json['dsConversionId'] as core.String
              : null,
          engineAccountId: _json.containsKey('engineAccountId')
              ? _json['engineAccountId'] as core.String
              : null,
          floodlightOrderId: _json.containsKey('floodlightOrderId')
              ? _json['floodlightOrderId'] as core.String
              : null,
          inventoryAccountId: _json.containsKey('inventoryAccountId')
              ? _json['inventoryAccountId'] as core.String
              : null,
          productCountry: _json.containsKey('productCountry')
              ? _json['productCountry'] as core.String
              : null,
          productGroupId: _json.containsKey('productGroupId')
              ? _json['productGroupId'] as core.String
              : null,
          productId: _json.containsKey('productId')
              ? _json['productId'] as core.String
              : null,
          productLanguage: _json.containsKey('productLanguage')
              ? _json['productLanguage'] as core.String
              : null,
          quantityMillis: _json.containsKey('quantityMillis')
              ? _json['quantityMillis'] as core.String
              : null,
          revenueMicros: _json.containsKey('revenueMicros')
              ? _json['revenueMicros'] as core.String
              : null,
          segmentationId: _json.containsKey('segmentationId')
              ? _json['segmentationId'] as core.String
              : null,
          segmentationName: _json.containsKey('segmentationName')
              ? _json['segmentationName'] as core.String
              : null,
          segmentationType: _json.containsKey('segmentationType')
              ? _json['segmentationType'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          storeId: _json.containsKey('storeId')
              ? _json['storeId'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adGroupId != null) 'adGroupId': adGroupId!,
        if (adId != null) 'adId': adId!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (agencyId != null) 'agencyId': agencyId!,
        if (attributionModel != null) 'attributionModel': attributionModel!,
        if (campaignId != null) 'campaignId': campaignId!,
        if (channel != null) 'channel': channel!,
        if (clickId != null) 'clickId': clickId!,
        if (conversionId != null) 'conversionId': conversionId!,
        if (conversionModifiedTimestamp != null)
          'conversionModifiedTimestamp': conversionModifiedTimestamp!,
        if (conversionTimestamp != null)
          'conversionTimestamp': conversionTimestamp!,
        if (countMillis != null) 'countMillis': countMillis!,
        if (criterionId != null) 'criterionId': criterionId!,
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (customDimension != null) 'customDimension': customDimension!,
        if (customMetric != null) 'customMetric': customMetric!,
        if (deviceType != null) 'deviceType': deviceType!,
        if (dsConversionId != null) 'dsConversionId': dsConversionId!,
        if (engineAccountId != null) 'engineAccountId': engineAccountId!,
        if (floodlightOrderId != null) 'floodlightOrderId': floodlightOrderId!,
        if (inventoryAccountId != null)
          'inventoryAccountId': inventoryAccountId!,
        if (productCountry != null) 'productCountry': productCountry!,
        if (productGroupId != null) 'productGroupId': productGroupId!,
        if (productId != null) 'productId': productId!,
        if (productLanguage != null) 'productLanguage': productLanguage!,
        if (quantityMillis != null) 'quantityMillis': quantityMillis!,
        if (revenueMicros != null) 'revenueMicros': revenueMicros!,
        if (segmentationId != null) 'segmentationId': segmentationId!,
        if (segmentationName != null) 'segmentationName': segmentationName!,
        if (segmentationType != null) 'segmentationType': segmentationType!,
        if (state != null) 'state': state!,
        if (storeId != null) 'storeId': storeId!,
        if (type != null) 'type': type!,
      };
}

/// A list of conversions.
class ConversionList {
  /// The conversions being requested.
  core.List<Conversion>? conversion;

  /// Identifies this as a ConversionList resource.
  ///
  /// Value: the fixed string doubleclicksearch#conversionList.
  core.String? kind;

  ConversionList({
    this.conversion,
    this.kind,
  });

  ConversionList.fromJson(core.Map _json)
      : this(
          conversion: _json.containsKey('conversion')
              ? (_json['conversion'] as core.List)
                  .map((value) => Conversion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversion != null) 'conversion': conversion!,
        if (kind != null) 'kind': kind!,
      };
}

/// A message containing the custom dimension.
class CustomDimension {
  /// Custom dimension name.
  core.String? name;

  /// Custom dimension value.
  core.String? value;

  CustomDimension({
    this.name,
    this.value,
  });

  CustomDimension.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
      };
}

/// A message containing the custom metric.
class CustomMetric {
  /// Custom metric name.
  core.String? name;

  /// Custom metric numeric value.
  core.double? value;

  CustomMetric({
    this.name,
    this.value,
  });

  CustomMetric.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          value: _json.containsKey('value')
              ? (_json['value'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
      };
}

/// File returned to
/// https://developers.google.com/search-ads/v2/reference/reports/getIdMappingFile.
typedef IdMappingFile = $Empty;

class ReportFiles {
  /// The size of this report file in bytes.
  core.String? byteCount;

  /// Use this url to download the report file.
  core.String? url;

  ReportFiles({
    this.byteCount,
    this.url,
  });

  ReportFiles.fromJson(core.Map _json)
      : this(
          byteCount: _json.containsKey('byteCount')
              ? _json['byteCount'] as core.String
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (byteCount != null) 'byteCount': byteCount!,
        if (url != null) 'url': url!,
      };
}

/// A DoubleClick Search report.
///
/// This object contains the report request, some report metadata such as
/// currency code, and the generated report rows or report files.
class Report {
  /// Asynchronous report only.
  ///
  /// Contains a list of generated report files once the report has successfully
  /// completed.
  core.List<ReportFiles>? files;

  /// Asynchronous report only.
  ///
  /// Id of the report.
  core.String? id;

  /// Asynchronous report only.
  ///
  /// True if and only if the report has completed successfully and the report
  /// files are ready to be downloaded.
  core.bool? isReportReady;

  /// Identifies this as a Report resource.
  ///
  /// Value: the fixed string `doubleclicksearch#report`.
  core.String? kind;

  /// The request that created the report.
  ///
  /// Optional fields not specified in the original request are filled with
  /// default values.
  ReportRequest? request;

  /// The number of report rows generated by the report, not including headers.
  core.int? rowCount;

  /// Synchronous report only.
  ///
  /// Generated report rows.
  core.List<ReportRow>? rows;

  /// The currency code of all monetary values produced in the report, including
  /// values that are set by users (e.g., keyword bid settings) and metrics
  /// (e.g., cost and revenue).
  ///
  /// The currency code of a report is determined by the `statisticsCurrency`
  /// field of the report request.
  core.String? statisticsCurrencyCode;

  /// If all statistics of the report are sourced from the same time zone, this
  /// would be it.
  ///
  /// Otherwise the field is unset.
  core.String? statisticsTimeZone;

  Report({
    this.files,
    this.id,
    this.isReportReady,
    this.kind,
    this.request,
    this.rowCount,
    this.rows,
    this.statisticsCurrencyCode,
    this.statisticsTimeZone,
  });

  Report.fromJson(core.Map _json)
      : this(
          files: _json.containsKey('files')
              ? (_json['files'] as core.List)
                  .map((value) => ReportFiles.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          isReportReady: _json.containsKey('isReportReady')
              ? _json['isReportReady'] as core.bool
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          request: _json.containsKey('request')
              ? ReportRequest.fromJson(
                  _json['request'] as core.Map<core.String, core.dynamic>)
              : null,
          rowCount: _json.containsKey('rowCount')
              ? _json['rowCount'] as core.int
              : null,
          rows: _json.containsKey('rows')
              ? (_json['rows'] as core.List)
                  .map((value) => ReportRow.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          statisticsCurrencyCode: _json.containsKey('statisticsCurrencyCode')
              ? _json['statisticsCurrencyCode'] as core.String
              : null,
          statisticsTimeZone: _json.containsKey('statisticsTimeZone')
              ? _json['statisticsTimeZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (files != null) 'files': files!,
        if (id != null) 'id': id!,
        if (isReportReady != null) 'isReportReady': isReportReady!,
        if (kind != null) 'kind': kind!,
        if (request != null) 'request': request!,
        if (rowCount != null) 'rowCount': rowCount!,
        if (rows != null) 'rows': rows!,
        if (statisticsCurrencyCode != null)
          'statisticsCurrencyCode': statisticsCurrencyCode!,
        if (statisticsTimeZone != null)
          'statisticsTimeZone': statisticsTimeZone!,
      };
}

/// A request object used to create a DoubleClick Search report.
class ReportApiColumnSpec {
  /// Name of a DoubleClick Search column to include in the report.
  core.String? columnName;

  /// Segments a report by a custom dimension.
  ///
  /// The report must be scoped to an advertiser or lower, and the custom
  /// dimension must already be set up in DoubleClick Search. The custom
  /// dimension name, which appears in DoubleClick Search, is case sensitive.\
  /// If used in a conversion report, returns the value of the specified custom
  /// dimension for the given conversion, if set. This column does not segment
  /// the conversion report.
  core.String? customDimensionName;

  /// Name of a custom metric to include in the report.
  ///
  /// The report must be scoped to an advertiser or lower, and the custom metric
  /// must already be set up in DoubleClick Search. The custom metric name,
  /// which appears in DoubleClick Search, is case sensitive.
  core.String? customMetricName;

  /// Inclusive day in YYYY-MM-DD format.
  ///
  /// When provided, this overrides the overall time range of the report for
  /// this column only. Must be provided together with `startDate`.
  core.String? endDate;

  /// Synchronous report only.
  ///
  /// Set to `true` to group by this column. Defaults to `false`.
  core.bool? groupByColumn;

  /// Text used to identify this column in the report output; defaults to
  /// `columnName` or `savedColumnName` when not specified.
  ///
  /// This can be used to prevent collisions between DoubleClick Search columns
  /// and saved columns with the same name.
  core.String? headerText;

  /// The platform that is used to provide data for the custom dimension.
  ///
  /// Acceptable values are "floodlight".
  core.String? platformSource;

  /// Returns metrics only for a specific type of product activity.
  ///
  /// Accepted values are: - "`sold`": returns metrics only for products that
  /// were sold - "`advertised`": returns metrics only for products that were
  /// advertised in a Shopping campaign, and that might or might not have been
  /// sold
  core.String? productReportPerspective;

  /// Name of a saved column to include in the report.
  ///
  /// The report must be scoped at advertiser or lower, and this saved column
  /// must already be created in the DoubleClick Search UI.
  core.String? savedColumnName;

  /// Inclusive date in YYYY-MM-DD format.
  ///
  /// When provided, this overrides the overall time range of the report for
  /// this column only. Must be provided together with `endDate`.
  core.String? startDate;

  ReportApiColumnSpec({
    this.columnName,
    this.customDimensionName,
    this.customMetricName,
    this.endDate,
    this.groupByColumn,
    this.headerText,
    this.platformSource,
    this.productReportPerspective,
    this.savedColumnName,
    this.startDate,
  });

  ReportApiColumnSpec.fromJson(core.Map _json)
      : this(
          columnName: _json.containsKey('columnName')
              ? _json['columnName'] as core.String
              : null,
          customDimensionName: _json.containsKey('customDimensionName')
              ? _json['customDimensionName'] as core.String
              : null,
          customMetricName: _json.containsKey('customMetricName')
              ? _json['customMetricName'] as core.String
              : null,
          endDate: _json.containsKey('endDate')
              ? _json['endDate'] as core.String
              : null,
          groupByColumn: _json.containsKey('groupByColumn')
              ? _json['groupByColumn'] as core.bool
              : null,
          headerText: _json.containsKey('headerText')
              ? _json['headerText'] as core.String
              : null,
          platformSource: _json.containsKey('platformSource')
              ? _json['platformSource'] as core.String
              : null,
          productReportPerspective:
              _json.containsKey('productReportPerspective')
                  ? _json['productReportPerspective'] as core.String
                  : null,
          savedColumnName: _json.containsKey('savedColumnName')
              ? _json['savedColumnName'] as core.String
              : null,
          startDate: _json.containsKey('startDate')
              ? _json['startDate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnName != null) 'columnName': columnName!,
        if (customDimensionName != null)
          'customDimensionName': customDimensionName!,
        if (customMetricName != null) 'customMetricName': customMetricName!,
        if (endDate != null) 'endDate': endDate!,
        if (groupByColumn != null) 'groupByColumn': groupByColumn!,
        if (headerText != null) 'headerText': headerText!,
        if (platformSource != null) 'platformSource': platformSource!,
        if (productReportPerspective != null)
          'productReportPerspective': productReportPerspective!,
        if (savedColumnName != null) 'savedColumnName': savedColumnName!,
        if (startDate != null) 'startDate': startDate!,
      };
}

class ReportRequestFilters {
  /// Column to perform the filter on.
  ///
  /// This can be a DoubleClick Search column or a saved column.
  ReportApiColumnSpec? column;

  /// Operator to use in the filter.
  ///
  /// See the filter reference for a list of available operators.
  core.String? operator;

  /// A list of values to filter the column value against.\ The maximum number
  /// of filter values per request is 300.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object?>? values;

  ReportRequestFilters({
    this.column,
    this.operator,
    this.values,
  });

  ReportRequestFilters.fromJson(core.Map _json)
      : this(
          column: _json.containsKey('column')
              ? ReportApiColumnSpec.fromJson(
                  _json['column'] as core.Map<core.String, core.dynamic>)
              : null,
          operator: _json.containsKey('operator')
              ? _json['operator'] as core.String
              : null,
          values:
              _json.containsKey('values') ? _json['values'] as core.List : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (column != null) 'column': column!,
        if (operator != null) 'operator': operator!,
        if (values != null) 'values': values!,
      };
}

class ReportRequestOrderBy {
  /// Column to perform the sort on.
  ///
  /// This can be a DoubleClick Search-defined column or a saved column.
  ReportApiColumnSpec? column;

  /// The sort direction, which is either `ascending` or `descending`.
  core.String? sortOrder;

  ReportRequestOrderBy({
    this.column,
    this.sortOrder,
  });

  ReportRequestOrderBy.fromJson(core.Map _json)
      : this(
          column: _json.containsKey('column')
              ? ReportApiColumnSpec.fromJson(
                  _json['column'] as core.Map<core.String, core.dynamic>)
              : null,
          sortOrder: _json.containsKey('sortOrder')
              ? _json['sortOrder'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (column != null) 'column': column!,
        if (sortOrder != null) 'sortOrder': sortOrder!,
      };
}

/// The reportScope is a set of IDs that are used to determine which subset of
/// entities will be returned in the report.
///
/// The full lineage of IDs from the lowest scoped level desired up through
/// agency is required.
class ReportRequestReportScope {
  /// DS ad group ID.
  core.String? adGroupId;

  /// DS ad ID.
  core.String? adId;

  /// DS advertiser ID.
  core.String? advertiserId;

  /// DS agency ID.
  core.String? agencyId;

  /// DS campaign ID.
  core.String? campaignId;

  /// DS engine account ID.
  core.String? engineAccountId;

  /// DS keyword ID.
  core.String? keywordId;

  ReportRequestReportScope({
    this.adGroupId,
    this.adId,
    this.advertiserId,
    this.agencyId,
    this.campaignId,
    this.engineAccountId,
    this.keywordId,
  });

  ReportRequestReportScope.fromJson(core.Map _json)
      : this(
          adGroupId: _json.containsKey('adGroupId')
              ? _json['adGroupId'] as core.String
              : null,
          adId: _json.containsKey('adId') ? _json['adId'] as core.String : null,
          advertiserId: _json.containsKey('advertiserId')
              ? _json['advertiserId'] as core.String
              : null,
          agencyId: _json.containsKey('agencyId')
              ? _json['agencyId'] as core.String
              : null,
          campaignId: _json.containsKey('campaignId')
              ? _json['campaignId'] as core.String
              : null,
          engineAccountId: _json.containsKey('engineAccountId')
              ? _json['engineAccountId'] as core.String
              : null,
          keywordId: _json.containsKey('keywordId')
              ? _json['keywordId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adGroupId != null) 'adGroupId': adGroupId!,
        if (adId != null) 'adId': adId!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (agencyId != null) 'agencyId': agencyId!,
        if (campaignId != null) 'campaignId': campaignId!,
        if (engineAccountId != null) 'engineAccountId': engineAccountId!,
        if (keywordId != null) 'keywordId': keywordId!,
      };
}

/// If metrics are requested in a report, this argument will be used to restrict
/// the metrics to a specific time range.
class ReportRequestTimeRange {
  /// Inclusive UTC timestamp in RFC format, e.g., `2013-07-16T10:16:23.555Z`.
  ///
  /// See additional references on how changed attribute reports work.
  core.String? changedAttributesSinceTimestamp;

  /// Inclusive UTC timestamp in RFC format, e.g., `2013-07-16T10:16:23.555Z`.
  ///
  /// See additional references on how changed metrics reports work.
  core.String? changedMetricsSinceTimestamp;

  /// Inclusive date in YYYY-MM-DD format.
  core.String? endDate;

  /// Inclusive date in YYYY-MM-DD format.
  core.String? startDate;

  ReportRequestTimeRange({
    this.changedAttributesSinceTimestamp,
    this.changedMetricsSinceTimestamp,
    this.endDate,
    this.startDate,
  });

  ReportRequestTimeRange.fromJson(core.Map _json)
      : this(
          changedAttributesSinceTimestamp:
              _json.containsKey('changedAttributesSinceTimestamp')
                  ? _json['changedAttributesSinceTimestamp'] as core.String
                  : null,
          changedMetricsSinceTimestamp:
              _json.containsKey('changedMetricsSinceTimestamp')
                  ? _json['changedMetricsSinceTimestamp'] as core.String
                  : null,
          endDate: _json.containsKey('endDate')
              ? _json['endDate'] as core.String
              : null,
          startDate: _json.containsKey('startDate')
              ? _json['startDate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (changedAttributesSinceTimestamp != null)
          'changedAttributesSinceTimestamp': changedAttributesSinceTimestamp!,
        if (changedMetricsSinceTimestamp != null)
          'changedMetricsSinceTimestamp': changedMetricsSinceTimestamp!,
        if (endDate != null) 'endDate': endDate!,
        if (startDate != null) 'startDate': startDate!,
      };
}

/// A request object used to create a DoubleClick Search report.
class ReportRequest {
  /// The columns to include in the report.
  ///
  /// This includes both DoubleClick Search columns and saved columns. For
  /// DoubleClick Search columns, only the `columnName` parameter is required.
  /// For saved columns only the `savedColumnName` parameter is required. Both
  /// `columnName` and `savedColumnName` cannot be set in the same stanza.\ The
  /// maximum number of columns per request is 300.
  core.List<ReportApiColumnSpec>? columns;

  /// Format that the report should be returned in.
  ///
  /// Currently `csv` or `tsv` is supported.
  core.String? downloadFormat;

  /// A list of filters to be applied to the report.\ The maximum number of
  /// filters per request is 300.
  core.List<ReportRequestFilters>? filters;

  /// Determines if removed entities should be included in the report.
  ///
  /// Defaults to `false`. Deprecated, please use `includeRemovedEntities`
  /// instead.
  core.bool? includeDeletedEntities;

  /// Determines if removed entities should be included in the report.
  ///
  /// Defaults to `false`.
  core.bool? includeRemovedEntities;

  /// Asynchronous report only.
  ///
  /// The maximum number of rows per report file. A large report is split into
  /// many files based on this field. Acceptable values are `1000000` to
  /// `100000000`, inclusive.
  core.int? maxRowsPerFile;

  /// Synchronous report only.
  ///
  /// A list of columns and directions defining sorting to be performed on the
  /// report rows.\ The maximum number of orderings per request is 300.
  core.List<ReportRequestOrderBy>? orderBy;

  /// The reportScope is a set of IDs that are used to determine which subset of
  /// entities will be returned in the report.
  ///
  /// The full lineage of IDs from the lowest scoped level desired up through
  /// agency is required.
  ReportRequestReportScope? reportScope;

  /// Determines the type of rows that are returned in the report.
  ///
  /// For example, if you specify `reportType: keyword`, each row in the report
  /// will contain data about a keyword. See the \[Types of
  /// Reports\](/search-ads/v2/report-types/) reference for the columns that are
  /// available for each type.
  core.String? reportType;

  /// Synchronous report only.
  ///
  /// The maximum number of rows to return; additional rows are dropped.
  /// Acceptable values are `0` to `10000`, inclusive. Defaults to `10000`.
  core.int? rowCount;

  /// Synchronous report only.
  ///
  /// Zero-based index of the first row to return. Acceptable values are `0` to
  /// `50000`, inclusive. Defaults to `0`.
  core.int? startRow;

  /// Specifies the currency in which monetary will be returned.
  ///
  /// Possible values are: `usd`, `agency` (valid if the report is scoped to
  /// agency or lower), `advertiser` (valid if the report is scoped to *
  /// advertiser or lower), or `account` (valid if the report is scoped to
  /// engine account or lower).
  core.String? statisticsCurrency;

  /// If metrics are requested in a report, this argument will be used to
  /// restrict the metrics to a specific time range.
  ReportRequestTimeRange? timeRange;

  /// If `true`, the report would only be created if all the requested stat data
  /// are sourced from a single timezone.
  ///
  /// Defaults to `false`.
  core.bool? verifySingleTimeZone;

  ReportRequest({
    this.columns,
    this.downloadFormat,
    this.filters,
    this.includeDeletedEntities,
    this.includeRemovedEntities,
    this.maxRowsPerFile,
    this.orderBy,
    this.reportScope,
    this.reportType,
    this.rowCount,
    this.startRow,
    this.statisticsCurrency,
    this.timeRange,
    this.verifySingleTimeZone,
  });

  ReportRequest.fromJson(core.Map _json)
      : this(
          columns: _json.containsKey('columns')
              ? (_json['columns'] as core.List)
                  .map((value) => ReportApiColumnSpec.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          downloadFormat: _json.containsKey('downloadFormat')
              ? _json['downloadFormat'] as core.String
              : null,
          filters: _json.containsKey('filters')
              ? (_json['filters'] as core.List)
                  .map((value) => ReportRequestFilters.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          includeDeletedEntities: _json.containsKey('includeDeletedEntities')
              ? _json['includeDeletedEntities'] as core.bool
              : null,
          includeRemovedEntities: _json.containsKey('includeRemovedEntities')
              ? _json['includeRemovedEntities'] as core.bool
              : null,
          maxRowsPerFile: _json.containsKey('maxRowsPerFile')
              ? _json['maxRowsPerFile'] as core.int
              : null,
          orderBy: _json.containsKey('orderBy')
              ? (_json['orderBy'] as core.List)
                  .map((value) => ReportRequestOrderBy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          reportScope: _json.containsKey('reportScope')
              ? ReportRequestReportScope.fromJson(
                  _json['reportScope'] as core.Map<core.String, core.dynamic>)
              : null,
          reportType: _json.containsKey('reportType')
              ? _json['reportType'] as core.String
              : null,
          rowCount: _json.containsKey('rowCount')
              ? _json['rowCount'] as core.int
              : null,
          startRow: _json.containsKey('startRow')
              ? _json['startRow'] as core.int
              : null,
          statisticsCurrency: _json.containsKey('statisticsCurrency')
              ? _json['statisticsCurrency'] as core.String
              : null,
          timeRange: _json.containsKey('timeRange')
              ? ReportRequestTimeRange.fromJson(
                  _json['timeRange'] as core.Map<core.String, core.dynamic>)
              : null,
          verifySingleTimeZone: _json.containsKey('verifySingleTimeZone')
              ? _json['verifySingleTimeZone'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columns != null) 'columns': columns!,
        if (downloadFormat != null) 'downloadFormat': downloadFormat!,
        if (filters != null) 'filters': filters!,
        if (includeDeletedEntities != null)
          'includeDeletedEntities': includeDeletedEntities!,
        if (includeRemovedEntities != null)
          'includeRemovedEntities': includeRemovedEntities!,
        if (maxRowsPerFile != null) 'maxRowsPerFile': maxRowsPerFile!,
        if (orderBy != null) 'orderBy': orderBy!,
        if (reportScope != null) 'reportScope': reportScope!,
        if (reportType != null) 'reportType': reportType!,
        if (rowCount != null) 'rowCount': rowCount!,
        if (startRow != null) 'startRow': startRow!,
        if (statisticsCurrency != null)
          'statisticsCurrency': statisticsCurrency!,
        if (timeRange != null) 'timeRange': timeRange!,
        if (verifySingleTimeZone != null)
          'verifySingleTimeZone': verifySingleTimeZone!,
      };
}

/// A row in a DoubleClick Search report.
///
/// Indicates the columns that are represented in this row. That is, each key
/// corresponds to a column with a non-empty cell in this row.
class ReportRow extends collection.MapBase<core.String, core.Object?> {
  final _innerMap = <core.String, core.Object?>{};

  ReportRow();

  ReportRow.fromJson(core.Map<core.String, core.dynamic> _json) {
    _json.forEach((core.String key, value) {
      this[key] = value;
    });
  }

  @core.override
  core.Object? operator [](core.Object? key) => _innerMap[key];

  @core.override
  void operator []=(core.String key, core.Object? value) {
    _innerMap[key] = value;
  }

  @core.override
  void clear() {
    _innerMap.clear();
  }

  @core.override
  core.Iterable<core.String> get keys => _innerMap.keys;

  @core.override
  core.Object? remove(core.Object? key) => _innerMap.remove(key);
}

/// A saved column
class SavedColumn {
  /// Identifies this as a SavedColumn resource.
  ///
  /// Value: the fixed string doubleclicksearch#savedColumn.
  core.String? kind;

  /// The name of the saved column.
  core.String? savedColumnName;

  /// The type of data this saved column will produce.
  core.String? type;

  SavedColumn({
    this.kind,
    this.savedColumnName,
    this.type,
  });

  SavedColumn.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          savedColumnName: _json.containsKey('savedColumnName')
              ? _json['savedColumnName'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (savedColumnName != null) 'savedColumnName': savedColumnName!,
        if (type != null) 'type': type!,
      };
}

/// A list of saved columns.
///
/// Advertisers create saved columns to report on Floodlight activities, Google
/// Analytics goals, or custom KPIs. To request reports with saved columns,
/// you'll need the saved column names that are available from this list.
class SavedColumnList {
  /// The saved columns being requested.
  core.List<SavedColumn>? items;

  /// Identifies this as a SavedColumnList resource.
  ///
  /// Value: the fixed string doubleclicksearch#savedColumnList.
  core.String? kind;

  SavedColumnList({
    this.items,
    this.kind,
  });

  SavedColumnList.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => SavedColumn.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
      };
}

/// The request to update availability.
class UpdateAvailabilityRequest {
  /// The availabilities being requested.
  core.List<Availability>? availabilities;

  UpdateAvailabilityRequest({
    this.availabilities,
  });

  UpdateAvailabilityRequest.fromJson(core.Map _json)
      : this(
          availabilities: _json.containsKey('availabilities')
              ? (_json['availabilities'] as core.List)
                  .map((value) => Availability.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availabilities != null) 'availabilities': availabilities!,
      };
}

/// The response to a update availability request.
class UpdateAvailabilityResponse {
  /// The availabilities being returned.
  core.List<Availability>? availabilities;

  UpdateAvailabilityResponse({
    this.availabilities,
  });

  UpdateAvailabilityResponse.fromJson(core.Map _json)
      : this(
          availabilities: _json.containsKey('availabilities')
              ? (_json['availabilities'] as core.List)
                  .map((value) => Availability.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availabilities != null) 'availabilities': availabilities!,
      };
}
