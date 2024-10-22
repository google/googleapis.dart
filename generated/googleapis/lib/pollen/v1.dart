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

/// Pollen API - v1
///
/// The Pollen API.
///
/// For more information, see
/// <https://developers.google.com/maps/documentation/pollen>
///
/// Create an instance of [PollenApi] to access these resources:
///
/// - [ForecastResource]
/// - [MapTypesResource]
///   - [MapTypesHeatmapTilesResource]
library;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Pollen API.
class PollenApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ForecastResource get forecast => ForecastResource(_requester);
  MapTypesResource get mapTypes => MapTypesResource(_requester);

  PollenApi(http.Client client,
      {core.String rootUrl = 'https://pollen.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ForecastResource {
  final commons.ApiRequester _requester;

  ForecastResource(commons.ApiRequester client) : _requester = client;

  /// Returns up to 5 days of daily pollen information in more than 65
  /// countries, up to 1km resolution.
  ///
  /// Request parameters:
  ///
  /// [days] - Required. A number that indicates how many forecast days to
  /// request (minimum value 1, maximum value is 5).
  ///
  /// [languageCode] - Optional. Allows the client to choose the language for
  /// the response. If data cannot be provided for that language, the API uses
  /// the closest match. Allowed values rely on the IETF BCP-47 standard. The
  /// default value is "en".
  ///
  /// [location_latitude] - The latitude in degrees. It must be in the range
  /// \[-90.0, +90.0\].
  ///
  /// [location_longitude] - The longitude in degrees. It must be in the range
  /// \[-180.0, +180.0\].
  ///
  /// [pageSize] - Optional. The maximum number of daily info records to return
  /// per page. The default and max value is 5, indicating 5 days of data.
  ///
  /// [pageToken] - Optional. A page token received from a previous daily call.
  /// It is used to retrieve the subsequent page. Note that when providing a
  /// value for the page token, all other request parameters provided must match
  /// the previous call that provided the page token.
  ///
  /// [plantsDescription] - Optional. Contains general information about plants,
  /// including details on their seasonality, special shapes and colors,
  /// information about allergic cross-reactions, and plant photos. The default
  /// value is "true".
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
  async.Future<LookupForecastResponse> lookup({
    core.int? days,
    core.String? languageCode,
    core.double? location_latitude,
    core.double? location_longitude,
    core.int? pageSize,
    core.String? pageToken,
    core.bool? plantsDescription,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (days != null) 'days': ['${days}'],
      if (languageCode != null) 'languageCode': [languageCode],
      if (location_latitude != null)
        'location.latitude': ['${location_latitude}'],
      if (location_longitude != null)
        'location.longitude': ['${location_longitude}'],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (plantsDescription != null)
        'plantsDescription': ['${plantsDescription}'],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/forecast:lookup';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LookupForecastResponse.fromJson(
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

  /// Returns a byte array containing the data of the tile PNG image.
  ///
  /// Request parameters:
  ///
  /// [mapType] - Required. The type of the pollen heatmap. Defines the
  /// combination of pollen type and index that the map will graphically
  /// represent.
  /// Possible string values are:
  /// - "MAP_TYPE_UNSPECIFIED" : Unspecified map type.
  /// - "TREE_UPI" : The heatmap type will represent a tree index graphical map.
  /// - "GRASS_UPI" : The heatmap type will represent a grass index graphical
  /// map.
  /// - "WEED_UPI" : The heatmap type will represent a weed index graphical map.
  ///
  /// [zoom] - Required. The map's zoom level. Defines how large or small the
  /// contents of a map appear in a map view. * Zoom level 0 is the entire world
  /// in a single tile. * Zoom level 1 is the entire world in 4 tiles. * Zoom
  /// level 2 is the entire world in 16 tiles. * Zoom level 16 is the entire
  /// world in 65,536 tiles. Allowed values: 0-16
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

/// This object contains the daily forecast information for each day requested.
class DayInfo {
  /// The date in UTC at which the pollen forecast data is represented.
  Date? date;

  /// This list will include up to 15 pollen species affecting the location
  /// specified in the request.
  core.List<PlantInfo>? plantInfo;

  /// This list will include up to three pollen types (GRASS, WEED, TREE)
  /// affecting the location specified in the request.
  core.List<PollenTypeInfo>? pollenTypeInfo;

  DayInfo({
    this.date,
    this.plantInfo,
    this.pollenTypeInfo,
  });

  DayInfo.fromJson(core.Map json_)
      : this(
          date: json_.containsKey('date')
              ? Date.fromJson(
                  json_['date'] as core.Map<core.String, core.dynamic>)
              : null,
          plantInfo: (json_['plantInfo'] as core.List?)
              ?.map((value) => PlantInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          pollenTypeInfo: (json_['pollenTypeInfo'] as core.List?)
              ?.map((value) => PollenTypeInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (date != null) 'date': date!,
        if (plantInfo != null) 'plantInfo': plantInfo!,
        if (pollenTypeInfo != null) 'pollenTypeInfo': pollenTypeInfo!,
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

/// This object contains data representing specific pollen index value, category
/// and description.
class IndexInfo {
  /// Text classification of index numerical score interpretation.
  ///
  /// The index consists of six categories: * 0: "None" * 1: "Very low" * 2:
  /// "Low" * 3: "Moderate" * 4: "High" * 5: "Very high
  core.String? category;

  /// The index's code.
  ///
  /// This field represents the index for programming purposes by using snake
  /// cases instead of spaces. Example: "UPI".
  /// Possible string values are:
  /// - "INDEX_UNSPECIFIED" : Unspecified index.
  /// - "UPI" : Universal Pollen Index.
  core.String? code;

  /// The color used to represent the Pollen Index numeric score.
  Color? color;

  /// A human readable representation of the index name.
  ///
  /// Example: "Universal Pollen Index".
  core.String? displayName;

  /// Textual explanation of current index level.
  core.String? indexDescription;

  /// The index's numeric score.
  ///
  /// Numeric range is between 0 and 5.
  core.int? value;

  IndexInfo({
    this.category,
    this.code,
    this.color,
    this.displayName,
    this.indexDescription,
    this.value,
  });

  IndexInfo.fromJson(core.Map json_)
      : this(
          category: json_['category'] as core.String?,
          code: json_['code'] as core.String?,
          color: json_.containsKey('color')
              ? Color.fromJson(
                  json_['color'] as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_['displayName'] as core.String?,
          indexDescription: json_['indexDescription'] as core.String?,
          value: json_['value'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (category != null) 'category': category!,
        if (code != null) 'code': code!,
        if (color != null) 'color': color!,
        if (displayName != null) 'displayName': displayName!,
        if (indexDescription != null) 'indexDescription': indexDescription!,
        if (value != null) 'value': value!,
      };
}

class LookupForecastResponse {
  /// This object contains the daily forecast information for each day
  /// requested.
  ///
  /// Required.
  core.List<DayInfo>? dailyInfo;

  /// The token to retrieve the next page.
  ///
  /// Optional.
  core.String? nextPageToken;

  /// The ISO_3166-1 alpha-2 code of the country/region corresponding to the
  /// location provided in the request.
  ///
  /// This field might be omitted from the response if the location provided in
  /// the request resides in a disputed territory.
  core.String? regionCode;

  LookupForecastResponse({
    this.dailyInfo,
    this.nextPageToken,
    this.regionCode,
  });

  LookupForecastResponse.fromJson(core.Map json_)
      : this(
          dailyInfo: (json_['dailyInfo'] as core.List?)
              ?.map((value) => DayInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          regionCode: json_['regionCode'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dailyInfo != null) 'dailyInfo': dailyInfo!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (regionCode != null) 'regionCode': regionCode!,
      };
}

/// Contains general information about plants, including details on their
/// seasonality, special shapes and colors, information about allergic
/// cross-reactions, and plant photos.
class PlantDescription {
  /// Textual description of pollen cross reaction plants.
  ///
  /// Example: Alder, Hazel, Hornbeam, Beech, Willow, and Oak pollen.
  core.String? crossReaction;

  /// A human readable representation of the plant family name.
  ///
  /// Example: "Betulaceae (the Birch family)".
  core.String? family;

  /// Link to the picture of the plant.
  core.String? picture;

  /// Link to a closeup picture of the plant.
  core.String? pictureCloseup;

  /// Textual list of explanations of seasons where the pollen is active.
  ///
  /// Example: "Late winter, spring".
  core.String? season;

  /// Textual description of the plants' colors of leaves, bark, flowers or
  /// seeds that helps identify the plant.
  core.String? specialColors;

  /// Textual description of the plants' shapes of leaves, bark, flowers or
  /// seeds that helps identify the plant.
  core.String? specialShapes;

  /// The plant's pollen type.
  ///
  /// For example: "GRASS". A list of all available codes could be found here.
  /// Possible string values are:
  /// - "POLLEN_TYPE_UNSPECIFIED" : Unspecified plant type.
  /// - "GRASS" : Grass pollen type.
  /// - "TREE" : Tree pollen type.
  /// - "WEED" : Weed pollen type.
  core.String? type;

  PlantDescription({
    this.crossReaction,
    this.family,
    this.picture,
    this.pictureCloseup,
    this.season,
    this.specialColors,
    this.specialShapes,
    this.type,
  });

  PlantDescription.fromJson(core.Map json_)
      : this(
          crossReaction: json_['crossReaction'] as core.String?,
          family: json_['family'] as core.String?,
          picture: json_['picture'] as core.String?,
          pictureCloseup: json_['pictureCloseup'] as core.String?,
          season: json_['season'] as core.String?,
          specialColors: json_['specialColors'] as core.String?,
          specialShapes: json_['specialShapes'] as core.String?,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (crossReaction != null) 'crossReaction': crossReaction!,
        if (family != null) 'family': family!,
        if (picture != null) 'picture': picture!,
        if (pictureCloseup != null) 'pictureCloseup': pictureCloseup!,
        if (season != null) 'season': season!,
        if (specialColors != null) 'specialColors': specialColors!,
        if (specialShapes != null) 'specialShapes': specialShapes!,
        if (type != null) 'type': type!,
      };
}

/// This object contains the daily information on specific plant.
class PlantInfo {
  /// The plant code name.
  ///
  /// For example: "COTTONWOOD". A list of all available codes could be found
  /// here.
  /// Possible string values are:
  /// - "PLANT_UNSPECIFIED" : Unspecified plant code.
  /// - "ALDER" : Alder is classified as a tree pollen type.
  /// - "ASH" : Ash is classified as a tree pollen type.
  /// - "BIRCH" : Birch is classified as a tree pollen type.
  /// - "COTTONWOOD" : Cottonwood is classified as a tree pollen type.
  /// - "ELM" : Elm is classified as a tree pollen type.
  /// - "MAPLE" : Maple is classified as a tree pollen type.
  /// - "OLIVE" : Olive is classified as a tree pollen type.
  /// - "JUNIPER" : Juniper is classified as a tree pollen type.
  /// - "OAK" : Oak is classified as a tree pollen type.
  /// - "PINE" : Pine is classified as a tree pollen type.
  /// - "CYPRESS_PINE" : Cypress pine is classified as a tree pollen type.
  /// - "HAZEL" : Hazel is classified as a tree pollen type.
  /// - "GRAMINALES" : Graminales is classified as a grass pollen type.
  /// - "RAGWEED" : Ragweed is classified as a weed pollen type.
  /// - "MUGWORT" : Mugwort is classified as a weed pollen type.
  /// - "JAPANESE_CEDAR" : Japanese cedar is classified as a tree pollen type.
  /// - "JAPANESE_CYPRESS" : Japanese cypress is classified as a tree pollen
  /// type.
  core.String? code;

  /// A human readable representation of the plant name.
  ///
  /// Example: “Cottonwood".
  core.String? displayName;

  /// Indication of either the plant is in season or not.
  core.bool? inSeason;

  /// This object contains data representing specific pollen index value,
  /// category and description.
  IndexInfo? indexInfo;

  /// Contains general information about plants, including details on their
  /// seasonality, special shapes and colors, information about allergic
  /// cross-reactions, and plant photos.
  PlantDescription? plantDescription;

  PlantInfo({
    this.code,
    this.displayName,
    this.inSeason,
    this.indexInfo,
    this.plantDescription,
  });

  PlantInfo.fromJson(core.Map json_)
      : this(
          code: json_['code'] as core.String?,
          displayName: json_['displayName'] as core.String?,
          inSeason: json_['inSeason'] as core.bool?,
          indexInfo: json_.containsKey('indexInfo')
              ? IndexInfo.fromJson(
                  json_['indexInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          plantDescription: json_.containsKey('plantDescription')
              ? PlantDescription.fromJson(json_['plantDescription']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (displayName != null) 'displayName': displayName!,
        if (inSeason != null) 'inSeason': inSeason!,
        if (indexInfo != null) 'indexInfo': indexInfo!,
        if (plantDescription != null) 'plantDescription': plantDescription!,
      };
}

/// This object contains the pollen type index and health recommendation
/// information on specific pollen type.
class PollenTypeInfo {
  /// The pollen type's code name.
  ///
  /// For example: "GRASS"
  /// Possible string values are:
  /// - "POLLEN_TYPE_UNSPECIFIED" : Unspecified plant type.
  /// - "GRASS" : Grass pollen type.
  /// - "TREE" : Tree pollen type.
  /// - "WEED" : Weed pollen type.
  core.String? code;

  /// A human readable representation of the pollen type name.
  ///
  /// Example: "Grass"
  core.String? displayName;

  /// Textual list of explanations, related to health insights based on the
  /// current pollen levels.
  core.List<core.String>? healthRecommendations;

  /// Indication whether the plant is in season or not.
  core.bool? inSeason;

  /// Contains the Universal Pollen Index (UPI) data for the pollen type.
  IndexInfo? indexInfo;

  PollenTypeInfo({
    this.code,
    this.displayName,
    this.healthRecommendations,
    this.inSeason,
    this.indexInfo,
  });

  PollenTypeInfo.fromJson(core.Map json_)
      : this(
          code: json_['code'] as core.String?,
          displayName: json_['displayName'] as core.String?,
          healthRecommendations: (json_['healthRecommendations'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          inSeason: json_['inSeason'] as core.bool?,
          indexInfo: json_.containsKey('indexInfo')
              ? IndexInfo.fromJson(
                  json_['indexInfo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (displayName != null) 'displayName': displayName!,
        if (healthRecommendations != null)
          'healthRecommendations': healthRecommendations!,
        if (inSeason != null) 'inSeason': inSeason!,
        if (indexInfo != null) 'indexInfo': indexInfo!,
      };
}
