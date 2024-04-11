// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Solar API - v1
///
/// Solar API.
///
/// For more information, see
/// <https://developers.google.com/maps/documentation/solar>
///
/// Create an instance of [SolarApi] to access these resources:
///
/// - [BuildingInsightsResource]
/// - [DataLayersResource]
/// - [GeoTiffResource]
library;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Solar API.
class SolarApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  BuildingInsightsResource get buildingInsights =>
      BuildingInsightsResource(_requester);
  DataLayersResource get dataLayers => DataLayersResource(_requester);
  GeoTiffResource get geoTiff => GeoTiffResource(_requester);

  SolarApi(http.Client client,
      {core.String rootUrl = 'https://solar.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class BuildingInsightsResource {
  final commons.ApiRequester _requester;

  BuildingInsightsResource(commons.ApiRequester client) : _requester = client;

  /// Locates the closest building to a query point.
  ///
  /// Returns an error with code `NOT_FOUND` if there are no buildings within
  /// approximately 50m of the query point.
  ///
  /// Request parameters:
  ///
  /// [location_latitude] - The latitude in degrees. It must be in the range
  /// \[-90.0, +90.0\].
  ///
  /// [location_longitude] - The longitude in degrees. It must be in the range
  /// \[-180.0, +180.0\].
  ///
  /// [requiredQuality] - Optional. The minimum quality level allowed in the
  /// results. No result with lower quality than this will be returned. Not
  /// specifying this is equivalent to restricting to HIGH quality only.
  /// Possible string values are:
  /// - "IMAGERY_QUALITY_UNSPECIFIED" : No quality is known.
  /// - "HIGH" : The underlying imagery and DSM data were processed at 0.1
  /// m/pixel.
  /// - "MEDIUM" : The underlying imagery and DSM data were processed at 0.25
  /// m/pixel.
  /// - "LOW" : The underlying imagery and DSM data were processed at 0.5
  /// m/pixel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BuildingInsights].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BuildingInsights> findClosest({
    core.double? location_latitude,
    core.double? location_longitude,
    core.String? requiredQuality,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (location_latitude != null)
        'location.latitude': ['${location_latitude}'],
      if (location_longitude != null)
        'location.longitude': ['${location_longitude}'],
      if (requiredQuality != null) 'requiredQuality': [requiredQuality],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/buildingInsights:findClosest';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BuildingInsights.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class DataLayersResource {
  final commons.ApiRequester _requester;

  DataLayersResource(commons.ApiRequester client) : _requester = client;

  /// Gets solar information for a region surrounding a location.
  ///
  /// Returns an error with code `NOT_FOUND` if the location is outside the
  /// coverage area.
  ///
  /// Request parameters:
  ///
  /// [location_latitude] - The latitude in degrees. It must be in the range
  /// \[-90.0, +90.0\].
  ///
  /// [location_longitude] - The longitude in degrees. It must be in the range
  /// \[-180.0, +180.0\].
  ///
  /// [pixelSizeMeters] - Optional. The minimum scale, in meters per pixel, of
  /// the data to return. Values of 0.1 (the default, if this field is not set
  /// explicitly), 0.25, 0.5, and 1.0 are supported. Imagery components whose
  /// normal resolution is less than `pixel_size_meters` will be returned at the
  /// resolution specified by `pixel_size_meters`; imagery components whose
  /// normal resolution is equal to or greater than `pixel_size_meters` will be
  /// returned at that normal resolution.
  ///
  /// [radiusMeters] - Required. The radius, in meters, defining the region
  /// surrounding that centre point for which data should be returned. The
  /// limitations on this value are: * Any value up to 100m can always be
  /// specified. * Values over 100m can be specified, as long as `radius_meters`
  /// \<= `pixel_size_meters * 1000`. * However, for values over 175m, the
  /// `DataLayerView` in the request must not include monthly flux or hourly
  /// shade.
  ///
  /// [requiredQuality] - Optional. The minimum quality level allowed in the
  /// results. No result with lower quality than this will be returned. Not
  /// specifying this is equivalent to restricting to HIGH quality only.
  /// Possible string values are:
  /// - "IMAGERY_QUALITY_UNSPECIFIED" : No quality is known.
  /// - "HIGH" : The underlying imagery and DSM data were processed at 0.1
  /// m/pixel.
  /// - "MEDIUM" : The underlying imagery and DSM data were processed at 0.25
  /// m/pixel.
  /// - "LOW" : The underlying imagery and DSM data were processed at 0.5
  /// m/pixel.
  ///
  /// [view] - Optional. The desired subset of the data to return.
  /// Possible string values are:
  /// - "DATA_LAYER_VIEW_UNSPECIFIED" : Equivalent to FULL.
  /// - "DSM_LAYER" : Get the DSM only.
  /// - "IMAGERY_LAYERS" : Get the DSM, RGB, and mask.
  /// - "IMAGERY_AND_ANNUAL_FLUX_LAYERS" : Get the DSM, RGB, mask, and annual
  /// flux.
  /// - "IMAGERY_AND_ALL_FLUX_LAYERS" : Get the DSM, RGB, mask, annual flux, and
  /// monthly flux.
  /// - "FULL_LAYERS" : Get all data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DataLayers].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DataLayers> get({
    core.double? location_latitude,
    core.double? location_longitude,
    core.double? pixelSizeMeters,
    core.double? radiusMeters,
    core.String? requiredQuality,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (location_latitude != null)
        'location.latitude': ['${location_latitude}'],
      if (location_longitude != null)
        'location.longitude': ['${location_longitude}'],
      if (pixelSizeMeters != null) 'pixelSizeMeters': ['${pixelSizeMeters}'],
      if (radiusMeters != null) 'radiusMeters': ['${radiusMeters}'],
      if (requiredQuality != null) 'requiredQuality': [requiredQuality],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/dataLayers:get';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DataLayers.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class GeoTiffResource {
  final commons.ApiRequester _requester;

  GeoTiffResource(commons.ApiRequester client) : _requester = client;

  /// Returns an image by its ID.
  ///
  /// Request parameters:
  ///
  /// [id] - Required. The ID of the asset being requested.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> get({
    core.String? id,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (id != null) 'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/geoTiff:get';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Response message for `Solar.FindClosestBuildingInsights`.
///
/// Information about the location, dimensions, and solar potential of a
/// building.
class BuildingInsights {
  /// Administrative area 1 (e.g., in the US, the state) that contains this
  /// building.
  ///
  /// For example, in the US, the abbreviation might be "MA" or "CA."
  core.String? administrativeArea;

  /// The bounding box of the building.
  LatLngBox? boundingBox;

  /// A point near the center of the building.
  LatLng? center;

  /// Date that the underlying imagery was acquired.
  ///
  /// This is approximate.
  Date? imageryDate;

  /// When processing was completed on this imagery.
  Date? imageryProcessedDate;

  /// The quality of the imagery used to compute the data for this building.
  /// Possible string values are:
  /// - "IMAGERY_QUALITY_UNSPECIFIED" : No quality is known.
  /// - "HIGH" : The underlying imagery and DSM data were processed at 0.1
  /// m/pixel.
  /// - "MEDIUM" : The underlying imagery and DSM data were processed at 0.25
  /// m/pixel.
  /// - "LOW" : The underlying imagery and DSM data were processed at 0.5
  /// m/pixel.
  core.String? imageryQuality;

  /// The resource name for the building, of the format `building/`.
  core.String? name;

  /// Postal code (e.g., US zip code) this building is contained by.
  core.String? postalCode;

  /// Region code for the country (or region) this building is in.
  core.String? regionCode;

  /// Solar potential of the building.
  SolarPotential? solarPotential;

  /// Statistical area (e.g., US census tract) this building is in.
  core.String? statisticalArea;

  BuildingInsights({
    this.administrativeArea,
    this.boundingBox,
    this.center,
    this.imageryDate,
    this.imageryProcessedDate,
    this.imageryQuality,
    this.name,
    this.postalCode,
    this.regionCode,
    this.solarPotential,
    this.statisticalArea,
  });

  BuildingInsights.fromJson(core.Map json_)
      : this(
          administrativeArea: json_.containsKey('administrativeArea')
              ? json_['administrativeArea'] as core.String
              : null,
          boundingBox: json_.containsKey('boundingBox')
              ? LatLngBox.fromJson(
                  json_['boundingBox'] as core.Map<core.String, core.dynamic>)
              : null,
          center: json_.containsKey('center')
              ? LatLng.fromJson(
                  json_['center'] as core.Map<core.String, core.dynamic>)
              : null,
          imageryDate: json_.containsKey('imageryDate')
              ? Date.fromJson(
                  json_['imageryDate'] as core.Map<core.String, core.dynamic>)
              : null,
          imageryProcessedDate: json_.containsKey('imageryProcessedDate')
              ? Date.fromJson(json_['imageryProcessedDate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          imageryQuality: json_.containsKey('imageryQuality')
              ? json_['imageryQuality'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          postalCode: json_.containsKey('postalCode')
              ? json_['postalCode'] as core.String
              : null,
          regionCode: json_.containsKey('regionCode')
              ? json_['regionCode'] as core.String
              : null,
          solarPotential: json_.containsKey('solarPotential')
              ? SolarPotential.fromJson(json_['solarPotential']
                  as core.Map<core.String, core.dynamic>)
              : null,
          statisticalArea: json_.containsKey('statisticalArea')
              ? json_['statisticalArea'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (administrativeArea != null)
          'administrativeArea': administrativeArea!,
        if (boundingBox != null) 'boundingBox': boundingBox!,
        if (center != null) 'center': center!,
        if (imageryDate != null) 'imageryDate': imageryDate!,
        if (imageryProcessedDate != null)
          'imageryProcessedDate': imageryProcessedDate!,
        if (imageryQuality != null) 'imageryQuality': imageryQuality!,
        if (name != null) 'name': name!,
        if (postalCode != null) 'postalCode': postalCode!,
        if (regionCode != null) 'regionCode': regionCode!,
        if (solarPotential != null) 'solarPotential': solarPotential!,
        if (statisticalArea != null) 'statisticalArea': statisticalArea!,
      };
}

/// Cost and benefit of an outright purchase of a particular configuration of
/// solar panels with a particular electricity usage.
class CashPurchaseSavings {
  /// Initial cost before tax incentives: the amount that must be paid
  /// out-of-pocket.
  ///
  /// Contrast with `upfront_cost`, which is after tax incentives.
  Money? outOfPocketCost;

  /// Number of years until payback occurs.
  ///
  /// A negative value means payback never occurs within the lifetime period.
  core.double? paybackYears;

  /// The value of all tax rebates.
  Money? rebateValue;

  /// How much is saved (or not) over the lifetime period.
  SavingsOverTime? savings;

  /// Initial cost after tax incentives: it's the amount that must be paid
  /// during first year.
  ///
  /// Contrast with `out_of_pocket_cost`, which is before tax incentives.
  Money? upfrontCost;

  CashPurchaseSavings({
    this.outOfPocketCost,
    this.paybackYears,
    this.rebateValue,
    this.savings,
    this.upfrontCost,
  });

  CashPurchaseSavings.fromJson(core.Map json_)
      : this(
          outOfPocketCost: json_.containsKey('outOfPocketCost')
              ? Money.fromJson(json_['outOfPocketCost']
                  as core.Map<core.String, core.dynamic>)
              : null,
          paybackYears: json_.containsKey('paybackYears')
              ? (json_['paybackYears'] as core.num).toDouble()
              : null,
          rebateValue: json_.containsKey('rebateValue')
              ? Money.fromJson(
                  json_['rebateValue'] as core.Map<core.String, core.dynamic>)
              : null,
          savings: json_.containsKey('savings')
              ? SavingsOverTime.fromJson(
                  json_['savings'] as core.Map<core.String, core.dynamic>)
              : null,
          upfrontCost: json_.containsKey('upfrontCost')
              ? Money.fromJson(
                  json_['upfrontCost'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (outOfPocketCost != null) 'outOfPocketCost': outOfPocketCost!,
        if (paybackYears != null) 'paybackYears': paybackYears!,
        if (rebateValue != null) 'rebateValue': rebateValue!,
        if (savings != null) 'savings': savings!,
        if (upfrontCost != null) 'upfrontCost': upfrontCost!,
      };
}

/// Information about the solar potential of a region.
///
/// The actual data are contained in a number of GeoTIFF files covering the
/// requested region, for which this message contains URLs: Each string in the
/// `DataLayers` message contains a URL from which the corresponding GeoTIFF can
/// be fetched. These URLs are valid for a few hours after they've been
/// generated. Most of the GeoTIFF files are at a resolution of 0.1m/pixel, but
/// the monthly flux file is at 0.5m/pixel, and the hourly shade files are at
/// 1m/pixel. If a `pixel_size_meters` value was specified in the
/// `GetDataLayersRequest`, then the minimum resolution in the GeoTIFF files
/// will be that value.
class DataLayers {
  /// The URL for the annual flux map (annual sunlight on roofs) of the region.
  ///
  /// Values are kWh/kW/year. This is *unmasked flux*: flux is computed for
  /// every location, not just building rooftops. Invalid locations are stored
  /// as -9999: locations outside our coverage area will be invalid, and a few
  /// locations inside the coverage area, where we were unable to calculate
  /// flux, will also be invalid.
  core.String? annualFluxUrl;

  /// The URL for an image of the DSM (Digital Surface Model) of the region.
  ///
  /// Values are in meters above EGM96 geoid (i.e., sea level). Invalid
  /// locations (where we don't have data) are stored as -9999.
  core.String? dsmUrl;

  /// Twelve URLs for hourly shade, corresponding to January...December, in
  /// order.
  ///
  /// Each GeoTIFF will contain 24 bands, corresponding to the 24 hours of the
  /// day. Each pixel is a 32 bit integer, corresponding to the (up to) 31 days
  /// of that month; a 1 bit means that the corresponding location is able to
  /// see the sun at that day, of that hour, of that month. Invalid locations
  /// are stored as -9999 (since this is negative, it has bit 31 set, and no
  /// valid value could have bit 31 set as that would correspond to the 32nd day
  /// of the month). An example may be useful. If you want to know whether a
  /// point (at pixel location (x, y)) saw sun at 4pm on the 22nd of June you
  /// would: 1. fetch the sixth URL in this list (corresponding to June). 1.
  /// look up the 17th channel (corresponding to 4pm). 1. read the 32-bit value
  /// at (x, y). 1. read bit 21 of the value (corresponding to the 22nd of the
  /// month). 1. if that bit is a 1, then that spot saw the sun at 4pm 22 June.
  /// More formally: Given `month` (1-12), `day` (1...month max; February has 28
  /// days) and `hour` (0-23), the shade/sun for that month/day/hour at a
  /// position `(x, y)` is the bit ``` (hourly_shade[month - 1])(x, y)[hour] &
  /// (1 << (day - 1)) ``` where `(x, y)` is spatial indexing, `[month - 1]`
  /// refers to fetching the `month - 1`st URL (indexing from zero), `[hour]` is
  /// indexing into the channels, and a final non-zero result means "sunny".
  /// There are no leap days, and DST doesn't exist (all days are 24 hours long;
  /// noon is always "standard time" noon).
  core.List<core.String>? hourlyShadeUrls;

  /// When the source imagery (from which all the other data are derived) in
  /// this region was taken.
  ///
  /// It is necessarily somewhat approximate, as the images may have been taken
  /// over more than one day.
  Date? imageryDate;

  /// When processing was completed on this imagery.
  Date? imageryProcessedDate;

  /// The quality of the result's imagery.
  /// Possible string values are:
  /// - "IMAGERY_QUALITY_UNSPECIFIED" : No quality is known.
  /// - "HIGH" : The underlying imagery and DSM data were processed at 0.1
  /// m/pixel.
  /// - "MEDIUM" : The underlying imagery and DSM data were processed at 0.25
  /// m/pixel.
  /// - "LOW" : The underlying imagery and DSM data were processed at 0.5
  /// m/pixel.
  core.String? imageryQuality;

  /// The URL for the building mask image: one bit per pixel saying whether that
  /// pixel is considered to be part of a rooftop or not.
  core.String? maskUrl;

  /// The URL for the monthly flux map (sunlight on roofs, broken down by month)
  /// of the region.
  ///
  /// Values are kWh/kW/year. The GeoTIFF pointed to by this URL will contain
  /// twelve bands, corresponding to January...December, in order.
  core.String? monthlyFluxUrl;

  /// The URL for an image of RGB data (aerial photo) of the region.
  core.String? rgbUrl;

  DataLayers({
    this.annualFluxUrl,
    this.dsmUrl,
    this.hourlyShadeUrls,
    this.imageryDate,
    this.imageryProcessedDate,
    this.imageryQuality,
    this.maskUrl,
    this.monthlyFluxUrl,
    this.rgbUrl,
  });

  DataLayers.fromJson(core.Map json_)
      : this(
          annualFluxUrl: json_.containsKey('annualFluxUrl')
              ? json_['annualFluxUrl'] as core.String
              : null,
          dsmUrl: json_.containsKey('dsmUrl')
              ? json_['dsmUrl'] as core.String
              : null,
          hourlyShadeUrls: json_.containsKey('hourlyShadeUrls')
              ? (json_['hourlyShadeUrls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          imageryDate: json_.containsKey('imageryDate')
              ? Date.fromJson(
                  json_['imageryDate'] as core.Map<core.String, core.dynamic>)
              : null,
          imageryProcessedDate: json_.containsKey('imageryProcessedDate')
              ? Date.fromJson(json_['imageryProcessedDate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          imageryQuality: json_.containsKey('imageryQuality')
              ? json_['imageryQuality'] as core.String
              : null,
          maskUrl: json_.containsKey('maskUrl')
              ? json_['maskUrl'] as core.String
              : null,
          monthlyFluxUrl: json_.containsKey('monthlyFluxUrl')
              ? json_['monthlyFluxUrl'] as core.String
              : null,
          rgbUrl: json_.containsKey('rgbUrl')
              ? json_['rgbUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annualFluxUrl != null) 'annualFluxUrl': annualFluxUrl!,
        if (dsmUrl != null) 'dsmUrl': dsmUrl!,
        if (hourlyShadeUrls != null) 'hourlyShadeUrls': hourlyShadeUrls!,
        if (imageryDate != null) 'imageryDate': imageryDate!,
        if (imageryProcessedDate != null)
          'imageryProcessedDate': imageryProcessedDate!,
        if (imageryQuality != null) 'imageryQuality': imageryQuality!,
        if (maskUrl != null) 'maskUrl': maskUrl!,
        if (monthlyFluxUrl != null) 'monthlyFluxUrl': monthlyFluxUrl!,
        if (rgbUrl != null) 'rgbUrl': rgbUrl!,
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

/// Cost and benefit of using a loan to buy a particular configuration of solar
/// panels with a particular electricity usage.
class FinancedPurchaseSavings {
  /// Annual loan payments.
  Money? annualLoanPayment;

  /// The interest rate on loans assumed in this set of calculations.
  core.double? loanInterestRate;

  /// The value of all tax rebates (including Federal Investment Tax Credit
  /// (ITC)).
  Money? rebateValue;

  /// How much is saved (or not) over the lifetime period.
  SavingsOverTime? savings;

  FinancedPurchaseSavings({
    this.annualLoanPayment,
    this.loanInterestRate,
    this.rebateValue,
    this.savings,
  });

  FinancedPurchaseSavings.fromJson(core.Map json_)
      : this(
          annualLoanPayment: json_.containsKey('annualLoanPayment')
              ? Money.fromJson(json_['annualLoanPayment']
                  as core.Map<core.String, core.dynamic>)
              : null,
          loanInterestRate: json_.containsKey('loanInterestRate')
              ? (json_['loanInterestRate'] as core.num).toDouble()
              : null,
          rebateValue: json_.containsKey('rebateValue')
              ? Money.fromJson(
                  json_['rebateValue'] as core.Map<core.String, core.dynamic>)
              : null,
          savings: json_.containsKey('savings')
              ? SavingsOverTime.fromJson(
                  json_['savings'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annualLoanPayment != null) 'annualLoanPayment': annualLoanPayment!,
        if (loanInterestRate != null) 'loanInterestRate': loanInterestRate!,
        if (rebateValue != null) 'rebateValue': rebateValue!,
        if (savings != null) 'savings': savings!,
      };
}

/// Analysis of the cost and benefits of the optimum solar layout for a
/// particular electric bill size.
class FinancialAnalysis {
  /// How much electricity the house uses in an average month, based on the bill
  /// size and the local electricity rates.
  core.double? averageKwhPerMonth;

  /// Cost and benefit of buying the solar panels with cash.
  CashPurchaseSavings? cashPurchaseSavings;

  /// Whether this is the bill size selected to be the default bill for the area
  /// this building is in.
  ///
  /// Exactly one `FinancialAnalysis` in `BuildingSolarPotential` should have
  /// `default_bill` set.
  core.bool? defaultBill;

  /// Cost and benefit of buying the solar panels by financing the purchase.
  FinancedPurchaseSavings? financedPurchaseSavings;

  /// Financial information that applies regardless of the financing method
  /// used.
  FinancialDetails? financialDetails;

  /// Cost and benefit of leasing the solar panels.
  LeasingSavings? leasingSavings;

  /// The monthly electric bill this analysis assumes.
  Money? monthlyBill;

  /// Index in solar_panel_configs of the optimum solar layout for this bill
  /// size.
  ///
  /// This can be -1 indicating that there is no layout. In this case, the
  /// remaining submessages will be omitted.
  core.int? panelConfigIndex;

  FinancialAnalysis({
    this.averageKwhPerMonth,
    this.cashPurchaseSavings,
    this.defaultBill,
    this.financedPurchaseSavings,
    this.financialDetails,
    this.leasingSavings,
    this.monthlyBill,
    this.panelConfigIndex,
  });

  FinancialAnalysis.fromJson(core.Map json_)
      : this(
          averageKwhPerMonth: json_.containsKey('averageKwhPerMonth')
              ? (json_['averageKwhPerMonth'] as core.num).toDouble()
              : null,
          cashPurchaseSavings: json_.containsKey('cashPurchaseSavings')
              ? CashPurchaseSavings.fromJson(json_['cashPurchaseSavings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          defaultBill: json_.containsKey('defaultBill')
              ? json_['defaultBill'] as core.bool
              : null,
          financedPurchaseSavings: json_.containsKey('financedPurchaseSavings')
              ? FinancedPurchaseSavings.fromJson(
                  json_['financedPurchaseSavings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          financialDetails: json_.containsKey('financialDetails')
              ? FinancialDetails.fromJson(json_['financialDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          leasingSavings: json_.containsKey('leasingSavings')
              ? LeasingSavings.fromJson(json_['leasingSavings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          monthlyBill: json_.containsKey('monthlyBill')
              ? Money.fromJson(
                  json_['monthlyBill'] as core.Map<core.String, core.dynamic>)
              : null,
          panelConfigIndex: json_.containsKey('panelConfigIndex')
              ? json_['panelConfigIndex'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (averageKwhPerMonth != null)
          'averageKwhPerMonth': averageKwhPerMonth!,
        if (cashPurchaseSavings != null)
          'cashPurchaseSavings': cashPurchaseSavings!,
        if (defaultBill != null) 'defaultBill': defaultBill!,
        if (financedPurchaseSavings != null)
          'financedPurchaseSavings': financedPurchaseSavings!,
        if (financialDetails != null) 'financialDetails': financialDetails!,
        if (leasingSavings != null) 'leasingSavings': leasingSavings!,
        if (monthlyBill != null) 'monthlyBill': monthlyBill!,
        if (panelConfigIndex != null) 'panelConfigIndex': panelConfigIndex!,
      };
}

/// Details of a financial analysis.
///
/// Some of these details are already stored at higher levels (e.g., out of
/// pocket cost). Total money amounts are over a lifetime period defined by the
/// panel_lifetime_years field in SolarPotential. Note: The out of pocket cost
/// of purchasing the panels is given in the out_of_pocket_cost field in
/// CashPurchaseSavings.
class FinancialDetails {
  /// Total cost of electricity the user would have paid over the lifetime
  /// period if they didn't install solar.
  Money? costOfElectricityWithoutSolar;

  /// Amount of money available from federal incentives; this applies if the
  /// user buys (with or without a loan) the panels.
  Money? federalIncentive;

  /// How many AC kWh we think the solar panels will generate in their first
  /// year.
  core.double? initialAcKwhPerYear;

  /// Amount of money the user will receive from Solar Renewable Energy Credits
  /// over the panel lifetime; this applies if the user buys (with or without a
  /// loan) the panels.
  Money? lifetimeSrecTotal;

  /// Whether net metering is allowed.
  core.bool? netMeteringAllowed;

  /// The percentage (0-100) of solar electricity production we assumed was
  /// exported to the grid, based on the first quarter of production.
  ///
  /// This affects the calculations if net metering is not allowed.
  core.double? percentageExportedToGrid;

  /// Utility bill for electricity not produced by solar, for the lifetime of
  /// the panels.
  Money? remainingLifetimeUtilityBill;

  /// Percentage (0-100) of the user's power supplied by solar.
  ///
  /// Valid for the first year but approximately correct for future years.
  core.double? solarPercentage;

  /// Amount of money available from state incentives; this applies if the user
  /// buys (with or without a loan) the panels.
  Money? stateIncentive;

  /// Amount of money available from utility incentives; this applies if the
  /// user buys (with or without a loan) the panels.
  Money? utilityIncentive;

  FinancialDetails({
    this.costOfElectricityWithoutSolar,
    this.federalIncentive,
    this.initialAcKwhPerYear,
    this.lifetimeSrecTotal,
    this.netMeteringAllowed,
    this.percentageExportedToGrid,
    this.remainingLifetimeUtilityBill,
    this.solarPercentage,
    this.stateIncentive,
    this.utilityIncentive,
  });

  FinancialDetails.fromJson(core.Map json_)
      : this(
          costOfElectricityWithoutSolar:
              json_.containsKey('costOfElectricityWithoutSolar')
                  ? Money.fromJson(json_['costOfElectricityWithoutSolar']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          federalIncentive: json_.containsKey('federalIncentive')
              ? Money.fromJson(json_['federalIncentive']
                  as core.Map<core.String, core.dynamic>)
              : null,
          initialAcKwhPerYear: json_.containsKey('initialAcKwhPerYear')
              ? (json_['initialAcKwhPerYear'] as core.num).toDouble()
              : null,
          lifetimeSrecTotal: json_.containsKey('lifetimeSrecTotal')
              ? Money.fromJson(json_['lifetimeSrecTotal']
                  as core.Map<core.String, core.dynamic>)
              : null,
          netMeteringAllowed: json_.containsKey('netMeteringAllowed')
              ? json_['netMeteringAllowed'] as core.bool
              : null,
          percentageExportedToGrid:
              json_.containsKey('percentageExportedToGrid')
                  ? (json_['percentageExportedToGrid'] as core.num).toDouble()
                  : null,
          remainingLifetimeUtilityBill:
              json_.containsKey('remainingLifetimeUtilityBill')
                  ? Money.fromJson(json_['remainingLifetimeUtilityBill']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          solarPercentage: json_.containsKey('solarPercentage')
              ? (json_['solarPercentage'] as core.num).toDouble()
              : null,
          stateIncentive: json_.containsKey('stateIncentive')
              ? Money.fromJson(json_['stateIncentive']
                  as core.Map<core.String, core.dynamic>)
              : null,
          utilityIncentive: json_.containsKey('utilityIncentive')
              ? Money.fromJson(json_['utilityIncentive']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (costOfElectricityWithoutSolar != null)
          'costOfElectricityWithoutSolar': costOfElectricityWithoutSolar!,
        if (federalIncentive != null) 'federalIncentive': federalIncentive!,
        if (initialAcKwhPerYear != null)
          'initialAcKwhPerYear': initialAcKwhPerYear!,
        if (lifetimeSrecTotal != null) 'lifetimeSrecTotal': lifetimeSrecTotal!,
        if (netMeteringAllowed != null)
          'netMeteringAllowed': netMeteringAllowed!,
        if (percentageExportedToGrid != null)
          'percentageExportedToGrid': percentageExportedToGrid!,
        if (remainingLifetimeUtilityBill != null)
          'remainingLifetimeUtilityBill': remainingLifetimeUtilityBill!,
        if (solarPercentage != null) 'solarPercentage': solarPercentage!,
        if (stateIncentive != null) 'stateIncentive': stateIncentive!,
        if (utilityIncentive != null) 'utilityIncentive': utilityIncentive!,
      };
}

/// Message that represents an arbitrary HTTP body.
///
/// It should only be used for payload formats that can't be represented as
/// JSON, such as raw binary or an HTML page. This message can be used both in
/// streaming and non-streaming API methods in the request as well as the
/// response. It can be used as a top-level request field, which is convenient
/// if one wants to extract parameters from either the URL or HTTP template into
/// the request fields and also want access to the raw HTTP body. Example:
/// message GetResourceRequest { // A unique request id. string request_id = 1;
/// // The raw HTTP body is bound to this field. google.api.HttpBody http_body =
/// 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns
/// (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns
/// (google.protobuf.Empty); } Example with streaming methods: service
/// CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream
/// google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns
/// (stream google.api.HttpBody); } Use of this type only changes how the
/// request and response bodies are handled, all other features will continue to
/// work unchanged.
typedef HttpBody = $HttpBody;

/// An object that represents a latitude/longitude pair.
///
/// This is expressed as a pair of doubles to represent degrees latitude and
/// degrees longitude. Unless specified otherwise, this object must conform to
/// the WGS84 standard. Values must be within normalized ranges.
typedef LatLng = $LatLng;

/// A bounding box in lat/lng coordinates.
class LatLngBox {
  /// The northeast corner of the box.
  LatLng? ne;

  /// The southwest corner of the box.
  LatLng? sw;

  LatLngBox({
    this.ne,
    this.sw,
  });

  LatLngBox.fromJson(core.Map json_)
      : this(
          ne: json_.containsKey('ne')
              ? LatLng.fromJson(
                  json_['ne'] as core.Map<core.String, core.dynamic>)
              : null,
          sw: json_.containsKey('sw')
              ? LatLng.fromJson(
                  json_['sw'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ne != null) 'ne': ne!,
        if (sw != null) 'sw': sw!,
      };
}

/// Cost and benefit of leasing a particular configuration of solar panels with
/// a particular electricity usage.
class LeasingSavings {
  /// Estimated annual leasing cost.
  Money? annualLeasingCost;

  /// Whether leases are allowed in this juristiction (leases are not allowed in
  /// some states).
  ///
  /// If this field is false, then the values in this message should probably be
  /// ignored.
  core.bool? leasesAllowed;

  /// Whether leases are supported in this juristiction by the financial
  /// calculation engine.
  ///
  /// If this field is false, then the values in this message should probably be
  /// ignored. This is independent of `leases_allowed`: in some areas leases are
  /// allowed, but under conditions that aren't handled by the financial models.
  core.bool? leasesSupported;

  /// How much is saved (or not) over the lifetime period.
  SavingsOverTime? savings;

  LeasingSavings({
    this.annualLeasingCost,
    this.leasesAllowed,
    this.leasesSupported,
    this.savings,
  });

  LeasingSavings.fromJson(core.Map json_)
      : this(
          annualLeasingCost: json_.containsKey('annualLeasingCost')
              ? Money.fromJson(json_['annualLeasingCost']
                  as core.Map<core.String, core.dynamic>)
              : null,
          leasesAllowed: json_.containsKey('leasesAllowed')
              ? json_['leasesAllowed'] as core.bool
              : null,
          leasesSupported: json_.containsKey('leasesSupported')
              ? json_['leasesSupported'] as core.bool
              : null,
          savings: json_.containsKey('savings')
              ? SavingsOverTime.fromJson(
                  json_['savings'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annualLeasingCost != null) 'annualLeasingCost': annualLeasingCost!,
        if (leasesAllowed != null) 'leasesAllowed': leasesAllowed!,
        if (leasesSupported != null) 'leasesSupported': leasesSupported!,
        if (savings != null) 'savings': savings!,
      };
}

/// Represents an amount of money with its currency type.
typedef Money = $Money;

/// Information about the size and sunniness quantiles of a roof segment.
class RoofSegmentSizeAndSunshineStats {
  /// Compass direction the roof segment is pointing in.
  ///
  /// 0 = North, 90 = East, 180 = South. For a "flat" roof segment
  /// (`pitch_degrees` very near 0), azimuth is not well defined, so for
  /// consistency, we define it arbitrarily to be 0 (North).
  core.double? azimuthDegrees;

  /// The bounding box of the roof segment.
  LatLngBox? boundingBox;

  /// A point near the center of the roof segment.
  LatLng? center;

  /// Angle of the roof segment relative to the theoretical ground plane.
  ///
  /// 0 = parallel to the ground, 90 = perpendicular to the ground.
  core.double? pitchDegrees;

  /// The height of the roof segment plane, in meters above sea level, at the
  /// point designated by `center`.
  ///
  /// Together with the pitch, azimuth, and center location, this fully defines
  /// the roof segment plane.
  core.double? planeHeightAtCenterMeters;

  /// Total size and sunlight quantiles for the roof segment.
  SizeAndSunshineStats? stats;

  RoofSegmentSizeAndSunshineStats({
    this.azimuthDegrees,
    this.boundingBox,
    this.center,
    this.pitchDegrees,
    this.planeHeightAtCenterMeters,
    this.stats,
  });

  RoofSegmentSizeAndSunshineStats.fromJson(core.Map json_)
      : this(
          azimuthDegrees: json_.containsKey('azimuthDegrees')
              ? (json_['azimuthDegrees'] as core.num).toDouble()
              : null,
          boundingBox: json_.containsKey('boundingBox')
              ? LatLngBox.fromJson(
                  json_['boundingBox'] as core.Map<core.String, core.dynamic>)
              : null,
          center: json_.containsKey('center')
              ? LatLng.fromJson(
                  json_['center'] as core.Map<core.String, core.dynamic>)
              : null,
          pitchDegrees: json_.containsKey('pitchDegrees')
              ? (json_['pitchDegrees'] as core.num).toDouble()
              : null,
          planeHeightAtCenterMeters:
              json_.containsKey('planeHeightAtCenterMeters')
                  ? (json_['planeHeightAtCenterMeters'] as core.num).toDouble()
                  : null,
          stats: json_.containsKey('stats')
              ? SizeAndSunshineStats.fromJson(
                  json_['stats'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (azimuthDegrees != null) 'azimuthDegrees': azimuthDegrees!,
        if (boundingBox != null) 'boundingBox': boundingBox!,
        if (center != null) 'center': center!,
        if (pitchDegrees != null) 'pitchDegrees': pitchDegrees!,
        if (planeHeightAtCenterMeters != null)
          'planeHeightAtCenterMeters': planeHeightAtCenterMeters!,
        if (stats != null) 'stats': stats!,
      };
}

/// Information about a roof segment on the building, with some number of panels
/// placed on it.
class RoofSegmentSummary {
  /// Compass direction the roof segment is pointing in.
  ///
  /// 0 = North, 90 = East, 180 = South. For a "flat" roof segment
  /// (`pitch_degrees` very near 0), azimuth is not well defined, so for
  /// consistency, we define it arbitrarily to be 0 (North).
  core.double? azimuthDegrees;

  /// The total number of panels on this segment.
  core.int? panelsCount;

  /// Angle of the roof segment relative to the theoretical ground plane.
  ///
  /// 0 = parallel to the ground, 90 = perpendicular to the ground.
  core.double? pitchDegrees;

  /// Index in roof_segment_stats of the corresponding
  /// `RoofSegmentSizeAndSunshineStats`.
  core.int? segmentIndex;

  /// How much sunlight energy this part of the layout captures over the course
  /// of a year, in DC kWh, assuming the panels described above.
  core.double? yearlyEnergyDcKwh;

  RoofSegmentSummary({
    this.azimuthDegrees,
    this.panelsCount,
    this.pitchDegrees,
    this.segmentIndex,
    this.yearlyEnergyDcKwh,
  });

  RoofSegmentSummary.fromJson(core.Map json_)
      : this(
          azimuthDegrees: json_.containsKey('azimuthDegrees')
              ? (json_['azimuthDegrees'] as core.num).toDouble()
              : null,
          panelsCount: json_.containsKey('panelsCount')
              ? json_['panelsCount'] as core.int
              : null,
          pitchDegrees: json_.containsKey('pitchDegrees')
              ? (json_['pitchDegrees'] as core.num).toDouble()
              : null,
          segmentIndex: json_.containsKey('segmentIndex')
              ? json_['segmentIndex'] as core.int
              : null,
          yearlyEnergyDcKwh: json_.containsKey('yearlyEnergyDcKwh')
              ? (json_['yearlyEnergyDcKwh'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (azimuthDegrees != null) 'azimuthDegrees': azimuthDegrees!,
        if (panelsCount != null) 'panelsCount': panelsCount!,
        if (pitchDegrees != null) 'pitchDegrees': pitchDegrees!,
        if (segmentIndex != null) 'segmentIndex': segmentIndex!,
        if (yearlyEnergyDcKwh != null) 'yearlyEnergyDcKwh': yearlyEnergyDcKwh!,
      };
}

/// Financial information that's shared between different financing methods.
class SavingsOverTime {
  /// Indicates whether this scenario is financially viable.
  ///
  /// Will be false for scenarios with poor financial viability (e.g.,
  /// money-losing).
  core.bool? financiallyViable;

  /// Using the assumed discount rate, what is the present value of the
  /// cumulative lifetime savings?
  Money? presentValueOfSavingsLifetime;

  /// Using the assumed discount rate, what is the present value of the
  /// cumulative 20-year savings?
  Money? presentValueOfSavingsYear20;

  /// Savings in the entire panel lifetime.
  Money? savingsLifetime;

  /// Savings in the first year after panel installation.
  Money? savingsYear1;

  /// Savings in the first twenty years after panel installation.
  Money? savingsYear20;

  SavingsOverTime({
    this.financiallyViable,
    this.presentValueOfSavingsLifetime,
    this.presentValueOfSavingsYear20,
    this.savingsLifetime,
    this.savingsYear1,
    this.savingsYear20,
  });

  SavingsOverTime.fromJson(core.Map json_)
      : this(
          financiallyViable: json_.containsKey('financiallyViable')
              ? json_['financiallyViable'] as core.bool
              : null,
          presentValueOfSavingsLifetime:
              json_.containsKey('presentValueOfSavingsLifetime')
                  ? Money.fromJson(json_['presentValueOfSavingsLifetime']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          presentValueOfSavingsYear20:
              json_.containsKey('presentValueOfSavingsYear20')
                  ? Money.fromJson(json_['presentValueOfSavingsYear20']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          savingsLifetime: json_.containsKey('savingsLifetime')
              ? Money.fromJson(json_['savingsLifetime']
                  as core.Map<core.String, core.dynamic>)
              : null,
          savingsYear1: json_.containsKey('savingsYear1')
              ? Money.fromJson(
                  json_['savingsYear1'] as core.Map<core.String, core.dynamic>)
              : null,
          savingsYear20: json_.containsKey('savingsYear20')
              ? Money.fromJson(
                  json_['savingsYear20'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (financiallyViable != null) 'financiallyViable': financiallyViable!,
        if (presentValueOfSavingsLifetime != null)
          'presentValueOfSavingsLifetime': presentValueOfSavingsLifetime!,
        if (presentValueOfSavingsYear20 != null)
          'presentValueOfSavingsYear20': presentValueOfSavingsYear20!,
        if (savingsLifetime != null) 'savingsLifetime': savingsLifetime!,
        if (savingsYear1 != null) 'savingsYear1': savingsYear1!,
        if (savingsYear20 != null) 'savingsYear20': savingsYear20!,
      };
}

/// Size and sunniness quantiles of a roof, or part of a roof.
class SizeAndSunshineStats {
  /// The area of the roof or roof segment, in m^2.
  ///
  /// This is the roof area (accounting for tilt), not the ground footprint
  /// area.
  core.double? areaMeters2;

  /// The ground footprint area covered by the roof or roof segment, in m^2.
  core.double? groundAreaMeters2;

  /// Quantiles of the pointwise sunniness across the area.
  ///
  /// If there are N values here, this represents the (N-1)-iles. For example,
  /// if there are 5 values, then they would be the quartiles (min, 25%, 50%,
  /// 75%, max). Values are in annual kWh/kW like max_sunshine_hours_per_year.
  core.List<core.double>? sunshineQuantiles;

  SizeAndSunshineStats({
    this.areaMeters2,
    this.groundAreaMeters2,
    this.sunshineQuantiles,
  });

  SizeAndSunshineStats.fromJson(core.Map json_)
      : this(
          areaMeters2: json_.containsKey('areaMeters2')
              ? (json_['areaMeters2'] as core.num).toDouble()
              : null,
          groundAreaMeters2: json_.containsKey('groundAreaMeters2')
              ? (json_['groundAreaMeters2'] as core.num).toDouble()
              : null,
          sunshineQuantiles: json_.containsKey('sunshineQuantiles')
              ? (json_['sunshineQuantiles'] as core.List)
                  .map((value) => (value as core.num).toDouble())
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (areaMeters2 != null) 'areaMeters2': areaMeters2!,
        if (groundAreaMeters2 != null) 'groundAreaMeters2': groundAreaMeters2!,
        if (sunshineQuantiles != null) 'sunshineQuantiles': sunshineQuantiles!,
      };
}

/// SolarPanel describes the position, orientation, and production of a single
/// solar panel.
///
/// See the panel_height_meters, panel_width_meters, and panel_capacity_watts
/// fields in SolarPotential for information on the parameters of the panel.
class SolarPanel {
  /// The centre of the panel.
  LatLng? center;

  /// The orientation of the panel.
  /// Possible string values are:
  /// - "SOLAR_PANEL_ORIENTATION_UNSPECIFIED" : No panel orientation is known.
  /// - "LANDSCAPE" : A `LANDSCAPE` panel has its long edge perpendicular to the
  /// azimuth direction of the roof segment that it is placed on.
  /// - "PORTRAIT" : A `PORTRAIT` panel has its long edge parallel to the
  /// azimuth direction of the roof segment that it is placed on.
  core.String? orientation;

  /// Index in roof_segment_stats of the `RoofSegmentSizeAndSunshineStats` which
  /// corresponds to the roof segment that this panel is placed on.
  core.int? segmentIndex;

  /// How much sunlight energy this layout captures over the course of a year,
  /// in DC kWh.
  core.double? yearlyEnergyDcKwh;

  SolarPanel({
    this.center,
    this.orientation,
    this.segmentIndex,
    this.yearlyEnergyDcKwh,
  });

  SolarPanel.fromJson(core.Map json_)
      : this(
          center: json_.containsKey('center')
              ? LatLng.fromJson(
                  json_['center'] as core.Map<core.String, core.dynamic>)
              : null,
          orientation: json_.containsKey('orientation')
              ? json_['orientation'] as core.String
              : null,
          segmentIndex: json_.containsKey('segmentIndex')
              ? json_['segmentIndex'] as core.int
              : null,
          yearlyEnergyDcKwh: json_.containsKey('yearlyEnergyDcKwh')
              ? (json_['yearlyEnergyDcKwh'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (center != null) 'center': center!,
        if (orientation != null) 'orientation': orientation!,
        if (segmentIndex != null) 'segmentIndex': segmentIndex!,
        if (yearlyEnergyDcKwh != null) 'yearlyEnergyDcKwh': yearlyEnergyDcKwh!,
      };
}

/// SolarPanelConfig describes a particular placement of solar panels on the
/// roof.
class SolarPanelConfig {
  /// Total number of panels.
  ///
  /// Note that this is redundant to (the sum of) the corresponding fields in
  /// roof_segment_summaries.
  core.int? panelsCount;

  /// Information about the production of each roof segment that is carrying at
  /// least one panel in this layout.
  ///
  /// `roof_segment_summaries[i]` describes the i-th roof segment, including its
  /// size, expected production and orientation.
  core.List<RoofSegmentSummary>? roofSegmentSummaries;

  /// How much sunlight energy this layout captures over the course of a year,
  /// in DC kWh, assuming the panels described above.
  core.double? yearlyEnergyDcKwh;

  SolarPanelConfig({
    this.panelsCount,
    this.roofSegmentSummaries,
    this.yearlyEnergyDcKwh,
  });

  SolarPanelConfig.fromJson(core.Map json_)
      : this(
          panelsCount: json_.containsKey('panelsCount')
              ? json_['panelsCount'] as core.int
              : null,
          roofSegmentSummaries: json_.containsKey('roofSegmentSummaries')
              ? (json_['roofSegmentSummaries'] as core.List)
                  .map((value) => RoofSegmentSummary.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          yearlyEnergyDcKwh: json_.containsKey('yearlyEnergyDcKwh')
              ? (json_['yearlyEnergyDcKwh'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (panelsCount != null) 'panelsCount': panelsCount!,
        if (roofSegmentSummaries != null)
          'roofSegmentSummaries': roofSegmentSummaries!,
        if (yearlyEnergyDcKwh != null) 'yearlyEnergyDcKwh': yearlyEnergyDcKwh!,
      };
}

/// Information about the solar potential of a building.
///
/// A number of fields in this are defined in terms of "panels". The fields
/// panel_capacity_watts, panel_height_meters, and panel_width_meters describe
/// the parameters of the model of panel used in these calculations.
class SolarPotential {
  /// Size and sunlight quantiles for the entire building, including parts of
  /// the roof that were not assigned to some roof segment.
  ///
  /// Because the orientations of these parts are not well characterised, the
  /// roof area estimate is unreliable, but the ground area estimate is
  /// reliable. It may be that a more reliable whole building roof area can be
  /// obtained by scaling the roof area from whole_roof_stats by the ratio of
  /// the ground areas of `building_stats` and `whole_roof_stats`.
  SizeAndSunshineStats? buildingStats;

  /// Equivalent amount of CO2 produced per MWh of grid electricity.
  ///
  /// This is a measure of the carbon intensity of grid electricity displaced by
  /// solar electricity.
  core.double? carbonOffsetFactorKgPerMwh;

  /// A FinancialAnalysis gives the savings from going solar assuming a given
  /// monthly bill and a given electricity provider.
  ///
  /// They are in order of increasing order of monthly bill amount. This field
  /// will be empty for buildings in areas for which the Solar API does not have
  /// enough information to perform financial computations.
  core.List<FinancialAnalysis>? financialAnalyses;

  /// Size, in square meters, of the maximum array.
  core.double? maxArrayAreaMeters2;

  /// Size of the maximum array - that is, the maximum number of panels that can
  /// fit on the roof.
  core.int? maxArrayPanelsCount;

  /// Maximum number of sunshine hours received per year, by any point on the
  /// roof.
  ///
  /// Sunshine hours are a measure of the total amount of insolation (energy)
  /// received per year. 1 sunshine hour = 1 kWh per kW (where kW refers to kW
  /// of capacity under Standard Testing Conditions).
  core.double? maxSunshineHoursPerYear;

  /// Capacity, in watts, of the panel used in the calculations.
  core.double? panelCapacityWatts;

  /// Height, in meters in portrait orientation, of the panel used in the
  /// calculations.
  core.double? panelHeightMeters;

  /// The expected lifetime, in years, of the solar panels.
  ///
  /// This is used in the financial calculations.
  core.int? panelLifetimeYears;

  /// Width, in meters in portrait orientation, of the panel used in the
  /// calculations.
  core.double? panelWidthMeters;

  /// Size and sunlight quantiles for each roof segment.
  core.List<RoofSegmentSizeAndSunshineStats>? roofSegmentStats;

  /// Each SolarPanelConfig describes a different arrangement of solar panels on
  /// the roof.
  ///
  /// They are in order of increasing number of panels. The `SolarPanelConfig`
  /// with panels_count=N is based on the first N panels in the `solar_panels`
  /// list. This field is only populated if at least 4 panels can fit on a roof.
  core.List<SolarPanelConfig>? solarPanelConfigs;

  /// Each SolarPanel describes a single solar panel.
  ///
  /// They are listed in the order that the panel layout algorithm placed this.
  /// This is usually, though not always, in decreasing order of annual energy
  /// production.
  core.List<SolarPanel>? solarPanels;

  /// Total size and sunlight quantiles for the part of the roof that was
  /// assigned to some roof segment.
  ///
  /// Despite the name, this may not include the entire building. See
  /// building_stats.
  SizeAndSunshineStats? wholeRoofStats;

  SolarPotential({
    this.buildingStats,
    this.carbonOffsetFactorKgPerMwh,
    this.financialAnalyses,
    this.maxArrayAreaMeters2,
    this.maxArrayPanelsCount,
    this.maxSunshineHoursPerYear,
    this.panelCapacityWatts,
    this.panelHeightMeters,
    this.panelLifetimeYears,
    this.panelWidthMeters,
    this.roofSegmentStats,
    this.solarPanelConfigs,
    this.solarPanels,
    this.wholeRoofStats,
  });

  SolarPotential.fromJson(core.Map json_)
      : this(
          buildingStats: json_.containsKey('buildingStats')
              ? SizeAndSunshineStats.fromJson(
                  json_['buildingStats'] as core.Map<core.String, core.dynamic>)
              : null,
          carbonOffsetFactorKgPerMwh:
              json_.containsKey('carbonOffsetFactorKgPerMwh')
                  ? (json_['carbonOffsetFactorKgPerMwh'] as core.num).toDouble()
                  : null,
          financialAnalyses: json_.containsKey('financialAnalyses')
              ? (json_['financialAnalyses'] as core.List)
                  .map((value) => FinancialAnalysis.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          maxArrayAreaMeters2: json_.containsKey('maxArrayAreaMeters2')
              ? (json_['maxArrayAreaMeters2'] as core.num).toDouble()
              : null,
          maxArrayPanelsCount: json_.containsKey('maxArrayPanelsCount')
              ? json_['maxArrayPanelsCount'] as core.int
              : null,
          maxSunshineHoursPerYear: json_.containsKey('maxSunshineHoursPerYear')
              ? (json_['maxSunshineHoursPerYear'] as core.num).toDouble()
              : null,
          panelCapacityWatts: json_.containsKey('panelCapacityWatts')
              ? (json_['panelCapacityWatts'] as core.num).toDouble()
              : null,
          panelHeightMeters: json_.containsKey('panelHeightMeters')
              ? (json_['panelHeightMeters'] as core.num).toDouble()
              : null,
          panelLifetimeYears: json_.containsKey('panelLifetimeYears')
              ? json_['panelLifetimeYears'] as core.int
              : null,
          panelWidthMeters: json_.containsKey('panelWidthMeters')
              ? (json_['panelWidthMeters'] as core.num).toDouble()
              : null,
          roofSegmentStats: json_.containsKey('roofSegmentStats')
              ? (json_['roofSegmentStats'] as core.List)
                  .map((value) => RoofSegmentSizeAndSunshineStats.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          solarPanelConfigs: json_.containsKey('solarPanelConfigs')
              ? (json_['solarPanelConfigs'] as core.List)
                  .map((value) => SolarPanelConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          solarPanels: json_.containsKey('solarPanels')
              ? (json_['solarPanels'] as core.List)
                  .map((value) => SolarPanel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          wholeRoofStats: json_.containsKey('wholeRoofStats')
              ? SizeAndSunshineStats.fromJson(json_['wholeRoofStats']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buildingStats != null) 'buildingStats': buildingStats!,
        if (carbonOffsetFactorKgPerMwh != null)
          'carbonOffsetFactorKgPerMwh': carbonOffsetFactorKgPerMwh!,
        if (financialAnalyses != null) 'financialAnalyses': financialAnalyses!,
        if (maxArrayAreaMeters2 != null)
          'maxArrayAreaMeters2': maxArrayAreaMeters2!,
        if (maxArrayPanelsCount != null)
          'maxArrayPanelsCount': maxArrayPanelsCount!,
        if (maxSunshineHoursPerYear != null)
          'maxSunshineHoursPerYear': maxSunshineHoursPerYear!,
        if (panelCapacityWatts != null)
          'panelCapacityWatts': panelCapacityWatts!,
        if (panelHeightMeters != null) 'panelHeightMeters': panelHeightMeters!,
        if (panelLifetimeYears != null)
          'panelLifetimeYears': panelLifetimeYears!,
        if (panelWidthMeters != null) 'panelWidthMeters': panelWidthMeters!,
        if (roofSegmentStats != null) 'roofSegmentStats': roofSegmentStats!,
        if (solarPanelConfigs != null) 'solarPanelConfigs': solarPanelConfigs!,
        if (solarPanels != null) 'solarPanels': solarPanels!,
        if (wholeRoofStats != null) 'wholeRoofStats': wholeRoofStats!,
      };
}
