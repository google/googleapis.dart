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

/// Places API (New) - v1
///
/// For more information, see
/// <https://mapsplatform.google.com/maps-products/#places-section>
///
/// Create an instance of [PlacesApi] to access these resources:
///
/// - [PlacesResource]
///   - [PlacesPhotosResource]
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

class PlacesApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// Private Service: https://www.googleapis.com/auth/maps-platform.places
  static const mapsPlatformPlacesScope =
      'https://www.googleapis.com/auth/maps-platform.places';

  /// Private Service:
  /// https://www.googleapis.com/auth/maps-platform.places.autocomplete
  static const mapsPlatformPlacesAutocompleteScope =
      'https://www.googleapis.com/auth/maps-platform.places.autocomplete';

  /// Private Service:
  /// https://www.googleapis.com/auth/maps-platform.places.details
  static const mapsPlatformPlacesDetailsScope =
      'https://www.googleapis.com/auth/maps-platform.places.details';

  /// Private Service:
  /// https://www.googleapis.com/auth/maps-platform.places.nearbysearch
  static const mapsPlatformPlacesNearbysearchScope =
      'https://www.googleapis.com/auth/maps-platform.places.nearbysearch';

  /// Private Service:
  /// https://www.googleapis.com/auth/maps-platform.places.textsearch
  static const mapsPlatformPlacesTextsearchScope =
      'https://www.googleapis.com/auth/maps-platform.places.textsearch';

  final commons.ApiRequester _requester;

  PlacesResource get places => PlacesResource(_requester);

  PlacesApi(http.Client client,
      {core.String rootUrl = 'https://places.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class PlacesResource {
  final commons.ApiRequester _requester;

  PlacesPhotosResource get photos => PlacesPhotosResource(_requester);

  PlacesResource(commons.ApiRequester client) : _requester = client;

  /// Returns predictions for the given input.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleMapsPlacesV1AutocompletePlacesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleMapsPlacesV1AutocompletePlacesResponse> autocomplete(
    GoogleMapsPlacesV1AutocompletePlacesRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/places:autocomplete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleMapsPlacesV1AutocompletePlacesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get the details of a place based on its resource name, which is a string
  /// in the `places/{place_id}` format.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of a place, in the
  /// `places/{place_id}` format.
  /// Value must have pattern `^places/\[^/\]+$`.
  ///
  /// [languageCode] - Optional. Place details will be displayed with the
  /// preferred language if available. Current list of supported languages:
  /// https://developers.google.com/maps/faq#languagesupport.
  ///
  /// [regionCode] - Optional. The Unicode country/region code (CLDR) of the
  /// location where the request is coming from. This parameter is used to
  /// display the place details, like region-specific place name, if available.
  /// The parameter can affect results based on applicable law. For more
  /// information, see
  /// https://www.unicode.org/cldr/charts/latest/supplemental/territory_language_information.html.
  /// Note that 3-digit region codes are not currently supported.
  ///
  /// [sessionToken] - Optional. A string which identifies an Autocomplete
  /// session for billing purposes. Must be a URL and filename safe base64
  /// string with at most 36 ASCII characters in length. Otherwise an
  /// INVALID_ARGUMENT error is returned. The session begins when the user
  /// starts typing a query, and concludes when they select a place and a call
  /// to Place Details or Address Validation is made. Each session can have
  /// multiple queries, followed by one Place Details or Address Validation
  /// request. The credentials used for each request within a session must
  /// belong to the same Google Cloud Console project. Once a session has
  /// concluded, the token is no longer valid; your app must generate a fresh
  /// token for each session. If the `session_token` parameter is omitted, or if
  /// you reuse a session token, the session is charged as if no session token
  /// was provided (each request is billed separately). We recommend the
  /// following guidelines: * Use session tokens for all Place Autocomplete
  /// calls. * Generate a fresh token for each session. Using a version 4 UUID
  /// is recommended. * Ensure that the credentials used for all Place
  /// Autocomplete, Place Details, and Address Validation requests within a
  /// session belong to the same Cloud Console project. * Be sure to pass a
  /// unique session token for each new session. Using the same token for more
  /// than one session will result in each request being billed individually.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleMapsPlacesV1Place].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleMapsPlacesV1Place> get(
    core.String name, {
    core.String? languageCode,
    core.String? regionCode,
    core.String? sessionToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (regionCode != null) 'regionCode': [regionCode],
      if (sessionToken != null) 'sessionToken': [sessionToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleMapsPlacesV1Place.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Search for places near locations.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleMapsPlacesV1SearchNearbyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleMapsPlacesV1SearchNearbyResponse> searchNearby(
    GoogleMapsPlacesV1SearchNearbyRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/places:searchNearby';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleMapsPlacesV1SearchNearbyResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

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

class PlacesPhotosResource {
  final commons.ApiRequester _requester;

  PlacesPhotosResource(commons.ApiRequester client) : _requester = client;

  /// Get a photo media with a photo reference string.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of a photo media in the format:
  /// `places/{place_id}/photos/{photo_reference}/media`. The resource name of a
  /// photo as returned in a Place object's `photos.name` field comes with the
  /// format `places/{place_id}/photos/{photo_reference}`. You need to append
  /// `/media` at the end of the photo resource to get the photo media resource
  /// name.
  /// Value must have pattern `^places/\[^/\]+/photos/\[^/\]+/media$`.
  ///
  /// [maxHeightPx] - Optional. Specifies the maximum desired height, in pixels,
  /// of the image. If the image is smaller than the values specified, the
  /// original image will be returned. If the image is larger in either
  /// dimension, it will be scaled to match the smaller of the two dimensions,
  /// restricted to its original aspect ratio. Both the max_height_px and
  /// max_width_px properties accept an integer between 1 and 4800, inclusively.
  /// If the value is not within the allowed range, an INVALID_ARGUMENT error
  /// will be returned. At least one of max_height_px or max_width_px needs to
  /// be specified. If neither max_height_px nor max_width_px is specified, an
  /// INVALID_ARGUMENT error will be returned.
  ///
  /// [maxWidthPx] - Optional. Specifies the maximum desired width, in pixels,
  /// of the image. If the image is smaller than the values specified, the
  /// original image will be returned. If the image is larger in either
  /// dimension, it will be scaled to match the smaller of the two dimensions,
  /// restricted to its original aspect ratio. Both the max_height_px and
  /// max_width_px properties accept an integer between 1 and 4800, inclusively.
  /// If the value is not within the allowed range, an INVALID_ARGUMENT error
  /// will be returned. At least one of max_height_px or max_width_px needs to
  /// be specified. If neither max_height_px nor max_width_px is specified, an
  /// INVALID_ARGUMENT error will be returned.
  ///
  /// [skipHttpRedirect] - Optional. If set, skip the default HTTP redirect
  /// behavior and render a text format (for example, in JSON format for HTTP
  /// use case) response. If not set, an HTTP redirect will be issued to
  /// redirect the call to the image media. This option is ignored for non-HTTP
  /// requests.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleMapsPlacesV1PhotoMedia].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleMapsPlacesV1PhotoMedia> getMedia(
    core.String name, {
    core.int? maxHeightPx,
    core.int? maxWidthPx,
    core.bool? skipHttpRedirect,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxHeightPx != null) 'maxHeightPx': ['${maxHeightPx}'],
      if (maxWidthPx != null) 'maxWidthPx': ['${maxWidthPx}'],
      if (skipHttpRedirect != null) 'skipHttpRedirect': ['${skipHttpRedirect}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleMapsPlacesV1PhotoMedia.fromJson(
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
  core.String? displayName;

  /// Profile photo URI of the author of the Photo or Review.
  core.String? photoUri;

  /// URI of the author of the Photo or Review.
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

/// Request proto for AutocompletePlaces.
class GoogleMapsPlacesV1AutocompletePlacesRequest {
  /// If true, the response will include both Place and query predictions.
  ///
  /// Otherwise the response will only return Place predictions.
  ///
  /// Optional.
  core.bool? includeQueryPredictions;

  /// Included primary Place type (for example, "restaurant" or "gas_station")
  /// from
  /// https://developers.google.com/maps/documentation/places/web-service/place-types.
  ///
  /// A Place is only returned if its primary type is included in this list. Up
  /// to 5 values can be specified. If no types are specified, all Place types
  /// are returned.
  ///
  /// Optional.
  core.List<core.String>? includedPrimaryTypes;

  /// Only include results in the specified regions, specified as up to 15 CLDR
  /// two-character region codes.
  ///
  /// An empty set will not restrict the results. If both `location_restriction`
  /// and `included_region_codes` are set, the results will be located in the
  /// area of intersection.
  ///
  /// Optional.
  core.List<core.String>? includedRegionCodes;

  /// The text string on which to search.
  ///
  /// Required.
  core.String? input;

  /// A zero-based Unicode character offset of `input` indicating the cursor
  /// position in `input`.
  ///
  /// The cursor position may influence what predictions are returned. If empty,
  /// defaults to the length of `input`.
  ///
  /// Optional.
  core.int? inputOffset;

  /// The language in which to return results.
  ///
  /// Defaults to en-US. The results may be in mixed languages if the language
  /// used in `input` is different from `language_code` or if the returned Place
  /// does not have a translation from the local language to `language_code`.
  ///
  /// Optional.
  core.String? languageCode;

  /// Bias results to a specified location.
  ///
  /// At most one of `location_bias` or `location_restriction` should be set. If
  /// neither are set, the results will be biased by IP address, meaning the IP
  /// address will be mapped to an imprecise location and used as a biasing
  /// signal.
  ///
  /// Optional.
  GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias? locationBias;

  /// Restrict results to a specified location.
  ///
  /// At most one of `location_bias` or `location_restriction` should be set. If
  /// neither are set, the results will be biased by IP address, meaning the IP
  /// address will be mapped to an imprecise location and used as a biasing
  /// signal.
  ///
  /// Optional.
  GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction?
      locationRestriction;

  /// The origin point from which to calculate geodesic distance to the
  /// destination (returned as `distance_meters`).
  ///
  /// If this value is omitted, geodesic distance will not be returned.
  ///
  /// Optional.
  GoogleTypeLatLng? origin;

  /// The region code, specified as a CLDR two-character region code.
  ///
  /// This affects address formatting, result ranking, and may influence what
  /// results are returned. This does not restrict results to the specified
  /// region. To restrict results to a region, use `region_code_restriction`.
  ///
  /// Optional.
  core.String? regionCode;

  /// A string which identifies an Autocomplete session for billing purposes.
  ///
  /// Must be a URL and filename safe base64 string with at most 36 ASCII
  /// characters in length. Otherwise an INVALID_ARGUMENT error is returned. The
  /// session begins when the user starts typing a query, and concludes when
  /// they select a place and a call to Place Details or Address Validation is
  /// made. Each session can have multiple queries, followed by one Place
  /// Details or Address Validation request. The credentials used for each
  /// request within a session must belong to the same Google Cloud Console
  /// project. Once a session has concluded, the token is no longer valid; your
  /// app must generate a fresh token for each session. If the `session_token`
  /// parameter is omitted, or if you reuse a session token, the session is
  /// charged as if no session token was provided (each request is billed
  /// separately). We recommend the following guidelines: * Use session tokens
  /// for all Place Autocomplete calls. * Generate a fresh token for each
  /// session. Using a version 4 UUID is recommended. * Ensure that the
  /// credentials used for all Place Autocomplete, Place Details, and Address
  /// Validation requests within a session belong to the same Cloud Console
  /// project. * Be sure to pass a unique session token for each new session.
  /// Using the same token for more than one session will result in each request
  /// being billed individually.
  ///
  /// Optional.
  core.String? sessionToken;

  GoogleMapsPlacesV1AutocompletePlacesRequest({
    this.includeQueryPredictions,
    this.includedPrimaryTypes,
    this.includedRegionCodes,
    this.input,
    this.inputOffset,
    this.languageCode,
    this.locationBias,
    this.locationRestriction,
    this.origin,
    this.regionCode,
    this.sessionToken,
  });

  GoogleMapsPlacesV1AutocompletePlacesRequest.fromJson(core.Map json_)
      : this(
          includeQueryPredictions: json_.containsKey('includeQueryPredictions')
              ? json_['includeQueryPredictions'] as core.bool
              : null,
          includedPrimaryTypes: json_.containsKey('includedPrimaryTypes')
              ? (json_['includedPrimaryTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includedRegionCodes: json_.containsKey('includedRegionCodes')
              ? (json_['includedRegionCodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          input:
              json_.containsKey('input') ? json_['input'] as core.String : null,
          inputOffset: json_.containsKey('inputOffset')
              ? json_['inputOffset'] as core.int
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          locationBias: json_.containsKey('locationBias')
              ? GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias
                  .fromJson(json_['locationBias']
                      as core.Map<core.String, core.dynamic>)
              : null,
          locationRestriction: json_.containsKey('locationRestriction')
              ? GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction
                  .fromJson(json_['locationRestriction']
                      as core.Map<core.String, core.dynamic>)
              : null,
          origin: json_.containsKey('origin')
              ? GoogleTypeLatLng.fromJson(
                  json_['origin'] as core.Map<core.String, core.dynamic>)
              : null,
          regionCode: json_.containsKey('regionCode')
              ? json_['regionCode'] as core.String
              : null,
          sessionToken: json_.containsKey('sessionToken')
              ? json_['sessionToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeQueryPredictions != null)
          'includeQueryPredictions': includeQueryPredictions!,
        if (includedPrimaryTypes != null)
          'includedPrimaryTypes': includedPrimaryTypes!,
        if (includedRegionCodes != null)
          'includedRegionCodes': includedRegionCodes!,
        if (input != null) 'input': input!,
        if (inputOffset != null) 'inputOffset': inputOffset!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (locationBias != null) 'locationBias': locationBias!,
        if (locationRestriction != null)
          'locationRestriction': locationRestriction!,
        if (origin != null) 'origin': origin!,
        if (regionCode != null) 'regionCode': regionCode!,
        if (sessionToken != null) 'sessionToken': sessionToken!,
      };
}

/// The region to search.
///
/// The results may be biased around the specified region.
class GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias {
  /// A circle defined by a center point and radius.
  GoogleMapsPlacesV1Circle? circle;

  /// A viewport defined by a northeast and a southwest corner.
  GoogleGeoTypeViewport? rectangle;

  GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias({
    this.circle,
    this.rectangle,
  });

  GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias.fromJson(
      core.Map json_)
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
/// The results will be restricted to the specified region.
class GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction {
  /// A circle defined by a center point and radius.
  GoogleMapsPlacesV1Circle? circle;

  /// A viewport defined by a northeast and a southwest corner.
  GoogleGeoTypeViewport? rectangle;

  GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction({
    this.circle,
    this.rectangle,
  });

  GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction.fromJson(
      core.Map json_)
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

/// Response proto for AutocompletePlaces.
class GoogleMapsPlacesV1AutocompletePlacesResponse {
  /// Contains a list of suggestions, ordered in descending order of relevance.
  core.List<GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion>?
      suggestions;

  GoogleMapsPlacesV1AutocompletePlacesResponse({
    this.suggestions,
  });

  GoogleMapsPlacesV1AutocompletePlacesResponse.fromJson(core.Map json_)
      : this(
          suggestions: json_.containsKey('suggestions')
              ? (json_['suggestions'] as core.List)
                  .map((value) =>
                      GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (suggestions != null) 'suggestions': suggestions!,
      };
}

/// An Autocomplete suggestion result.
class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion {
  /// A prediction for a Place.
  GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction?
      placePrediction;

  /// A prediction for a query.
  GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction?
      queryPrediction;

  GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion({
    this.placePrediction,
    this.queryPrediction,
  });

  GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion.fromJson(
      core.Map json_)
      : this(
          placePrediction: json_.containsKey('placePrediction')
              ? GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction
                  .fromJson(json_['placePrediction']
                      as core.Map<core.String, core.dynamic>)
              : null,
          queryPrediction: json_.containsKey('queryPrediction')
              ? GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction
                  .fromJson(json_['queryPrediction']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (placePrediction != null) 'placePrediction': placePrediction!,
        if (queryPrediction != null) 'queryPrediction': queryPrediction!,
      };
}

/// Text representing a Place or query prediction.
///
/// The text may be used as is or formatted.
class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText {
  /// A list of string ranges identifying where the input request matched in
  /// `text`.
  ///
  /// The ranges can be used to format specific parts of `text`. The substrings
  /// may not be exact matches of `input` if the matching was determined by
  /// criteria other than string matching (for example, spell corrections or
  /// transliterations). These values are Unicode character offsets of `text`.
  /// The ranges are guaranteed to be ordered in increasing offset values.
  core.List<GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange>?
      matches;

  /// Text that may be used as is or formatted with `matches`.
  core.String? text;

  GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText({
    this.matches,
    this.text,
  });

  GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText.fromJson(
      core.Map json_)
      : this(
          matches: json_.containsKey('matches')
              ? (json_['matches'] as core.List)
                  .map((value) =>
                      GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (matches != null) 'matches': matches!,
        if (text != null) 'text': text!,
      };
}

/// Prediction results for a Place Autocomplete prediction.
class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction {
  /// The length of the geodesic in meters from `origin` if `origin` is
  /// specified.
  ///
  /// Certain predictions such as routes may not populate this field.
  core.int? distanceMeters;

  /// The resource name of the suggested Place.
  ///
  /// This name can be used in other APIs that accept Place names.
  core.String? place;

  /// The unique identifier of the suggested Place.
  ///
  /// This identifier can be used in other APIs that accept Place IDs.
  core.String? placeId;

  /// A breakdown of the Place prediction into main text containing the name of
  /// the Place and secondary text containing additional disambiguating features
  /// (such as a city or region).
  ///
  /// `structured_format` is recommended for developers who wish to show two
  /// separate, but related, UI elements. Developers who wish to show a single
  /// UI element may want to use `text` instead. They are two different ways to
  /// represent a Place prediction. Users should not try to parse
  /// `structured_format` into `text` or vice versa.
  GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat?
      structuredFormat;

  /// Contains the human-readable name for the returned result.
  ///
  /// For establishment results, this is usually the business name and address.
  /// `text` is recommended for developers who wish to show a single UI element.
  /// Developers who wish to show two separate, but related, UI elements may
  /// want to use `structured_format` instead. They are two different ways to
  /// represent a Place prediction. Users should not try to parse
  /// `structured_format` into `text` or vice versa. This text may be different
  /// from the `display_name` returned by GetPlace. May be in mixed languages if
  /// the request `input` and `language_code` are in different languages or if
  /// the Place does not have a translation from the local language to
  /// `language_code`.
  GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText? text;

  /// List of types that apply to this Place from Table A or Table B in
  /// https://developers.google.com/maps/documentation/places/web-service/place-types.
  ///
  /// A type is a categorization of a Place. Places with shared types will share
  /// similar characteristics.
  core.List<core.String>? types;

  GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction({
    this.distanceMeters,
    this.place,
    this.placeId,
    this.structuredFormat,
    this.text,
    this.types,
  });

  GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction.fromJson(
      core.Map json_)
      : this(
          distanceMeters: json_.containsKey('distanceMeters')
              ? json_['distanceMeters'] as core.int
              : null,
          place:
              json_.containsKey('place') ? json_['place'] as core.String : null,
          placeId: json_.containsKey('placeId')
              ? json_['placeId'] as core.String
              : null,
          structuredFormat: json_.containsKey('structuredFormat')
              ? GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat
                  .fromJson(json_['structuredFormat']
                      as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text')
              ? GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText
                  .fromJson(
                      json_['text'] as core.Map<core.String, core.dynamic>)
              : null,
          types: json_.containsKey('types')
              ? (json_['types'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (distanceMeters != null) 'distanceMeters': distanceMeters!,
        if (place != null) 'place': place!,
        if (placeId != null) 'placeId': placeId!,
        if (structuredFormat != null) 'structuredFormat': structuredFormat!,
        if (text != null) 'text': text!,
        if (types != null) 'types': types!,
      };
}

/// Prediction results for a Query Autocomplete prediction.
class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction {
  /// A breakdown of the query prediction into main text containing the query
  /// and secondary text containing additional disambiguating features (such as
  /// a city or region).
  ///
  /// `structured_format` is recommended for developers who wish to show two
  /// separate, but related, UI elements. Developers who wish to show a single
  /// UI element may want to use `text` instead. They are two different ways to
  /// represent a query prediction. Users should not try to parse
  /// `structured_format` into `text` or vice versa.
  GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat?
      structuredFormat;

  /// The predicted text.
  ///
  /// This text does not represent a Place, but rather a text query that could
  /// be used in a search endpoint (for example, Text Search). `text` is
  /// recommended for developers who wish to show a single UI element.
  /// Developers who wish to show two separate, but related, UI elements may
  /// want to use `structured_format` instead. They are two different ways to
  /// represent a query prediction. Users should not try to parse
  /// `structured_format` into `text` or vice versa. May be in mixed languages
  /// if the request `input` and `language_code` are in different languages or
  /// if part of the query does not have a translation from the local language
  /// to `language_code`.
  GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText? text;

  GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction({
    this.structuredFormat,
    this.text,
  });

  GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction.fromJson(
      core.Map json_)
      : this(
          structuredFormat: json_.containsKey('structuredFormat')
              ? GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat
                  .fromJson(json_['structuredFormat']
                      as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text')
              ? GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText
                  .fromJson(
                      json_['text'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (structuredFormat != null) 'structuredFormat': structuredFormat!,
        if (text != null) 'text': text!,
      };
}

/// Identifies a substring within a given text.
class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange {
  /// Zero-based offset of the last Unicode character (exclusive).
  core.int? endOffset;

  /// Zero-based offset of the first Unicode character of the string
  /// (inclusive).
  core.int? startOffset;

  GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange({
    this.endOffset,
    this.startOffset,
  });

  GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange.fromJson(
      core.Map json_)
      : this(
          endOffset: json_.containsKey('endOffset')
              ? json_['endOffset'] as core.int
              : null,
          startOffset: json_.containsKey('startOffset')
              ? json_['startOffset'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endOffset != null) 'endOffset': endOffset!,
        if (startOffset != null) 'startOffset': startOffset!,
      };
}

/// Contains a breakdown of a Place or query prediction into main text and
/// secondary text.
///
/// For Place predictions, the main text contains the specific name of the
/// Place. For query predictions, the main text contains the query. The
/// secondary text contains additional disambiguating features (such as a city
/// or region) to further identify the Place or refine the query.
class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat {
  /// Represents the name of the Place or query.
  GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText?
      mainText;

  /// Represents additional disambiguating features (such as a city or region)
  /// to further identify the Place or refine the query.
  GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText?
      secondaryText;

  GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat({
    this.mainText,
    this.secondaryText,
  });

  GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat.fromJson(
      core.Map json_)
      : this(
          mainText: json_.containsKey('mainText')
              ? GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText
                  .fromJson(
                      json_['mainText'] as core.Map<core.String, core.dynamic>)
              : null,
          secondaryText: json_.containsKey('secondaryText')
              ? GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText
                  .fromJson(json_['secondaryText']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mainText != null) 'mainText': mainText!,
        if (secondaryText != null) 'secondaryText': secondaryText!,
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

/// Information about the EV Charge Station hosted in Place.
///
/// Terminology follows
/// https://afdc.energy.gov/fuels/electricity_infrastructure.html One port could
/// charge one car at a time. One port has one or more connectors. One station
/// has one or more ports.
class GoogleMapsPlacesV1EVChargeOptions {
  /// A list of EV charging connector aggregations that contain connectors of
  /// the same type and same charge rate.
  core.List<GoogleMapsPlacesV1EVChargeOptionsConnectorAggregation>?
      connectorAggregation;

  /// Number of connectors at this station.
  ///
  /// However, because some ports can have multiple connectors but only be able
  /// to charge one car at a time (e.g.) the number of connectors may be greater
  /// than the total number of cars which can charge simultaneously.
  core.int? connectorCount;

  GoogleMapsPlacesV1EVChargeOptions({
    this.connectorAggregation,
    this.connectorCount,
  });

  GoogleMapsPlacesV1EVChargeOptions.fromJson(core.Map json_)
      : this(
          connectorAggregation: json_.containsKey('connectorAggregation')
              ? (json_['connectorAggregation'] as core.List)
                  .map((value) =>
                      GoogleMapsPlacesV1EVChargeOptionsConnectorAggregation
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          connectorCount: json_.containsKey('connectorCount')
              ? json_['connectorCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectorAggregation != null)
          'connectorAggregation': connectorAggregation!,
        if (connectorCount != null) 'connectorCount': connectorCount!,
      };
}

/// EV charging information grouped by \[type, max_charge_rate_kw\].
///
/// Shows EV charge aggregation of connectors that have the same type and max
/// charge rate in kw.
class GoogleMapsPlacesV1EVChargeOptionsConnectorAggregation {
  /// The timestamp when the connector availability information in this
  /// aggregation was last updated.
  core.String? availabilityLastUpdateTime;

  /// Number of connectors in this aggregation that are currently available.
  core.int? availableCount;

  /// Number of connectors in this aggregation.
  core.int? count;

  /// The static max charging rate in kw of each connector in the aggregation.
  core.double? maxChargeRateKw;

  /// Number of connectors in this aggregation that are currently out of
  /// service.
  core.int? outOfServiceCount;

  /// The connector type of this aggregation.
  /// Possible string values are:
  /// - "EV_CONNECTOR_TYPE_UNSPECIFIED" : Unspecified connector.
  /// - "EV_CONNECTOR_TYPE_OTHER" : Other connector types.
  /// - "EV_CONNECTOR_TYPE_J1772" : J1772 type 1 connector.
  /// - "EV_CONNECTOR_TYPE_TYPE_2" : IEC 62196 type 2 connector. Often referred
  /// to as MENNEKES.
  /// - "EV_CONNECTOR_TYPE_CHADEMO" : CHAdeMO type connector.
  /// - "EV_CONNECTOR_TYPE_CCS_COMBO_1" : Combined Charging System (AC and DC).
  /// Based on SAE. Type-1 J-1772 connector
  /// - "EV_CONNECTOR_TYPE_CCS_COMBO_2" : Combined Charging System (AC and DC).
  /// Based on Type-2 Mennekes connector
  /// - "EV_CONNECTOR_TYPE_TESLA" : The generic TESLA connector. This is NACS in
  /// the North America but can be non-NACS in other parts of the world (e.g.
  /// CCS Combo 2 (CCS2) or GB/T). This value is less representative of an
  /// actual connector type, and more represents the ability to charge a Tesla
  /// brand vehicle at a Tesla owned charging station.
  /// - "EV_CONNECTOR_TYPE_UNSPECIFIED_GB_T" : GB/T type corresponds to the GB/T
  /// standard in China. This type covers all GB_T types.
  /// - "EV_CONNECTOR_TYPE_UNSPECIFIED_WALL_OUTLET" : Unspecified wall outlet.
  core.String? type;

  GoogleMapsPlacesV1EVChargeOptionsConnectorAggregation({
    this.availabilityLastUpdateTime,
    this.availableCount,
    this.count,
    this.maxChargeRateKw,
    this.outOfServiceCount,
    this.type,
  });

  GoogleMapsPlacesV1EVChargeOptionsConnectorAggregation.fromJson(core.Map json_)
      : this(
          availabilityLastUpdateTime:
              json_.containsKey('availabilityLastUpdateTime')
                  ? json_['availabilityLastUpdateTime'] as core.String
                  : null,
          availableCount: json_.containsKey('availableCount')
              ? json_['availableCount'] as core.int
              : null,
          count: json_.containsKey('count') ? json_['count'] as core.int : null,
          maxChargeRateKw: json_.containsKey('maxChargeRateKw')
              ? (json_['maxChargeRateKw'] as core.num).toDouble()
              : null,
          outOfServiceCount: json_.containsKey('outOfServiceCount')
              ? json_['outOfServiceCount'] as core.int
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availabilityLastUpdateTime != null)
          'availabilityLastUpdateTime': availabilityLastUpdateTime!,
        if (availableCount != null) 'availableCount': availableCount!,
        if (count != null) 'count': count!,
        if (maxChargeRateKw != null) 'maxChargeRateKw': maxChargeRateKw!,
        if (outOfServiceCount != null) 'outOfServiceCount': outOfServiceCount!,
        if (type != null) 'type': type!,
      };
}

/// The most recent information about fuel options in a gas station.
///
/// This information is updated regularly.
class GoogleMapsPlacesV1FuelOptions {
  /// The last known fuel price for each type of fuel this station has.
  ///
  /// There is one entry per fuel type this station has. Order is not important.
  core.List<GoogleMapsPlacesV1FuelOptionsFuelPrice>? fuelPrices;

  GoogleMapsPlacesV1FuelOptions({
    this.fuelPrices,
  });

  GoogleMapsPlacesV1FuelOptions.fromJson(core.Map json_)
      : this(
          fuelPrices: json_.containsKey('fuelPrices')
              ? (json_['fuelPrices'] as core.List)
                  .map((value) =>
                      GoogleMapsPlacesV1FuelOptionsFuelPrice.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fuelPrices != null) 'fuelPrices': fuelPrices!,
      };
}

/// Fuel price information for a given type.
class GoogleMapsPlacesV1FuelOptionsFuelPrice {
  /// The price of the fuel.
  GoogleTypeMoney? price;

  /// The type of fuel.
  /// Possible string values are:
  /// - "FUEL_TYPE_UNSPECIFIED" : Unspecified fuel type.
  /// - "DIESEL" : Diesel fuel.
  /// - "REGULAR_UNLEADED" : Regular unleaded.
  /// - "MIDGRADE" : Midgrade.
  /// - "PREMIUM" : Premium.
  /// - "SP91" : SP 91.
  /// - "SP91_E10" : SP 91 E10.
  /// - "SP92" : SP 92.
  /// - "SP95" : SP 95.
  /// - "SP95_E10" : SP95 E10.
  /// - "SP98" : SP 98.
  /// - "SP99" : SP 99.
  /// - "SP100" : SP 100.
  /// - "LPG" : LPG.
  /// - "E80" : E 80.
  /// - "E85" : E 85.
  /// - "METHANE" : Methane.
  /// - "BIO_DIESEL" : Bio-diesel.
  /// - "TRUCK_DIESEL" : Truck diesel.
  core.String? type;

  /// The time the fuel price was last updated.
  core.String? updateTime;

  GoogleMapsPlacesV1FuelOptionsFuelPrice({
    this.price,
    this.type,
    this.updateTime,
  });

  GoogleMapsPlacesV1FuelOptionsFuelPrice.fromJson(core.Map json_)
      : this(
          price: json_.containsKey('price')
              ? GoogleTypeMoney.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (price != null) 'price': price!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Information about a photo of a place.
class GoogleMapsPlacesV1Photo {
  /// This photo's authors.
  core.List<GoogleMapsPlacesV1AuthorAttribution>? authorAttributions;

  /// The maximum available height, in pixels.
  core.int? heightPx;

  /// Identifier.
  ///
  /// A reference representing this place photo which may be used to look up
  /// this place photo again (also called the API "resource" name:
  /// `places/{place_id}/photos/{photo}`).
  core.String? name;

  /// The maximum available width, in pixels.
  core.int? widthPx;

  GoogleMapsPlacesV1Photo({
    this.authorAttributions,
    this.heightPx,
    this.name,
    this.widthPx,
  });

  GoogleMapsPlacesV1Photo.fromJson(core.Map json_)
      : this(
          authorAttributions: json_.containsKey('authorAttributions')
              ? (json_['authorAttributions'] as core.List)
                  .map((value) => GoogleMapsPlacesV1AuthorAttribution.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          heightPx: json_.containsKey('heightPx')
              ? json_['heightPx'] as core.int
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          widthPx: json_.containsKey('widthPx')
              ? json_['widthPx'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorAttributions != null)
          'authorAttributions': authorAttributions!,
        if (heightPx != null) 'heightPx': heightPx!,
        if (name != null) 'name': name!,
        if (widthPx != null) 'widthPx': widthPx!,
      };
}

/// A photo media from Places API.
class GoogleMapsPlacesV1PhotoMedia {
  /// The resource name of a photo media in the format:
  /// `places/{place_id}/photos/{photo_reference}/media`.
  core.String? name;

  /// A short-lived uri that can be used to render the photo.
  core.String? photoUri;

  GoogleMapsPlacesV1PhotoMedia({
    this.name,
    this.photoUri,
  });

  GoogleMapsPlacesV1PhotoMedia.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          photoUri: json_.containsKey('photoUri')
              ? json_['photoUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (photoUri != null) 'photoUri': photoUri!,
      };
}

/// All the information representing a Place.
class GoogleMapsPlacesV1Place {
  /// Information about the accessibility options a place offers.
  GoogleMapsPlacesV1PlaceAccessibilityOptions? accessibilityOptions;

  /// Repeated components for each locality level.
  ///
  /// Note the following facts about the address_components\[\] array: - The
  /// array of address components may contain more components than the
  /// formatted_address. - The array does not necessarily include all the
  /// political entities that contain an address, apart from those included in
  /// the formatted_address. To retrieve all the political entities that contain
  /// a specific address, you should use reverse geocoding, passing the
  /// latitude/longitude of the address as a parameter to the request. - The
  /// format of the response is not guaranteed to remain the same between
  /// requests. In particular, the number of address_components varies based on
  /// the address requested and can change over time for the same address. A
  /// component can change position in the array. The type of the component can
  /// change. A particular component may be missing in a later response.
  core.List<GoogleMapsPlacesV1PlaceAddressComponent>? addressComponents;

  /// The place's address in adr microformat: http://microformats.org/wiki/adr.
  core.String? adrFormatAddress;

  /// Place allows dogs.
  core.bool? allowsDogs;

  /// A set of data provider that must be shown with this result.
  core.List<GoogleMapsPlacesV1PlaceAttribution>? attributions;

  /// The business status for the place.
  /// Possible string values are:
  /// - "BUSINESS_STATUS_UNSPECIFIED" : Default value. This value is unused.
  /// - "OPERATIONAL" : The establishment is operational, not necessarily open
  /// now.
  /// - "CLOSED_TEMPORARILY" : The establishment is temporarily closed.
  /// - "CLOSED_PERMANENTLY" : The establishment is permanently closed.
  core.String? businessStatus;

  /// Specifies if the business supports curbside pickup.
  core.bool? curbsidePickup;

  /// The hours of operation for the next seven days (including today).
  ///
  /// The time period starts at midnight on the date of the request and ends at
  /// 11:59 pm six days later. This field includes the special_days subfield of
  /// all hours, set for dates that have exceptional hours.
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
  core.List<GoogleMapsPlacesV1PlaceOpeningHours>? currentSecondaryOpeningHours;

  /// Specifies if the business supports delivery.
  core.bool? delivery;

  /// Specifies if the business supports indoor or outdoor seating options.
  core.bool? dineIn;

  /// The localized name of the place, suitable as a short human-readable
  /// description.
  ///
  /// For example, "Google Sydney", "Starbucks", "Pyrmont", etc.
  GoogleTypeLocalizedText? displayName;

  /// Contains a summary of the place.
  ///
  /// A summary is comprised of a textual overview, and also includes the
  /// language code for these if applicable. Summary text must be presented
  /// as-is and can not be modified or altered.
  GoogleTypeLocalizedText? editorialSummary;

  /// Information of ev charging options.
  GoogleMapsPlacesV1EVChargeOptions? evChargeOptions;

  /// A full, human-readable address for this place.
  core.String? formattedAddress;

  /// The most recent information about fuel options in a gas station.
  ///
  /// This information is updated regularly.
  GoogleMapsPlacesV1FuelOptions? fuelOptions;

  /// Place is good for children.
  core.bool? goodForChildren;

  /// Place accommodates groups.
  core.bool? goodForGroups;

  /// Place is suitable for watching sports.
  core.bool? goodForWatchingSports;

  /// A URL providing more information about this place.
  core.String? googleMapsUri;

  /// Background color for icon_mask in hex format, e.g. #909CE1.
  core.String? iconBackgroundColor;

  /// A truncated URL to an icon mask.
  ///
  /// User can access different icon type by appending type suffix to the end
  /// (eg, ".svg" or ".png").
  core.String? iconMaskBaseUri;

  /// The unique identifier of a place.
  core.String? id;

  /// A human-readable phone number for the place, in international format.
  core.String? internationalPhoneNumber;

  /// Place provides live music.
  core.bool? liveMusic;

  /// The position of this place.
  GoogleTypeLatLng? location;

  /// Place has a children's menu.
  core.bool? menuForChildren;

  /// This Place's resource name, in `places/{place_id}` format.
  ///
  /// Can be used to look up the Place.
  core.String? name;

  /// A human-readable phone number for the place, in national format.
  core.String? nationalPhoneNumber;

  /// Place provides outdoor seating.
  core.bool? outdoorSeating;

  /// Options of parking provided by the place.
  GoogleMapsPlacesV1PlaceParkingOptions? parkingOptions;

  /// Payment options the place accepts.
  ///
  /// If a payment option data is not available, the payment option field will
  /// be unset.
  GoogleMapsPlacesV1PlacePaymentOptions? paymentOptions;

  /// Information (including references) about photos of this place.
  ///
  /// A maximum of 10 photos can be returned.
  core.List<GoogleMapsPlacesV1Photo>? photos;

  /// Plus code of the place location lat/long.
  GoogleMapsPlacesV1PlacePlusCode? plusCode;

  /// Price level of the place.
  /// Possible string values are:
  /// - "PRICE_LEVEL_UNSPECIFIED" : Place price level is unspecified or unknown.
  /// - "PRICE_LEVEL_FREE" : Place provides free services.
  /// - "PRICE_LEVEL_INEXPENSIVE" : Place provides inexpensive services.
  /// - "PRICE_LEVEL_MODERATE" : Place provides moderately priced services.
  /// - "PRICE_LEVEL_EXPENSIVE" : Place provides expensive services.
  /// - "PRICE_LEVEL_VERY_EXPENSIVE" : Place provides very expensive services.
  core.String? priceLevel;

  /// The primary type of the given result.
  ///
  /// This type must one of the Places API supported types. For example,
  /// "restaurant", "cafe", "airport", etc. A place can only have a single
  /// primary type. For the complete list of possible values, see Table A and
  /// Table B at
  /// https://developers.google.com/maps/documentation/places/web-service/place-types
  core.String? primaryType;

  /// The display name of the primary type, localized to the request language if
  /// applicable.
  ///
  /// For the complete list of possible values, see Table A and Table B at
  /// https://developers.google.com/maps/documentation/places/web-service/place-types
  GoogleTypeLocalizedText? primaryTypeDisplayName;

  /// A rating between 1.0 and 5.0, based on user reviews of this place.
  core.double? rating;

  /// The regular hours of operation.
  GoogleMapsPlacesV1PlaceOpeningHours? regularOpeningHours;

  /// Contains an array of entries for information about regular secondary hours
  /// of a business.
  ///
  /// Secondary hours are different from a business's main hours. For example, a
  /// restaurant can specify drive through hours or delivery hours as its
  /// secondary hours. This field populates the type subfield, which draws from
  /// a predefined list of opening hours types (such as DRIVE_THROUGH, PICKUP,
  /// or TAKEOUT) based on the types of the place.
  core.List<GoogleMapsPlacesV1PlaceOpeningHours>? regularSecondaryOpeningHours;

  /// Specifies if the place supports reservations.
  core.bool? reservable;

  /// Place has restroom.
  core.bool? restroom;

  /// List of reviews about this place, sorted by relevance.
  ///
  /// A maximum of 5 reviews can be returned.
  core.List<GoogleMapsPlacesV1Review>? reviews;

  /// Specifies if the place serves beer.
  core.bool? servesBeer;

  /// Specifies if the place serves breakfast.
  core.bool? servesBreakfast;

  /// Specifies if the place serves brunch.
  core.bool? servesBrunch;

  /// Place serves cocktails.
  core.bool? servesCocktails;

  /// Place serves coffee.
  core.bool? servesCoffee;

  /// Place serves dessert.
  core.bool? servesDessert;

  /// Specifies if the place serves dinner.
  core.bool? servesDinner;

  /// Specifies if the place serves lunch.
  core.bool? servesLunch;

  /// Specifies if the place serves vegetarian food.
  core.bool? servesVegetarianFood;

  /// Specifies if the place serves wine.
  core.bool? servesWine;

  /// A short, human-readable address for this place.
  core.String? shortFormattedAddress;

  /// A list of sub destinations related to the place.
  core.List<GoogleMapsPlacesV1PlaceSubDestination>? subDestinations;

  /// Specifies if the business supports takeout.
  core.bool? takeout;

  /// A set of type tags for this result.
  ///
  /// For example, "political" and "locality". For the complete list of possible
  /// values, see Table A and Table B at
  /// https://developers.google.com/maps/documentation/places/web-service/place-types
  core.List<core.String>? types;

  /// The total number of reviews (with or without text) for this place.
  core.int? userRatingCount;

  /// Number of minutes this place's timezone is currently offset from UTC.
  ///
  /// This is expressed in minutes to support timezones that are offset by
  /// fractions of an hour, e.g. X hours and 15 minutes.
  core.int? utcOffsetMinutes;

  /// A viewport suitable for displaying the place on an average-sized map.
  GoogleGeoTypeViewport? viewport;

  /// The authoritative website for this place, e.g. a business' homepage.
  ///
  /// Note that for places that are part of a chain (e.g. an IKEA store), this
  /// will usually be the website for the individual store, not the overall
  /// chain.
  core.String? websiteUri;

  GoogleMapsPlacesV1Place({
    this.accessibilityOptions,
    this.addressComponents,
    this.adrFormatAddress,
    this.allowsDogs,
    this.attributions,
    this.businessStatus,
    this.curbsidePickup,
    this.currentOpeningHours,
    this.currentSecondaryOpeningHours,
    this.delivery,
    this.dineIn,
    this.displayName,
    this.editorialSummary,
    this.evChargeOptions,
    this.formattedAddress,
    this.fuelOptions,
    this.goodForChildren,
    this.goodForGroups,
    this.goodForWatchingSports,
    this.googleMapsUri,
    this.iconBackgroundColor,
    this.iconMaskBaseUri,
    this.id,
    this.internationalPhoneNumber,
    this.liveMusic,
    this.location,
    this.menuForChildren,
    this.name,
    this.nationalPhoneNumber,
    this.outdoorSeating,
    this.parkingOptions,
    this.paymentOptions,
    this.photos,
    this.plusCode,
    this.priceLevel,
    this.primaryType,
    this.primaryTypeDisplayName,
    this.rating,
    this.regularOpeningHours,
    this.regularSecondaryOpeningHours,
    this.reservable,
    this.restroom,
    this.reviews,
    this.servesBeer,
    this.servesBreakfast,
    this.servesBrunch,
    this.servesCocktails,
    this.servesCoffee,
    this.servesDessert,
    this.servesDinner,
    this.servesLunch,
    this.servesVegetarianFood,
    this.servesWine,
    this.shortFormattedAddress,
    this.subDestinations,
    this.takeout,
    this.types,
    this.userRatingCount,
    this.utcOffsetMinutes,
    this.viewport,
    this.websiteUri,
  });

  GoogleMapsPlacesV1Place.fromJson(core.Map json_)
      : this(
          accessibilityOptions: json_.containsKey('accessibilityOptions')
              ? GoogleMapsPlacesV1PlaceAccessibilityOptions.fromJson(
                  json_['accessibilityOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
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
          allowsDogs: json_.containsKey('allowsDogs')
              ? json_['allowsDogs'] as core.bool
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
          evChargeOptions: json_.containsKey('evChargeOptions')
              ? GoogleMapsPlacesV1EVChargeOptions.fromJson(
                  json_['evChargeOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          formattedAddress: json_.containsKey('formattedAddress')
              ? json_['formattedAddress'] as core.String
              : null,
          fuelOptions: json_.containsKey('fuelOptions')
              ? GoogleMapsPlacesV1FuelOptions.fromJson(
                  json_['fuelOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          goodForChildren: json_.containsKey('goodForChildren')
              ? json_['goodForChildren'] as core.bool
              : null,
          goodForGroups: json_.containsKey('goodForGroups')
              ? json_['goodForGroups'] as core.bool
              : null,
          goodForWatchingSports: json_.containsKey('goodForWatchingSports')
              ? json_['goodForWatchingSports'] as core.bool
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
          liveMusic: json_.containsKey('liveMusic')
              ? json_['liveMusic'] as core.bool
              : null,
          location: json_.containsKey('location')
              ? GoogleTypeLatLng.fromJson(
                  json_['location'] as core.Map<core.String, core.dynamic>)
              : null,
          menuForChildren: json_.containsKey('menuForChildren')
              ? json_['menuForChildren'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nationalPhoneNumber: json_.containsKey('nationalPhoneNumber')
              ? json_['nationalPhoneNumber'] as core.String
              : null,
          outdoorSeating: json_.containsKey('outdoorSeating')
              ? json_['outdoorSeating'] as core.bool
              : null,
          parkingOptions: json_.containsKey('parkingOptions')
              ? GoogleMapsPlacesV1PlaceParkingOptions.fromJson(
                  json_['parkingOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          paymentOptions: json_.containsKey('paymentOptions')
              ? GoogleMapsPlacesV1PlacePaymentOptions.fromJson(
                  json_['paymentOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          photos: json_.containsKey('photos')
              ? (json_['photos'] as core.List)
                  .map((value) => GoogleMapsPlacesV1Photo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          plusCode: json_.containsKey('plusCode')
              ? GoogleMapsPlacesV1PlacePlusCode.fromJson(
                  json_['plusCode'] as core.Map<core.String, core.dynamic>)
              : null,
          priceLevel: json_.containsKey('priceLevel')
              ? json_['priceLevel'] as core.String
              : null,
          primaryType: json_.containsKey('primaryType')
              ? json_['primaryType'] as core.String
              : null,
          primaryTypeDisplayName: json_.containsKey('primaryTypeDisplayName')
              ? GoogleTypeLocalizedText.fromJson(json_['primaryTypeDisplayName']
                  as core.Map<core.String, core.dynamic>)
              : null,
          rating: json_.containsKey('rating')
              ? (json_['rating'] as core.num).toDouble()
              : null,
          regularOpeningHours: json_.containsKey('regularOpeningHours')
              ? GoogleMapsPlacesV1PlaceOpeningHours.fromJson(
                  json_['regularOpeningHours']
                      as core.Map<core.String, core.dynamic>)
              : null,
          regularSecondaryOpeningHours: json_
                  .containsKey('regularSecondaryOpeningHours')
              ? (json_['regularSecondaryOpeningHours'] as core.List)
                  .map((value) => GoogleMapsPlacesV1PlaceOpeningHours.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          reservable: json_.containsKey('reservable')
              ? json_['reservable'] as core.bool
              : null,
          restroom: json_.containsKey('restroom')
              ? json_['restroom'] as core.bool
              : null,
          reviews: json_.containsKey('reviews')
              ? (json_['reviews'] as core.List)
                  .map((value) => GoogleMapsPlacesV1Review.fromJson(
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
          servesCocktails: json_.containsKey('servesCocktails')
              ? json_['servesCocktails'] as core.bool
              : null,
          servesCoffee: json_.containsKey('servesCoffee')
              ? json_['servesCoffee'] as core.bool
              : null,
          servesDessert: json_.containsKey('servesDessert')
              ? json_['servesDessert'] as core.bool
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
          shortFormattedAddress: json_.containsKey('shortFormattedAddress')
              ? json_['shortFormattedAddress'] as core.String
              : null,
          subDestinations: json_.containsKey('subDestinations')
              ? (json_['subDestinations'] as core.List)
                  .map((value) =>
                      GoogleMapsPlacesV1PlaceSubDestination.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
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
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessibilityOptions != null)
          'accessibilityOptions': accessibilityOptions!,
        if (addressComponents != null) 'addressComponents': addressComponents!,
        if (adrFormatAddress != null) 'adrFormatAddress': adrFormatAddress!,
        if (allowsDogs != null) 'allowsDogs': allowsDogs!,
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
        if (evChargeOptions != null) 'evChargeOptions': evChargeOptions!,
        if (formattedAddress != null) 'formattedAddress': formattedAddress!,
        if (fuelOptions != null) 'fuelOptions': fuelOptions!,
        if (goodForChildren != null) 'goodForChildren': goodForChildren!,
        if (goodForGroups != null) 'goodForGroups': goodForGroups!,
        if (goodForWatchingSports != null)
          'goodForWatchingSports': goodForWatchingSports!,
        if (googleMapsUri != null) 'googleMapsUri': googleMapsUri!,
        if (iconBackgroundColor != null)
          'iconBackgroundColor': iconBackgroundColor!,
        if (iconMaskBaseUri != null) 'iconMaskBaseUri': iconMaskBaseUri!,
        if (id != null) 'id': id!,
        if (internationalPhoneNumber != null)
          'internationalPhoneNumber': internationalPhoneNumber!,
        if (liveMusic != null) 'liveMusic': liveMusic!,
        if (location != null) 'location': location!,
        if (menuForChildren != null) 'menuForChildren': menuForChildren!,
        if (name != null) 'name': name!,
        if (nationalPhoneNumber != null)
          'nationalPhoneNumber': nationalPhoneNumber!,
        if (outdoorSeating != null) 'outdoorSeating': outdoorSeating!,
        if (parkingOptions != null) 'parkingOptions': parkingOptions!,
        if (paymentOptions != null) 'paymentOptions': paymentOptions!,
        if (photos != null) 'photos': photos!,
        if (plusCode != null) 'plusCode': plusCode!,
        if (priceLevel != null) 'priceLevel': priceLevel!,
        if (primaryType != null) 'primaryType': primaryType!,
        if (primaryTypeDisplayName != null)
          'primaryTypeDisplayName': primaryTypeDisplayName!,
        if (rating != null) 'rating': rating!,
        if (regularOpeningHours != null)
          'regularOpeningHours': regularOpeningHours!,
        if (regularSecondaryOpeningHours != null)
          'regularSecondaryOpeningHours': regularSecondaryOpeningHours!,
        if (reservable != null) 'reservable': reservable!,
        if (restroom != null) 'restroom': restroom!,
        if (reviews != null) 'reviews': reviews!,
        if (servesBeer != null) 'servesBeer': servesBeer!,
        if (servesBreakfast != null) 'servesBreakfast': servesBreakfast!,
        if (servesBrunch != null) 'servesBrunch': servesBrunch!,
        if (servesCocktails != null) 'servesCocktails': servesCocktails!,
        if (servesCoffee != null) 'servesCoffee': servesCoffee!,
        if (servesDessert != null) 'servesDessert': servesDessert!,
        if (servesDinner != null) 'servesDinner': servesDinner!,
        if (servesLunch != null) 'servesLunch': servesLunch!,
        if (servesVegetarianFood != null)
          'servesVegetarianFood': servesVegetarianFood!,
        if (servesWine != null) 'servesWine': servesWine!,
        if (shortFormattedAddress != null)
          'shortFormattedAddress': shortFormattedAddress!,
        if (subDestinations != null) 'subDestinations': subDestinations!,
        if (takeout != null) 'takeout': takeout!,
        if (types != null) 'types': types!,
        if (userRatingCount != null) 'userRatingCount': userRatingCount!,
        if (utcOffsetMinutes != null) 'utcOffsetMinutes': utcOffsetMinutes!,
        if (viewport != null) 'viewport': viewport!,
        if (websiteUri != null) 'websiteUri': websiteUri!,
      };
}

/// Information about the accessibility options a place offers.
class GoogleMapsPlacesV1PlaceAccessibilityOptions {
  /// Places has wheelchair accessible entrance.
  core.bool? wheelchairAccessibleEntrance;

  /// Place offers wheelchair accessible parking.
  core.bool? wheelchairAccessibleParking;

  /// Place has wheelchair accessible restroom.
  core.bool? wheelchairAccessibleRestroom;

  /// Place has wheelchair accessible seating.
  core.bool? wheelchairAccessibleSeating;

  GoogleMapsPlacesV1PlaceAccessibilityOptions({
    this.wheelchairAccessibleEntrance,
    this.wheelchairAccessibleParking,
    this.wheelchairAccessibleRestroom,
    this.wheelchairAccessibleSeating,
  });

  GoogleMapsPlacesV1PlaceAccessibilityOptions.fromJson(core.Map json_)
      : this(
          wheelchairAccessibleEntrance:
              json_.containsKey('wheelchairAccessibleEntrance')
                  ? json_['wheelchairAccessibleEntrance'] as core.bool
                  : null,
          wheelchairAccessibleParking:
              json_.containsKey('wheelchairAccessibleParking')
                  ? json_['wheelchairAccessibleParking'] as core.bool
                  : null,
          wheelchairAccessibleRestroom:
              json_.containsKey('wheelchairAccessibleRestroom')
                  ? json_['wheelchairAccessibleRestroom'] as core.bool
                  : null,
          wheelchairAccessibleSeating:
              json_.containsKey('wheelchairAccessibleSeating')
                  ? json_['wheelchairAccessibleSeating'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (wheelchairAccessibleEntrance != null)
          'wheelchairAccessibleEntrance': wheelchairAccessibleEntrance!,
        if (wheelchairAccessibleParking != null)
          'wheelchairAccessibleParking': wheelchairAccessibleParking!,
        if (wheelchairAccessibleRestroom != null)
          'wheelchairAccessibleRestroom': wheelchairAccessibleRestroom!,
        if (wheelchairAccessibleSeating != null)
          'wheelchairAccessibleSeating': wheelchairAccessibleSeating!,
      };
}

/// The structured components that form the formatted address, if this
/// information is available.
class GoogleMapsPlacesV1PlaceAddressComponent {
  /// The language used to format this components, in CLDR notation.
  core.String? languageCode;

  /// The full text description or name of the address component.
  ///
  /// For example, an address component for the country Australia may have a
  /// long_name of "Australia".
  core.String? longText;

  /// An abbreviated textual name for the address component, if available.
  ///
  /// For example, an address component for the country of Australia may have a
  /// short_name of "AU".
  core.String? shortText;

  /// An array indicating the type(s) of the address component.
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
  core.String? provider;

  /// URI to the Place's data provider.
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
  core.bool? openNow;

  /// The periods that this place is open during the week.
  ///
  /// The periods are in chronological order, starting with Sunday in the
  /// place-local timezone. An empty (but not absent) value indicates a place
  /// that is never open, e.g. because it is closed temporarily for renovations.
  core.List<GoogleMapsPlacesV1PlaceOpeningHoursPeriod>? periods;

  /// A type string used to identify the type of secondary hours.
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
  core.List<GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay>? specialDays;

  /// Localized strings describing the opening hours of this place, one string
  /// for each day of the week.
  ///
  /// Will be empty if the hours are unknown or could not be converted to
  /// localized text. Example: "Sun: 18:00–06:00"
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
  GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint? close;

  /// The time that the place starts to be open.
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
  GoogleTypeDate? date;

  /// A day of the week, as an integer in the range 0-6.
  ///
  /// 0 is Sunday, 1 is Monday, etc.
  core.int? day;

  /// The hour in 2 digits.
  ///
  /// Ranges from 00 to 23.
  core.int? hour;

  /// The minute in 2 digits.
  ///
  /// Ranges from 00 to 59.
  core.int? minute;

  /// Whether or not this endpoint was truncated.
  ///
  /// Truncation occurs when the real hours are outside the times we are willing
  /// to return hours between, so we truncate the hours back to these
  /// boundaries. This ensures that at most 24 * 7 hours from midnight of the
  /// day of the request are returned.
  core.bool? truncated;

  GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint({
    this.date,
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

/// Information about parking options for the place.
///
/// A parking lot could support more than one option at the same time.
class GoogleMapsPlacesV1PlaceParkingOptions {
  /// Place offers free garage parking.
  core.bool? freeGarageParking;

  /// Place offers free parking lots.
  core.bool? freeParkingLot;

  /// Place offers free street parking.
  core.bool? freeStreetParking;

  /// Place offers paid garage parking.
  core.bool? paidGarageParking;

  /// Place offers paid parking lots.
  core.bool? paidParkingLot;

  /// Place offers paid street parking.
  core.bool? paidStreetParking;

  /// Place offers valet parking.
  core.bool? valetParking;

  GoogleMapsPlacesV1PlaceParkingOptions({
    this.freeGarageParking,
    this.freeParkingLot,
    this.freeStreetParking,
    this.paidGarageParking,
    this.paidParkingLot,
    this.paidStreetParking,
    this.valetParking,
  });

  GoogleMapsPlacesV1PlaceParkingOptions.fromJson(core.Map json_)
      : this(
          freeGarageParking: json_.containsKey('freeGarageParking')
              ? json_['freeGarageParking'] as core.bool
              : null,
          freeParkingLot: json_.containsKey('freeParkingLot')
              ? json_['freeParkingLot'] as core.bool
              : null,
          freeStreetParking: json_.containsKey('freeStreetParking')
              ? json_['freeStreetParking'] as core.bool
              : null,
          paidGarageParking: json_.containsKey('paidGarageParking')
              ? json_['paidGarageParking'] as core.bool
              : null,
          paidParkingLot: json_.containsKey('paidParkingLot')
              ? json_['paidParkingLot'] as core.bool
              : null,
          paidStreetParking: json_.containsKey('paidStreetParking')
              ? json_['paidStreetParking'] as core.bool
              : null,
          valetParking: json_.containsKey('valetParking')
              ? json_['valetParking'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (freeGarageParking != null) 'freeGarageParking': freeGarageParking!,
        if (freeParkingLot != null) 'freeParkingLot': freeParkingLot!,
        if (freeStreetParking != null) 'freeStreetParking': freeStreetParking!,
        if (paidGarageParking != null) 'paidGarageParking': paidGarageParking!,
        if (paidParkingLot != null) 'paidParkingLot': paidParkingLot!,
        if (paidStreetParking != null) 'paidStreetParking': paidStreetParking!,
        if (valetParking != null) 'valetParking': valetParking!,
      };
}

/// Payment options the place accepts.
class GoogleMapsPlacesV1PlacePaymentOptions {
  /// Place accepts cash only as payment.
  ///
  /// Places with this attribute may still accept other payment methods.
  core.bool? acceptsCashOnly;

  /// Place accepts credit cards as payment.
  core.bool? acceptsCreditCards;

  /// Place accepts debit cards as payment.
  core.bool? acceptsDebitCards;

  /// Place accepts NFC payments.
  core.bool? acceptsNfc;

  GoogleMapsPlacesV1PlacePaymentOptions({
    this.acceptsCashOnly,
    this.acceptsCreditCards,
    this.acceptsDebitCards,
    this.acceptsNfc,
  });

  GoogleMapsPlacesV1PlacePaymentOptions.fromJson(core.Map json_)
      : this(
          acceptsCashOnly: json_.containsKey('acceptsCashOnly')
              ? json_['acceptsCashOnly'] as core.bool
              : null,
          acceptsCreditCards: json_.containsKey('acceptsCreditCards')
              ? json_['acceptsCreditCards'] as core.bool
              : null,
          acceptsDebitCards: json_.containsKey('acceptsDebitCards')
              ? json_['acceptsDebitCards'] as core.bool
              : null,
          acceptsNfc: json_.containsKey('acceptsNfc')
              ? json_['acceptsNfc'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acceptsCashOnly != null) 'acceptsCashOnly': acceptsCashOnly!,
        if (acceptsCreditCards != null)
          'acceptsCreditCards': acceptsCreditCards!,
        if (acceptsDebitCards != null) 'acceptsDebitCards': acceptsDebitCards!,
        if (acceptsNfc != null) 'acceptsNfc': acceptsNfc!,
      };
}

/// Plus code (http://plus.codes) is a location reference with two formats:
/// global code defining a 14mx14m (1/8000th of a degree) or smaller rectangle,
/// and compound code, replacing the prefix with a reference location.
typedef GoogleMapsPlacesV1PlacePlusCode = $PlusCode;

/// Place resource name and id of sub destinations that relate to the place.
///
/// For example, different terminals are different destinations of an airport.
class GoogleMapsPlacesV1PlaceSubDestination {
  /// The place id of the sub destination.
  core.String? id;

  /// The resource name of the sub destination.
  core.String? name;

  GoogleMapsPlacesV1PlaceSubDestination({
    this.id,
    this.name,
  });

  GoogleMapsPlacesV1PlaceSubDestination.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
      };
}

/// Information about a review of a place.
class GoogleMapsPlacesV1Review {
  /// This review's author.
  GoogleMapsPlacesV1AuthorAttribution? authorAttribution;

  /// A reference representing this place review which may be used to look up
  /// this place review again (also called the API "resource" name:
  /// `places/{place_id}/reviews/{review}`).
  core.String? name;

  /// The review text in its original language.
  GoogleTypeLocalizedText? originalText;

  /// Timestamp for the review.
  core.String? publishTime;

  /// A number between 1.0 and 5.0, also called the number of stars.
  core.double? rating;

  /// A string of formatted recent time, expressing the review time relative to
  /// the current time in a form appropriate for the language and country.
  core.String? relativePublishTimeDescription;

  /// The localized text of the review.
  GoogleTypeLocalizedText? text;

  GoogleMapsPlacesV1Review({
    this.authorAttribution,
    this.name,
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
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
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
        if (name != null) 'name': name!,
        if (originalText != null) 'originalText': originalText!,
        if (publishTime != null) 'publishTime': publishTime!,
        if (rating != null) 'rating': rating!,
        if (relativePublishTimeDescription != null)
          'relativePublishTimeDescription': relativePublishTimeDescription!,
        if (text != null) 'text': text!,
      };
}

/// Request proto for Search Nearby.
class GoogleMapsPlacesV1SearchNearbyRequest {
  /// Excluded primary Place type (e.g. "restaurant" or "gas_station") from
  /// https://developers.google.com/maps/documentation/places/web-service/place-types.
  ///
  /// Up to 50 types from
  /// [Table A](https://developers.google.com/maps/documentation/places/web-service/place-types#table-a)
  /// may be specified. If there are any conflicting primary types, i.e. a type
  /// appears in both included_primary_types and excluded_primary_types, an
  /// INVALID_ARGUMENT error is returned. If a Place type is specified with
  /// multiple type restrictions, only places that satisfy all of the
  /// restrictions are returned. For example, if we have {included_types =
  /// \["restaurant"\], excluded_primary_types = \["restaurant"\]}, the returned
  /// places provide "restaurant" related services but do not operate primarily
  /// as "restaurants".
  core.List<core.String>? excludedPrimaryTypes;

  /// Excluded Place type (eg, "restaurant" or "gas_station") from
  /// https://developers.google.com/maps/documentation/places/web-service/place-types.
  ///
  /// Up to 50 types from
  /// [Table A](https://developers.google.com/maps/documentation/places/web-service/place-types#table-a)
  /// may be specified. If the client provides both included_types (e.g.
  /// restaurant) and excluded_types (e.g. cafe), then the response should
  /// include places that are restaurant but not cafe. The response includes
  /// places that match at least one of the included_types and none of the
  /// excluded_types. If there are any conflicting types, i.e. a type appears in
  /// both included_types and excluded_types, an INVALID_ARGUMENT error is
  /// returned. If a Place type is specified with multiple type restrictions,
  /// only places that satisfy all of the restrictions are returned. For
  /// example, if we have {included_types = \["restaurant"\],
  /// excluded_primary_types = \["restaurant"\]}, the returned places provide
  /// "restaurant" related services but do not operate primarily as
  /// "restaurants".
  core.List<core.String>? excludedTypes;

  /// Included primary Place type (e.g. "restaurant" or "gas_station") from
  /// https://developers.google.com/maps/documentation/places/web-service/place-types.
  ///
  /// A place can only have a single primary type from the supported types table
  /// associated with it. Up to 50 types from
  /// [Table A](https://developers.google.com/maps/documentation/places/web-service/place-types#table-a)
  /// may be specified. If there are any conflicting primary types, i.e. a type
  /// appears in both included_primary_types and excluded_primary_types, an
  /// INVALID_ARGUMENT error is returned. If a Place type is specified with
  /// multiple type restrictions, only places that satisfy all of the
  /// restrictions are returned. For example, if we have {included_types =
  /// \["restaurant"\], excluded_primary_types = \["restaurant"\]}, the returned
  /// places provide "restaurant" related services but do not operate primarily
  /// as "restaurants".
  core.List<core.String>? includedPrimaryTypes;

  /// Included Place type (eg, "restaurant" or "gas_station") from
  /// https://developers.google.com/maps/documentation/places/web-service/place-types.
  ///
  /// Up to 50 types from
  /// [Table A](https://developers.google.com/maps/documentation/places/web-service/place-types#table-a)
  /// may be specified. If there are any conflicting types, i.e. a type appears
  /// in both included_types and excluded_types, an INVALID_ARGUMENT error is
  /// returned. If a Place type is specified with multiple type restrictions,
  /// only places that satisfy all of the restrictions are returned. For
  /// example, if we have {included_types = \["restaurant"\],
  /// excluded_primary_types = \["restaurant"\]}, the returned places provide
  /// "restaurant" related services but do not operate primarily as
  /// "restaurants".
  core.List<core.String>? includedTypes;

  /// Place details will be displayed with the preferred language if available.
  ///
  /// If the language code is unspecified or unrecognized, place details of any
  /// language may be returned, with a preference for English if such details
  /// exist. Current list of supported languages:
  /// https://developers.google.com/maps/faq#languagesupport.
  core.String? languageCode;

  /// The region to search.
  ///
  /// Required.
  GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction? locationRestriction;

  /// Maximum number of results to return.
  ///
  /// It must be between 1 and 20 (default), inclusively. If the number is
  /// unset, it falls back to the upper limit. If the number is set to negative
  /// or exceeds the upper limit, an INVALID_ARGUMENT error is returned.
  core.int? maxResultCount;

  /// How results will be ranked in the response.
  /// Possible string values are:
  /// - "RANK_PREFERENCE_UNSPECIFIED" : RankPreference value not set. Will use
  /// rank by POPULARITY by default.
  /// - "DISTANCE" : Ranks results by distance.
  /// - "POPULARITY" : Ranks results by popularity.
  core.String? rankPreference;

  /// The Unicode country/region code (CLDR) of the location where the request
  /// is coming from.
  ///
  /// This parameter is used to display the place details, like region-specific
  /// place name, if available. The parameter can affect results based on
  /// applicable law. For more information, see
  /// https://www.unicode.org/cldr/charts/latest/supplemental/territory_language_information.html.
  /// Note that 3-digit region codes are not currently supported.
  core.String? regionCode;

  GoogleMapsPlacesV1SearchNearbyRequest({
    this.excludedPrimaryTypes,
    this.excludedTypes,
    this.includedPrimaryTypes,
    this.includedTypes,
    this.languageCode,
    this.locationRestriction,
    this.maxResultCount,
    this.rankPreference,
    this.regionCode,
  });

  GoogleMapsPlacesV1SearchNearbyRequest.fromJson(core.Map json_)
      : this(
          excludedPrimaryTypes: json_.containsKey('excludedPrimaryTypes')
              ? (json_['excludedPrimaryTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          excludedTypes: json_.containsKey('excludedTypes')
              ? (json_['excludedTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includedPrimaryTypes: json_.containsKey('includedPrimaryTypes')
              ? (json_['includedPrimaryTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includedTypes: json_.containsKey('includedTypes')
              ? (json_['includedTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          locationRestriction: json_.containsKey('locationRestriction')
              ? GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction
                  .fromJson(json_['locationRestriction']
                      as core.Map<core.String, core.dynamic>)
              : null,
          maxResultCount: json_.containsKey('maxResultCount')
              ? json_['maxResultCount'] as core.int
              : null,
          rankPreference: json_.containsKey('rankPreference')
              ? json_['rankPreference'] as core.String
              : null,
          regionCode: json_.containsKey('regionCode')
              ? json_['regionCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludedPrimaryTypes != null)
          'excludedPrimaryTypes': excludedPrimaryTypes!,
        if (excludedTypes != null) 'excludedTypes': excludedTypes!,
        if (includedPrimaryTypes != null)
          'includedPrimaryTypes': includedPrimaryTypes!,
        if (includedTypes != null) 'includedTypes': includedTypes!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (locationRestriction != null)
          'locationRestriction': locationRestriction!,
        if (maxResultCount != null) 'maxResultCount': maxResultCount!,
        if (rankPreference != null) 'rankPreference': rankPreference!,
        if (regionCode != null) 'regionCode': regionCode!,
      };
}

/// The region to search.
class GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction {
  /// A circle defined by center point and radius.
  GoogleMapsPlacesV1Circle? circle;

  GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction({
    this.circle,
  });

  GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction.fromJson(
      core.Map json_)
      : this(
          circle: json_.containsKey('circle')
              ? GoogleMapsPlacesV1Circle.fromJson(
                  json_['circle'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (circle != null) 'circle': circle!,
      };
}

/// Response proto for Search Nearby.
class GoogleMapsPlacesV1SearchNearbyResponse {
  /// A list of places that meets user's requirements like places types, number
  /// of places and specific location restriction.
  core.List<GoogleMapsPlacesV1Place>? places;

  GoogleMapsPlacesV1SearchNearbyResponse({
    this.places,
  });

  GoogleMapsPlacesV1SearchNearbyResponse.fromJson(core.Map json_)
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

/// Request proto for SearchText.
class GoogleMapsPlacesV1SearchTextRequest {
  /// Set the searchable EV options of a place search request.
  ///
  /// Optional.
  GoogleMapsPlacesV1SearchTextRequestEVOptions? evOptions;

  /// The requested place type.
  ///
  /// Full list of types supported:
  /// https://developers.google.com/maps/documentation/places/web-service/place-types.
  /// Only support one included type.
  core.String? includedType;

  /// Place details will be displayed with the preferred language if available.
  ///
  /// If the language code is unspecified or unrecognized, place details of any
  /// language may be returned, with a preference for English if such details
  /// exist. Current list of supported languages:
  /// https://developers.google.com/maps/faq#languagesupport.
  core.String? languageCode;

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
  /// It must be between 1 and 20, inclusively. The default is 20. If the number
  /// is unset, it falls back to the upper limit. If the number is set to
  /// negative or exceeds the upper limit, an INVALID_ARGUMENT error is
  /// returned.
  core.int? maxResultCount;

  /// Filter out results whose average user rating is strictly less than this
  /// limit.
  ///
  /// A valid value must be a float between 0 and 5 (inclusively) at a 0.5
  /// cadence i.e. \[0, 0.5, 1.0, ... , 5.0\] inclusively. The input rating will
  /// round up to the nearest 0.5(ceiling). For instance, a rating of 0.6 will
  /// eliminate all results with a less than 1.0 rating.
  core.double? minRating;

  /// Used to restrict the search to places that are currently open.
  ///
  /// The default is false.
  core.bool? openNow;

  /// Used to restrict the search to places that are marked as certain price
  /// levels.
  ///
  /// Users can choose any combinations of price levels. Default to select all
  /// price levels.
  core.List<core.String>? priceLevels;

  /// How results will be ranked in the response.
  /// Possible string values are:
  /// - "RANK_PREFERENCE_UNSPECIFIED" : RankPreference value not set. Will
  /// default to DISTANCE.
  /// - "DISTANCE" : Ranks results by distance.
  /// - "RELEVANCE" : Ranks results by relevance. Sort order determined by
  /// normal ranking stack.
  core.String? rankPreference;

  /// The Unicode country/region code (CLDR) of the location where the request
  /// is coming from.
  ///
  /// This parameter is used to display the place details, like region-specific
  /// place name, if available. The parameter can affect results based on
  /// applicable law. For more information, see
  /// https://www.unicode.org/cldr/charts/latest/supplemental/territory_language_information.html.
  /// Note that 3-digit region codes are not currently supported.
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
    this.evOptions,
    this.includedType,
    this.languageCode,
    this.locationBias,
    this.locationRestriction,
    this.maxResultCount,
    this.minRating,
    this.openNow,
    this.priceLevels,
    this.rankPreference,
    this.regionCode,
    this.strictTypeFiltering,
    this.textQuery,
  });

  GoogleMapsPlacesV1SearchTextRequest.fromJson(core.Map json_)
      : this(
          evOptions: json_.containsKey('evOptions')
              ? GoogleMapsPlacesV1SearchTextRequestEVOptions.fromJson(
                  json_['evOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          includedType: json_.containsKey('includedType')
              ? json_['includedType'] as core.String
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
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
        if (evOptions != null) 'evOptions': evOptions!,
        if (includedType != null) 'includedType': includedType!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (locationBias != null) 'locationBias': locationBias!,
        if (locationRestriction != null)
          'locationRestriction': locationRestriction!,
        if (maxResultCount != null) 'maxResultCount': maxResultCount!,
        if (minRating != null) 'minRating': minRating!,
        if (openNow != null) 'openNow': openNow!,
        if (priceLevels != null) 'priceLevels': priceLevels!,
        if (rankPreference != null) 'rankPreference': rankPreference!,
        if (regionCode != null) 'regionCode': regionCode!,
        if (strictTypeFiltering != null)
          'strictTypeFiltering': strictTypeFiltering!,
        if (textQuery != null) 'textQuery': textQuery!,
      };
}

/// Searchable EV options of a place search request.
class GoogleMapsPlacesV1SearchTextRequestEVOptions {
  /// The list of preferred EV connector types.
  ///
  /// A place that does not support any of the listed connector types are filter
  /// out.
  ///
  /// Optional.
  core.List<core.String>? connectorTypes;

  /// Filtering places by minimum charging rate.
  ///
  /// Any places with charging a rate less than the minimum charging rate are
  /// filtered out.
  ///
  /// Optional.
  core.double? minimumChargingRateKw;

  GoogleMapsPlacesV1SearchTextRequestEVOptions({
    this.connectorTypes,
    this.minimumChargingRateKw,
  });

  GoogleMapsPlacesV1SearchTextRequestEVOptions.fromJson(core.Map json_)
      : this(
          connectorTypes: json_.containsKey('connectorTypes')
              ? (json_['connectorTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          minimumChargingRateKw: json_.containsKey('minimumChargingRateKw')
              ? (json_['minimumChargingRateKw'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectorTypes != null) 'connectorTypes': connectorTypes!,
        if (minimumChargingRateKw != null)
          'minimumChargingRateKw': minimumChargingRateKw!,
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
  ///
  /// `rectangle.high()` must be the northeast point of the rectangle viewport.
  /// `rectangle.low()` must be the southwest point of the rectangle viewport.
  /// `rectangle.low().latitude()` cannot be greater than
  /// `rectangle.high().latitude()`. This will result in an empty latitude
  /// range. A rectangle viewport cannot be wider than 180 degrees.
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
  ///
  /// `rectangle.high()` must be the northeast point of the rectangle viewport.
  /// `rectangle.low()` must be the southwest point of the rectangle viewport.
  /// `rectangle.low().latitude()` cannot be greater than
  /// `rectangle.high().latitude()`. This will result in an empty latitude
  /// range. A rectangle viewport cannot be wider than 180 degrees.
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

/// Represents an amount of money with its currency type.
typedef GoogleTypeMoney = $Money;
