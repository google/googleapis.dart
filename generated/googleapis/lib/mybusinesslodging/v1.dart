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

/// My Business Lodging API - v1
///
/// The My Business Lodging API enables managing lodging business information on
/// Google.
///
/// For more information, see <https://developers.google.com/my-business/>
///
/// Create an instance of [MyBusinessLodgingApi] to access these resources:
///
/// - [LocationsResource]
///   - [LocationsLodgingResource]
library mybusinesslodging.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The My Business Lodging API enables managing lodging business information on
/// Google.
class MyBusinessLodgingApi {
  final commons.ApiRequester _requester;

  LocationsResource get locations => LocationsResource(_requester);

  MyBusinessLodgingApi(http.Client client,
      {core.String rootUrl = 'https://mybusinesslodging.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class LocationsResource {
  final commons.ApiRequester _requester;

  LocationsLodgingResource get lodging => LocationsLodgingResource(_requester);

  LocationsResource(commons.ApiRequester client) : _requester = client;

  /// Returns the Lodging of a specific location.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Google identifier for this location in the form:
  /// `locations/{location_id}/lodging`
  /// Value must have pattern `^locations/\[^/\]+/lodging$`.
  ///
  /// [readMask] - Required. The specific fields to return. Use "*" to include
  /// all fields. Repeated field items cannot be individually specified.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Lodging].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Lodging> getLodging(
    core.String name, {
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Lodging.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the Lodging of a specific location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Google identifier for this location in the form:
  /// `locations/{location_id}/lodging`
  /// Value must have pattern `^locations/\[^/\]+/lodging$`.
  ///
  /// [updateMask] - Required. The specific fields to update. Use "*" to update
  /// all fields, which may include unsetting empty fields in the request.
  /// Repeated field items cannot be individually updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Lodging].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Lodging> updateLodging(
    Lodging request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Lodging.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class LocationsLodgingResource {
  final commons.ApiRequester _requester;

  LocationsLodgingResource(commons.ApiRequester client) : _requester = client;

  /// Returns the Google updated Lodging of a specific location.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Google identifier for this location in the form:
  /// `accounts/{account_id}/locations/{location_id}/lodging`
  /// Value must have pattern `^locations/\[^/\]+/lodging$`.
  ///
  /// [readMask] - Required. The specific fields to return. Use "*" to include
  /// all fields. Repeated field items cannot be individually specified.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetGoogleUpdatedLodgingResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetGoogleUpdatedLodgingResponse> getGoogleUpdated(
    core.String name, {
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':getGoogleUpdated';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GetGoogleUpdatedLodgingResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Physical adaptations made to the property in consideration of varying levels
/// of human physical ability.
class Accessibility {
  /// Mobility accessible.
  ///
  /// Throughout the property there are physical adaptations to ease the stay of
  /// a person in a wheelchair, such as auto-opening doors, wide elevators, wide
  /// bathrooms or ramps.
  core.bool? mobilityAccessible;

  /// Mobility accessible elevator.
  ///
  /// A lift that transports people from one level to another and is built to
  /// accommodate a wheelchair-using passenger owing to the width of its doors
  /// and placement of call buttons.
  core.bool? mobilityAccessibleElevator;

  /// Mobility accessible elevator exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? mobilityAccessibleElevatorException;

  /// Mobility accessible exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? mobilityAccessibleException;

  /// Mobility accessible parking.
  ///
  /// The presence of a marked, designated area of prescribed size in which only
  /// registered, labeled vehicles transporting a person with physical
  /// challenges may park.
  core.bool? mobilityAccessibleParking;

  /// Mobility accessible parking exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? mobilityAccessibleParkingException;

  /// Mobility accessible pool.
  ///
  /// A swimming pool equipped with a mechanical chair that can be lowered and
  /// raised for the purpose of moving physically challenged guests into and out
  /// of the pool. May be powered by electricity or water. Also known as pool
  /// lift.
  core.bool? mobilityAccessiblePool;

  /// Mobility accessible pool exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? mobilityAccessiblePoolException;

  Accessibility({
    this.mobilityAccessible,
    this.mobilityAccessibleElevator,
    this.mobilityAccessibleElevatorException,
    this.mobilityAccessibleException,
    this.mobilityAccessibleParking,
    this.mobilityAccessibleParkingException,
    this.mobilityAccessiblePool,
    this.mobilityAccessiblePoolException,
  });

  Accessibility.fromJson(core.Map json_)
      : this(
          mobilityAccessible: json_.containsKey('mobilityAccessible')
              ? json_['mobilityAccessible'] as core.bool
              : null,
          mobilityAccessibleElevator:
              json_.containsKey('mobilityAccessibleElevator')
                  ? json_['mobilityAccessibleElevator'] as core.bool
                  : null,
          mobilityAccessibleElevatorException:
              json_.containsKey('mobilityAccessibleElevatorException')
                  ? json_['mobilityAccessibleElevatorException'] as core.String
                  : null,
          mobilityAccessibleException:
              json_.containsKey('mobilityAccessibleException')
                  ? json_['mobilityAccessibleException'] as core.String
                  : null,
          mobilityAccessibleParking:
              json_.containsKey('mobilityAccessibleParking')
                  ? json_['mobilityAccessibleParking'] as core.bool
                  : null,
          mobilityAccessibleParkingException:
              json_.containsKey('mobilityAccessibleParkingException')
                  ? json_['mobilityAccessibleParkingException'] as core.String
                  : null,
          mobilityAccessiblePool: json_.containsKey('mobilityAccessiblePool')
              ? json_['mobilityAccessiblePool'] as core.bool
              : null,
          mobilityAccessiblePoolException:
              json_.containsKey('mobilityAccessiblePoolException')
                  ? json_['mobilityAccessiblePoolException'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mobilityAccessible != null)
          'mobilityAccessible': mobilityAccessible!,
        if (mobilityAccessibleElevator != null)
          'mobilityAccessibleElevator': mobilityAccessibleElevator!,
        if (mobilityAccessibleElevatorException != null)
          'mobilityAccessibleElevatorException':
              mobilityAccessibleElevatorException!,
        if (mobilityAccessibleException != null)
          'mobilityAccessibleException': mobilityAccessibleException!,
        if (mobilityAccessibleParking != null)
          'mobilityAccessibleParking': mobilityAccessibleParking!,
        if (mobilityAccessibleParkingException != null)
          'mobilityAccessibleParkingException':
              mobilityAccessibleParkingException!,
        if (mobilityAccessiblePool != null)
          'mobilityAccessiblePool': mobilityAccessiblePool!,
        if (mobilityAccessiblePoolException != null)
          'mobilityAccessiblePoolException': mobilityAccessiblePoolException!,
      };
}

/// Amenities and features related to leisure and play.
class Activities {
  /// Beach access.
  ///
  /// The hotel property is in close proximity to a beach and offers a way to
  /// get to that beach. This can include a route to the beach such as stairs
  /// down if hotel is on a bluff, or a short trail. Not the same as beachfront
  /// (with beach access, the hotel's proximity is close to but not right on the
  /// beach).
  core.bool? beachAccess;

  /// Beach access exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? beachAccessException;

  /// Breach front.
  ///
  /// The hotel property is physically located on the beach alongside an ocean,
  /// sea, gulf, or bay. It is not on a lake, river, stream, or pond. The hotel
  /// is not separated from the beach by a public road allowing vehicular,
  /// pedestrian, or bicycle traffic.
  core.bool? beachFront;

  /// Beach front exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? beachFrontException;

  /// Bicycle rental.
  ///
  /// The hotel owns bicycles that it permits guests to borrow and use. Can be
  /// free or for a fee.
  core.bool? bicycleRental;

  /// Bicycle rental exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? bicycleRentalException;

  /// Boutique stores.
  ///
  /// There are stores selling clothing, jewelry, art and decor either on hotel
  /// premises or very close by. Does not refer to the hotel gift shop or
  /// convenience store.
  core.bool? boutiqueStores;

  /// Boutique stores exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? boutiqueStoresException;

  /// Casino.
  ///
  /// A space designated for gambling and gaming featuring croupier-run table
  /// and card games, as well as electronic slot machines. May be on hotel
  /// premises or located nearby.
  core.bool? casino;

  /// Casino exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? casinoException;

  /// Free bicycle rental.
  ///
  /// The hotel owns bicycles that it permits guests to borrow and use for free.
  core.bool? freeBicycleRental;

  /// Free bicycle rental exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? freeBicycleRentalException;

  /// Free watercraft rental.
  ///
  /// The hotel owns watercraft that it permits guests to borrow and use for
  /// free.
  core.bool? freeWatercraftRental;

  /// Free Watercraft rental exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? freeWatercraftRentalException;

  /// Game room.
  ///
  /// There is a room at the hotel containing electronic machines for play such
  /// as pinball, prize machines, driving simulators, and other items commonly
  /// found at a family fun center or arcade. May also include non-electronic
  /// games like pool, foosball, darts, and more. May or may not be designed for
  /// children. Also known as arcade, fun room, or family fun center.
  core.bool? gameRoom;

  /// Game room exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? gameRoomException;

  /// Golf.
  ///
  /// There is a golf course on hotel grounds or there is a nearby,
  /// independently run golf course that allows use by hotel guests. Can be free
  /// or for a fee.
  core.bool? golf;

  /// Golf exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? golfException;

  /// Horseback riding.
  ///
  /// The hotel has a horse barn onsite or an affiliation with a nearby barn to
  /// allow for guests to sit astride a horse and direct it to walk, trot,
  /// cantor, gallop and/or jump. Can be in a riding ring, on designated paths,
  /// or in the wilderness. May or may not involve instruction.
  core.bool? horsebackRiding;

  /// Horseback riding exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? horsebackRidingException;

  /// Nightclub.
  ///
  /// There is a room at the hotel with a bar, a dance floor, and seating where
  /// designated staffers play dance music. There may also be a designated area
  /// for the performance of live music, singing and comedy acts.
  core.bool? nightclub;

  /// Nightclub exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? nightclubException;

  /// Private beach.
  ///
  /// The beach which is in close proximity to the hotel is open only to guests.
  core.bool? privateBeach;

  /// Private beach exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? privateBeachException;

  /// Scuba.
  ///
  /// The provision for guests to dive under naturally occurring water fitted
  /// with a self-contained underwater breathing apparatus (SCUBA) for the
  /// purpose of exploring underwater life. Apparatus consists of a tank
  /// providing oxygen to the diver through a mask. Requires certification of
  /// the diver and supervision. The hotel may have the activity at its own
  /// waterfront or have an affiliation with a nearby facility. Required
  /// equipment is most often supplied to guests. Can be free or for a fee. Not
  /// snorkeling. Not done in a swimming pool.
  core.bool? scuba;

  /// Scuba exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? scubaException;

  /// Snorkeling.
  ///
  /// The provision for guests to participate in a recreational water activity
  /// in which swimmers wear a diving mask, a simple, shaped breathing tube and
  /// flippers/swim fins for the purpose of exploring below the surface of an
  /// ocean, gulf or lake. Does not usually require user certification or
  /// professional supervision. Equipment may or may not be available for rent
  /// or purchase. Not scuba diving.
  core.bool? snorkeling;

  /// Snorkeling exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? snorkelingException;

  /// Tennis.
  ///
  /// The hotel has the requisite court(s) on site or has an affiliation with a
  /// nearby facility for the purpose of providing guests with the opportunity
  /// to play a two-sided court-based game in which players use a stringed
  /// racquet to hit a ball across a net to the side of the opposing player. The
  /// court can be indoors or outdoors. Instructors, racquets and balls may or
  /// may not be provided.
  core.bool? tennis;

  /// Tennis exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? tennisException;

  /// Water skiing.
  ///
  /// The provision of giving guests the opportunity to be pulled across
  /// naturally occurring water while standing on skis and holding a tow rope
  /// attached to a motorboat. Can occur on hotel premises or at a nearby
  /// waterfront. Most often performed in a lake or ocean.
  core.bool? waterSkiing;

  /// Water skiing exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? waterSkiingException;

  /// Watercraft rental.
  ///
  /// The hotel owns water vessels that it permits guests to borrow and use. Can
  /// be free or for a fee. Watercraft may include boats, pedal boats, rowboats,
  /// sailboats, powerboats, canoes, kayaks, or personal watercraft (such as a
  /// Jet Ski).
  core.bool? watercraftRental;

  /// Watercraft rental exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? watercraftRentalException;

  Activities({
    this.beachAccess,
    this.beachAccessException,
    this.beachFront,
    this.beachFrontException,
    this.bicycleRental,
    this.bicycleRentalException,
    this.boutiqueStores,
    this.boutiqueStoresException,
    this.casino,
    this.casinoException,
    this.freeBicycleRental,
    this.freeBicycleRentalException,
    this.freeWatercraftRental,
    this.freeWatercraftRentalException,
    this.gameRoom,
    this.gameRoomException,
    this.golf,
    this.golfException,
    this.horsebackRiding,
    this.horsebackRidingException,
    this.nightclub,
    this.nightclubException,
    this.privateBeach,
    this.privateBeachException,
    this.scuba,
    this.scubaException,
    this.snorkeling,
    this.snorkelingException,
    this.tennis,
    this.tennisException,
    this.waterSkiing,
    this.waterSkiingException,
    this.watercraftRental,
    this.watercraftRentalException,
  });

  Activities.fromJson(core.Map json_)
      : this(
          beachAccess: json_.containsKey('beachAccess')
              ? json_['beachAccess'] as core.bool
              : null,
          beachAccessException: json_.containsKey('beachAccessException')
              ? json_['beachAccessException'] as core.String
              : null,
          beachFront: json_.containsKey('beachFront')
              ? json_['beachFront'] as core.bool
              : null,
          beachFrontException: json_.containsKey('beachFrontException')
              ? json_['beachFrontException'] as core.String
              : null,
          bicycleRental: json_.containsKey('bicycleRental')
              ? json_['bicycleRental'] as core.bool
              : null,
          bicycleRentalException: json_.containsKey('bicycleRentalException')
              ? json_['bicycleRentalException'] as core.String
              : null,
          boutiqueStores: json_.containsKey('boutiqueStores')
              ? json_['boutiqueStores'] as core.bool
              : null,
          boutiqueStoresException: json_.containsKey('boutiqueStoresException')
              ? json_['boutiqueStoresException'] as core.String
              : null,
          casino:
              json_.containsKey('casino') ? json_['casino'] as core.bool : null,
          casinoException: json_.containsKey('casinoException')
              ? json_['casinoException'] as core.String
              : null,
          freeBicycleRental: json_.containsKey('freeBicycleRental')
              ? json_['freeBicycleRental'] as core.bool
              : null,
          freeBicycleRentalException:
              json_.containsKey('freeBicycleRentalException')
                  ? json_['freeBicycleRentalException'] as core.String
                  : null,
          freeWatercraftRental: json_.containsKey('freeWatercraftRental')
              ? json_['freeWatercraftRental'] as core.bool
              : null,
          freeWatercraftRentalException:
              json_.containsKey('freeWatercraftRentalException')
                  ? json_['freeWatercraftRentalException'] as core.String
                  : null,
          gameRoom: json_.containsKey('gameRoom')
              ? json_['gameRoom'] as core.bool
              : null,
          gameRoomException: json_.containsKey('gameRoomException')
              ? json_['gameRoomException'] as core.String
              : null,
          golf: json_.containsKey('golf') ? json_['golf'] as core.bool : null,
          golfException: json_.containsKey('golfException')
              ? json_['golfException'] as core.String
              : null,
          horsebackRiding: json_.containsKey('horsebackRiding')
              ? json_['horsebackRiding'] as core.bool
              : null,
          horsebackRidingException:
              json_.containsKey('horsebackRidingException')
                  ? json_['horsebackRidingException'] as core.String
                  : null,
          nightclub: json_.containsKey('nightclub')
              ? json_['nightclub'] as core.bool
              : null,
          nightclubException: json_.containsKey('nightclubException')
              ? json_['nightclubException'] as core.String
              : null,
          privateBeach: json_.containsKey('privateBeach')
              ? json_['privateBeach'] as core.bool
              : null,
          privateBeachException: json_.containsKey('privateBeachException')
              ? json_['privateBeachException'] as core.String
              : null,
          scuba:
              json_.containsKey('scuba') ? json_['scuba'] as core.bool : null,
          scubaException: json_.containsKey('scubaException')
              ? json_['scubaException'] as core.String
              : null,
          snorkeling: json_.containsKey('snorkeling')
              ? json_['snorkeling'] as core.bool
              : null,
          snorkelingException: json_.containsKey('snorkelingException')
              ? json_['snorkelingException'] as core.String
              : null,
          tennis:
              json_.containsKey('tennis') ? json_['tennis'] as core.bool : null,
          tennisException: json_.containsKey('tennisException')
              ? json_['tennisException'] as core.String
              : null,
          waterSkiing: json_.containsKey('waterSkiing')
              ? json_['waterSkiing'] as core.bool
              : null,
          waterSkiingException: json_.containsKey('waterSkiingException')
              ? json_['waterSkiingException'] as core.String
              : null,
          watercraftRental: json_.containsKey('watercraftRental')
              ? json_['watercraftRental'] as core.bool
              : null,
          watercraftRentalException:
              json_.containsKey('watercraftRentalException')
                  ? json_['watercraftRentalException'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (beachAccess != null) 'beachAccess': beachAccess!,
        if (beachAccessException != null)
          'beachAccessException': beachAccessException!,
        if (beachFront != null) 'beachFront': beachFront!,
        if (beachFrontException != null)
          'beachFrontException': beachFrontException!,
        if (bicycleRental != null) 'bicycleRental': bicycleRental!,
        if (bicycleRentalException != null)
          'bicycleRentalException': bicycleRentalException!,
        if (boutiqueStores != null) 'boutiqueStores': boutiqueStores!,
        if (boutiqueStoresException != null)
          'boutiqueStoresException': boutiqueStoresException!,
        if (casino != null) 'casino': casino!,
        if (casinoException != null) 'casinoException': casinoException!,
        if (freeBicycleRental != null) 'freeBicycleRental': freeBicycleRental!,
        if (freeBicycleRentalException != null)
          'freeBicycleRentalException': freeBicycleRentalException!,
        if (freeWatercraftRental != null)
          'freeWatercraftRental': freeWatercraftRental!,
        if (freeWatercraftRentalException != null)
          'freeWatercraftRentalException': freeWatercraftRentalException!,
        if (gameRoom != null) 'gameRoom': gameRoom!,
        if (gameRoomException != null) 'gameRoomException': gameRoomException!,
        if (golf != null) 'golf': golf!,
        if (golfException != null) 'golfException': golfException!,
        if (horsebackRiding != null) 'horsebackRiding': horsebackRiding!,
        if (horsebackRidingException != null)
          'horsebackRidingException': horsebackRidingException!,
        if (nightclub != null) 'nightclub': nightclub!,
        if (nightclubException != null)
          'nightclubException': nightclubException!,
        if (privateBeach != null) 'privateBeach': privateBeach!,
        if (privateBeachException != null)
          'privateBeachException': privateBeachException!,
        if (scuba != null) 'scuba': scuba!,
        if (scubaException != null) 'scubaException': scubaException!,
        if (snorkeling != null) 'snorkeling': snorkeling!,
        if (snorkelingException != null)
          'snorkelingException': snorkelingException!,
        if (tennis != null) 'tennis': tennis!,
        if (tennisException != null) 'tennisException': tennisException!,
        if (waterSkiing != null) 'waterSkiing': waterSkiing!,
        if (waterSkiingException != null)
          'waterSkiingException': waterSkiingException!,
        if (watercraftRental != null) 'watercraftRental': watercraftRental!,
        if (watercraftRentalException != null)
          'watercraftRentalException': watercraftRentalException!,
      };
}

/// Features of the property of specific interest to the business traveler.
class Business {
  /// Business center.
  ///
  /// A designated room at the hotel with one or more desks and equipped with
  /// guest-use computers, printers, fax machines and/or photocopiers. May or
  /// may not be open 24/7. May or may not require a key to access. Not a
  /// meeting room or conference room.
  core.bool? businessCenter;

  /// Business center exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? businessCenterException;

  /// Meeting rooms.
  ///
  /// Rooms at the hotel designated for business-related gatherings. Rooms are
  /// usually equipped with tables or desks, office chairs and audio/visual
  /// facilities to allow for presentations and conference calls. Also known as
  /// conference rooms.
  core.bool? meetingRooms;

  /// Meeting rooms count.
  ///
  /// The number of meeting rooms at the property.
  core.int? meetingRoomsCount;

  /// Meeting rooms count exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? meetingRoomsCountException;

  /// Meeting rooms exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? meetingRoomsException;

  Business({
    this.businessCenter,
    this.businessCenterException,
    this.meetingRooms,
    this.meetingRoomsCount,
    this.meetingRoomsCountException,
    this.meetingRoomsException,
  });

  Business.fromJson(core.Map json_)
      : this(
          businessCenter: json_.containsKey('businessCenter')
              ? json_['businessCenter'] as core.bool
              : null,
          businessCenterException: json_.containsKey('businessCenterException')
              ? json_['businessCenterException'] as core.String
              : null,
          meetingRooms: json_.containsKey('meetingRooms')
              ? json_['meetingRooms'] as core.bool
              : null,
          meetingRoomsCount: json_.containsKey('meetingRoomsCount')
              ? json_['meetingRoomsCount'] as core.int
              : null,
          meetingRoomsCountException:
              json_.containsKey('meetingRoomsCountException')
                  ? json_['meetingRoomsCountException'] as core.String
                  : null,
          meetingRoomsException: json_.containsKey('meetingRoomsException')
              ? json_['meetingRoomsException'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (businessCenter != null) 'businessCenter': businessCenter!,
        if (businessCenterException != null)
          'businessCenterException': businessCenterException!,
        if (meetingRooms != null) 'meetingRooms': meetingRooms!,
        if (meetingRoomsCount != null) 'meetingRoomsCount': meetingRoomsCount!,
        if (meetingRoomsCountException != null)
          'meetingRoomsCountException': meetingRoomsCountException!,
        if (meetingRoomsException != null)
          'meetingRoomsException': meetingRoomsException!,
      };
}

/// The ways in which the property provides guests with the ability to access
/// the internet.
class Connectivity {
  /// Free wifi.
  ///
  /// The hotel offers guests wifi for free.
  core.bool? freeWifi;

  /// Free wifi exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? freeWifiException;

  /// Public area wifi available.
  ///
  /// Guests have the ability to wirelessly connect to the internet in the areas
  /// of the hotel accessible to anyone. Can be free or for a fee.
  core.bool? publicAreaWifiAvailable;

  /// Public area wifi available exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? publicAreaWifiAvailableException;

  /// Public internet terminal.
  ///
  /// An area of the hotel supplied with computers and designated for the
  /// purpose of providing guests with the ability to access the internet.
  core.bool? publicInternetTerminal;

  /// Public internet terminal exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? publicInternetTerminalException;

  /// Wifi available.
  ///
  /// The hotel provides the ability for guests to wirelessly connect to the
  /// internet. Can be in the public areas of the hotel and/or in the guest
  /// rooms. Can be free or for a fee.
  core.bool? wifiAvailable;

  /// Wifi available exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? wifiAvailableException;

  Connectivity({
    this.freeWifi,
    this.freeWifiException,
    this.publicAreaWifiAvailable,
    this.publicAreaWifiAvailableException,
    this.publicInternetTerminal,
    this.publicInternetTerminalException,
    this.wifiAvailable,
    this.wifiAvailableException,
  });

  Connectivity.fromJson(core.Map json_)
      : this(
          freeWifi: json_.containsKey('freeWifi')
              ? json_['freeWifi'] as core.bool
              : null,
          freeWifiException: json_.containsKey('freeWifiException')
              ? json_['freeWifiException'] as core.String
              : null,
          publicAreaWifiAvailable: json_.containsKey('publicAreaWifiAvailable')
              ? json_['publicAreaWifiAvailable'] as core.bool
              : null,
          publicAreaWifiAvailableException:
              json_.containsKey('publicAreaWifiAvailableException')
                  ? json_['publicAreaWifiAvailableException'] as core.String
                  : null,
          publicInternetTerminal: json_.containsKey('publicInternetTerminal')
              ? json_['publicInternetTerminal'] as core.bool
              : null,
          publicInternetTerminalException:
              json_.containsKey('publicInternetTerminalException')
                  ? json_['publicInternetTerminalException'] as core.String
                  : null,
          wifiAvailable: json_.containsKey('wifiAvailable')
              ? json_['wifiAvailable'] as core.bool
              : null,
          wifiAvailableException: json_.containsKey('wifiAvailableException')
              ? json_['wifiAvailableException'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (freeWifi != null) 'freeWifi': freeWifi!,
        if (freeWifiException != null) 'freeWifiException': freeWifiException!,
        if (publicAreaWifiAvailable != null)
          'publicAreaWifiAvailable': publicAreaWifiAvailable!,
        if (publicAreaWifiAvailableException != null)
          'publicAreaWifiAvailableException': publicAreaWifiAvailableException!,
        if (publicInternetTerminal != null)
          'publicInternetTerminal': publicInternetTerminal!,
        if (publicInternetTerminalException != null)
          'publicInternetTerminalException': publicInternetTerminalException!,
        if (wifiAvailable != null) 'wifiAvailable': wifiAvailable!,
        if (wifiAvailableException != null)
          'wifiAvailableException': wifiAvailableException!,
      };
}

/// An eco certificate awarded to the hotel.
class EcoCertification {
  /// Whether the eco certificate was awarded or not.
  core.bool? awarded;

  /// Awarded exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? awardedException;

  /// The eco certificate.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ECO_CERTIFICATE_UNSPECIFIED" : Default EcoCertificate. Do not use.
  /// - "ISO14001" : ISO14001.
  /// - "ISO50001" : ISO50001.
  /// - "ASIAN_ECOTOURISM" : Asian Ecotourism Standard for Accommodations
  /// (AESA).
  /// - "BIOSPHERE_RESPOSNIBLE_TOURISM" : Biosphere Responsible Tourism
  /// Standard.
  /// - "BUREAU_VERITAS" : Bureau Veritas.
  /// - "CONTROL_UNION" : Control Union.
  /// - "EARTHCHECK" : EarthCheck.
  /// - "ECO_CERTIFICATION_MALTA" : Eco-Certification Malta Standard.
  /// - "ECOTOURISM_AUSTRALIAS_ECO" : Ecotourism Australia's ECO Certification
  /// Standard.
  /// - "GREAT_GREEN_DEAL" : GREAT Green Deal Certification.
  /// - "GREEN_GLOBE" : Green Globe.
  /// - "GREEN_GROWTH2050" : Green Growth 2050 Standard.
  /// - "GREEN_KEY" : Green Key.
  /// - "GREEN_KEY_ECO_RATING" : Geen Key Eco Rating.
  /// - "GREEN_SEAL" : Green Seal.
  /// - "GREEN_STAR" : Green Star Hotel Standard.
  /// - "GREEN_TOURISM_ACTIVE" : Green Tourism Active Standard.
  /// - "HILTON_LIGHTSTAY" : Hilton LightStay.
  /// - "HOSTELLING_INTERNATIONALS_QUALITY_AND_SUSTAINABILITY" : Hostelling
  /// International's Quality and Sustainability Standard.
  /// - "HOTELES_MAS_VERDES" : Hoteles más Verdes (AHT) Standard.
  /// - "NORDIC_SWAN_ECOLABEL" : Nordic Swan Ecolabel.
  /// - "PREFERRED_BY_NATURE_SUSTAINABLE_TOURISM" : Preferred by Nature
  /// Sustainable Tourism Standard for Accommodation.
  /// - "SUSTAINABLE_TRAVEL_IRELAND" : Sustainable Travel Ireland – GSTC
  /// Industry Criteria.
  /// - "TOF_TIGERS_INITITIVES_PUG" : TOFTigers Initiative's Pug Standard.
  /// - "TRAVELIFE" : Travelife Standard for Hotels & Accommodations.
  /// - "UNITED_CERTIFICATION_SYSTEMS_LIMITED" : United Certification Systems
  /// Limited.
  /// - "VIREO_SRL" : Vireo Srl.
  core.String? ecoCertificate;

  EcoCertification({
    this.awarded,
    this.awardedException,
    this.ecoCertificate,
  });

  EcoCertification.fromJson(core.Map json_)
      : this(
          awarded: json_.containsKey('awarded')
              ? json_['awarded'] as core.bool
              : null,
          awardedException: json_.containsKey('awardedException')
              ? json_['awardedException'] as core.String
              : null,
          ecoCertificate: json_.containsKey('ecoCertificate')
              ? json_['ecoCertificate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (awarded != null) 'awarded': awarded!,
        if (awardedException != null) 'awardedException': awardedException!,
        if (ecoCertificate != null) 'ecoCertificate': ecoCertificate!,
      };
}

/// Energy efficiency practices implemented at the hotel.
class EnergyEfficiency {
  /// Carbon free energy sources.
  ///
  /// Property sources carbon-free electricity via at least one of the following
  /// methods: on-site clean energy generation, power purchase agreement(s) with
  /// clean energy generators, green power provided by electricity supplier, or
  /// purchases of Energy Attribute Certificates (such as Renewable Energy
  /// Certificates or Guarantees of Origin).
  core.bool? carbonFreeEnergySources;

  /// Carbon free energy sources exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? carbonFreeEnergySourcesException;

  /// Energy conservation program.
  ///
  /// The property tracks corporate-level Scope 1 and 2 GHG emissions, and Scope
  /// 3 emissions if available. The property has a commitment to implement
  /// initiatives that reduce GHG emissions year over year. The property has
  /// shown an absolute reduction in emissions for at least 2 years. Emissions
  /// are either verfied by a third-party and/or published in external
  /// communications.
  core.bool? energyConservationProgram;

  /// Energy conservation program exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? energyConservationProgramException;

  /// Energy efficient heating and cooling systems.
  ///
  /// The property doesn't use chlorofluorocarbon (CFC)-based refrigerants in
  /// heating, ventilating, and air-conditioning systems unless a third-party
  /// audit shows it's not economically feasible. The CFC-based refrigerants
  /// which are used should have a Global Warming Potential (GWP) ≤ 10. The
  /// property uses occupancy sensors on HVAC systems in back-of-house spaces,
  /// meeting rooms, and other low-traffic areas.
  core.bool? energyEfficientHeatingAndCoolingSystems;

  /// Energy efficient heating and cooling systems exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? energyEfficientHeatingAndCoolingSystemsException;

  /// Energy efficient lighting.
  ///
  /// At least 75% of the property's lighting is energy efficient, using
  /// lighting that is more than 45 lumens per watt – typically LED or CFL
  /// lightbulbs.
  core.bool? energyEfficientLighting;

  /// Energy efficient lighting exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? energyEfficientLightingException;

  /// Energy saving thermostats.
  ///
  /// The property installed energy-saving thermostats throughout the building
  /// to conserve energy when rooms or areas are not in use. Energy-saving
  /// thermostats are devices that control heating/cooling in the building by
  /// learning temperature preferences and automatically adjusting to
  /// energy-saving temperatures as the default. The thermostats are
  /// automatically set to a temperature between 68-78 degrees F (20-26 °C),
  /// depending on seasonality. In the winter, set the thermostat to 68°F (20°C)
  /// when the room is occupied, lowering room temperature when unoccupied. In
  /// the summer, set the thermostat to 78°F (26°C) when the room is occupied.
  core.bool? energySavingThermostats;

  /// Energy saving thermostats exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? energySavingThermostatsException;

  /// Green building design.
  ///
  /// True if BREEAM-* or LEED-* certified.
  ///
  /// Output only.
  core.bool? greenBuildingDesign;

  /// Green building design exception.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? greenBuildingDesignException;

  /// Independent organization audits energy use.
  ///
  /// The property conducts an energy audit at least every 5 years, the results
  /// of which are either verified by a third-party and/or published in external
  /// communications. An energy audit is a detailed assessment of the facility
  /// which provides recommendations to existing operations and procedures to
  /// improve energy efficiency, available incentives or rebates,and
  /// opportunities for improvements through renovations or upgrades. Examples
  /// of organizations that conduct credible third party audits include: Engie
  /// Impact, DNV GL (EU), Dexma, and local utility providers (they often
  /// provide energy and water audits).
  core.bool? independentOrganizationAuditsEnergyUse;

  /// Independent organization audits energy use exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? independentOrganizationAuditsEnergyUseException;

  EnergyEfficiency({
    this.carbonFreeEnergySources,
    this.carbonFreeEnergySourcesException,
    this.energyConservationProgram,
    this.energyConservationProgramException,
    this.energyEfficientHeatingAndCoolingSystems,
    this.energyEfficientHeatingAndCoolingSystemsException,
    this.energyEfficientLighting,
    this.energyEfficientLightingException,
    this.energySavingThermostats,
    this.energySavingThermostatsException,
    this.greenBuildingDesign,
    this.greenBuildingDesignException,
    this.independentOrganizationAuditsEnergyUse,
    this.independentOrganizationAuditsEnergyUseException,
  });

  EnergyEfficiency.fromJson(core.Map json_)
      : this(
          carbonFreeEnergySources: json_.containsKey('carbonFreeEnergySources')
              ? json_['carbonFreeEnergySources'] as core.bool
              : null,
          carbonFreeEnergySourcesException:
              json_.containsKey('carbonFreeEnergySourcesException')
                  ? json_['carbonFreeEnergySourcesException'] as core.String
                  : null,
          energyConservationProgram:
              json_.containsKey('energyConservationProgram')
                  ? json_['energyConservationProgram'] as core.bool
                  : null,
          energyConservationProgramException:
              json_.containsKey('energyConservationProgramException')
                  ? json_['energyConservationProgramException'] as core.String
                  : null,
          energyEfficientHeatingAndCoolingSystems: json_
                  .containsKey('energyEfficientHeatingAndCoolingSystems')
              ? json_['energyEfficientHeatingAndCoolingSystems'] as core.bool
              : null,
          energyEfficientHeatingAndCoolingSystemsException: json_.containsKey(
                  'energyEfficientHeatingAndCoolingSystemsException')
              ? json_['energyEfficientHeatingAndCoolingSystemsException']
                  as core.String
              : null,
          energyEfficientLighting: json_.containsKey('energyEfficientLighting')
              ? json_['energyEfficientLighting'] as core.bool
              : null,
          energyEfficientLightingException:
              json_.containsKey('energyEfficientLightingException')
                  ? json_['energyEfficientLightingException'] as core.String
                  : null,
          energySavingThermostats: json_.containsKey('energySavingThermostats')
              ? json_['energySavingThermostats'] as core.bool
              : null,
          energySavingThermostatsException:
              json_.containsKey('energySavingThermostatsException')
                  ? json_['energySavingThermostatsException'] as core.String
                  : null,
          greenBuildingDesign: json_.containsKey('greenBuildingDesign')
              ? json_['greenBuildingDesign'] as core.bool
              : null,
          greenBuildingDesignException:
              json_.containsKey('greenBuildingDesignException')
                  ? json_['greenBuildingDesignException'] as core.String
                  : null,
          independentOrganizationAuditsEnergyUse:
              json_.containsKey('independentOrganizationAuditsEnergyUse')
                  ? json_['independentOrganizationAuditsEnergyUse'] as core.bool
                  : null,
          independentOrganizationAuditsEnergyUseException: json_.containsKey(
                  'independentOrganizationAuditsEnergyUseException')
              ? json_['independentOrganizationAuditsEnergyUseException']
                  as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (carbonFreeEnergySources != null)
          'carbonFreeEnergySources': carbonFreeEnergySources!,
        if (carbonFreeEnergySourcesException != null)
          'carbonFreeEnergySourcesException': carbonFreeEnergySourcesException!,
        if (energyConservationProgram != null)
          'energyConservationProgram': energyConservationProgram!,
        if (energyConservationProgramException != null)
          'energyConservationProgramException':
              energyConservationProgramException!,
        if (energyEfficientHeatingAndCoolingSystems != null)
          'energyEfficientHeatingAndCoolingSystems':
              energyEfficientHeatingAndCoolingSystems!,
        if (energyEfficientHeatingAndCoolingSystemsException != null)
          'energyEfficientHeatingAndCoolingSystemsException':
              energyEfficientHeatingAndCoolingSystemsException!,
        if (energyEfficientLighting != null)
          'energyEfficientLighting': energyEfficientLighting!,
        if (energyEfficientLightingException != null)
          'energyEfficientLightingException': energyEfficientLightingException!,
        if (energySavingThermostats != null)
          'energySavingThermostats': energySavingThermostats!,
        if (energySavingThermostatsException != null)
          'energySavingThermostatsException': energySavingThermostatsException!,
        if (greenBuildingDesign != null)
          'greenBuildingDesign': greenBuildingDesign!,
        if (greenBuildingDesignException != null)
          'greenBuildingDesignException': greenBuildingDesignException!,
        if (independentOrganizationAuditsEnergyUse != null)
          'independentOrganizationAuditsEnergyUse':
              independentOrganizationAuditsEnergyUse!,
        if (independentOrganizationAuditsEnergyUseException != null)
          'independentOrganizationAuditsEnergyUseException':
              independentOrganizationAuditsEnergyUseException!,
      };
}

/// Enhanced cleaning measures implemented by the hotel during COVID-19.
class EnhancedCleaning {
  /// Commercial-grade disinfectant used to clean the property.
  core.bool? commercialGradeDisinfectantCleaning;

  /// Commercial grade disinfectant cleaning exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? commercialGradeDisinfectantCleaningException;

  /// Enhanced cleaning of common areas.
  core.bool? commonAreasEnhancedCleaning;

  /// Common areas enhanced cleaning exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? commonAreasEnhancedCleaningException;

  /// Employees trained in COVID-19 cleaning procedures.
  core.bool? employeesTrainedCleaningProcedures;

  /// Employees trained cleaning procedures exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? employeesTrainedCleaningProceduresException;

  /// Employees trained in thorough hand-washing.
  core.bool? employeesTrainedThoroughHandWashing;

  /// Employees trained thorough hand washing exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? employeesTrainedThoroughHandWashingException;

  /// Employees wear masks, face shields, and/or gloves.
  core.bool? employeesWearProtectiveEquipment;

  /// Employees wear protective equipment exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? employeesWearProtectiveEquipmentException;

  /// Enhanced cleaning of guest rooms.
  core.bool? guestRoomsEnhancedCleaning;

  /// Guest rooms enhanced cleaning exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? guestRoomsEnhancedCleaningException;

  EnhancedCleaning({
    this.commercialGradeDisinfectantCleaning,
    this.commercialGradeDisinfectantCleaningException,
    this.commonAreasEnhancedCleaning,
    this.commonAreasEnhancedCleaningException,
    this.employeesTrainedCleaningProcedures,
    this.employeesTrainedCleaningProceduresException,
    this.employeesTrainedThoroughHandWashing,
    this.employeesTrainedThoroughHandWashingException,
    this.employeesWearProtectiveEquipment,
    this.employeesWearProtectiveEquipmentException,
    this.guestRoomsEnhancedCleaning,
    this.guestRoomsEnhancedCleaningException,
  });

  EnhancedCleaning.fromJson(core.Map json_)
      : this(
          commercialGradeDisinfectantCleaning:
              json_.containsKey('commercialGradeDisinfectantCleaning')
                  ? json_['commercialGradeDisinfectantCleaning'] as core.bool
                  : null,
          commercialGradeDisinfectantCleaningException:
              json_.containsKey('commercialGradeDisinfectantCleaningException')
                  ? json_['commercialGradeDisinfectantCleaningException']
                      as core.String
                  : null,
          commonAreasEnhancedCleaning:
              json_.containsKey('commonAreasEnhancedCleaning')
                  ? json_['commonAreasEnhancedCleaning'] as core.bool
                  : null,
          commonAreasEnhancedCleaningException:
              json_.containsKey('commonAreasEnhancedCleaningException')
                  ? json_['commonAreasEnhancedCleaningException'] as core.String
                  : null,
          employeesTrainedCleaningProcedures:
              json_.containsKey('employeesTrainedCleaningProcedures')
                  ? json_['employeesTrainedCleaningProcedures'] as core.bool
                  : null,
          employeesTrainedCleaningProceduresException:
              json_.containsKey('employeesTrainedCleaningProceduresException')
                  ? json_['employeesTrainedCleaningProceduresException']
                      as core.String
                  : null,
          employeesTrainedThoroughHandWashing:
              json_.containsKey('employeesTrainedThoroughHandWashing')
                  ? json_['employeesTrainedThoroughHandWashing'] as core.bool
                  : null,
          employeesTrainedThoroughHandWashingException:
              json_.containsKey('employeesTrainedThoroughHandWashingException')
                  ? json_['employeesTrainedThoroughHandWashingException']
                      as core.String
                  : null,
          employeesWearProtectiveEquipment:
              json_.containsKey('employeesWearProtectiveEquipment')
                  ? json_['employeesWearProtectiveEquipment'] as core.bool
                  : null,
          employeesWearProtectiveEquipmentException:
              json_.containsKey('employeesWearProtectiveEquipmentException')
                  ? json_['employeesWearProtectiveEquipmentException']
                      as core.String
                  : null,
          guestRoomsEnhancedCleaning:
              json_.containsKey('guestRoomsEnhancedCleaning')
                  ? json_['guestRoomsEnhancedCleaning'] as core.bool
                  : null,
          guestRoomsEnhancedCleaningException:
              json_.containsKey('guestRoomsEnhancedCleaningException')
                  ? json_['guestRoomsEnhancedCleaningException'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commercialGradeDisinfectantCleaning != null)
          'commercialGradeDisinfectantCleaning':
              commercialGradeDisinfectantCleaning!,
        if (commercialGradeDisinfectantCleaningException != null)
          'commercialGradeDisinfectantCleaningException':
              commercialGradeDisinfectantCleaningException!,
        if (commonAreasEnhancedCleaning != null)
          'commonAreasEnhancedCleaning': commonAreasEnhancedCleaning!,
        if (commonAreasEnhancedCleaningException != null)
          'commonAreasEnhancedCleaningException':
              commonAreasEnhancedCleaningException!,
        if (employeesTrainedCleaningProcedures != null)
          'employeesTrainedCleaningProcedures':
              employeesTrainedCleaningProcedures!,
        if (employeesTrainedCleaningProceduresException != null)
          'employeesTrainedCleaningProceduresException':
              employeesTrainedCleaningProceduresException!,
        if (employeesTrainedThoroughHandWashing != null)
          'employeesTrainedThoroughHandWashing':
              employeesTrainedThoroughHandWashing!,
        if (employeesTrainedThoroughHandWashingException != null)
          'employeesTrainedThoroughHandWashingException':
              employeesTrainedThoroughHandWashingException!,
        if (employeesWearProtectiveEquipment != null)
          'employeesWearProtectiveEquipment': employeesWearProtectiveEquipment!,
        if (employeesWearProtectiveEquipmentException != null)
          'employeesWearProtectiveEquipmentException':
              employeesWearProtectiveEquipmentException!,
        if (guestRoomsEnhancedCleaning != null)
          'guestRoomsEnhancedCleaning': guestRoomsEnhancedCleaning!,
        if (guestRoomsEnhancedCleaningException != null)
          'guestRoomsEnhancedCleaningException':
              guestRoomsEnhancedCleaningException!,
      };
}

/// Services and amenities for families and young guests.
class Families {
  /// Babysitting.
  ///
  /// Child care that is offered by hotel staffers or coordinated by hotel
  /// staffers with local child care professionals. Can be free or for a fee.
  core.bool? babysitting;

  /// Babysitting exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? babysittingException;

  /// Kids activities.
  ///
  /// Recreational options such as sports, films, crafts and games designed for
  /// the enjoyment of children and offered at the hotel. May or may not be
  /// supervised. May or may not be at a designated time or place. Cab be free
  /// or for a fee.
  core.bool? kidsActivities;

  /// Kids activities exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? kidsActivitiesException;

  /// Kids club.
  ///
  /// An organized program of group activities held at the hotel and designed
  /// for the enjoyment of children. Facilitated by hotel staff (or staff
  /// procured by the hotel) in an area(s) designated for the purpose of
  /// entertaining children without their parents. May include games, outings,
  /// water sports, team sports, arts and crafts, and films. Usually has set
  /// hours. Can be free or for a fee. Also known as Kids Camp or Kids program.
  core.bool? kidsClub;

  /// Kids club exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? kidsClubException;

  Families({
    this.babysitting,
    this.babysittingException,
    this.kidsActivities,
    this.kidsActivitiesException,
    this.kidsClub,
    this.kidsClubException,
  });

  Families.fromJson(core.Map json_)
      : this(
          babysitting: json_.containsKey('babysitting')
              ? json_['babysitting'] as core.bool
              : null,
          babysittingException: json_.containsKey('babysittingException')
              ? json_['babysittingException'] as core.String
              : null,
          kidsActivities: json_.containsKey('kidsActivities')
              ? json_['kidsActivities'] as core.bool
              : null,
          kidsActivitiesException: json_.containsKey('kidsActivitiesException')
              ? json_['kidsActivitiesException'] as core.String
              : null,
          kidsClub: json_.containsKey('kidsClub')
              ? json_['kidsClub'] as core.bool
              : null,
          kidsClubException: json_.containsKey('kidsClubException')
              ? json_['kidsClubException'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (babysitting != null) 'babysitting': babysitting!,
        if (babysittingException != null)
          'babysittingException': babysittingException!,
        if (kidsActivities != null) 'kidsActivities': kidsActivities!,
        if (kidsActivitiesException != null)
          'kidsActivitiesException': kidsActivitiesException!,
        if (kidsClub != null) 'kidsClub': kidsClub!,
        if (kidsClubException != null) 'kidsClubException': kidsClubException!,
      };
}

/// Meals, snacks, and beverages available at the property.
class FoodAndDrink {
  /// Bar.
  ///
  /// A designated room, lounge or area of an on-site restaurant with seating at
  /// a counter behind which a hotel staffer takes the guest's order and
  /// provides the requested alcoholic drink. Can be indoors or outdoors. Also
  /// known as Pub.
  core.bool? bar;

  /// Bar exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? barException;

  /// Breakfast available.
  ///
  /// The morning meal is offered to all guests. Can be free or for a fee.
  core.bool? breakfastAvailable;

  /// Breakfast available exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? breakfastAvailableException;

  /// Breakfast buffet.
  ///
  /// Breakfast meal service where guests serve themselves from a variety of
  /// dishes/foods that are put out on a table.
  core.bool? breakfastBuffet;

  /// Breakfast buffet exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? breakfastBuffetException;

  /// Buffet.
  ///
  /// A type of meal where guests serve themselves from a variety of
  /// dishes/foods that are put out on a table. Includes lunch and/or dinner
  /// meals. A breakfast-only buffet is not sufficient.
  core.bool? buffet;

  /// Buffet exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? buffetException;

  /// Dinner buffet.
  ///
  /// Dinner meal service where guests serve themselves from a variety of
  /// dishes/foods that are put out on a table.
  core.bool? dinnerBuffet;

  /// Dinner buffet exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? dinnerBuffetException;

  /// Free breakfast.
  ///
  /// Breakfast is offered for free to all guests. Does not apply if limited to
  /// certain room packages.
  core.bool? freeBreakfast;

  /// Free breakfast exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? freeBreakfastException;

  /// Restaurant.
  ///
  /// A business onsite at the hotel that is open to the public as well as
  /// guests, and offers meals and beverages to consume at tables or counters.
  /// May or may not include table service. Also known as cafe, buffet, eatery.
  /// A "breakfast room" where the hotel serves breakfast only to guests (not
  /// the general public) does not count as a restaurant.
  core.bool? restaurant;

  /// Restaurant exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? restaurantException;

  /// Restaurants count.
  ///
  /// The number of restaurants at the hotel.
  core.int? restaurantsCount;

  /// Restaurants count exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? restaurantsCountException;

  /// Room service.
  ///
  /// A hotel staffer delivers meals prepared onsite to a guest's room as per
  /// their request. May or may not be available during specific hours. Services
  /// should be available to all guests (not based on rate/room booked/reward
  /// program, etc).
  core.bool? roomService;

  /// Room service exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? roomServiceException;

  /// Table service.
  ///
  /// A restaurant in which a staff member is assigned to a guest's table to
  /// take their order, deliver and clear away food, and deliver the bill, if
  /// applicable. Also known as sit-down restaurant.
  core.bool? tableService;

  /// Table service exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? tableServiceException;

  /// 24hr room service.
  ///
  /// Room service is available 24 hours a day.
  core.bool? twentyFourHourRoomService;

  /// 24hr room service exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? twentyFourHourRoomServiceException;

  /// Vending machine.
  ///
  /// A glass-fronted mechanized cabinet displaying and dispensing snacks and
  /// beverages for purchase by coins, paper money and/or credit cards.
  core.bool? vendingMachine;

  /// Vending machine exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? vendingMachineException;

  FoodAndDrink({
    this.bar,
    this.barException,
    this.breakfastAvailable,
    this.breakfastAvailableException,
    this.breakfastBuffet,
    this.breakfastBuffetException,
    this.buffet,
    this.buffetException,
    this.dinnerBuffet,
    this.dinnerBuffetException,
    this.freeBreakfast,
    this.freeBreakfastException,
    this.restaurant,
    this.restaurantException,
    this.restaurantsCount,
    this.restaurantsCountException,
    this.roomService,
    this.roomServiceException,
    this.tableService,
    this.tableServiceException,
    this.twentyFourHourRoomService,
    this.twentyFourHourRoomServiceException,
    this.vendingMachine,
    this.vendingMachineException,
  });

  FoodAndDrink.fromJson(core.Map json_)
      : this(
          bar: json_.containsKey('bar') ? json_['bar'] as core.bool : null,
          barException: json_.containsKey('barException')
              ? json_['barException'] as core.String
              : null,
          breakfastAvailable: json_.containsKey('breakfastAvailable')
              ? json_['breakfastAvailable'] as core.bool
              : null,
          breakfastAvailableException:
              json_.containsKey('breakfastAvailableException')
                  ? json_['breakfastAvailableException'] as core.String
                  : null,
          breakfastBuffet: json_.containsKey('breakfastBuffet')
              ? json_['breakfastBuffet'] as core.bool
              : null,
          breakfastBuffetException:
              json_.containsKey('breakfastBuffetException')
                  ? json_['breakfastBuffetException'] as core.String
                  : null,
          buffet:
              json_.containsKey('buffet') ? json_['buffet'] as core.bool : null,
          buffetException: json_.containsKey('buffetException')
              ? json_['buffetException'] as core.String
              : null,
          dinnerBuffet: json_.containsKey('dinnerBuffet')
              ? json_['dinnerBuffet'] as core.bool
              : null,
          dinnerBuffetException: json_.containsKey('dinnerBuffetException')
              ? json_['dinnerBuffetException'] as core.String
              : null,
          freeBreakfast: json_.containsKey('freeBreakfast')
              ? json_['freeBreakfast'] as core.bool
              : null,
          freeBreakfastException: json_.containsKey('freeBreakfastException')
              ? json_['freeBreakfastException'] as core.String
              : null,
          restaurant: json_.containsKey('restaurant')
              ? json_['restaurant'] as core.bool
              : null,
          restaurantException: json_.containsKey('restaurantException')
              ? json_['restaurantException'] as core.String
              : null,
          restaurantsCount: json_.containsKey('restaurantsCount')
              ? json_['restaurantsCount'] as core.int
              : null,
          restaurantsCountException:
              json_.containsKey('restaurantsCountException')
                  ? json_['restaurantsCountException'] as core.String
                  : null,
          roomService: json_.containsKey('roomService')
              ? json_['roomService'] as core.bool
              : null,
          roomServiceException: json_.containsKey('roomServiceException')
              ? json_['roomServiceException'] as core.String
              : null,
          tableService: json_.containsKey('tableService')
              ? json_['tableService'] as core.bool
              : null,
          tableServiceException: json_.containsKey('tableServiceException')
              ? json_['tableServiceException'] as core.String
              : null,
          twentyFourHourRoomService:
              json_.containsKey('twentyFourHourRoomService')
                  ? json_['twentyFourHourRoomService'] as core.bool
                  : null,
          twentyFourHourRoomServiceException:
              json_.containsKey('twentyFourHourRoomServiceException')
                  ? json_['twentyFourHourRoomServiceException'] as core.String
                  : null,
          vendingMachine: json_.containsKey('vendingMachine')
              ? json_['vendingMachine'] as core.bool
              : null,
          vendingMachineException: json_.containsKey('vendingMachineException')
              ? json_['vendingMachineException'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bar != null) 'bar': bar!,
        if (barException != null) 'barException': barException!,
        if (breakfastAvailable != null)
          'breakfastAvailable': breakfastAvailable!,
        if (breakfastAvailableException != null)
          'breakfastAvailableException': breakfastAvailableException!,
        if (breakfastBuffet != null) 'breakfastBuffet': breakfastBuffet!,
        if (breakfastBuffetException != null)
          'breakfastBuffetException': breakfastBuffetException!,
        if (buffet != null) 'buffet': buffet!,
        if (buffetException != null) 'buffetException': buffetException!,
        if (dinnerBuffet != null) 'dinnerBuffet': dinnerBuffet!,
        if (dinnerBuffetException != null)
          'dinnerBuffetException': dinnerBuffetException!,
        if (freeBreakfast != null) 'freeBreakfast': freeBreakfast!,
        if (freeBreakfastException != null)
          'freeBreakfastException': freeBreakfastException!,
        if (restaurant != null) 'restaurant': restaurant!,
        if (restaurantException != null)
          'restaurantException': restaurantException!,
        if (restaurantsCount != null) 'restaurantsCount': restaurantsCount!,
        if (restaurantsCountException != null)
          'restaurantsCountException': restaurantsCountException!,
        if (roomService != null) 'roomService': roomService!,
        if (roomServiceException != null)
          'roomServiceException': roomServiceException!,
        if (tableService != null) 'tableService': tableService!,
        if (tableServiceException != null)
          'tableServiceException': tableServiceException!,
        if (twentyFourHourRoomService != null)
          'twentyFourHourRoomService': twentyFourHourRoomService!,
        if (twentyFourHourRoomServiceException != null)
          'twentyFourHourRoomServiceException':
              twentyFourHourRoomServiceException!,
        if (vendingMachine != null) 'vendingMachine': vendingMachine!,
        if (vendingMachineException != null)
          'vendingMachineException': vendingMachineException!,
      };
}

/// Response message for LodgingService.GetGoogleUpdatedLodging
class GetGoogleUpdatedLodgingResponse {
  /// The fields in the Lodging that have been updated by Google.
  ///
  /// Repeated field items are not individually specified.
  ///
  /// Required.
  core.String? diffMask;

  /// The Google updated Lodging.
  ///
  /// Required.
  Lodging? lodging;

  GetGoogleUpdatedLodgingResponse({
    this.diffMask,
    this.lodging,
  });

  GetGoogleUpdatedLodgingResponse.fromJson(core.Map json_)
      : this(
          diffMask: json_.containsKey('diffMask')
              ? json_['diffMask'] as core.String
              : null,
          lodging: json_.containsKey('lodging')
              ? Lodging.fromJson(
                  json_['lodging'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diffMask != null) 'diffMask': diffMask!,
        if (lodging != null) 'lodging': lodging!,
      };
}

/// Features and available amenities in the guest unit.
class GuestUnitFeatures {
  /// Bungalow or villa.
  ///
  /// An independent structure that is part of a hotel or resort that is rented
  /// to one party for a vacation stay. The hotel or resort may be completely
  /// comprised of bungalows or villas, or they may be one of several guestroom
  /// options. Guests in the bungalows or villas most often have the same, if
  /// not more, amenities and services offered to guests in other guestroom
  /// types.
  core.bool? bungalowOrVilla;

  /// Bungalow or villa exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? bungalowOrVillaException;

  /// Connecting unit available.
  ///
  /// A guestroom type that features access to an adjacent guestroom for the
  /// purpose of booking both rooms. Most often used by families who need more
  /// than one room to accommodate the number of people in their group.
  core.bool? connectingUnitAvailable;

  /// Connecting unit available exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? connectingUnitAvailableException;

  /// Executive floor.
  ///
  /// A floor of the hotel where the guestrooms are only bookable by members of
  /// the hotel's frequent guest membership program. Benefits of this room class
  /// include access to a designated lounge which may or may not feature free
  /// breakfast, cocktails or other perks specific to members of the program.
  core.bool? executiveFloor;

  /// Executive floor exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? executiveFloorException;

  /// Max adult occupants count.
  ///
  /// The total number of adult guests allowed to stay overnight in the
  /// guestroom.
  core.int? maxAdultOccupantsCount;

  /// Max adult occupants count exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? maxAdultOccupantsCountException;

  /// Max child occupants count.
  ///
  /// The total number of children allowed to stay overnight in the room.
  core.int? maxChildOccupantsCount;

  /// Max child occupants count exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? maxChildOccupantsCountException;

  /// Max occupants count.
  ///
  /// The total number of guests allowed to stay overnight in the guestroom.
  core.int? maxOccupantsCount;

  /// Max occupants count exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? maxOccupantsCountException;

  /// Private home.
  ///
  /// A privately owned home (house, townhouse, apartment, cabin, bungalow etc)
  /// that may or not serve as the owner's residence, but is rented out in its
  /// entirety or by the room(s) to paying guest(s) for vacation stays. Not for
  /// lease-based, long-term residency.
  core.bool? privateHome;

  /// Private home exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? privateHomeException;

  /// Suite.
  ///
  /// A guestroom category that implies both a bedroom area and a separate
  /// living area. There may or may not be full walls and doors separating the
  /// two areas, but regardless, they are very distinct. Does not mean a couch
  /// or chair in a bedroom.
  core.bool? suite;

  /// Suite exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? suiteException;

  /// Tier.
  ///
  /// Classification of the unit based on available features/amenities. A
  /// non-standard tier is only permitted if at least one other unit type falls
  /// under the standard tier.
  /// Possible string values are:
  /// - "UNIT_TIER_UNSPECIFIED" : Default tier. Equivalent to STANDARD. Prefer
  /// using STANDARD directly.
  /// - "STANDARD_UNIT" : Standard unit. The predominant and most basic
  /// guestroom type available at the hotel. All other guestroom types include
  /// the features/amenities of this room, as well as additional
  /// features/amenities.
  /// - "DELUXE_UNIT" : Deluxe unit. A guestroom type that builds on the
  /// features of the standard guestroom by offering additional amenities and/or
  /// more space, and/or views. The room rate is higher than that of the
  /// standard room type. Also known as Superior. Only allowed if another unit
  /// type is a standard tier.
  core.String? tier;

  /// Tier exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? tierException;

  /// Features available in the living areas in the guest unit.
  LivingArea? totalLivingAreas;

  /// Views available from the guest unit itself.
  ViewsFromUnit? views;

  GuestUnitFeatures({
    this.bungalowOrVilla,
    this.bungalowOrVillaException,
    this.connectingUnitAvailable,
    this.connectingUnitAvailableException,
    this.executiveFloor,
    this.executiveFloorException,
    this.maxAdultOccupantsCount,
    this.maxAdultOccupantsCountException,
    this.maxChildOccupantsCount,
    this.maxChildOccupantsCountException,
    this.maxOccupantsCount,
    this.maxOccupantsCountException,
    this.privateHome,
    this.privateHomeException,
    this.suite,
    this.suiteException,
    this.tier,
    this.tierException,
    this.totalLivingAreas,
    this.views,
  });

  GuestUnitFeatures.fromJson(core.Map json_)
      : this(
          bungalowOrVilla: json_.containsKey('bungalowOrVilla')
              ? json_['bungalowOrVilla'] as core.bool
              : null,
          bungalowOrVillaException:
              json_.containsKey('bungalowOrVillaException')
                  ? json_['bungalowOrVillaException'] as core.String
                  : null,
          connectingUnitAvailable: json_.containsKey('connectingUnitAvailable')
              ? json_['connectingUnitAvailable'] as core.bool
              : null,
          connectingUnitAvailableException:
              json_.containsKey('connectingUnitAvailableException')
                  ? json_['connectingUnitAvailableException'] as core.String
                  : null,
          executiveFloor: json_.containsKey('executiveFloor')
              ? json_['executiveFloor'] as core.bool
              : null,
          executiveFloorException: json_.containsKey('executiveFloorException')
              ? json_['executiveFloorException'] as core.String
              : null,
          maxAdultOccupantsCount: json_.containsKey('maxAdultOccupantsCount')
              ? json_['maxAdultOccupantsCount'] as core.int
              : null,
          maxAdultOccupantsCountException:
              json_.containsKey('maxAdultOccupantsCountException')
                  ? json_['maxAdultOccupantsCountException'] as core.String
                  : null,
          maxChildOccupantsCount: json_.containsKey('maxChildOccupantsCount')
              ? json_['maxChildOccupantsCount'] as core.int
              : null,
          maxChildOccupantsCountException:
              json_.containsKey('maxChildOccupantsCountException')
                  ? json_['maxChildOccupantsCountException'] as core.String
                  : null,
          maxOccupantsCount: json_.containsKey('maxOccupantsCount')
              ? json_['maxOccupantsCount'] as core.int
              : null,
          maxOccupantsCountException:
              json_.containsKey('maxOccupantsCountException')
                  ? json_['maxOccupantsCountException'] as core.String
                  : null,
          privateHome: json_.containsKey('privateHome')
              ? json_['privateHome'] as core.bool
              : null,
          privateHomeException: json_.containsKey('privateHomeException')
              ? json_['privateHomeException'] as core.String
              : null,
          suite:
              json_.containsKey('suite') ? json_['suite'] as core.bool : null,
          suiteException: json_.containsKey('suiteException')
              ? json_['suiteException'] as core.String
              : null,
          tier: json_.containsKey('tier') ? json_['tier'] as core.String : null,
          tierException: json_.containsKey('tierException')
              ? json_['tierException'] as core.String
              : null,
          totalLivingAreas: json_.containsKey('totalLivingAreas')
              ? LivingArea.fromJson(json_['totalLivingAreas']
                  as core.Map<core.String, core.dynamic>)
              : null,
          views: json_.containsKey('views')
              ? ViewsFromUnit.fromJson(
                  json_['views'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bungalowOrVilla != null) 'bungalowOrVilla': bungalowOrVilla!,
        if (bungalowOrVillaException != null)
          'bungalowOrVillaException': bungalowOrVillaException!,
        if (connectingUnitAvailable != null)
          'connectingUnitAvailable': connectingUnitAvailable!,
        if (connectingUnitAvailableException != null)
          'connectingUnitAvailableException': connectingUnitAvailableException!,
        if (executiveFloor != null) 'executiveFloor': executiveFloor!,
        if (executiveFloorException != null)
          'executiveFloorException': executiveFloorException!,
        if (maxAdultOccupantsCount != null)
          'maxAdultOccupantsCount': maxAdultOccupantsCount!,
        if (maxAdultOccupantsCountException != null)
          'maxAdultOccupantsCountException': maxAdultOccupantsCountException!,
        if (maxChildOccupantsCount != null)
          'maxChildOccupantsCount': maxChildOccupantsCount!,
        if (maxChildOccupantsCountException != null)
          'maxChildOccupantsCountException': maxChildOccupantsCountException!,
        if (maxOccupantsCount != null) 'maxOccupantsCount': maxOccupantsCount!,
        if (maxOccupantsCountException != null)
          'maxOccupantsCountException': maxOccupantsCountException!,
        if (privateHome != null) 'privateHome': privateHome!,
        if (privateHomeException != null)
          'privateHomeException': privateHomeException!,
        if (suite != null) 'suite': suite!,
        if (suiteException != null) 'suiteException': suiteException!,
        if (tier != null) 'tier': tier!,
        if (tierException != null) 'tierException': tierException!,
        if (totalLivingAreas != null) 'totalLivingAreas': totalLivingAreas!,
        if (views != null) 'views': views!,
      };
}

/// A specific type of unit primarily defined by its features.
class GuestUnitType {
  /// Unit or room code identifiers for a single GuestUnitType.
  ///
  /// Each code must be unique within a Lodging instance.
  ///
  /// Required.
  core.List<core.String>? codes;

  /// Features and available amenities of the GuestUnitType.
  GuestUnitFeatures? features;

  /// Short, English label or name of the GuestUnitType.
  ///
  /// Target \<50 chars.
  ///
  /// Required.
  core.String? label;

  GuestUnitType({
    this.codes,
    this.features,
    this.label,
  });

  GuestUnitType.fromJson(core.Map json_)
      : this(
          codes: json_.containsKey('codes')
              ? (json_['codes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          features: json_.containsKey('features')
              ? GuestUnitFeatures.fromJson(
                  json_['features'] as core.Map<core.String, core.dynamic>)
              : null,
          label:
              json_.containsKey('label') ? json_['label'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (codes != null) 'codes': codes!,
        if (features != null) 'features': features!,
        if (label != null) 'label': label!,
      };
}

/// Health and safety measures implemented by the hotel during COVID-19.
class HealthAndSafety {
  /// Enhanced cleaning measures implemented by the hotel during COVID-19.
  EnhancedCleaning? enhancedCleaning;

  /// Increased food safety measures implemented by the hotel during COVID-19.
  IncreasedFoodSafety? increasedFoodSafety;

  /// Minimized contact measures implemented by the hotel during COVID-19.
  MinimizedContact? minimizedContact;

  /// Personal protection measures implemented by the hotel during COVID-19.
  PersonalProtection? personalProtection;

  /// Physical distancing measures implemented by the hotel during COVID-19.
  PhysicalDistancing? physicalDistancing;

  HealthAndSafety({
    this.enhancedCleaning,
    this.increasedFoodSafety,
    this.minimizedContact,
    this.personalProtection,
    this.physicalDistancing,
  });

  HealthAndSafety.fromJson(core.Map json_)
      : this(
          enhancedCleaning: json_.containsKey('enhancedCleaning')
              ? EnhancedCleaning.fromJson(json_['enhancedCleaning']
                  as core.Map<core.String, core.dynamic>)
              : null,
          increasedFoodSafety: json_.containsKey('increasedFoodSafety')
              ? IncreasedFoodSafety.fromJson(json_['increasedFoodSafety']
                  as core.Map<core.String, core.dynamic>)
              : null,
          minimizedContact: json_.containsKey('minimizedContact')
              ? MinimizedContact.fromJson(json_['minimizedContact']
                  as core.Map<core.String, core.dynamic>)
              : null,
          personalProtection: json_.containsKey('personalProtection')
              ? PersonalProtection.fromJson(json_['personalProtection']
                  as core.Map<core.String, core.dynamic>)
              : null,
          physicalDistancing: json_.containsKey('physicalDistancing')
              ? PhysicalDistancing.fromJson(json_['physicalDistancing']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enhancedCleaning != null) 'enhancedCleaning': enhancedCleaning!,
        if (increasedFoodSafety != null)
          'increasedFoodSafety': increasedFoodSafety!,
        if (minimizedContact != null) 'minimizedContact': minimizedContact!,
        if (personalProtection != null)
          'personalProtection': personalProtection!,
        if (physicalDistancing != null)
          'physicalDistancing': physicalDistancing!,
      };
}

/// Conveniences provided in guest units to facilitate an easier, more
/// comfortable stay.
class Housekeeping {
  /// Daily housekeeping.
  ///
  /// Guest units are cleaned by hotel staff daily during guest's stay.
  core.bool? dailyHousekeeping;

  /// Daily housekeeping exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? dailyHousekeepingException;

  /// Housekeeping available.
  ///
  /// Guest units are cleaned by hotel staff during guest's stay. Schedule may
  /// vary from daily, weekly, or specific days of the week.
  core.bool? housekeepingAvailable;

  /// Housekeeping available exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? housekeepingAvailableException;

  /// Turndown service.
  ///
  /// Hotel staff enters guest units to prepare the bed for sleep use. May or
  /// may not include some light housekeeping. May or may not include an evening
  /// snack or candy. Also known as evening service.
  core.bool? turndownService;

  /// Turndown service exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? turndownServiceException;

  Housekeeping({
    this.dailyHousekeeping,
    this.dailyHousekeepingException,
    this.housekeepingAvailable,
    this.housekeepingAvailableException,
    this.turndownService,
    this.turndownServiceException,
  });

  Housekeeping.fromJson(core.Map json_)
      : this(
          dailyHousekeeping: json_.containsKey('dailyHousekeeping')
              ? json_['dailyHousekeeping'] as core.bool
              : null,
          dailyHousekeepingException:
              json_.containsKey('dailyHousekeepingException')
                  ? json_['dailyHousekeepingException'] as core.String
                  : null,
          housekeepingAvailable: json_.containsKey('housekeepingAvailable')
              ? json_['housekeepingAvailable'] as core.bool
              : null,
          housekeepingAvailableException:
              json_.containsKey('housekeepingAvailableException')
                  ? json_['housekeepingAvailableException'] as core.String
                  : null,
          turndownService: json_.containsKey('turndownService')
              ? json_['turndownService'] as core.bool
              : null,
          turndownServiceException:
              json_.containsKey('turndownServiceException')
                  ? json_['turndownServiceException'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dailyHousekeeping != null) 'dailyHousekeeping': dailyHousekeeping!,
        if (dailyHousekeepingException != null)
          'dailyHousekeepingException': dailyHousekeepingException!,
        if (housekeepingAvailable != null)
          'housekeepingAvailable': housekeepingAvailable!,
        if (housekeepingAvailableException != null)
          'housekeepingAvailableException': housekeepingAvailableException!,
        if (turndownService != null) 'turndownService': turndownService!,
        if (turndownServiceException != null)
          'turndownServiceException': turndownServiceException!,
      };
}

/// Increased food safety measures implemented by the hotel during COVID-19.
class IncreasedFoodSafety {
  /// Additional sanitation in dining areas.
  core.bool? diningAreasAdditionalSanitation;

  /// Dining areas additional sanitation exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? diningAreasAdditionalSanitationException;

  /// Disposable flatware.
  core.bool? disposableFlatware;

  /// Disposable flatware exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? disposableFlatwareException;

  /// Additional safety measures during food prep and serving.
  core.bool? foodPreparationAndServingAdditionalSafety;

  /// Food preparation and serving additional safety exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? foodPreparationAndServingAdditionalSafetyException;

  /// Individually-packaged meals.
  core.bool? individualPackagedMeals;

  /// Individual packaged meals exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? individualPackagedMealsException;

  /// Single-use menus.
  core.bool? singleUseFoodMenus;

  /// Single use food menus exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? singleUseFoodMenusException;

  IncreasedFoodSafety({
    this.diningAreasAdditionalSanitation,
    this.diningAreasAdditionalSanitationException,
    this.disposableFlatware,
    this.disposableFlatwareException,
    this.foodPreparationAndServingAdditionalSafety,
    this.foodPreparationAndServingAdditionalSafetyException,
    this.individualPackagedMeals,
    this.individualPackagedMealsException,
    this.singleUseFoodMenus,
    this.singleUseFoodMenusException,
  });

  IncreasedFoodSafety.fromJson(core.Map json_)
      : this(
          diningAreasAdditionalSanitation:
              json_.containsKey('diningAreasAdditionalSanitation')
                  ? json_['diningAreasAdditionalSanitation'] as core.bool
                  : null,
          diningAreasAdditionalSanitationException: json_
                  .containsKey('diningAreasAdditionalSanitationException')
              ? json_['diningAreasAdditionalSanitationException'] as core.String
              : null,
          disposableFlatware: json_.containsKey('disposableFlatware')
              ? json_['disposableFlatware'] as core.bool
              : null,
          disposableFlatwareException:
              json_.containsKey('disposableFlatwareException')
                  ? json_['disposableFlatwareException'] as core.String
                  : null,
          foodPreparationAndServingAdditionalSafety: json_
                  .containsKey('foodPreparationAndServingAdditionalSafety')
              ? json_['foodPreparationAndServingAdditionalSafety'] as core.bool
              : null,
          foodPreparationAndServingAdditionalSafetyException: json_.containsKey(
                  'foodPreparationAndServingAdditionalSafetyException')
              ? json_['foodPreparationAndServingAdditionalSafetyException']
                  as core.String
              : null,
          individualPackagedMeals: json_.containsKey('individualPackagedMeals')
              ? json_['individualPackagedMeals'] as core.bool
              : null,
          individualPackagedMealsException:
              json_.containsKey('individualPackagedMealsException')
                  ? json_['individualPackagedMealsException'] as core.String
                  : null,
          singleUseFoodMenus: json_.containsKey('singleUseFoodMenus')
              ? json_['singleUseFoodMenus'] as core.bool
              : null,
          singleUseFoodMenusException:
              json_.containsKey('singleUseFoodMenusException')
                  ? json_['singleUseFoodMenusException'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diningAreasAdditionalSanitation != null)
          'diningAreasAdditionalSanitation': diningAreasAdditionalSanitation!,
        if (diningAreasAdditionalSanitationException != null)
          'diningAreasAdditionalSanitationException':
              diningAreasAdditionalSanitationException!,
        if (disposableFlatware != null)
          'disposableFlatware': disposableFlatware!,
        if (disposableFlatwareException != null)
          'disposableFlatwareException': disposableFlatwareException!,
        if (foodPreparationAndServingAdditionalSafety != null)
          'foodPreparationAndServingAdditionalSafety':
              foodPreparationAndServingAdditionalSafety!,
        if (foodPreparationAndServingAdditionalSafetyException != null)
          'foodPreparationAndServingAdditionalSafetyException':
              foodPreparationAndServingAdditionalSafetyException!,
        if (individualPackagedMeals != null)
          'individualPackagedMeals': individualPackagedMeals!,
        if (individualPackagedMealsException != null)
          'individualPackagedMealsException': individualPackagedMealsException!,
        if (singleUseFoodMenus != null)
          'singleUseFoodMenus': singleUseFoodMenus!,
        if (singleUseFoodMenusException != null)
          'singleUseFoodMenusException': singleUseFoodMenusException!,
      };
}

/// Language spoken by at least one staff member.
class LanguageSpoken {
  /// The BCP-47 language code for the spoken language.
  ///
  /// Currently accepted codes: ar, de, en, es, fil, fr, hi, id, it, ja, ko, nl,
  /// pt, ru, vi, yue, zh.
  ///
  /// Required.
  core.String? languageCode;

  /// At least one member of the staff can speak the language.
  core.bool? spoken;

  /// Spoken exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? spokenException;

  LanguageSpoken({
    this.languageCode,
    this.spoken,
    this.spokenException,
  });

  LanguageSpoken.fromJson(core.Map json_)
      : this(
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          spoken:
              json_.containsKey('spoken') ? json_['spoken'] as core.bool : null,
          spokenException: json_.containsKey('spokenException')
              ? json_['spokenException'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageCode != null) 'languageCode': languageCode!,
        if (spoken != null) 'spoken': spoken!,
        if (spokenException != null) 'spokenException': spokenException!,
      };
}

/// An individual room, such as kitchen, bathroom, bedroom, within a bookable
/// guest unit.
class LivingArea {
  /// Accessibility features of the living area.
  LivingAreaAccessibility? accessibility;

  /// Information about eating features in the living area.
  LivingAreaEating? eating;

  /// Features in the living area.
  LivingAreaFeatures? features;

  /// Information about the layout of the living area.
  LivingAreaLayout? layout;

  /// Information about sleeping features in the living area.
  LivingAreaSleeping? sleeping;

  LivingArea({
    this.accessibility,
    this.eating,
    this.features,
    this.layout,
    this.sleeping,
  });

  LivingArea.fromJson(core.Map json_)
      : this(
          accessibility: json_.containsKey('accessibility')
              ? LivingAreaAccessibility.fromJson(
                  json_['accessibility'] as core.Map<core.String, core.dynamic>)
              : null,
          eating: json_.containsKey('eating')
              ? LivingAreaEating.fromJson(
                  json_['eating'] as core.Map<core.String, core.dynamic>)
              : null,
          features: json_.containsKey('features')
              ? LivingAreaFeatures.fromJson(
                  json_['features'] as core.Map<core.String, core.dynamic>)
              : null,
          layout: json_.containsKey('layout')
              ? LivingAreaLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          sleeping: json_.containsKey('sleeping')
              ? LivingAreaSleeping.fromJson(
                  json_['sleeping'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessibility != null) 'accessibility': accessibility!,
        if (eating != null) 'eating': eating!,
        if (features != null) 'features': features!,
        if (layout != null) 'layout': layout!,
        if (sleeping != null) 'sleeping': sleeping!,
      };
}

/// Accessibility features of the living area.
class LivingAreaAccessibility {
  /// ADA compliant unit.
  ///
  /// A guestroom designed to accommodate the physical challenges of a guest
  /// with mobility and/or auditory and/or visual issues, as determined by
  /// legislative policy. Usually features enlarged doorways, roll-in showers
  /// with seats, bathroom grab bars, and communication equipment for the
  /// hearing and sight challenged.
  core.bool? adaCompliantUnit;

  /// ADA compliant unit exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? adaCompliantUnitException;

  /// Hearing-accessible doorbell.
  ///
  /// A visual indicator(s) of a knock or ring at the door.
  core.bool? hearingAccessibleDoorbell;

  /// Hearing-accessible doorbell exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? hearingAccessibleDoorbellException;

  /// Hearing-accessible fire alarm.
  ///
  /// A device that gives warning of a fire through flashing lights.
  core.bool? hearingAccessibleFireAlarm;

  /// Hearing-accessible fire alarm exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? hearingAccessibleFireAlarmException;

  /// Hearing-accessible unit.
  ///
  /// A guestroom designed to accommodate the physical challenges of a guest
  /// with auditory issues.
  core.bool? hearingAccessibleUnit;

  /// Hearing-accessible unit exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? hearingAccessibleUnitException;

  /// Mobility-accessible bathtub.
  ///
  /// A bathtub that accomodates the physically challenged with additional
  /// railings or hand grips, a transfer seat or lift, and/or a door to enable
  /// walking into the tub.
  core.bool? mobilityAccessibleBathtub;

  /// Mobility-accessible bathtub exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? mobilityAccessibleBathtubException;

  /// Mobility-accessible shower.
  ///
  /// A shower with an enlarged door or access point to accommodate a wheelchair
  /// or a waterproof seat for the physically challenged.
  core.bool? mobilityAccessibleShower;

  /// Mobility-accessible shower exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? mobilityAccessibleShowerException;

  /// Mobility-accessible toilet.
  ///
  /// A toilet with a higher seat, grab bars, and/or a larger area around it to
  /// accommodate the physically challenged.
  core.bool? mobilityAccessibleToilet;

  /// Mobility-accessible toilet exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? mobilityAccessibleToiletException;

  /// Mobility-accessible unit.
  ///
  /// A guestroom designed to accommodate the physical challenges of a guest
  /// with mobility and/or auditory and/or visual issues. Usually features
  /// enlarged doorways, roll-in showers with seats, bathroom grab bars, and
  /// communication equipment for the hearing and sight challenged.
  core.bool? mobilityAccessibleUnit;

  /// Mobility-accessible unit exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? mobilityAccessibleUnitException;

  LivingAreaAccessibility({
    this.adaCompliantUnit,
    this.adaCompliantUnitException,
    this.hearingAccessibleDoorbell,
    this.hearingAccessibleDoorbellException,
    this.hearingAccessibleFireAlarm,
    this.hearingAccessibleFireAlarmException,
    this.hearingAccessibleUnit,
    this.hearingAccessibleUnitException,
    this.mobilityAccessibleBathtub,
    this.mobilityAccessibleBathtubException,
    this.mobilityAccessibleShower,
    this.mobilityAccessibleShowerException,
    this.mobilityAccessibleToilet,
    this.mobilityAccessibleToiletException,
    this.mobilityAccessibleUnit,
    this.mobilityAccessibleUnitException,
  });

  LivingAreaAccessibility.fromJson(core.Map json_)
      : this(
          adaCompliantUnit: json_.containsKey('adaCompliantUnit')
              ? json_['adaCompliantUnit'] as core.bool
              : null,
          adaCompliantUnitException:
              json_.containsKey('adaCompliantUnitException')
                  ? json_['adaCompliantUnitException'] as core.String
                  : null,
          hearingAccessibleDoorbell:
              json_.containsKey('hearingAccessibleDoorbell')
                  ? json_['hearingAccessibleDoorbell'] as core.bool
                  : null,
          hearingAccessibleDoorbellException:
              json_.containsKey('hearingAccessibleDoorbellException')
                  ? json_['hearingAccessibleDoorbellException'] as core.String
                  : null,
          hearingAccessibleFireAlarm:
              json_.containsKey('hearingAccessibleFireAlarm')
                  ? json_['hearingAccessibleFireAlarm'] as core.bool
                  : null,
          hearingAccessibleFireAlarmException:
              json_.containsKey('hearingAccessibleFireAlarmException')
                  ? json_['hearingAccessibleFireAlarmException'] as core.String
                  : null,
          hearingAccessibleUnit: json_.containsKey('hearingAccessibleUnit')
              ? json_['hearingAccessibleUnit'] as core.bool
              : null,
          hearingAccessibleUnitException:
              json_.containsKey('hearingAccessibleUnitException')
                  ? json_['hearingAccessibleUnitException'] as core.String
                  : null,
          mobilityAccessibleBathtub:
              json_.containsKey('mobilityAccessibleBathtub')
                  ? json_['mobilityAccessibleBathtub'] as core.bool
                  : null,
          mobilityAccessibleBathtubException:
              json_.containsKey('mobilityAccessibleBathtubException')
                  ? json_['mobilityAccessibleBathtubException'] as core.String
                  : null,
          mobilityAccessibleShower:
              json_.containsKey('mobilityAccessibleShower')
                  ? json_['mobilityAccessibleShower'] as core.bool
                  : null,
          mobilityAccessibleShowerException:
              json_.containsKey('mobilityAccessibleShowerException')
                  ? json_['mobilityAccessibleShowerException'] as core.String
                  : null,
          mobilityAccessibleToilet:
              json_.containsKey('mobilityAccessibleToilet')
                  ? json_['mobilityAccessibleToilet'] as core.bool
                  : null,
          mobilityAccessibleToiletException:
              json_.containsKey('mobilityAccessibleToiletException')
                  ? json_['mobilityAccessibleToiletException'] as core.String
                  : null,
          mobilityAccessibleUnit: json_.containsKey('mobilityAccessibleUnit')
              ? json_['mobilityAccessibleUnit'] as core.bool
              : null,
          mobilityAccessibleUnitException:
              json_.containsKey('mobilityAccessibleUnitException')
                  ? json_['mobilityAccessibleUnitException'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adaCompliantUnit != null) 'adaCompliantUnit': adaCompliantUnit!,
        if (adaCompliantUnitException != null)
          'adaCompliantUnitException': adaCompliantUnitException!,
        if (hearingAccessibleDoorbell != null)
          'hearingAccessibleDoorbell': hearingAccessibleDoorbell!,
        if (hearingAccessibleDoorbellException != null)
          'hearingAccessibleDoorbellException':
              hearingAccessibleDoorbellException!,
        if (hearingAccessibleFireAlarm != null)
          'hearingAccessibleFireAlarm': hearingAccessibleFireAlarm!,
        if (hearingAccessibleFireAlarmException != null)
          'hearingAccessibleFireAlarmException':
              hearingAccessibleFireAlarmException!,
        if (hearingAccessibleUnit != null)
          'hearingAccessibleUnit': hearingAccessibleUnit!,
        if (hearingAccessibleUnitException != null)
          'hearingAccessibleUnitException': hearingAccessibleUnitException!,
        if (mobilityAccessibleBathtub != null)
          'mobilityAccessibleBathtub': mobilityAccessibleBathtub!,
        if (mobilityAccessibleBathtubException != null)
          'mobilityAccessibleBathtubException':
              mobilityAccessibleBathtubException!,
        if (mobilityAccessibleShower != null)
          'mobilityAccessibleShower': mobilityAccessibleShower!,
        if (mobilityAccessibleShowerException != null)
          'mobilityAccessibleShowerException':
              mobilityAccessibleShowerException!,
        if (mobilityAccessibleToilet != null)
          'mobilityAccessibleToilet': mobilityAccessibleToilet!,
        if (mobilityAccessibleToiletException != null)
          'mobilityAccessibleToiletException':
              mobilityAccessibleToiletException!,
        if (mobilityAccessibleUnit != null)
          'mobilityAccessibleUnit': mobilityAccessibleUnit!,
        if (mobilityAccessibleUnitException != null)
          'mobilityAccessibleUnitException': mobilityAccessibleUnitException!,
      };
}

/// Information about eating features in the living area.
class LivingAreaEating {
  /// Coffee maker.
  ///
  /// An electric appliance that brews coffee by heating and forcing water
  /// through ground coffee.
  core.bool? coffeeMaker;

  /// Coffee maker exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? coffeeMakerException;

  /// Cookware.
  ///
  /// Kitchen pots, pans and utensils used in connection with the preparation of
  /// food.
  core.bool? cookware;

  /// Cookware exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? cookwareException;

  /// Dishwasher.
  ///
  /// A counter-height electrical cabinet containing racks for dirty dishware,
  /// cookware and cutlery, and a dispenser for soap built into the pull-down
  /// door. The cabinet is attached to the plumbing system to facilitate the
  /// automatic cleaning of its contents.
  core.bool? dishwasher;

  /// Dishwasher exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? dishwasherException;

  /// Indoor grill.
  ///
  /// Metal grates built into an indoor cooktop on which food is cooked over an
  /// open flame or electric heat source.
  core.bool? indoorGrill;

  /// Indoor grill exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? indoorGrillException;

  /// Kettle.
  ///
  /// A covered container with a handle and a spout used for boiling water.
  core.bool? kettle;

  /// Kettle exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? kettleException;

  /// Kitchen available.
  ///
  /// An area of the guestroom designated for the preparation and storage of
  /// food via the presence of a refrigerator, cook top, oven and sink, as well
  /// as cutlery, dishes and cookware. Usually includes small appliances such a
  /// coffee maker and a microwave. May or may not include an automatic
  /// dishwasher.
  core.bool? kitchenAvailable;

  /// Kitchen available exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? kitchenAvailableException;

  /// Microwave.
  ///
  /// An electric oven that quickly cooks and heats food by microwave energy.
  /// Smaller than a standing or wall mounted oven. Usually placed on a kitchen
  /// counter, a shelf or tabletop or mounted above a cooktop.
  core.bool? microwave;

  /// Microwave exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? microwaveException;

  /// Minibar.
  ///
  /// A small refrigerated cabinet in the guestroom containing bottles/cans of
  /// soft drinks, mini bottles of alcohol, and snacks. The items are most
  /// commonly available for a fee.
  core.bool? minibar;

  /// Minibar exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? minibarException;

  /// Outdoor grill.
  ///
  /// Metal grates on which food is cooked over an open flame or electric heat
  /// source. Part of an outdoor apparatus that supports the grates. Also known
  /// as barbecue grill or barbecue.
  core.bool? outdoorGrill;

  /// Outdoor grill exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? outdoorGrillException;

  /// Oven.
  ///
  /// A temperature controlled, heated metal cabinet powered by gas or
  /// electricity in which food is placed for the purpose of cooking or
  /// reheating.
  core.bool? oven;

  /// Oven exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? ovenException;

  /// Refrigerator.
  ///
  /// A large, climate-controlled electrical cabinet with vertical doors. Built
  /// for the purpose of chilling and storing perishable foods.
  core.bool? refrigerator;

  /// Refrigerator exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? refrigeratorException;

  /// Sink.
  ///
  /// A basin with a faucet attached to a water source and used for the purpose
  /// of washing and rinsing.
  core.bool? sink;

  /// Sink exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? sinkException;

  /// Snackbar.
  ///
  /// A small cabinet in the guestroom containing snacks. The items are most
  /// commonly available for a fee.
  core.bool? snackbar;

  /// Snackbar exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? snackbarException;

  /// Stove.
  ///
  /// A kitchen appliance powered by gas or electricity for the purpose of
  /// creating a flame or hot surface on which pots of food can be cooked. Also
  /// known as cooktop or hob.
  core.bool? stove;

  /// Stove exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? stoveException;

  /// Tea station.
  ///
  /// A small area with the supplies needed to heat water and make tea.
  core.bool? teaStation;

  /// Tea station exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? teaStationException;

  /// Toaster.
  ///
  /// A small, temperature controlled electric appliance with rectangular slots
  /// at the top that are lined with heated coils for the purpose of browning
  /// slices of bread products.
  core.bool? toaster;

  /// Toaster exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? toasterException;

  LivingAreaEating({
    this.coffeeMaker,
    this.coffeeMakerException,
    this.cookware,
    this.cookwareException,
    this.dishwasher,
    this.dishwasherException,
    this.indoorGrill,
    this.indoorGrillException,
    this.kettle,
    this.kettleException,
    this.kitchenAvailable,
    this.kitchenAvailableException,
    this.microwave,
    this.microwaveException,
    this.minibar,
    this.minibarException,
    this.outdoorGrill,
    this.outdoorGrillException,
    this.oven,
    this.ovenException,
    this.refrigerator,
    this.refrigeratorException,
    this.sink,
    this.sinkException,
    this.snackbar,
    this.snackbarException,
    this.stove,
    this.stoveException,
    this.teaStation,
    this.teaStationException,
    this.toaster,
    this.toasterException,
  });

  LivingAreaEating.fromJson(core.Map json_)
      : this(
          coffeeMaker: json_.containsKey('coffeeMaker')
              ? json_['coffeeMaker'] as core.bool
              : null,
          coffeeMakerException: json_.containsKey('coffeeMakerException')
              ? json_['coffeeMakerException'] as core.String
              : null,
          cookware: json_.containsKey('cookware')
              ? json_['cookware'] as core.bool
              : null,
          cookwareException: json_.containsKey('cookwareException')
              ? json_['cookwareException'] as core.String
              : null,
          dishwasher: json_.containsKey('dishwasher')
              ? json_['dishwasher'] as core.bool
              : null,
          dishwasherException: json_.containsKey('dishwasherException')
              ? json_['dishwasherException'] as core.String
              : null,
          indoorGrill: json_.containsKey('indoorGrill')
              ? json_['indoorGrill'] as core.bool
              : null,
          indoorGrillException: json_.containsKey('indoorGrillException')
              ? json_['indoorGrillException'] as core.String
              : null,
          kettle:
              json_.containsKey('kettle') ? json_['kettle'] as core.bool : null,
          kettleException: json_.containsKey('kettleException')
              ? json_['kettleException'] as core.String
              : null,
          kitchenAvailable: json_.containsKey('kitchenAvailable')
              ? json_['kitchenAvailable'] as core.bool
              : null,
          kitchenAvailableException:
              json_.containsKey('kitchenAvailableException')
                  ? json_['kitchenAvailableException'] as core.String
                  : null,
          microwave: json_.containsKey('microwave')
              ? json_['microwave'] as core.bool
              : null,
          microwaveException: json_.containsKey('microwaveException')
              ? json_['microwaveException'] as core.String
              : null,
          minibar: json_.containsKey('minibar')
              ? json_['minibar'] as core.bool
              : null,
          minibarException: json_.containsKey('minibarException')
              ? json_['minibarException'] as core.String
              : null,
          outdoorGrill: json_.containsKey('outdoorGrill')
              ? json_['outdoorGrill'] as core.bool
              : null,
          outdoorGrillException: json_.containsKey('outdoorGrillException')
              ? json_['outdoorGrillException'] as core.String
              : null,
          oven: json_.containsKey('oven') ? json_['oven'] as core.bool : null,
          ovenException: json_.containsKey('ovenException')
              ? json_['ovenException'] as core.String
              : null,
          refrigerator: json_.containsKey('refrigerator')
              ? json_['refrigerator'] as core.bool
              : null,
          refrigeratorException: json_.containsKey('refrigeratorException')
              ? json_['refrigeratorException'] as core.String
              : null,
          sink: json_.containsKey('sink') ? json_['sink'] as core.bool : null,
          sinkException: json_.containsKey('sinkException')
              ? json_['sinkException'] as core.String
              : null,
          snackbar: json_.containsKey('snackbar')
              ? json_['snackbar'] as core.bool
              : null,
          snackbarException: json_.containsKey('snackbarException')
              ? json_['snackbarException'] as core.String
              : null,
          stove:
              json_.containsKey('stove') ? json_['stove'] as core.bool : null,
          stoveException: json_.containsKey('stoveException')
              ? json_['stoveException'] as core.String
              : null,
          teaStation: json_.containsKey('teaStation')
              ? json_['teaStation'] as core.bool
              : null,
          teaStationException: json_.containsKey('teaStationException')
              ? json_['teaStationException'] as core.String
              : null,
          toaster: json_.containsKey('toaster')
              ? json_['toaster'] as core.bool
              : null,
          toasterException: json_.containsKey('toasterException')
              ? json_['toasterException'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (coffeeMaker != null) 'coffeeMaker': coffeeMaker!,
        if (coffeeMakerException != null)
          'coffeeMakerException': coffeeMakerException!,
        if (cookware != null) 'cookware': cookware!,
        if (cookwareException != null) 'cookwareException': cookwareException!,
        if (dishwasher != null) 'dishwasher': dishwasher!,
        if (dishwasherException != null)
          'dishwasherException': dishwasherException!,
        if (indoorGrill != null) 'indoorGrill': indoorGrill!,
        if (indoorGrillException != null)
          'indoorGrillException': indoorGrillException!,
        if (kettle != null) 'kettle': kettle!,
        if (kettleException != null) 'kettleException': kettleException!,
        if (kitchenAvailable != null) 'kitchenAvailable': kitchenAvailable!,
        if (kitchenAvailableException != null)
          'kitchenAvailableException': kitchenAvailableException!,
        if (microwave != null) 'microwave': microwave!,
        if (microwaveException != null)
          'microwaveException': microwaveException!,
        if (minibar != null) 'minibar': minibar!,
        if (minibarException != null) 'minibarException': minibarException!,
        if (outdoorGrill != null) 'outdoorGrill': outdoorGrill!,
        if (outdoorGrillException != null)
          'outdoorGrillException': outdoorGrillException!,
        if (oven != null) 'oven': oven!,
        if (ovenException != null) 'ovenException': ovenException!,
        if (refrigerator != null) 'refrigerator': refrigerator!,
        if (refrigeratorException != null)
          'refrigeratorException': refrigeratorException!,
        if (sink != null) 'sink': sink!,
        if (sinkException != null) 'sinkException': sinkException!,
        if (snackbar != null) 'snackbar': snackbar!,
        if (snackbarException != null) 'snackbarException': snackbarException!,
        if (stove != null) 'stove': stove!,
        if (stoveException != null) 'stoveException': stoveException!,
        if (teaStation != null) 'teaStation': teaStation!,
        if (teaStationException != null)
          'teaStationException': teaStationException!,
        if (toaster != null) 'toaster': toaster!,
        if (toasterException != null) 'toasterException': toasterException!,
      };
}

/// Features in the living area.
class LivingAreaFeatures {
  /// Air conditioning.
  ///
  /// An electrical machine used to cool the temperature of the guestroom.
  core.bool? airConditioning;

  /// Air conditioning exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? airConditioningException;

  /// Bathtub.
  ///
  /// A fixed plumbing feature set on the floor and consisting of a large
  /// container that accommodates the body of an adult for the purpose of seated
  /// bathing. Includes knobs or fixtures to control the temperature of the
  /// water, a faucet through which the water flows, and a drain that can be
  /// closed for filling and opened for draining.
  core.bool? bathtub;

  /// Bathtub exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? bathtubException;

  /// Bidet.
  ///
  /// A plumbing fixture attached to a toilet or a low, fixed sink designed for
  /// the purpose of washing after toilet use.
  core.bool? bidet;

  /// Bidet exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? bidetException;

  /// Dryer.
  ///
  /// An electrical machine designed to dry clothing.
  core.bool? dryer;

  /// Dryer exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? dryerException;

  /// Electronic room key.
  ///
  /// A card coded by the check-in computer that is read by the lock on the
  /// hotel guestroom door to allow for entry.
  core.bool? electronicRoomKey;

  /// Electronic room key exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? electronicRoomKeyException;

  /// Fireplace.
  ///
  /// A framed opening (aka hearth) at the base of a chimney in which logs or an
  /// electrical fire feature are burned to provide a relaxing ambiance or to
  /// heat the room. Often made of bricks or stone.
  core.bool? fireplace;

  /// Fireplace exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? fireplaceException;

  /// Hairdryer.
  ///
  /// A handheld electric appliance that blows temperature-controlled air for
  /// the purpose of drying wet hair. Can be mounted to a bathroom wall or a
  /// freestanding device stored in the guestroom's bathroom or closet.
  core.bool? hairdryer;

  /// Hairdryer exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? hairdryerException;

  /// Heating.
  ///
  /// An electrical machine used to warm the temperature of the guestroom.
  core.bool? heating;

  /// Heating exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? heatingException;

  /// In-unit safe.
  ///
  /// A strong fireproof cabinet with a programmable lock, used for the
  /// protected storage of valuables in a guestroom. Often built into a closet.
  core.bool? inunitSafe;

  /// In-unit safe exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? inunitSafeException;

  /// In-unit Wifi available.
  ///
  /// Guests can wirelessly connect to the Internet in the guestroom. Can be
  /// free or for a fee.
  core.bool? inunitWifiAvailable;

  /// In-unit Wifi available exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? inunitWifiAvailableException;

  /// Ironing equipment.
  ///
  /// A device, usually with a flat metal base, that is heated to smooth,
  /// finish, or press clothes and a flat, padded, cloth-covered surface on
  /// which the clothes are worked.
  core.bool? ironingEquipment;

  /// Ironing equipment exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? ironingEquipmentException;

  /// Pay per view movies.
  ///
  /// Televisions with channels that offer films that can be viewed for a fee,
  /// and have an interface to allow the viewer to accept the terms and approve
  /// payment.
  core.bool? payPerViewMovies;

  /// Pay per view movies exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? payPerViewMoviesException;

  /// Private bathroom.
  ///
  /// A bathroom designated for the express use of the guests staying in a
  /// specific guestroom.
  core.bool? privateBathroom;

  /// Private bathroom exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? privateBathroomException;

  /// Shower.
  ///
  /// A fixed plumbing fixture for standing bathing that features a tall spray
  /// spout or faucet through which water flows, a knob or knobs that control
  /// the water's temperature, and a drain in the floor.
  core.bool? shower;

  /// Shower exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? showerException;

  /// Toilet.
  ///
  /// A fixed bathroom feature connected to a sewer or septic system and
  /// consisting of a water-flushed bowl with a seat, as well as a device that
  /// elicites the water-flushing action. Used for the process and disposal of
  /// human waste.
  core.bool? toilet;

  /// Toilet exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? toiletException;

  /// TV.
  ///
  /// A television is available in the guestroom.
  core.bool? tv;

  /// TV casting.
  ///
  /// A television equipped with a device through which the video entertainment
  /// accessed on a personal computer, phone or tablet can be wirelessly
  /// delivered to and viewed on the guestroom's television.
  core.bool? tvCasting;

  /// TV exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? tvCastingException;

  /// TV exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? tvException;

  /// TV streaming.
  ///
  /// Televisions that embed a range of web-based apps to allow for watching
  /// media from those apps.
  core.bool? tvStreaming;

  /// TV streaming exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? tvStreamingException;

  /// Universal power adapters.
  ///
  /// A power supply for electronic devices which plugs into a wall for the
  /// purpose of converting AC to a single DC voltage. Also know as AC adapter
  /// or charger.
  core.bool? universalPowerAdapters;

  /// Universal power adapters exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? universalPowerAdaptersException;

  /// Washer.
  ///
  /// An electrical machine connected to a running water source designed to
  /// launder clothing.
  core.bool? washer;

  /// Washer exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? washerException;

  LivingAreaFeatures({
    this.airConditioning,
    this.airConditioningException,
    this.bathtub,
    this.bathtubException,
    this.bidet,
    this.bidetException,
    this.dryer,
    this.dryerException,
    this.electronicRoomKey,
    this.electronicRoomKeyException,
    this.fireplace,
    this.fireplaceException,
    this.hairdryer,
    this.hairdryerException,
    this.heating,
    this.heatingException,
    this.inunitSafe,
    this.inunitSafeException,
    this.inunitWifiAvailable,
    this.inunitWifiAvailableException,
    this.ironingEquipment,
    this.ironingEquipmentException,
    this.payPerViewMovies,
    this.payPerViewMoviesException,
    this.privateBathroom,
    this.privateBathroomException,
    this.shower,
    this.showerException,
    this.toilet,
    this.toiletException,
    this.tv,
    this.tvCasting,
    this.tvCastingException,
    this.tvException,
    this.tvStreaming,
    this.tvStreamingException,
    this.universalPowerAdapters,
    this.universalPowerAdaptersException,
    this.washer,
    this.washerException,
  });

  LivingAreaFeatures.fromJson(core.Map json_)
      : this(
          airConditioning: json_.containsKey('airConditioning')
              ? json_['airConditioning'] as core.bool
              : null,
          airConditioningException:
              json_.containsKey('airConditioningException')
                  ? json_['airConditioningException'] as core.String
                  : null,
          bathtub: json_.containsKey('bathtub')
              ? json_['bathtub'] as core.bool
              : null,
          bathtubException: json_.containsKey('bathtubException')
              ? json_['bathtubException'] as core.String
              : null,
          bidet:
              json_.containsKey('bidet') ? json_['bidet'] as core.bool : null,
          bidetException: json_.containsKey('bidetException')
              ? json_['bidetException'] as core.String
              : null,
          dryer:
              json_.containsKey('dryer') ? json_['dryer'] as core.bool : null,
          dryerException: json_.containsKey('dryerException')
              ? json_['dryerException'] as core.String
              : null,
          electronicRoomKey: json_.containsKey('electronicRoomKey')
              ? json_['electronicRoomKey'] as core.bool
              : null,
          electronicRoomKeyException:
              json_.containsKey('electronicRoomKeyException')
                  ? json_['electronicRoomKeyException'] as core.String
                  : null,
          fireplace: json_.containsKey('fireplace')
              ? json_['fireplace'] as core.bool
              : null,
          fireplaceException: json_.containsKey('fireplaceException')
              ? json_['fireplaceException'] as core.String
              : null,
          hairdryer: json_.containsKey('hairdryer')
              ? json_['hairdryer'] as core.bool
              : null,
          hairdryerException: json_.containsKey('hairdryerException')
              ? json_['hairdryerException'] as core.String
              : null,
          heating: json_.containsKey('heating')
              ? json_['heating'] as core.bool
              : null,
          heatingException: json_.containsKey('heatingException')
              ? json_['heatingException'] as core.String
              : null,
          inunitSafe: json_.containsKey('inunitSafe')
              ? json_['inunitSafe'] as core.bool
              : null,
          inunitSafeException: json_.containsKey('inunitSafeException')
              ? json_['inunitSafeException'] as core.String
              : null,
          inunitWifiAvailable: json_.containsKey('inunitWifiAvailable')
              ? json_['inunitWifiAvailable'] as core.bool
              : null,
          inunitWifiAvailableException:
              json_.containsKey('inunitWifiAvailableException')
                  ? json_['inunitWifiAvailableException'] as core.String
                  : null,
          ironingEquipment: json_.containsKey('ironingEquipment')
              ? json_['ironingEquipment'] as core.bool
              : null,
          ironingEquipmentException:
              json_.containsKey('ironingEquipmentException')
                  ? json_['ironingEquipmentException'] as core.String
                  : null,
          payPerViewMovies: json_.containsKey('payPerViewMovies')
              ? json_['payPerViewMovies'] as core.bool
              : null,
          payPerViewMoviesException:
              json_.containsKey('payPerViewMoviesException')
                  ? json_['payPerViewMoviesException'] as core.String
                  : null,
          privateBathroom: json_.containsKey('privateBathroom')
              ? json_['privateBathroom'] as core.bool
              : null,
          privateBathroomException:
              json_.containsKey('privateBathroomException')
                  ? json_['privateBathroomException'] as core.String
                  : null,
          shower:
              json_.containsKey('shower') ? json_['shower'] as core.bool : null,
          showerException: json_.containsKey('showerException')
              ? json_['showerException'] as core.String
              : null,
          toilet:
              json_.containsKey('toilet') ? json_['toilet'] as core.bool : null,
          toiletException: json_.containsKey('toiletException')
              ? json_['toiletException'] as core.String
              : null,
          tv: json_.containsKey('tv') ? json_['tv'] as core.bool : null,
          tvCasting: json_.containsKey('tvCasting')
              ? json_['tvCasting'] as core.bool
              : null,
          tvCastingException: json_.containsKey('tvCastingException')
              ? json_['tvCastingException'] as core.String
              : null,
          tvException: json_.containsKey('tvException')
              ? json_['tvException'] as core.String
              : null,
          tvStreaming: json_.containsKey('tvStreaming')
              ? json_['tvStreaming'] as core.bool
              : null,
          tvStreamingException: json_.containsKey('tvStreamingException')
              ? json_['tvStreamingException'] as core.String
              : null,
          universalPowerAdapters: json_.containsKey('universalPowerAdapters')
              ? json_['universalPowerAdapters'] as core.bool
              : null,
          universalPowerAdaptersException:
              json_.containsKey('universalPowerAdaptersException')
                  ? json_['universalPowerAdaptersException'] as core.String
                  : null,
          washer:
              json_.containsKey('washer') ? json_['washer'] as core.bool : null,
          washerException: json_.containsKey('washerException')
              ? json_['washerException'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (airConditioning != null) 'airConditioning': airConditioning!,
        if (airConditioningException != null)
          'airConditioningException': airConditioningException!,
        if (bathtub != null) 'bathtub': bathtub!,
        if (bathtubException != null) 'bathtubException': bathtubException!,
        if (bidet != null) 'bidet': bidet!,
        if (bidetException != null) 'bidetException': bidetException!,
        if (dryer != null) 'dryer': dryer!,
        if (dryerException != null) 'dryerException': dryerException!,
        if (electronicRoomKey != null) 'electronicRoomKey': electronicRoomKey!,
        if (electronicRoomKeyException != null)
          'electronicRoomKeyException': electronicRoomKeyException!,
        if (fireplace != null) 'fireplace': fireplace!,
        if (fireplaceException != null)
          'fireplaceException': fireplaceException!,
        if (hairdryer != null) 'hairdryer': hairdryer!,
        if (hairdryerException != null)
          'hairdryerException': hairdryerException!,
        if (heating != null) 'heating': heating!,
        if (heatingException != null) 'heatingException': heatingException!,
        if (inunitSafe != null) 'inunitSafe': inunitSafe!,
        if (inunitSafeException != null)
          'inunitSafeException': inunitSafeException!,
        if (inunitWifiAvailable != null)
          'inunitWifiAvailable': inunitWifiAvailable!,
        if (inunitWifiAvailableException != null)
          'inunitWifiAvailableException': inunitWifiAvailableException!,
        if (ironingEquipment != null) 'ironingEquipment': ironingEquipment!,
        if (ironingEquipmentException != null)
          'ironingEquipmentException': ironingEquipmentException!,
        if (payPerViewMovies != null) 'payPerViewMovies': payPerViewMovies!,
        if (payPerViewMoviesException != null)
          'payPerViewMoviesException': payPerViewMoviesException!,
        if (privateBathroom != null) 'privateBathroom': privateBathroom!,
        if (privateBathroomException != null)
          'privateBathroomException': privateBathroomException!,
        if (shower != null) 'shower': shower!,
        if (showerException != null) 'showerException': showerException!,
        if (toilet != null) 'toilet': toilet!,
        if (toiletException != null) 'toiletException': toiletException!,
        if (tv != null) 'tv': tv!,
        if (tvCasting != null) 'tvCasting': tvCasting!,
        if (tvCastingException != null)
          'tvCastingException': tvCastingException!,
        if (tvException != null) 'tvException': tvException!,
        if (tvStreaming != null) 'tvStreaming': tvStreaming!,
        if (tvStreamingException != null)
          'tvStreamingException': tvStreamingException!,
        if (universalPowerAdapters != null)
          'universalPowerAdapters': universalPowerAdapters!,
        if (universalPowerAdaptersException != null)
          'universalPowerAdaptersException': universalPowerAdaptersException!,
        if (washer != null) 'washer': washer!,
        if (washerException != null) 'washerException': washerException!,
      };
}

/// Information about the layout of the living area.
class LivingAreaLayout {
  /// Balcony.
  ///
  /// An outdoor platform attached to a building and surrounded by a short wall,
  /// fence or other safety railing. The balcony is accessed through a door in a
  /// guestroom or suite and is for use by the guest staying in that room. May
  /// or may not include seating or outdoor furniture. Is not located on the
  /// ground floor. Also lanai.
  core.bool? balcony;

  /// Balcony exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? balconyException;

  /// Living area sq meters.
  ///
  /// The measurement in meters of the area of a guestroom's living space.
  core.double? livingAreaSqMeters;

  /// Living area sq meters exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? livingAreaSqMetersException;

  /// Loft.
  ///
  /// A three-walled upper area accessed by stairs or a ladder that overlooks
  /// the lower area of a room.
  core.bool? loft;

  /// Loft exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? loftException;

  /// Non smoking.
  ///
  /// A guestroom in which the smoking of cigarettes, cigars and pipes is
  /// prohibited.
  core.bool? nonSmoking;

  /// Non smoking exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? nonSmokingException;

  /// Patio.
  ///
  /// A paved, outdoor area with seating attached to and accessed through a
  /// ground-floor guestroom for use by the occupants of the guestroom.
  core.bool? patio;

  /// Patio exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? patioException;

  /// Stairs.
  ///
  /// There are steps leading from one level or story to another in the unit.
  core.bool? stairs;

  /// Stairs exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? stairsException;

  LivingAreaLayout({
    this.balcony,
    this.balconyException,
    this.livingAreaSqMeters,
    this.livingAreaSqMetersException,
    this.loft,
    this.loftException,
    this.nonSmoking,
    this.nonSmokingException,
    this.patio,
    this.patioException,
    this.stairs,
    this.stairsException,
  });

  LivingAreaLayout.fromJson(core.Map json_)
      : this(
          balcony: json_.containsKey('balcony')
              ? json_['balcony'] as core.bool
              : null,
          balconyException: json_.containsKey('balconyException')
              ? json_['balconyException'] as core.String
              : null,
          livingAreaSqMeters: json_.containsKey('livingAreaSqMeters')
              ? (json_['livingAreaSqMeters'] as core.num).toDouble()
              : null,
          livingAreaSqMetersException:
              json_.containsKey('livingAreaSqMetersException')
                  ? json_['livingAreaSqMetersException'] as core.String
                  : null,
          loft: json_.containsKey('loft') ? json_['loft'] as core.bool : null,
          loftException: json_.containsKey('loftException')
              ? json_['loftException'] as core.String
              : null,
          nonSmoking: json_.containsKey('nonSmoking')
              ? json_['nonSmoking'] as core.bool
              : null,
          nonSmokingException: json_.containsKey('nonSmokingException')
              ? json_['nonSmokingException'] as core.String
              : null,
          patio:
              json_.containsKey('patio') ? json_['patio'] as core.bool : null,
          patioException: json_.containsKey('patioException')
              ? json_['patioException'] as core.String
              : null,
          stairs:
              json_.containsKey('stairs') ? json_['stairs'] as core.bool : null,
          stairsException: json_.containsKey('stairsException')
              ? json_['stairsException'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (balcony != null) 'balcony': balcony!,
        if (balconyException != null) 'balconyException': balconyException!,
        if (livingAreaSqMeters != null)
          'livingAreaSqMeters': livingAreaSqMeters!,
        if (livingAreaSqMetersException != null)
          'livingAreaSqMetersException': livingAreaSqMetersException!,
        if (loft != null) 'loft': loft!,
        if (loftException != null) 'loftException': loftException!,
        if (nonSmoking != null) 'nonSmoking': nonSmoking!,
        if (nonSmokingException != null)
          'nonSmokingException': nonSmokingException!,
        if (patio != null) 'patio': patio!,
        if (patioException != null) 'patioException': patioException!,
        if (stairs != null) 'stairs': stairs!,
        if (stairsException != null) 'stairsException': stairsException!,
      };
}

/// Information about sleeping features in the living area.
class LivingAreaSleeping {
  /// Beds count.
  ///
  /// The number of permanent beds present in a guestroom. Does not include
  /// rollaway beds, cribs or sofabeds.
  core.int? bedsCount;

  /// Beds count exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? bedsCountException;

  /// Bunk beds count.
  ///
  /// The number of furniture pieces in which one framed mattress is fixed
  /// directly above another by means of a physical frame. This allows one
  /// person(s) to sleep in the bottom bunk and one person(s) to sleep in the
  /// top bunk. Also known as double decker bed.
  core.int? bunkBedsCount;

  /// Bunk beds count exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? bunkBedsCountException;

  /// Cribs count.
  ///
  /// The number of small beds for an infant or toddler that the guestroom can
  /// obtain. The bed is surrounded by a high railing to prevent the child from
  /// falling or climbing out of the bed
  core.int? cribsCount;

  /// Cribs count exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? cribsCountException;

  /// Double beds count.
  ///
  /// The number of medium beds measuring 53"W x 75"L (135cm x 191cm). Also
  /// known as full size bed.
  core.int? doubleBedsCount;

  /// Double beds count exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? doubleBedsCountException;

  /// Feather pillows.
  ///
  /// The option for guests to obtain bed pillows that are stuffed with the
  /// feathers and down of ducks or geese.
  core.bool? featherPillows;

  /// Feather pillows exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? featherPillowsException;

  /// Hypoallergenic bedding.
  ///
  /// Bedding such as linens, pillows, mattress covers and/or mattresses that
  /// are made of materials known to be resistant to allergens such as mold,
  /// dust and dander.
  core.bool? hypoallergenicBedding;

  /// Hypoallergenic bedding exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? hypoallergenicBeddingException;

  /// King beds count.
  ///
  /// The number of large beds measuring 76"W x 80"L (193cm x 102cm). Most often
  /// meant to accompany two people. Includes California king and super king.
  core.int? kingBedsCount;

  /// King beds count exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? kingBedsCountException;

  /// Memory foam pillows.
  ///
  /// The option for guests to obtain bed pillows that are stuffed with a
  /// man-made foam that responds to body heat by conforming to the body
  /// closely, and then recovers its shape when the pillow cools down.
  core.bool? memoryFoamPillows;

  /// Memory foam pillows exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? memoryFoamPillowsException;

  /// Other beds count.
  ///
  /// The number of beds that are not standard mattress and boxspring setups
  /// such as Japanese tatami mats, trundle beds, air mattresses and cots.
  core.int? otherBedsCount;

  /// Other beds count exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? otherBedsCountException;

  /// Queen beds count.
  ///
  /// The number of medium-large beds measuring 60"W x 80"L (152cm x 102cm).
  core.int? queenBedsCount;

  /// Queen beds count exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? queenBedsCountException;

  /// Roll away beds count.
  ///
  /// The number of mattresses on wheeled frames that can be folded in half and
  /// rolled away for easy storage that the guestroom can obtain upon request.
  core.int? rollAwayBedsCount;

  /// Roll away beds count exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? rollAwayBedsCountException;

  /// Single or twin count beds.
  ///
  /// The number of smaller beds measuring 38"W x 75"L (97cm x 191cm) that can
  /// accommodate one adult.
  core.int? singleOrTwinBedsCount;

  /// Single or twin beds count exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? singleOrTwinBedsCountException;

  /// Sofa beds count.
  ///
  /// The number of specially designed sofas that can be made to serve as a bed
  /// by lowering its hinged upholstered back to horizontal position or by
  /// pulling out a concealed mattress.
  core.int? sofaBedsCount;

  /// Sofa beds count exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? sofaBedsCountException;

  /// Synthetic pillows.
  ///
  /// The option for guests to obtain bed pillows stuffed with polyester
  /// material crafted to reproduce the feel of a pillow stuffed with down and
  /// feathers.
  core.bool? syntheticPillows;

  /// Synthetic pillows exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? syntheticPillowsException;

  LivingAreaSleeping({
    this.bedsCount,
    this.bedsCountException,
    this.bunkBedsCount,
    this.bunkBedsCountException,
    this.cribsCount,
    this.cribsCountException,
    this.doubleBedsCount,
    this.doubleBedsCountException,
    this.featherPillows,
    this.featherPillowsException,
    this.hypoallergenicBedding,
    this.hypoallergenicBeddingException,
    this.kingBedsCount,
    this.kingBedsCountException,
    this.memoryFoamPillows,
    this.memoryFoamPillowsException,
    this.otherBedsCount,
    this.otherBedsCountException,
    this.queenBedsCount,
    this.queenBedsCountException,
    this.rollAwayBedsCount,
    this.rollAwayBedsCountException,
    this.singleOrTwinBedsCount,
    this.singleOrTwinBedsCountException,
    this.sofaBedsCount,
    this.sofaBedsCountException,
    this.syntheticPillows,
    this.syntheticPillowsException,
  });

  LivingAreaSleeping.fromJson(core.Map json_)
      : this(
          bedsCount: json_.containsKey('bedsCount')
              ? json_['bedsCount'] as core.int
              : null,
          bedsCountException: json_.containsKey('bedsCountException')
              ? json_['bedsCountException'] as core.String
              : null,
          bunkBedsCount: json_.containsKey('bunkBedsCount')
              ? json_['bunkBedsCount'] as core.int
              : null,
          bunkBedsCountException: json_.containsKey('bunkBedsCountException')
              ? json_['bunkBedsCountException'] as core.String
              : null,
          cribsCount: json_.containsKey('cribsCount')
              ? json_['cribsCount'] as core.int
              : null,
          cribsCountException: json_.containsKey('cribsCountException')
              ? json_['cribsCountException'] as core.String
              : null,
          doubleBedsCount: json_.containsKey('doubleBedsCount')
              ? json_['doubleBedsCount'] as core.int
              : null,
          doubleBedsCountException:
              json_.containsKey('doubleBedsCountException')
                  ? json_['doubleBedsCountException'] as core.String
                  : null,
          featherPillows: json_.containsKey('featherPillows')
              ? json_['featherPillows'] as core.bool
              : null,
          featherPillowsException: json_.containsKey('featherPillowsException')
              ? json_['featherPillowsException'] as core.String
              : null,
          hypoallergenicBedding: json_.containsKey('hypoallergenicBedding')
              ? json_['hypoallergenicBedding'] as core.bool
              : null,
          hypoallergenicBeddingException:
              json_.containsKey('hypoallergenicBeddingException')
                  ? json_['hypoallergenicBeddingException'] as core.String
                  : null,
          kingBedsCount: json_.containsKey('kingBedsCount')
              ? json_['kingBedsCount'] as core.int
              : null,
          kingBedsCountException: json_.containsKey('kingBedsCountException')
              ? json_['kingBedsCountException'] as core.String
              : null,
          memoryFoamPillows: json_.containsKey('memoryFoamPillows')
              ? json_['memoryFoamPillows'] as core.bool
              : null,
          memoryFoamPillowsException:
              json_.containsKey('memoryFoamPillowsException')
                  ? json_['memoryFoamPillowsException'] as core.String
                  : null,
          otherBedsCount: json_.containsKey('otherBedsCount')
              ? json_['otherBedsCount'] as core.int
              : null,
          otherBedsCountException: json_.containsKey('otherBedsCountException')
              ? json_['otherBedsCountException'] as core.String
              : null,
          queenBedsCount: json_.containsKey('queenBedsCount')
              ? json_['queenBedsCount'] as core.int
              : null,
          queenBedsCountException: json_.containsKey('queenBedsCountException')
              ? json_['queenBedsCountException'] as core.String
              : null,
          rollAwayBedsCount: json_.containsKey('rollAwayBedsCount')
              ? json_['rollAwayBedsCount'] as core.int
              : null,
          rollAwayBedsCountException:
              json_.containsKey('rollAwayBedsCountException')
                  ? json_['rollAwayBedsCountException'] as core.String
                  : null,
          singleOrTwinBedsCount: json_.containsKey('singleOrTwinBedsCount')
              ? json_['singleOrTwinBedsCount'] as core.int
              : null,
          singleOrTwinBedsCountException:
              json_.containsKey('singleOrTwinBedsCountException')
                  ? json_['singleOrTwinBedsCountException'] as core.String
                  : null,
          sofaBedsCount: json_.containsKey('sofaBedsCount')
              ? json_['sofaBedsCount'] as core.int
              : null,
          sofaBedsCountException: json_.containsKey('sofaBedsCountException')
              ? json_['sofaBedsCountException'] as core.String
              : null,
          syntheticPillows: json_.containsKey('syntheticPillows')
              ? json_['syntheticPillows'] as core.bool
              : null,
          syntheticPillowsException:
              json_.containsKey('syntheticPillowsException')
                  ? json_['syntheticPillowsException'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bedsCount != null) 'bedsCount': bedsCount!,
        if (bedsCountException != null)
          'bedsCountException': bedsCountException!,
        if (bunkBedsCount != null) 'bunkBedsCount': bunkBedsCount!,
        if (bunkBedsCountException != null)
          'bunkBedsCountException': bunkBedsCountException!,
        if (cribsCount != null) 'cribsCount': cribsCount!,
        if (cribsCountException != null)
          'cribsCountException': cribsCountException!,
        if (doubleBedsCount != null) 'doubleBedsCount': doubleBedsCount!,
        if (doubleBedsCountException != null)
          'doubleBedsCountException': doubleBedsCountException!,
        if (featherPillows != null) 'featherPillows': featherPillows!,
        if (featherPillowsException != null)
          'featherPillowsException': featherPillowsException!,
        if (hypoallergenicBedding != null)
          'hypoallergenicBedding': hypoallergenicBedding!,
        if (hypoallergenicBeddingException != null)
          'hypoallergenicBeddingException': hypoallergenicBeddingException!,
        if (kingBedsCount != null) 'kingBedsCount': kingBedsCount!,
        if (kingBedsCountException != null)
          'kingBedsCountException': kingBedsCountException!,
        if (memoryFoamPillows != null) 'memoryFoamPillows': memoryFoamPillows!,
        if (memoryFoamPillowsException != null)
          'memoryFoamPillowsException': memoryFoamPillowsException!,
        if (otherBedsCount != null) 'otherBedsCount': otherBedsCount!,
        if (otherBedsCountException != null)
          'otherBedsCountException': otherBedsCountException!,
        if (queenBedsCount != null) 'queenBedsCount': queenBedsCount!,
        if (queenBedsCountException != null)
          'queenBedsCountException': queenBedsCountException!,
        if (rollAwayBedsCount != null) 'rollAwayBedsCount': rollAwayBedsCount!,
        if (rollAwayBedsCountException != null)
          'rollAwayBedsCountException': rollAwayBedsCountException!,
        if (singleOrTwinBedsCount != null)
          'singleOrTwinBedsCount': singleOrTwinBedsCount!,
        if (singleOrTwinBedsCountException != null)
          'singleOrTwinBedsCountException': singleOrTwinBedsCountException!,
        if (sofaBedsCount != null) 'sofaBedsCount': sofaBedsCount!,
        if (sofaBedsCountException != null)
          'sofaBedsCountException': sofaBedsCountException!,
        if (syntheticPillows != null) 'syntheticPillows': syntheticPillows!,
        if (syntheticPillowsException != null)
          'syntheticPillowsException': syntheticPillowsException!,
      };
}

/// Lodging of a location that provides accomodations.
class Lodging {
  /// Physical adaptations made to the property in consideration of varying
  /// levels of human physical ability.
  Accessibility? accessibility;

  /// Amenities and features related to leisure and play.
  Activities? activities;

  /// All units on the property have at least these attributes.
  ///
  /// Output only.
  GuestUnitFeatures? allUnits;

  /// Features of the property of specific interest to the business traveler.
  Business? business;

  /// Features of the shared living areas available in this Lodging.
  LivingArea? commonLivingArea;

  /// The ways in which the property provides guests with the ability to access
  /// the internet.
  Connectivity? connectivity;

  /// Services and amenities for families and young guests.
  Families? families;

  /// Meals, snacks, and beverages available at the property.
  FoodAndDrink? foodAndDrink;

  /// Individual GuestUnitTypes that are available in this Lodging.
  core.List<GuestUnitType>? guestUnits;

  /// Health and safety measures implemented by the hotel during COVID-19.
  HealthAndSafety? healthAndSafety;

  /// Conveniences provided in guest units to facilitate an easier, more
  /// comfortable stay.
  Housekeeping? housekeeping;

  /// Metadata for the lodging.
  ///
  /// Required.
  LodgingMetadata? metadata;

  /// Google identifier for this location in the form:
  /// `locations/{location_id}/lodging`
  ///
  /// Required.
  core.String? name;

  /// Parking options at the property.
  Parking? parking;

  /// Policies regarding guest-owned animals.
  Pets? pets;

  /// Property rules that impact guests.
  Policies? policies;

  /// Swimming pool or recreational water facilities available at the hotel.
  Pools? pools;

  /// General factual information about the property's physical structure and
  /// important dates.
  Property? property;

  /// Conveniences or help provided by the property to facilitate an easier,
  /// more comfortable stay.
  Services? services;

  /// Some units on the property have as much as these attributes.
  ///
  /// Output only.
  GuestUnitFeatures? someUnits;

  /// Sustainability practices implemented at the hotel.
  Sustainability? sustainability;

  /// Vehicles or vehicular services facilitated or owned by the property.
  Transportation? transportation;

  /// Guest facilities at the property to promote or maintain health, beauty,
  /// and fitness.
  Wellness? wellness;

  Lodging({
    this.accessibility,
    this.activities,
    this.allUnits,
    this.business,
    this.commonLivingArea,
    this.connectivity,
    this.families,
    this.foodAndDrink,
    this.guestUnits,
    this.healthAndSafety,
    this.housekeeping,
    this.metadata,
    this.name,
    this.parking,
    this.pets,
    this.policies,
    this.pools,
    this.property,
    this.services,
    this.someUnits,
    this.sustainability,
    this.transportation,
    this.wellness,
  });

  Lodging.fromJson(core.Map json_)
      : this(
          accessibility: json_.containsKey('accessibility')
              ? Accessibility.fromJson(
                  json_['accessibility'] as core.Map<core.String, core.dynamic>)
              : null,
          activities: json_.containsKey('activities')
              ? Activities.fromJson(
                  json_['activities'] as core.Map<core.String, core.dynamic>)
              : null,
          allUnits: json_.containsKey('allUnits')
              ? GuestUnitFeatures.fromJson(
                  json_['allUnits'] as core.Map<core.String, core.dynamic>)
              : null,
          business: json_.containsKey('business')
              ? Business.fromJson(
                  json_['business'] as core.Map<core.String, core.dynamic>)
              : null,
          commonLivingArea: json_.containsKey('commonLivingArea')
              ? LivingArea.fromJson(json_['commonLivingArea']
                  as core.Map<core.String, core.dynamic>)
              : null,
          connectivity: json_.containsKey('connectivity')
              ? Connectivity.fromJson(
                  json_['connectivity'] as core.Map<core.String, core.dynamic>)
              : null,
          families: json_.containsKey('families')
              ? Families.fromJson(
                  json_['families'] as core.Map<core.String, core.dynamic>)
              : null,
          foodAndDrink: json_.containsKey('foodAndDrink')
              ? FoodAndDrink.fromJson(
                  json_['foodAndDrink'] as core.Map<core.String, core.dynamic>)
              : null,
          guestUnits: json_.containsKey('guestUnits')
              ? (json_['guestUnits'] as core.List)
                  .map((value) => GuestUnitType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          healthAndSafety: json_.containsKey('healthAndSafety')
              ? HealthAndSafety.fromJson(json_['healthAndSafety']
                  as core.Map<core.String, core.dynamic>)
              : null,
          housekeeping: json_.containsKey('housekeeping')
              ? Housekeeping.fromJson(
                  json_['housekeeping'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? LodgingMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parking: json_.containsKey('parking')
              ? Parking.fromJson(
                  json_['parking'] as core.Map<core.String, core.dynamic>)
              : null,
          pets: json_.containsKey('pets')
              ? Pets.fromJson(
                  json_['pets'] as core.Map<core.String, core.dynamic>)
              : null,
          policies: json_.containsKey('policies')
              ? Policies.fromJson(
                  json_['policies'] as core.Map<core.String, core.dynamic>)
              : null,
          pools: json_.containsKey('pools')
              ? Pools.fromJson(
                  json_['pools'] as core.Map<core.String, core.dynamic>)
              : null,
          property: json_.containsKey('property')
              ? Property.fromJson(
                  json_['property'] as core.Map<core.String, core.dynamic>)
              : null,
          services: json_.containsKey('services')
              ? Services.fromJson(
                  json_['services'] as core.Map<core.String, core.dynamic>)
              : null,
          someUnits: json_.containsKey('someUnits')
              ? GuestUnitFeatures.fromJson(
                  json_['someUnits'] as core.Map<core.String, core.dynamic>)
              : null,
          sustainability: json_.containsKey('sustainability')
              ? Sustainability.fromJson(json_['sustainability']
                  as core.Map<core.String, core.dynamic>)
              : null,
          transportation: json_.containsKey('transportation')
              ? Transportation.fromJson(json_['transportation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          wellness: json_.containsKey('wellness')
              ? Wellness.fromJson(
                  json_['wellness'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessibility != null) 'accessibility': accessibility!,
        if (activities != null) 'activities': activities!,
        if (allUnits != null) 'allUnits': allUnits!,
        if (business != null) 'business': business!,
        if (commonLivingArea != null) 'commonLivingArea': commonLivingArea!,
        if (connectivity != null) 'connectivity': connectivity!,
        if (families != null) 'families': families!,
        if (foodAndDrink != null) 'foodAndDrink': foodAndDrink!,
        if (guestUnits != null) 'guestUnits': guestUnits!,
        if (healthAndSafety != null) 'healthAndSafety': healthAndSafety!,
        if (housekeeping != null) 'housekeeping': housekeeping!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (parking != null) 'parking': parking!,
        if (pets != null) 'pets': pets!,
        if (policies != null) 'policies': policies!,
        if (pools != null) 'pools': pools!,
        if (property != null) 'property': property!,
        if (services != null) 'services': services!,
        if (someUnits != null) 'someUnits': someUnits!,
        if (sustainability != null) 'sustainability': sustainability!,
        if (transportation != null) 'transportation': transportation!,
        if (wellness != null) 'wellness': wellness!,
      };
}

/// Metadata for the Lodging.
class LodgingMetadata {
  /// The latest time at which the Lodging data is asserted to be true in the
  /// real world.
  ///
  /// This is not necessarily the time at which the request is made.
  ///
  /// Required.
  core.String? updateTime;

  LodgingMetadata({
    this.updateTime,
  });

  LodgingMetadata.fromJson(core.Map json_)
      : this(
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Minimized contact measures implemented by the hotel during COVID-19.
class MinimizedContact {
  /// No-contact check-in and check-out.
  core.bool? contactlessCheckinCheckout;

  /// Contactless check-in check-out exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? contactlessCheckinCheckoutException;

  /// Keyless mobile entry to guest rooms.
  core.bool? digitalGuestRoomKeys;

  /// Digital guest room keys exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? digitalGuestRoomKeysException;

  /// Housekeeping scheduled by request only.
  core.bool? housekeepingScheduledRequestOnly;

  /// Housekeeping scheduled request only exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? housekeepingScheduledRequestOnlyException;

  /// High-touch items, such as magazines, removed from common areas.
  core.bool? noHighTouchItemsCommonAreas;

  /// No high touch items common areas exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? noHighTouchItemsCommonAreasException;

  /// High-touch items, such as decorative pillows, removed from guest rooms.
  core.bool? noHighTouchItemsGuestRooms;

  /// No high touch items guest rooms exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? noHighTouchItemsGuestRoomsException;

  /// Plastic key cards are disinfected or discarded.
  core.bool? plasticKeycardsDisinfected;

  /// Plastic keycards disinfected exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? plasticKeycardsDisinfectedException;

  /// Buffer maintained between room bookings.
  core.bool? roomBookingsBuffer;

  /// Room bookings buffer exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? roomBookingsBufferException;

  MinimizedContact({
    this.contactlessCheckinCheckout,
    this.contactlessCheckinCheckoutException,
    this.digitalGuestRoomKeys,
    this.digitalGuestRoomKeysException,
    this.housekeepingScheduledRequestOnly,
    this.housekeepingScheduledRequestOnlyException,
    this.noHighTouchItemsCommonAreas,
    this.noHighTouchItemsCommonAreasException,
    this.noHighTouchItemsGuestRooms,
    this.noHighTouchItemsGuestRoomsException,
    this.plasticKeycardsDisinfected,
    this.plasticKeycardsDisinfectedException,
    this.roomBookingsBuffer,
    this.roomBookingsBufferException,
  });

  MinimizedContact.fromJson(core.Map json_)
      : this(
          contactlessCheckinCheckout:
              json_.containsKey('contactlessCheckinCheckout')
                  ? json_['contactlessCheckinCheckout'] as core.bool
                  : null,
          contactlessCheckinCheckoutException:
              json_.containsKey('contactlessCheckinCheckoutException')
                  ? json_['contactlessCheckinCheckoutException'] as core.String
                  : null,
          digitalGuestRoomKeys: json_.containsKey('digitalGuestRoomKeys')
              ? json_['digitalGuestRoomKeys'] as core.bool
              : null,
          digitalGuestRoomKeysException:
              json_.containsKey('digitalGuestRoomKeysException')
                  ? json_['digitalGuestRoomKeysException'] as core.String
                  : null,
          housekeepingScheduledRequestOnly:
              json_.containsKey('housekeepingScheduledRequestOnly')
                  ? json_['housekeepingScheduledRequestOnly'] as core.bool
                  : null,
          housekeepingScheduledRequestOnlyException:
              json_.containsKey('housekeepingScheduledRequestOnlyException')
                  ? json_['housekeepingScheduledRequestOnlyException']
                      as core.String
                  : null,
          noHighTouchItemsCommonAreas:
              json_.containsKey('noHighTouchItemsCommonAreas')
                  ? json_['noHighTouchItemsCommonAreas'] as core.bool
                  : null,
          noHighTouchItemsCommonAreasException:
              json_.containsKey('noHighTouchItemsCommonAreasException')
                  ? json_['noHighTouchItemsCommonAreasException'] as core.String
                  : null,
          noHighTouchItemsGuestRooms:
              json_.containsKey('noHighTouchItemsGuestRooms')
                  ? json_['noHighTouchItemsGuestRooms'] as core.bool
                  : null,
          noHighTouchItemsGuestRoomsException:
              json_.containsKey('noHighTouchItemsGuestRoomsException')
                  ? json_['noHighTouchItemsGuestRoomsException'] as core.String
                  : null,
          plasticKeycardsDisinfected:
              json_.containsKey('plasticKeycardsDisinfected')
                  ? json_['plasticKeycardsDisinfected'] as core.bool
                  : null,
          plasticKeycardsDisinfectedException:
              json_.containsKey('plasticKeycardsDisinfectedException')
                  ? json_['plasticKeycardsDisinfectedException'] as core.String
                  : null,
          roomBookingsBuffer: json_.containsKey('roomBookingsBuffer')
              ? json_['roomBookingsBuffer'] as core.bool
              : null,
          roomBookingsBufferException:
              json_.containsKey('roomBookingsBufferException')
                  ? json_['roomBookingsBufferException'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contactlessCheckinCheckout != null)
          'contactlessCheckinCheckout': contactlessCheckinCheckout!,
        if (contactlessCheckinCheckoutException != null)
          'contactlessCheckinCheckoutException':
              contactlessCheckinCheckoutException!,
        if (digitalGuestRoomKeys != null)
          'digitalGuestRoomKeys': digitalGuestRoomKeys!,
        if (digitalGuestRoomKeysException != null)
          'digitalGuestRoomKeysException': digitalGuestRoomKeysException!,
        if (housekeepingScheduledRequestOnly != null)
          'housekeepingScheduledRequestOnly': housekeepingScheduledRequestOnly!,
        if (housekeepingScheduledRequestOnlyException != null)
          'housekeepingScheduledRequestOnlyException':
              housekeepingScheduledRequestOnlyException!,
        if (noHighTouchItemsCommonAreas != null)
          'noHighTouchItemsCommonAreas': noHighTouchItemsCommonAreas!,
        if (noHighTouchItemsCommonAreasException != null)
          'noHighTouchItemsCommonAreasException':
              noHighTouchItemsCommonAreasException!,
        if (noHighTouchItemsGuestRooms != null)
          'noHighTouchItemsGuestRooms': noHighTouchItemsGuestRooms!,
        if (noHighTouchItemsGuestRoomsException != null)
          'noHighTouchItemsGuestRoomsException':
              noHighTouchItemsGuestRoomsException!,
        if (plasticKeycardsDisinfected != null)
          'plasticKeycardsDisinfected': plasticKeycardsDisinfected!,
        if (plasticKeycardsDisinfectedException != null)
          'plasticKeycardsDisinfectedException':
              plasticKeycardsDisinfectedException!,
        if (roomBookingsBuffer != null)
          'roomBookingsBuffer': roomBookingsBuffer!,
        if (roomBookingsBufferException != null)
          'roomBookingsBufferException': roomBookingsBufferException!,
      };
}

/// Parking options at the property.
class Parking {
  /// Electric car charging stations.
  ///
  /// Electric power stations, usually located outdoors, into which guests plug
  /// their electric cars to receive a charge.
  core.bool? electricCarChargingStations;

  /// Electric car charging stations exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? electricCarChargingStationsException;

  /// Free parking.
  ///
  /// The hotel allows the cars of guests to be parked for free. Parking
  /// facility may be an outdoor lot or an indoor garage, but must be onsite.
  /// Nearby parking does not apply. Parking may be performed by the guest or by
  /// hotel staff. Free parking must be available to all guests (limited
  /// conditions does not apply).
  core.bool? freeParking;

  /// Free parking exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? freeParkingException;

  /// Free self parking.
  ///
  /// Guests park their own cars for free. Parking facility may be an outdoor
  /// lot or an indoor garage, but must be onsite. Nearby parking does not
  /// apply.
  core.bool? freeSelfParking;

  /// Free self parking exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? freeSelfParkingException;

  /// Free valet parking.
  ///
  /// Hotel staff member parks the cars of guests. Parking with this service is
  /// free.
  core.bool? freeValetParking;

  /// Free valet parking exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? freeValetParkingException;

  /// Parking available.
  ///
  /// The hotel allows the cars of guests to be parked. Can be free or for a
  /// fee. Parking facility may be an outdoor lot or an indoor garage, but must
  /// be onsite. Nearby parking does not apply. Parking may be performed by the
  /// guest or by hotel staff.
  core.bool? parkingAvailable;

  /// Parking available exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? parkingAvailableException;

  /// Self parking available.
  ///
  /// Guests park their own cars. Parking facility may be an outdoor lot or an
  /// indoor garage, but must be onsite. Nearby parking does not apply. Can be
  /// free or for a fee.
  core.bool? selfParkingAvailable;

  /// Self parking available exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? selfParkingAvailableException;

  /// Valet parking available.
  ///
  /// Hotel staff member parks the cars of guests. Parking with this service can
  /// be free or for a fee.
  core.bool? valetParkingAvailable;

  /// Valet parking available exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? valetParkingAvailableException;

  Parking({
    this.electricCarChargingStations,
    this.electricCarChargingStationsException,
    this.freeParking,
    this.freeParkingException,
    this.freeSelfParking,
    this.freeSelfParkingException,
    this.freeValetParking,
    this.freeValetParkingException,
    this.parkingAvailable,
    this.parkingAvailableException,
    this.selfParkingAvailable,
    this.selfParkingAvailableException,
    this.valetParkingAvailable,
    this.valetParkingAvailableException,
  });

  Parking.fromJson(core.Map json_)
      : this(
          electricCarChargingStations:
              json_.containsKey('electricCarChargingStations')
                  ? json_['electricCarChargingStations'] as core.bool
                  : null,
          electricCarChargingStationsException:
              json_.containsKey('electricCarChargingStationsException')
                  ? json_['electricCarChargingStationsException'] as core.String
                  : null,
          freeParking: json_.containsKey('freeParking')
              ? json_['freeParking'] as core.bool
              : null,
          freeParkingException: json_.containsKey('freeParkingException')
              ? json_['freeParkingException'] as core.String
              : null,
          freeSelfParking: json_.containsKey('freeSelfParking')
              ? json_['freeSelfParking'] as core.bool
              : null,
          freeSelfParkingException:
              json_.containsKey('freeSelfParkingException')
                  ? json_['freeSelfParkingException'] as core.String
                  : null,
          freeValetParking: json_.containsKey('freeValetParking')
              ? json_['freeValetParking'] as core.bool
              : null,
          freeValetParkingException:
              json_.containsKey('freeValetParkingException')
                  ? json_['freeValetParkingException'] as core.String
                  : null,
          parkingAvailable: json_.containsKey('parkingAvailable')
              ? json_['parkingAvailable'] as core.bool
              : null,
          parkingAvailableException:
              json_.containsKey('parkingAvailableException')
                  ? json_['parkingAvailableException'] as core.String
                  : null,
          selfParkingAvailable: json_.containsKey('selfParkingAvailable')
              ? json_['selfParkingAvailable'] as core.bool
              : null,
          selfParkingAvailableException:
              json_.containsKey('selfParkingAvailableException')
                  ? json_['selfParkingAvailableException'] as core.String
                  : null,
          valetParkingAvailable: json_.containsKey('valetParkingAvailable')
              ? json_['valetParkingAvailable'] as core.bool
              : null,
          valetParkingAvailableException:
              json_.containsKey('valetParkingAvailableException')
                  ? json_['valetParkingAvailableException'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (electricCarChargingStations != null)
          'electricCarChargingStations': electricCarChargingStations!,
        if (electricCarChargingStationsException != null)
          'electricCarChargingStationsException':
              electricCarChargingStationsException!,
        if (freeParking != null) 'freeParking': freeParking!,
        if (freeParkingException != null)
          'freeParkingException': freeParkingException!,
        if (freeSelfParking != null) 'freeSelfParking': freeSelfParking!,
        if (freeSelfParkingException != null)
          'freeSelfParkingException': freeSelfParkingException!,
        if (freeValetParking != null) 'freeValetParking': freeValetParking!,
        if (freeValetParkingException != null)
          'freeValetParkingException': freeValetParkingException!,
        if (parkingAvailable != null) 'parkingAvailable': parkingAvailable!,
        if (parkingAvailableException != null)
          'parkingAvailableException': parkingAvailableException!,
        if (selfParkingAvailable != null)
          'selfParkingAvailable': selfParkingAvailable!,
        if (selfParkingAvailableException != null)
          'selfParkingAvailableException': selfParkingAvailableException!,
        if (valetParkingAvailable != null)
          'valetParkingAvailable': valetParkingAvailable!,
        if (valetParkingAvailableException != null)
          'valetParkingAvailableException': valetParkingAvailableException!,
      };
}

/// Forms of payment accepted at the property.
class PaymentOptions {
  /// Cash.
  ///
  /// The hotel accepts payment by paper/coin currency.
  core.bool? cash;

  /// Cash exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? cashException;

  /// Cheque.
  ///
  /// The hotel accepts a printed document issued by the guest's bank in the
  /// guest's name as a form of payment.
  core.bool? cheque;

  /// Cheque exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? chequeException;

  /// Credit card.
  ///
  /// The hotel accepts payment by a card issued by a bank or credit card
  /// company. Also known as charge card, debit card, bank card, or charge
  /// plate.
  core.bool? creditCard;

  /// Credit card exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? creditCardException;

  /// Debit card.
  ///
  /// The hotel accepts a bank-issued card that immediately deducts the charged
  /// funds from the guest's bank account upon processing.
  core.bool? debitCard;

  /// Debit card exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? debitCardException;

  /// Mobile nfc.
  ///
  /// The hotel has the compatible computer hardware terminal that reads and
  /// charges a payment app on the guest's smartphone without requiring the two
  /// devices to make physical contact. Also known as Apple Pay, Google Pay,
  /// Samsung Pay.
  core.bool? mobileNfc;

  /// Mobile nfc exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? mobileNfcException;

  PaymentOptions({
    this.cash,
    this.cashException,
    this.cheque,
    this.chequeException,
    this.creditCard,
    this.creditCardException,
    this.debitCard,
    this.debitCardException,
    this.mobileNfc,
    this.mobileNfcException,
  });

  PaymentOptions.fromJson(core.Map json_)
      : this(
          cash: json_.containsKey('cash') ? json_['cash'] as core.bool : null,
          cashException: json_.containsKey('cashException')
              ? json_['cashException'] as core.String
              : null,
          cheque:
              json_.containsKey('cheque') ? json_['cheque'] as core.bool : null,
          chequeException: json_.containsKey('chequeException')
              ? json_['chequeException'] as core.String
              : null,
          creditCard: json_.containsKey('creditCard')
              ? json_['creditCard'] as core.bool
              : null,
          creditCardException: json_.containsKey('creditCardException')
              ? json_['creditCardException'] as core.String
              : null,
          debitCard: json_.containsKey('debitCard')
              ? json_['debitCard'] as core.bool
              : null,
          debitCardException: json_.containsKey('debitCardException')
              ? json_['debitCardException'] as core.String
              : null,
          mobileNfc: json_.containsKey('mobileNfc')
              ? json_['mobileNfc'] as core.bool
              : null,
          mobileNfcException: json_.containsKey('mobileNfcException')
              ? json_['mobileNfcException'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cash != null) 'cash': cash!,
        if (cashException != null) 'cashException': cashException!,
        if (cheque != null) 'cheque': cheque!,
        if (chequeException != null) 'chequeException': chequeException!,
        if (creditCard != null) 'creditCard': creditCard!,
        if (creditCardException != null)
          'creditCardException': creditCardException!,
        if (debitCard != null) 'debitCard': debitCard!,
        if (debitCardException != null)
          'debitCardException': debitCardException!,
        if (mobileNfc != null) 'mobileNfc': mobileNfc!,
        if (mobileNfcException != null)
          'mobileNfcException': mobileNfcException!,
      };
}

/// Personal protection measures implemented by the hotel during COVID-19.
class PersonalProtection {
  /// Hand-sanitizer and/or sanitizing wipes are offered in common areas.
  core.bool? commonAreasOfferSanitizingItems;

  /// Common areas offer sanitizing items exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? commonAreasOfferSanitizingItemsException;

  /// Masks required on the property.
  core.bool? faceMaskRequired;

  /// Face mask required exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? faceMaskRequiredException;

  /// In-room hygiene kits with masks, hand sanitizer, and/or antibacterial
  /// wipes.
  core.bool? guestRoomHygieneKitsAvailable;

  /// Guest room hygiene kits available exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? guestRoomHygieneKitsAvailableException;

  /// Masks and/or gloves available for guests.
  core.bool? protectiveEquipmentAvailable;

  /// Protective equipment available exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? protectiveEquipmentAvailableException;

  PersonalProtection({
    this.commonAreasOfferSanitizingItems,
    this.commonAreasOfferSanitizingItemsException,
    this.faceMaskRequired,
    this.faceMaskRequiredException,
    this.guestRoomHygieneKitsAvailable,
    this.guestRoomHygieneKitsAvailableException,
    this.protectiveEquipmentAvailable,
    this.protectiveEquipmentAvailableException,
  });

  PersonalProtection.fromJson(core.Map json_)
      : this(
          commonAreasOfferSanitizingItems:
              json_.containsKey('commonAreasOfferSanitizingItems')
                  ? json_['commonAreasOfferSanitizingItems'] as core.bool
                  : null,
          commonAreasOfferSanitizingItemsException: json_
                  .containsKey('commonAreasOfferSanitizingItemsException')
              ? json_['commonAreasOfferSanitizingItemsException'] as core.String
              : null,
          faceMaskRequired: json_.containsKey('faceMaskRequired')
              ? json_['faceMaskRequired'] as core.bool
              : null,
          faceMaskRequiredException:
              json_.containsKey('faceMaskRequiredException')
                  ? json_['faceMaskRequiredException'] as core.String
                  : null,
          guestRoomHygieneKitsAvailable:
              json_.containsKey('guestRoomHygieneKitsAvailable')
                  ? json_['guestRoomHygieneKitsAvailable'] as core.bool
                  : null,
          guestRoomHygieneKitsAvailableException: json_
                  .containsKey('guestRoomHygieneKitsAvailableException')
              ? json_['guestRoomHygieneKitsAvailableException'] as core.String
              : null,
          protectiveEquipmentAvailable:
              json_.containsKey('protectiveEquipmentAvailable')
                  ? json_['protectiveEquipmentAvailable'] as core.bool
                  : null,
          protectiveEquipmentAvailableException: json_
                  .containsKey('protectiveEquipmentAvailableException')
              ? json_['protectiveEquipmentAvailableException'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonAreasOfferSanitizingItems != null)
          'commonAreasOfferSanitizingItems': commonAreasOfferSanitizingItems!,
        if (commonAreasOfferSanitizingItemsException != null)
          'commonAreasOfferSanitizingItemsException':
              commonAreasOfferSanitizingItemsException!,
        if (faceMaskRequired != null) 'faceMaskRequired': faceMaskRequired!,
        if (faceMaskRequiredException != null)
          'faceMaskRequiredException': faceMaskRequiredException!,
        if (guestRoomHygieneKitsAvailable != null)
          'guestRoomHygieneKitsAvailable': guestRoomHygieneKitsAvailable!,
        if (guestRoomHygieneKitsAvailableException != null)
          'guestRoomHygieneKitsAvailableException':
              guestRoomHygieneKitsAvailableException!,
        if (protectiveEquipmentAvailable != null)
          'protectiveEquipmentAvailable': protectiveEquipmentAvailable!,
        if (protectiveEquipmentAvailableException != null)
          'protectiveEquipmentAvailableException':
              protectiveEquipmentAvailableException!,
      };
}

/// Policies regarding guest-owned animals.
class Pets {
  /// Cats allowed.
  ///
  /// Domesticated felines are permitted at the property and allowed to stay in
  /// the guest room of their owner. May or may not require a fee.
  core.bool? catsAllowed;

  /// Cats allowed exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? catsAllowedException;

  /// Dogs allowed.
  ///
  /// Domesticated canines are permitted at the property and allowed to stay in
  /// the guest room of their owner. May or may not require a fee.
  core.bool? dogsAllowed;

  /// Dogs allowed exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? dogsAllowedException;

  /// Pets allowed.
  ///
  /// Household animals are allowed at the property and in the specific guest
  /// room of their owner. May or may not include dogs, cats, reptiles and/or
  /// fish. May or may not require a fee. Service animals are not considered to
  /// be pets, so not governed by this policy.
  core.bool? petsAllowed;

  /// Pets allowed exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? petsAllowedException;

  /// Pets allowed free.
  ///
  /// Household animals are allowed at the property and in the specific guest
  /// room of their owner for free. May or may not include dogs, cats, reptiles,
  /// and/or fish.
  core.bool? petsAllowedFree;

  /// Pets allowed free exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? petsAllowedFreeException;

  Pets({
    this.catsAllowed,
    this.catsAllowedException,
    this.dogsAllowed,
    this.dogsAllowedException,
    this.petsAllowed,
    this.petsAllowedException,
    this.petsAllowedFree,
    this.petsAllowedFreeException,
  });

  Pets.fromJson(core.Map json_)
      : this(
          catsAllowed: json_.containsKey('catsAllowed')
              ? json_['catsAllowed'] as core.bool
              : null,
          catsAllowedException: json_.containsKey('catsAllowedException')
              ? json_['catsAllowedException'] as core.String
              : null,
          dogsAllowed: json_.containsKey('dogsAllowed')
              ? json_['dogsAllowed'] as core.bool
              : null,
          dogsAllowedException: json_.containsKey('dogsAllowedException')
              ? json_['dogsAllowedException'] as core.String
              : null,
          petsAllowed: json_.containsKey('petsAllowed')
              ? json_['petsAllowed'] as core.bool
              : null,
          petsAllowedException: json_.containsKey('petsAllowedException')
              ? json_['petsAllowedException'] as core.String
              : null,
          petsAllowedFree: json_.containsKey('petsAllowedFree')
              ? json_['petsAllowedFree'] as core.bool
              : null,
          petsAllowedFreeException:
              json_.containsKey('petsAllowedFreeException')
                  ? json_['petsAllowedFreeException'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (catsAllowed != null) 'catsAllowed': catsAllowed!,
        if (catsAllowedException != null)
          'catsAllowedException': catsAllowedException!,
        if (dogsAllowed != null) 'dogsAllowed': dogsAllowed!,
        if (dogsAllowedException != null)
          'dogsAllowedException': dogsAllowedException!,
        if (petsAllowed != null) 'petsAllowed': petsAllowed!,
        if (petsAllowedException != null)
          'petsAllowedException': petsAllowedException!,
        if (petsAllowedFree != null) 'petsAllowedFree': petsAllowedFree!,
        if (petsAllowedFreeException != null)
          'petsAllowedFreeException': petsAllowedFreeException!,
      };
}

/// Physical distancing measures implemented by the hotel during COVID-19.
class PhysicalDistancing {
  /// Common areas arranged to maintain physical distancing.
  core.bool? commonAreasPhysicalDistancingArranged;

  /// Common areas physical distancing arranged exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? commonAreasPhysicalDistancingArrangedException;

  /// Physical distancing required.
  core.bool? physicalDistancingRequired;

  /// Physical distancing required exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? physicalDistancingRequiredException;

  /// Safety dividers at front desk and other locations.
  core.bool? safetyDividers;

  /// Safety dividers exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? safetyDividersException;

  /// Guest occupancy limited within shared facilities.
  core.bool? sharedAreasLimitedOccupancy;

  /// Shared areas limited occupancy exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? sharedAreasLimitedOccupancyException;

  /// Private spaces designated in spa and wellness areas.
  core.bool? wellnessAreasHavePrivateSpaces;

  /// Wellness areas have private spaces exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? wellnessAreasHavePrivateSpacesException;

  PhysicalDistancing({
    this.commonAreasPhysicalDistancingArranged,
    this.commonAreasPhysicalDistancingArrangedException,
    this.physicalDistancingRequired,
    this.physicalDistancingRequiredException,
    this.safetyDividers,
    this.safetyDividersException,
    this.sharedAreasLimitedOccupancy,
    this.sharedAreasLimitedOccupancyException,
    this.wellnessAreasHavePrivateSpaces,
    this.wellnessAreasHavePrivateSpacesException,
  });

  PhysicalDistancing.fromJson(core.Map json_)
      : this(
          commonAreasPhysicalDistancingArranged:
              json_.containsKey('commonAreasPhysicalDistancingArranged')
                  ? json_['commonAreasPhysicalDistancingArranged'] as core.bool
                  : null,
          commonAreasPhysicalDistancingArrangedException: json_
                  .containsKey('commonAreasPhysicalDistancingArrangedException')
              ? json_['commonAreasPhysicalDistancingArrangedException']
                  as core.String
              : null,
          physicalDistancingRequired:
              json_.containsKey('physicalDistancingRequired')
                  ? json_['physicalDistancingRequired'] as core.bool
                  : null,
          physicalDistancingRequiredException:
              json_.containsKey('physicalDistancingRequiredException')
                  ? json_['physicalDistancingRequiredException'] as core.String
                  : null,
          safetyDividers: json_.containsKey('safetyDividers')
              ? json_['safetyDividers'] as core.bool
              : null,
          safetyDividersException: json_.containsKey('safetyDividersException')
              ? json_['safetyDividersException'] as core.String
              : null,
          sharedAreasLimitedOccupancy:
              json_.containsKey('sharedAreasLimitedOccupancy')
                  ? json_['sharedAreasLimitedOccupancy'] as core.bool
                  : null,
          sharedAreasLimitedOccupancyException:
              json_.containsKey('sharedAreasLimitedOccupancyException')
                  ? json_['sharedAreasLimitedOccupancyException'] as core.String
                  : null,
          wellnessAreasHavePrivateSpaces:
              json_.containsKey('wellnessAreasHavePrivateSpaces')
                  ? json_['wellnessAreasHavePrivateSpaces'] as core.bool
                  : null,
          wellnessAreasHavePrivateSpacesException: json_
                  .containsKey('wellnessAreasHavePrivateSpacesException')
              ? json_['wellnessAreasHavePrivateSpacesException'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonAreasPhysicalDistancingArranged != null)
          'commonAreasPhysicalDistancingArranged':
              commonAreasPhysicalDistancingArranged!,
        if (commonAreasPhysicalDistancingArrangedException != null)
          'commonAreasPhysicalDistancingArrangedException':
              commonAreasPhysicalDistancingArrangedException!,
        if (physicalDistancingRequired != null)
          'physicalDistancingRequired': physicalDistancingRequired!,
        if (physicalDistancingRequiredException != null)
          'physicalDistancingRequiredException':
              physicalDistancingRequiredException!,
        if (safetyDividers != null) 'safetyDividers': safetyDividers!,
        if (safetyDividersException != null)
          'safetyDividersException': safetyDividersException!,
        if (sharedAreasLimitedOccupancy != null)
          'sharedAreasLimitedOccupancy': sharedAreasLimitedOccupancy!,
        if (sharedAreasLimitedOccupancyException != null)
          'sharedAreasLimitedOccupancyException':
              sharedAreasLimitedOccupancyException!,
        if (wellnessAreasHavePrivateSpaces != null)
          'wellnessAreasHavePrivateSpaces': wellnessAreasHavePrivateSpaces!,
        if (wellnessAreasHavePrivateSpacesException != null)
          'wellnessAreasHavePrivateSpacesException':
              wellnessAreasHavePrivateSpacesException!,
      };
}

/// Property rules that impact guests.
class Policies {
  /// All inclusive available.
  ///
  /// The hotel offers a rate option that includes the cost of the room, meals,
  /// activities, and other amenities that might otherwise be charged
  /// separately.
  core.bool? allInclusiveAvailable;

  /// All inclusive available exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? allInclusiveAvailableException;

  /// All inclusive only.
  ///
  /// The only rate option offered by the hotel is a rate that includes the cost
  /// of the room, meals, activities and other amenities that might otherwise be
  /// charged separately.
  core.bool? allInclusiveOnly;

  /// All inclusive only exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? allInclusiveOnlyException;

  /// Check-in time.
  ///
  /// The time of the day at which the hotel begins providing guests access to
  /// their unit at the beginning of their stay.
  TimeOfDay? checkinTime;

  /// Check-in time exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? checkinTimeException;

  /// Check-out time.
  ///
  /// The time of the day on the last day of a guest's reserved stay at which
  /// the guest must vacate their room and settle their bill. Some hotels may
  /// offer late or early check out for a fee.
  TimeOfDay? checkoutTime;

  /// Check-out time exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? checkoutTimeException;

  /// Kids stay free.
  ///
  /// The children of guests are allowed to stay in the room/suite of a parent
  /// or adult without an additional fee. The policy may or may not stipulate a
  /// limit of the child's age or the overall number of children allowed.
  core.bool? kidsStayFree;

  /// Kids stay free exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? kidsStayFreeException;

  /// Max child age.
  ///
  /// The hotel allows children up to a certain age to stay in the room/suite of
  /// a parent or adult without an additional fee.
  core.int? maxChildAge;

  /// Max child age exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? maxChildAgeException;

  /// Max kids stay free count.
  ///
  /// The hotel allows a specific, defined number of children to stay in the
  /// room/suite of a parent or adult without an additional fee.
  core.int? maxKidsStayFreeCount;

  /// Max kids stay free count exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? maxKidsStayFreeCountException;

  /// Forms of payment accepted at the property.
  PaymentOptions? paymentOptions;

  /// Smoke free property.
  ///
  /// Smoking is not allowed inside the building, on balconies, or in outside
  /// spaces. Hotels that offer a designated area for guests to smoke are not
  /// considered smoke-free properties.
  core.bool? smokeFreeProperty;

  /// Smoke free property exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? smokeFreePropertyException;

  Policies({
    this.allInclusiveAvailable,
    this.allInclusiveAvailableException,
    this.allInclusiveOnly,
    this.allInclusiveOnlyException,
    this.checkinTime,
    this.checkinTimeException,
    this.checkoutTime,
    this.checkoutTimeException,
    this.kidsStayFree,
    this.kidsStayFreeException,
    this.maxChildAge,
    this.maxChildAgeException,
    this.maxKidsStayFreeCount,
    this.maxKidsStayFreeCountException,
    this.paymentOptions,
    this.smokeFreeProperty,
    this.smokeFreePropertyException,
  });

  Policies.fromJson(core.Map json_)
      : this(
          allInclusiveAvailable: json_.containsKey('allInclusiveAvailable')
              ? json_['allInclusiveAvailable'] as core.bool
              : null,
          allInclusiveAvailableException:
              json_.containsKey('allInclusiveAvailableException')
                  ? json_['allInclusiveAvailableException'] as core.String
                  : null,
          allInclusiveOnly: json_.containsKey('allInclusiveOnly')
              ? json_['allInclusiveOnly'] as core.bool
              : null,
          allInclusiveOnlyException:
              json_.containsKey('allInclusiveOnlyException')
                  ? json_['allInclusiveOnlyException'] as core.String
                  : null,
          checkinTime: json_.containsKey('checkinTime')
              ? TimeOfDay.fromJson(
                  json_['checkinTime'] as core.Map<core.String, core.dynamic>)
              : null,
          checkinTimeException: json_.containsKey('checkinTimeException')
              ? json_['checkinTimeException'] as core.String
              : null,
          checkoutTime: json_.containsKey('checkoutTime')
              ? TimeOfDay.fromJson(
                  json_['checkoutTime'] as core.Map<core.String, core.dynamic>)
              : null,
          checkoutTimeException: json_.containsKey('checkoutTimeException')
              ? json_['checkoutTimeException'] as core.String
              : null,
          kidsStayFree: json_.containsKey('kidsStayFree')
              ? json_['kidsStayFree'] as core.bool
              : null,
          kidsStayFreeException: json_.containsKey('kidsStayFreeException')
              ? json_['kidsStayFreeException'] as core.String
              : null,
          maxChildAge: json_.containsKey('maxChildAge')
              ? json_['maxChildAge'] as core.int
              : null,
          maxChildAgeException: json_.containsKey('maxChildAgeException')
              ? json_['maxChildAgeException'] as core.String
              : null,
          maxKidsStayFreeCount: json_.containsKey('maxKidsStayFreeCount')
              ? json_['maxKidsStayFreeCount'] as core.int
              : null,
          maxKidsStayFreeCountException:
              json_.containsKey('maxKidsStayFreeCountException')
                  ? json_['maxKidsStayFreeCountException'] as core.String
                  : null,
          paymentOptions: json_.containsKey('paymentOptions')
              ? PaymentOptions.fromJson(json_['paymentOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          smokeFreeProperty: json_.containsKey('smokeFreeProperty')
              ? json_['smokeFreeProperty'] as core.bool
              : null,
          smokeFreePropertyException:
              json_.containsKey('smokeFreePropertyException')
                  ? json_['smokeFreePropertyException'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allInclusiveAvailable != null)
          'allInclusiveAvailable': allInclusiveAvailable!,
        if (allInclusiveAvailableException != null)
          'allInclusiveAvailableException': allInclusiveAvailableException!,
        if (allInclusiveOnly != null) 'allInclusiveOnly': allInclusiveOnly!,
        if (allInclusiveOnlyException != null)
          'allInclusiveOnlyException': allInclusiveOnlyException!,
        if (checkinTime != null) 'checkinTime': checkinTime!,
        if (checkinTimeException != null)
          'checkinTimeException': checkinTimeException!,
        if (checkoutTime != null) 'checkoutTime': checkoutTime!,
        if (checkoutTimeException != null)
          'checkoutTimeException': checkoutTimeException!,
        if (kidsStayFree != null) 'kidsStayFree': kidsStayFree!,
        if (kidsStayFreeException != null)
          'kidsStayFreeException': kidsStayFreeException!,
        if (maxChildAge != null) 'maxChildAge': maxChildAge!,
        if (maxChildAgeException != null)
          'maxChildAgeException': maxChildAgeException!,
        if (maxKidsStayFreeCount != null)
          'maxKidsStayFreeCount': maxKidsStayFreeCount!,
        if (maxKidsStayFreeCountException != null)
          'maxKidsStayFreeCountException': maxKidsStayFreeCountException!,
        if (paymentOptions != null) 'paymentOptions': paymentOptions!,
        if (smokeFreeProperty != null) 'smokeFreeProperty': smokeFreeProperty!,
        if (smokeFreePropertyException != null)
          'smokeFreePropertyException': smokeFreePropertyException!,
      };
}

/// Swimming pool or recreational water facilities available at the hotel.
class Pools {
  /// Adult pool.
  ///
  /// A pool restricted for use by adults only. Can be indoors or outdoors.
  core.bool? adultPool;

  /// Adult pool exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? adultPoolException;

  /// Hot tub.
  ///
  /// A man-made pool containing bubbling water maintained at a higher
  /// temperature and circulated by aerating jets for the purpose of soaking,
  /// relaxation and hydrotherapy. Can be indoors or outdoors. Not used for
  /// active swimming. Also known as Jacuzzi. Hot tub must be in a common area
  /// where all guests can access it. Does not apply to room-specific hot tubs
  /// that are only accessible to guest occupying that room.
  core.bool? hotTub;

  /// Hot tub exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? hotTubException;

  /// Indoor pool.
  ///
  /// A pool located inside the hotel and available for guests to use for
  /// swimming and/or soaking. Use may or may not be restricted to adults and/or
  /// children.
  core.bool? indoorPool;

  /// Indoor pool exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? indoorPoolException;

  /// Indoor pools count.
  ///
  /// The sum of all indoor pools at the hotel.
  core.int? indoorPoolsCount;

  /// Indoor pools count exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? indoorPoolsCountException;

  /// Lazy river.
  ///
  /// A man-made pool or several interconnected recreational pools built to
  /// mimic the shape and current of a winding river where guests float in the
  /// water on inflated rubber tubes. Can be indoors or outdoors.
  core.bool? lazyRiver;

  /// Lazy river exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? lazyRiverException;

  /// Lifeguard.
  ///
  /// A trained member of the hotel staff stationed by the hotel's indoor or
  /// outdoor swimming area and responsible for the safety of swimming guests.
  core.bool? lifeguard;

  /// Lifeguard exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? lifeguardException;

  /// Outdoor pool.
  ///
  /// A pool located outside on the grounds of the hotel and available for
  /// guests to use for swimming, soaking or recreation. Use may or may not be
  /// restricted to adults and/or children.
  core.bool? outdoorPool;

  /// Outdoor pool exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? outdoorPoolException;

  /// Outdoor pools count.
  ///
  /// The sum of all outdoor pools at the hotel.
  core.int? outdoorPoolsCount;

  /// Outdoor pools count exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? outdoorPoolsCountException;

  /// Pool.
  ///
  /// The presence of a pool, either indoors or outdoors, for guests to use for
  /// swimming and/or soaking. Use may or may not be restricted to adults and/or
  /// children.
  core.bool? pool;

  /// Pool exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? poolException;

  /// Pools count.
  ///
  /// The sum of all pools at the hotel.
  core.int? poolsCount;

  /// Pools count exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? poolsCountException;

  /// Wading pool.
  ///
  /// A shallow pool designed for small children to play in. Can be indoors or
  /// outdoors. Also known as kiddie pool.
  core.bool? wadingPool;

  /// Wading pool exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? wadingPoolException;

  /// Water park.
  ///
  /// An aquatic recreation area with a large pool or series of pools that has
  /// features such as a water slide or tube, wavepool, fountains, rope swings,
  /// and/or obstacle course. Can be indoors or outdoors. Also known as
  /// adventure pool.
  core.bool? waterPark;

  /// Water park exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? waterParkException;

  /// Waterslide.
  ///
  /// A continuously wetted chute positioned by an indoor or outdoor pool which
  /// people slide down into the water.
  core.bool? waterslide;

  /// Waterslide exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? waterslideException;

  /// Wave pool.
  ///
  /// A large indoor or outdoor pool with a machine that produces water currents
  /// to mimic the ocean's crests.
  core.bool? wavePool;

  /// Wave pool exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? wavePoolException;

  Pools({
    this.adultPool,
    this.adultPoolException,
    this.hotTub,
    this.hotTubException,
    this.indoorPool,
    this.indoorPoolException,
    this.indoorPoolsCount,
    this.indoorPoolsCountException,
    this.lazyRiver,
    this.lazyRiverException,
    this.lifeguard,
    this.lifeguardException,
    this.outdoorPool,
    this.outdoorPoolException,
    this.outdoorPoolsCount,
    this.outdoorPoolsCountException,
    this.pool,
    this.poolException,
    this.poolsCount,
    this.poolsCountException,
    this.wadingPool,
    this.wadingPoolException,
    this.waterPark,
    this.waterParkException,
    this.waterslide,
    this.waterslideException,
    this.wavePool,
    this.wavePoolException,
  });

  Pools.fromJson(core.Map json_)
      : this(
          adultPool: json_.containsKey('adultPool')
              ? json_['adultPool'] as core.bool
              : null,
          adultPoolException: json_.containsKey('adultPoolException')
              ? json_['adultPoolException'] as core.String
              : null,
          hotTub:
              json_.containsKey('hotTub') ? json_['hotTub'] as core.bool : null,
          hotTubException: json_.containsKey('hotTubException')
              ? json_['hotTubException'] as core.String
              : null,
          indoorPool: json_.containsKey('indoorPool')
              ? json_['indoorPool'] as core.bool
              : null,
          indoorPoolException: json_.containsKey('indoorPoolException')
              ? json_['indoorPoolException'] as core.String
              : null,
          indoorPoolsCount: json_.containsKey('indoorPoolsCount')
              ? json_['indoorPoolsCount'] as core.int
              : null,
          indoorPoolsCountException:
              json_.containsKey('indoorPoolsCountException')
                  ? json_['indoorPoolsCountException'] as core.String
                  : null,
          lazyRiver: json_.containsKey('lazyRiver')
              ? json_['lazyRiver'] as core.bool
              : null,
          lazyRiverException: json_.containsKey('lazyRiverException')
              ? json_['lazyRiverException'] as core.String
              : null,
          lifeguard: json_.containsKey('lifeguard')
              ? json_['lifeguard'] as core.bool
              : null,
          lifeguardException: json_.containsKey('lifeguardException')
              ? json_['lifeguardException'] as core.String
              : null,
          outdoorPool: json_.containsKey('outdoorPool')
              ? json_['outdoorPool'] as core.bool
              : null,
          outdoorPoolException: json_.containsKey('outdoorPoolException')
              ? json_['outdoorPoolException'] as core.String
              : null,
          outdoorPoolsCount: json_.containsKey('outdoorPoolsCount')
              ? json_['outdoorPoolsCount'] as core.int
              : null,
          outdoorPoolsCountException:
              json_.containsKey('outdoorPoolsCountException')
                  ? json_['outdoorPoolsCountException'] as core.String
                  : null,
          pool: json_.containsKey('pool') ? json_['pool'] as core.bool : null,
          poolException: json_.containsKey('poolException')
              ? json_['poolException'] as core.String
              : null,
          poolsCount: json_.containsKey('poolsCount')
              ? json_['poolsCount'] as core.int
              : null,
          poolsCountException: json_.containsKey('poolsCountException')
              ? json_['poolsCountException'] as core.String
              : null,
          wadingPool: json_.containsKey('wadingPool')
              ? json_['wadingPool'] as core.bool
              : null,
          wadingPoolException: json_.containsKey('wadingPoolException')
              ? json_['wadingPoolException'] as core.String
              : null,
          waterPark: json_.containsKey('waterPark')
              ? json_['waterPark'] as core.bool
              : null,
          waterParkException: json_.containsKey('waterParkException')
              ? json_['waterParkException'] as core.String
              : null,
          waterslide: json_.containsKey('waterslide')
              ? json_['waterslide'] as core.bool
              : null,
          waterslideException: json_.containsKey('waterslideException')
              ? json_['waterslideException'] as core.String
              : null,
          wavePool: json_.containsKey('wavePool')
              ? json_['wavePool'] as core.bool
              : null,
          wavePoolException: json_.containsKey('wavePoolException')
              ? json_['wavePoolException'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adultPool != null) 'adultPool': adultPool!,
        if (adultPoolException != null)
          'adultPoolException': adultPoolException!,
        if (hotTub != null) 'hotTub': hotTub!,
        if (hotTubException != null) 'hotTubException': hotTubException!,
        if (indoorPool != null) 'indoorPool': indoorPool!,
        if (indoorPoolException != null)
          'indoorPoolException': indoorPoolException!,
        if (indoorPoolsCount != null) 'indoorPoolsCount': indoorPoolsCount!,
        if (indoorPoolsCountException != null)
          'indoorPoolsCountException': indoorPoolsCountException!,
        if (lazyRiver != null) 'lazyRiver': lazyRiver!,
        if (lazyRiverException != null)
          'lazyRiverException': lazyRiverException!,
        if (lifeguard != null) 'lifeguard': lifeguard!,
        if (lifeguardException != null)
          'lifeguardException': lifeguardException!,
        if (outdoorPool != null) 'outdoorPool': outdoorPool!,
        if (outdoorPoolException != null)
          'outdoorPoolException': outdoorPoolException!,
        if (outdoorPoolsCount != null) 'outdoorPoolsCount': outdoorPoolsCount!,
        if (outdoorPoolsCountException != null)
          'outdoorPoolsCountException': outdoorPoolsCountException!,
        if (pool != null) 'pool': pool!,
        if (poolException != null) 'poolException': poolException!,
        if (poolsCount != null) 'poolsCount': poolsCount!,
        if (poolsCountException != null)
          'poolsCountException': poolsCountException!,
        if (wadingPool != null) 'wadingPool': wadingPool!,
        if (wadingPoolException != null)
          'wadingPoolException': wadingPoolException!,
        if (waterPark != null) 'waterPark': waterPark!,
        if (waterParkException != null)
          'waterParkException': waterParkException!,
        if (waterslide != null) 'waterslide': waterslide!,
        if (waterslideException != null)
          'waterslideException': waterslideException!,
        if (wavePool != null) 'wavePool': wavePool!,
        if (wavePoolException != null) 'wavePoolException': wavePoolException!,
      };
}

/// General factual information about the property's physical structure and
/// important dates.
class Property {
  /// Built year.
  ///
  /// The year that construction of the property was completed.
  core.int? builtYear;

  /// Built year exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? builtYearException;

  /// Floors count.
  ///
  /// The number of stories the building has from the ground floor to the top
  /// floor that are accessible to guests.
  core.int? floorsCount;

  /// Floors count exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? floorsCountException;

  /// Last renovated year.
  ///
  /// The year when the most recent renovation of the property was completed.
  /// Renovation may include all or any combination of the following: the units,
  /// the public spaces, the exterior, or the interior.
  core.int? lastRenovatedYear;

  /// Last renovated year exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? lastRenovatedYearException;

  /// Rooms count.
  ///
  /// The total number of rooms and suites bookable by guests for an overnight
  /// stay. Does not include event space, public spaces, conference rooms,
  /// fitness rooms, business centers, spa, salon, restaurants/bars, or shops.
  core.int? roomsCount;

  /// Rooms count exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? roomsCountException;

  Property({
    this.builtYear,
    this.builtYearException,
    this.floorsCount,
    this.floorsCountException,
    this.lastRenovatedYear,
    this.lastRenovatedYearException,
    this.roomsCount,
    this.roomsCountException,
  });

  Property.fromJson(core.Map json_)
      : this(
          builtYear: json_.containsKey('builtYear')
              ? json_['builtYear'] as core.int
              : null,
          builtYearException: json_.containsKey('builtYearException')
              ? json_['builtYearException'] as core.String
              : null,
          floorsCount: json_.containsKey('floorsCount')
              ? json_['floorsCount'] as core.int
              : null,
          floorsCountException: json_.containsKey('floorsCountException')
              ? json_['floorsCountException'] as core.String
              : null,
          lastRenovatedYear: json_.containsKey('lastRenovatedYear')
              ? json_['lastRenovatedYear'] as core.int
              : null,
          lastRenovatedYearException:
              json_.containsKey('lastRenovatedYearException')
                  ? json_['lastRenovatedYearException'] as core.String
                  : null,
          roomsCount: json_.containsKey('roomsCount')
              ? json_['roomsCount'] as core.int
              : null,
          roomsCountException: json_.containsKey('roomsCountException')
              ? json_['roomsCountException'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (builtYear != null) 'builtYear': builtYear!,
        if (builtYearException != null)
          'builtYearException': builtYearException!,
        if (floorsCount != null) 'floorsCount': floorsCount!,
        if (floorsCountException != null)
          'floorsCountException': floorsCountException!,
        if (lastRenovatedYear != null) 'lastRenovatedYear': lastRenovatedYear!,
        if (lastRenovatedYearException != null)
          'lastRenovatedYearException': lastRenovatedYearException!,
        if (roomsCount != null) 'roomsCount': roomsCount!,
        if (roomsCountException != null)
          'roomsCountException': roomsCountException!,
      };
}

/// Conveniences or help provided by the property to facilitate an easier, more
/// comfortable stay.
class Services {
  /// Baggage storage.
  ///
  /// A provision for guests to leave their bags at the hotel when they arrive
  /// for their stay before the official check-in time. May or may not apply for
  /// guests who wish to leave their bags after check-out and before departing
  /// the locale. Also known as bag dropoff.
  core.bool? baggageStorage;

  /// Baggage storage exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? baggageStorageException;

  /// Concierge.
  ///
  /// Hotel staff member(s) responsible for facilitating an easy, comfortable
  /// stay through making reservations for meals, sourcing theater tickets,
  /// arranging tours, finding a doctor, making recommendations, and answering
  /// questions.
  core.bool? concierge;

  /// Concierge exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? conciergeException;

  /// Convenience store.
  ///
  /// A shop at the hotel primarily selling snacks, drinks, non-prescription
  /// medicines, health and beauty aids, magazines and newspapers.
  core.bool? convenienceStore;

  /// Convenience store exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? convenienceStoreException;

  /// Currency exchange.
  ///
  /// A staff member or automated machine tasked with the transaction of
  /// providing the native currency of the hotel's locale in exchange for the
  /// foreign currency provided by a guest.
  core.bool? currencyExchange;

  /// Currency exchange exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? currencyExchangeException;

  /// Elevator.
  ///
  /// A passenger elevator that transports guests from one story to another.
  /// Also known as lift.
  core.bool? elevator;

  /// Elevator exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? elevatorException;

  /// Front desk.
  ///
  /// A counter or desk in the lobby or the immediate interior of the hotel
  /// where a member of the staff greets guests and processes the information
  /// related to their stay (including check-in and check-out). May or may not
  /// be manned and open 24/7.
  core.bool? frontDesk;

  /// Front desk exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? frontDeskException;

  /// Full service laundry.
  ///
  /// Laundry and dry cleaning facilitated and handled by the hotel on behalf of
  /// the guest. Does not include the provision for guests to do their own
  /// laundry in on-site machines.
  core.bool? fullServiceLaundry;

  /// Full service laundry exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? fullServiceLaundryException;

  /// Gift shop.
  ///
  /// An on-site store primarily selling souvenirs, mementos and other gift
  /// items. May or may not also sell sundries, magazines and newspapers,
  /// clothing, or snacks.
  core.bool? giftShop;

  /// Gift shop exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? giftShopException;

  /// Languages spoken by at least one staff member.
  core.List<LanguageSpoken>? languagesSpoken;

  /// Self service laundry.
  ///
  /// On-site clothes washers and dryers accessible to guests for the purpose of
  /// washing and drying their own clothes. May or may not require payment to
  /// use the machines.
  core.bool? selfServiceLaundry;

  /// Self service laundry exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? selfServiceLaundryException;

  /// Social hour.
  ///
  /// A reception with complimentary soft drinks, tea, coffee, wine and/or
  /// cocktails in the afternoon or evening. Can be hosted by hotel staff or
  /// guests may serve themselves. Also known as wine hour. The availability of
  /// coffee/tea in the lobby throughout the day does not constitute a social or
  /// wine hour.
  core.bool? socialHour;

  /// Social hour exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? socialHourException;

  /// 24hr front desk.
  ///
  /// Front desk is staffed 24 hours a day.
  core.bool? twentyFourHourFrontDesk;

  /// 24hr front desk exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? twentyFourHourFrontDeskException;

  /// Wake up calls.
  ///
  /// By direction of the guest, a hotel staff member will phone the guest unit
  /// at the requested hour. Also known as morning call.
  core.bool? wakeUpCalls;

  /// Wake up calls exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? wakeUpCallsException;

  Services({
    this.baggageStorage,
    this.baggageStorageException,
    this.concierge,
    this.conciergeException,
    this.convenienceStore,
    this.convenienceStoreException,
    this.currencyExchange,
    this.currencyExchangeException,
    this.elevator,
    this.elevatorException,
    this.frontDesk,
    this.frontDeskException,
    this.fullServiceLaundry,
    this.fullServiceLaundryException,
    this.giftShop,
    this.giftShopException,
    this.languagesSpoken,
    this.selfServiceLaundry,
    this.selfServiceLaundryException,
    this.socialHour,
    this.socialHourException,
    this.twentyFourHourFrontDesk,
    this.twentyFourHourFrontDeskException,
    this.wakeUpCalls,
    this.wakeUpCallsException,
  });

  Services.fromJson(core.Map json_)
      : this(
          baggageStorage: json_.containsKey('baggageStorage')
              ? json_['baggageStorage'] as core.bool
              : null,
          baggageStorageException: json_.containsKey('baggageStorageException')
              ? json_['baggageStorageException'] as core.String
              : null,
          concierge: json_.containsKey('concierge')
              ? json_['concierge'] as core.bool
              : null,
          conciergeException: json_.containsKey('conciergeException')
              ? json_['conciergeException'] as core.String
              : null,
          convenienceStore: json_.containsKey('convenienceStore')
              ? json_['convenienceStore'] as core.bool
              : null,
          convenienceStoreException:
              json_.containsKey('convenienceStoreException')
                  ? json_['convenienceStoreException'] as core.String
                  : null,
          currencyExchange: json_.containsKey('currencyExchange')
              ? json_['currencyExchange'] as core.bool
              : null,
          currencyExchangeException:
              json_.containsKey('currencyExchangeException')
                  ? json_['currencyExchangeException'] as core.String
                  : null,
          elevator: json_.containsKey('elevator')
              ? json_['elevator'] as core.bool
              : null,
          elevatorException: json_.containsKey('elevatorException')
              ? json_['elevatorException'] as core.String
              : null,
          frontDesk: json_.containsKey('frontDesk')
              ? json_['frontDesk'] as core.bool
              : null,
          frontDeskException: json_.containsKey('frontDeskException')
              ? json_['frontDeskException'] as core.String
              : null,
          fullServiceLaundry: json_.containsKey('fullServiceLaundry')
              ? json_['fullServiceLaundry'] as core.bool
              : null,
          fullServiceLaundryException:
              json_.containsKey('fullServiceLaundryException')
                  ? json_['fullServiceLaundryException'] as core.String
                  : null,
          giftShop: json_.containsKey('giftShop')
              ? json_['giftShop'] as core.bool
              : null,
          giftShopException: json_.containsKey('giftShopException')
              ? json_['giftShopException'] as core.String
              : null,
          languagesSpoken: json_.containsKey('languagesSpoken')
              ? (json_['languagesSpoken'] as core.List)
                  .map((value) => LanguageSpoken.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          selfServiceLaundry: json_.containsKey('selfServiceLaundry')
              ? json_['selfServiceLaundry'] as core.bool
              : null,
          selfServiceLaundryException:
              json_.containsKey('selfServiceLaundryException')
                  ? json_['selfServiceLaundryException'] as core.String
                  : null,
          socialHour: json_.containsKey('socialHour')
              ? json_['socialHour'] as core.bool
              : null,
          socialHourException: json_.containsKey('socialHourException')
              ? json_['socialHourException'] as core.String
              : null,
          twentyFourHourFrontDesk: json_.containsKey('twentyFourHourFrontDesk')
              ? json_['twentyFourHourFrontDesk'] as core.bool
              : null,
          twentyFourHourFrontDeskException:
              json_.containsKey('twentyFourHourFrontDeskException')
                  ? json_['twentyFourHourFrontDeskException'] as core.String
                  : null,
          wakeUpCalls: json_.containsKey('wakeUpCalls')
              ? json_['wakeUpCalls'] as core.bool
              : null,
          wakeUpCallsException: json_.containsKey('wakeUpCallsException')
              ? json_['wakeUpCallsException'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baggageStorage != null) 'baggageStorage': baggageStorage!,
        if (baggageStorageException != null)
          'baggageStorageException': baggageStorageException!,
        if (concierge != null) 'concierge': concierge!,
        if (conciergeException != null)
          'conciergeException': conciergeException!,
        if (convenienceStore != null) 'convenienceStore': convenienceStore!,
        if (convenienceStoreException != null)
          'convenienceStoreException': convenienceStoreException!,
        if (currencyExchange != null) 'currencyExchange': currencyExchange!,
        if (currencyExchangeException != null)
          'currencyExchangeException': currencyExchangeException!,
        if (elevator != null) 'elevator': elevator!,
        if (elevatorException != null) 'elevatorException': elevatorException!,
        if (frontDesk != null) 'frontDesk': frontDesk!,
        if (frontDeskException != null)
          'frontDeskException': frontDeskException!,
        if (fullServiceLaundry != null)
          'fullServiceLaundry': fullServiceLaundry!,
        if (fullServiceLaundryException != null)
          'fullServiceLaundryException': fullServiceLaundryException!,
        if (giftShop != null) 'giftShop': giftShop!,
        if (giftShopException != null) 'giftShopException': giftShopException!,
        if (languagesSpoken != null) 'languagesSpoken': languagesSpoken!,
        if (selfServiceLaundry != null)
          'selfServiceLaundry': selfServiceLaundry!,
        if (selfServiceLaundryException != null)
          'selfServiceLaundryException': selfServiceLaundryException!,
        if (socialHour != null) 'socialHour': socialHour!,
        if (socialHourException != null)
          'socialHourException': socialHourException!,
        if (twentyFourHourFrontDesk != null)
          'twentyFourHourFrontDesk': twentyFourHourFrontDesk!,
        if (twentyFourHourFrontDeskException != null)
          'twentyFourHourFrontDeskException': twentyFourHourFrontDeskException!,
        if (wakeUpCalls != null) 'wakeUpCalls': wakeUpCalls!,
        if (wakeUpCallsException != null)
          'wakeUpCallsException': wakeUpCallsException!,
      };
}

/// Sustainability practices implemented at the hotel.
class Sustainability {
  /// Energy efficiency practices implemented at the hotel.
  EnergyEfficiency? energyEfficiency;

  /// Sustainability certifications the hotel has been awarded.
  SustainabilityCertifications? sustainabilityCertifications;

  /// Sustainable sourcing practices implemented at the hotel.
  SustainableSourcing? sustainableSourcing;

  /// Waste reduction practices implemented at the hotel.
  WasteReduction? wasteReduction;

  /// Water conservation practices implemented at the hotel.
  WaterConservation? waterConservation;

  Sustainability({
    this.energyEfficiency,
    this.sustainabilityCertifications,
    this.sustainableSourcing,
    this.wasteReduction,
    this.waterConservation,
  });

  Sustainability.fromJson(core.Map json_)
      : this(
          energyEfficiency: json_.containsKey('energyEfficiency')
              ? EnergyEfficiency.fromJson(json_['energyEfficiency']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sustainabilityCertifications:
              json_.containsKey('sustainabilityCertifications')
                  ? SustainabilityCertifications.fromJson(
                      json_['sustainabilityCertifications']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          sustainableSourcing: json_.containsKey('sustainableSourcing')
              ? SustainableSourcing.fromJson(json_['sustainableSourcing']
                  as core.Map<core.String, core.dynamic>)
              : null,
          wasteReduction: json_.containsKey('wasteReduction')
              ? WasteReduction.fromJson(json_['wasteReduction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          waterConservation: json_.containsKey('waterConservation')
              ? WaterConservation.fromJson(json_['waterConservation']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (energyEfficiency != null) 'energyEfficiency': energyEfficiency!,
        if (sustainabilityCertifications != null)
          'sustainabilityCertifications': sustainabilityCertifications!,
        if (sustainableSourcing != null)
          'sustainableSourcing': sustainableSourcing!,
        if (wasteReduction != null) 'wasteReduction': wasteReduction!,
        if (waterConservation != null) 'waterConservation': waterConservation!,
      };
}

/// Sustainability certifications the hotel has been awarded.
class SustainabilityCertifications {
  /// BREEAM certification.
  /// Possible string values are:
  /// - "BREEAM_CERTIFICATION_UNSPECIFIED" : Default BreeamCertification. Do not
  /// use.
  /// - "NO_BREEAM_CERTIFICATION" : Not certified.
  /// - "BREEAM_PASS" : BREEAM Pass.
  /// - "BREEAM_GOOD" : BREEAM Good.
  /// - "BREEAM_VERY_GOOD" : BREEAM Very Good.
  /// - "BREEAM_EXCELLENT" : BREEAM Excellent.
  /// - "BREEAM_OUTSTANDING" : BREEAM Outstanding.
  core.String? breeamCertification;

  /// BREEAM certification exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? breeamCertificationException;

  /// The eco certificates awarded to the hotel.
  core.List<EcoCertification>? ecoCertifications;

  /// LEED certification.
  /// Possible string values are:
  /// - "LEED_CERTIFICATION_UNSPECIFIED" : Default LeedCertification. Do not
  /// use.
  /// - "NO_LEED_CERTIFICATION" : Not certified.
  /// - "LEED_CERTIFIED" : LEED Certified.
  /// - "LEED_SILVER" : LEED Silver.
  /// - "LEED_GOLD" : LEED Gold.
  /// - "LEED_PLATINUM" : LEED Platinum.
  core.String? leedCertification;

  /// LEED certification exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? leedCertificationException;

  SustainabilityCertifications({
    this.breeamCertification,
    this.breeamCertificationException,
    this.ecoCertifications,
    this.leedCertification,
    this.leedCertificationException,
  });

  SustainabilityCertifications.fromJson(core.Map json_)
      : this(
          breeamCertification: json_.containsKey('breeamCertification')
              ? json_['breeamCertification'] as core.String
              : null,
          breeamCertificationException:
              json_.containsKey('breeamCertificationException')
                  ? json_['breeamCertificationException'] as core.String
                  : null,
          ecoCertifications: json_.containsKey('ecoCertifications')
              ? (json_['ecoCertifications'] as core.List)
                  .map((value) => EcoCertification.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          leedCertification: json_.containsKey('leedCertification')
              ? json_['leedCertification'] as core.String
              : null,
          leedCertificationException:
              json_.containsKey('leedCertificationException')
                  ? json_['leedCertificationException'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (breeamCertification != null)
          'breeamCertification': breeamCertification!,
        if (breeamCertificationException != null)
          'breeamCertificationException': breeamCertificationException!,
        if (ecoCertifications != null) 'ecoCertifications': ecoCertifications!,
        if (leedCertification != null) 'leedCertification': leedCertification!,
        if (leedCertificationException != null)
          'leedCertificationException': leedCertificationException!,
      };
}

/// Sustainable sourcing practices implemented at the hotel.
class SustainableSourcing {
  /// Eco friendly toiletries.
  ///
  /// Soap, shampoo, lotion, and other toiletries provided for guests have a
  /// nationally or internationally recognized sustainability certification,
  /// such as USDA Organic, EU Organic, or cruelty-free.
  core.bool? ecoFriendlyToiletries;

  /// Eco friendly toiletries exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? ecoFriendlyToiletriesException;

  /// Locally sourced food and beverages.
  ///
  /// Property sources locally in order to lower the environmental footprint
  /// from reduced transportation and to stimulate the local economy. Products
  /// produced less than 62 miles from the establishment are normally considered
  /// as locally produced.
  core.bool? locallySourcedFoodAndBeverages;

  /// Locally sourced food and beverages exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? locallySourcedFoodAndBeveragesException;

  /// Organic cage free eggs.
  ///
  /// The property sources 100% certified organic and cage-free eggs (shell,
  /// liquid, and egg products). Cage-free means hens are able to walk, spread
  /// their wings and lay their eggs in nests).
  core.bool? organicCageFreeEggs;

  /// Organic cage free eggs exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? organicCageFreeEggsException;

  /// Organic food and beverages.
  ///
  /// At least 25% of food and beverages, by spend, are certified organic.
  /// Organic means products that are certified to one of the organic standard
  /// listed in the IFOAM family of standards. Qualifying certifications include
  /// USDA Organic and EU Organic, among others.
  core.bool? organicFoodAndBeverages;

  /// Organic food and beverages exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? organicFoodAndBeveragesException;

  /// Responsible purchasing policy.
  ///
  /// The property has a responsible procurement policy in place. Responsible
  /// means integration of social, ethical, and/or environmental performance
  /// factors into the procurement process when selecting suppliers.
  core.bool? responsiblePurchasingPolicy;

  /// Responsible purchasing policy exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? responsiblePurchasingPolicyException;

  /// Responsibly sources seafood.
  ///
  /// The property does not source seafood from the Monterey Bay Aquarium
  /// Seafood Watch "avoid" list, and must sustainably source seafood listed as
  /// "good alternative," "eco-certified," and "best choice". The property has a
  /// policy outlining a commitment to source Marine Stewardship Council (MSC)
  /// and/or Aquaculture Stewardship Council (ASC) Chain of Custody certified
  /// seafood.
  core.bool? responsiblySourcesSeafood;

  /// Responsibly sources seafood exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? responsiblySourcesSeafoodException;

  /// Vegan meals.
  ///
  /// The property provides vegan menu options for guests. Vegan food does not
  /// contain animal products or byproducts.
  core.bool? veganMeals;

  /// Vegan meals exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? veganMealsException;

  /// Vegetarian meals.
  ///
  /// The property provides vegetarian menu options for guests. Vegetarian food
  /// does not contain meat, poultry, fish, or seafood.
  core.bool? vegetarianMeals;

  /// Vegetarian meals exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? vegetarianMealsException;

  SustainableSourcing({
    this.ecoFriendlyToiletries,
    this.ecoFriendlyToiletriesException,
    this.locallySourcedFoodAndBeverages,
    this.locallySourcedFoodAndBeveragesException,
    this.organicCageFreeEggs,
    this.organicCageFreeEggsException,
    this.organicFoodAndBeverages,
    this.organicFoodAndBeveragesException,
    this.responsiblePurchasingPolicy,
    this.responsiblePurchasingPolicyException,
    this.responsiblySourcesSeafood,
    this.responsiblySourcesSeafoodException,
    this.veganMeals,
    this.veganMealsException,
    this.vegetarianMeals,
    this.vegetarianMealsException,
  });

  SustainableSourcing.fromJson(core.Map json_)
      : this(
          ecoFriendlyToiletries: json_.containsKey('ecoFriendlyToiletries')
              ? json_['ecoFriendlyToiletries'] as core.bool
              : null,
          ecoFriendlyToiletriesException:
              json_.containsKey('ecoFriendlyToiletriesException')
                  ? json_['ecoFriendlyToiletriesException'] as core.String
                  : null,
          locallySourcedFoodAndBeverages:
              json_.containsKey('locallySourcedFoodAndBeverages')
                  ? json_['locallySourcedFoodAndBeverages'] as core.bool
                  : null,
          locallySourcedFoodAndBeveragesException: json_
                  .containsKey('locallySourcedFoodAndBeveragesException')
              ? json_['locallySourcedFoodAndBeveragesException'] as core.String
              : null,
          organicCageFreeEggs: json_.containsKey('organicCageFreeEggs')
              ? json_['organicCageFreeEggs'] as core.bool
              : null,
          organicCageFreeEggsException:
              json_.containsKey('organicCageFreeEggsException')
                  ? json_['organicCageFreeEggsException'] as core.String
                  : null,
          organicFoodAndBeverages: json_.containsKey('organicFoodAndBeverages')
              ? json_['organicFoodAndBeverages'] as core.bool
              : null,
          organicFoodAndBeveragesException:
              json_.containsKey('organicFoodAndBeveragesException')
                  ? json_['organicFoodAndBeveragesException'] as core.String
                  : null,
          responsiblePurchasingPolicy:
              json_.containsKey('responsiblePurchasingPolicy')
                  ? json_['responsiblePurchasingPolicy'] as core.bool
                  : null,
          responsiblePurchasingPolicyException:
              json_.containsKey('responsiblePurchasingPolicyException')
                  ? json_['responsiblePurchasingPolicyException'] as core.String
                  : null,
          responsiblySourcesSeafood:
              json_.containsKey('responsiblySourcesSeafood')
                  ? json_['responsiblySourcesSeafood'] as core.bool
                  : null,
          responsiblySourcesSeafoodException:
              json_.containsKey('responsiblySourcesSeafoodException')
                  ? json_['responsiblySourcesSeafoodException'] as core.String
                  : null,
          veganMeals: json_.containsKey('veganMeals')
              ? json_['veganMeals'] as core.bool
              : null,
          veganMealsException: json_.containsKey('veganMealsException')
              ? json_['veganMealsException'] as core.String
              : null,
          vegetarianMeals: json_.containsKey('vegetarianMeals')
              ? json_['vegetarianMeals'] as core.bool
              : null,
          vegetarianMealsException:
              json_.containsKey('vegetarianMealsException')
                  ? json_['vegetarianMealsException'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ecoFriendlyToiletries != null)
          'ecoFriendlyToiletries': ecoFriendlyToiletries!,
        if (ecoFriendlyToiletriesException != null)
          'ecoFriendlyToiletriesException': ecoFriendlyToiletriesException!,
        if (locallySourcedFoodAndBeverages != null)
          'locallySourcedFoodAndBeverages': locallySourcedFoodAndBeverages!,
        if (locallySourcedFoodAndBeveragesException != null)
          'locallySourcedFoodAndBeveragesException':
              locallySourcedFoodAndBeveragesException!,
        if (organicCageFreeEggs != null)
          'organicCageFreeEggs': organicCageFreeEggs!,
        if (organicCageFreeEggsException != null)
          'organicCageFreeEggsException': organicCageFreeEggsException!,
        if (organicFoodAndBeverages != null)
          'organicFoodAndBeverages': organicFoodAndBeverages!,
        if (organicFoodAndBeveragesException != null)
          'organicFoodAndBeveragesException': organicFoodAndBeveragesException!,
        if (responsiblePurchasingPolicy != null)
          'responsiblePurchasingPolicy': responsiblePurchasingPolicy!,
        if (responsiblePurchasingPolicyException != null)
          'responsiblePurchasingPolicyException':
              responsiblePurchasingPolicyException!,
        if (responsiblySourcesSeafood != null)
          'responsiblySourcesSeafood': responsiblySourcesSeafood!,
        if (responsiblySourcesSeafoodException != null)
          'responsiblySourcesSeafoodException':
              responsiblySourcesSeafoodException!,
        if (veganMeals != null) 'veganMeals': veganMeals!,
        if (veganMealsException != null)
          'veganMealsException': veganMealsException!,
        if (vegetarianMeals != null) 'vegetarianMeals': vegetarianMeals!,
        if (vegetarianMealsException != null)
          'vegetarianMealsException': vegetarianMealsException!,
      };
}

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
typedef TimeOfDay = $TimeOfDay;

/// Vehicles or vehicular services facilitated or owned by the property.
class Transportation {
  /// Airport shuttle.
  ///
  /// The hotel provides guests with a chauffeured van or bus to and from the
  /// airport. Can be free or for a fee. Guests may share the vehicle with other
  /// guests unknown to them. Applies if the hotel has a third-party shuttle
  /// service (office/desk etc.) within the hotel. As long as hotel provides
  /// this service, it doesn't matter if it's directly with them or a third
  /// party they work with. Does not apply if guest has to coordinate with an
  /// entity outside/other than the hotel.
  core.bool? airportShuttle;

  /// Airport shuttle exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? airportShuttleException;

  /// Car rental on property.
  ///
  /// A branch of a rental car company with a processing desk in the hotel.
  /// Available cars for rent may be awaiting at the hotel or in a nearby lot.
  core.bool? carRentalOnProperty;

  /// Car rental on property exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? carRentalOnPropertyException;

  /// Free airport shuttle.
  ///
  /// Airport shuttle is free to guests. Must be free to all guests without any
  /// conditions.
  core.bool? freeAirportShuttle;

  /// Free airport shuttle exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? freeAirportShuttleException;

  /// Free private car service.
  ///
  /// Private chauffeured car service is free to guests.
  core.bool? freePrivateCarService;

  /// Free private car service exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? freePrivateCarServiceException;

  /// Local shuttle.
  ///
  /// A car, van or bus provided by the hotel to transport guests to
  /// destinations within a specified range of distance around the hotel.
  /// Usually shopping and/or convention centers, downtown districts, or
  /// beaches. Can be free or for a fee.
  core.bool? localShuttle;

  /// Local shuttle exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? localShuttleException;

  /// Private car service.
  ///
  /// Hotel provides a private chauffeured car to transport guests to
  /// destinations. Passengers in the car are either alone or are known to one
  /// another and have requested the car together. Service can be free or for a
  /// fee and travel distance is usually limited to a specific range. Not a
  /// taxi.
  core.bool? privateCarService;

  /// Private car service exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? privateCarServiceException;

  /// Transfer.
  ///
  /// Hotel provides a shuttle service or car service to take guests to and from
  /// the nearest airport or train station. Can be free or for a fee. Guests may
  /// share the vehicle with other guests unknown to them.
  core.bool? transfer;

  /// Transfer exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? transferException;

  Transportation({
    this.airportShuttle,
    this.airportShuttleException,
    this.carRentalOnProperty,
    this.carRentalOnPropertyException,
    this.freeAirportShuttle,
    this.freeAirportShuttleException,
    this.freePrivateCarService,
    this.freePrivateCarServiceException,
    this.localShuttle,
    this.localShuttleException,
    this.privateCarService,
    this.privateCarServiceException,
    this.transfer,
    this.transferException,
  });

  Transportation.fromJson(core.Map json_)
      : this(
          airportShuttle: json_.containsKey('airportShuttle')
              ? json_['airportShuttle'] as core.bool
              : null,
          airportShuttleException: json_.containsKey('airportShuttleException')
              ? json_['airportShuttleException'] as core.String
              : null,
          carRentalOnProperty: json_.containsKey('carRentalOnProperty')
              ? json_['carRentalOnProperty'] as core.bool
              : null,
          carRentalOnPropertyException:
              json_.containsKey('carRentalOnPropertyException')
                  ? json_['carRentalOnPropertyException'] as core.String
                  : null,
          freeAirportShuttle: json_.containsKey('freeAirportShuttle')
              ? json_['freeAirportShuttle'] as core.bool
              : null,
          freeAirportShuttleException:
              json_.containsKey('freeAirportShuttleException')
                  ? json_['freeAirportShuttleException'] as core.String
                  : null,
          freePrivateCarService: json_.containsKey('freePrivateCarService')
              ? json_['freePrivateCarService'] as core.bool
              : null,
          freePrivateCarServiceException:
              json_.containsKey('freePrivateCarServiceException')
                  ? json_['freePrivateCarServiceException'] as core.String
                  : null,
          localShuttle: json_.containsKey('localShuttle')
              ? json_['localShuttle'] as core.bool
              : null,
          localShuttleException: json_.containsKey('localShuttleException')
              ? json_['localShuttleException'] as core.String
              : null,
          privateCarService: json_.containsKey('privateCarService')
              ? json_['privateCarService'] as core.bool
              : null,
          privateCarServiceException:
              json_.containsKey('privateCarServiceException')
                  ? json_['privateCarServiceException'] as core.String
                  : null,
          transfer: json_.containsKey('transfer')
              ? json_['transfer'] as core.bool
              : null,
          transferException: json_.containsKey('transferException')
              ? json_['transferException'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (airportShuttle != null) 'airportShuttle': airportShuttle!,
        if (airportShuttleException != null)
          'airportShuttleException': airportShuttleException!,
        if (carRentalOnProperty != null)
          'carRentalOnProperty': carRentalOnProperty!,
        if (carRentalOnPropertyException != null)
          'carRentalOnPropertyException': carRentalOnPropertyException!,
        if (freeAirportShuttle != null)
          'freeAirportShuttle': freeAirportShuttle!,
        if (freeAirportShuttleException != null)
          'freeAirportShuttleException': freeAirportShuttleException!,
        if (freePrivateCarService != null)
          'freePrivateCarService': freePrivateCarService!,
        if (freePrivateCarServiceException != null)
          'freePrivateCarServiceException': freePrivateCarServiceException!,
        if (localShuttle != null) 'localShuttle': localShuttle!,
        if (localShuttleException != null)
          'localShuttleException': localShuttleException!,
        if (privateCarService != null) 'privateCarService': privateCarService!,
        if (privateCarServiceException != null)
          'privateCarServiceException': privateCarServiceException!,
        if (transfer != null) 'transfer': transfer!,
        if (transferException != null) 'transferException': transferException!,
      };
}

/// Views available from the guest unit itself.
class ViewsFromUnit {
  /// Beach view.
  ///
  /// A guestroom that features a window through which guests can see the beach.
  core.bool? beachView;

  /// Beach view exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? beachViewException;

  /// City view.
  ///
  /// A guestroom that features a window through which guests can see the
  /// buildings, parks and/or streets of the city.
  core.bool? cityView;

  /// City view exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? cityViewException;

  /// Garden view.
  ///
  /// A guestroom that features a window through which guests can see a garden.
  core.bool? gardenView;

  /// Garden view exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? gardenViewException;

  /// Lake view.
  core.bool? lakeView;

  /// Lake view exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? lakeViewException;

  /// Landmark view.
  ///
  /// A guestroom that features a window through which guests can see a landmark
  /// such as the countryside, a golf course, the forest, a park, a rain forst,
  /// a mountain or a slope.
  core.bool? landmarkView;

  /// Landmark view exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? landmarkViewException;

  /// Ocean view.
  ///
  /// A guestroom that features a window through which guests can see the ocean.
  core.bool? oceanView;

  /// Ocean view exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? oceanViewException;

  /// Pool view.
  ///
  /// A guestroom that features a window through which guests can see the
  /// hotel's swimming pool.
  core.bool? poolView;

  /// Pool view exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? poolViewException;

  /// Valley view.
  ///
  /// A guestroom that features a window through which guests can see over a
  /// valley.
  core.bool? valleyView;

  /// Valley view exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? valleyViewException;

  ViewsFromUnit({
    this.beachView,
    this.beachViewException,
    this.cityView,
    this.cityViewException,
    this.gardenView,
    this.gardenViewException,
    this.lakeView,
    this.lakeViewException,
    this.landmarkView,
    this.landmarkViewException,
    this.oceanView,
    this.oceanViewException,
    this.poolView,
    this.poolViewException,
    this.valleyView,
    this.valleyViewException,
  });

  ViewsFromUnit.fromJson(core.Map json_)
      : this(
          beachView: json_.containsKey('beachView')
              ? json_['beachView'] as core.bool
              : null,
          beachViewException: json_.containsKey('beachViewException')
              ? json_['beachViewException'] as core.String
              : null,
          cityView: json_.containsKey('cityView')
              ? json_['cityView'] as core.bool
              : null,
          cityViewException: json_.containsKey('cityViewException')
              ? json_['cityViewException'] as core.String
              : null,
          gardenView: json_.containsKey('gardenView')
              ? json_['gardenView'] as core.bool
              : null,
          gardenViewException: json_.containsKey('gardenViewException')
              ? json_['gardenViewException'] as core.String
              : null,
          lakeView: json_.containsKey('lakeView')
              ? json_['lakeView'] as core.bool
              : null,
          lakeViewException: json_.containsKey('lakeViewException')
              ? json_['lakeViewException'] as core.String
              : null,
          landmarkView: json_.containsKey('landmarkView')
              ? json_['landmarkView'] as core.bool
              : null,
          landmarkViewException: json_.containsKey('landmarkViewException')
              ? json_['landmarkViewException'] as core.String
              : null,
          oceanView: json_.containsKey('oceanView')
              ? json_['oceanView'] as core.bool
              : null,
          oceanViewException: json_.containsKey('oceanViewException')
              ? json_['oceanViewException'] as core.String
              : null,
          poolView: json_.containsKey('poolView')
              ? json_['poolView'] as core.bool
              : null,
          poolViewException: json_.containsKey('poolViewException')
              ? json_['poolViewException'] as core.String
              : null,
          valleyView: json_.containsKey('valleyView')
              ? json_['valleyView'] as core.bool
              : null,
          valleyViewException: json_.containsKey('valleyViewException')
              ? json_['valleyViewException'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (beachView != null) 'beachView': beachView!,
        if (beachViewException != null)
          'beachViewException': beachViewException!,
        if (cityView != null) 'cityView': cityView!,
        if (cityViewException != null) 'cityViewException': cityViewException!,
        if (gardenView != null) 'gardenView': gardenView!,
        if (gardenViewException != null)
          'gardenViewException': gardenViewException!,
        if (lakeView != null) 'lakeView': lakeView!,
        if (lakeViewException != null) 'lakeViewException': lakeViewException!,
        if (landmarkView != null) 'landmarkView': landmarkView!,
        if (landmarkViewException != null)
          'landmarkViewException': landmarkViewException!,
        if (oceanView != null) 'oceanView': oceanView!,
        if (oceanViewException != null)
          'oceanViewException': oceanViewException!,
        if (poolView != null) 'poolView': poolView!,
        if (poolViewException != null) 'poolViewException': poolViewException!,
        if (valleyView != null) 'valleyView': valleyView!,
        if (valleyViewException != null)
          'valleyViewException': valleyViewException!,
      };
}

/// Waste reduction practices implemented at the hotel.
class WasteReduction {
  /// Compostable food containers and cutlery.
  ///
  /// 100% of food service containers and to-go cutlery are compostable, and
  /// reusable utensils are offered wherever possible. Compostable materials are
  /// capable of undergoing biological decomposition in a compost site, such
  /// that material is not visually distinguishable and breaks down into carbon
  /// dioxide, water, inorganic compounds, and biomass.
  core.bool? compostableFoodContainersAndCutlery;

  /// Compostable food containers and cutlery exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? compostableFoodContainersAndCutleryException;

  /// Composts excess food.
  ///
  /// The property has a program and/or policy for diverting waste from landfill
  /// by composting food and yard waste, either through compost collection and
  /// off-site processing or on-site compost processing.
  core.bool? compostsExcessFood;

  /// Composts excess food exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? compostsExcessFoodException;

  /// Donates excess food.
  ///
  /// The property has a program and/or policy for diverting waste from landfill
  /// that may include efforts to donate for human consumption or divert food
  /// for animal feed.
  core.bool? donatesExcessFood;

  /// Donates excess food exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? donatesExcessFoodException;

  /// Food waste reduction program.
  ///
  /// The property has established a food waste reduction and donation program,
  /// aiming to reduce food waste by half. These programs typically use tools
  /// such as the Hotel Kitchen Toolkit and others to track waste and measure
  /// progress.
  core.bool? foodWasteReductionProgram;

  /// Food waste reduction program exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? foodWasteReductionProgramException;

  /// No single use plastic straws.
  ///
  /// The property bans single-use plastic straws.
  core.bool? noSingleUsePlasticStraws;

  /// No single use plastic straws exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? noSingleUsePlasticStrawsException;

  /// No single use plastic water bottles.
  ///
  /// The property bans single-use plastic water bottles.
  core.bool? noSingleUsePlasticWaterBottles;

  /// No single use plastic water bottles exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? noSingleUsePlasticWaterBottlesException;

  /// No styrofoam food containers.
  ///
  /// The property eliminates the use of Styrofoam in disposable food service
  /// items.
  core.bool? noStyrofoamFoodContainers;

  /// No styrofoam food containers exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? noStyrofoamFoodContainersException;

  /// Recycling program.
  ///
  /// The property has a recycling program, aligned with LEED waste
  /// requirements, and a policy outlining efforts to send less than 50% of
  /// waste to landfill. The recycling program includes storage locations for
  /// recyclable materials, including mixed paper, corrugated cardboard, glass,
  /// plastics, and metals.
  core.bool? recyclingProgram;

  /// Recycling program exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? recyclingProgramException;

  /// Refillable toiletry containers.
  ///
  /// The property has replaced miniature individual containers with refillable
  /// amenity dispensers for shampoo, conditioner, soap, and lotion.
  core.bool? refillableToiletryContainers;

  /// Refillable toiletry containers exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? refillableToiletryContainersException;

  /// Safely disposes batteries.
  ///
  /// The property safely stores and disposes batteries.
  core.bool? safelyDisposesBatteries;

  /// Safely disposes batteries exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? safelyDisposesBatteriesException;

  /// Safely disposes electronics.
  ///
  /// The property has a reputable recycling program that keeps hazardous
  /// electronic parts and chemical compounds out of landfills, dumps and other
  /// unauthorized abandonment sites, and recycles/reuses applicable materials.
  /// (e.g. certified electronics recyclers).
  core.bool? safelyDisposesElectronics;

  /// Safely disposes electronics exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? safelyDisposesElectronicsException;

  /// Safely disposes lightbulbs.
  ///
  /// The property safely stores and disposes lightbulbs.
  core.bool? safelyDisposesLightbulbs;

  /// Safely disposes lightbulbs exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? safelyDisposesLightbulbsException;

  /// Safely handles hazardous substances.
  ///
  /// The property has a hazardous waste management program aligned wit
  /// GreenSeal and LEED requirements, and meets all regulatory requirements for
  /// hazardous waste disposal and recycling. Hazardous means substances that
  /// are classified as "hazardous" by an authoritative body (such as OSHA or
  /// DOT), are labeled with signal words such as "Danger," "Caution,"
  /// "Warning," or are flammable, corrosive, or ignitable. Requirements
  /// include: - The property shall maintain records of the efforts it has made
  /// to replace the hazardous substances it uses with less hazardous
  /// alternatives. - An inventory of the hazardous materials stored on-site. -
  /// Products intended for cleaning, dishwashing, laundry, and pool maintenance
  /// shall be stored in clearly labeled containers. These containers shall be
  /// checked regularly for leaks, and replaced a necessary. - Spill containment
  /// devices shall be installed to collect spills, drips, or leaching of
  /// chemicals.
  core.bool? safelyHandlesHazardousSubstances;

  /// Safely handles hazardous substances exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? safelyHandlesHazardousSubstancesException;

  /// Soap donation program.
  ///
  /// The property participates in a soap donation program such as Clean the
  /// World or something similar.
  core.bool? soapDonationProgram;

  /// Soap donation program exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? soapDonationProgramException;

  /// Toiletry donation program.
  ///
  /// The property participates in a toiletry donation program such as Clean the
  /// World or something similar.
  core.bool? toiletryDonationProgram;

  /// Toiletry donation program exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? toiletryDonationProgramException;

  /// Water bottle filling stations.
  ///
  /// The property offers water stations throughout the building for guest use.
  core.bool? waterBottleFillingStations;

  /// Water bottle filling stations exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? waterBottleFillingStationsException;

  WasteReduction({
    this.compostableFoodContainersAndCutlery,
    this.compostableFoodContainersAndCutleryException,
    this.compostsExcessFood,
    this.compostsExcessFoodException,
    this.donatesExcessFood,
    this.donatesExcessFoodException,
    this.foodWasteReductionProgram,
    this.foodWasteReductionProgramException,
    this.noSingleUsePlasticStraws,
    this.noSingleUsePlasticStrawsException,
    this.noSingleUsePlasticWaterBottles,
    this.noSingleUsePlasticWaterBottlesException,
    this.noStyrofoamFoodContainers,
    this.noStyrofoamFoodContainersException,
    this.recyclingProgram,
    this.recyclingProgramException,
    this.refillableToiletryContainers,
    this.refillableToiletryContainersException,
    this.safelyDisposesBatteries,
    this.safelyDisposesBatteriesException,
    this.safelyDisposesElectronics,
    this.safelyDisposesElectronicsException,
    this.safelyDisposesLightbulbs,
    this.safelyDisposesLightbulbsException,
    this.safelyHandlesHazardousSubstances,
    this.safelyHandlesHazardousSubstancesException,
    this.soapDonationProgram,
    this.soapDonationProgramException,
    this.toiletryDonationProgram,
    this.toiletryDonationProgramException,
    this.waterBottleFillingStations,
    this.waterBottleFillingStationsException,
  });

  WasteReduction.fromJson(core.Map json_)
      : this(
          compostableFoodContainersAndCutlery:
              json_.containsKey('compostableFoodContainersAndCutlery')
                  ? json_['compostableFoodContainersAndCutlery'] as core.bool
                  : null,
          compostableFoodContainersAndCutleryException:
              json_.containsKey('compostableFoodContainersAndCutleryException')
                  ? json_['compostableFoodContainersAndCutleryException']
                      as core.String
                  : null,
          compostsExcessFood: json_.containsKey('compostsExcessFood')
              ? json_['compostsExcessFood'] as core.bool
              : null,
          compostsExcessFoodException:
              json_.containsKey('compostsExcessFoodException')
                  ? json_['compostsExcessFoodException'] as core.String
                  : null,
          donatesExcessFood: json_.containsKey('donatesExcessFood')
              ? json_['donatesExcessFood'] as core.bool
              : null,
          donatesExcessFoodException:
              json_.containsKey('donatesExcessFoodException')
                  ? json_['donatesExcessFoodException'] as core.String
                  : null,
          foodWasteReductionProgram:
              json_.containsKey('foodWasteReductionProgram')
                  ? json_['foodWasteReductionProgram'] as core.bool
                  : null,
          foodWasteReductionProgramException:
              json_.containsKey('foodWasteReductionProgramException')
                  ? json_['foodWasteReductionProgramException'] as core.String
                  : null,
          noSingleUsePlasticStraws:
              json_.containsKey('noSingleUsePlasticStraws')
                  ? json_['noSingleUsePlasticStraws'] as core.bool
                  : null,
          noSingleUsePlasticStrawsException:
              json_.containsKey('noSingleUsePlasticStrawsException')
                  ? json_['noSingleUsePlasticStrawsException'] as core.String
                  : null,
          noSingleUsePlasticWaterBottles:
              json_.containsKey('noSingleUsePlasticWaterBottles')
                  ? json_['noSingleUsePlasticWaterBottles'] as core.bool
                  : null,
          noSingleUsePlasticWaterBottlesException: json_
                  .containsKey('noSingleUsePlasticWaterBottlesException')
              ? json_['noSingleUsePlasticWaterBottlesException'] as core.String
              : null,
          noStyrofoamFoodContainers:
              json_.containsKey('noStyrofoamFoodContainers')
                  ? json_['noStyrofoamFoodContainers'] as core.bool
                  : null,
          noStyrofoamFoodContainersException:
              json_.containsKey('noStyrofoamFoodContainersException')
                  ? json_['noStyrofoamFoodContainersException'] as core.String
                  : null,
          recyclingProgram: json_.containsKey('recyclingProgram')
              ? json_['recyclingProgram'] as core.bool
              : null,
          recyclingProgramException:
              json_.containsKey('recyclingProgramException')
                  ? json_['recyclingProgramException'] as core.String
                  : null,
          refillableToiletryContainers:
              json_.containsKey('refillableToiletryContainers')
                  ? json_['refillableToiletryContainers'] as core.bool
                  : null,
          refillableToiletryContainersException: json_
                  .containsKey('refillableToiletryContainersException')
              ? json_['refillableToiletryContainersException'] as core.String
              : null,
          safelyDisposesBatteries: json_.containsKey('safelyDisposesBatteries')
              ? json_['safelyDisposesBatteries'] as core.bool
              : null,
          safelyDisposesBatteriesException:
              json_.containsKey('safelyDisposesBatteriesException')
                  ? json_['safelyDisposesBatteriesException'] as core.String
                  : null,
          safelyDisposesElectronics:
              json_.containsKey('safelyDisposesElectronics')
                  ? json_['safelyDisposesElectronics'] as core.bool
                  : null,
          safelyDisposesElectronicsException:
              json_.containsKey('safelyDisposesElectronicsException')
                  ? json_['safelyDisposesElectronicsException'] as core.String
                  : null,
          safelyDisposesLightbulbs:
              json_.containsKey('safelyDisposesLightbulbs')
                  ? json_['safelyDisposesLightbulbs'] as core.bool
                  : null,
          safelyDisposesLightbulbsException:
              json_.containsKey('safelyDisposesLightbulbsException')
                  ? json_['safelyDisposesLightbulbsException'] as core.String
                  : null,
          safelyHandlesHazardousSubstances:
              json_.containsKey('safelyHandlesHazardousSubstances')
                  ? json_['safelyHandlesHazardousSubstances'] as core.bool
                  : null,
          safelyHandlesHazardousSubstancesException:
              json_.containsKey('safelyHandlesHazardousSubstancesException')
                  ? json_['safelyHandlesHazardousSubstancesException']
                      as core.String
                  : null,
          soapDonationProgram: json_.containsKey('soapDonationProgram')
              ? json_['soapDonationProgram'] as core.bool
              : null,
          soapDonationProgramException:
              json_.containsKey('soapDonationProgramException')
                  ? json_['soapDonationProgramException'] as core.String
                  : null,
          toiletryDonationProgram: json_.containsKey('toiletryDonationProgram')
              ? json_['toiletryDonationProgram'] as core.bool
              : null,
          toiletryDonationProgramException:
              json_.containsKey('toiletryDonationProgramException')
                  ? json_['toiletryDonationProgramException'] as core.String
                  : null,
          waterBottleFillingStations:
              json_.containsKey('waterBottleFillingStations')
                  ? json_['waterBottleFillingStations'] as core.bool
                  : null,
          waterBottleFillingStationsException:
              json_.containsKey('waterBottleFillingStationsException')
                  ? json_['waterBottleFillingStationsException'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compostableFoodContainersAndCutlery != null)
          'compostableFoodContainersAndCutlery':
              compostableFoodContainersAndCutlery!,
        if (compostableFoodContainersAndCutleryException != null)
          'compostableFoodContainersAndCutleryException':
              compostableFoodContainersAndCutleryException!,
        if (compostsExcessFood != null)
          'compostsExcessFood': compostsExcessFood!,
        if (compostsExcessFoodException != null)
          'compostsExcessFoodException': compostsExcessFoodException!,
        if (donatesExcessFood != null) 'donatesExcessFood': donatesExcessFood!,
        if (donatesExcessFoodException != null)
          'donatesExcessFoodException': donatesExcessFoodException!,
        if (foodWasteReductionProgram != null)
          'foodWasteReductionProgram': foodWasteReductionProgram!,
        if (foodWasteReductionProgramException != null)
          'foodWasteReductionProgramException':
              foodWasteReductionProgramException!,
        if (noSingleUsePlasticStraws != null)
          'noSingleUsePlasticStraws': noSingleUsePlasticStraws!,
        if (noSingleUsePlasticStrawsException != null)
          'noSingleUsePlasticStrawsException':
              noSingleUsePlasticStrawsException!,
        if (noSingleUsePlasticWaterBottles != null)
          'noSingleUsePlasticWaterBottles': noSingleUsePlasticWaterBottles!,
        if (noSingleUsePlasticWaterBottlesException != null)
          'noSingleUsePlasticWaterBottlesException':
              noSingleUsePlasticWaterBottlesException!,
        if (noStyrofoamFoodContainers != null)
          'noStyrofoamFoodContainers': noStyrofoamFoodContainers!,
        if (noStyrofoamFoodContainersException != null)
          'noStyrofoamFoodContainersException':
              noStyrofoamFoodContainersException!,
        if (recyclingProgram != null) 'recyclingProgram': recyclingProgram!,
        if (recyclingProgramException != null)
          'recyclingProgramException': recyclingProgramException!,
        if (refillableToiletryContainers != null)
          'refillableToiletryContainers': refillableToiletryContainers!,
        if (refillableToiletryContainersException != null)
          'refillableToiletryContainersException':
              refillableToiletryContainersException!,
        if (safelyDisposesBatteries != null)
          'safelyDisposesBatteries': safelyDisposesBatteries!,
        if (safelyDisposesBatteriesException != null)
          'safelyDisposesBatteriesException': safelyDisposesBatteriesException!,
        if (safelyDisposesElectronics != null)
          'safelyDisposesElectronics': safelyDisposesElectronics!,
        if (safelyDisposesElectronicsException != null)
          'safelyDisposesElectronicsException':
              safelyDisposesElectronicsException!,
        if (safelyDisposesLightbulbs != null)
          'safelyDisposesLightbulbs': safelyDisposesLightbulbs!,
        if (safelyDisposesLightbulbsException != null)
          'safelyDisposesLightbulbsException':
              safelyDisposesLightbulbsException!,
        if (safelyHandlesHazardousSubstances != null)
          'safelyHandlesHazardousSubstances': safelyHandlesHazardousSubstances!,
        if (safelyHandlesHazardousSubstancesException != null)
          'safelyHandlesHazardousSubstancesException':
              safelyHandlesHazardousSubstancesException!,
        if (soapDonationProgram != null)
          'soapDonationProgram': soapDonationProgram!,
        if (soapDonationProgramException != null)
          'soapDonationProgramException': soapDonationProgramException!,
        if (toiletryDonationProgram != null)
          'toiletryDonationProgram': toiletryDonationProgram!,
        if (toiletryDonationProgramException != null)
          'toiletryDonationProgramException': toiletryDonationProgramException!,
        if (waterBottleFillingStations != null)
          'waterBottleFillingStations': waterBottleFillingStations!,
        if (waterBottleFillingStationsException != null)
          'waterBottleFillingStationsException':
              waterBottleFillingStationsException!,
      };
}

/// Water conservation practices implemented at the hotel.
class WaterConservation {
  /// Independent organization audits water use.
  ///
  /// The property conducts a water conservation audit every 5 years, the
  /// results of which are either verified by a third-party and/or published in
  /// external communications. A water conservation audit is a detailed
  /// assessment of the facility, providing recommendations to existing
  /// operations and procedures to improve water efficiency, available
  /// incentives or rebates, and opportunities for improvements through
  /// renovations or upgrades. Examples of organizations who conduct credible
  /// third party audits include: Engie Impact, and local utility providers
  /// (they often provide energy and water audits).
  core.bool? independentOrganizationAuditsWaterUse;

  /// Independent organization audits water use exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? independentOrganizationAuditsWaterUseException;

  /// Linen reuse program.
  ///
  /// The property offers a linen reuse program.
  core.bool? linenReuseProgram;

  /// Linen reuse program exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? linenReuseProgramException;

  /// Towel reuse program.
  ///
  /// The property offers a towel reuse program.
  core.bool? towelReuseProgram;

  /// Towel reuse program exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? towelReuseProgramException;

  /// Water saving showers.
  ///
  /// All of the property's guest rooms have shower heads that use no more than
  /// 2.0 gallons per minute (gpm).
  core.bool? waterSavingShowers;

  /// Water saving showers exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? waterSavingShowersException;

  /// Water saving sinks.
  ///
  /// All of the property's guest rooms have bathroom faucets that use a maximum
  /// of 1.5 gallons per minute (gpm), public restroom faucets do not exceed 0.5
  /// gpm, and kitchen faucets (excluding faucets used exclusively for filling
  /// operations) do not exceed 2.2 gpm.
  core.bool? waterSavingSinks;

  /// Water saving sinks exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? waterSavingSinksException;

  /// Water saving toilets.
  ///
  /// All of the property's toilets use 1.6 gallons per flush, or less.
  core.bool? waterSavingToilets;

  /// Water saving toilets exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? waterSavingToiletsException;

  WaterConservation({
    this.independentOrganizationAuditsWaterUse,
    this.independentOrganizationAuditsWaterUseException,
    this.linenReuseProgram,
    this.linenReuseProgramException,
    this.towelReuseProgram,
    this.towelReuseProgramException,
    this.waterSavingShowers,
    this.waterSavingShowersException,
    this.waterSavingSinks,
    this.waterSavingSinksException,
    this.waterSavingToilets,
    this.waterSavingToiletsException,
  });

  WaterConservation.fromJson(core.Map json_)
      : this(
          independentOrganizationAuditsWaterUse:
              json_.containsKey('independentOrganizationAuditsWaterUse')
                  ? json_['independentOrganizationAuditsWaterUse'] as core.bool
                  : null,
          independentOrganizationAuditsWaterUseException: json_
                  .containsKey('independentOrganizationAuditsWaterUseException')
              ? json_['independentOrganizationAuditsWaterUseException']
                  as core.String
              : null,
          linenReuseProgram: json_.containsKey('linenReuseProgram')
              ? json_['linenReuseProgram'] as core.bool
              : null,
          linenReuseProgramException:
              json_.containsKey('linenReuseProgramException')
                  ? json_['linenReuseProgramException'] as core.String
                  : null,
          towelReuseProgram: json_.containsKey('towelReuseProgram')
              ? json_['towelReuseProgram'] as core.bool
              : null,
          towelReuseProgramException:
              json_.containsKey('towelReuseProgramException')
                  ? json_['towelReuseProgramException'] as core.String
                  : null,
          waterSavingShowers: json_.containsKey('waterSavingShowers')
              ? json_['waterSavingShowers'] as core.bool
              : null,
          waterSavingShowersException:
              json_.containsKey('waterSavingShowersException')
                  ? json_['waterSavingShowersException'] as core.String
                  : null,
          waterSavingSinks: json_.containsKey('waterSavingSinks')
              ? json_['waterSavingSinks'] as core.bool
              : null,
          waterSavingSinksException:
              json_.containsKey('waterSavingSinksException')
                  ? json_['waterSavingSinksException'] as core.String
                  : null,
          waterSavingToilets: json_.containsKey('waterSavingToilets')
              ? json_['waterSavingToilets'] as core.bool
              : null,
          waterSavingToiletsException:
              json_.containsKey('waterSavingToiletsException')
                  ? json_['waterSavingToiletsException'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (independentOrganizationAuditsWaterUse != null)
          'independentOrganizationAuditsWaterUse':
              independentOrganizationAuditsWaterUse!,
        if (independentOrganizationAuditsWaterUseException != null)
          'independentOrganizationAuditsWaterUseException':
              independentOrganizationAuditsWaterUseException!,
        if (linenReuseProgram != null) 'linenReuseProgram': linenReuseProgram!,
        if (linenReuseProgramException != null)
          'linenReuseProgramException': linenReuseProgramException!,
        if (towelReuseProgram != null) 'towelReuseProgram': towelReuseProgram!,
        if (towelReuseProgramException != null)
          'towelReuseProgramException': towelReuseProgramException!,
        if (waterSavingShowers != null)
          'waterSavingShowers': waterSavingShowers!,
        if (waterSavingShowersException != null)
          'waterSavingShowersException': waterSavingShowersException!,
        if (waterSavingSinks != null) 'waterSavingSinks': waterSavingSinks!,
        if (waterSavingSinksException != null)
          'waterSavingSinksException': waterSavingSinksException!,
        if (waterSavingToilets != null)
          'waterSavingToilets': waterSavingToilets!,
        if (waterSavingToiletsException != null)
          'waterSavingToiletsException': waterSavingToiletsException!,
      };
}

/// Guest facilities at the property to promote or maintain health, beauty, and
/// fitness.
class Wellness {
  /// Doctor on call.
  ///
  /// The hotel has a contract with a medical professional who provides services
  /// to hotel guests should they fall ill during their stay. The doctor may or
  /// may not have an on-site office or be at the hotel at all times.
  core.bool? doctorOnCall;

  /// Doctor on call exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? doctorOnCallException;

  /// Elliptical machine.
  ///
  /// An electric, stationary fitness machine with pedals that simulates
  /// climbing, walking or running and provides a user-controlled range of
  /// speeds and tensions. May not have arm-controlled levers to work out the
  /// upper body as well. Commonly found in a gym, fitness room, health center,
  /// or health club.
  core.bool? ellipticalMachine;

  /// Elliptical machine exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? ellipticalMachineException;

  /// Fitness center.
  ///
  /// A room or building at the hotel containing equipment to promote physical
  /// activity, such as treadmills, elliptical machines, stationary bikes,
  /// weight machines, free weights, and/or stretching mats. Use of the fitness
  /// center can be free or for a fee. May or may not be staffed. May or may not
  /// offer instructor-led classes in various styles of physical conditioning.
  /// May or may not be open 24/7. May or may not include locker rooms and
  /// showers. Also known as health club, gym, fitness room, health center.
  core.bool? fitnessCenter;

  /// Fitness center exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? fitnessCenterException;

  /// Free fitness center.
  ///
  /// Guests may use the fitness center for free.
  core.bool? freeFitnessCenter;

  /// Free fitness center exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? freeFitnessCenterException;

  /// Free weights.
  ///
  /// Individual handheld fitness equipment of varied weights used for upper
  /// body strength training or bodybuilding. Also known as barbells, dumbbells,
  /// or kettlebells. Often stored on a rack with the weights arranged from
  /// light to heavy. Commonly found in a gym, fitness room, health center, or
  /// health club.
  core.bool? freeWeights;

  /// Free weights exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? freeWeightsException;

  /// Massage.
  ///
  /// A service provided by a trained massage therapist involving the physical
  /// manipulation of a guest's muscles in order to achieve relaxation or pain
  /// relief.
  core.bool? massage;

  /// Massage exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? massageException;

  /// Salon.
  ///
  /// A room at the hotel where professionals provide hair styling services such
  /// as shampooing, blow drying, hair dos, hair cutting and hair coloring. Also
  /// known as hairdresser or beauty salon.
  core.bool? salon;

  /// Salon exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? salonException;

  /// Sauna.
  ///
  /// A wood-paneled room heated to a high temperature where guests sit on
  /// built-in wood benches for the purpose of perspiring and relaxing their
  /// muscles. Can be dry or slightly wet heat. Not a steam room.
  core.bool? sauna;

  /// Sauna exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? saunaException;

  /// Spa.
  ///
  /// A designated area, room or building at the hotel offering health and
  /// beauty treatment through such means as steam baths, exercise equipment,
  /// and massage. May also offer facials, nail care, and hair care. Services
  /// are usually available by appointment and for an additional fee. Does not
  /// apply if hotel only offers a steam room; must offer other beauty and/or
  /// health treatments as well.
  core.bool? spa;

  /// Spa exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? spaException;

  /// Treadmill.
  ///
  /// An electric stationary fitness machine that simulates a moving path to
  /// promote walking or running within a range of user-controlled speeds and
  /// inclines. Also known as running machine. Commonly found in a gym, fitness
  /// room, health center, or health club.
  core.bool? treadmill;

  /// Treadmill exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? treadmillException;

  /// Weight machine.
  ///
  /// Non-electronic fitness equipment designed for the user to target the
  /// exertion of different muscles. Usually incorporates a padded seat, a stack
  /// of flat weights and various bars and pulleys. May be designed for toning a
  /// specific part of the body or may involve different user-controlled
  /// settings, hardware and pulleys so as to provide an overall workout in one
  /// machine. Commonly found in a gym, fitness center, fitness room, or health
  /// club.
  core.bool? weightMachine;

  /// Weight machine exception.
  /// Possible string values are:
  /// - "EXCEPTION_UNSPECIFIED" : Default unspecified exception. Use this only
  /// if a more specific exception does not match.
  /// - "UNDER_CONSTRUCTION" : Amenity or service is unavailable due to ongoing
  /// work orders.
  /// - "DEPENDENT_ON_SEASON" : Amenity or service availability is seasonal.
  /// - "DEPENDENT_ON_DAY_OF_WEEK" : Amenity or service availability depends on
  /// the day of the week.
  core.String? weightMachineException;

  Wellness({
    this.doctorOnCall,
    this.doctorOnCallException,
    this.ellipticalMachine,
    this.ellipticalMachineException,
    this.fitnessCenter,
    this.fitnessCenterException,
    this.freeFitnessCenter,
    this.freeFitnessCenterException,
    this.freeWeights,
    this.freeWeightsException,
    this.massage,
    this.massageException,
    this.salon,
    this.salonException,
    this.sauna,
    this.saunaException,
    this.spa,
    this.spaException,
    this.treadmill,
    this.treadmillException,
    this.weightMachine,
    this.weightMachineException,
  });

  Wellness.fromJson(core.Map json_)
      : this(
          doctorOnCall: json_.containsKey('doctorOnCall')
              ? json_['doctorOnCall'] as core.bool
              : null,
          doctorOnCallException: json_.containsKey('doctorOnCallException')
              ? json_['doctorOnCallException'] as core.String
              : null,
          ellipticalMachine: json_.containsKey('ellipticalMachine')
              ? json_['ellipticalMachine'] as core.bool
              : null,
          ellipticalMachineException:
              json_.containsKey('ellipticalMachineException')
                  ? json_['ellipticalMachineException'] as core.String
                  : null,
          fitnessCenter: json_.containsKey('fitnessCenter')
              ? json_['fitnessCenter'] as core.bool
              : null,
          fitnessCenterException: json_.containsKey('fitnessCenterException')
              ? json_['fitnessCenterException'] as core.String
              : null,
          freeFitnessCenter: json_.containsKey('freeFitnessCenter')
              ? json_['freeFitnessCenter'] as core.bool
              : null,
          freeFitnessCenterException:
              json_.containsKey('freeFitnessCenterException')
                  ? json_['freeFitnessCenterException'] as core.String
                  : null,
          freeWeights: json_.containsKey('freeWeights')
              ? json_['freeWeights'] as core.bool
              : null,
          freeWeightsException: json_.containsKey('freeWeightsException')
              ? json_['freeWeightsException'] as core.String
              : null,
          massage: json_.containsKey('massage')
              ? json_['massage'] as core.bool
              : null,
          massageException: json_.containsKey('massageException')
              ? json_['massageException'] as core.String
              : null,
          salon:
              json_.containsKey('salon') ? json_['salon'] as core.bool : null,
          salonException: json_.containsKey('salonException')
              ? json_['salonException'] as core.String
              : null,
          sauna:
              json_.containsKey('sauna') ? json_['sauna'] as core.bool : null,
          saunaException: json_.containsKey('saunaException')
              ? json_['saunaException'] as core.String
              : null,
          spa: json_.containsKey('spa') ? json_['spa'] as core.bool : null,
          spaException: json_.containsKey('spaException')
              ? json_['spaException'] as core.String
              : null,
          treadmill: json_.containsKey('treadmill')
              ? json_['treadmill'] as core.bool
              : null,
          treadmillException: json_.containsKey('treadmillException')
              ? json_['treadmillException'] as core.String
              : null,
          weightMachine: json_.containsKey('weightMachine')
              ? json_['weightMachine'] as core.bool
              : null,
          weightMachineException: json_.containsKey('weightMachineException')
              ? json_['weightMachineException'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (doctorOnCall != null) 'doctorOnCall': doctorOnCall!,
        if (doctorOnCallException != null)
          'doctorOnCallException': doctorOnCallException!,
        if (ellipticalMachine != null) 'ellipticalMachine': ellipticalMachine!,
        if (ellipticalMachineException != null)
          'ellipticalMachineException': ellipticalMachineException!,
        if (fitnessCenter != null) 'fitnessCenter': fitnessCenter!,
        if (fitnessCenterException != null)
          'fitnessCenterException': fitnessCenterException!,
        if (freeFitnessCenter != null) 'freeFitnessCenter': freeFitnessCenter!,
        if (freeFitnessCenterException != null)
          'freeFitnessCenterException': freeFitnessCenterException!,
        if (freeWeights != null) 'freeWeights': freeWeights!,
        if (freeWeightsException != null)
          'freeWeightsException': freeWeightsException!,
        if (massage != null) 'massage': massage!,
        if (massageException != null) 'massageException': massageException!,
        if (salon != null) 'salon': salon!,
        if (salonException != null) 'salonException': salonException!,
        if (sauna != null) 'sauna': sauna!,
        if (saunaException != null) 'saunaException': saunaException!,
        if (spa != null) 'spa': spa!,
        if (spaException != null) 'spaException': spaException!,
        if (treadmill != null) 'treadmill': treadmill!,
        if (treadmillException != null)
          'treadmillException': treadmillException!,
        if (weightMachine != null) 'weightMachine': weightMachine!,
        if (weightMachineException != null)
          'weightMachineException': weightMachineException!,
      };
}
