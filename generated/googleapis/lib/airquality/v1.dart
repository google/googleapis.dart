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
// ignore_for_file: unused_import

/// Air Quality API - v1
///
/// The Air Quality API.
///
/// For more information, see
/// <https://developers.google.com/maps/documentation/air-quality>
///
/// Create an instance of [AirQualityApi] to access these resources:
///
/// - [CurrentConditionsResource]
/// - [ForecastResource]
/// - [HistoryResource]
/// - [MapTypesResource]
///   - [MapTypesHeatmapTilesResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/convert.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Air Quality API.
class AirQualityApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  CurrentConditionsResource get currentConditions =>
      CurrentConditionsResource(_requester);
  ForecastResource get forecast => ForecastResource(_requester);
  HistoryResource get history => HistoryResource(_requester);
  MapTypesResource get mapTypes => MapTypesResource(_requester);

  AirQualityApi(http.Client client,
      {core.String rootUrl = 'https://airquality.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class CurrentConditionsResource {
  final commons.ApiRequester _requester;

  CurrentConditionsResource(commons.ApiRequester client) : _requester = client;

  /// The Current Conditions endpoint provides hourly air quality information in
  /// more than 100 countries, up to a 500 x 500 meters resolution.
  ///
  /// Includes over 70 local indexes and global air quality index and
  /// categories.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LookupCurrentConditionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LookupCurrentConditionsResponse> lookup(
    LookupCurrentConditionsRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/currentConditions:lookup';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LookupCurrentConditionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ForecastResource {
  final commons.ApiRequester _requester;

  ForecastResource(commons.ApiRequester client) : _requester = client;

  /// Returns air quality forecast for a specific location for a given time
  /// range.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LookupForecastResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LookupForecastResponse> lookup(
    LookupForecastRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/forecast:lookup';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LookupForecastResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class HistoryResource {
  final commons.ApiRequester _requester;

  HistoryResource(commons.ApiRequester client) : _requester = client;

  /// Returns air quality history for a specific location for a given time
  /// range.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LookupHistoryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LookupHistoryResponse> lookup(
    LookupHistoryRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/history:lookup';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LookupHistoryResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class MapTypesResource {
  final commons.ApiRequester _requester;

  MapTypesHeatmapTilesResource get heatmapTiles =>
      MapTypesHeatmapTilesResource(_requester);

  MapTypesResource(commons.ApiRequester client) : _requester = client;
}

class MapTypesHeatmapTilesResource {
  final commons.ApiRequester _requester;

  MapTypesHeatmapTilesResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns a bytes array containing the data of the tile PNG image.
  ///
  /// Request parameters:
  ///
  /// [mapType] - Required. The type of the air quality heatmap. Defines the
  /// pollutant that the map will graphically represent. Allowed values: -
  /// UAQI_RED_GREEN (UAQI, red-green palette) - UAQI_INDIGO_PERSIAN (UAQI,
  /// indigo-persian palette) - PM25_INDIGO_PERSIAN - GBR_DEFRA - DEU_UBA -
  /// CAN_EC - FRA_ATMO - US_AQI
  /// Possible string values are:
  /// - "MAP_TYPE_UNSPECIFIED" : The default value. The server ignores it if it
  /// is passed as a parameter.
  /// - "UAQI_RED_GREEN" : Universal Air Quality Index red-green palette.
  /// - "UAQI_INDIGO_PERSIAN" : Universal Air Quality Index indigo-persian
  /// palette.
  /// - "PM25_INDIGO_PERSIAN" : PM2.5 index indigo-persian palette.
  /// - "GBR_DEFRA" : Daily Air Quality Index (UK) color palette.
  /// - "DEU_UBA" : German Local Air Quality Index color palette.
  /// - "CAN_EC" : Canadian Air Quality Health Index color palette.
  /// - "FRA_ATMO" : France Air Quality Index color palette.
  /// - "US_AQI" : US Air Quality Index color palette.
  ///
  /// [zoom] - Required. The map's zoom level. Defines how large or small the
  /// contents of a map appear in a map view. Zoom level 0 is the entire world
  /// in a single tile. Zoom level 1 is the entire world in 4 tiles. Zoom level
  /// 2 is the entire world in 16 tiles. Zoom level 16 is the entire world in
  /// 65,536 tiles. Allowed values: 0-16
  ///
  /// [x] - Required. Defines the east-west point in the requested tile.
  ///
  /// [y] - Required. Defines the north-south point in the requested tile.
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
  async.Future<HttpBody> lookupHeatmapTile(
    core.String mapType,
    core.int zoom,
    core.int x,
    core.int y, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/mapTypes/' +
        commons.escapeVariable('$mapType') +
        '/heatmapTiles/' +
        commons.escapeVariable('$zoom') +
        '/' +
        commons.escapeVariable('$x') +
        '/' +
        commons.escapeVariable('$y');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// The emission sources and health effects of a given pollutant.
class AdditionalInfo {
  /// Text representing the pollutant's main health effects.
  core.String? effects;

  /// Text representing the pollutant's main emission sources.
  core.String? sources;

  AdditionalInfo({
    this.effects,
    this.sources,
  });

  AdditionalInfo.fromJson(core.Map json_)
      : this(
          effects: json_['effects'] as core.String?,
          sources: json_['sources'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (effects != null) 'effects': effects!,
        if (sources != null) 'sources': sources!,
      };
}

/// The basic object for representing different air quality metrics.
///
/// When brought together, these metrics provide a snapshot about the current
/// air quality conditions. There are multiple indexes in the world serving
/// different purposes and groups interested in measuring different aspects of
/// air quality.
class AirQualityIndex {
  ///  The index's numeric score.
  ///
  /// Examples: 10, 100. The value is not normalized and should only be
  /// interpreted in the context of its related air-quality index. For
  /// non-numeric indexes, this field will not be returned. Note: This field
  /// should be used for calculations, graph display, etc. For displaying the
  /// index score, you should use the AQI display field.
  core.int? aqi;

  /// Textual representation of the index numeric score, that may include prefix
  /// or suffix symbols, which usually represents the worst index score.
  ///
  /// Example: \>100 or 10+. Note: This field should be used when you want to
  /// display the index score. For non-numeric indexes, this field is empty.
  core.String? aqiDisplay;

  /// Textual classification of the index numeric score interpretation.
  ///
  /// For example: "Excellent air quality".
  core.String? category;

  /// The index's code.
  ///
  /// This field represents the index for programming purposes by using snake
  /// case instead of spaces. Examples: "uaqi", "fra_atmo".
  core.String? code;

  /// The color used to represent the AQI numeric score.
  Color? color;

  /// A human readable representation of the index name.
  ///
  /// Example: "AQI (US)"
  core.String? displayName;

  /// The chemical symbol of the dominant pollutant.
  ///
  /// For example: "CO".
  core.String? dominantPollutant;

  AirQualityIndex({
    this.aqi,
    this.aqiDisplay,
    this.category,
    this.code,
    this.color,
    this.displayName,
    this.dominantPollutant,
  });

  AirQualityIndex.fromJson(core.Map json_)
      : this(
          aqi: json_['aqi'] as core.int?,
          aqiDisplay: json_['aqiDisplay'] as core.String?,
          category: json_['category'] as core.String?,
          code: json_['code'] as core.String?,
          color: json_.containsKey('color')
              ? Color.fromJson(
                  json_['color'] as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_['displayName'] as core.String?,
          dominantPollutant: json_['dominantPollutant'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aqi != null) 'aqi': aqi!,
        if (aqiDisplay != null) 'aqiDisplay': aqiDisplay!,
        if (category != null) 'category': category!,
        if (code != null) 'code': code!,
        if (color != null) 'color': color!,
        if (displayName != null) 'displayName': displayName!,
        if (dominantPollutant != null) 'dominantPollutant': dominantPollutant!,
      };
}

/// Represents a color in the RGBA color space.
///
/// This representation is designed for simplicity of conversion to and from
/// color representations in various languages over compactness. For example,
/// the fields of this representation can be trivially provided to the
/// constructor of `java.awt.Color` in Java; it can also be trivially provided
/// to UIColor's `+colorWithRed:green:blue:alpha` method in iOS; and, with just
/// a little work, it can be easily formatted into a CSS `rgba()` string in
/// JavaScript. This reference page doesn't have information about the absolute
/// color space that should be used to interpret the RGB value—for example,
/// sRGB, Adobe RGB, DCI-P3, and BT.2020. By default, applications should assume
/// the sRGB color space. When color equality needs to be decided,
/// implementations, unless documented otherwise, treat two colors as equal if
/// all their red, green, blue, and alpha values each differ by at most `1e-5`.
/// Example (Java): import com.google.type.Color; // ... public static
/// java.awt.Color fromProto(Color protocolor) { float alpha =
/// protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new
/// java.awt.Color( protocolor.getRed(), protocolor.getGreen(),
/// protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color
/// color) { float red = (float) color.getRed(); float green = (float)
/// color.getGreen(); float blue = (float) color.getBlue(); float denominator =
/// 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red /
/// denominator) .setGreen(green / denominator) .setBlue(blue / denominator);
/// int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha(
/// FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .build());
/// } return resultBuilder.build(); } // ... Example (iOS / Obj-C): // ...
/// static UIColor* fromProto(Color* protocolor) { float red = \[protocolor
/// red\]; float green = \[protocolor green\]; float blue = \[protocolor blue\];
/// FloatValue* alpha_wrapper = \[protocolor alpha\]; float alpha = 1.0; if
/// (alpha_wrapper != nil) { alpha = \[alpha_wrapper value\]; } return \[UIColor
/// colorWithRed:red green:green blue:blue alpha:alpha\]; } static Color*
/// toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (!\[color
/// getRed:&red green:&green blue:&blue alpha:&alpha\]) { return nil; } Color*
/// result = \[\[Color alloc\] init\]; \[result setRed:red\]; \[result
/// setGreen:green\]; \[result setBlue:blue\]; if (alpha \<= 0.9999) { \[result
/// setAlpha:floatWrapperWithValue(alpha)\]; } \[result autorelease\]; return
/// result; } // ... Example (JavaScript): // ... var protoToCssColor =
/// function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac =
/// rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red =
/// Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue
/// = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return
/// rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value ||
/// 0.0; var rgbParams = \[red, green, blue\].join(','); return \['rgba(',
/// rgbParams, ',', alphaFrac, ')'\].join(''); }; var rgbToCssColor =
/// function(red, green, blue) { var rgbNumber = new Number((red \<\< 16) |
/// (green \<\< 8) | blue); var hexString = rgbNumber.toString(16); var
/// missingZeros = 6 - hexString.length; var resultBuilder = \['#'\]; for (var i
/// = 0; i \< missingZeros; i++) { resultBuilder.push('0'); }
/// resultBuilder.push(hexString); return resultBuilder.join(''); }; // ...
typedef Color = $Color;

/// The concentration of a given pollutant in the air.
class Concentration {
  /// Units for measuring this pollutant concentration.
  /// Possible string values are:
  /// - "UNIT_UNSPECIFIED" : Unspecified concentration unit.
  /// - "PARTS_PER_BILLION" : The ppb (parts per billion) concentration unit.
  /// - "MICROGRAMS_PER_CUBIC_METER" : The "µg/m^3" (micrograms per cubic meter)
  /// concentration unit.
  core.String? units;

  /// Value of the pollutant concentration.
  core.double? value;

  Concentration({
    this.units,
    this.value,
  });

  Concentration.fromJson(core.Map json_)
      : this(
          units: json_['units'] as core.String?,
          value: json_.containsKey('value')
              ? decodeDouble(json_['value'] as core.Object)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (units != null) 'units': units!,
        if (value != null) 'value': encodeDouble(value!),
      };
}

/// Expresses a 'country/region to AQI' relationship.
///
/// Pairs a country/region with a desired AQI so that air quality data that is
/// required for that country/region will be displayed according to the chosen
/// AQI.
class CustomLocalAqi {
  /// The AQI to associate the country/region with.
  ///
  /// Value should be a \[valid index\](/maps/documentation/air-quality/laqis)
  /// code.
  core.String? aqi;

  /// The country/region requiring the custom AQI.
  ///
  /// Value should be provided using \[ISO 3166-1
  /// alpha-2\](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
  core.String? regionCode;

  CustomLocalAqi({
    this.aqi,
    this.regionCode,
  });

  CustomLocalAqi.fromJson(core.Map json_)
      : this(
          aqi: json_['aqi'] as core.String?,
          regionCode: json_['regionCode'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aqi != null) 'aqi': aqi!,
        if (regionCode != null) 'regionCode': regionCode!,
      };
}

/// Health recommendations for different population groups in a free text
/// format.
///
/// The recommendations are derived from their associated air quality
/// conditions.
class HealthRecommendations {
  /// Sports and other strenuous outdoor activities.
  core.String? athletes;

  /// Younger populations including children, toddlers, and babies.
  core.String? children;

  /// Retirees and people older than the general population.
  core.String? elderly;

  /// No specific sensitivities.
  core.String? generalPopulation;

  /// Heart and circulatory system diseases.
  core.String? heartDiseasePopulation;

  /// Respiratory related problems and asthma suffers.
  core.String? lungDiseasePopulation;

  /// Women at all stages of pregnancy.
  core.String? pregnantWomen;

  HealthRecommendations({
    this.athletes,
    this.children,
    this.elderly,
    this.generalPopulation,
    this.heartDiseasePopulation,
    this.lungDiseasePopulation,
    this.pregnantWomen,
  });

  HealthRecommendations.fromJson(core.Map json_)
      : this(
          athletes: json_['athletes'] as core.String?,
          children: json_['children'] as core.String?,
          elderly: json_['elderly'] as core.String?,
          generalPopulation: json_['generalPopulation'] as core.String?,
          heartDiseasePopulation:
              json_['heartDiseasePopulation'] as core.String?,
          lungDiseasePopulation: json_['lungDiseasePopulation'] as core.String?,
          pregnantWomen: json_['pregnantWomen'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (athletes != null) 'athletes': athletes!,
        if (children != null) 'children': children!,
        if (elderly != null) 'elderly': elderly!,
        if (generalPopulation != null) 'generalPopulation': generalPopulation!,
        if (heartDiseasePopulation != null)
          'heartDiseasePopulation': heartDiseasePopulation!,
        if (lungDiseasePopulation != null)
          'lungDiseasePopulation': lungDiseasePopulation!,
        if (pregnantWomen != null) 'pregnantWomen': pregnantWomen!,
      };
}

/// Contains the air quality information for each hour in the requested range.
///
/// For example, if the request is for 48 hours of history there will be 48
/// elements of hourly info.
class HourInfo {
  /// A rounded down timestamp indicating the time the data refers to in RFC3339
  /// UTC "Zulu" format, with nanosecond resolution and up to nine fractional
  /// digits.
  ///
  /// For example: "2014-10-02T15:00:00Z".
  core.String? dateTime;

  /// Health advice and recommended actions related to the reported air quality
  /// conditions.
  ///
  /// Recommendations are tailored differently for populations at risk, groups
  /// with greater sensitivities to pollutants, and the general population.
  HealthRecommendations? healthRecommendations;

  /// Based on the request parameters, this list will include (up to) two air
  /// quality indexes: - Universal AQI.
  ///
  /// Will be returned if the universalAqi boolean is set to true. - Local AQI.
  /// Will be returned if the LOCAL_AQI extra computation is specified.
  core.List<AirQualityIndex>? indexes;

  /// A list of pollutants affecting the location specified in the request.
  ///
  /// Note: This field will be returned only for requests that specified one or
  /// more of the following extra computations: POLLUTANT_ADDITIONAL_INFO,
  /// DOMINANT_POLLUTANT_CONCENTRATION, POLLUTANT_CONCENTRATION.
  core.List<Pollutant>? pollutants;

  HourInfo({
    this.dateTime,
    this.healthRecommendations,
    this.indexes,
    this.pollutants,
  });

  HourInfo.fromJson(core.Map json_)
      : this(
          dateTime: json_['dateTime'] as core.String?,
          healthRecommendations: json_.containsKey('healthRecommendations')
              ? HealthRecommendations.fromJson(json_['healthRecommendations']
                  as core.Map<core.String, core.dynamic>)
              : null,
          indexes: (json_['indexes'] as core.List?)
              ?.map((value) => AirQualityIndex.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          pollutants: (json_['pollutants'] as core.List?)
              ?.map((value) => Pollutant.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dateTime != null) 'dateTime': dateTime!,
        if (healthRecommendations != null)
          'healthRecommendations': healthRecommendations!,
        if (indexes != null) 'indexes': indexes!,
        if (pollutants != null) 'pollutants': pollutants!,
      };
}

/// Contains the air quality information for each hour in the requested range.
///
/// For example, if the request is for 48 hours of forecast there will be 48
/// elements of hourly forecasts.
class HourlyForecast {
  /// A rounded down timestamp indicating the time (hour) the data refers to in
  /// RFC3339 UTC "Zulu" format.
  ///
  /// For example: "2014-10-02T15:00:00Z".
  core.String? dateTime;

  /// Health advice and recommended actions related to the reported air quality
  /// conditions.
  ///
  /// Recommendations are tailored differently for populations at risk, groups
  /// with greater sensitivities to pollutants, and the general population.
  HealthRecommendations? healthRecommendations;

  /// Based on the request parameters, this list will include (up to) two air
  /// quality indexes: - Universal AQI.
  ///
  /// Will be returned if the `universal_aqi` boolean is set to true. - Local
  /// AQI. Will be returned if the LOCAL_AQI extra computation is specified.
  core.List<AirQualityIndex>? indexes;

  /// A list of pollutants affecting the location specified in the request.
  ///
  /// Note: This field will be returned only for requests that specified one or
  /// more of the following extra computations: POLLUTANT_ADDITIONAL_INFO,
  /// DOMINANT_POLLUTANT_CONCENTRATION, POLLUTANT_CONCENTRATION.
  core.List<Pollutant>? pollutants;

  HourlyForecast({
    this.dateTime,
    this.healthRecommendations,
    this.indexes,
    this.pollutants,
  });

  HourlyForecast.fromJson(core.Map json_)
      : this(
          dateTime: json_['dateTime'] as core.String?,
          healthRecommendations: json_.containsKey('healthRecommendations')
              ? HealthRecommendations.fromJson(json_['healthRecommendations']
                  as core.Map<core.String, core.dynamic>)
              : null,
          indexes: (json_['indexes'] as core.List?)
              ?.map((value) => AirQualityIndex.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          pollutants: (json_['pollutants'] as core.List?)
              ?.map((value) => Pollutant.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dateTime != null) 'dateTime': dateTime!,
        if (healthRecommendations != null)
          'healthRecommendations': healthRecommendations!,
        if (indexes != null) 'indexes': indexes!,
        if (pollutants != null) 'pollutants': pollutants!,
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

/// Represents a time interval, encoded as a Timestamp start (inclusive) and a
/// Timestamp end (exclusive).
///
/// The start must be less than or equal to the end. When the start equals the
/// end, the interval is empty (matches no time). When both start and end are
/// unspecified, the interval matches any time.
typedef Interval = $Interval;

/// An object that represents a latitude/longitude pair.
///
/// This is expressed as a pair of doubles to represent degrees latitude and
/// degrees longitude. Unless specified otherwise, this object must conform to
/// the WGS84 standard. Values must be within normalized ranges.
typedef LatLng = $LatLng;

/// The request definition of the air quality current conditions.
class LookupCurrentConditionsRequest {
  /// Expresses a 'country/region to AQI' relationship.
  ///
  /// Pairs a country/region with a desired AQI so that air quality data that is
  /// required for that country/region will be displayed according to the chosen
  /// AQI. This parameter can be used to specify a non-default AQI for a given
  /// country, for example, to get the US EPA index for Canada rather than the
  /// default index for Canada.
  ///
  /// Optional.
  core.List<CustomLocalAqi>? customLocalAqis;

  /// Additional features that can be optionally enabled.
  ///
  /// Specifying extra computations will result in the relevant elements and
  /// fields to be returned in the response.
  ///
  /// Optional.
  core.List<core.String>? extraComputations;

  /// Allows the client to choose the language for the response.
  ///
  /// If data cannot be provided for that language the API uses the closest
  /// match. Allowed values rely on the IETF standard. Default value is en.
  ///
  /// Optional.
  core.String? languageCode;

  /// The longitude and latitude from which the API looks for air quality
  /// current conditions data.
  ///
  /// Required.
  LatLng? location;

  /// Determines the color palette used for data provided by the 'Universal Air
  /// Quality Index' (UAQI).
  ///
  /// This color palette is relevant just for UAQI, other AQIs have a
  /// predetermined color palette that can't be controlled.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "COLOR_PALETTE_UNSPECIFIED" : The default value. Ignored if passed as a
  /// parameter.
  /// - "RED_GREEN" : Determines whether to use a red/green palette.
  /// - "INDIGO_PERSIAN_DARK" : Determines whether to use a indigo/persian
  /// palette (dark theme).
  /// - "INDIGO_PERSIAN_LIGHT" : Determines whether to use a indigo/persian
  /// palette (light theme).
  core.String? uaqiColorPalette;

  /// If set to true, the Universal AQI will be included in the 'indexes' field
  /// of the response.
  ///
  /// Default value is true.
  ///
  /// Optional.
  core.bool? universalAqi;

  LookupCurrentConditionsRequest({
    this.customLocalAqis,
    this.extraComputations,
    this.languageCode,
    this.location,
    this.uaqiColorPalette,
    this.universalAqi,
  });

  LookupCurrentConditionsRequest.fromJson(core.Map json_)
      : this(
          customLocalAqis: (json_['customLocalAqis'] as core.List?)
              ?.map((value) => CustomLocalAqi.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          extraComputations: (json_['extraComputations'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          languageCode: json_['languageCode'] as core.String?,
          location: json_.containsKey('location')
              ? LatLng.fromJson(
                  json_['location'] as core.Map<core.String, core.dynamic>)
              : null,
          uaqiColorPalette: json_['uaqiColorPalette'] as core.String?,
          universalAqi: json_['universalAqi'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customLocalAqis != null) 'customLocalAqis': customLocalAqis!,
        if (extraComputations != null) 'extraComputations': extraComputations!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (location != null) 'location': location!,
        if (uaqiColorPalette != null) 'uaqiColorPalette': uaqiColorPalette!,
        if (universalAqi != null) 'universalAqi': universalAqi!,
      };
}

class LookupCurrentConditionsResponse {
  /// A rounded down timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  ///
  /// For example: "2014-10-02T15:00:00Z".
  core.String? dateTime;

  /// Health advice and recommended actions related to the reported air quality
  /// conditions.
  ///
  /// Recommendations are tailored differently for populations at risk, groups
  /// with greater sensitivities to pollutants, and the general population.
  HealthRecommendations? healthRecommendations;

  /// Based on the request parameters, this list will include (up to) two air
  /// quality indexes: - Universal AQI.
  ///
  /// Will be returned if the universalAqi boolean is set to true. - Local AQI.
  /// Will be returned if the LOCAL_AQI extra computation is specified.
  core.List<AirQualityIndex>? indexes;

  /// A list of pollutants affecting the location specified in the request.
  ///
  /// Note: This field will be returned only for requests that specified one or
  /// more of the following extra computations: POLLUTANT_ADDITIONAL_INFO,
  /// DOMINANT_POLLUTANT_CONCENTRATION, POLLUTANT_CONCENTRATION.
  core.List<Pollutant>? pollutants;

  /// The ISO_3166-1 alpha-2 code of the country/region corresponding to the
  /// location provided in the request.
  ///
  /// This field might be omitted from the response if the location provided in
  /// the request resides in a disputed territory.
  core.String? regionCode;

  LookupCurrentConditionsResponse({
    this.dateTime,
    this.healthRecommendations,
    this.indexes,
    this.pollutants,
    this.regionCode,
  });

  LookupCurrentConditionsResponse.fromJson(core.Map json_)
      : this(
          dateTime: json_['dateTime'] as core.String?,
          healthRecommendations: json_.containsKey('healthRecommendations')
              ? HealthRecommendations.fromJson(json_['healthRecommendations']
                  as core.Map<core.String, core.dynamic>)
              : null,
          indexes: (json_['indexes'] as core.List?)
              ?.map((value) => AirQualityIndex.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          pollutants: (json_['pollutants'] as core.List?)
              ?.map((value) => Pollutant.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          regionCode: json_['regionCode'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dateTime != null) 'dateTime': dateTime!,
        if (healthRecommendations != null)
          'healthRecommendations': healthRecommendations!,
        if (indexes != null) 'indexes': indexes!,
        if (pollutants != null) 'pollutants': pollutants!,
        if (regionCode != null) 'regionCode': regionCode!,
      };
}

/// The request object of the air quality forecast API.
class LookupForecastRequest {
  /// Expresses a 'country/region to AQI' relationship.
  ///
  /// Pairs a country/region with a desired AQI so that air quality data that is
  /// required for that country/region will be displayed according to the chosen
  /// AQI. This parameter can be used to specify a non-default AQI for a given
  /// country, for example, to get the US EPA index for Canada rather than the
  /// default index for Canada.
  ///
  /// Optional.
  core.List<CustomLocalAqi>? customLocalAqis;

  /// A timestamp for which to return the data for a specific point in time.
  ///
  /// The timestamp is rounded to the previous exact hour. Note: this will
  /// return hourly data for the requested timestamp only (i.e. a single hourly
  /// info element). For example, a request sent where the date_time parameter
  /// is set to 2023-01-03T11:05:49Z will be rounded down to
  /// 2023-01-03T11:00:00Z.
  core.String? dateTime;

  /// Additional features that can be optionally enabled.
  ///
  /// Specifying extra computations will result in the relevant elements and
  /// fields to be returned in the response.
  ///
  /// Optional.
  core.List<core.String>? extraComputations;

  /// Allows the client to choose the language for the response.
  ///
  /// If data cannot be provided for that language the API uses the closest
  /// match. Allowed values rely on the IETF standard (default = 'en').
  ///
  /// Optional.
  core.String? languageCode;

  /// The latitude and longitude for which the API looks for air quality data.
  ///
  /// Required.
  LatLng? location;

  /// The maximum number of hourly info records to return per page (default =
  /// 24).
  ///
  /// Optional.
  core.int? pageSize;

  /// A page token received from a previous forecast call.
  ///
  /// It is used to retrieve the subsequent page.
  ///
  /// Optional.
  core.String? pageToken;

  /// Indicates the start and end period for which to get the forecast data.
  ///
  /// The timestamp is rounded to the previous exact hour.
  Interval? period;

  /// Determines the color palette used for data provided by the 'Universal Air
  /// Quality Index' (UAQI).
  ///
  /// This color palette is relevant just for UAQI, other AQIs have a
  /// predetermined color palette that can't be controlled.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "COLOR_PALETTE_UNSPECIFIED" : The default value. Ignored if passed as a
  /// parameter.
  /// - "RED_GREEN" : Determines whether to use a red/green palette.
  /// - "INDIGO_PERSIAN_DARK" : Determines whether to use a indigo/persian
  /// palette (dark theme).
  /// - "INDIGO_PERSIAN_LIGHT" : Determines whether to use a indigo/persian
  /// palette (light theme).
  core.String? uaqiColorPalette;

  /// If set to true, the Universal AQI will be included in the 'indexes' field
  /// of the response (default = true).
  ///
  /// Optional.
  core.bool? universalAqi;

  LookupForecastRequest({
    this.customLocalAqis,
    this.dateTime,
    this.extraComputations,
    this.languageCode,
    this.location,
    this.pageSize,
    this.pageToken,
    this.period,
    this.uaqiColorPalette,
    this.universalAqi,
  });

  LookupForecastRequest.fromJson(core.Map json_)
      : this(
          customLocalAqis: (json_['customLocalAqis'] as core.List?)
              ?.map((value) => CustomLocalAqi.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          dateTime: json_['dateTime'] as core.String?,
          extraComputations: (json_['extraComputations'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          languageCode: json_['languageCode'] as core.String?,
          location: json_.containsKey('location')
              ? LatLng.fromJson(
                  json_['location'] as core.Map<core.String, core.dynamic>)
              : null,
          pageSize: json_['pageSize'] as core.int?,
          pageToken: json_['pageToken'] as core.String?,
          period: json_.containsKey('period')
              ? Interval.fromJson(
                  json_['period'] as core.Map<core.String, core.dynamic>)
              : null,
          uaqiColorPalette: json_['uaqiColorPalette'] as core.String?,
          universalAqi: json_['universalAqi'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customLocalAqis != null) 'customLocalAqis': customLocalAqis!,
        if (dateTime != null) 'dateTime': dateTime!,
        if (extraComputations != null) 'extraComputations': extraComputations!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (location != null) 'location': location!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (period != null) 'period': period!,
        if (uaqiColorPalette != null) 'uaqiColorPalette': uaqiColorPalette!,
        if (universalAqi != null) 'universalAqi': universalAqi!,
      };
}

/// The response object of the air quality forecast API.
class LookupForecastResponse {
  /// Contains the air quality information for each hour in the requested range.
  ///
  /// For example, if the request is for 48 hours of forecast there will be 48
  /// elements of hourly forecasts.
  ///
  /// Optional.
  core.List<HourlyForecast>? hourlyForecasts;

  /// The token to retrieve the next page.
  ///
  /// Optional.
  core.String? nextPageToken;

  /// The ISO_3166-1 alpha-2 code of the country/region corresponding to the
  /// location provided in the request.
  ///
  /// This field might be omitted from the response if the location provided in
  /// the request resides in a disputed territory.
  ///
  /// Optional.
  core.String? regionCode;

  LookupForecastResponse({
    this.hourlyForecasts,
    this.nextPageToken,
    this.regionCode,
  });

  LookupForecastResponse.fromJson(core.Map json_)
      : this(
          hourlyForecasts: (json_['hourlyForecasts'] as core.List?)
              ?.map((value) => HourlyForecast.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          regionCode: json_['regionCode'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hourlyForecasts != null) 'hourlyForecasts': hourlyForecasts!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (regionCode != null) 'regionCode': regionCode!,
      };
}

/// The request object of the air quality history API.
class LookupHistoryRequest {
  /// Expresses a 'country/region to AQI' relationship.
  ///
  /// Pairs a country/region with a desired AQI so that air quality data that is
  /// required for that country/region will be displayed according to the chosen
  /// AQI. This parameter can be used to specify a non-default AQI for a given
  /// country, for example, to get the US EPA index for Canada rather than the
  /// default index for Canada.
  ///
  /// Optional.
  core.List<CustomLocalAqi>? customLocalAqis;

  /// A timestamp for which to return historical data.
  ///
  /// The timestamp is rounded to the previous exact hour. Note: this will
  /// return hourly data for the requested timestamp only (i.e. a single hourly
  /// info element). For example, a request sent where the dateTime parameter is
  /// set to 2023-01-03T11:05:49Z will be rounded down to 2023-01-03T11:00:00Z.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  core.String? dateTime;

  /// Additional features that can be optionally enabled.
  ///
  /// Specifying extra computations will result in the relevant elements and
  /// fields to be returned in the response.
  ///
  /// Optional.
  core.List<core.String>? extraComputations;

  /// Number from 1 to 720 that indicates the hours range for the request.
  ///
  /// For example: A value of 48 will yield data from the last 48 hours.
  core.int? hours;

  /// Allows the client to choose the language for the response.
  ///
  /// If data cannot be provided for that language the API uses the closest
  /// match. Allowed values rely on the IETF standard. Default value is en.
  ///
  /// Optional.
  core.String? languageCode;

  /// The latitude and longitude for which the API looks for air quality history
  /// data.
  ///
  /// Required.
  LatLng? location;

  /// The maximum number of hourly info records to return per page.
  ///
  /// The default is 72 and the max value is 168 (7 days of data).
  ///
  /// Optional.
  core.int? pageSize;

  /// A page token received from a previous history call.
  ///
  /// It is used to retrieve the subsequent page. Note that when providing a
  /// value for this parameter all other parameters provided must match the call
  /// that provided the page token (the previous call).
  ///
  /// Optional.
  core.String? pageToken;

  /// Indicates the start and end period for which to get the historical data.
  ///
  /// The timestamp is rounded to the previous exact hour.
  Interval? period;

  /// Determines the color palette used for data provided by the 'Universal Air
  /// Quality Index' (UAQI).
  ///
  /// This color palette is relevant just for UAQI, other AQIs have a
  /// predetermined color palette that can't be controlled.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "COLOR_PALETTE_UNSPECIFIED" : The default value. Ignored if passed as a
  /// parameter.
  /// - "RED_GREEN" : Determines whether to use a red/green palette.
  /// - "INDIGO_PERSIAN_DARK" : Determines whether to use a indigo/persian
  /// palette (dark theme).
  /// - "INDIGO_PERSIAN_LIGHT" : Determines whether to use a indigo/persian
  /// palette (light theme).
  core.String? uaqiColorPalette;

  /// If set to true, the Universal AQI will be included in the 'indexes' field
  /// of the response.
  ///
  /// Default value is true.
  ///
  /// Optional.
  core.bool? universalAqi;

  LookupHistoryRequest({
    this.customLocalAqis,
    this.dateTime,
    this.extraComputations,
    this.hours,
    this.languageCode,
    this.location,
    this.pageSize,
    this.pageToken,
    this.period,
    this.uaqiColorPalette,
    this.universalAqi,
  });

  LookupHistoryRequest.fromJson(core.Map json_)
      : this(
          customLocalAqis: (json_['customLocalAqis'] as core.List?)
              ?.map((value) => CustomLocalAqi.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          dateTime: json_['dateTime'] as core.String?,
          extraComputations: (json_['extraComputations'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          hours: json_['hours'] as core.int?,
          languageCode: json_['languageCode'] as core.String?,
          location: json_.containsKey('location')
              ? LatLng.fromJson(
                  json_['location'] as core.Map<core.String, core.dynamic>)
              : null,
          pageSize: json_['pageSize'] as core.int?,
          pageToken: json_['pageToken'] as core.String?,
          period: json_.containsKey('period')
              ? Interval.fromJson(
                  json_['period'] as core.Map<core.String, core.dynamic>)
              : null,
          uaqiColorPalette: json_['uaqiColorPalette'] as core.String?,
          universalAqi: json_['universalAqi'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customLocalAqis != null) 'customLocalAqis': customLocalAqis!,
        if (dateTime != null) 'dateTime': dateTime!,
        if (extraComputations != null) 'extraComputations': extraComputations!,
        if (hours != null) 'hours': hours!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (location != null) 'location': location!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (period != null) 'period': period!,
        if (uaqiColorPalette != null) 'uaqiColorPalette': uaqiColorPalette!,
        if (universalAqi != null) 'universalAqi': universalAqi!,
      };
}

class LookupHistoryResponse {
  /// Contains the air quality information for each hour in the requested range.
  ///
  /// For example, if the request is for 48 hours of history there will be 48
  /// elements of hourly info.
  ///
  /// Optional.
  core.List<HourInfo>? hoursInfo;

  /// The token to retrieve the next page.
  ///
  /// Optional.
  core.String? nextPageToken;

  /// The ISO_3166-1 alpha-2 code of the country/region corresponding to the
  /// location provided in the request.
  ///
  /// This field might be omitted from the response if the location provided in
  /// the request resides in a disputed territory.
  ///
  /// Optional.
  core.String? regionCode;

  LookupHistoryResponse({
    this.hoursInfo,
    this.nextPageToken,
    this.regionCode,
  });

  LookupHistoryResponse.fromJson(core.Map json_)
      : this(
          hoursInfo: (json_['hoursInfo'] as core.List?)
              ?.map((value) => HourInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          regionCode: json_['regionCode'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hoursInfo != null) 'hoursInfo': hoursInfo!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (regionCode != null) 'regionCode': regionCode!,
      };
}

/// Data regarding an air quality pollutant.
class Pollutant {
  /// Additional information about the pollutant.
  AdditionalInfo? additionalInfo;

  /// The pollutant's code name (for example, "so2").
  ///
  /// For a list of supported pollutant codes, see \[Reported
  /// pollutants\](/maps/documentation/air-quality/pollutants#reported_pollutants).
  core.String? code;

  /// The pollutant's concentration level measured by one of the standard air
  /// pollutation measure units.
  Concentration? concentration;

  /// The pollutant's display name.
  ///
  /// For example: "NOx".
  core.String? displayName;

  /// The pollutant's full name.
  ///
  /// For chemical compounds, this is the IUPAC name. Example: "Sulfur Dioxide".
  /// For more information about the IUPAC names table, see
  /// https://iupac.org/what-we-do/periodic-table-of-elements/.
  core.String? fullName;

  Pollutant({
    this.additionalInfo,
    this.code,
    this.concentration,
    this.displayName,
    this.fullName,
  });

  Pollutant.fromJson(core.Map json_)
      : this(
          additionalInfo: json_.containsKey('additionalInfo')
              ? AdditionalInfo.fromJson(json_['additionalInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          code: json_['code'] as core.String?,
          concentration: json_.containsKey('concentration')
              ? Concentration.fromJson(
                  json_['concentration'] as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_['displayName'] as core.String?,
          fullName: json_['fullName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalInfo != null) 'additionalInfo': additionalInfo!,
        if (code != null) 'code': code!,
        if (concentration != null) 'concentration': concentration!,
        if (displayName != null) 'displayName': displayName!,
        if (fullName != null) 'fullName': fullName!,
      };
}
