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

/// Places Aggregate API - v1
///
/// Places Aggregate API.
///
/// For more information, see
/// <https://developers.google.com/maps/documentation/places-aggregate/overview>
///
/// Create an instance of [AreaInsightsApi] to access these resources:
///
/// - [V1Resource]
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

/// Places Aggregate API.
class AreaInsightsApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  V1Resource get v1 => V1Resource(_requester);

  AreaInsightsApi(
    http.Client client, {
    core.String rootUrl = 'https://areainsights.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class V1Resource {
  final commons.ApiRequester _requester;

  V1Resource(commons.ApiRequester client) : _requester = client;

  /// This method lets you retrieve insights about areas using a variety of
  /// filter such as: area, place type, operating status, price level and
  /// ratings.
  ///
  /// Currently "count" and "places" insights are supported. With "count"
  /// insights you can answer questions such as "How many restaurant are located
  /// in California that are operational, are inexpensive and have an average
  /// rating of at least 4 stars" (see `insight` enum for more details). With
  /// "places" insights, you can determine which places match the requested
  /// filter. Clients can then use those place resource names to fetch more
  /// details about each individual place using the Places API.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ComputeInsightsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ComputeInsightsResponse> computeInsights(
    ComputeInsightsRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1:computeInsights';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ComputeInsightsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// A circle is defined by a center point and radius in meters.
class Circle {
  /// The latitude and longitude of the center of the circle.
  LatLng? latLng;

  /// **Format:** Must be in the format `places/PLACE_ID`, where `PLACE_ID` is
  /// the unique identifier of a place.
  ///
  /// For example: `places/ChIJgUbEo8cfqokR5lP9_Wh_DaM`.
  core.String? place;

  /// The radius of the circle in meters
  ///
  /// Optional.
  core.int? radius;

  Circle({this.latLng, this.place, this.radius});

  Circle.fromJson(core.Map json_)
    : this(
        latLng: json_.containsKey('latLng')
            ? LatLng.fromJson(
                json_['latLng'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        place: json_['place'] as core.String?,
        radius: json_['radius'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final latLng = this.latLng;
    final place = this.place;
    final radius = this.radius;
    return {'latLng': ?latLng, 'place': ?place, 'radius': ?radius};
  }
}

/// Request for the ComputeInsights RPC.
class ComputeInsightsRequest {
  /// Insight filter.
  ///
  /// Required.
  Filter? filter;

  /// Insights to compute.
  ///
  /// Currently only INSIGHT_COUNT and INSIGHT_PLACES are supported.
  ///
  /// Required.
  core.List<core.String>? insights;

  ComputeInsightsRequest({this.filter, this.insights});

  ComputeInsightsRequest.fromJson(core.Map json_)
    : this(
        filter: json_.containsKey('filter')
            ? Filter.fromJson(
                json_['filter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        insights: (json_['insights'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final filter = this.filter;
    final insights = this.insights;
    return {'filter': ?filter, 'insights': ?insights};
  }
}

/// Response for the ComputeInsights RPC.
class ComputeInsightsResponse {
  /// Result for Insights.INSIGHT_COUNT.
  core.String? count;

  /// Result for Insights.INSIGHT_PLACES.
  core.List<PlaceInsight>? placeInsights;

  ComputeInsightsResponse({this.count, this.placeInsights});

  ComputeInsightsResponse.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.String?,
        placeInsights: (json_['placeInsights'] as core.List?)
            ?.map(
              (value) => PlaceInsight.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final count = this.count;
    final placeInsights = this.placeInsights;
    return {'count': ?count, 'placeInsights': ?placeInsights};
  }
}

/// Custom Area.
class CustomArea {
  /// The custom area represented as a polygon
  ///
  /// Required.
  Polygon? polygon;

  CustomArea({this.polygon});

  CustomArea.fromJson(core.Map json_)
    : this(
        polygon: json_.containsKey('polygon')
            ? Polygon.fromJson(
                json_['polygon'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final polygon = this.polygon;
    return {'polygon': ?polygon};
  }
}

/// Filters for the ComputeInsights RPC.
class Filter {
  /// Restricts results to places which are located in the area specified by
  /// location filters.
  ///
  /// Required.
  LocationFilter? locationFilter;

  /// Restricts results to places whose operating status is included on this
  /// list.
  ///
  /// If operating_status is not set, OPERATING_STATUS_OPERATIONAL is used as
  /// default.
  ///
  /// Optional.
  core.List<core.String>? operatingStatus;

  /// Restricts results to places whose price level is included on this list.
  ///
  /// If `price_levels` is not set, all price levels are included in the
  /// results.
  ///
  /// Optional.
  core.List<core.String>? priceLevels;

  /// Restricts results to places whose average user ratings are in the range
  /// specified by rating_filter.
  ///
  /// If rating_filter is not set, all ratings are included in the result.
  ///
  /// Optional.
  RatingFilter? ratingFilter;

  /// Place type filters.
  ///
  /// Required.
  TypeFilter? typeFilter;

  Filter({
    this.locationFilter,
    this.operatingStatus,
    this.priceLevels,
    this.ratingFilter,
    this.typeFilter,
  });

  Filter.fromJson(core.Map json_)
    : this(
        locationFilter: json_.containsKey('locationFilter')
            ? LocationFilter.fromJson(
                json_['locationFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        operatingStatus: (json_['operatingStatus'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        priceLevels: (json_['priceLevels'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        ratingFilter: json_.containsKey('ratingFilter')
            ? RatingFilter.fromJson(
                json_['ratingFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        typeFilter: json_.containsKey('typeFilter')
            ? TypeFilter.fromJson(
                json_['typeFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final locationFilter = this.locationFilter;
    final operatingStatus = this.operatingStatus;
    final priceLevels = this.priceLevels;
    final ratingFilter = this.ratingFilter;
    final typeFilter = this.typeFilter;
    return {
      'locationFilter': ?locationFilter,
      'operatingStatus': ?operatingStatus,
      'priceLevels': ?priceLevels,
      'ratingFilter': ?ratingFilter,
      'typeFilter': ?typeFilter,
    };
  }
}

/// An object that represents a latitude/longitude pair.
///
/// This is expressed as a pair of doubles to represent degrees latitude and
/// degrees longitude. Unless specified otherwise, this object must conform to
/// the WGS84 standard. Values must be within normalized ranges.
typedef LatLng = $LatLng;

/// Location filters.
///
/// Specifies the area of interest for the insight.
class LocationFilter {
  /// Area as a circle.
  Circle? circle;

  /// Custom area specified by a polygon.
  CustomArea? customArea;

  /// Area as region.
  Region? region;

  LocationFilter({this.circle, this.customArea, this.region});

  LocationFilter.fromJson(core.Map json_)
    : this(
        circle: json_.containsKey('circle')
            ? Circle.fromJson(
                json_['circle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        customArea: json_.containsKey('customArea')
            ? CustomArea.fromJson(
                json_['customArea'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        region: json_.containsKey('region')
            ? Region.fromJson(
                json_['region'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final circle = this.circle;
    final customArea = this.customArea;
    final region = this.region;
    return {'circle': ?circle, 'customArea': ?customArea, 'region': ?region};
  }
}

/// Holds information about a place
class PlaceInsight {
  /// The unique identifier of the place.
  ///
  /// This resource name can be used to retrieve details about the place using
  /// the
  /// [Places API](https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places/get).
  core.String? place;

  PlaceInsight({this.place});

  PlaceInsight.fromJson(core.Map json_)
    : this(place: json_['place'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final place = this.place;
    return {'place': ?place};
  }
}

/// A polygon is represented by a series of connected coordinates in an
/// counterclockwise ordered sequence.
///
/// The coordinates form a closed loop and define a filled region. The first and
/// last coordinates are equivalent, and they must contain identical values. The
/// format is a simplified version of GeoJSON polygons (we only support one
/// counterclockwise exterior ring).
class Polygon {
  /// The coordinates that define the polygon.
  ///
  /// Optional.
  core.List<LatLng>? coordinates;

  Polygon({this.coordinates});

  Polygon.fromJson(core.Map json_)
    : this(
        coordinates: (json_['coordinates'] as core.List?)
            ?.map(
              (value) =>
                  LatLng.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final coordinates = this.coordinates;
    return {'coordinates': ?coordinates};
  }
}

/// Average user rating filters.
class RatingFilter {
  /// Restricts results to places whose average user rating is strictly less
  /// than or equal to max_rating.
  ///
  /// Values must be between 1.0 and 5.0.
  ///
  /// Optional.
  core.double? maxRating;

  /// Restricts results to places whose average user rating is greater than or
  /// equal to min_rating.
  ///
  /// Values must be between 1.0 and 5.0.
  ///
  /// Optional.
  core.double? minRating;

  RatingFilter({this.maxRating, this.minRating});

  RatingFilter.fromJson(core.Map json_)
    : this(
        maxRating: (json_['maxRating'] as core.num?)?.toDouble(),
        minRating: (json_['minRating'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final maxRating = this.maxRating;
    final minRating = this.minRating;
    return {'maxRating': ?maxRating, 'minRating': ?minRating};
  }
}

/// A region is a geographic boundary such as: cities, postal codes, counties,
/// states, etc.
class Region {
  /// The
  /// [place ID](https://developers.google.com/maps/documentation/places/web-service/place-id)
  /// of the geographic region.
  ///
  /// Not all region types are supported; see documentation for details.
  /// **Format:** Must be in the format `places/PLACE_ID`, where `PLACE_ID` is
  /// the unique identifier of a place. For example:
  /// `places/ChIJPV4oX_65j4ARVW8IJ6IJUYs`.
  core.String? place;

  Region({this.place});

  Region.fromJson(core.Map json_) : this(place: json_['place'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final place = this.place;
    return {'place': ?place};
  }
}

/// Place type filters.
///
/// Only Place types from
/// [Table a](https://developers.google.com/maps/documentation/places/web-service/place-types#table-a)
/// are supported. A place can only have a single primary type associated with
/// it. For example, the primary type might be "mexican_restaurant" or
/// "steak_house". Use included_primary_types and excluded_primary_types to
/// filter the results on a place's primary type. A place can also have multiple
/// type values associated with it. For example a restaurant might have the
/// following types: "seafood_restaurant", "restaurant", "food",
/// "point_of_interest", "establishment". Use included_types and excluded_types
/// to filter the results on the list of types associated with a place. If a
/// search is specified with multiple type restrictions, only places that
/// satisfy all of the restrictions are returned. For example, if you specify
/// {"included_types": \["restaurant"\], "excluded_primary_types":
/// \["steak_house"\]}, the returned places provide "restaurant" related
/// services but do not operate primarily as a "steak_house". If there are any
/// conflicting types, i.e. a type appears in both included_types and
/// excluded_types types or included_primary_types and excluded_primary_types,
/// an INVALID_ARGUMENT error is returned. One of included_types or
/// included_primary_types must be set.
class TypeFilter {
  /// Excluded primary Place types.
  ///
  /// Optional.
  core.List<core.String>? excludedPrimaryTypes;

  /// Excluded Place types.
  ///
  /// Optional.
  core.List<core.String>? excludedTypes;

  /// Included primary Place types.
  ///
  /// Optional.
  core.List<core.String>? includedPrimaryTypes;

  /// Included Place types.
  ///
  /// Optional.
  core.List<core.String>? includedTypes;

  TypeFilter({
    this.excludedPrimaryTypes,
    this.excludedTypes,
    this.includedPrimaryTypes,
    this.includedTypes,
  });

  TypeFilter.fromJson(core.Map json_)
    : this(
        excludedPrimaryTypes: (json_['excludedPrimaryTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        excludedTypes: (json_['excludedTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        includedPrimaryTypes: (json_['includedPrimaryTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        includedTypes: (json_['includedTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final excludedPrimaryTypes = this.excludedPrimaryTypes;
    final excludedTypes = this.excludedTypes;
    final includedPrimaryTypes = this.includedPrimaryTypes;
    final includedTypes = this.includedTypes;
    return {
      'excludedPrimaryTypes': ?excludedPrimaryTypes,
      'excludedTypes': ?excludedTypes,
      'includedPrimaryTypes': ?includedPrimaryTypes,
      'includedTypes': ?includedTypes,
    };
  }
}
