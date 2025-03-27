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
  /// Details on how emission estimates are computed are in
  /// [GitHub](https://github.com/google/travel-impact-model) The response will
  /// contain all entries that match the input flight legs, in the same order.
  /// If there are no estimates available for a certain flight leg, the response
  /// will return the flight leg object with empty emission fields. The request
  /// will still be considered successful. Reasons for missing emission
  /// estimates include: * The flight is unknown to the server. * The input
  /// flight leg is missing one or more identifiers. * The flight date is in the
  /// past. * The aircraft type is not supported by the model. * Missing seat
  /// configuration. The request can contain up to 1000 flight legs. If the
  /// request has more than 1000 direct flights, if will fail with an
  /// INVALID_ARGUMENT error.
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

  /// Retrieves typical flight emissions estimates between two airports, also
  /// known as a market.
  ///
  /// If there are no estimates available for a certain market, the response
  /// will return the market object with empty emission fields. The request will
  /// still be considered successful. Details on how the typical emissions
  /// estimates are computed are on
  /// [GitHub](https://github.com/google/travel-impact-model/blob/main/projects/typical_flight_emissions.md).
  /// The request can contain up to 1000 markets. If the request has more than
  /// 1000 markets, it will fail with an INVALID_ARGUMENT error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ComputeTypicalFlightEmissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ComputeTypicalFlightEmissionsResponse>
      computeTypicalFlightEmissions(
    ComputeTypicalFlightEmissionsRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/flights:computeTypicalFlightEmissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ComputeTypicalFlightEmissionsResponse.fromJson(
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
          flights: (json_['flights'] as core.List?)
              ?.map((value) =>
                  Flight.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
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
          flightEmissions: (json_['flightEmissions'] as core.List?)
              ?.map((value) => FlightWithEmissions.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
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

/// A list of pair of airports (markets) to request the typical emissions for.
class ComputeTypicalFlightEmissionsRequest {
  /// Request the typical flight emissions estimates for this market pair.
  ///
  /// A maximum of 1000 markets can be requested.
  ///
  /// Required.
  core.List<Market>? markets;

  ComputeTypicalFlightEmissionsRequest({
    this.markets,
  });

  ComputeTypicalFlightEmissionsRequest.fromJson(core.Map json_)
      : this(
          markets: (json_['markets'] as core.List?)
              ?.map((value) =>
                  Market.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (markets != null) 'markets': markets!,
      };
}

/// The response includes the emissions but also the model version.
class ComputeTypicalFlightEmissionsResponse {
  /// The model version under which typical flight emission estimates for all
  /// flights in this response were computed.
  ModelVersion? modelVersion;

  /// Market's Typical Flight Emissions requested.
  core.List<TypicalFlightEmissions>? typicalFlightEmissions;

  ComputeTypicalFlightEmissionsResponse({
    this.modelVersion,
    this.typicalFlightEmissions,
  });

  ComputeTypicalFlightEmissionsResponse.fromJson(core.Map json_)
      : this(
          modelVersion: json_.containsKey('modelVersion')
              ? ModelVersion.fromJson(
                  json_['modelVersion'] as core.Map<core.String, core.dynamic>)
              : null,
          typicalFlightEmissions:
              (json_['typicalFlightEmissions'] as core.List?)
                  ?.map((value) => TypicalFlightEmissions.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (modelVersion != null) 'modelVersion': modelVersion!,
        if (typicalFlightEmissions != null)
          'typicalFlightEmissions': typicalFlightEmissions!,
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

/// Metadata about the EASA Flight Emissions Label.
class EasaLabelMetadata {
  /// The date when the label expires.
  ///
  /// The label can be displayed until the end of this date.
  Date? labelExpiryDate;

  /// The date when the label was issued.
  Date? labelIssueDate;

  /// Version of the label.
  core.String? labelVersion;

  /// Sustainable Aviation Fuel (SAF) emissions discount percentage applied to
  /// the label.
  ///
  /// It is a percentage as a decimal. The values are in the interval \[0,1\].
  /// For example, 0.0021 means 0.21%. This discount and reduction in emissions
  /// are reported by the EASA label but they are not included in the CO2e
  /// estimates distributed by this API.
  core.double? safDiscountPercentage;

  EasaLabelMetadata({
    this.labelExpiryDate,
    this.labelIssueDate,
    this.labelVersion,
    this.safDiscountPercentage,
  });

  EasaLabelMetadata.fromJson(core.Map json_)
      : this(
          labelExpiryDate: json_.containsKey('labelExpiryDate')
              ? Date.fromJson(json_['labelExpiryDate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          labelIssueDate: json_.containsKey('labelIssueDate')
              ? Date.fromJson(json_['labelIssueDate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          labelVersion: json_['labelVersion'] as core.String?,
          safDiscountPercentage:
              (json_['safDiscountPercentage'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labelExpiryDate != null) 'labelExpiryDate': labelExpiryDate!,
        if (labelIssueDate != null) 'labelIssueDate': labelIssueDate!,
        if (labelVersion != null) 'labelVersion': labelVersion!,
        if (safDiscountPercentage != null)
          'safDiscountPercentage': safDiscountPercentage!,
      };
}

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
          business: json_['business'] as core.int?,
          economy: json_['economy'] as core.int?,
          first: json_['first'] as core.int?,
          premiumEconomy: json_['premiumEconomy'] as core.int?,
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
          destination: json_['destination'] as core.String?,
          flightNumber: json_['flightNumber'] as core.int?,
          operatingCarrierCode: json_['operatingCarrierCode'] as core.String?,
          origin: json_['origin'] as core.String?,
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
  /// The significance of contrails warming impact compared to the total CO2e
  /// emissions impact.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CONTRAILS_IMPACT_UNSPECIFIED" : The contrails impact is unspecified.
  /// - "CONTRAILS_IMPACT_NEGLIGIBLE" : The contrails impact is negligible
  /// compared to the total CO2e emissions.
  /// - "CONTRAILS_IMPACT_MODERATE" : The contrails impact is comparable to the
  /// total CO2e emissions.
  /// - "CONTRAILS_IMPACT_SEVERE" : The contrails impact is higher than the
  /// total CO2e emissions impact.
  core.String? contrailsImpactBucket;

  /// Metadata about the EASA Flight Emissions Label.
  ///
  /// Only set when the emissions data source is EASA.
  ///
  /// Optional.
  EasaLabelMetadata? easaLabelMetadata;

  /// Per-passenger emission estimate numbers.
  ///
  /// Will not be present if emissions could not be computed. For the list of
  /// reasons why emissions could not be computed, see ComputeFlightEmissions.
  ///
  /// Optional.
  EmissionsGramsPerPax? emissionsGramsPerPax;

  /// Matches the flight identifiers in the request.
  ///
  /// Note: all IATA codes are capitalized.
  ///
  /// Required.
  Flight? flight;

  /// The source of the emissions data.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SOURCE_UNSPECIFIED" : The source of the emissions data is unspecified.
  /// - "TIM" : The emissions data is from the Travel Impact Model.
  /// - "EASA" : The emissions data is from the EASA environmental labels.
  core.String? source;

  FlightWithEmissions({
    this.contrailsImpactBucket,
    this.easaLabelMetadata,
    this.emissionsGramsPerPax,
    this.flight,
    this.source,
  });

  FlightWithEmissions.fromJson(core.Map json_)
      : this(
          contrailsImpactBucket: json_['contrailsImpactBucket'] as core.String?,
          easaLabelMetadata: json_.containsKey('easaLabelMetadata')
              ? EasaLabelMetadata.fromJson(json_['easaLabelMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          emissionsGramsPerPax: json_.containsKey('emissionsGramsPerPax')
              ? EmissionsGramsPerPax.fromJson(json_['emissionsGramsPerPax']
                  as core.Map<core.String, core.dynamic>)
              : null,
          flight: json_.containsKey('flight')
              ? Flight.fromJson(
                  json_['flight'] as core.Map<core.String, core.dynamic>)
              : null,
          source: json_['source'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contrailsImpactBucket != null)
          'contrailsImpactBucket': contrailsImpactBucket!,
        if (easaLabelMetadata != null) 'easaLabelMetadata': easaLabelMetadata!,
        if (emissionsGramsPerPax != null)
          'emissionsGramsPerPax': emissionsGramsPerPax!,
        if (flight != null) 'flight': flight!,
        if (source != null) 'source': source!,
      };
}

/// A pair of airports.
class Market {
  /// IATA airport code for flight destination, e.g. "JFK".
  ///
  /// Required.
  core.String? destination;

  /// IATA airport code for flight origin, e.g. "LHR".
  ///
  /// Required.
  core.String? origin;

  Market({
    this.destination,
    this.origin,
  });

  Market.fromJson(core.Map json_)
      : this(
          destination: json_['destination'] as core.String?,
          origin: json_['origin'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destination != null) 'destination': destination!,
        if (origin != null) 'origin': origin!,
      };
}

/// Travel Impact Model version.
///
/// For more information about the model versioning see
/// [GitHub](https://github.com/google/travel-impact-model/#versioning).
class ModelVersion {
  /// Dated versions: Model datasets are recreated with refreshed input data but
  /// no change to the algorithms regularly.
  core.String? dated;

  /// Major versions: Major changes to methodology (e.g. adding new data sources
  /// to the model that lead to major output changes).
  ///
  /// Such changes will be infrequent and announced well in advance. Might
  /// involve API version changes, which will respect
  /// [Google Cloud API guidelines](https://cloud.google.com/endpoints/docs/openapi/versioning-an-api#backwards-incompatible)
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
          dated: json_['dated'] as core.String?,
          major: json_['major'] as core.int?,
          minor: json_['minor'] as core.int?,
          patch: json_['patch'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dated != null) 'dated': dated!,
        if (major != null) 'major': major!,
        if (minor != null) 'minor': minor!,
        if (patch != null) 'patch': patch!,
      };
}

/// Typical flight emission estimates for a certain market
class TypicalFlightEmissions {
  /// Typical flight emissions per passenger for requested market.
  ///
  /// Will not be present if a typical emissions could not be computed. For the
  /// list of reasons why typical flight emissions could not be computed, see
  /// [GitHub](https://github.com/google/travel-impact-model/blob/main/projects/typical_flight_emissions.md#step-7-validate-dataset).
  ///
  /// Optional.
  EmissionsGramsPerPax? emissionsGramsPerPax;

  /// Matches the flight identifiers in the request.
  ///
  /// Note: all IATA codes are capitalized.
  ///
  /// Required.
  Market? market;

  TypicalFlightEmissions({
    this.emissionsGramsPerPax,
    this.market,
  });

  TypicalFlightEmissions.fromJson(core.Map json_)
      : this(
          emissionsGramsPerPax: json_.containsKey('emissionsGramsPerPax')
              ? EmissionsGramsPerPax.fromJson(json_['emissionsGramsPerPax']
                  as core.Map<core.String, core.dynamic>)
              : null,
          market: json_.containsKey('market')
              ? Market.fromJson(
                  json_['market'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emissionsGramsPerPax != null)
          'emissionsGramsPerPax': emissionsGramsPerPax!,
        if (market != null) 'market': market!,
      };
}
