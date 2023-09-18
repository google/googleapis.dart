// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_library_directive
// ignore_for_file: unnecessary_string_interpolations

/// Places API (New) - v1
///
/// For more information, see
/// <https://mapsplatform.google.com/maps-products/#places-section>
///
/// Create an instance of [PlacesApi] to access these resources:
///
/// - [TextResource]
/// - [PlacesResource]
library places_v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

class PlacesApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// Private Service: https://www.googleapis.com/auth/maps-platform.places
  static const mapsPlatformPlacesScope =
      'https://www.googleapis.com/auth/maps-platform.places';

  /// Private Service:
  /// https://www.googleapis.com/auth/maps-platform.places.textsearch
  static const mapsPlatformPlacesTextsearchScope =
      'https://www.googleapis.com/auth/maps-platform.places.textsearch';

  final commons.ApiRequester _requester;

  TextResource get Text => TextResource(_requester);
  PlacesResource get places => PlacesResource(_requester);

  PlacesApi(http.Client client,
      {core.String rootUrl = 'https://places.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class TextResource {
  final commons.ApiRequester _requester;

  TextResource(commons.ApiRequester client) : _requester = client;

  /// Text query based place search.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleMapsPlacesV1SearchTextResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleMapsPlacesV1SearchTextResponse> search(
    GoogleMapsPlacesV1SearchTextRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/Text:search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleMapsPlacesV1SearchTextResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class PlacesResource {
  final commons.ApiRequester _requester;

  PlacesResource(commons.ApiRequester client) : _requester = client;

  /// Text query based place search.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleMapsPlacesV1SearchTextResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleMapsPlacesV1SearchTextResponse> searchText(
    GoogleMapsPlacesV1SearchTextRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/places:searchText';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleMapsPlacesV1SearchTextResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A latitude-longitude viewport, represented as two diagonally opposite `low`
/// and `high` points.
///
/// A viewport is considered a closed region, i.e. it includes its boundary. The
/// latitude bounds must range between -90 to 90 degrees inclusive, and the
/// longitude bounds must range between -180 to 180 degrees inclusive. Various
/// cases include: - If `low` = `high`, the viewport consists of that single
/// point. - If `low.longitude` \> `high.longitude`, the longitude range is
/// inverted (the viewport crosses the 180 degree longitude line). - If
/// `low.longitude` = -180 degrees and `high.longitude` = 180 degrees, the
/// viewport includes all longitudes. - If `low.longitude` = 180 degrees and
/// `high.longitude` = -180 degrees, the longitude range is empty. - If
/// `low.latitude` \> `high.latitude`, the latitude range is empty. Both `low`
/// and `high` must be populated, and the represented box cannot be empty (as
/// specified by the definitions above). An empty viewport will result in an
/// error. For example, this viewport fully encloses New York City: { "low": {
/// "latitude": 40.477398, "longitude": -74.259087 }, "high": { "latitude":
/// 40.91618, "longitude": -73.70018 } }
class GoogleGeoTypeViewport {
  /// The high point of the viewport.
  ///
  /// Required.
  GoogleTypeLatLng? high;

  /// The low point of the viewport.
  ///
  /// Required.
  GoogleTypeLatLng? low;

  GoogleGeoTypeViewport({
    this.high,
    this.low,
  });

  GoogleGeoTypeViewport.fromJson(core.Map json_)
      : this(
          high: json_.containsKey('high')
              ? GoogleTypeLatLng.fromJson(
                  json_['high'] as core.Map<core.String, core.dynamic>)
              : null,
          low: json_.containsKey('low')
              ? GoogleTypeLatLng.fromJson(
                  json_['low'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (high != null) 'high': high!,
        if (low != null) 'low': low!,
      };
}

/// Information about the author of the UGC data.
///
/// Used in Photo, and Review.
class GoogleMapsPlacesV1AuthorAttribution {
  /// Name of the author of the Photo or Review.
  ///
  /// Output only.
  core.String? displayName;

  /// Profile photo URI of the author of the Photo or Review.
  ///
  /// Output only.
  core.String? photoUri;

  /// URI of the author of the Photo or Review.
  ///
  /// Output only.
  core.String? uri;

  GoogleMapsPlacesV1AuthorAttribution({
    this.displayName,
    this.photoUri,
    this.uri,
  });

  GoogleMapsPlacesV1AuthorAttribution.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          photoUri: json_.containsKey('photoUri')
              ? json_['photoUri'] as core.String
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (photoUri != null) 'photoUri': photoUri!,
        if (uri != null) 'uri': uri!,
      };
}

/// Circle with a LatLng as center and radius.
class GoogleMapsPlacesV1Circle {
  /// Center latitude and longitude.
  ///
  /// The range of latitude must be within \[-90.0, 90.0\]. The range of the
  /// longitude must be within \[-180.0, 180.0\].
  ///
  /// Required.
  GoogleTypeLatLng? center;

  /// Radius measured in meters.
  ///
  /// The radius must be within \[0.0, 50000.0\].
  ///
  /// Required.
  core.double? radius;

  GoogleMapsPlacesV1Circle({
    this.center,
    this.radius,
  });

  GoogleMapsPlacesV1Circle.fromJson(core.Map json_)
      : this(
          center: json_.containsKey('center')
              ? GoogleTypeLatLng.fromJson(
                  json_['center'] as core.Map<core.String, core.dynamic>)
              : null,
          radius: json_.containsKey('radius')
              ? (json_['radius'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (center != null) 'center': center!,
        if (radius != null) 'radius': radius!,
      };
}

/// int 32 range.
///
/// Both min and max are optional. If only min is set, then the range only has a
/// lower bound. If only max is set, then range only has an upper bound. At
/// least one of min and max must be set. Values are inclusive.
class GoogleMapsPlacesV1Int32Range {
  /// Upper bound.
  ///
  /// If unset, behavior is documented on the range field.
  core.int? max;

  /// Lower bound.
  ///
  /// If unset, behavior is documented on the range field.
  core.int? min;

  GoogleMapsPlacesV1Int32Range({
    this.max,
    this.min,
  });

  GoogleMapsPlacesV1Int32Range.fromJson(core.Map json_)
      : this(
          max: json_.containsKey('max') ? json_['max'] as core.int : null,
          min: json_.containsKey('min') ? json_['min'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (max != null) 'max': max!,
        if (min != null) 'min': min!,
      };
}

/// All the information representing a Place.
class GoogleMapsPlacesV1Place {
  /// Repeated components for each locality level.
  ///
  /// Output only.
  core.List<GoogleMapsPlacesV1PlaceAddressComponent>? addressComponents;

  /// The place's address in adr microformat: http://microformats.org/wiki/adr.
  ///
  /// Output only.
  core.String? adrFormatAddress;

  /// A set of data provider that must be shown with this result.
  ///
  /// Output only.
  core.List<GoogleMapsPlacesV1PlaceAttribution>? attributions;

  /// The business status for the place.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "BUSINESS_STATUS_UNSPECIFIED" : Default value. This value is unused.
  /// - "OPERATIONAL" : The establishment is operational, not necessarily open
  /// now.
  /// - "CLOSED_TEMPORARILY" : The establishment is temporarily closed.
  /// - "CLOSED_PERMANENTLY" : The establishment is permanently closed.
  core.String? businessStatus;

  /// Specifies if the business supports curbside pickup.
  ///
  /// Output only.
  core.bool? curbsidePickup;

  /// The hours of operation for the next seven days (including today).
  ///
  /// The time period starts at midnight on the date of the request and ends at
  /// 11:59 pm six days later. This field includes the special_days subfield of
  /// all hours, set for dates that have exceptional hours.
  ///
  /// Output only.
  GoogleMapsPlacesV1PlaceOpeningHours? currentOpeningHours;

  /// Contains an array of entries for the next seven days including information
  /// about secondary hours of a business.
  ///
  /// Secondary hours are different from a business's main hours. For example, a
  /// restaurant can specify drive through hours or delivery hours as its
  /// secondary hours. This field populates the type subfield, which draws from
  /// a predefined list of opening hours types (such as DRIVE_THROUGH, PICKUP,
  /// or TAKEOUT) based on the types of the place. This field includes the
  /// special_days subfield of all hours, set for dates that have exceptional
  /// hours.
  ///
  /// Output only.
  core.List<GoogleMapsPlacesV1PlaceOpeningHours>? currentSecondaryOpeningHours;

  /// Specifies if the business supports delivery.
  ///
  /// Output only.
  core.bool? delivery;

  /// Specifies if the business supports indoor or outdoor seating options.
  ///
  /// Output only.
  core.bool? dineIn;

  /// The localized name of the place, suitable as a short human-readable
  /// description.
  ///
  /// For example, "Google Sydney", "Starbucks", "Pyrmont", etc.
  ///
  /// Output only.
  GoogleTypeLocalizedText? displayName;

  /// Contains a summary of the place.
  ///
  /// A summary is comprised of a textual overview, and also includes the
  /// language code for these if applicable. Summary text must be presented
  /// as-is and can not be modified or altered.
  ///
  /// Output only.
  GoogleTypeLocalizedText? editorialSummary;

  /// A full, human-readable address for this place.
  ///
  /// Output only.
  core.String? formattedAddress;

  /// A URL providing more information about this place.
  ///
  /// Output only.
  core.String? googleMapsUri;

  /// Background color for icon_mask in hex format, e.g. #909CE1.
  ///
  /// Output only.
  core.String? iconBackgroundColor;

  /// A truncated URL to an v2 icon mask.
  ///
  /// User can access different icon type by appending type suffix to the end
  /// (eg, ".svg" or ".png").
  ///
  /// Output only.
  core.String? iconMaskBaseUri;

  /// The unique identifier of a place.
  ///
  /// Output only.
  core.String? id;

  /// A human-readable phone number for the place, in international format.
  ///
  /// Output only.
  core.String? internationalPhoneNumber;

  /// The position of this place.
  ///
  /// Output only.
  GoogleTypeLatLng? location;

  /// An ID representing this place which may be used to look up this place
  /// again (a.k.a. the API "resource" name: places/).
  ///
  /// Output only.
  core.String? name;

  /// A human-readable phone number for the place, in national format.
  ///
  /// Output only.
  core.String? nationalPhoneNumber;

  /// The regular hours of operation.
  ///
  /// Output only.
  GoogleMapsPlacesV1PlaceOpeningHours? openingHours;

  /// Plus code of the place location lat/long.
  ///
  /// Output only.
  GoogleMapsPlacesV1PlacePlusCode? plusCode;

  /// Price level of the place.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PRICE_LEVEL_UNSPECIFIED" : Place price level is unspecified or unknown.
  /// - "PRICE_LEVEL_FREE" : Place provides free services.
  /// - "PRICE_LEVEL_INEXPENSIVE" : Place provides inexpensive services.
  /// - "PRICE_LEVEL_MODERATE" : Place provides moderately priced services.
  /// - "PRICE_LEVEL_EXPENSIVE" : Place provides expensive services.
  /// - "PRICE_LEVEL_VERY_EXPENSIVE" : Place provides very expensive services.
  core.String? priceLevel;

  /// A rating between 1.0 and 5.0, based on user reviews of this place.
  ///
  /// Output only.
  core.double? rating;

  /// Specifies if the place supports reservations.
  ///
  /// Output only.
  core.bool? reservable;

  /// List of reviews about this place.
  ///
  /// Output only.
  core.List<GoogleMapsPlacesV1Review>? reviews;

  /// Contains an array of entries for information about regular secondary hours
  /// of a business.
  ///
  /// Secondary hours are different from a business's main hours. For example, a
  /// restaurant can specify drive through hours or delivery hours as its
  /// secondary hours. This field populates the type subfield, which draws from
  /// a predefined list of opening hours types (such as DRIVE_THROUGH, PICKUP,
  /// or TAKEOUT) based on the types of the place.
  ///
  /// Output only.
  core.List<GoogleMapsPlacesV1PlaceOpeningHours>? secondaryOpeningHours;

  /// Specifies if the place serves beer.
  ///
  /// Output only.
  core.bool? servesBeer;

  /// Specifies if the place serves breakfast.
  ///
  /// Output only.
  core.bool? servesBreakfast;

  /// Specifies if the place serves brunch.
  ///
  /// Output only.
  core.bool? servesBrunch;

  /// Specifies if the place serves dinner.
  ///
  /// Output only.
  core.bool? servesDinner;

  /// Specifies if the place serves lunch.
  ///
  /// Output only.
  core.bool? servesLunch;

  /// Specifies if the place serves vegetarian food.
  ///
  /// Output only.
  core.bool? servesVegetarianFood;

  /// Specifies if the place serves wine.
  ///
  /// Output only.
  core.bool? servesWine;

  /// Specifies if the business supports takeout.
  ///
  /// Output only.
  core.bool? takeout;

  /// A set of type tags for this result.
  ///
  /// For example, "political" and "locality".
  ///
  /// Output only.
  core.List<core.String>? types;

  /// The total number of reviews (with or without text) for this place.
  ///
  /// Output only.
  core.int? userRatingCount;

  /// Number of minutes this place's timezone is currently offset from UTC.
  ///
  /// This is expressed in minutes to support timezones that are offset by
  /// fractions of an hour, e.g. X hours and 15 minutes.
  ///
  /// Output only.
  core.int? utcOffsetMinutes;

  /// A viewport suitable for displaying the place on an average-sized map.
  ///
  /// Output only.
  GoogleGeoTypeViewport? viewport;

  /// The authoritative website for this place, e.g. a business' homepage.
  ///
  /// Note that for places that are part of a chain (e.g. an IKEA store), this
  /// will usually be the website for the individual store, not the overall
  /// chain.
  ///
  /// Output only.
  core.String? websiteUri;

  /// Specifies if the place has an entrance that is wheelchair-accessible.
  ///
  /// Output only.
  core.bool? wheelchairAccessibleEntrance;

  GoogleMapsPlacesV1Place({
    this.addressComponents,
    this.adrFormatAddress,
    this.attributions,
    this.businessStatus,
    this.curbsidePickup,
    this.currentOpeningHours,
    this.currentSecondaryOpeningHours,
    this.delivery,
    this.dineIn,
    this.displayName,
    this.editorialSummary,
    this.formattedAddress,
    this.googleMapsUri,
    this.iconBackgroundColor,
    this.iconMaskBaseUri,
    this.id,
    this.internationalPhoneNumber,
    this.location,
    this.name,
    this.nationalPhoneNumber,
    this.openingHours,
    this.plusCode,
    this.priceLevel,
    this.rating,
    this.reservable,
    this.reviews,
    this.secondaryOpeningHours,
    this.servesBeer,
    this.servesBreakfast,
    this.servesBrunch,
    this.servesDinner,
    this.servesLunch,
    this.servesVegetarianFood,
    this.servesWine,
    this.takeout,
    this.types,
    this.userRatingCount,
    this.utcOffsetMinutes,
    this.viewport,
    this.websiteUri,
    this.wheelchairAccessibleEntrance,
  });

  GoogleMapsPlacesV1Place.fromJson(core.Map json_)
      : this(
          addressComponents: json_.containsKey('addressComponents')
              ? (json_['addressComponents'] as core.List)
                  .map((value) =>
                      GoogleMapsPlacesV1PlaceAddressComponent.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          adrFormatAddress: json_.containsKey('adrFormatAddress')
              ? json_['adrFormatAddress'] as core.String
              : null,
          attributions: json_.containsKey('attributions')
              ? (json_['attributions'] as core.List)
                  .map((value) => GoogleMapsPlacesV1PlaceAttribution.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          businessStatus: json_.containsKey('businessStatus')
              ? json_['businessStatus'] as core.String
              : null,
          curbsidePickup: json_.containsKey('curbsidePickup')
              ? json_['curbsidePickup'] as core.bool
              : null,
          currentOpeningHours: json_.containsKey('currentOpeningHours')
              ? GoogleMapsPlacesV1PlaceOpeningHours.fromJson(
                  json_['currentOpeningHours']
                      as core.Map<core.String, core.dynamic>)
              : null,
          currentSecondaryOpeningHours: json_
                  .containsKey('currentSecondaryOpeningHours')
              ? (json_['currentSecondaryOpeningHours'] as core.List)
                  .map((value) => GoogleMapsPlacesV1PlaceOpeningHours.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          delivery: json_.containsKey('delivery')
              ? json_['delivery'] as core.bool
              : null,
          dineIn:
              json_.containsKey('dineIn') ? json_['dineIn'] as core.bool : null,
          displayName: json_.containsKey('displayName')
              ? GoogleTypeLocalizedText.fromJson(
                  json_['displayName'] as core.Map<core.String, core.dynamic>)
              : null,
          editorialSummary: json_.containsKey('editorialSummary')
              ? GoogleTypeLocalizedText.fromJson(json_['editorialSummary']
                  as core.Map<core.String, core.dynamic>)
              : null,
          formattedAddress: json_.containsKey('formattedAddress')
              ? json_['formattedAddress'] as core.String
              : null,
          googleMapsUri: json_.containsKey('googleMapsUri')
              ? json_['googleMapsUri'] as core.String
              : null,
          iconBackgroundColor: json_.containsKey('iconBackgroundColor')
              ? json_['iconBackgroundColor'] as core.String
              : null,
          iconMaskBaseUri: json_.containsKey('iconMaskBaseUri')
              ? json_['iconMaskBaseUri'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          internationalPhoneNumber:
              json_.containsKey('internationalPhoneNumber')
                  ? json_['internationalPhoneNumber'] as core.String
                  : null,
          location: json_.containsKey('location')
              ? GoogleTypeLatLng.fromJson(
                  json_['location'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nationalPhoneNumber: json_.containsKey('nationalPhoneNumber')
              ? json_['nationalPhoneNumber'] as core.String
              : null,
          openingHours: json_.containsKey('openingHours')
              ? GoogleMapsPlacesV1PlaceOpeningHours.fromJson(
                  json_['openingHours'] as core.Map<core.String, core.dynamic>)
              : null,
          plusCode: json_.containsKey('plusCode')
              ? GoogleMapsPlacesV1PlacePlusCode.fromJson(
                  json_['plusCode'] as core.Map<core.String, core.dynamic>)
              : null,
          priceLevel: json_.containsKey('priceLevel')
              ? json_['priceLevel'] as core.String
              : null,
          rating: json_.containsKey('rating')
              ? (json_['rating'] as core.num).toDouble()
              : null,
          reservable: json_.containsKey('reservable')
              ? json_['reservable'] as core.bool
              : null,
          reviews: json_.containsKey('reviews')
              ? (json_['reviews'] as core.List)
                  .map((value) => GoogleMapsPlacesV1Review.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          secondaryOpeningHours: json_.containsKey('secondaryOpeningHours')
              ? (json_['secondaryOpeningHours'] as core.List)
                  .map((value) => GoogleMapsPlacesV1PlaceOpeningHours.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          servesBeer: json_.containsKey('servesBeer')
              ? json_['servesBeer'] as core.bool
              : null,
          servesBreakfast: json_.containsKey('servesBreakfast')
              ? json_['servesBreakfast'] as core.bool
              : null,
          servesBrunch: json_.containsKey('servesBrunch')
              ? json_['servesBrunch'] as core.bool
              : null,
          servesDinner: json_.containsKey('servesDinner')
              ? json_['servesDinner'] as core.bool
              : null,
          servesLunch: json_.containsKey('servesLunch')
              ? json_['servesLunch'] as core.bool
              : null,
          servesVegetarianFood: json_.containsKey('servesVegetarianFood')
              ? json_['servesVegetarianFood'] as core.bool
              : null,
          servesWine: json_.containsKey('servesWine')
              ? json_['servesWine'] as core.bool
              : null,
          takeout: json_.containsKey('takeout')
              ? json_['takeout'] as core.bool
              : null,
          types: json_.containsKey('types')
              ? (json_['types'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          userRatingCount: json_.containsKey('userRatingCount')
              ? json_['userRatingCount'] as core.int
              : null,
          utcOffsetMinutes: json_.containsKey('utcOffsetMinutes')
              ? json_['utcOffsetMinutes'] as core.int
              : null,
          viewport: json_.containsKey('viewport')
              ? GoogleGeoTypeViewport.fromJson(
                  json_['viewport'] as core.Map<core.String, core.dynamic>)
              : null,
          websiteUri: json_.containsKey('websiteUri')
              ? json_['websiteUri'] as core.String
              : null,
          wheelchairAccessibleEntrance:
              json_.containsKey('wheelchairAccessibleEntrance')
                  ? json_['wheelchairAccessibleEntrance'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressComponents != null) 'addressComponents': addressComponents!,
        if (adrFormatAddress != null) 'adrFormatAddress': adrFormatAddress!,
        if (attributions != null) 'attributions': attributions!,
        if (businessStatus != null) 'businessStatus': businessStatus!,
        if (curbsidePickup != null) 'curbsidePickup': curbsidePickup!,
        if (currentOpeningHours != null)
          'currentOpeningHours': currentOpeningHours!,
        if (currentSecondaryOpeningHours != null)
          'currentSecondaryOpeningHours': currentSecondaryOpeningHours!,
        if (delivery != null) 'delivery': delivery!,
        if (dineIn != null) 'dineIn': dineIn!,
        if (displayName != null) 'displayName': displayName!,
        if (editorialSummary != null) 'editorialSummary': editorialSummary!,
        if (formattedAddress != null) 'formattedAddress': formattedAddress!,
        if (googleMapsUri != null) 'googleMapsUri': googleMapsUri!,
        if (iconBackgroundColor != null)
          'iconBackgroundColor': iconBackgroundColor!,
        if (iconMaskBaseUri != null) 'iconMaskBaseUri': iconMaskBaseUri!,
        if (id != null) 'id': id!,
        if (internationalPhoneNumber != null)
          'internationalPhoneNumber': internationalPhoneNumber!,
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
        if (nationalPhoneNumber != null)
          'nationalPhoneNumber': nationalPhoneNumber!,
        if (openingHours != null) 'openingHours': openingHours!,
        if (plusCode != null) 'plusCode': plusCode!,
        if (priceLevel != null) 'priceLevel': priceLevel!,
        if (rating != null) 'rating': rating!,
        if (reservable != null) 'reservable': reservable!,
        if (reviews != null) 'reviews': reviews!,
        if (secondaryOpeningHours != null)
          'secondaryOpeningHours': secondaryOpeningHours!,
        if (servesBeer != null) 'servesBeer': servesBeer!,
        if (servesBreakfast != null) 'servesBreakfast': servesBreakfast!,
        if (servesBrunch != null) 'servesBrunch': servesBrunch!,
        if (servesDinner != null) 'servesDinner': servesDinner!,
        if (servesLunch != null) 'servesLunch': servesLunch!,
        if (servesVegetarianFood != null)
          'servesVegetarianFood': servesVegetarianFood!,
        if (servesWine != null) 'servesWine': servesWine!,
        if (takeout != null) 'takeout': takeout!,
        if (types != null) 'types': types!,
        if (userRatingCount != null) 'userRatingCount': userRatingCount!,
        if (utcOffsetMinutes != null) 'utcOffsetMinutes': utcOffsetMinutes!,
        if (viewport != null) 'viewport': viewport!,
        if (websiteUri != null) 'websiteUri': websiteUri!,
        if (wheelchairAccessibleEntrance != null)
          'wheelchairAccessibleEntrance': wheelchairAccessibleEntrance!,
      };
}

/// The structured components that form the formatted address, if this
/// information is available.
class GoogleMapsPlacesV1PlaceAddressComponent {
  /// The language used to format this components, in CLDR notation.
  ///
  /// Output only.
  core.String? languageCode;

  /// The full text description or name of the address component.
  ///
  /// For example, an address component for the country Australia may have a
  /// long_name of "Australia".
  ///
  /// Output only.
  core.String? longText;

  /// An abbreviated textual name for the address component, if available.
  ///
  /// For example, an address component for the country of Australia may have a
  /// short_name of "AU".
  ///
  /// Output only.
  core.String? shortText;

  /// An array indicating the type(s) of the address component.
  ///
  /// Output only.
  core.List<core.String>? types;

  GoogleMapsPlacesV1PlaceAddressComponent({
    this.languageCode,
    this.longText,
    this.shortText,
    this.types,
  });

  GoogleMapsPlacesV1PlaceAddressComponent.fromJson(core.Map json_)
      : this(
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          longText: json_.containsKey('longText')
              ? json_['longText'] as core.String
              : null,
          shortText: json_.containsKey('shortText')
              ? json_['shortText'] as core.String
              : null,
          types: json_.containsKey('types')
              ? (json_['types'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageCode != null) 'languageCode': languageCode!,
        if (longText != null) 'longText': longText!,
        if (shortText != null) 'shortText': shortText!,
        if (types != null) 'types': types!,
      };
}

/// Information about data providers of this place.
class GoogleMapsPlacesV1PlaceAttribution {
  /// Name of the Place's data provider.
  ///
  /// Output only.
  core.String? provider;

  /// URI to the Place's data provider.
  ///
  /// Output only.
  core.String? providerUri;

  GoogleMapsPlacesV1PlaceAttribution({
    this.provider,
    this.providerUri,
  });

  GoogleMapsPlacesV1PlaceAttribution.fromJson(core.Map json_)
      : this(
          provider: json_.containsKey('provider')
              ? json_['provider'] as core.String
              : null,
          providerUri: json_.containsKey('providerUri')
              ? json_['providerUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (provider != null) 'provider': provider!,
        if (providerUri != null) 'providerUri': providerUri!,
      };
}

/// Information about business hour of the place.
class GoogleMapsPlacesV1PlaceOpeningHours {
  /// Is this place open right now? Always present unless we lack time-of-day or
  /// timezone data for these opening hours.
  ///
  /// Output only.
  core.bool? openNow;

  /// The periods that this place is open during the week.
  ///
  /// The periods are in chronological order, starting with Sunday in the
  /// place-local timezone. An empty (but not absent) value indicates a place
  /// that is never open, e.g. because it is closed temporarily for renovations.
  ///
  /// Output only.
  core.List<GoogleMapsPlacesV1PlaceOpeningHoursPeriod>? periods;

  /// A type string used to identify the type of secondary hours.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SECONDARY_HOURS_TYPE_UNSPECIFIED" : Default value when secondary hour
  /// type is not specified.
  /// - "DRIVE_THROUGH" : The drive-through hour for banks, restaurants, or
  /// pharmacies.
  /// - "HAPPY_HOUR" : The happy hour.
  /// - "DELIVERY" : The delivery hour.
  /// - "TAKEOUT" : The takeout hour.
  /// - "KITCHEN" : The kitchen hour.
  /// - "BREAKFAST" : The breakfast hour.
  /// - "LUNCH" : The lunch hour.
  /// - "DINNER" : The dinner hour.
  /// - "BRUNCH" : The brunch hour.
  /// - "PICKUP" : The pickup hour.
  /// - "ACCESS" : The access hours for storage places.
  /// - "SENIOR_HOURS" : The special hours for seniors.
  /// - "ONLINE_SERVICE_HOURS" : The online service hours.
  core.String? secondaryHoursType;

  /// Structured information for special days that fall within the period that
  /// the returned opening hours cover.
  ///
  /// Special days are days that could impact the business hours of a place,
  /// e.g. Christmas day. Set for current_opening_hours and
  /// current_secondary_opening_hours if there are exceptional hours.
  ///
  /// Output only.
  core.List<GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay>? specialDays;

  /// Localized strings describing the opening hours of this place, one string
  /// for each day of the week.
  ///
  /// Will be empty if the hours are unknown or could not be converted to
  /// localized text. Example: "Sun: 18:00–06:00"
  ///
  /// Output only.
  core.List<core.String>? weekdayDescriptions;

  GoogleMapsPlacesV1PlaceOpeningHours({
    this.openNow,
    this.periods,
    this.secondaryHoursType,
    this.specialDays,
    this.weekdayDescriptions,
  });

  GoogleMapsPlacesV1PlaceOpeningHours.fromJson(core.Map json_)
      : this(
          openNow: json_.containsKey('openNow')
              ? json_['openNow'] as core.bool
              : null,
          periods: json_.containsKey('periods')
              ? (json_['periods'] as core.List)
                  .map((value) =>
                      GoogleMapsPlacesV1PlaceOpeningHoursPeriod.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          secondaryHoursType: json_.containsKey('secondaryHoursType')
              ? json_['secondaryHoursType'] as core.String
              : null,
          specialDays: json_.containsKey('specialDays')
              ? (json_['specialDays'] as core.List)
                  .map((value) =>
                      GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          weekdayDescriptions: json_.containsKey('weekdayDescriptions')
              ? (json_['weekdayDescriptions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (openNow != null) 'openNow': openNow!,
        if (periods != null) 'periods': periods!,
        if (secondaryHoursType != null)
          'secondaryHoursType': secondaryHoursType!,
        if (specialDays != null) 'specialDays': specialDays!,
        if (weekdayDescriptions != null)
          'weekdayDescriptions': weekdayDescriptions!,
      };
}

/// A period the place remains in open_now status.
class GoogleMapsPlacesV1PlaceOpeningHoursPeriod {
  /// The time that the place starts to be closed.
  ///
  /// Output only.
  GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint? close;

  /// The time that the place starts to be open.
  ///
  /// Output only.
  GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint? open;

  GoogleMapsPlacesV1PlaceOpeningHoursPeriod({
    this.close,
    this.open,
  });

  GoogleMapsPlacesV1PlaceOpeningHoursPeriod.fromJson(core.Map json_)
      : this(
          close: json_.containsKey('close')
              ? GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint.fromJson(
                  json_['close'] as core.Map<core.String, core.dynamic>)
              : null,
          open: json_.containsKey('open')
              ? GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint.fromJson(
                  json_['open'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (close != null) 'close': close!,
        if (open != null) 'open': open!,
      };
}

/// Status changing points.
class GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint {
  /// Date in the local timezone for the place.
  ///
  /// Output only.
  GoogleTypeDate? date;

  /// Date of the endpoint expressed in RFC3339 format in the local timezone for
  /// the place.
  ///
  /// For example 2010-12-31.
  ///
  /// Output only.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? dateDeprecated;

  /// A day of the week, as an integer in the range 0-6.
  ///
  /// 0 is Sunday, 1 is Monday, etc.
  ///
  /// Output only.
  core.int? day;

  /// The hour in 2 digits.
  ///
  /// Ranges from 00 to 23.
  ///
  /// Output only.
  core.int? hour;

  /// The minute in 2 digits.
  ///
  /// Ranges from 00 to 59.
  ///
  /// Output only.
  core.int? minute;

  /// Whether or not this endpoint was truncated.
  ///
  /// Truncation occurs when the real hours are outside the times we are willing
  /// to return hours between, so we truncate the hours back to these
  /// boundaries. This ensures that at most 24 * 7 hours from midnight of the
  /// day of the request are returned.
  ///
  /// Output only.
  core.bool? truncated;

  GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint({
    this.date,
    this.dateDeprecated,
    this.day,
    this.hour,
    this.minute,
    this.truncated,
  });

  GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint.fromJson(core.Map json_)
      : this(
          date: json_.containsKey('date')
              ? GoogleTypeDate.fromJson(
                  json_['date'] as core.Map<core.String, core.dynamic>)
              : null,
          dateDeprecated: json_.containsKey('dateDeprecated')
              ? json_['dateDeprecated'] as core.String
              : null,
          day: json_.containsKey('day') ? json_['day'] as core.int : null,
          hour: json_.containsKey('hour') ? json_['hour'] as core.int : null,
          minute:
              json_.containsKey('minute') ? json_['minute'] as core.int : null,
          truncated: json_.containsKey('truncated')
              ? json_['truncated'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (date != null) 'date': date!,
        if (dateDeprecated != null) 'dateDeprecated': dateDeprecated!,
        if (day != null) 'day': day!,
        if (hour != null) 'hour': hour!,
        if (minute != null) 'minute': minute!,
        if (truncated != null) 'truncated': truncated!,
      };
}

/// Structured information for special days that fall within the period that the
/// returned opening hours cover.
///
/// Special days are days that could impact the business hours of a place, e.g.
/// Christmas day.
class GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay {
  /// The date of this special day.
  ///
  /// Output only.
  GoogleTypeDate? date;

  GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay({
    this.date,
  });

  GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay.fromJson(core.Map json_)
      : this(
          date: json_.containsKey('date')
              ? GoogleTypeDate.fromJson(
                  json_['date'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (date != null) 'date': date!,
      };
}

/// Plus code (http://plus.codes) is a location reference with two formats:
/// global code defining a 14mx14m (1/8000th of a degree) or smaller rectangle,
/// and compound code, replacing the prefix with a reference location.
class GoogleMapsPlacesV1PlacePlusCode {
  /// Place's compound code, such as "33GV+HQ, Ramberg, Norway", containing the
  /// suffix of the global code and replacing the prefix with a formatted name
  /// of a reference entity.
  ///
  /// Output only.
  core.String? compoundCode;

  /// Place's global (full) code, such as "9FWM33GV+HQ", representing an 1/8000
  /// by 1/8000 degree area (~14 by 14 meters).
  ///
  /// Output only.
  core.String? globalCode;

  GoogleMapsPlacesV1PlacePlusCode({
    this.compoundCode,
    this.globalCode,
  });

  GoogleMapsPlacesV1PlacePlusCode.fromJson(core.Map json_)
      : this(
          compoundCode: json_.containsKey('compoundCode')
              ? json_['compoundCode'] as core.String
              : null,
          globalCode: json_.containsKey('globalCode')
              ? json_['globalCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compoundCode != null) 'compoundCode': compoundCode!,
        if (globalCode != null) 'globalCode': globalCode!,
      };
}

/// Information about a review of a place.
class GoogleMapsPlacesV1Review {
  /// This review's author.
  ///
  /// Output only.
  GoogleMapsPlacesV1AuthorAttribution? authorAttribution;

  /// The review text in its original language.
  ///
  /// Output only.
  GoogleTypeLocalizedText? originalText;

  /// Timestamp for the review.
  ///
  /// Output only.
  core.String? publishTime;

  /// A number between 1.0 and 5.0, a.k.a. the number of stars.
  ///
  /// Output only.
  core.double? rating;

  /// A string of formatted recent time, expressing the review time relative to
  /// the current time in a form appropriate for the language and country.
  ///
  /// Output only.
  core.String? relativePublishTimeDescription;

  /// The localized text of the review.
  ///
  /// Output only.
  GoogleTypeLocalizedText? text;

  GoogleMapsPlacesV1Review({
    this.authorAttribution,
    this.originalText,
    this.publishTime,
    this.rating,
    this.relativePublishTimeDescription,
    this.text,
  });

  GoogleMapsPlacesV1Review.fromJson(core.Map json_)
      : this(
          authorAttribution: json_.containsKey('authorAttribution')
              ? GoogleMapsPlacesV1AuthorAttribution.fromJson(
                  json_['authorAttribution']
                      as core.Map<core.String, core.dynamic>)
              : null,
          originalText: json_.containsKey('originalText')
              ? GoogleTypeLocalizedText.fromJson(
                  json_['originalText'] as core.Map<core.String, core.dynamic>)
              : null,
          publishTime: json_.containsKey('publishTime')
              ? json_['publishTime'] as core.String
              : null,
          rating: json_.containsKey('rating')
              ? (json_['rating'] as core.num).toDouble()
              : null,
          relativePublishTimeDescription:
              json_.containsKey('relativePublishTimeDescription')
                  ? json_['relativePublishTimeDescription'] as core.String
                  : null,
          text: json_.containsKey('text')
              ? GoogleTypeLocalizedText.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorAttribution != null) 'authorAttribution': authorAttribution!,
        if (originalText != null) 'originalText': originalText!,
        if (publishTime != null) 'publishTime': publishTime!,
        if (rating != null) 'rating': rating!,
        if (relativePublishTimeDescription != null)
          'relativePublishTimeDescription': relativePublishTimeDescription!,
        if (text != null) 'text': text!,
      };
}

/// Request proto for SearchText.
class GoogleMapsPlacesV1SearchTextRequest {
  /// The requested place type.
  ///
  /// Full list of types supported:
  /// https://developers.google.com/places/supported_types. Only support one
  /// included type.
  core.String? includedType;

  /// Place details will be displayed with the preferred language if available.
  ///
  /// If the language code is unspecified or unrecognized, place details of any
  /// language may be returned, with a preference for English if such details
  /// exist. Current list of supported languages:
  /// https://developers.google.com/maps/faq#languagesupport.
  core.String? languageCode;

  /// \[Deprecated!\]The region to search.
  ///
  /// Setting location would usually yields better results. Recommended to set.
  /// This location serves as a bias unless strict_restriction is set to true,
  /// which turns the location to a strict restriction.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleMapsPlacesV1SearchTextRequestLocation? location;

  /// The region to search.
  ///
  /// This location serves as a bias which means results around given location
  /// might be returned. Cannot be set along with location_restriction.
  GoogleMapsPlacesV1SearchTextRequestLocationBias? locationBias;

  /// The region to search.
  ///
  /// This location serves as a restriction which means results outside given
  /// location will not be returned. Cannot be set along with location_bias.
  GoogleMapsPlacesV1SearchTextRequestLocationRestriction? locationRestriction;

  /// Maximum number of results to return.
  ///
  /// It must be between 1 and 20, inclusively. If the number is unset, it falls
  /// back to the upper limit. If the number is set to negative or exceeds the
  /// upper limit, an INVALID_ARGUMENT error is returned.
  core.int? maxResultCount;

  /// Filter out results whose average user rating is strictly less than this
  /// limit.
  ///
  /// A valid value must be an float between 0 and 5 (inclusively) at a 0.5
  /// cadence i.e. \[0, 0.5, 1.0, ... , 5.0\] inclusively. This is to keep
  /// parity with LocalRefinement_UserRating. The input rating will round up to
  /// the nearest 0.5(ceiling). For instance, a rating of 0.6 will eliminate all
  /// results with a less than 1.0 rating.
  core.double? minRating;

  /// Used to restrict the search to places that are open at a specific time.
  ///
  /// open_now marks if a business is currently open.
  core.bool? openNow;

  /// Used to restrict the search to places that are marked as certain price
  /// levels.
  ///
  /// Users can choose any combinations of price levels. Default to select all
  /// price levels.
  core.List<core.String>? priceLevels;

  /// \[Deprecated!\]Used to restrict the search to places that are within a
  /// certain price range.
  ///
  /// This is on a scale of 0 to 4. Set a minimum of 0 or set a maximum of 4 has
  /// no effect on the search results. Min price is default to 0 and max price
  /// is default to 4. Default value will be used if either min or max is unset.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleMapsPlacesV1Int32Range? priceRange;

  /// How results will be ranked in the response.
  /// Possible string values are:
  /// - "RANK_PREFERENCE_UNSPECIFIED" : RankPreference value not set. Will
  /// default to DISTANCE.
  /// - "DISTANCE" : Ranks results by distance.
  /// - "RELEVANCE" : Ranks results by relevance. Sort order determined by
  /// normal ranking stack. See SortRefinement::RELEVANCE.
  core.String? rankPreference;

  /// The Unicode country/region code (CLDR) of the location where the request
  /// is coming from.
  ///
  /// It is used to display the place details, like region-specific place name,
  /// if available. For more information, see
  /// http://www.unicode.org/reports/tr35/#unicode_region_subtag. Note that
  /// 3-digit region codes are not currently supported.
  core.String? regionCode;

  /// Used to set strict type filtering for included_type.
  ///
  /// If set to true, only results of the same type will be returned. Default to
  /// false.
  core.bool? strictTypeFiltering;

  /// The text query for textual search.
  ///
  /// Required.
  core.String? textQuery;

  GoogleMapsPlacesV1SearchTextRequest({
    this.includedType,
    this.languageCode,
    this.location,
    this.locationBias,
    this.locationRestriction,
    this.maxResultCount,
    this.minRating,
    this.openNow,
    this.priceLevels,
    this.priceRange,
    this.rankPreference,
    this.regionCode,
    this.strictTypeFiltering,
    this.textQuery,
  });

  GoogleMapsPlacesV1SearchTextRequest.fromJson(core.Map json_)
      : this(
          includedType: json_.containsKey('includedType')
              ? json_['includedType'] as core.String
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          location: json_.containsKey('location')
              ? GoogleMapsPlacesV1SearchTextRequestLocation.fromJson(
                  json_['location'] as core.Map<core.String, core.dynamic>)
              : null,
          locationBias: json_.containsKey('locationBias')
              ? GoogleMapsPlacesV1SearchTextRequestLocationBias.fromJson(
                  json_['locationBias'] as core.Map<core.String, core.dynamic>)
              : null,
          locationRestriction: json_.containsKey('locationRestriction')
              ? GoogleMapsPlacesV1SearchTextRequestLocationRestriction.fromJson(
                  json_['locationRestriction']
                      as core.Map<core.String, core.dynamic>)
              : null,
          maxResultCount: json_.containsKey('maxResultCount')
              ? json_['maxResultCount'] as core.int
              : null,
          minRating: json_.containsKey('minRating')
              ? (json_['minRating'] as core.num).toDouble()
              : null,
          openNow: json_.containsKey('openNow')
              ? json_['openNow'] as core.bool
              : null,
          priceLevels: json_.containsKey('priceLevels')
              ? (json_['priceLevels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          priceRange: json_.containsKey('priceRange')
              ? GoogleMapsPlacesV1Int32Range.fromJson(
                  json_['priceRange'] as core.Map<core.String, core.dynamic>)
              : null,
          rankPreference: json_.containsKey('rankPreference')
              ? json_['rankPreference'] as core.String
              : null,
          regionCode: json_.containsKey('regionCode')
              ? json_['regionCode'] as core.String
              : null,
          strictTypeFiltering: json_.containsKey('strictTypeFiltering')
              ? json_['strictTypeFiltering'] as core.bool
              : null,
          textQuery: json_.containsKey('textQuery')
              ? json_['textQuery'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includedType != null) 'includedType': includedType!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (location != null) 'location': location!,
        if (locationBias != null) 'locationBias': locationBias!,
        if (locationRestriction != null)
          'locationRestriction': locationRestriction!,
        if (maxResultCount != null) 'maxResultCount': maxResultCount!,
        if (minRating != null) 'minRating': minRating!,
        if (openNow != null) 'openNow': openNow!,
        if (priceLevels != null) 'priceLevels': priceLevels!,
        if (priceRange != null) 'priceRange': priceRange!,
        if (rankPreference != null) 'rankPreference': rankPreference!,
        if (regionCode != null) 'regionCode': regionCode!,
        if (strictTypeFiltering != null)
          'strictTypeFiltering': strictTypeFiltering!,
        if (textQuery != null) 'textQuery': textQuery!,
      };
}

/// \[Deprecated!\]The region to search.
class GoogleMapsPlacesV1SearchTextRequestLocation {
  /// A rectangle box defined by northeast and southwest corner.
  GoogleGeoTypeViewport? rectangle;

  /// Make location field a strict restriction and filter out POIs outside of
  /// the given location.
  ///
  /// If location type field is unset this field will have no effect.
  core.bool? strictRestriction;

  GoogleMapsPlacesV1SearchTextRequestLocation({
    this.rectangle,
    this.strictRestriction,
  });

  GoogleMapsPlacesV1SearchTextRequestLocation.fromJson(core.Map json_)
      : this(
          rectangle: json_.containsKey('rectangle')
              ? GoogleGeoTypeViewport.fromJson(
                  json_['rectangle'] as core.Map<core.String, core.dynamic>)
              : null,
          strictRestriction: json_.containsKey('strictRestriction')
              ? json_['strictRestriction'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rectangle != null) 'rectangle': rectangle!,
        if (strictRestriction != null) 'strictRestriction': strictRestriction!,
      };
}

/// The region to search.
///
/// This location serves as a bias which means results around given location
/// might be returned.
class GoogleMapsPlacesV1SearchTextRequestLocationBias {
  /// A circle defined by center point and radius.
  GoogleMapsPlacesV1Circle? circle;

  /// A rectangle box defined by northeast and southwest corner.
  GoogleGeoTypeViewport? rectangle;

  GoogleMapsPlacesV1SearchTextRequestLocationBias({
    this.circle,
    this.rectangle,
  });

  GoogleMapsPlacesV1SearchTextRequestLocationBias.fromJson(core.Map json_)
      : this(
          circle: json_.containsKey('circle')
              ? GoogleMapsPlacesV1Circle.fromJson(
                  json_['circle'] as core.Map<core.String, core.dynamic>)
              : null,
          rectangle: json_.containsKey('rectangle')
              ? GoogleGeoTypeViewport.fromJson(
                  json_['rectangle'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (circle != null) 'circle': circle!,
        if (rectangle != null) 'rectangle': rectangle!,
      };
}

/// The region to search.
///
/// This location serves as a restriction which means results outside given
/// location will not be returned.
class GoogleMapsPlacesV1SearchTextRequestLocationRestriction {
  /// A rectangle box defined by northeast and southwest corner.
  GoogleGeoTypeViewport? rectangle;

  GoogleMapsPlacesV1SearchTextRequestLocationRestriction({
    this.rectangle,
  });

  GoogleMapsPlacesV1SearchTextRequestLocationRestriction.fromJson(
      core.Map json_)
      : this(
          rectangle: json_.containsKey('rectangle')
              ? GoogleGeoTypeViewport.fromJson(
                  json_['rectangle'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rectangle != null) 'rectangle': rectangle!,
      };
}

/// Response proto for SearchText.
class GoogleMapsPlacesV1SearchTextResponse {
  /// A list of places that meet the user's text search criteria.
  core.List<GoogleMapsPlacesV1Place>? places;

  GoogleMapsPlacesV1SearchTextResponse({
    this.places,
  });

  GoogleMapsPlacesV1SearchTextResponse.fromJson(core.Map json_)
      : this(
          places: json_.containsKey('places')
              ? (json_['places'] as core.List)
                  .map((value) => GoogleMapsPlacesV1Place.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (places != null) 'places': places!,
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
typedef GoogleTypeDate = $Date;

/// An object that represents a latitude/longitude pair.
///
/// This is expressed as a pair of doubles to represent degrees latitude and
/// degrees longitude. Unless specified otherwise, this object must conform to
/// the WGS84 standard. Values must be within normalized ranges.
typedef GoogleTypeLatLng = $LatLng;

/// Localized variant of a text in a particular language.
typedef GoogleTypeLocalizedText = $GoogleTypeLocalizedText;
