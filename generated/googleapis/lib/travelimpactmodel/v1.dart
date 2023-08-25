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

/// Travel Impact Model API - v1
///
/// Travel Impact Model API lets you query travel carbon emission estimates.
///
/// For more information, see
/// <https://developers.google.com/travel/impact-model>
///
/// Create an instance of [TravelImpactModelApi] to access these resources:
///
/// - [FlightsResource]
library travelimpactmodel_v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Travel Impact Model API lets you query travel carbon emission estimates.
class TravelImpactModelApi {
  final commons.ApiRequester _requester;

  FlightsResource get flights => FlightsResource(_requester);

  TravelImpactModelApi(http.Client client,
      {core.String rootUrl = 'https://travelimpactmodel.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class FlightsResource {
  final commons.ApiRequester _requester;

  FlightsResource(commons.ApiRequester client) : _requester = client;

  /// Stateless method to retrieve emission estimates.
  ///
  /// Details on how emission estimates are computed:
  /// https://github.com/google/travel-impact-model The response will contain
  /// all entries that match the input flight legs, in the same order. If there
  /// are no estimates available for a certain flight leg, the response will
  /// return the flight leg object with empty emission fields. The request will
  /// still be considered successful. Reasons for missing emission estimates
  /// include: - The flight is unknown to the server. - The input flight leg is
  /// missing one or more identifiers. - The flight date is in the past. - The
  /// aircraft type is not supported by the model. - Missing seat configuration.
  /// The request can contain up to 1000 flight legs. If the request has more
  /// than 1000 direct flights, if will fail with an INVALID_ARGUMENT error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ComputeFlightEmissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ComputeFlightEmissionsResponse> computeFlightEmissions(
    ComputeFlightEmissionsRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/flights:computeFlightEmissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ComputeFlightEmissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Input definition for the ComputeFlightEmissions request.
class ComputeFlightEmissionsRequest {
  /// Direct flights to return emission estimates for.
  ///
  /// Required.
  core.List<Flight>? flights;

  ComputeFlightEmissionsRequest({
    this.flights,
  });

  ComputeFlightEmissionsRequest.fromJson(core.Map json_)
      : this(
          flights: json_.containsKey('flights')
              ? (json_['flights'] as core.List)
                  .map((value) => Flight.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (flights != null) 'flights': flights!,
      };
}

/// Output definition for the ComputeFlightEmissions response.
class ComputeFlightEmissionsResponse {
  /// List of flight legs with emission estimates.
  core.List<FlightWithEmissions>? flightEmissions;

  /// The model version under which emission estimates for all flights in this
  /// response were computed.
  ModelVersion? modelVersion;

  ComputeFlightEmissionsResponse({
    this.flightEmissions,
    this.modelVersion,
  });

  ComputeFlightEmissionsResponse.fromJson(core.Map json_)
      : this(
          flightEmissions: json_.containsKey('flightEmissions')
              ? (json_['flightEmissions'] as core.List)
                  .map((value) => FlightWithEmissions.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          modelVersion: json_.containsKey('modelVersion')
              ? ModelVersion.fromJson(
                  json_['modelVersion'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (flightEmissions != null) 'flightEmissions': flightEmissions!,
        if (modelVersion != null) 'modelVersion': modelVersion!,
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

/// Grouped emissions per seating class results.
class EmissionsGramsPerPax {
  /// Emissions for one passenger in business class in grams.
  ///
  /// This field is always computed and populated, regardless of whether the
  /// aircraft has business class seats or not.
  core.int? business;

  /// Emissions for one passenger in economy class in grams.
  ///
  /// This field is always computed and populated, regardless of whether the
  /// aircraft has economy class seats or not.
  core.int? economy;

  /// Emissions for one passenger in first class in grams.
  ///
  /// This field is always computed and populated, regardless of whether the
  /// aircraft has first class seats or not.
  core.int? first;

  /// Emissions for one passenger in premium economy class in grams.
  ///
  /// This field is always computed and populated, regardless of whether the
  /// aircraft has premium economy class seats or not.
  core.int? premiumEconomy;

  EmissionsGramsPerPax({
    this.business,
    this.economy,
    this.first,
    this.premiumEconomy,
  });

  EmissionsGramsPerPax.fromJson(core.Map json_)
      : this(
          business: json_.containsKey('business')
              ? json_['business'] as core.int
              : null,
          economy: json_.containsKey('economy')
              ? json_['economy'] as core.int
              : null,
          first: json_.containsKey('first') ? json_['first'] as core.int : null,
          premiumEconomy: json_.containsKey('premiumEconomy')
              ? json_['premiumEconomy'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (business != null) 'business': business!,
        if (economy != null) 'economy': economy!,
        if (first != null) 'first': first!,
        if (premiumEconomy != null) 'premiumEconomy': premiumEconomy!,
      };
}

/// All details related to a single request item for a direct flight emission
/// estimates.
class Flight {
  /// Date of the flight in the time zone of the origin airport.
  ///
  /// Must be a date in the present or future.
  ///
  /// Required.
  Date? departureDate;

  /// IATA airport code for flight destination, e.g. "JFK".
  ///
  /// Required.
  core.String? destination;

  /// Flight number, e.g. 324.
  ///
  /// Required.
  core.int? flightNumber;

  /// IATA carrier code, e.g. "AA".
  ///
  /// Required.
  core.String? operatingCarrierCode;

  /// IATA airport code for flight origin, e.g. "LHR".
  ///
  /// Required.
  core.String? origin;

  Flight({
    this.departureDate,
    this.destination,
    this.flightNumber,
    this.operatingCarrierCode,
    this.origin,
  });

  Flight.fromJson(core.Map json_)
      : this(
          departureDate: json_.containsKey('departureDate')
              ? Date.fromJson(
                  json_['departureDate'] as core.Map<core.String, core.dynamic>)
              : null,
          destination: json_.containsKey('destination')
              ? json_['destination'] as core.String
              : null,
          flightNumber: json_.containsKey('flightNumber')
              ? json_['flightNumber'] as core.int
              : null,
          operatingCarrierCode: json_.containsKey('operatingCarrierCode')
              ? json_['operatingCarrierCode'] as core.String
              : null,
          origin: json_.containsKey('origin')
              ? json_['origin'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (departureDate != null) 'departureDate': departureDate!,
        if (destination != null) 'destination': destination!,
        if (flightNumber != null) 'flightNumber': flightNumber!,
        if (operatingCarrierCode != null)
          'operatingCarrierCode': operatingCarrierCode!,
        if (origin != null) 'origin': origin!,
      };
}

/// Direct flight with emission estimates.
class FlightWithEmissions {
  /// Per-passenger emission estimate numbers.
  ///
  /// Will not be present if emissions could not be computed. For the list of
  /// reasons why emissions could not be computed, see ComputeFlightEmissions.
  /// Note this field is currently equivalent to ttw_emissions_grams_per_pax
  /// until TIM version 1.X.0 which will update this to be total wtw emissions
  /// aka wtt_emissions_grams_per_pax + ttw_emissions_grams_per_pax.
  ///
  /// Optional.
  EmissionsGramsPerPax? emissionsGramsPerPax;

  /// Matches the flight identifiers in the request.
  ///
  /// Note: all IATA codes are capitalized.
  ///
  /// Required.
  Flight? flight;

  FlightWithEmissions({
    this.emissionsGramsPerPax,
    this.flight,
  });

  FlightWithEmissions.fromJson(core.Map json_)
      : this(
          emissionsGramsPerPax: json_.containsKey('emissionsGramsPerPax')
              ? EmissionsGramsPerPax.fromJson(json_['emissionsGramsPerPax']
                  as core.Map<core.String, core.dynamic>)
              : null,
          flight: json_.containsKey('flight')
              ? Flight.fromJson(
                  json_['flight'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emissionsGramsPerPax != null)
          'emissionsGramsPerPax': emissionsGramsPerPax!,
        if (flight != null) 'flight': flight!,
      };
}

/// Travel Impact Model version.
///
/// For more information about the model versioning see
/// https://github.com/google/travel-impact-model/#versioning.
class ModelVersion {
  /// Dated versions: Model datasets are recreated with refreshed input data but
  /// no change to the algorithms regularly.
  core.String? dated;

  /// Major versions: Major changes to methodology (e.g. adding new data sources
  /// to the model that lead to major output changes).
  ///
  /// Such changes will be infrequent and announced well in advance. Might
  /// involve API version changes, which will respect guidelines in
  /// https://cloud.google.com/endpoints/docs/openapi/versioning-an-api#backwards-incompatible
  core.int? major;

  /// Minor versions: Changes to the model that, while being consistent across
  /// schema versions, change the model parameters or implementation.
  core.int? minor;

  /// Patch versions: Implementation changes meant to address bugs or
  /// inaccuracies in the model implementation.
  core.int? patch;

  ModelVersion({
    this.dated,
    this.major,
    this.minor,
    this.patch,
  });

  ModelVersion.fromJson(core.Map json_)
      : this(
          dated:
              json_.containsKey('dated') ? json_['dated'] as core.String : null,
          major: json_.containsKey('major') ? json_['major'] as core.int : null,
          minor: json_.containsKey('minor') ? json_['minor'] as core.int : null,
          patch: json_.containsKey('patch') ? json_['patch'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dated != null) 'dated': dated!,
        if (major != null) 'major': major!,
        if (minor != null) 'minor': minor!,
        if (patch != null) 'patch': patch!,
      };
}
